double AnyLinkDestination.init(pathComponents:)@<D0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = off_282D84E38;

  v4(a1, &v10);

  if (*(&v11 + 1) || (sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250), v5 = off_282D84E48, , v5(a1, &v10), , *(&v11 + 1)) || (sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250), v6 = off_282D84E58, , (v6)(a1, &v10), , *(&v11 + 1)) || (sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250), v7 = off_282D84E68, , v7(a1, &v10), , *(&v11 + 1)))
  {
    v14[0] = v10;
    v14[1] = v11;
    *v15 = v12;
    *&v15[16] = v13;
    sub_21BB3D104(v14, v16);
    *&v17[8] = *&v15[8];
    v8 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v8;
    result = *v17;
    *(a2 + 32) = *v17;
    *(a2 + 48) = *&v17[16];
  }

  else
  {
    sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t AnyLinkDestination.hashValue.getter()
{
  sub_21BE29ACC();
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

double sub_21BD2CD84@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E30 != -1)
  {
    swift_once();
  }

  sub_21BD2C9C8(a1, qword_27CDD4130);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v2)
  {
    sub_21BB3D104(&v6, a2);
    result = *&v7;
    *(a2 + 40) = v7;
  }

  return result;
}

uint64_t sub_21BD2CE5C()
{
  sub_21BE29ACC();
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2CF0C(uint64_t a1)
{
  sub_21BE29ACC();
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2CF6C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21BD2CFC8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_21BD2DA94(v4, v1, v2, v3);
}

uint64_t sub_21BD2D024@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v74 = a3;
  v4 = a1;
  v77 = a4;
  v79 = a2;
  v76 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v64 - v7;
  v80 = sub_21BE2585C();
  v78 = *(v80 - 8);
  v8 = MEMORY[0x28223BE20](v80);
  v81 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v24 = v85;
  sub_21BE29B2C();
  if (v24)
  {
    goto LABEL_26;
  }

  v68 = v21;
  v71 = v11;
  v67 = v15;
  v25 = v80;
  v85 = v4;
  v69 = v17;
  v70 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v84, v84[3]);
  sub_21BE2997C();
  v65 = 0;
  v26 = v70;
  sub_21BE258EC();

  v82 = v79;
  swift_getMetatypeMetadata();
  v27 = sub_21BE28A7C();
  v72 = v28;
  v29 = v68;
  sub_21BBA3854(v26, v68, &qword_27CDB5800, &qword_21BE328C0);
  v30 = sub_21BE2590C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  v66 = v27;
  if (v32 == 1)
  {
    sub_21BB3A4CC(v29, &qword_27CDB5800, &qword_21BE328C0);
    v33 = v25;
    v34 = v78;
    v35 = v81;
LABEL_14:
    v44 = v69;
    (*(v34 + 56))(v69, 1, 1, v33);
    v45 = v79;
    v47 = v76;
    v46 = v77;
    goto LABEL_18;
  }

  v36 = sub_21BE2586C();
  result = (*(v31 + 8))(v29, v30);
  v33 = v25;
  v34 = v78;
  v35 = v81;
  if (!v36)
  {
    goto LABEL_14;
  }

  v38 = v71;
  if (!*(v36 + 16))
  {
LABEL_13:

    v44 = v69;
    (*(v34 + 56))(v69, 1, 1, v33);
LABEL_17:
    v47 = v76;
    v46 = v77;
    v45 = v79;
LABEL_18:
    v48 = v72;
    v49 = v67;
    sub_21BBA3854(v44, v67, &qword_27CDB6250, &unk_21BE49110);
    if ((*(v34 + 48))(v49, 1, v33) == 1 || ((*(v34 + 32))(v35, v49, v33), sub_21BE2584C(), v51 = v50, (*(v34 + 8))(v35, v33), !v51))
    {
      v81 = 0;
      v53 = 0xF000000000000000;
    }

    else
    {

      v81 = sub_21BE25BBC();
      v53 = v52;
      swift_bridgeObjectRelease_n();
      if (v53 >> 60 != 15)
      {

        sub_21BE2578C();
        swift_allocObject();
        sub_21BE2577C();
        v54 = v75;
        v55 = v81;
        v56 = v65;
        sub_21BE2576C();
        sub_21BBBF0B4(v55, v53);

        sub_21BB3A4CC(v44, &qword_27CDB6250, &unk_21BE49110);
        sub_21BB3A4CC(v70, &qword_27CDB5800, &qword_21BE328C0);
        if (!v56)
        {
          v57 = *(v47 + 32);
          v58 = v54;
          v59 = v73;
          v57(v73, v58, v45);
          v57(v46, v59, v45);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          v60 = v85;
          return __swift_destroy_boxed_opaque_existential_0Tm(v60);
        }

        goto LABEL_25;
      }
    }

    v61 = sub_21BE2964C();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228);
    *v63 = v45;
    __swift_project_boxed_opaque_existential_1Tm(v85, v85[3]);
    sub_21BE29B1C();
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_21BE295EC();

    v82 = 0xD00000000000001FLL;
    v83 = 0x800000021BE56E50;
    MEMORY[0x21CF03CA0](v66, v48);

    sub_21BE2963C();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84170], v61);
    swift_willThrow();
    sub_21BBBF0B4(v81, v53);
    sub_21BB3A4CC(v69, &qword_27CDB6250, &unk_21BE49110);
    sub_21BB3A4CC(v70, &qword_27CDB5800, &qword_21BE328C0);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    v4 = v85;
LABEL_26:
    v60 = v4;
    return __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  v39 = *(v36 + 16);
  v40 = 0;
  v68 = (v78 + 16);
  v41 = (v78 + 8);
  while (v40 < *(v36 + 16))
  {
    (*(v34 + 16))(v38, v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40, v33);
    if (sub_21BE2583C() == v27 && v42 == v72)
    {

LABEL_16:

      v35 = v81;
      v44 = v69;
      (*(v34 + 32))(v69, v71, v33);
      (*(v34 + 56))(v44, 0, 1, v33);
      goto LABEL_17;
    }

    v43 = sub_21BE2995C();

    if (v43)
    {
      goto LABEL_16;
    }

    ++v40;
    v38 = v71;
    result = (*v41)(v71, v33);
    v35 = v81;
    if (v39 == v40)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD2D924(uint64_t a1, void *a2)
{
  v17[3] = &type metadata for AnyLinkDestination;
  v17[4] = sub_21BC23F70();
  v17[0] = swift_allocObject();
  sub_21BC23F14(a1, v17[0] + 16);
  sub_21BB3A35C(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v16 = v13;
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v4);
    v6 = (*(v5 + 24))(v15, v4, v5);
    sub_21BC17C80(v15);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v7);
    v6 = (*(v8 + 24))(v17, v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v6 & 1;
}

uint64_t sub_21BD2DA94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_21BB3A35C(v21, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v19[0] = v14;
    v19[1] = v15;
    v19[2] = v16;
    v20 = v17;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v8);
    v10 = (*(v9 + 24))(v19, v8, v9);
    sub_21BC17C80(v19);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    sub_21BB3A4CC(&v14, &qword_27CDB7278, &qword_21BE3A250);
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v11);
    v10 = (*(v12 + 24))(v21, v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v10 & 1;
}

unint64_t sub_21BD2DC14()
{
  result = qword_27CDBA8D8[0];
  if (!qword_27CDBA8D8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyLinkDestination, &type metadata for AnyLinkDestination, v0, v1);
    atomic_store(result, qword_27CDBA8D8);
  }

  return result;
}

unint64_t sub_21BD2DC68(uint64_t a1)
{
  result = sub_21BC177EC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD2DD2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BD2DDC4()
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2DE28(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2DE74@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21BE2980C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_21BD2DEF4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21BE2980C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_21BD2DF4C(uint64_t a1)
{
  v2 = sub_21BD30374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD2DF88(uint64_t a1)
{
  v2 = sub_21BD30374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD2DFC4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v45 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v48 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v44 = v39 - v5;
  v43 = type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA968, &qword_21BE44880);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v40 = v39 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA970, &unk_21BE44888);
  MEMORY[0x28223BE20](v50);
  v47 = v39 - v12;
  v13 = *(v1 + 24);
  v51 = *(v1 + 16);
  v52 = v13;
  sub_21BD302AC(v1, v8, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_21BD2FC44(v8, v15 + v14);
  sub_21BB41FA4();

  v16 = v40;
  sub_21BE2845C();
  v41 = v1;
  sub_21BD302AC(v1, v8, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v42 = v7;
  v17 = v16;
  v18 = swift_allocObject();
  sub_21BD2FC44(v8, v18 + v14);
  v19 = &v16[*(v10 + 44)];
  sub_21BE2701C();
  sub_21BE28D8C();
  *v19 = &unk_21BE448A0;
  *(v19 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v21 = sub_21BE27BAC();
  *(inited + 32) = v21;
  v22 = sub_21BE27BCC();
  *(inited + 33) = v22;
  v23 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v21)
  {
    v23 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v22)
  {
    v23 = sub_21BE27BBC();
  }

  v24 = v47;
  sub_21BBB7D84(v17, v47, &qword_27CDBA968, &qword_21BE44880);
  v25 = v24 + *(v50 + 36);
  *v25 = v23;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  v26 = v41;
  v27 = v41 + *(v43 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  v54 = v28;
  v55 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v39[1] = v51;
  LODWORD(v40) = v53;
  sub_21BD302AC(v26, v8, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v30 = swift_allocObject();
  sub_21BD2FC44(v8, v30 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
  v31 = v44;
  sub_21BE283FC();
  v32 = *(v26 + 32);
  v33 = v48;
  sub_21BBB7D84(v31, v48, &unk_27CDB57F0, &qword_21BE328A0);
  v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_21BBB7D84(v33, v36 + v34, &unk_27CDB57F0, &qword_21BE328A0);
  *(v36 + v35) = v32;
  v37 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA978, &unk_21BE448A8);
  sub_21BD300A8();
  sub_21BD301F0();
  sub_21BE2812C();

  return sub_21BB3A4CC(v24, &qword_27CDBA970, &unk_21BE44888);
}

double sub_21BD2E5D0(uint64_t a1)
{
  type metadata accessor for FamilyManagePaymentsLinkRUI(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  sub_21BE2840C();

  return result;
}

uint64_t sub_21BD2E67C(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_21BE25B9C();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  v1[29] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  sub_21BE28D7C();
  v1[37] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[38] = v5;
  v1[39] = v4;

  return MEMORY[0x2822009F8](sub_21BD2E858, v5, v4);
}

uint64_t sub_21BD2E858()
{
  v1 = *(v0[24] + 32);
  v2 = sub_21BE289CC();
  v3 = [v1 URLForKey_];
  v0[40] = v3;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BD2E9C8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9A8, &unk_21BE448C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD2F10C;
  v0[13] = &block_descriptor_38;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD2E9C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_21BD2EEE0;
  }

  else
  {
    v5 = sub_21BD2EAF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD2EAF8()
{
  v38 = v0;

  v1 = v0[21];
  v2 = [v1 absoluteURL];
  if (v2)
  {
    v3 = v2;
    sub_21BE25B5C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[29];
  v8 = v0[24];
  (*(v0[26] + 56))(v5, v4, 1, v0[25]);
  sub_21BBF0D04(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
  sub_21BE2840C();
  sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BE260FC();
  sub_21BD302AC(v8, v7, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FBC();
  if (os_log_type_enabled(v9, v10))
  {
    v36 = v1;
    v11 = v0[34];
    v13 = v0[25];
    v12 = v0[26];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v14 = 136315138;
    sub_21BE283FC();
    v15 = (*(v12 + 48))(v11, 1, v13);
    v16 = v0[34];
    if (v15)
    {
      sub_21BB3A4CC(v0[34], &unk_27CDB57F0, &qword_21BE328A0);
      v17 = 0xE200000000000000;
      v18 = 11565;
    }

    else
    {
      v24 = v0[26];
      v25 = v0[27];
      v26 = v0[25];
      (*(v24 + 16))(v25, v0[34], v26);
      sub_21BB3A4CC(v16, &unk_27CDB57F0, &qword_21BE328A0);
      v18 = sub_21BE25AFC();
      v17 = v27;
      (*(v24 + 8))(v25, v26);
    }

    v28 = v0[40];
    v29 = v0[33];
    v30 = v0[31];
    v34 = v0[30];
    sub_21BD30314(v0[29], type metadata accessor for FamilyManagePaymentsLinkRUI);
    v31 = sub_21BB3D81C(v18, v17, &v37);

    *(v14 + 4) = v31;
    _os_log_impl(&dword_21BB35000, v9, v10, "Got manage payments url %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);

    (*(v30 + 8))(v29, v34);
  }

  else
  {
    v19 = v0[40];
    v20 = v0[33];
    v21 = v0[30];
    v22 = v0[31];
    v23 = v0[29];

    sub_21BD30314(v23, type metadata accessor for FamilyManagePaymentsLinkRUI);
    (*(v22 + 8))(v20, v21);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_21BD2EEE0()
{
  v21 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  swift_willThrow();

  sub_21BE260FC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 248);
    v19 = *(v0 + 256);
    v8 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21BE29A5C();
    v13 = sub_21BB3D81C(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21BB35000, v4, v5, "Error loading manage payments url: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    v16 = *(v0 + 240);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21BD2F10C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_21BD2F1EC(uint64_t a1)
{
  type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

void *sub_21BD2F25C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v34 = a2;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9A0, &qword_21BE448B8);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - v4;
  v5 = type metadata accessor for FAAMSWebView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21BE26A4C();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_21BE25B9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  sub_21BBF0D04(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21BB3A4CC(v13, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE260FC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "managePaymentsURL is nil", v23, 2u);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v8 + 8))(v10, v33);
    swift_storeEnumTagMultiPayload();
    sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView, a4F_0);
    return sub_21BE2784C();
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v25 = *(v15 + 16);
    v25(v18, v20, v14);
    v26 = v34;
    *v7 = v34;
    v25(&v7[*(v5 + 20)], v18, v14);
    type metadata accessor for FAAMSWebViewModel(0);
    v27 = swift_allocObject();
    *(v27 + 72) = 0;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    v28 = v26;
    sub_21BE25F4C();
    v29 = *(v15 + 8);
    v29(v18, v14);
    *(v27 + 64) = v28;
    v30 = &v7[*(v5 + 24)];
    *v30 = v27;
    v30[1] = 0;
    sub_21BD302AC(v7, v36, type metadata accessor for FAAMSWebView);
    swift_storeEnumTagMultiPayload();
    sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView, a4F_0);
    v31 = v28;
    sub_21BE2784C();
    sub_21BD30314(v7, type metadata accessor for FAAMSWebView);
    return (v29)(v20, v14);
  }
}

uint64_t sub_21BD2F790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9B0, &qword_21BE448D0);
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21BE289CC();
  v15 = sub_21BE289CC();
  v16 = [objc_opt_self() bagForProfile:v14 profileVersion:v15];

  v13[4] = v16;
  v17 = v11[9];
  v18 = sub_21BE25B9C();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_21BBF0D04(v9, v7);
  v37 = v17;
  sub_21BE283EC();
  sub_21BB3A4CC(v9, &unk_27CDB57F0, &qword_21BE328A0);
  v19 = v13 + v11[10];
  v42 = 0;
  sub_21BE283EC();
  v20 = v41;
  *v19 = v40;
  *(v19 + 1) = v20;
  v21 = v11[11];
  v22 = v38;
  *(v13 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
  v23 = v39;
  v24 = sub_21BE29B3C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    sub_21BB3A4CC(v13 + v37, &qword_27CDBA960, qword_21BE44750);

    return sub_21BB3A4CC(v13 + v21, &qword_27CDB56C0, qword_21BE32630);
  }

  else
  {
    v32 = v16;
    v26 = v35;
    *v13 = v24;
    v13[1] = v25;
    v39 = v25;
    v27 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
    sub_21BD30374();
    sub_21BE29B4C();
    v29 = sub_21BE2986C();
    v31 = v30;
    (*(v34 + 8))(v36, v26);
    v13[2] = v29;
    v13[3] = v31;
    sub_21BD302AC(v13, v33, type metadata accessor for FamilyManagePaymentsLinkRUI);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    return sub_21BD30314(v13, type metadata accessor for FamilyManagePaymentsLinkRUI);
  }
}

uint64_t sub_21BD2FC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD2FCC0()
{
  v2 = *(type metadata accessor for FamilyManagePaymentsLinkRUI(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BD2E67C(v0 + v3);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE26F5C();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD2FF8C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyManagePaymentsLinkRUI(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void *sub_21BD30000@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BD2F25C(v1 + v4, v5, a1);
}

unint64_t sub_21BD300A8()
{
  result = qword_27CDBA980;
  if (!qword_27CDBA980)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA970, &unk_21BE44888);
    v4[0] = sub_21BD30134();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA980);
  }

  return result;
}

unint64_t sub_21BD30134()
{
  result = qword_27CDBA988;
  if (!qword_27CDBA988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA968, &qword_21BE44880);
    v4[0] = sub_21BBC9BE8();
    v4[1] = sub_21BB40468(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA988);
  }

  return result;
}

unint64_t sub_21BD301F0()
{
  result = qword_27CDBA990;
  if (!qword_27CDBA990)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA978, &unk_21BE448A8);
    v4[0] = sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView, a4F_0);
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA990);
  }

  return result;
}

uint64_t sub_21BD302AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD30314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD30374()
{
  result = qword_27CDBA9B8;
  if (!qword_27CDBA9B8)
  {
    result = swift_getWitnessTable(aLF, &type metadata for FamilyManagePaymentsLinkRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBA9B8);
  }

  return result;
}

unint64_t sub_21BD303DC()
{
  result = qword_27CDBA9C0;
  if (!qword_27CDBA9C0)
  {
    result = swift_getWitnessTable(byte_21BE449D8, &type metadata for FamilyManagePaymentsLinkRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBA9C0);
  }

  return result;
}

unint64_t sub_21BD30434()
{
  result = qword_27CDBA9C8;
  if (!qword_27CDBA9C8)
  {
    result = swift_getWitnessTable(byte_21BE44910, &type metadata for FamilyManagePaymentsLinkRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBA9C8);
  }

  return result;
}

unint64_t sub_21BD3048C()
{
  result = qword_27CDBA9D0;
  if (!qword_27CDBA9D0)
  {
    result = swift_getWitnessTable(byte_21BE44938, &type metadata for FamilyManagePaymentsLinkRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBA9D0);
  }

  return result;
}

uint64_t sub_21BD304E0()
{
  sub_21BC0A470();
  sub_21BE2755C();
  return v1;
}

uint64_t sub_21BD3052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BD30590();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21BD30590()
{
  result = qword_27CDBA9D8;
  if (!qword_27CDBA9D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E58, &qword_21BE33900);
    v4[0] = sub_21BD30614();
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27CDBA9D8);
  }

  return result;
}

unint64_t sub_21BD30614()
{
  result = qword_27CDBA9E0;
  if (!qword_27CDBA9E0)
  {
    v3 = sub_21BD3066C();
    result = swift_getWitnessTable(MEMORY[0x277D85380], v3, v0, v1);
    atomic_store(result, &qword_27CDBA9E0);
  }

  return result;
}

unint64_t sub_21BD3066C()
{
  result = qword_27CDB6918;
  if (!qword_27CDB6918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6918);
  }

  return result;
}

uint64_t sub_21BD306B8()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  return *(v0 + 16);
}

void sub_21BD30758(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BD30868()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  return *(v0 + 17);
}

void sub_21BD30908(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  *a2 = *(v3 + 17);
}

void sub_21BD309D8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BD30AE8()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  return *(v0 + 18);
}

void sub_21BD30B88(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  *a2 = *(v3 + 18);
}

void sub_21BD30C58(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }
}

id sub_21BD30D68()
{
  result = [*(v0 + 32) accounts];
  if (result)
  {
    v2 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_21BD32D68();
    sub_21BD32DB4(&unk_280BD6960, type metadata accessor for AIDAServiceType, byte_21BE322E4);
    v3 = sub_21BE2890C();

    if (*(v3 + 16) && (v4 = sub_21BBB322C(), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = [v6 isEnabledForDataclass_];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD30E84()
{
  v1[8] = v0;
  v2 = sub_21BE26A4C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = sub_21BE25DFC();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[16] = swift_task_alloc();
  v4 = sub_21BE25D6C();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD310A4, 0, 0);
}

uint64_t sub_21BD310A4()
{
  v1 = v0[8];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[2] = v1;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  sub_21BE28D7C();
  v0[21] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD31244, v4, v3);
}

uint64_t sub_21BD31244()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  (*(v6 + 56))(v1, 1, 1, v5);

  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v3 + 8))(v2, v4);
  *(v0 + 200) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  swift_allocObject();
  *(v0 + 176) = sub_21BE262AC();

  return MEMORY[0x2822009F8](sub_21BD313CC, 0, 0);
}

uint64_t sub_21BD313CC()
{
  v1 = *(v0 + 128);
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = MEMORY[0x277D07FD0];
  v4 = *MEMORY[0x277D07FD0];
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_21BD314E4;

  return ((v4 + v3))();
}

uint64_t sub_21BD314E4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_21BBDE578(*(v2 + 128));

  if (v0)
  {
    v3 = sub_21BD31CD0;
  }

  else
  {
    v3 = sub_21BD31668;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BD31668(uint64_t a1)
{
  v40 = v1;
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  v5 = *(v1[8] + 24);
  sub_21BE25DBC();
  v6 = sub_21BE25DAC();
  (*(v3 + 8))(v2, v4);
  v1[4] = 0;
  v7 = [v5 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v6 error:v1 + 4];

  v8 = v1[4];
  if (!v7)
  {
    v10 = v8;
    v11 = sub_21BE25A8C();

    swift_willThrow();
    v13 = v1[10];
    v12 = v1[11];
    v14 = v1[9];
    sub_21BE261BC();
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    v15 = v11;
    sub_21BE295EC();
    MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
    MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5EC10);
    sub_21BC51D50(v11, 0, 0xE000000000000000);

    (*(v13 + 8))(v12, v14);
    goto LABEL_16;
  }

  v9 = v8;
  if ([v7 isEligible])
  {

    goto LABEL_16;
  }

  sub_21BE261BC();
  v16 = v7;
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FFC();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v1[12];
  v21 = &off_2782F5000;
  v23 = v1[9];
  v22 = v1[10];
  if (v19)
  {
    v38 = v1[9];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    v1[7] = [v16 ineligibilityReasons];
    type metadata accessor for REMFamilyChecklistFamilyGroceryListIneligibilityReasons(0);
    v26 = sub_21BE28A5C();
    v28 = sub_21BB3D81C(v26, v27, v39);

    *(v24 + 4) = v28;
    v21 = &off_2782F5000;
    _os_log_impl(&dword_21BB35000, v17, v18, "Sharing grocery list is ineligible, reasons: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x21CF05C50](v25, -1, -1);
    MEMORY[0x21CF05C50](v24, -1, -1);

    (*(v22 + 8))(v20, v38);
  }

  else
  {

    (*(v22 + 8))(v20, v23);
  }

  v29 = [v16 v21[220]];
  v30 = v1[8];
  if ((v29 & 0x100) != 0)
  {
    if (*(v30 + 17) == 1)
    {

      *(v30 + 17) = 1;
      goto LABEL_16;
    }

    swift_getKeyPath();
    v32 = swift_task_alloc();
    *(v32 + 16) = v30;
    *(v32 + 24) = 1;
    v1[6] = v30;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  }

  else
  {
    if (*(v30 + 18) == 1)
    {

      *(v30 + 18) = 1;
      goto LABEL_16;
    }

    swift_getKeyPath();
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    *(v31 + 24) = 1;
    v1[5] = v30;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  }

  sub_21BE25F0C();

LABEL_16:
  v33 = v1[8];
  if (*(v33 + 16))
  {
    swift_getKeyPath();
    v34 = swift_task_alloc();
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    v1[3] = v33;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  else
  {
    *(v33 + 16) = 0;
  }

  v35 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v35 postNotificationName:qword_27CDB7E88 object:0];

  v36 = v1[1];

  return v36();
}

uint64_t sub_21BD31CD0(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  sub_21BE261BC();
  v6 = v2;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5EC10);
  sub_21BC51D50(v2, 0, 0xE000000000000000);

  (*(v4 + 8))(v3, v5);
  v7 = v1[8];
  if (*(v7 + 16))
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v1[3] = v7;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  else
  {
    *(v7 + 16) = 0;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_27CDB7E88 object:0];

  v10 = v1[1];

  return v10();
}

uint64_t sub_21BD31FA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_21BE26A4C();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_21BD320A4, v5, v4);
}

uint64_t sub_21BD320A4(uint64_t a1)
{
  v15 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5EC60, &v14);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud Reminders sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[10] = v10;
  v11 = *MEMORY[0x277CB8A18];
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_21BD32258;

  return MEMORY[0x28215E638](v11);
}

uint64_t sub_21BD32258()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_21BBF90BC;
  }

  else
  {
    v5 = sub_21BD32394;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD32394(uint64_t a1)
{
  v14 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5EC60, &v13);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s iCloud Reminders sync is now enabled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v5(v6, v7);

  v10 = swift_task_alloc();
  v1[13] = v10;
  *v10 = v1;
  v10[1] = sub_21BBF8F28;
  v11 = v1[2];
  v16 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v1 + 15, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE44BE8, v11);
}

uint64_t sub_21BD32598(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_21BE25DFC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD3271C, v6, v5);
}

uint64_t sub_21BD3271C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];

  v5 = *(v4 + 24);
  sub_21BE25DBC();
  v6 = sub_21BE25DAC();
  (*(v3 + 8))(v1, v2);
  v0[2] = 0;
  v7 = [v5 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v6 error:v0 + 2];

  v8 = v0[2];
  if (v7)
  {
    v9 = v8;
    if (([v7 isEligible] & 1) != 0 || (objc_msgSend(v7, sel_ineligibilityReasons) & 4) == 0)
    {
      v10 = v0[3];

      *v10 = 1;

      v11 = v0[1];
      goto LABEL_8;
    }

    sub_21BE2637C();
    sub_21BD32DB4(&qword_27CDB6868, MEMORY[0x277D08018], MEMORY[0x277D08020]);
    v13 = swift_allocError();
    sub_21BE2636C();
    swift_willThrow();
  }

  else
  {
    v12 = v8;
    v13 = sub_21BE25A8C();

    swift_willThrow();
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  sub_21BE261BC();
  v17 = v13;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE5EC60);
  MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE5EC90);
  sub_21BC51D50(v13, 0, 0xE000000000000000);

  (*(v15 + 8))(v14, v16);
  sub_21BE2637C();
  sub_21BD32DB4(&qword_27CDB6868, MEMORY[0x277D08018], MEMORY[0x277D08020]);
  swift_allocError();
  sub_21BE2636C();
  swift_willThrow();

  v11 = v0[1];
LABEL_8:

  return v11();
}

uint64_t sub_21BD32A70()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI26SharedGroceryListItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedGroceryListItemModel(uint64_t a1)
{
  result = qword_27CDBA9F0;
  if (!qword_27CDBA9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD32B70(uint64_t a1)
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BD32C20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BD31FA4(a1, v1);
}

uint64_t sub_21BD32CCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD32598(a1, v1);
}

unint64_t sub_21BD32D68()
{
  result = qword_280BD68E0;
  if (!qword_280BD68E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68E0);
  }

  return result;
}

uint64_t sub_21BD32DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD32E2C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21BD33024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BD32E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_21BD33064@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChecklistStateVars(0);
  sub_21BD34274(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v12 = sub_21BE26E9C();
  v11 = v3;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BD34274(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);

  v10 = sub_21BE2727C();
  v5 = v4;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BD34274(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
  v6 = sub_21BE270CC();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BE283EC();
  sub_21BE283EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E30, &qword_21BE3E330);
  sub_21BE283EC();
  result = sub_21BE283EC();
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 9) = a1;
  *(a2 + 10) = HIBYTE(a1) & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v5;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  return result;
}

void *sub_21BD332DC@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_21BD33064(v2 | *v1, a1);
}

uint64_t sub_21BD332F8()
{
  v1 = qword_27CDBAA08;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + qword_27CDD42E0);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BD3337C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FamilyContactsItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BD333F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for FamilyContactsItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BD33480(uint64_t a1)
{
  v2 = qword_27CDBAA08;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = (a1 + qword_27CDD42E0);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BD33508()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD3357C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BD337C8();
}

uint64_t sub_21BD3362C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BD336C4, v4, v3);
}

uint64_t sub_21BD336C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCBD4C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BD337C8()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BD33860, v3, v2);
}

uint64_t sub_21BD33860()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[6] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = qword_27CDD42E0;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21BD3397C;

  return sub_21BE19D18(v1 + v4);
}

uint64_t sub_21BD3397C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  if (v1)
  {
    v7 = sub_21BBE5E28;
  }

  else
  {
    v7 = sub_21BD33AC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BD33AC0()
{

  v1 = sub_21BE2905C();
  v2 = v1;
  v17 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v16 = v0;
    v4 = 0;
    v0 = &selRef_bundleURL;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CF047C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 contact];
      if (v8)
      {
      }

      else
      {
        sub_21BE296BC();
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      ++v4;
      if (v7 == i)
      {
        v0 = v16;
        v9 = v17;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_21BE2951C();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  v11 = v0[8];

  v12 = v10 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA58, &unk_21BE44DC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21BE32770;
  *(v13 + 32) = 11;
  *(v13 + 33) = v12;

  sub_21BC852D8();

  v14 = v0[1];

  return (v14)(v13);
}

uint64_t sub_21BD33CE4()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCBD4C();
}

void sub_21BD33DA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE44DD8, v8);
}

uint64_t type metadata accessor for FamilyContactsItemProvider(uint64_t a1)
{
  result = qword_27CDBAA10;
  if (!qword_27CDBAA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD33F24(uint64_t a1)
{
  sub_21BD33FBC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BD33FBC(uint64_t a1)
{
  if (!qword_27CDBAA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAA28, &qword_21BE44C28);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBAA20);
    }
  }
}

unint64_t sub_21BD3403C()
{
  result = qword_27CDBAA30;
  if (!qword_27CDBAA30)
  {
    result = swift_getWitnessTable(byte_21BE44CE4, &type metadata for ContactItem, v0, v1);
    atomic_store(result, &qword_27CDBAA30);
  }

  return result;
}

unint64_t sub_21BD34090(uint64_t a1)
{
  *(a1 + 8) = sub_21BD340C0();
  result = sub_21BD34114();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BD340C0()
{
  result = qword_27CDBAA38;
  if (!qword_27CDBAA38)
  {
    result = swift_getWitnessTable(byte_21BE44CA4, &type metadata for ContactItem, v0, v1);
    atomic_store(result, &qword_27CDBAA38);
  }

  return result;
}

unint64_t sub_21BD34114()
{
  result = qword_27CDBAA40;
  if (!qword_27CDBAA40)
  {
    result = swift_getWitnessTable(aF_2, &type metadata for ContactItem, v0, v1);
    atomic_store(result, &qword_27CDBAA40);
  }

  return result;
}

uint64_t sub_21BD34168(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BD341D4(uint64_t a1)
{
  *(a1 + 8) = sub_21BD34274(&qword_27CDBAA48, type metadata accessor for FamilyContactsItemProvider, byte_21BE34830);
  result = sub_21BD34274(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BD34274(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BD342BC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BD3433C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BD343B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD33CE4();
}

unint64_t sub_21BD34468()
{
  result = qword_27CDBAA60;
  if (!qword_27CDBAA60)
  {
    result = swift_getWitnessTable(a12F, &type metadata for FamilyContactItemView, v0, v1);
    atomic_store(result, &qword_27CDBAA60);
  }

  return result;
}

uint64_t sub_21BD34534(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21BD3558C(a1);
  (*(*(*(v2 + qword_27CDD42E8) - 8) + 8))(a1);
  return v5;
}

id sub_21BD34624()
{
  v1 = [v0 navigationController];

  return v1;
}

uint64_t sub_21BD3465C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FARUINavigationPlaceholderController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42E8), *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42E8 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21BC436C0(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21BD34758(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v9 = a1;
  sub_21BD3465C(a3, a4, v9, v8);
}

uint64_t sub_21BD347CC()
{
  v1 = v0;
  v2 = v1;
  while (1)
  {
    v3 = v1;
    v4 = [v2 navigationController];
    if (v4 && (v5 = v4, v6 = [v4 topViewController], v5, v6))
    {

      if (v3 == v6)
      {

        return 1;
      }
    }

    else
    {
    }

    v7 = [v3 parentViewController];

    if (!v7)
    {
      break;
    }

    v1 = v7;
  }

  return 0;
}

void sub_21BD348A4(void *a1, char a2)
{
  v5 = [v2 navigationController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 viewControllers];
  sub_21BD356A4();
  v8 = sub_21BE28C3C();

  v16 = v8;
  if (sub_21BD347CC())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + 16) setPresenter_];
      swift_unknownObjectRelease();
    }

    if (v8 >> 62)
    {
      if (sub_21BE2951C())
      {
        goto LABEL_7;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v8 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v8 = sub_21BD9381C(v8);
      }

      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        v12 = v11 - 1;
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;

        a2 = 0;
        v16 = v8;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v14 = a1;
  MEMORY[0x21CF03DB0]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21BE28C5C();
  }

  sub_21BE28C8C();
  v15 = sub_21BE28C1C();

  [v6 setViewControllers:v15 animated:a2 & 1];
}

void sub_21BD34AC4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_21BD348A4(v6, a4);
}

id sub_21BD34B34(char a1)
{
  v3 = [v1 navigationController];
  v4 = [v3 popViewControllerAnimated_];

  return v4;
}

id sub_21BD34B94(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_21BD34B34(a3);

  return v5;
}

id sub_21BD34BE0(uint64_t a1, char a2)
{
  v3 = v2;
  result = [v3 navigationController];
  if (result)
  {
    v7 = a2 & 1;
    v8 = result;
    v9 = [result popToViewController:a1 animated:v7];

    result = 0;
    if (v9)
    {
      sub_21BD356A4();
      v10 = sub_21BE28C3C();

      return v10;
    }
  }

  return result;
}

id sub_21BD34C70(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_21BD34BE0(v6, a4);

  if (v8)
  {
    sub_21BD356A4();
    v9 = sub_21BE28C1C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_21BD34D04(char a1)
{
  result = [v1 navigationController];
  if (result)
  {
    v4 = result;
    v5 = [result popToRootViewControllerAnimated_];

    result = 0;
    if (v5)
    {
      sub_21BD356A4();
      v6 = sub_21BE28C3C();

      return v6;
    }
  }

  return result;
}

id sub_21BD34D88(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_21BD34D04(a3);

  if (v5)
  {
    sub_21BD356A4();
    v6 = sub_21BE28C1C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_21BD34E00(void *a1)
{
  v1 = a1;
  v2 = sub_21BD34E44();

  return v2;
}

id sub_21BD34E44()
{
  v1 = [v0 navigationController];
  v2 = [v1 topViewController];

  return v2;
}

id sub_21BD34E9C(void *a1)
{
  v1 = a1;
  sub_21BD34F00();

  sub_21BD356A4();
  v2 = sub_21BE28C1C();

  return v2;
}

uint64_t sub_21BD34F00()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_21BD356A4();
  v4 = sub_21BE28C3C();

  return v4;
}

void sub_21BD34F84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21BD356A4();
  v4 = sub_21BE28C3C();
  v5 = a1;
  sub_21BD34FF4(v4);
}

void sub_21BD34FF4(uint64_t a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    sub_21BD356A4();
    v4 = sub_21BE28C1C();

    [v3 setViewControllers_];
  }

  else
  {
  }
}

void sub_21BD350AC(uint64_t a1, char a2)
{
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    sub_21BD356A4();
    v6 = sub_21BE28C1C();
    [v5 setViewControllers:v6 animated:a2 & 1];
  }
}

uint64_t sub_21BD3515C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21BD356A4();
  v6 = sub_21BE28C3C();
  v7 = a1;
  sub_21BD350AC(v6, a4);
}

void *sub_21BD35214(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD42E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_21BE2773C();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_21BD35368(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  *(v1 + *(v3 + qword_27CDD42E8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for FARUINavigationPlaceholderController(0, *(v3 + qword_27CDD42E8), *(v3 + qword_27CDD42E8 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_21BD354AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FARUINavigationPlaceholderController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42E8), *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42E8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21BD3558C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD42E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  *(v1 + *(v7 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return sub_21BE2774C();
}

unint64_t sub_21BD356A4()
{
  result = qword_27CDB6358;
  if (!qword_27CDB6358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6358);
  }

  return result;
}

uint64_t sub_21BD3573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21BD35D58(a1, a2, a3, a4);
  (*(*(*(v4 + qword_27CDD42F8) - 8) + 8))(a1);
  return v6;
}

void *sub_21BD357EC(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD42F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_21BE2773C();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_21BD35924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StateRestorableHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42F8), *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42F8 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_21BD359F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StateRestorableHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42F8), *((*MEMORY[0x277D85000] & *v4) + qword_27CDD42F8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21BD35AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_21BE44FF0, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_21BD35B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_21BE44FF0, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_21BD35BB8(uint64_t a1)
{
  swift_getWitnessTable(byte_21BE44FF0, a1);
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BD35BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBAC30, &unk_21BE44F60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21BD35C70(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_21BE2774C();
}

unint64_t sub_21BD35DB8()
{
  result = qword_27CDBACB8;
  if (!qword_27CDBACB8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBACC0, &qword_21BE44F98);
    result = swift_getWitnessTable(byte_21BE44FA0, v3, v0, v1);
    atomic_store(result, &qword_27CDBACB8);
  }

  return result;
}

__C::FACircleEventType_optional __swiftcall NSDictionary.fa_eventTypeForFamilyActionURL()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBACD0, &qword_21BE45068);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_21BE262EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_21BE260BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v30 = 0;
  sub_21BE288FC();
  if (!v30)
  {
    goto LABEL_11;
  }

  v27 = v16;
  v18 = *MEMORY[0x277D08008];
  v25 = *(v4 + 104);
  v25(v9, v18, v3);
  sub_21BD363E8(&qword_27CDBACD8, MEMORY[0x277D07FB0], MEMORY[0x277D07FA8]);
  sub_21BE2892C();
  v26 = *(v4 + 8);
  v26(v9, v3);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {

    sub_21BD36338(v2);
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v23 = v7;
  (*(v11 + 32))(v27, v2, v10);
  (*(v11 + 104))(v14, *MEMORY[0x277D07FA0], v10);
  sub_21BD363E8(&qword_27CDBACE0, MEMORY[0x277D07FB0], MEMORY[0x277D07FB8]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  if (v30 == v28 && v31 == v29)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_21BE2995C();
  }

  v24 = *(v11 + 8);
  v24(v14, v10);

  if ((v19 & 1) == 0)
  {
    v24(v27, v10);

    goto LABEL_11;
  }

  v20 = v23;
  v25(v23, *MEMORY[0x277D08010], v3);
  type metadata accessor for FACircleEventType(0);
  sub_21BD363E8(&qword_27CDBACE8, type metadata accessor for FACircleEventType, protocol conformance descriptor for FACircleEventType);
  sub_21BE2893C();

  v26(v20, v3);
  v24(v27, v10);
  v21 = v30;
LABEL_12:
  result.value._rawValue = v21;
  result.is_nil = v17;
  return result;
}

uint64_t sub_21BD36338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBACD0, &qword_21BE45068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD363E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id sub_21BD36430(void *a1)
{
  v1 = a1;
  v2 = NSDictionary.fa_eventTypeForFamilyActionURL()();

  return v2;
}

uint64_t sub_21BD36474@<X0>(uint64_t *a2@<X8>)
{
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BD3657C@<X0>(uint64_t *a2@<X8>)
{
  sub_21BB3A2A4(0, &qword_27CDB7EE8, off_2782F0D00);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BD365F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_21BE2870C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21BE2874C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v12 = sub_21BE2925C();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3E288();
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_21BD368C4@<X0>(uint64_t *a2@<X8>)
{
  sub_21BB3A2A4(0, &qword_27CDB6928, off_2782F0B80);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

double sub_21BD3693C(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, const char *a5)
{
  sub_21BB3A2A4(0, a2, a3);
  sub_21BB3CC48(a4, a2, a3, a5);
  sub_21BE26C0C();
  sub_21BE26C4C();

  return result;
}

void *sub_21BD36AA0(uint64_t a1, uint64_t a2)
{
  v8 = sub_21BE2783C();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21BE2784C();
}

void *sub_21BD36B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_21BE2783C();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21BE2784C();
}

uint64_t sub_21BD36C90@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_21BE2946C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t View.fa_availableIf(condition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v6 = a1;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_21BE2946C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (v6)
  {
    v20 = v4;
    v21 = v10;
    v22 = *(v7 + 16);
    v22(v12, v20, a2);
    v22(v21, v12, a2);
    (*(v7 + 8))(v12, a2);
    (*(v7 + 32))(v17, v21, a2);
    (*(v7 + 56))(v17, 0, 1, a2);
  }

  else
  {
    (*(v7 + 56))(v17, 1, 1, a2);
  }

  v23 = *(v14 + 16);
  v23(v19, v17, v13);
  v24 = *(v14 + 8);
  v24(v17, v13);
  v29 = v27;
  swift_getWitnessTable(MEMORY[0x277CE1550], v13, &v29);
  v23(v28, v19, v13);
  return (v24)(v19, v13);
}

uint64_t View.fa_if<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v37 = a1;
  v36 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v39 = sub_21BE2785C();
  v24 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v26 = &v34 - v25;
  if (v37)
  {
    v35(v38);
    v27 = *(v18 + 16);
    v27(v23, v21, a5);
    v38 = a8;
    v28 = *(v18 + 8);
    v28(v21, a5);
    v27(v21, v23, a5);
    sub_21BD36AA0(v21, a5);
    v28(v21, a5);
    v28(v23, a5);
    a8 = v38;
  }

  else
  {
    v29 = v36;
    v30 = *(v36 + 16);
    v30(v16, v38, a4);
    v30(v13, v16, a4);
    sub_21BD36B98(v13, a5, a4);
    v31 = *(v29 + 8);
    v31(v13, a4);
    v31(v16, a4);
  }

  v42[0] = v40;
  v42[1] = v41;
  v32 = v39;
  swift_getWitnessTable(MEMORY[0x277CE0340], v39, v42, v34);
  (*(v24 + 16))(a8, v26, v32);
  return (*(v24 + 8))(v26, v32);
}

id AgeRangeSharingViewController.__allocating_init(ageRangeAccountProtocol:presentAsModal:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BD38478(a1, a2, v2, ObjectType);
}

id AgeRangeSharingViewController.init(ageRangeAccountProtocol:presentAsModal:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  swift_getObjectType();

  return sub_21BD384D0(a1, v3, v2);
}

id sub_21BD37498(uint64_t a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for AgeRangeSharingViewController();
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v2 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  [v4 addSubview_];

  result = [v2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21BE397B0;
  result = [v2 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  result = [v2 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = result;
  v14 = [result bottomAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  result = [v2 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = result;
  v19 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = result;
  v21 = [result leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v7 + 48) = v22;
  result = [v2 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  v24 = [result trailingAnchor];

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = objc_opt_self();
    v27 = [v25 trailingAnchor];

    v28 = [v24 constraintEqualToAnchor_];
    *(v7 + 56) = v28;
    sub_21BC47284();
    v29 = sub_21BE28C1C();

    [v26 activateConstraints_];

    return [v2 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_21BD378F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AgeRangeSharingViewController();
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1);
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_21BE28D7C();
  v8 = v1;
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_21BBA932C(0, 0, v5, &unk_21BE451D8, v10);

  return result;
}

uint64_t sub_21BD37A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_21BE25D6C();
  v4[5] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BD37B5C, v7, v6);
}

uint64_t sub_21BD37B5C()
{
  v0[12] = *(v0[4] + OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_21BD37BFC;

  return sub_21BCF8840();
}

uint64_t sub_21BD37BFC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BD37D1C, v3, v2);
}

uint64_t sub_21BD37D1C()
{
  v1 = v0[12];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21BD38860(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == 1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_21BD37E94;
    v3 = v0[4];

    return sub_21BCF7F00(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21BD37E94(int a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 120) = a2;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);

  return MEMORY[0x2822009F8](sub_21BD37FC0, v6, v5);
}

uint64_t sub_21BD37FC0()
{
  v22 = v0;
  v1 = *(v0 + 128);

  v2 = *(v0 + 120);
  if (!v1)
  {
    sub_21BE2614C();
    v2 = v2;
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 120);
      v6 = *(v0 + 56);
      v20 = *(v0 + 64);
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v0 + 24) = v5;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD08, &unk_21BE45250);
      v11 = sub_21BE28A5C();
      v13 = sub_21BB3D81C(v11, v12, &v21);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_21BB35000, v3, v4, "iOS - AgeRangeSharingViewController - ageRangeGlobalState unknown, error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CF05C50](v9, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);

      (*(v6 + 8))(v20, v7);
    }

    else
    {
      v15 = *(v0 + 56);
      v14 = *(v0 + 64);
      v16 = *(v0 + 48);

      (*(v15 + 8))(v14, v16);
    }

    v17 = *(v0 + 40);
    sub_21BE25D5C();
    sub_21BCF6314(v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

id AgeRangeSharingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21BE289CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AgeRangeSharingViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AgeRangeSharingViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BD38478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_allocWithZone(type metadata accessor for AgeRangeSharingViewController());

  return sub_21BD384D0(a1, v4, v6);
}

id sub_21BD384D0(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = type metadata accessor for AgeRangeSharingView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_presentAsModal] = a2;
  v12 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  type metadata accessor for AgeRangeSharingViewModel(0);
  v13 = swift_allocObject();
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel] = sub_21BCFE038(v12, a1, v13);

  sub_21BCB3920(v14, a2, v11);
  sub_21BCBC8BC(v11, v9);
  sub_21BD38860(&qword_27CDB93A0, type metadata accessor for AgeRangeSharingView, byte_21BE3ECD4);
  v21 = sub_21BE2852C();
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController] = sub_21BE2774C();
  v16 = type metadata accessor for AgeRangeSharingViewController();
  v20.receiver = a3;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  sub_21BCBD884(v11);
  return v17;
}

uint64_t sub_21BD386CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD37A3C(a1, v4, v5, v6);
}

uint64_t sub_21BD387AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BD37A3C(a1, v4, v5, v6);
}

uint64_t sub_21BD38860(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD388A8()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = [v5 invitationDate];
  if (v6)
  {
    v7 = v6;
    sub_21BE25CDC();

    (*(v2 + 8))(v4, v1);
  }

  v8 = [v5 memberTypeDisplayString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();

    return v10;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD38A24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BD38A80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21BD38AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BD38B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD10, &qword_21BE45350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD18, &qword_21BE45358);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD20, &qword_21BE45360);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-v12];
  *v5 = sub_21BE275DC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD28, &unk_21BE45368);
  sub_21BD38DD0(v1, &v5[*(v14 + 44)]);
  sub_21BE286AC();
  sub_21BE2725C();
  sub_21BBB7D84(v5, v9, &qword_27CDBAD10, &qword_21BE45350);
  v15 = &v9[*(v7 + 44)];
  v16 = v33;
  v15[4] = v32;
  v15[5] = v16;
  v15[6] = v34;
  v17 = v29;
  *v15 = v28;
  v15[1] = v17;
  v18 = v31;
  v15[2] = v30;
  v15[3] = v18;
  v26 = *(v1 + 8);
  v27 = *(v1 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v25, v19);
  v20 = v25;
  KeyPath = swift_getKeyPath();
  sub_21BBB7D84(v9, v13, &qword_27CDBAD18, &qword_21BE45358);
  v22 = &v13[*(v11 + 44)];
  *v22 = (v20 & 1) == 0;
  *(v22 + 1) = KeyPath;
  v22[16] = 0;
  return sub_21BBB7D84(v13, a1, &qword_27CDBAD20, &qword_21BE45360);
}

void sub_21BD38DD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD30, &qword_21BE453A8);
  MEMORY[0x28223BE20](v45);
  v5 = &v40 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD38, &unk_21BE453B0);
  MEMORY[0x28223BE20](v47);
  v7 = &v40 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD40, &qword_21BE453C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v40 - v16;
  v17 = qword_27CDB4E58;
  v49 = *(*a1 + 16);
  if (v17 != -1)
  {
    swift_once();
  }

  v43 = byte_27CDD41B0;
  sub_21BBDAF04();
  sub_21BC2ACA4();
  v46 = sub_21BE2727C();
  v44 = v18;
  v51 = sub_21BE2771C();
  LOBYTE(v55) = 1;
  sub_21BD394F4(a1, v64);
  *&v63[7] = v64[0];
  *&v63[23] = v64[1];
  *&v63[39] = v64[2];
  *&v63[55] = v64[3];
  v41 = v55;
  v42 = sub_21BD397A8();
  v55 = *(a1 + 8);
  v56 = *(a1 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v52, v19);
  if (v52 == 1)
  {
    sub_21BE26EEC();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v22 = *MEMORY[0x277CDF438];
    v23 = sub_21BE26E7C();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    sub_21BE286BC();
    sub_21BE26F2C();
    v24 = &v12[*(v40 + 36)];
    v25 = v64[5];
    *v24 = v64[4];
    *(v24 + 1) = v25;
    *(v24 + 2) = v64[6];
    sub_21BBA3854(v12, v10, &qword_27CDB5DF0, &unk_21BE33810);
    *v7 = 0;
    v7[8] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
    sub_21BBA3854(v10, &v7[*(v26 + 48)], &qword_27CDB5DF0, &unk_21BE33810);
    sub_21BB3A4CC(v10, &qword_27CDB5DF0, &unk_21BE33810);
    sub_21BBA3854(v7, v5, &qword_27CDBAD38, &unk_21BE453B0);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBAD48, &qword_27CDBAD38, &unk_21BE453B0, MEMORY[0x277CE14C0]);
    v27 = v48;
    sub_21BE2784C();
    sub_21BB3A4CC(v7, &qword_27CDBAD38, &unk_21BE453B0);
    sub_21BB3A4CC(v12, &qword_27CDB5DF0, &unk_21BE33810);
  }

  else
  {
    *v5 = 0;
    v5[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBAD48, &qword_27CDBAD38, &unk_21BE453B0, MEMORY[0x277CE14C0]);
    v27 = v48;
    sub_21BE2784C();
  }

  if (v43)
  {
    v28 = 40.0;
  }

  else
  {
    v28 = 38.0;
  }

  v29 = v50;
  sub_21BBA3854(v27, v50, &qword_27CDBAD40, &qword_21BE453C0);
  *a2 = v28;
  v30 = v49;
  v31 = v46;
  *(a2 + 8) = v49;
  *(a2 + 16) = v31;
  *(a2 + 24) = v44;
  v52 = v51;
  v32 = v41;
  LOBYTE(v53[0]) = v41;
  *(v53 + 1) = *v63;
  *(&v53[1] + 1) = *&v63[16];
  *(&v53[2] + 1) = *&v63[32];
  *(&v53[3] + 1) = *&v63[48];
  v53[4] = *&v63[63];
  v33 = v42;
  v54 = v42;
  *(a2 + 128) = v42;
  v34 = v53[4];
  *(a2 + 96) = v53[3];
  *(a2 + 112) = v34;
  v35 = v53[0];
  *(a2 + 32) = v52;
  *(a2 + 48) = v35;
  v36 = v53[2];
  *(a2 + 64) = v53[1];
  *(a2 + 80) = v36;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD50, &qword_21BE453C8);
  sub_21BBA3854(v29, a2 + *(v37 + 80), &qword_27CDBAD40, &qword_21BE453C0);
  v38 = v31;
  v39 = v30;
  sub_21BBA3854(&v52, &v55, &qword_27CDBAD58, &unk_21BE453D0);
  sub_21BB3A4CC(v27, &qword_27CDBAD40, &qword_21BE453C0);
  sub_21BB3A4CC(v29, &qword_27CDBAD40, &qword_21BE453C0);
  v58 = *&v63[16];
  v59 = *&v63[32];
  *v60 = *&v63[48];
  v55 = v51;
  v56 = v32;
  v57 = *v63;
  *&v60[15] = *&v63[63];
  v61 = 0;
  v62 = v33;
  sub_21BB3A4CC(&v55, &qword_27CDBAD58, &unk_21BE453D0);
}

uint64_t sub_21BD394F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 fullName];
  if (v4 || (v4 = [v3 inviteEmail]) != 0)
  {
    v5 = v4;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v34 = v12;
  v35 = v11;
  v33 = v13;
  v36 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  sub_21BD388A8();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v25 = sub_21BE27D4C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21BBC7C7C(v20, v22, v24 & 1);

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29 & 1;
  *(a2 + 56) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v25, v27, v29 & 1);

  sub_21BBC7C7C(v25, v27, v29 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

BOOL sub_21BD397A8()
{
  v0 = sub_21BE2626C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D07F18], v4);
  v8 = MEMORY[0x21CF01150](v7);
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v13;
  if (!v13)
  {
    return 0;
  }

  sub_21BE2909C();
  v10 = sub_21BE2625C();

  (*(v1 + 8))(v3, v0);
  return v10 > 0;
}

unint64_t sub_21BD399EC()
{
  result = qword_27CDBAD68;
  if (!qword_27CDBAD68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD70, qword_21BE45460);
    v4[0] = sub_21BD39A78();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBAD68);
  }

  return result;
}

unint64_t sub_21BD39A78()
{
  result = qword_27CDBAD78;
  if (!qword_27CDBAD78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD20, &qword_21BE45360);
    v4[0] = sub_21BD39B04();
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBAD78);
  }

  return result;
}

unint64_t sub_21BD39B04()
{
  result = qword_27CDBAD80;
  if (!qword_27CDBAD80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD18, &qword_21BE45358);
    v4[0] = sub_21BB3B038(&qword_27CDBAD88, &qword_27CDBAD10, &qword_21BE45350, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBAD80);
  }

  return result;
}

uint64_t sub_21BD39BBC(uint64_t a1)
{
  result = sub_21BE2828C();
  qword_27CDD4308 = result;
  return result;
}

uint64_t type metadata accessor for MemberDetailsSubscriptionWrapper(uint64_t a1)
{
  result = qword_27CDBAD90;
  if (!qword_27CDBAD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD39C50(uint64_t a1)
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v1 <= 0x3F)
  {
    sub_21BBF088C(319);
    if (v2 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v3 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD39D4C()
{
  if (!qword_27CDBADA0)
  {
    v0 = sub_21BE2859C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBADA0);
    }
  }
}

uint64_t sub_21BD39DB8()
{
  v1 = type metadata accessor for MemberDetailsSubscriptionWrapper(0);
  v2 = v1;
  v3 = *(v0 + *(v1 + 24));
  if (v3)
  {
    v4 = *(v0 + *(v1 + 32));
    if (v4)
    {
      sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
      v5 = v3;
      v6 = v4;
      if (sub_21BE2940C())
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v8 = [objc_opt_self() bundleForClass_];
        v9 = sub_21BE2599C();

        return v9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21BE32770;
  v12 = (v0 + *(v2 + 28));
  v14 = *v12;
  v13 = v12[1];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21BBBEFE8();
  *(v11 + 32) = v14;
  *(v11 + 40) = v13;
  type metadata accessor for ConfirmChildAgeViewModel();
  v15 = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();

  v17 = [v16 bundleForClass_];
  sub_21BE2599C();

  v18 = sub_21BE289DC();

  return v18;
}

uint64_t sub_21BD3A020@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v39 = sub_21BE27A2C();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MemberDetailsSubscriptionWrapper(0);
  sub_21BBF0D04(v1 + v9[5], v5);
  swift_unknownObjectWeakLoadStrong();
  v10 = sub_21BD39DB8();
  v34 = v11;
  v35 = v10;
  v12 = *(v1 + v9[6]);
  if (v12)
  {
    v33 = [v12 integerValue];
  }

  else
  {
    v33 = 0;
  }

  v13 = (v1 + v9[10]);
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  v43 = v14;
  v44 = v15;
  v45 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v16 = v40;
  v17 = v41;
  v18 = v42;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v8 = 0xD000000000000011;
  v8[1] = 0x800000021BE55910;
  sub_21BC438F8(v5, v8 + v6[5]);
  *(v8 + v6[6]) = 1;
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v19 = (v8 + v6[8]);
  v20 = v34;
  *v19 = v35;
  v19[1] = v20;
  v21 = v8 + v6[9];
  *v21 = v33;
  v21[8] = v12 == 0;
  v22 = (v8 + v6[10]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v8 + v6[11];
  *v23 = v16;
  *(v23 + 1) = v17;
  v23[16] = v18;
  v24 = (v8 + v6[12]);
  *v24 = 0;
  v24[1] = 0;
  *(v8 + v6[13]) = 0;
  *(v8 + v6[14]) = 6;
  v25 = (v8 + v6[15]);
  type metadata accessor for ServicesStore(0);
  sub_21BD3A4A4(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  *v25 = sub_21BE270CC();
  v25[1] = v26;
  *(v8 + v6[16]) = 0;
  v27 = v8 + v6[17];
  LOBYTE(v40) = 0;
  sub_21BE283EC();
  v28 = v44;
  *v27 = v43;
  *(v27 + 1) = v28;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v29 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v30 = v36;
  sub_21BE27A0C();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  sub_21BE2805C();
  (*(v37 + 8))(v30, v39);
  return sub_21BC5E088(v8);
}

uint64_t sub_21BD3A4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD3A4EC()
{
  sub_21BC0A610();
  sub_21BE2755C();
  return v1;
}

void *sub_21BD3A54C(void *a1)
{
  v1 = [a1 me];
  if (v1)
  {
    v2 = v1;
    if ([v1 isOrganizer])
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      v5 = sub_21BE28B8C();
      return v5;
    }
  }

  result = sub_21BE2911C();
  if (result)
  {
    v7 = result;
    v8 = [result shortName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21BE28A0C();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_21BE33260;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_21BBBEFE8();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
      type metadata accessor for ConfirmChildAgeViewModel();
      v16 = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();

      v18 = [v17 bundleForClass_];
      sub_21BE2599C();

      v19 = sub_21BE289DC();

      return v19;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BD3A7F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADB8, &qword_21BE45658);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADE0, &qword_21BE45678);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_21BD3A54C(a1);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = ObjCClassFromMetadata;
    v15 = objc_opt_self();
    v16 = [v15 bundleForClass_];
    v17 = sub_21BE2599C();
    v33 = a2;
    v18 = v17;
    v19 = v4;
    v21 = v20;

    v35 = v12;
    v36 = v13;
    v37 = v18;
    v38 = v21;
    v39 = 0xD000000000000022;
    v40 = 0x800000021BE5EFD0;
    v41 = 0;
    sub_21BC353D0();
    sub_21BE285EC();
    v22 = &v6[*(v19 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
    v24 = sub_21BE27D7C();
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    *v22 = swift_getKeyPath();
    v25 = [v15 bundleForClass_];
    v26 = sub_21BE2599C();
    v28 = v27;

    v35 = v26;
    v36 = v28;
    sub_21BD3AED4();
    sub_21BB41FA4();
    sub_21BE27F9C();

    sub_21BB3A4CC(v6, &qword_27CDBADB8, &qword_21BE45658);
    v29 = v33;
    (*(v34 + 32))(v33, v9, v7);
    return (*(v34 + 56))(v29, 0, 1, v7);
  }

  else
  {
    v31 = *(v34 + 56);

    return v31(a2, 1, 1, v7);
  }
}

double sub_21BD3ABEC()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE455B0;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);

  return result;
}

uint64_t sub_21BD3AD2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADA8, &qword_21BE45650);
  sub_21BD3ADF8();
  sub_21BE27D1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADD8, &qword_21BE45670);
  v3 = (a1 + *(result + 36));
  *v3 = sub_21BD3ABEC;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  return result;
}

unint64_t sub_21BD3ADF8()
{
  result = qword_27CDBADB0;
  if (!qword_27CDBADB0)
  {
    v7[9] = v0;
    v7[10] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADA8, &qword_21BE45650);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADB8, &qword_21BE45658);
    v5 = sub_21BD3AED4();
    v6 = sub_21BB41FA4();
    v7[1] = v4;
    v7[2] = MEMORY[0x277D837D0];
    v7[3] = v5;
    v7[4] = v6;
    v7[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v7);
    atomic_store(result, &qword_27CDBADB0);
  }

  return result;
}

unint64_t sub_21BD3AED4()
{
  result = qword_27CDBADC0;
  if (!qword_27CDBADC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADB8, &qword_21BE45658);
    v4[0] = sub_21BD3AF8C();
    v4[1] = sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBADC0);
  }

  return result;
}

unint64_t sub_21BD3AF8C()
{
  result = qword_27CDBADC8;
  if (!qword_27CDBADC8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADD0, &unk_21BE45660);
    v4[0] = sub_21BC353D0();
    v4[1] = MEMORY[0x277CE1410];
    v4[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27CDBADC8);
  }

  return result;
}

unint64_t sub_21BD3B01C()
{
  result = qword_27CDBADE8;
  if (!qword_27CDBADE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADD8, &qword_21BE45670);
    v4[0] = sub_21BB3B038(&qword_27CDBADF0, &qword_27CDBADF8, qword_21BE456B8, MEMORY[0x277CDE5A0]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBADE8);
  }

  return result;
}

id sub_21BD3B0D4()
{
  type metadata accessor for AppleCashItemView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = [v11 profilePictureForFamilyMember:*(v0 + *(type metadata accessor for AppleCashItem(0) + 24)) pictureDiameter:36.0];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE25BFC();
    v5 = v4;

    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v7 = sub_21BE25BCC();
    v8 = [v6 initWithData_];

    sub_21BBBEF94(v3, v5);
    if (v8)
    {
      return v8;
    }
  }

  else
  {
  }

  v9 = sub_21BE289CC();
  v8 = [objc_opt_self() systemImageNamed_];

  if (v8)
  {
    return v8;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

void *sub_21BD3B2A4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AppleCashItemView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BD3D434(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashItemView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BD3D2E8(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BD3D34C;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BD3B40C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v70 = a1;
  v71 = a3;
  v4 = type metadata accessor for AppleCashItemView(0);
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = v5;
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2;
  v66 = a2;
  if (v6 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v7 = swift_allocObject();
    v63 = xmmword_21BE32770;
    *(v7 + 16) = xmmword_21BE32770;
    v65 = type metadata accessor for AppleCashItem(0);
    v8 = sub_21BE2917C();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x277D837D0];
    v11 = sub_21BBBEFE8();
    *(v7 + 64) = v11;
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v15 = sub_21BE289DC();
    v64 = v16;

    v17 = swift_allocObject();
    *(v17 + 16) = v63;
    v18 = sub_21BE2917C();
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v11;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;

    v20 = [v13 bundleForClass_];
    sub_21BE2599C();

    v21 = sub_21BE289DC();
    v23 = v22;

    v24 = v66;
    v25 = v69;
    sub_21BD3D434(v66, v69, type metadata accessor for AppleCashItemView);
    v26 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v27 = (v68 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    sub_21BD3D2E8(v25, v28 + v26);
    v29 = v70;
    *(v28 + v27) = v70;
    v30 = v29;
    v31 = sub_21BD3B0D4();
    v89 = v65;
    v90 = sub_21BD3D3EC(&qword_27CDBAE20, type metadata accessor for AppleCashItem, byte_21BE34C88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
    sub_21BD3D434(v24, boxed_opaque_existential_1, type metadata accessor for AppleCashItem);
    v72 = 1031;
    v73 = 0;
    v74 = &unk_282D86CB8;
    v75 = &unk_282D86CE8;
    v76 = 0;
    v78 = v15;
    v79 = v64;
    v80 = 0;
    v81 = 0;
    v82 = v21;
    v83 = v23;
    sub_21BCE8CF0();
    v91 = sub_21BE2852C();
    v86 = v28;
    v87 = v31;
    v84 = 0;
    v85 = sub_21BD3D61C;
    sub_21BBC7A18(&v78, &v72);
    v77 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v78);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v34 = swift_allocObject();
    v62 = xmmword_21BE32770;
    *(v34 + 16) = xmmword_21BE32770;
    v65 = type metadata accessor for AppleCashItem(0);
    v35 = sub_21BE2917C();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x277D837D0];
    v38 = sub_21BBBEFE8();
    *(v34 + 64) = v38;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    type metadata accessor for ConfirmChildAgeViewModel();
    v39 = swift_getObjCClassFromMetadata();
    v40 = objc_opt_self();

    v41 = [v40 &selRef:v39 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v64 = sub_21BE289DC();
    *&v63 = v42;

    v43 = swift_allocObject();
    *(v43 + 16) = v62;
    v44 = sub_21BE2917C();
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = v38;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;

    v46 = [v40 bundleForClass_];
    sub_21BE2599C();

    v47 = sub_21BE289DC();
    *&v62 = v48;

    v49 = v66;
    v50 = v69;
    sub_21BD3D434(v66, v69, type metadata accessor for AppleCashItemView);
    v51 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_21BD3D2E8(v50, v53 + v51);
    v54 = v70;
    *(v53 + v52) = v70;
    v55 = v54;
    v56 = [v40 bundleForClass_];
    v57 = sub_21BE2599C();
    v59 = v58;

    v60 = sub_21BD3B0D4();
    v89 = v65;
    v90 = sub_21BD3D3EC(&qword_27CDBAE20, type metadata accessor for AppleCashItem, byte_21BE34C88);
    v61 = __swift_allocate_boxed_opaque_existential_1(v88);
    sub_21BD3D434(v49, v61, type metadata accessor for AppleCashItem);
    v72 = 1031;
    v73 = 0;
    v74 = &unk_282D86D18;
    v75 = &unk_282D86D48;
    v76 = 0;
    v78 = v64;
    v79 = v63;
    v80 = v47;
    v81 = v62;
    sub_21BCE8CF0();
    v91 = sub_21BE2852C();
    v84 = v53;
    v85 = v57;
    v86 = v59;
    v87 = v60;
    v82 = 0;
    v83 = sub_21BD3D3CC;
    sub_21BBC7968(&v78, &v72);
    v77 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v78);
  }
}

double sub_21BD3BCD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppleCashItemView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21BD3D434(a1, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashItemView);
  sub_21BE28D7C();
  v14 = a2;
  v15 = sub_21BE28D6C();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_21BD3D2E8(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21BBA932C(0, 0, v12, a4, v17);

  return result;
}

uint64_t sub_21BD3BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BD3BF50, v7, v6);
}

uint64_t sub_21BD3BF50()
{
  type metadata accessor for AppleCashItemView(0);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_21BC187C4;
  v2 = *(v0 + 24);

  return sub_21BD3BFFC(v2);
}

uint64_t sub_21BD3BFFC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_21BE26A4C();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD3C11C, 0, 0);
}

uint64_t sub_21BD3C11C(uint64_t a1)
{
  v2 = v1[78];
  if (v2)
  {
    v3 = v1[86];
    v4 = v1[79];
    v5 = objc_allocWithZone(FACircleContext);
    v43 = v2;
    v6 = [v5 initWithEventType_];
    v1[87] = v6;
    v7 = v4 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item;
    v8 = type metadata accessor for AppleCashItem(0);
    sub_21BBF0D04(v7 + *(v8 + 20), v3);
    v9 = sub_21BE25B9C();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v3, 1, v9);
    v12 = 0;
    if (v11 != 1)
    {
      v13 = v1[86];
      v12 = sub_21BE25B2C();
      (*(v10 + 8))(v13, v9);
    }

    [v6 setUrlForContext_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000011;
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 40) = 0x800000021BE55FB0;
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_21BE33260;
    *(v15 + 32) = 0xD000000000000012;
    *(v15 + 40) = 0x800000021BE55FD0;
    v16 = [*(v7 + *(v8 + 24)) dsid];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 integerValue];
    }

    else
    {
      v18 = 1;
    }

    v26 = v1[79];
    v27 = MEMORY[0x277D83B88];
    *(v15 + 48) = v18;
    *(v15 + 72) = v27;
    *(v15 + 80) = 0x6574736575716572;
    *(v15 + 120) = MEMORY[0x277D837D0];
    *(v15 + 88) = 0xE900000000000072;
    *(v15 + 96) = 0x6843796C696D6146;
    *(v15 + 104) = 0xEF7473696C6B6365;
    v28 = sub_21BBB52D8(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D8, &qword_21BE32860);
    swift_arrayDestroy();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
    *(inited + 48) = v28;
    sub_21BBB52D8(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
    v29 = sub_21BE288EC();

    [v6 setAdditionalParameters_];

    v30 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
    v1[88] = v30;
    v31 = *(v26 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController);
    *(v26 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController) = v30;
    v32 = v30;

    if (v32)
    {
      [v32 setModalPresentationStyle_];
      v1[2] = v1;
      v1[7] = v1 + 76;
      v1[3] = sub_21BD3C77C;
      v33 = swift_continuation_init();
      v1[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
      v1[44] = MEMORY[0x277D85DD0];
      v1[45] = 1107296256;
      v1[46] = sub_21BC2D85C;
      v1[47] = &block_descriptor_40;
      v1[48] = v33;
      [v32 performWithContext:v6 completion:v1 + 44];

      return MEMORY[0x282200938](v1 + 2);
    }

    sub_21BE261BC();
    v34 = sub_21BE26A2C();
    v35 = sub_21BE28FDC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v1[83];
    v38 = v1[81];
    v39 = v1[80];
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21BB35000, v34, v35, "No circle controller to present Apple Cash flow", v40, 2u);
      MEMORY[0x21CF05C50](v40, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v37, v39);
  }

  else
  {
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[82];
    v23 = v1[81];
    v24 = v1[80];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21BB35000, v19, v20, "No navigation controller to present Apple Cash flow", v25, 2u);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
  }

  v41 = v1[1];

  return v41();
}

uint64_t sub_21BD3C77C()
{

  return MEMORY[0x2822009F8](sub_21BD3C85C, 0, 0);
}

uint64_t sub_21BD3C85C()
{
  v50 = v0;
  v1 = *(v0 + 608);
  *(v0 + 712) = v1;
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_21BE261BC();
    v4 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 680);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v49 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21BE29A5C();
      v47 = v10;
      v15 = sub_21BB3D81C(v13, v14, &v49);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v5, v6, "Error loading stateController for family shared services: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);

      (*(v9 + 8))(v8, v47);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  v16 = [v1 userInfo];
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = sub_21BE2890C();

  *(v0 + 576) = 0x6E6F69746361;
  *(v0 + 584) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v18 + 16) || (v19 = sub_21BBB31E8(v0 + 480), (v20 & 1) == 0))
  {

    sub_21BBB7238(v0 + 480);
LABEL_14:
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    goto LABEL_15;
  }

  sub_21BB3DCD4(*(v18 + 56) + 32 * v19, v0 + 520);
  sub_21BBB7238(v0 + 480);

  if (!*(v0 + 544))
  {
LABEL_15:
    sub_21BB3A4CC(v0 + 520, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v0 + 592) != 0xD000000000000012 || 0x800000021BE56510 != *(v0 + 600))
  {
    v34 = sub_21BE2995C();

    if (v34)
    {
      goto LABEL_23;
    }

LABEL_16:
    v21 = v1;
    sub_21BE261BC();
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FDC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);
    v27 = *(v0 + 672);
    v28 = *(v0 + 648);
    v29 = *(v0 + 640);
    v30 = *(v0 + 624);
    if (v24)
    {
      v48 = *(v0 + 672);
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21BB35000, v22, v23, "Peerpayment hook not found in response", v31, 2u);
      MEMORY[0x21CF05C50](v31, -1, -1);

      (*(v28 + 8))(v48, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    goto LABEL_19;
  }

LABEL_23:
  v35 = v1;
  v36 = *(v0 + 632);
  v37 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  *(v0 + 720) = v37;
  v38 = *(v36 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler);
  *(v36 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler) = v37;
  v39 = v37;

  if (v39)
  {
    v40 = [v35 userInfo];
    if (v40)
    {
      v41 = v40;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v45 = sub_21BE288EC();
    *(v0 + 728) = v45;

    *(v0 + 80) = v0;
    *(v0 + 88) = sub_21BD3CE94;
    v46 = swift_continuation_init();
    *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 416) = MEMORY[0x277D85DD0];
    *(v0 + 424) = 1107296256;
    *(v0 + 432) = sub_21BD44BD8;
    *(v0 + 440) = &block_descriptor_11_0;
    *(v0 + 448) = v46;
    [v39 presentPeerPaymentControllerWithAttributes:v45 completion:v0 + 416];

    return MEMORY[0x282200938](v0 + 80);
  }

  v42 = *(v0 + 704);
  v43 = *(v0 + 696);
  v44 = *(v0 + 624);

LABEL_19:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_21BD3CE94()
{

  return MEMORY[0x2822009F8](sub_21BD3CF74, 0, 0);
}

uint64_t sub_21BD3CF74()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 624);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BD3D044()
{
  sub_21BD3D18C(v0 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD3D0F0(uint64_t a1)
{
  result = type metadata accessor for AppleCashItem(319);
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

uint64_t sub_21BD3D18C(uint64_t a1)
{
  v2 = type metadata accessor for AppleCashItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BD3D230(uint64_t a1)
{
  type metadata accessor for AppleCashItem(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppleCashFamilyFlow(319);
    if (v2 <= 0x3F)
    {
      sub_21BC41FE8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BD3D2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD3D34C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BD3B40C(a1, v6, a2);
}

uint64_t sub_21BD3D3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD3D434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for AppleCashItem(0);
  v6 = v5[5];
  v7 = sub_21BE25B9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

double sub_21BD3D63C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_21BD3BCD8(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_21BD3D6DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BD3BEB8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = type metadata accessor for AppleCashItem(0);
  v6 = v5[5];
  v7 = sub_21BE25B9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21BD3D984(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BD3BEB8(a1, v6, v7, v1 + v5, v8);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BD3DAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BD3DB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BD3DB84()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD3DC44(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD3DCF0(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BD3DDAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD3F3FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BD3DDDC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE800000000000000;
  v5 = 0x6C6562614C627573;
  if (*v1 != 2)
  {
    v5 = 0x4D746E656D796170;
    v4 = 0xED0000646F687465;
  }

  if (*v1)
  {
    v3 = 0x6C6562616CLL;
    v2 = 0xE500000000000000;
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

uint64_t sub_21BD3DE58()
{
  v1 = 25705;
  v2 = 0x6C6562614C627573;
  if (*v0 != 2)
  {
    v2 = 0x4D746E656D796170;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

unint64_t sub_21BD3DED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BD3F3FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BD3DF04(uint64_t a1)
{
  v2 = sub_21BD3F784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD3DF40(uint64_t a1)
{
  v2 = sub_21BD3F784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD3DF7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = type metadata accessor for PaymentStackRowRUI.PaymentMethod(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  *v10 = v11;
  v10[1] = v12;
  sub_21BB3A35C(a1, v16);
  sub_21BE2878C();
  v14 = sub_21BE287AC();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_21BBB7D84(v7, v10 + *(v8 + 20), &qword_27CDBAEA8, &qword_21BE459C0);
  sub_21BD3FB50(v10, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_21BD3FBB4(v10);
}

uint64_t sub_21BD3E170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE28, &qword_21BE45950);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE30, &qword_21BE45958);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE38, &qword_21BE45960);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  *v6 = sub_21BE275CC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE40, &unk_21BE45968);
  sub_21BD3E550(v2, &v6[*(v13 + 44)]);
  v14 = sub_21BE276FC();
  v15 = &v6[*(v4 + 44)];
  *v15 = v14;
  v15[1] = sub_21BD3F024;
  v15[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  v43 = xmmword_21BE33260;
  *(inited + 16) = xmmword_21BE33260;
  v17 = sub_21BE27BAC();
  *(inited + 32) = v17;
  v18 = sub_21BE27BCC();
  *(inited + 33) = v18;
  v19 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v17)
  {
    v19 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v18)
  {
    v19 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_21BBB7D84(v6, v9, &qword_27CDBAE28, &qword_21BE45950);
  v28 = &v9[*(v7 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = swift_initStackObject();
  *(v29 + 16) = v43;
  v30 = sub_21BE27B8C();
  *(v29 + 32) = v30;
  v31 = sub_21BE27B9C();
  *(v29 + 33) = v31;
  v32 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v30)
  {
    v32 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v31)
  {
    v32 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_21BBB7D84(v9, v12, &qword_27CDBAE30, &qword_21BE45958);
  v41 = &v12[*(v10 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_21BD3F110(&qword_27CDBAE48, &qword_27CDBAE38, &qword_21BE45960, sub_21BD3F0E0);
  sub_21BE27DFC();
  return sub_21BB3A4CC(v12, &qword_27CDBAE38, &qword_21BE45960);
}

uint64_t sub_21BD3E550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE70, &qword_21BE45980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v35 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE78, &qword_21BE45988);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_21BE2770C();
  v17 = *(*(a1 + 48) + 16);
  v18 = 52.0;
  v19 = (v17 - 1);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  if (v17 <= 1)
  {
    v18 = *(a1 + 56);
  }

  if (v17 <= 2)
  {
    v19 = 1.0;
  }

  *v5 = v16;
  v5[1] = (v21 - v18 * (v21 / v20)) / v19 - v18 * (v21 / v20);
  *(v5 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE80, &qword_21BE45990);
  sub_21BD3E8CC(a1, (v5 + *(v22 + 44)));
  sub_21BE2869C();
  sub_21BE26F2C();
  sub_21BBB7D84(v5, v13, &qword_27CDBAE70, &qword_21BE45980);
  v23 = &v13[*(v7 + 44)];
  v24 = *&v46[39];
  *v23 = *&v46[23];
  *(v23 + 1) = v24;
  *(v23 + 2) = *&v46[55];
  sub_21BBB7D84(v13, v15, &qword_27CDBAE78, &qword_21BE45988);
  v25 = sub_21BE2771C();
  LOBYTE(v41[0]) = 1;
  sub_21BD3EE44(v38);
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  *&v37[55] = v38[3];
  v26 = v41[0];
  sub_21BBA3854(v15, v10, &qword_27CDBAE78, &qword_21BE45988);
  v27 = v36;
  sub_21BBA3854(v10, v36, &qword_27CDBAE78, &qword_21BE45988);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE88, &unk_21BE45998) + 48);
  v39[0] = v25;
  v39[1] = 0;
  v40[0] = v26;
  *&v40[1] = *v37;
  *&v40[17] = *&v37[16];
  *&v40[33] = *&v37[32];
  *&v40[49] = *&v37[48];
  v29 = *&v37[63];
  *&v40[64] = *&v37[63];
  v30 = *v40;
  *v28 = v25;
  *(v28 + 16) = v30;
  v31 = *&v40[16];
  v32 = *&v40[32];
  v33 = *&v40[48];
  *(v28 + 80) = v29;
  *(v28 + 48) = v32;
  *(v28 + 64) = v33;
  *(v28 + 32) = v31;
  sub_21BBA3854(v39, v41, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v15, &qword_27CDBAE78, &qword_21BE45988);
  v41[0] = v25;
  v41[1] = 0;
  v42 = v26;
  v44 = *&v37[16];
  v45 = *&v37[32];
  *v46 = *&v37[48];
  *&v46[15] = *&v37[63];
  v43 = *v37;
  sub_21BB3A4CC(v41, &qword_27CDB9550, &qword_21BE3FAA0);
  return sub_21BB3A4CC(v10, &qword_27CDBAE78, &qword_21BE45988);
}

uint64_t sub_21BD3E8CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE90, &qword_21BE459A8);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE98, &qword_21BE459B0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  *&v27 = *(a1 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA0, &qword_21BE459B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  sub_21BD3F24C();
  sub_21BD3F2FC();
  sub_21BD3F88C(&qword_27CDBAED8, type metadata accessor for PaymentStackRowRUI.PaymentMethod, aElF_0);
  sub_21BE285CC();
  sub_21BE2869C();
  sub_21BE26F2C();
  (*(v24 + 32))(v13, v5, v25);
  v16 = &v13[*(v7 + 44)];
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  *(v16 + 2) = v29;
  sub_21BBB7D84(v13, v15, &qword_27CDBAE98, &qword_21BE459B0);
  sub_21BBA3854(v15, v10, &qword_27CDBAE98, &qword_21BE459B0);
  v18 = v26;
  *v26 = 0;
  *(v18 + 8) = 1;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEE0, &qword_21BE459D0);
  sub_21BBA3854(v10, v19 + *(v20 + 48), &qword_27CDBAE98, &qword_21BE459B0);
  v21 = v19 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_21BB3A4CC(v15, &qword_27CDBAE98, &qword_21BE459B0);
  return sub_21BB3A4CC(v10, &qword_27CDBAE98, &qword_21BE459B0);
}

uint64_t sub_21BD3EC28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_21BE287AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for PaymentStackRowRUI.PaymentMethod(0);
  sub_21BBA3854(a1 + *(v14 + 20), v6, &qword_27CDBAEA8, &qword_21BE459C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21BB3A4CC(v6, &qword_27CDBAEA8, &qword_21BE459C0);
    v15 = 1;
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    sub_21BE2879C();
    (*(v8 + 8))(v13, v7);
    v16(a2, v11, v7);
    v15 = 0;
  }

  return (*(v8 + 56))(a2, v15, 1, v7);
}

uint64_t sub_21BD3EE44@<X0>(uint64_t a2@<X8>)
{
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v26 = v4;
  v27 = v3;
  v25 = v5;
  v28 = v6;

  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE2833C();
  v12 = sub_21BE27D4C();
  v14 = v13;
  v16 = v15;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  sub_21BE27BEC();
  v17 = sub_21BE27D9C();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_21BBC7C7C(v12, v14, v16 & 1);

  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_21BBA4A38(v27, v26, v25 & 1);

  sub_21BBA4A38(v17, v19, v21 & 1);

  sub_21BBC7C7C(v17, v19, v21 & 1);

  sub_21BBC7C7C(v27, v26, v25 & 1);
}

__n128 sub_21BD3F070@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21BD3F448(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_21BD3F110(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD3F194()
{
  result = qword_27CDBAE58;
  if (!qword_27CDBAE58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAE28, &qword_21BE45950);
    v4[0] = sub_21BB3B038(&qword_27CDBAE60, &qword_27CDBAE68, &qword_21BE45978, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CE0760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBAE58);
  }

  return result;
}

unint64_t sub_21BD3F24C()
{
  result = qword_27CDBAEB0;
  if (!qword_27CDBAEB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEA0, &qword_21BE459B8);
    v4[0] = sub_21BB3B038(&qword_27CDBAEB8, &qword_27CDBAEC0, &qword_21BE459C8, MEMORY[0x277D83980]);
    result = swift_getWitnessTable(MEMORY[0x277D84448], v3, v4);
    atomic_store(result, &qword_27CDBAEB0);
  }

  return result;
}

unint64_t sub_21BD3F2FC()
{
  result = qword_27CDBAEC8;
  if (!qword_27CDBAEC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEA8, &qword_21BE459C0);
    v4[0] = sub_21BD3F88C(&qword_27CDBAED0, MEMORY[0x277D46198], MEMORY[0x277D46190]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBAEC8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentStackRowRUI.PaymentMethod(uint64_t a1)
{
  result = qword_27CDBAF08;
  if (!qword_27CDBAF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BD3F3FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BD3F448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEE8, &qword_21BE459D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v9 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v10;
  v28 = a2;
  v29 = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD3F784();
  sub_21BE29B4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEC0, &qword_21BE459C8);
  LOBYTE(v30) = 3;
  sub_21BD3F7D8();
  sub_21BE298AC();
  v13 = v34[0];
  LOBYTE(v34[0]) = 1;
  v14 = sub_21BE2986C();
  v16 = v15;
  v27 = v14;
  v36 = 2;
  v17 = sub_21BE2986C();
  v18 = v8;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  v21 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v12;
  v22 = v27;
  *&v31 = v27;
  *(&v31 + 1) = v16;
  *&v32 = v17;
  *(&v32 + 1) = v20;
  *v33 = v13;
  v26 = xmmword_21BE457F0;
  *&v33[8] = xmmword_21BE457F0;
  sub_21BD3F8D4(&v30, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34[0] = v21;
  v34[1] = v12;
  v34[2] = v22;
  v34[3] = v16;
  v34[4] = v17;
  v34[5] = v20;
  v34[6] = v13;
  v35 = v26;
  result = sub_21BD3F90C(v34);
  v23 = *v33;
  v24 = v28;
  *(v28 + 32) = v32;
  *(v24 + 48) = v23;
  *(v24 + 64) = *&v33[16];
  v25 = v31;
  *v24 = v30;
  *(v24 + 16) = v25;
  return result;
}

unint64_t sub_21BD3F784()
{
  result = qword_27CDBAEF0;
  if (!qword_27CDBAEF0)
  {
    result = swift_getWitnessTable(byte_21BE45B14, &type metadata for PaymentStackRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBAEF0);
  }

  return result;
}

unint64_t sub_21BD3F7D8()
{
  result = qword_27CDBAEF8;
  if (!qword_27CDBAEF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEC0, &qword_21BE459C8);
    v4[0] = sub_21BD3F88C(&qword_27CDBAF00, type metadata accessor for PaymentStackRowRUI.PaymentMethod, byte_21BE45AEC);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27CDBAEF8);
  }

  return result;
}

uint64_t sub_21BD3F88C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BD3F974(uint64_t a1)
{
  sub_21BD3F9F0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21BD3F9F0(uint64_t a1)
{
  if (!qword_27CDBAF18)
  {
    sub_21BE287AC();
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBAF18);
    }
  }
}

unint64_t sub_21BD3FA4C()
{
  result = qword_27CDBAF20;
  if (!qword_27CDBAF20)
  {
    result = swift_getWitnessTable(byte_21BE45AC4, &type metadata for PaymentStackRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBAF20);
  }

  return result;
}

unint64_t sub_21BD3FAA4()
{
  result = qword_27CDBAF28;
  if (!qword_27CDBAF28)
  {
    result = swift_getWitnessTable(byte_21BE459FC, &type metadata for PaymentStackRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBAF28);
  }

  return result;
}

unint64_t sub_21BD3FAFC()
{
  result = qword_27CDBAF30;
  if (!qword_27CDBAF30)
  {
    result = swift_getWitnessTable(byte_21BE45A24, &type metadata for PaymentStackRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBAF30);
  }

  return result;
}

uint64_t sub_21BD3FB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentStackRowRUI.PaymentMethod(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD3FBB4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentStackRowRUI.PaymentMethod(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD3FC3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF38, &unk_21BE4FB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_282D85088;
  *(inited + 48) = 1;
  *(inited + 56) = &unk_282D850B0;
  *(inited + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(inited + 72) = MEMORY[0x277D84F90];
  *(inited + 80) = 3;
  if (*(a1 + 16))
  {
    sub_21BBB3230(3);
    if (v4)
    {
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }
  }

  v7 = v3;
  sub_21BDE58DC(&unk_282D850D8);
  *(inited + 88) = v7;
  v5 = sub_21BBB64E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF40, &unk_21BE45C50);
  swift_arrayDestroy();
  return v5;
}

Swift::Void __swiftcall RemoteUIController.fa_registerFamilyRUIViews()()
{
  sub_21BD3FDF4();
  sub_21BE292DC();

  sub_21BE292DC();
}

unint64_t sub_21BD3FDF4()
{
  result = qword_27CDBAF48;
  if (!qword_27CDBAF48)
  {
    result = swift_getWitnessTable(byte_21BE3BD6C, &type metadata for FARUIPersonPickerView, v0, v1);
    atomic_store(result, &qword_27CDBAF48);
  }

  return result;
}

void sub_21BD3FE48(void *a1)
{
  sub_21BD3FDF4();
  v2 = a1;
  sub_21BE292DC();
  sub_21BE292DC();
}

void sub_21BD3FF04(uint64_t a1@<X8>)
{
  v2 = sub_21BE28A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v6 = sub_21BE28A1C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
  }

  sub_21BDF6D70(v14);
  sub_21BBBEF94(v9, v10);
  v11 = sub_21BBB63EC(&unk_282D85218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
  swift_arrayDestroy();
  v12 = sub_21BBB62CC(&unk_282D85338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
  swift_arrayDestroy();
  v13[3] = &type metadata for NewVerificationRules;
  v13[4] = &off_282D927D0;
  v13[0] = v11;
  v13[1] = v12;
  sub_21BDF5AA8(v14, v13, a1);
}

uint64_t sub_21BD400D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_21BC7F9A8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_21BBB3108(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_21BC80E88();
        v16 = v18;
      }

      result = sub_21BC7ECF0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_21BD401E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21BB414D0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21BC800D4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21BB3A4CC(a1, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BC7B790(a2, a3, v9);

    return sub_21BB3A4CC(v9, &qword_27CDB5940, &unk_21BE32B10);
  }

  return result;
}

uint64_t sub_21BD402B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_21BC80370(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    sub_21BBB3108(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_21BC81D54();
        v13 = v15;
      }

      result = sub_21BC833D8();
      *v4 = v13;
    }
  }

  return result;
}

void sub_21BD403A8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21BC804EC(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_21BBB322C();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_21BC81EC4();
        v10 = v13;
      }

      sub_21BC7F1F4(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_21BD404AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21BC80654(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21BBB3108(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21BC82024();
        v14 = v16;
      }

      result = sub_21BC833D8();
      *v4 = v14;
    }
  }

  return result;
}

void sub_21BD405A4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();

  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(v1[2], v1[3], &v11);
    _os_log_impl(&dword_21BB35000, v6, v7, "%s store reset", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (v1[5])
  {

    sub_21BE2627C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD4075C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BD4082C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

id static FamilySettingsApplication.shared.getter()
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7CD0;

  return v1;
}

double sub_21BD40910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  if (!*(a2 + 16) || (sub_21BBB322C(), (v7 & 1) == 0))
  {
    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    v8 = qword_280BDCB98;
    sub_21BD405A4();
    v9 = *(v8 + qword_280BDCB90);
    *(v8 + qword_280BDCB90) = 0;

    if (qword_280BD7508 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD6CD0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
  }

  if (*(a1 + 16) && (v10 = sub_21BBB322C(), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 8 * v10);
    v13 = v12;
    if (!*(a2 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_21;
    }
  }

  v14 = sub_21BBB322C();
  if (v15)
  {
    v16 = *(*(a2 + 56) + 8 * v14);
    v17 = v16;
    goto LABEL_22;
  }

LABEL_21:
  v16 = 0;
LABEL_22:
  v18 = sub_21BD445D4(v12, v16);

  if ((v18 & 1) == 0)
  {
    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    v20 = qword_280BDCB98;
    sub_21BD405A4();
    v21 = *(v20 + qword_280BDCB90);
    *(v20 + qword_280BDCB90) = 0;

    if (qword_280BD7508 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD6CD0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    v22 = sub_21BE28DAC();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_21BE28D7C();
    v23 = v27[1];
    v24 = sub_21BE28D6C();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    sub_21BC54908(0, 0, v6, &unk_21BE45E28, v25);
  }

  return result;
}

uint64_t sub_21BD40D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_21BE26A4C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[10] = swift_task_alloc();
  v4[11] = sub_21BE28D7C();
  v4[12] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x2822009F8](sub_21BD40EA0, v7, v6);
}

uint64_t sub_21BD40EA0(uint64_t a1)
{
  v1[15] = *(v1[6] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore);
  v1[16] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x2822009F8](sub_21BD40F40, v3, v2);
}

void sub_21BD40F40()
{
  v1 = *(v0[15] + 40);
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[10];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_21BD41054;
    v5 = v0[10];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD41054()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 168) = v0;

  sub_21BB3A4CC(v3, &qword_27CDB5790, &qword_21BE32800);

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_21BD412C4;
  }

  else
  {
    v6 = sub_21BD411E0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD411E0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21BD41254, v1, v2);
}

uint64_t sub_21BD41254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD412C4()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21BD41328, v1, v2);
}

uint64_t sub_21BD41328()
{
  v1 = v0[21];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD00000000000001CLL, 0x800000021BE5F990);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD4140C()
{
  sub_21BE28D7C();
  *(v0 + 16) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD414A0, v2, v1);
}

uint64_t sub_21BD414A0()
{

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  sub_21BB3D11C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD4153C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BD415E8;

  return sub_21BD41DF4();
}

uint64_t sub_21BD415E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BD44A18;
  }

  else
  {
    v4 = sub_21BD44A1C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BD41744()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BD417F0;

  return sub_21BD41A14();
}

uint64_t sub_21BD417F0()
{
  *(*v1 + 40) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BD419B0;
  }

  else
  {
    v4 = sub_21BD4194C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BD4194C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD419B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD41A14()
{
  v1[8] = v0;
  sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21BD41AAC, v3, v2);
}

uint64_t sub_21BD41AAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 >> 62 == 2 && (v2 | v1) == 0 && v3 == 0x8000000000000000)
  {
    v8 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = xmmword_21BE3B610;
    *(v0 + 56) = 0x8000000000000000;
    v9 = v8;
    sub_21BE26CBC();
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_21BD41C54;

    return sub_21BD41DF4();
  }

  else
  {
    sub_21BD43B1C(v1, v2, v3);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21BD41C54()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_21BD41D90;
  }

  else
  {
    v5 = sub_21BBE56CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD41D90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD41DF4()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = sub_21BE28D7C();
  v1[39] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[40] = v3;
  v1[41] = v2;

  return MEMORY[0x2822009F8](sub_21BD41EE0, v3, v2);
}

uint64_t sub_21BD41EE0()
{
  v1 = *(v0[34] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_accountStore);
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_21BD42008;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9AC0, &unk_21BE41050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD4075C;
  v0[13] = &block_descriptor_41;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD42008()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = sub_21BD4314C;
  }

  else
  {
    v5 = sub_21BD42138;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD42138()
{
  v1 = *(v0 + 248);
  *(v0 + 344) = v1;
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    if (v4 >> 62 == 1)
    {
      v5 = *(v0 + 272);
      v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v2;
      *(v0 + 232) = v3;
      *(v0 + 240) = v6;
      v7 = v5;
      sub_21BE26CBC();
    }

    else
    {
      sub_21BD43B1C(*(v0 + 176), *(v0 + 184), v4);
    }

    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    *(v0 + 352) = qword_280BDCBF0;
    *(v0 + 360) = sub_21BE28D6C();
    v11 = sub_21BE28D0C();
    *(v0 + 368) = v11;
    *(v0 + 376) = v10;

    return MEMORY[0x2822009F8](sub_21BD42344, v11, v10);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

void sub_21BD42344()
{
  v1 = *(v0[44] + 40);
  v0[48] = v1;
  if (v1)
  {
    v2 = v0[37];
    v3 = sub_21BE28DAC();
    v0[49] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[50] = v5;
    v0[51] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v6 = swift_task_alloc();
    v0[52] = v6;
    *v6 = v0;
    v6[1] = sub_21BD42468;
    v7 = v0[37];

    v8(v0 + 32, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42468()
{
  v2 = *v1;
  (*v1)[53] = v0;

  sub_21BB3A4CC(v2[37], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[47];
  v4 = v2[46];
  if (v0)
  {
    v5 = sub_21BD42984;
  }

  else
  {
    v5 = sub_21BD425E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD425E8()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD42654, v1, v2);
}

uint64_t sub_21BD42654(uint64_t a1)
{
  if (qword_280BD6CD0 != -1)
  {
    swift_once();
  }

  v1[54] = qword_280BDCB48;
  v1[55] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[56] = v3;
  v1[57] = v2;

  return MEMORY[0x2822009F8](sub_21BD4271C, v3, v2);
}

void sub_21BD4271C()
{
  v1 = *(*(v0 + 432) + 40);
  *(v0 + 464) = v1;
  if (v1)
  {
    (*(v0 + 400))(*(v0 + 288), 1, 1, *(v0 + 392));
    v4 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v2 = swift_task_alloc();
    *(v0 + 472) = v2;
    *v2 = v0;
    v2[1] = sub_21BD42804;
    v3 = *(v0 + 288);

    v4(v0 + 144, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42804()
{
  v2 = *v1;
  (*v1)[60] = v0;

  sub_21BB3A4CC(v2[36], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[57];
  v4 = v2[56];
  if (v0)
  {
    v5 = sub_21BD42DF4;
  }

  else
  {
    v5 = sub_21BD42A78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD42984()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD429E8, v1, v2);
}

uint64_t sub_21BD429E8()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD42A78()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD42AEC, v1, v2);
}

uint64_t sub_21BD42AEC(uint64_t a1)
{
  v1[61] = *(v1[34] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_familyCircleStore);
  v1[62] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[63] = v3;
  v1[64] = v2;

  return MEMORY[0x2822009F8](sub_21BD42B8C, v3, v2);
}

void sub_21BD42B8C()
{
  v1 = *(*(v0 + 488) + 40);
  *(v0 + 520) = v1;
  if (v1)
  {
    (*(v0 + 400))(*(v0 + 280), 1, 1, *(v0 + 392));
    v4 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v2 = swift_task_alloc();
    *(v0 + 528) = v2;
    *v2 = v0;
    v2[1] = sub_21BD42C74;
    v3 = *(v0 + 280);

    v4(v0 + 264, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42C74()
{
  v2 = *v1;
  (*v1)[67] = v0;

  sub_21BB3A4CC(v2[35], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[64];
  v4 = v2[63];
  if (v0)
  {
    v5 = sub_21BD43058;
  }

  else
  {
    v5 = sub_21BD42EE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD42DF4()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD42E58, v1, v2);
}

uint64_t sub_21BD42E58()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD42EE8()
{

  v0[68] = v0[33];
  v1 = v0[40];
  v2 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD42F54, v1, v2);
}

uint64_t sub_21BD42F54()
{
  v1 = v0[68];
  v2 = v0[43];
  v3 = v0[34];

  v4 = *&v3[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v4 | 0x4000000000000000;
  v5 = v3;

  sub_21BE26CBC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD43058()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD430BC, v1, v2);
}

uint64_t sub_21BD430BC()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD4314C()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

id FamilySettingsApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilySettingsApplication(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD4334C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FamilySettingsApplication(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

unint64_t FamilySettingsApplication.accounts(for:)()
{
  v5 = sub_21BBB62F4(MEMORY[0x277D84F90]);
  v1 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesOwnerManager);
  v2 = *MEMORY[0x277CED1A0];
  sub_21BD403A8([v1 accountForService_], v2);
  v3 = *MEMORY[0x277CED1C0];
  sub_21BD403A8([v1 accountForService_], v3);
  return v5;
}

void sub_21BD43608(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (*a3 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:*a4 object:0 userInfo:0 deliverImmediately:1];
}

id sub_21BD436B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0D04(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21BB3A4CC(v4, &unk_27CDB57F0, &qword_21BE328A0);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    v11 = sub_21BE25B2C();
    sub_21BBB52D8(MEMORY[0x277D84F90]);
    v12 = sub_21BE288EC();

    [v10 openSensitiveURL:v11 withOptions:v12];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21BD438D0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21BD43958(void **a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_21BD43B7C(v2, v3, v4);
  return sub_21BE26CBC();
}

unint64_t get_enum_tag_for_layout_string_14FamilyCircleUI0A19SettingsApplicationC5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21BD43A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21BD43A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21BD43AEC(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_21BE45C60;
  }

  return result;
}

double sub_21BD43B1C(void *a1, void *a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return result;
}

void *sub_21BD43B7C(void *result, void *a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
    v4 = result;
    v5 = a2;
  }

  return result;
}

void sub_21BD43BDC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_21BD40910(a1, a2);
}

uint64_t sub_21BD43C4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD40D70(a1, v4, v5, v6);
}

uint64_t sub_21BD43D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD4140C();
}

uint64_t sub_21BD43DAC(char a1)
{
  *(v1 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  sub_21BE28D7C();
  *(v1 + 48) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD43EBC, v3, v2);
}

uint64_t sub_21BD43EBC()
{
  v1 = *(v0 + 56);

  v2 = objc_opt_self();
  if (v1 == 1)
  {
    *(v0 + 24) = 0;
    v3 = [v2 urlDestinationTo:9 error:v0 + 24];
    v4 = *(v0 + 24);
    if (v3)
    {
      v5 = (v0 + 40);
LABEL_6:
      v6 = v3;
      sub_21BE25B5C();
      v7 = v4;

      v8 = 0;
      goto LABEL_10;
    }

    v9 = v4;
    v10 = sub_21BE25A8C();

    swift_willThrow();
    v5 = (v0 + 40);
  }

  else
  {
    *(v0 + 16) = 0;
    v3 = [v2 urlDestinationTo:1 error:v0 + 16];
    v4 = *(v0 + 16);
    if (v3)
    {
      v5 = (v0 + 32);
      goto LABEL_6;
    }

    v11 = v4;
    v12 = sub_21BE25A8C();

    swift_willThrow();
    v5 = (v0 + 32);
  }

  v8 = 1;
LABEL_10:
  v13 = *v5;
  v14 = sub_21BE25B9C();
  (*(*(v14 - 8) + 56))(v13, v8, 1, v14);
  sub_21BD436B4(v13);
  sub_21BB3A4CC(v13, &unk_27CDB57F0, &qword_21BE328A0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BD440CC()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_21BD441BC, v3, v2);
}

uint64_t sub_21BD441BC(uint64_t a1)
{
  v13 = v1;
  sub_21BE260FC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0x754F65636E756F62, 0xEB00000000292874, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s trying to bounce", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_21BD44358;

  return sub_21BD43DAC(1);
}

uint64_t sub_21BD44358()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BCE9994, v3, v2);
}

unint64_t sub_21BD44478()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccount];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFC8, &qword_21BE45E48);
      inited = swift_initStackObject();
      v5 = MEMORY[0x277CED1A0];
      *(inited + 16) = xmmword_21BE32770;
      v6 = *v5;
      *(inited + 32) = v6;
      *(inited + 40) = v3;
      v7 = v6;
      v8 = sub_21BBB62F4(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDBAFD0, &qword_21BE45E50);
    }

    else
    {
      v8 = sub_21BBB62F4(MEMORY[0x277D84F90]);
    }

    return v8;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

unint64_t sub_21BD445D4(unint64_t a1, unint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = a1;
    result = [v5 accountType];
    if (result)
    {
      v6 = result;
      v7 = [result identifier];

      if (v7)
      {
        v8 = sub_21BE28A0C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      result = [v4 accountType];
      if (result)
      {
        v11 = result;
        v12 = [result identifier];

        v31 = v8;
        v34 = v10;
        if (v12)
        {
          v30 = sub_21BE28A0C();
          v14 = v13;
        }

        else
        {
          v30 = 0;
          v14 = 0;
        }

        v15 = [v5 aa_isPrimaryEmailVerified];
        v16 = [v4 aa_isPrimaryEmailVerified];
        v17 = [v5 aa_needsToVerifyTerms];
        v18 = [v4 aa_needsToVerifyTerms];
        v33 = sub_21BE2943C();
        v32 = sub_21BE2943C();
        v19 = [v5 accountType];
        v20 = [v4 accountType];
        v29 = [v5 aa_isCloudSubscriber];
        v21 = [v4 aa_isCloudSubscriber];
        if (v15 != v16 || (v22 = v19, v17 != v18))
        {

LABEL_14:

          return 0;
        }

        if (v14)
        {
          if (!v34)
          {

            goto LABEL_27;
          }

          v23 = v21;
          if (v30 == v31 && v14 == v34)
          {

            v21 = v23;
          }

          else
          {
            v24 = sub_21BE2995C();

            v21 = v23;
            if ((v24 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v34)
        {

          goto LABEL_14;
        }

        v25 = v20;
        if ((v33 & 1) == (v32 & 1))
        {
          if (v19)
          {
            if (!v20)
            {

              goto LABEL_28;
            }

            v26 = v21;
            sub_21BB3A2A4(0, &qword_280BD6990, 0x277CB8F58);
            v27 = v22;
            v28 = sub_21BE2940C();

            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v26 = v21;

            if (v20)
            {

              return 0;
            }
          }

          return v29 ^ v26 ^ 1;
        }

LABEL_27:

LABEL_28:
        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BD4495C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD4153C();
}

uint64_t type metadata accessor for AppleCashView(uint64_t a1)
{
  result = qword_27CDBAFD8;
  if (!qword_27CDBAFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD44A94(uint64_t a1)
{
  sub_21BC08FA8(319);
  if (v1 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v2 <= 0x3F)
    {
      sub_21BBF088C(319);
      if (v3 <= 0x3F)
      {
        sub_21BD44B58(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD44B58(uint64_t a1)
{
  if (!qword_27CDBAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA108, &unk_21BE42B58);
    v1 = sub_21BE2842C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBAFE8);
    }
  }
}

uint64_t sub_21BD44BD8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_21BD44C0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8408, &unk_21BE3B9A8);
  MEMORY[0x28223BE20](v87);
  v81 = &v70 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v79 = *(v80 - 8);
  v4 = MEMORY[0x28223BE20](v80);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v70 - v6;
  v7 = type metadata accessor for AppleCashView(0);
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = v8;
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CircleStateControllerHostView(0);
  v9 = MEMORY[0x28223BE20](v82);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8410, &qword_21BE3B9B8);
  MEMORY[0x28223BE20](v86);
  v85 = (&v70 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v16 = sub_21BE25B9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v20 = *(v19 - 8);
  result = MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = a1;
  if (*(*(a1 + 8) + 40))
  {

    sub_21BE262BC();

    v25 = (*(v20 + 88))(v23, v19);
    v26 = *MEMORY[0x277D07FD8];
    (*(v20 + 8))(v23, v19);
    if (v25 == v26)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass_];
      v29 = sub_21BE2599C();
      v31 = v30;

      v89 = v29;
      v90 = v31;
      sub_21BB41FA4();
      v32 = sub_21BE27DBC();
      v33 = v85;
      *v85 = v32;
      v33[1] = v34;
      *(v33 + 16) = v35 & 1;
      v33[3] = v36;
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8, MEMORY[0x277CE14C0]);
      v37 = v88;
      sub_21BE2784C();
      v38 = 0;
LABEL_10:
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8420, &qword_21BE3B9C8);
      return (*(*(v69 - 8) + 56))(v37, v38, 1, v69);
    }

    v39 = v24;
    sub_21BBA3854(v24 + *(v7 + 24), v15, &unk_27CDB57F0, &qword_21BE328A0);
    v40 = v17;
    v41 = v16;
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_21BB3A4CC(v15, &unk_27CDB57F0, &qword_21BE328A0);
    }

    else
    {
      v42 = *(v17 + 32);
      v43 = v84;
      v42(v84, v15, v16);
      v44 = [*(v39 + 16) dsid];
      if (v44)
      {
        v45 = v44;
        v71 = @"FACircleEventTypeSharedService";
        v46 = *(v82 + 20);
        v47 = v83;
        (*(v40 + 16))(&v83[v46], v43, v41);
        (*(v40 + 56))(&v47[v46], 0, 1, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8428, &qword_21BE3B9D0);
        inited = swift_initStackObject();
        v70 = xmmword_21BE32770;
        *(inited + 16) = xmmword_21BE32770;
        *(inited + 32) = 0xD000000000000011;
        *(inited + 40) = 0x800000021BE55FB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
        v49 = swift_initStackObject();
        v72 = v40;
        v50 = v49;
        *(v49 + 16) = v70;
        *(v49 + 32) = 0xD000000000000012;
        v51 = v49 + 32;
        *(v49 + 40) = 0x800000021BE55FD0;
        *(v49 + 72) = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        *(v50 + 48) = v45;
        *&v70 = v71;
        v71 = v45;
        v52 = sub_21BBB52D8(v50);
        swift_setDeallocating();
        sub_21BB3A4CC(v51, &qword_27CDB57D8, &qword_21BE32860);
        *(inited + 48) = v52;
        v53 = sub_21BBB6A70(inited);
        swift_setDeallocating();
        sub_21BB3A4CC(inited + 32, &qword_27CDB8430, &qword_21BE3B9D8);
        v54 = v75;
        sub_21BD46424(v39, v75, type metadata accessor for AppleCashView);
        v55 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v56 = swift_allocObject();
        sub_21BD460C0(v54, v56 + v55);
        v57 = v47;
        *v47 = v70;
        v58 = v82;
        *&v47[*(v82 + 24)] = v53;
        v59 = &v47[*(v58 + 28)];
        *v59 = &unk_21BE45EE8;
        *(v59 + 1) = v56;
        v60 = v78;
        sub_21BE26EEC();
        v61 = v76;
        sub_21BD46424(v57, v76, type metadata accessor for CircleStateControllerHostView);
        v62 = v79;
        v63 = *(v79 + 16);
        v64 = v77;
        v65 = v80;
        v63(v77, v60, v80);
        v66 = v81;
        sub_21BD46424(v61, v81, type metadata accessor for CircleStateControllerHostView);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8438, &qword_21BE3B9E0);
        v63((v66 + *(v67 + 48)), v64, v65);
        v68 = *(v62 + 8);
        v68(v64, v65);
        sub_21BC77378(v61);
        sub_21BBA3854(v66, v85, &qword_27CDB8408, &unk_21BE3B9A8);
        swift_storeEnumTagMultiPayload();
        sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8, MEMORY[0x277CE14C0]);
        v37 = v88;
        sub_21BE2784C();

        sub_21BB3A4CC(v66, &qword_27CDB8408, &unk_21BE3B9A8);
        v68(v60, v65);
        sub_21BC77378(v83);
        (*(v72 + 8))(v84, v41);
        v38 = 0;
        goto LABEL_10;
      }

      (*(v40 + 8))(v43, v16);
    }

    v38 = 1;
    v37 = v88;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD4571C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21BE28D7C();
  v2[3] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_21BBAFDA8;

  return sub_21BD457E0(a1, a2);
}

uint64_t sub_21BD457E0(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  sub_21BE28D7C();
  v3[27] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[28] = v5;
  v3[29] = v4;

  return MEMORY[0x2822009F8](sub_21BD4587C, v5, v4);
}

uint64_t sub_21BD4587C()
{
  v1 = [*(v0 + 200) presenter];
  if (!v1 || (v2 = v1, v3 = [v1 navigationController], *(v0 + 240) = v3, v2, !v3))
  {

    goto LABEL_16;
  }

  v4 = [*(v0 + 192) userInfo];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = sub_21BE2890C();

  *(v0 + 176) = 0x6E6F69746361;
  *(v0 + 184) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v6 + 16) || (v7 = sub_21BBB31E8(v0 + 80), (v8 & 1) == 0))
  {

    sub_21BBB7238(v0 + 80);
LABEL_13:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_14;
  }

  sub_21BB3DCD4(*(v6 + 56) + 32 * v7, v0 + 144);
  sub_21BBB7238(v0 + 80);

  if (!*(v0 + 168))
  {
LABEL_14:
    sub_21BB3A4CC(v0 + 144, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v0 + 80) != 0xD000000000000012 || 0x800000021BE56510 != *(v0 + 88))
  {
    v11 = sub_21BE2995C();

    if (v11)
    {
      goto LABEL_20;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_20:
  v12 = *(v0 + 208);
  v13 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  v14 = (v12 + *(type metadata accessor for AppleCashView(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  *(v0 + 80) = *v14;
  *(v0 + 88) = v16;
  *(v0 + 144) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFF0, &qword_21BE45EF8);
  sub_21BE2840C();
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  sub_21BE283FC();
  v17 = *(v0 + 144);
  *(v0 + 248) = v17;
  if (v17)
  {
    v18 = [*(v0 + 192) userInfo];
    if (v18)
    {
      v19 = v18;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v22 = sub_21BE288EC();
    *(v0 + 256) = v22;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BD45D30;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BD44BD8;
    *(v0 + 104) = &block_descriptor_42;
    *(v0 + 112) = v23;
    [v17 presentPeerPaymentControllerWithAttributes:v22 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v20 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 240);
  [v20 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

LABEL_16:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BD45D30()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_21BD45E38, v2, v1);
}

uint64_t sub_21BD45E38()
{
  v1 = v0[31];
  v2 = v0[32];

  v3 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v4 = v0[30];
  [v3 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BD45F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F0, &qword_21BE3B978);
  sub_21BD44C0C(v2, (a2 + *(v6 + 44)));
  sub_21BD46424(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BD460C0(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F8, &qword_21BE3B990) + 36));
  sub_21BE2701C();
  sub_21BE28D8C();
  *v9 = &unk_21BE45ED8;
  v9[1] = v8;
  v10 = sub_21BE271CC();
  LOBYTE(v9) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8400, &unk_21BE3B998);
  v12 = a2 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v9;
  return result;
}

uint64_t sub_21BD460C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD46124()
{
  v2 = *(type metadata accessor for AppleCashView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC76B68(v0 + v3);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for AppleCashView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BD46344(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppleCashView(0);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BD4571C(a1, a2);
}

uint64_t sub_21BD46424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21BD4648C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_21BE2762C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB060, &unk_21BE46068);
  MEMORY[0x28223BE20](v29);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v33 = v10;
  v34 = v12;
  sub_21BB41FA4();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v33 = v13;
  v34 = v14;
  LOBYTE(v10) = v16 & 1;
  v35 = v16 & 1;
  v36 = v17;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_21BE295EC();

  strcpy(v32, "Active group: ");
  HIBYTE(v32[1]) = -18;
  MEMORY[0x21CF03CA0](a1, a2);
  sub_21BE2809C();

  sub_21BBC7C7C(v13, v15, v10);

  sub_21BD4AE34(&qword_27CDBB068, &qword_27CDBB060, &unk_21BE46068, sub_21BD4ADE0);
  v18 = v31;
  sub_21BE285EC();
  v19 = v30;
  sub_21BE2761C();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB078, &qword_21BE46078) + 36);
  (*(v6 + 16))(v18 + v20, v19, v5);
  v21 = *(v6 + 56);
  v22 = v18;
  v21(v18 + v20, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB080, &qword_21BE46080) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v6 + 32))(v24 + v25, v19, v5);
  v21(v24 + v25, 0, 1, v5);
  *v24 = KeyPath;
  LOBYTE(KeyPath) = sub_21BE27B8C();
  v26 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB088, &qword_21BE46088) + 36);
  *v26 = KeyPath;
  result = 0.0;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 1;
  return result;
}

double sub_21BD4687C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_21BE2762C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB090, &qword_21BE46090);
  MEMORY[0x28223BE20](v29);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_21BB41FA4();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v34 = v13;
  v35 = v14;
  LOBYTE(v10) = v16 & 1;
  v36 = v16 & 1;
  v37 = v17;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_21BE295EC();

  v32 = 0xD00000000000001ELL;
  v33 = 0x800000021BE5F9D0;
  MEMORY[0x21CF03CA0](a1, a2);
  sub_21BE2809C();

  sub_21BBC7C7C(v13, v15, v10);

  sub_21BD4AE34(&qword_27CDBB098, &qword_27CDBB090, &qword_21BE46090, sub_21BD4AEB8);
  v18 = v31;
  sub_21BE285EC();
  v19 = v30;
  sub_21BE2761C();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0A8, &qword_21BE46098) + 36);
  (*(v6 + 16))(v18 + v20, v19, v5);
  v21 = *(v6 + 56);
  v22 = v18;
  v21(v18 + v20, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B0, &qword_21BE460A0) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v6 + 32))(v24 + v25, v19, v5);
  v21(v24 + v25, 0, 1, v5);
  *v24 = KeyPath;
  LOBYTE(KeyPath) = sub_21BE27B8C();
  v26 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B8, &qword_21BE460A8) + 36);
  *v26 = KeyPath;
  result = 0.0;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 1;
  return result;
}

uint64_t sub_21BD46C64@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FamilyChecklistView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = v31;
  if (!v31)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v9 = v1 + *(v7 + 20);
  if (*v9)
  {
    v10 = *(*v9 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = sub_21BE0476C;
    v11[4] = 0;

    v12 = sub_21BBED570(v11);

    if (qword_27CDB4E70 != -1)
    {
      swift_once();
    }

    if ((*(qword_27CDD41D8 + 40) & 0x8000000000000000) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v16 = v31;
      if (!v31)
      {
        v16 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      sub_21BC24D94(v16, v12);
    }

    else
    {
      sub_21BE261BC();
      v13 = sub_21BE26A2C();
      v14 = sub_21BE28FFC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21BB35000, v13, v14, "Session already active", v15, 2u);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }

    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    v17 = sub_21BE2727C();
    v19 = v18;
    if (qword_27CDB4E20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = off_27CDB59A8;
    v21 = qword_280BD79D8;

    if (v21 != -1)
    {
      swift_once();
    }

    v28 = v12;
    type metadata accessor for ChecklistSortingRules();

    sub_21BE283EC();
    v22 = v29;
    v23 = v30;
    v28 = v20;
    type metadata accessor for ChecklistUserPreferences(0);
    sub_21BE283EC();
    v24 = v29;
    v25 = v30;
    type metadata accessor for FamilyCircleStore(0);
    sub_21BD4B0A4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
    result = sub_21BE270CC();
    *a1 = v17;
    a1[1] = v19;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v24;
    a1[5] = v25;
    a1[6] = result;
    a1[7] = v27;
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD4714C()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v3);
  (*(v1 + 8))(v3, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();

  return v6;
}

uint64_t sub_21BD4730C()
{
  v1 = v0;
  v2 = type metadata accessor for FamilyChecklistView(0);
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = v45 - v6;
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  sub_21BE261BC();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();
  v16 = os_log_type_enabled(v14, v15);
  v48 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45[1] = v3;
    v18 = v2;
    v19 = v4;
    v20 = v1;
    v21 = v17;
    v22 = swift_slowAlloc();
    v45[0] = v7;
    v23 = v8;
    v24 = v22;
    v50[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5F9F0, v50);
    _os_log_impl(&dword_21BB35000, v14, v15, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x21CF05C50](v24, -1, -1);
    v25 = v21;
    v1 = v20;
    v4 = v19;
    v2 = v18;
    MEMORY[0x21CF05C50](v25, -1, -1);

    v26 = v23;
    v7 = v45[0];
    v27 = *(v26 + 8);
    v27(v13, v45[0]);
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v13, v7);
  }

  v28 = v1 + *(v2 + 32);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v50[0]) = v29;
  v50[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v49)
  {
    goto LABEL_7;
  }

  if (!*(v1 + *(v2 + 20)))
  {
    goto LABEL_13;
  }

  sub_21BE07D30(1);
  v32 = v31;

  if (v32)
  {
LABEL_7:
    sub_21BE261BC();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "All providers done", v35, 2u);
      MEMORY[0x21CF05C50](v35, -1, -1);
    }

    v27(v11, v7);
  }

  else
  {
    v36 = sub_21BE28DAC();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
    sub_21BD4B2E4(v1, v4, type metadata accessor for FamilyChecklistView);
    sub_21BE28D7C();
    v38 = sub_21BE28D6C();
    v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    *(v40 + 16) = v38;
    *(v40 + 24) = v41;
    sub_21BD48CF4(v4, v40 + v39);
    sub_21BBA932C(0, 0, v37, &unk_21BE461E0, v40);
  }

  if (*(v1 + *(v2 + 20)))
  {

    sub_21BE07D30(0);
    v43 = v42;

    return v43 & 1;
  }

LABEL_13:
  type metadata accessor for FamilyChecklistStore();
  sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BD47864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FamilyChecklistView(0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[7] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_21BE28D7C();
  v4[12] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[13] = v9;
  v4[14] = v8;

  return MEMORY[0x2822009F8](sub_21BD479F8, v9, v8);
}

uint64_t sub_21BD479F8(uint64_t a1)
{
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Retrying checklist items", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  v9 = v1[2];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  v10 = (v9 + *(v8 + 20));
  v11 = *v10;
  v1[15] = *v10;
  if (v11)
  {

    v12 = swift_task_alloc();
    v1[16] = v12;
    *v12 = v1;
    v12[1] = sub_21BD47BCC;

    return sub_21BE05F3C();
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);

    return sub_21BE2726C();
  }
}

uint64_t sub_21BD47BCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21BD4B9C0;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21BD47D10;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BD47D10()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_21BD4B2E4(v4, v1, type metadata accessor for FamilyChecklistView);
  v6 = sub_21BE28D6C();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21BD48CF4(v1, v8 + v7);
  sub_21BBA932C(0, 0, v2, &unk_21BE461F0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21BD47E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for FamilyChecklistView(0);
  v4[9] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_21BE28D7C();
  v4[13] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD47FA4, v7, v6);
}

uint64_t sub_21BD47FA4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v1 + *(v2 + 20));
  if (v3)
  {
    v4 = *(v0 + 72);

    sub_21BE07D30(1);
    v6 = v5;

    v7 = v1 + *(v2 + 32);
    v8 = *v7;
    v9 = *(v7 + 8);
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;
    *(v0 + 112) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    sub_21BE261BC();
    sub_21BD4B2E4(v1, v4, type metadata accessor for FamilyChecklistView);
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 72);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      v15 = v13 + *(v2 + 32);
      v16 = *v15;
      v17 = *(v15 + 8);
      *(v0 + 32) = v16;
      *(v0 + 40) = v17;
      sub_21BE283FC();
      v18 = *(v0 + 113);
      sub_21BD4B934(v13, type metadata accessor for FamilyChecklistView);
      *(v14 + 4) = v18;
      _os_log_impl(&dword_21BB35000, v10, v11, "Checklist item state: %{BOOL}d", v14, 8u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    else
    {
      sub_21BD4B934(*(v0 + 72), type metadata accessor for FamilyChecklistView);
    }

    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 80);

    (*(v21 + 8))(v20, v22);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21BE26CAC();

    v23 = *(v0 + 48);
    if (!v23)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    type metadata accessor for ChecklistStoreCache();
    v24 = swift_allocObject();
    v25 = sub_21BE20540(v24);
    v26 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = sub_21BE0476C;
    v27[4] = 0;

    v28 = sub_21BBED570(v27);

    sub_21BDE5F04(v23, v28);

    v29 = sub_21BE28E8C();
    v30 = sub_21BE1F55C();
    if (v30)
    {
      v31 = v30;
      v35 = v25[2];
      v36 = v25[3];

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
      v32 = sub_21BE289CC();

      [v31 setValue:v29 forKey:{v32, v35, v36}];

      v29 = v32;
    }

    v33 = sub_21BE1F55C();
    [v33 synchronize];

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);

    return sub_21BE2726C();
  }
}

uint64_t FamilyChecklistView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_21BE2762C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21BE2791C();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FamilyChecklistView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFF8, &qword_21BE45F00);
  MEMORY[0x28223BE20](v11);
  v13 = (v31 - v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB000, &unk_21BE45F08);
  MEMORY[0x28223BE20](v33);
  v15 = v31 - v14;
  sub_21BD4B2E4(v31[1], v10, type metadata accessor for FamilyChecklistView);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_21BD48CF4(v10, v17 + v16);
  v18 = *(v11 + 40);
  *(v13 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v19 = *(v11 + 44);
  *(v13 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationManager(0);
  swift_allocObject();
  *v13 = NavigationManager.init(usesNavigationStack:path:)(1, MEMORY[0x277D84F90]);
  v13[1] = 0;
  v13[2] = sub_21BD48D58;
  v13[3] = v17;
  sub_21BE2790C();
  sub_21BB3B038(&qword_27CDBB008, &qword_27CDBAFF8, &qword_21BE45F00, protocol conformance descriptor for FamilyNavigationHost<A>);
  v20 = v32;
  sub_21BE2820C();
  (*(v4 + 8))(v6, v20);
  sub_21BB3A4CC(v13, &qword_27CDBAFF8, &qword_21BE45F00);
  v21 = v34;
  sub_21BE2761C();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB010, &qword_21BE45F88) + 36);
  (*(v2 + 16))(&v15[v22], v21, v1);
  v23 = *(v2 + 56);
  v23(&v15[v22], 0, 1, v1);
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB018, &unk_21BE45FC0) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v2 + 32))(v25 + v26, v21, v1);
  v23(v25 + v26, 0, 1, v1);
  *v25 = KeyPath;
  v27 = sub_21BE276FC();
  v28 = &v15[*(v33 + 36)];
  *v28 = v27;
  v28[1] = sub_21BD4A688;
  v28[2] = 0;
  sub_21BE27B6C();
  v29 = [objc_opt_self() currentDevice];
  [v29 userInterfaceIdiom];

  sub_21BD4A978();
  sub_21BE27F0C();
  return sub_21BB3A4CC(v15, &qword_27CDBB000, &unk_21BE45F08);
}

uint64_t type metadata accessor for FamilyChecklistView(uint64_t a1)
{
  result = qword_27CDBB048;
  if (!qword_27CDBB048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD48A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0C8, &qword_21BE460B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0D0, &qword_21BE460C0);
  sub_21BB3B038(&qword_27CDBB0D8, &qword_27CDBB0C8, &qword_21BE460B8, MEMORY[0x277D83960]);
  sub_21BB3B038(&qword_27CDBB0E0, &qword_27CDBB0C8, &qword_21BE460B8, MEMORY[0x277D83980]);
  sub_21BB3B038(&qword_27CDBB0E8, &qword_27CDBB0C8, &qword_21BE460B8, MEMORY[0x277D83990]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0F0, &qword_21BE460C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0F8, &qword_21BE460D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB100, &qword_21BE460D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB108, &qword_21BE460E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB110, &qword_21BE460E8);
  sub_21BD4AF14();
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BB3B038(&qword_27CDBB150, &qword_27CDBB0F8, &qword_21BE460D0, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  sub_21BC177EC();
  return sub_21BE271AC();
}

uint64_t sub_21BD48CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD48D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21BD48A30(a1, a2, a3, v8);
}

uint64_t sub_21BD48DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_21BE2757C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FamilyChecklistView(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB110, &qword_21BE460E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB108, &qword_21BE460E0);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB100, &qword_21BE460D8);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0F0, &qword_21BE460C8);
  v18 = *(v17 - 8);
  v51 = v17;
  v52 = v18;
  MEMORY[0x28223BE20](v17);
  v46 = &v45 - v19;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB158, &unk_21BE46108);
  sub_21BB3B038(&qword_27CDBB160, &qword_27CDBB158, &unk_21BE46108, MEMORY[0x277CE14C0]);
  sub_21BE27D1C();
  v20 = a1;
  sub_21BD4B2E4(a1, v7, type metadata accessor for FamilyChecklistView);
  v21 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v22 = swift_allocObject();
  sub_21BD48CF4(v7, v22 + v21);
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB128, &qword_21BE460F0) + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_21BD4B08C;
  *(v23 + 3) = v22;
  type metadata accessor for NavigationManager(0);
  sub_21BD4B0A4(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v24 = sub_21BE26E9C();
  LOBYTE(v21) = v25;
  LOBYTE(v63) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v26 = v59;
  v27 = v60;
  v28 = &v10[*(v8 + 36)];
  *v28 = sub_21BD49D24;
  *(v28 + 1) = 0;
  *(v28 + 2) = v24;
  v28[24] = v21 & 1;
  v28[32] = v26;
  *(v28 + 5) = v27;
  v29 = sub_21BD4AF14();
  sub_21BE2804C();
  sub_21BB3A4CC(v10, &qword_27CDBB110, &qword_21BE460E8);
  v59 = sub_21BD4714C();
  v60 = v30;
  v63 = v8;
  v64 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21BB41FA4();
  v33 = MEMORY[0x277D837D0];
  v34 = v47;
  sub_21BE27F9C();

  v35 = v12;
  v36 = v34;
  (*(v48 + 8))(v35, v34);
  v37 = v53;
  v38 = v54;
  v39 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277CDDDC0], v55);
  v59 = v36;
  v60 = v33;
  v61 = OpaqueTypeConformance2;
  v62 = v32;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v46;
  v42 = v49;
  sub_21BE280AC();
  (*(v38 + 8))(v37, v39);
  (*(v50 + 8))(v16, v42);
  v57 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0F8, &qword_21BE460D0);
  v59 = v42;
  v60 = v40;
  swift_getOpaqueTypeConformance2();
  sub_21BB3B038(&qword_27CDBB150, &qword_27CDBB0F8, &qword_21BE460D0, MEMORY[0x277CDDF68]);
  v43 = v51;
  sub_21BE2817C();
  return (*(v52 + 8))(v41, v43);
}

uint64_t sub_21BD49518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB170, &qword_21BE46140);
  MEMORY[0x28223BE20](v50);
  v4 = &v49 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB178, &qword_21BE46148);
  MEMORY[0x28223BE20](v51);
  v53 = &v49 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB180, &qword_21BE46150);
  v6 = MEMORY[0x28223BE20](v55);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB188, &qword_21BE46158);
  MEMORY[0x28223BE20](v56);
  v10 = (&v49 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB190, &qword_21BE46160);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB198, &qword_21BE46168);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BD4B0A4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
  v22 = sub_21BE2727C();
  v24 = v23;
  if (sub_21BE2866C())
  {
    v25 = 82.0;
  }

  else
  {
    v25 = 74.0;
  }

  v26 = (a1 + *(type metadata accessor for FamilyChecklistView(0) + 28));
  v27 = *v26;
  v28 = v26[1];
  v60 = v27;
  v61 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v29 = v62;
  v30 = v63;
  *&v62 = v22;
  *(&v62 + 1) = v24;
  *&v63 = 0x4014000000000000;
  *(&v63 + 1) = v25;
  v64 = v29;
  *&v65 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1A0, &qword_21BE46170);
  sub_21BD4B34C();
  sub_21BE285EC();
  if (sub_21BD4730C())
  {
    sub_21BD46C64(&v62);
    v31 = v63;
    *v10 = v62;
    v10[1] = v31;
    v32 = v65;
    v10[2] = v64;
    v10[3] = v32;
    swift_storeEnumTagMultiPayload();
    sub_21BD4B42C();
    sub_21BD4B480();
    sub_21BE2784C();
  }

  else
  {
    sub_21BE26EEC();
    sub_21BE25D5C();
    sub_21BE2869C();
    sub_21BE2725C();
    v33 = v53;
    sub_21BBB7D84(v4, v53, &qword_27CDBB170, &qword_21BE46140);
    v34 = (v33 + *(v51 + 36));
    v35 = v67;
    v34[4] = v66;
    v34[5] = v35;
    v34[6] = v68;
    v36 = v63;
    *v34 = v62;
    v34[1] = v36;
    v37 = v65;
    v34[2] = v64;
    v34[3] = v37;
    v60 = sub_21BE282DC();
    v38 = sub_21BE2852C();
    v39 = v52;
    sub_21BBB7D84(v33, v52, &qword_27CDBB178, &qword_21BE46148);
    *(v39 + *(v55 + 36)) = v38;
    v40 = v54;
    sub_21BBB7D84(v39, v54, &qword_27CDBB180, &qword_21BE46150);
    sub_21BBA3854(v40, v10, &qword_27CDBB180, &qword_21BE46150);
    swift_storeEnumTagMultiPayload();
    sub_21BD4B42C();
    sub_21BD4B480();
    sub_21BE2784C();
    sub_21BB3A4CC(v40, &qword_27CDBB180, &qword_21BE46150);
  }

  v41 = *(v16 + 16);
  v41(v19, v21, v15);
  v56 = v21;
  v42 = v19;
  v43 = v59;
  v44 = v57;
  sub_21BBA3854(v59, v57, &qword_27CDBB190, &qword_21BE46160);
  v45 = v58;
  v41(v58, v42, v15);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1E0, &qword_21BE46180);
  sub_21BBA3854(v44, &v45[*(v46 + 48)], &qword_27CDBB190, &qword_21BE46160);
  sub_21BB3A4CC(v43, &qword_27CDBB190, &qword_21BE46160);
  v47 = *(v16 + 8);
  v47(v56, v15);
  sub_21BB3A4CC(v44, &qword_27CDBB190, &qword_21BE46160);
  return (v47)(v42, v15);
}

void sub_21BD49C70(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for FamilyChecklistView(0) + 20)))
  {

    sub_21BE02DB4();
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE2726C();
    __break(1u);
  }
}

void *sub_21BD49D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BB3A35C(a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F20, &unk_21BE46130);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v14, &v18);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1Tm(&v18, v20);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v8 = v14 - v7;
    (*(v4 + 32))(v3, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_21BBE7ECC(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    *&v14[0] = v10;
    BYTE8(v14[0]) = 0;
    sub_21BE2784C();
    v11 = v16;
    v12 = v17;
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_21BB3A4CC(v14, &qword_27CDB7F28, &qword_21BE3A410);
    v16 = 0;
    v17 = 1;
    result = sub_21BE2784C();
    v11 = v18;
    v12 = v19;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  return result;
}

uint64_t sub_21BD49F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB168, &qword_21BE46118);
  MEMORY[0x28223BE20](v25);
  v24 = &v23 - v3;
  v4 = sub_21BE278CC();
  MEMORY[0x28223BE20](v4 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA270, &unk_21BE46120);
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v23 - v6;
  v8 = type metadata accessor for FamilyChecklistView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  done = type metadata accessor for DoneBarButton(0);
  v12 = done - 8;
  MEMORY[0x28223BE20](done);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2789C();
  sub_21BD4B2E4(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyChecklistView);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_21BD48CF4(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = &v14[*(v12 + 28)];
  *v17 = sub_21BD4B250;
  v17[1] = v16;
  sub_21BE278BC();
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA298, &qword_21BE42DB8);
  sub_21BD0A404();
  sub_21BE26EDC();
  v18 = v24;
  v19 = *(v25 + 48);
  sub_21BD4B2E4(v14, v24, type metadata accessor for DoneBarButton);
  v20 = v18 + v19;
  v21 = v23;
  (*(v5 + 16))(v20, v7, v23);
  sub_21BE2772C();
  (*(v5 + 8))(v7, v21);
  return sub_21BD4B934(v14, type metadata accessor for DoneBarButton);
}

uint64_t sub_21BD4A308(uint64_t a1)
{
  v15 = sub_21BE2754C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_21BE26F5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBA3854(a1, v7, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21BE28FEC();
    v12 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_21BE26F4C();
  return (*(v9 + 8))(v11, v8);
}

double sub_21BD4A584@<D0>(uint64_t a2@<X8>)
{
  sub_21BD4714C();
  sub_21BB41FA4();
  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  v8 = sub_21BE27D8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21BBC7C7C(v3, v5, v7 & 1);

  type metadata accessor for FamilyChecklistView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  result = v16;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21BD4A6B4@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A35C(v1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1E8, &qword_21BE46288);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v12, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v8 = v12 - v7;
    (*(v4 + 24))(v3, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_21BBE7ECC(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = sub_21BB3A4CC(v12, &qword_27CDBB1F0, &unk_21BE46290);
    v10 = 0;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_21BD4A8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0C0, &qword_21BE460B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21BBA3854(a1, &v6 - v3, &qword_27CDBB0C0, &qword_21BE460B0);
  return MEMORY[0x21CF02560](v4);
}

unint64_t sub_21BD4A978()
{
  result = qword_27CDBB028;
  if (!qword_27CDBB028)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB000, &unk_21BE45F08);
    v4[0] = sub_21BD4AA04();
    v4[1] = MEMORY[0x277CE0760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB028);
  }

  return result;
}

unint64_t sub_21BD4AA04()
{
  result = qword_27CDBB030;
  if (!qword_27CDBB030)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB018, &unk_21BE45FC0);
    v4[0] = sub_21BD4AABC();
    v4[1] = sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB030);
  }

  return result;
}

unint64_t sub_21BD4AABC()
{
  result = qword_27CDBB038;
  if (!qword_27CDBB038)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB010, &qword_21BE45F88);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAFF8, &qword_21BE45F00);
    v4[3] = sub_21BE2791C();
    v4[4] = sub_21BB3B038(&qword_27CDBB008, &qword_27CDBAFF8, &qword_21BE45F00, protocol conformance descriptor for FamilyNavigationHost<A>);
    v4[5] = MEMORY[0x277CDE0D0];
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB038);
  }

  return result;
}

void sub_21BD4AC48(uint64_t a1)
{
  sub_21BB40410(319);
  if (v1 <= 0x3F)
  {
    sub_21BC41F08(319);
    if (v2 <= 0x3F)
    {
      sub_21BD4AD4C(319);
      if (v3 <= 0x3F)
      {
        sub_21BC09314(319, &qword_27CDB6958, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_21BC09314(319, &qword_280BD6A00, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_21BD16028(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21BD4AD4C(uint64_t a1)
{
  if (!qword_27CDBB058)
  {
    type metadata accessor for FamilyNetworkMonitor(255);
    sub_21BD4B0A4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBB058);
    }
  }
}

unint64_t sub_21BD4ADE0()
{
  result = qword_27CDBB070;
  if (!qword_27CDBB070)
  {
    result = swift_getWitnessTable(aQfF, &type metadata for ChecklistSectionHeaderStyle, v0, v1);
    atomic_store(result, &qword_27CDBB070);
  }

  return result;
}

uint64_t sub_21BD4AE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = sub_21BCE1FBC();
    v8[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD4AEB8()
{
  result = qword_27CDBB0A0;
  if (!qword_27CDBB0A0)
  {
    result = swift_getWitnessTable(byte_21BE49D58, &type metadata for ChecklistSectionCompletedStyle, v0, v1);
    atomic_store(result, &qword_27CDBB0A0);
  }

  return result;
}

unint64_t sub_21BD4AF14()
{
  result = qword_27CDBB118;
  if (!qword_27CDBB118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB110, &qword_21BE460E8);
    v4[0] = sub_21BD4AFCC();
    v4[1] = sub_21BB3B038(&qword_27CDBB140, &qword_27CDBB148, &qword_21BE46100, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB118);
  }

  return result;
}

unint64_t sub_21BD4AFCC()
{
  result = qword_27CDBB120;
  if (!qword_27CDBB120)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB128, &qword_21BE460F0);
    v4[0] = sub_21BB3B038(&qword_27CDBB130, &qword_27CDBB138, &qword_21BE460F8, MEMORY[0x277CDE5A0]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB120);
  }

  return result;
}

uint64_t sub_21BD4B0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21BE26F5C();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD4B268(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyChecklistView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BD4B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD4B34C()
{
  result = qword_27CDBB1A8;
  if (!qword_27CDBB1A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB1A0, &qword_21BE46170);
    v4[0] = sub_21BD4B3D8();
    v4[1] = sub_21BC0ACFC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB1A8);
  }

  return result;
}

unint64_t sub_21BD4B3D8()
{
  result = qword_27CDBC290;
  if (!qword_27CDBC290)
  {
    result = swift_getWitnessTable(byte_21BE3980C, &type metadata for FamilyChecklistHeaderView, v0, v1);
    atomic_store(result, &qword_27CDBC290);
  }

  return result;
}