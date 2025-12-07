uint64_t sub_216A27D0C()
{

  sub_216AF4764();
}

uint64_t sub_216A27D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_21700EA34();

  v11 = sub_21700EA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v14 = v13;
  OUTLINED_FUNCTION_5_61(v12);

  v15 = sub_21700EA24();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  OUTLINED_FUNCTION_5_61(v16);
  sub_21700B0F4();
  return v18;
}

uint64_t sub_216A27E68()
{

  if (sub_216AF457C() && (sub_216A5D3A8(v0, v10), , v11))
  {
    v2 = v10[0];
    v1 = v10[1];
    v17 = v11;
    sub_21669987C(&v17, &qword_27CAB6BA0, qword_217037400);
    v18 = v12;
    sub_21669987C(&v18, &qword_27CABAA40, &unk_217014260);
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v3 = sub_216AF457C();

  if (v3)
  {
    sub_216A5D3A8(v4, &v13);

    v5 = v14;
    if (v14)
    {
      v6 = v15;
      v3 = v16;
      v19 = v13;
      sub_21700DF14();
      sub_21669987C(&v19, &qword_27CABAA40, &unk_217014260);
      v20 = v5;
      sub_21669987C(&v20, &qword_27CAB6BA0, qword_217037400);
    }

    else
    {
      v6 = 0;
      v3 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_216E1A4B8(v2, v1);

  if (v7)
  {
    v8 = sub_216E1A4B8(v6, v3);

    if (v8)
    {
      return 2;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_216A27FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  nullsub_1();
  v25 = v12;
  v26 = v13;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  type metadata accessor for PresentationView(0, &v21);
  OUTLINED_FUNCTION_0_116();
  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v14, v15, v16);

  v25 = v21;
  v26 = v22;
  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v17, v18, v19);
}

void *sub_216A280EC@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  result = sub_216A5D3A8(a2, &v15);
  v4 = v16;
  if (!v16)
  {
    v13 = 0;
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v18[1] = v15;
  v18[0] = v17;
  sub_216A2841C(v18, v14);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v5, v6, v7);
  v14[0] = v4;
  sub_21669987C(v14, &qword_27CAB6BA0, qword_217037400);
  OUTLINED_FUNCTION_42();
  result = sub_21669987C(v8, v9, v10);
  v11 = *(&v18[0] + 1);
  if (!*(&v18[0] + 1))
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = MEMORY[0x277D84F90];
  v13 = *&v18[0];
LABEL_7:
  *a1 = v13;
  a1[1] = v11;
  a1[2] = 0;
  a1[3] = v12;
  return result;
}

uint64_t sub_216A281C4@<X0>(BOOL *a1@<X8>, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  if (v5)
  {
  }

  *a1 = v5 != 0;
  return result;
}

_BYTE *sub_216A2822C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void))
{
  if ((*result & 1) == 0)
  {

    a11(0);
    sub_216AF4764();
  }

  return result;
}

uint64_t sub_216A2830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A2841C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A285E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v79 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v77 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v78 = &v73 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  sub_21700D7A4();
  sub_21700CE04();
  v84 = v8;
  v28 = *(v8 + 16);
  v86 = v6;
  v29 = v6;
  v30 = v91;
  v81 = v28;
  v28(v13, v88, v29);
  v75 = v13;
  sub_21700D734();
  v85 = a1;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = *(v30 + 8);
  v83 = v14;
  v91 = v30 + 8;
  (v34)(v24, v14);
  if (v33)
  {
    v74 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
    v89 = v31;
    v90 = v33;
    v35 = v87;
    sub_21700F364();
    v36 = v78;
    sub_21700CE04();
    v37 = v79;
    v38 = v88;
    v81(v79, v88, v86);
    v39 = v80;
    v40 = v82;
    ContentDescriptor.init(deserializing:using:)(v36, v37, v41, v42, v43, v44, v45, v46, v73, v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    v82 = v40;
    if (!v40)
    {
      v47 = v74;
      sub_216A29168(v39, v35 + *(v74 + 24), type metadata accessor for ContentDescriptor);
      type metadata accessor for Artwork(0);
      v80 = v34;
      v48 = v85;
      sub_21700CE04();
      v81(v75, v38, v86);
      sub_216A290C4(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
      sub_21700D734();
      sub_21700CE04();
      v49 = sub_21700CDB4();
      v51 = v50;
      v52 = v83;
      v53 = v80;
      (v80)(v27, v83);
      v54 = (v35 + v47[7]);
      *v54 = v49;
      v54[1] = v51;
      sub_21700CE04();
      v55 = sub_21700CDB4();
      v57 = v56;
      v58 = v27;
      v59 = v53;
      v53(v58, v52);
      v60 = (v35 + v47[8]);
      *v60 = v55;
      v60[1] = v57;
      v61 = v76;
      sub_21700CE04();
      LOBYTE(v55) = sub_21700CD44();
      v59(v61, v52);
      *(v35 + v47[9]) = v55 & 1;
      v62 = v77;
      sub_21700CE04();
      LOBYTE(v55) = sub_21700CD44();
      (*(v84 + 8))(v88, v86);
      v59(v48, v52);
      result = (v59)(v62, v52);
      *(v35 + v47[10]) = v55 & 1;
      return result;
    }
  }

  else
  {
    v64 = v34;
    v65 = sub_21700E2E4();
    sub_216A290C4(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v66 = swift_allocError();
    v68 = v67;
    v69 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
    *v68 = 25705;
    v68[1] = 0xE200000000000000;
    v68[2] = v69;
    v70 = *(*(v65 - 8) + 104);
    v71 = v65;
    v34 = v64;
    v70(v68, *MEMORY[0x277D22530], v71);
    v82 = v66;
    swift_willThrow();
    v35 = v87;
    v38 = v88;
  }

  (*(v84 + 8))(v38, v86);
  (v34)(v85, v83);
  result = sub_216697664(v35, &qword_27CAB6D58, &unk_217014E30);
  if (v33)
  {
    v72 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
    return sub_216788110(v35 + *(v72 + 20));
  }

  return result;
}

uint64_t sub_216A28CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  if ((MEMORY[0x21CEA0160](a1 + v15[5], a2 + v15[5]) & 1) == 0 || (static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v20 = *v18 == *v19 && v16 == v17;
    if (!v20 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_32:
    v28 = 0;
    return v28 & 1;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v25 = *v23 == *v24 && v21 == v22;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (*(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]))
  {
    goto LABEL_32;
  }

  v26 = v15[11];
  v27 = *(v11 + 48);
  sub_216681B04(a1 + v26, v14, &qword_27CAB6D60, &qword_217014E40);
  sub_216681B04(a2 + v26, &v14[v27], &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_5_3(v14);
  if (v20)
  {
    OUTLINED_FUNCTION_5_3(&v14[v27]);
    if (v20)
    {
      sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_31;
  }

  sub_216681B04(v14, v10, &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_5_3(&v14[v27]);
  if (v29)
  {
    sub_216A2910C(v10);
LABEL_31:
    sub_216697664(v14, &qword_27CABE598, qword_217037510);
    goto LABEL_32;
  }

  sub_216A29168(&v14[v27], v7, type metadata accessor for Artwork);
  v31 = sub_21700C4A4();
  if (v31)
  {
    v28 = sub_21688ADC8(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  }

  else
  {
    v28 = 0;
  }

  sub_216A2910C(v7);
  sub_216A2910C(v10);
  sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
  return v28 & 1;
}

uint64_t sub_216A290C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A2910C(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A29168(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A291F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_216A29470(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_216A294DC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

void sub_216A29500(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = v76 - v7;
  started = type metadata accessor for StartSocialOnboardingAction(0);
  MEMORY[0x28223BE20](started);
  v83 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = v76 - v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_216A2E2D4;
  *(v12 + 24) = v11;
  v86 = v12;
  _Block_copy(a4);
  v13 = qword_280E416F8;
  v85 = v11;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E73D20);
  v15 = a1;
  v16 = sub_217007C84();
  v17 = sub_21700EDA4();

  v18 = &unk_278226000;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v76[0] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, &aBlock);
    *(v20 + 12) = 2082;
    v22 = [v15 identifier];
    v23 = sub_21700E514();
    v25 = v24;

    v26 = sub_2166A85FC(v23, v25, &aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_216679000, v16, v17, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v21;
    v18 = &unk_278226000;
    MEMORY[0x21CEA1440](v27, -1, -1);
    v28 = v20;
    a4 = v76[0];
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  v29 = [v15 v18[366]];
  v30 = sub_21700E514();

  if (sub_216A2B334(v30) == 5)
  {
    aBlock = 0;
    v88 = 0xE000000000000000;
    sub_21700F3B4();

    aBlock = 0xD00000000000001CLL;
    v88 = 0x80000002170866A0;
    v42 = [v15 v18[366]];
    v43 = sub_21700E514();
    v45 = v44;

    MEMORY[0x21CE9F490](v43, v45);

    v46 = aBlock;
    v47 = v88;
    sub_216A2BD14();
    v48 = swift_allocError();
    *v49 = v46;
    v49[1] = v47;
    aBlock = v48;
    LOBYTE(v91) = 1;
    _Block_copy(a4);
    sub_216A2B864(&aBlock, a4);
    sub_216697664(&aBlock, &unk_27CAC9DD0, &unk_2170375A0);

LABEL_26:

LABEL_27:
    _Block_release(a4);
  }

  else
  {
    type metadata accessor for ObjectGraph(0);

    v31 = sub_21700D4F4();
    v32 = v31;
    switch(v33)
    {
      case 1:
        v73 = sub_217007C84();
        v74 = sub_21700EDA4();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_216679000, v73, v74, "💬 Attempting to enable music recognition", v75, 2u);
          MEMORY[0x21CEA1440](v75, -1, -1);
        }

        if (qword_280E34968 != -1)
        {
          swift_once();
        }

        sub_216ED3D6C(sub_216A2E2AC, v86);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v31);
        v65 = swift_allocObject();
        v66 = v86;
        *(v65 + 16) = sub_216A2E2AC;
        *(v65 + 24) = v66;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_216A2E2AC;
        *(v67 + 24) = v66;
        v68 = sub_2166AF2EC();
        swift_retain_n();
        v69 = sub_21700EE84();
        v90 = v68;
        v91 = MEMORY[0x277D225C0];
        aBlock = v69;
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v70 = sub_217007C84();
        v71 = sub_21700EDA4();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_216679000, v70, v71, "💬 Presenting Family Circle", v72, 2u);
          MEMORY[0x21CEA1440](v72, -1, -1);
        }

        sub_216964DE0(v15, sub_216A2E2AC, v86);
LABEL_25:

        goto LABEL_26;
      case 4:
        v50 = sub_217007C84();
        v51 = sub_21700EDA4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_216679000, v50, v51, "💬 Social onboarding", v52, 2u);
          MEMORY[0x21CEA1440](v52, -1, -1);
        }

        v53 = v82;
        sub_21700E094();
        v54 = v83;
        sub_21700D234();
        v55 = started;
        *(v54 + *(started + 20)) = 1;
        v90 = v55;
        v91 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction, &protocol conformance descriptor for StartSocialOnboardingAction);
        v56 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
        sub_216A2E140(v54, v56, type metadata accessor for StartSocialOnboardingAction);
        v58 = v78;
        v57 = v79;
        v59 = v80;
        (*(v79 + 104))(v78, *MEMORY[0x277D21E18], v80);
        sub_21700D5E4();
        started = v32;
        (*(v57 + 8))(v58, v59);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v60 = swift_allocObject();
        v61 = v86;
        *(v60 + 16) = sub_216A2E2AC;
        *(v60 + 24) = v61;
        v62 = swift_allocObject();
        *(v62 + 16) = sub_216A2E2AC;
        *(v62 + 24) = v61;
        v63 = sub_2166AF2EC();
        swift_retain_n();
        v64 = sub_21700EE84();
        v90 = v63;
        v91 = MEMORY[0x277D225C0];
        aBlock = v64;
        sub_21700E1C4();

        sub_216A2E1A0(v54, type metadata accessor for StartSocialOnboardingAction);
        (*(v81 + 8))(v84, v53);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

        goto LABEL_26;
      default:
        v34 = sub_217007C84();
        v35 = sub_21700EDA4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_216679000, v34, v35, "💬 Enabling automatic downloads", v36, 2u);
          MEMORY[0x21CEA1440](v36, -1, -1);
        }

        v37 = [objc_opt_self() sharedCloudController];
        if (v37)
        {
          v38 = v37;
          v39 = swift_allocObject();
          v40 = v86;
          *(v39 + 16) = sub_216A2E2AC;
          *(v39 + 24) = v40;
          v91 = sub_216A2E2EC;
          v92 = v39;
          aBlock = MEMORY[0x277D85DD0];
          v88 = 1107296256;
          v89 = sub_216A2BF54;
          v90 = &block_descriptor_89;
          v41 = _Block_copy(&aBlock);

          [v38 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v41);

          goto LABEL_27;
        }

        _Block_release(a4);
        __break(1u);
        break;
    }
  }
}

void sub_216A2A094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v79 = v7;
  v80 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v77 = OUTLINED_FUNCTION_31_30(v9, v73);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v83 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v81 = v14;
  v82 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34_21(v16, v74);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  OUTLINED_FUNCTION_65_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216A2E1F8;
  *(v18 + 24) = v17;
  v85 = v18;
  _Block_copy(a4);
  v19 = qword_280E416F8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v20 = sub_217007CA4();
  __swift_project_value_buffer(v20, qword_280E73D20);
  v21 = a1;
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();

  v24 = &unk_278226000;
  if (os_log_type_enabled(v22, v23))
  {
    v75 = a4;
    v25 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, aBlock);
    *(v25 + 12) = 2082;
    v26 = [v21 identifier];
    v27 = sub_21700E514();
    v29 = v28;

    v30 = sub_2166A85FC(v27, v29, aBlock);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_216679000, v22, v23, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v24 = &unk_278226000;
    OUTLINED_FUNCTION_6();
    a4 = v75;
    OUTLINED_FUNCTION_6();
  }

  v31 = [v21 v24[366]];
  sub_21700E514();

  v32 = OUTLINED_FUNCTION_82();
  if (sub_216A2B334(v32) == 5)
  {
    OUTLINED_FUNCTION_37_25();

    OUTLINED_FUNCTION_27_26("Unexpected delegate action: ");
    v45 = [v21 v24[366]];
    sub_21700E514();

    v46 = OUTLINED_FUNCTION_82();
    MEMORY[0x21CE9F490](v46);

    sub_216A2BD14();
    v47 = swift_allocError();
    OUTLINED_FUNCTION_32_18(v47, v48);
    _Block_copy(a4);
    sub_216DF352C(aBlock, a4);
    sub_216697664(aBlock, &unk_27CAC9DD0, &unk_2170375A0);

LABEL_26:

LABEL_27:
    _Block_release(a4);
  }

  else
  {
    type metadata accessor for ObjectGraph(0);

    v33 = sub_21700D4F4();
    switch(v34)
    {
      case 1:
        v68 = sub_217007C84();
        v69 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v69))
        {
          v70 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v70);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v71, v72, "💬 Attempting to enable music recognition");
          OUTLINED_FUNCTION_26_4();
        }

        if (qword_280E34968 != -1)
        {
          OUTLINED_FUNCTION_18_31(&qword_280E34968);
        }

        sub_216ED3D6C(sub_216A2E200, v85);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v33);
        OUTLINED_FUNCTION_65_0();
        swift_allocObject();
        OUTLINED_FUNCTION_15_39();
        *(v59 + 16) = v60;
        *(v59 + 24) = v85;
        OUTLINED_FUNCTION_65_0();
        v61 = swift_allocObject();
        *(v61 + 16) = a3;
        *(v61 + 24) = v85;
        sub_2166AF2EC();
        swift_retain_n();
        v62 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v62, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v63 = sub_217007C84();
        v64 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v64))
        {
          v65 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v65);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v66, v67, "💬 Presenting Family Circle");
          OUTLINED_FUNCTION_26_4();
        }

        sub_216964DE0(v21, sub_216A2E200, v85);
LABEL_25:

        goto LABEL_26;
      case 4:
        v49 = sub_217007C84();
        v50 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v50))
        {
          v51 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v51);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v52, v53, "💬 Social onboarding");
          OUTLINED_FUNCTION_26_4();
        }

        sub_21700E094();
        sub_21700D234();
        *(v83 + *(v77 + 20)) = 1;
        v87 = v77;
        v88 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction, &protocol conformance descriptor for StartSocialOnboardingAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        sub_216A2E140(v83, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
        (*(v79 + 104))(v78, *MEMORY[0x277D21E18], v80);
        sub_21700D5E4();
        (*(v79 + 8))(v78, v80);
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        OUTLINED_FUNCTION_65_0();
        swift_allocObject();
        OUTLINED_FUNCTION_15_39();
        *(v55 + 16) = v56;
        *(v55 + 24) = v85;
        OUTLINED_FUNCTION_65_0();
        v57 = swift_allocObject();
        *(v57 + 16) = v84;
        *(v57 + 24) = v85;
        sub_2166AF2EC();
        swift_retain_n();
        v58 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v58, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        sub_216A2E1A0(v83, type metadata accessor for StartSocialOnboardingAction);
        (*(v81 + 8))(v84, v82);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

        goto LABEL_26;
      default:
        v35 = sub_217007C84();
        v36 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v36))
        {
          v37 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v37);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v38, v39, "💬 Enabling automatic downloads");
          OUTLINED_FUNCTION_26_4();
        }

        v40 = [objc_opt_self() sharedCloudController];
        if (v40)
        {
          v41 = v40;
          OUTLINED_FUNCTION_65_0();
          v42 = swift_allocObject();
          *(v42 + 16) = sub_216A2E200;
          *(v42 + 24) = v85;
          v88 = sub_216A2E2EC;
          v89 = v42;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_11_44(COERCE_DOUBLE(1107296256));
          aBlock[2] = v43;
          v87 = &block_descriptor_55;
          v44 = _Block_copy(aBlock);

          [v41 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v44);

          goto LABEL_27;
        }

        _Block_release(a4);
        __break(1u);
        break;
    }
  }
}

id sub_216A2AA3C(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v73 = v7;
  v74 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_31_30(v9, v70);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v77 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v75 = v15;
  v76 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34_21(v17, v71);
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v18 = sub_217007CA4();
  v19 = __swift_project_value_buffer(v18, qword_280E73D20);
  v20 = a1;
  v79 = v19;
  v21 = sub_217007C84();
  v22 = sub_21700EDA4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, aBlock);
    *(v23 + 12) = 2082;
    v24 = [v20 identifier];
    v25 = v10;
    v26 = sub_21700E514();
    v28 = v27;

    v29 = v26;
    v10 = v25;
    v30 = sub_2166A85FC(v29, v28, aBlock);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_216679000, v21, v22, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v31 = [v20 identifier];
  v32 = sub_21700E514();

  v33 = sub_216A2B334(v32);
  if (v33 == 5)
  {
    OUTLINED_FUNCTION_37_25();

    OUTLINED_FUNCTION_27_26("Unexpected delegate action: ");
    v46 = [v20 &off_278226678];
    sub_21700E514();

    v47 = OUTLINED_FUNCTION_82();
    MEMORY[0x21CE9F490](v47);

    sub_216A2BD14();
    v48 = swift_allocError();
    OUTLINED_FUNCTION_32_18(v48, v49);
    a3(aBlock);
    sub_216697664(aBlock, &unk_27CAC9DD0, &unk_2170375A0);
    return (v33 != 5);
  }

  else
  {
    type metadata accessor for ObjectGraph(0);

    v34 = sub_21700D4F4();
    switch(v35)
    {
      case 1:
        v65 = sub_217007C84();
        v66 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v66))
        {
          v67 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v67);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v68, v69, "💬 Attempting to enable music recognition");
          OUTLINED_FUNCTION_26_4();
        }

        if (qword_280E34968 != -1)
        {
          OUTLINED_FUNCTION_18_31(&qword_280E34968);
        }

        sub_216ED3D6C(a3, a4);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v34);
        OUTLINED_FUNCTION_65_0();
        v59 = swift_allocObject();
        *(v59 + 16) = a3;
        *(v59 + 24) = a4;
        OUTLINED_FUNCTION_65_0();
        v60 = swift_allocObject();
        *(v60 + 16) = a3;
        *(v60 + 24) = a4;
        sub_2166AF2EC();
        swift_retain_n();
        v61 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v61, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v62 = sub_217007C84();
        v63 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v63))
        {
          v64 = OUTLINED_FUNCTION_43();
          *v64 = 0;
          _os_log_impl(&dword_216679000, v62, v79, "💬 Presenting Family Circle", v64, 2u);
          OUTLINED_FUNCTION_6();
        }

        sub_216964DE0(v20, a3, a4);
LABEL_25:

        return (v33 != 5);
      case 4:
        v50 = sub_217007C84();
        v51 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v51))
        {
          v52 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v52);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v53, v54, "💬 Social onboarding");
          OUTLINED_FUNCTION_26_4();
        }

        sub_21700E094();
        sub_21700D234();
        *(v77 + *(v10 + 20)) = 1;
        v82 = v10;
        v83 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction, &protocol conformance descriptor for StartSocialOnboardingAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        sub_216A2E140(v77, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
        (*(v73 + 104))(v72, *MEMORY[0x277D21E18], v74);
        sub_21700D5E4();
        (*(v73 + 8))(v72, v74);
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        OUTLINED_FUNCTION_65_0();
        v56 = swift_allocObject();
        *(v56 + 16) = a3;
        *(v56 + 24) = a4;
        OUTLINED_FUNCTION_65_0();
        v57 = swift_allocObject();
        *(v57 + 16) = a3;
        *(v57 + 24) = a4;
        sub_2166AF2EC();
        swift_retain_n();
        v58 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v58, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        sub_216A2E1A0(v77, type metadata accessor for StartSocialOnboardingAction);
        (*(v75 + 8))(v78, v76);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        return (v33 != 5);
      default:
        v36 = sub_217007C84();
        v37 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v37))
        {
          v38 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v38);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v39, v40, "💬 Enabling automatic downloads");
          OUTLINED_FUNCTION_26_4();
        }

        result = [objc_opt_self() sharedCloudController];
        if (result)
        {
          v42 = result;
          OUTLINED_FUNCTION_65_0();
          v43 = swift_allocObject();
          *(v43 + 16) = a3;
          *(v43 + 24) = a4;
          v83 = sub_216A2DFEC;
          v84 = v43;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_11_44(COERCE_DOUBLE(1107296256));
          aBlock[2] = v44;
          v82 = &block_descriptor_15;
          v45 = _Block_copy(aBlock);

          [v42 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v45);

          return (v33 != 5);
        }

        __break(1u);
        break;
    }
  }

  return result;
}

unint64_t sub_216A2B334(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_216A2B380(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  _Block_copy(a4);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v12 = a2;
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39 = v19;
    *v16 = 136446466;
    *(v16 + 4) = sub_2166A85FC(0xD00000000000004ELL, 0x8000000217086A40, &v39);
    *(v16 + 12) = 2114;
    *(v16 + 14) = v12;
    *v18 = v12;
    v20 = v12;
    _os_log_impl(&dword_216679000, v13, v14, "💬 %{public}s: %{public}@", v16, 0x16u);
    sub_216697664(v18, &qword_27CABF880, &unk_21701D6E0);
    v21 = v18;
    a1 = v37;
    MEMORY[0x21CEA1440](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x21CEA1440](v19, -1, -1);
    v22 = v16;
    a3 = v38;
    MEMORY[0x21CEA1440](v22, -1, -1);
  }

  v23 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
  sub_21700EA34();
  v24 = a1;
  v25 = sub_21700EA24();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  sub_21677BBA0();

  v28 = *(a3 + 208);
  _Block_copy(a4);
  sub_216A29500(v12, v28, a3, a4);
  v30 = v29;
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136446466;
    *(v33 + 4) = sub_2166A85FC(0xD00000000000004ELL, 0x8000000217086A40, &v39);
    *(v33 + 12) = 1026;
    *(v33 + 14) = v30 & 1;
    _os_log_impl(&dword_216679000, v31, v32, "💬 %{public}s Successful delegate action? %{BOOL,public}d", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v33, -1, -1);
  }

  _Block_release(a4);
  _Block_release(a4);
  return v30 & 1;
}

uint64_t sub_216A2B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A2B7D4, v6, v5);
}

uint64_t sub_216A2B7D4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);

  v2 = [v1 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  OUTLINED_FUNCTION_3();

  return v4();
}

void sub_216A2B864(uint64_t a1, void (**a2)(void, void, void))
{
  sub_216681B04(a1, v26, &unk_27CAC9DD0, &unk_2170375A0);
  if (v27)
  {
    v3 = *&v26[0];
    memset(v25, 0, sizeof(v25));
    sub_216681B04(v25, v23, &unk_27CABF7A0, &unk_217014D20);
    v4 = v24;
    if (v24)
    {
      v5 = __swift_project_boxed_opaque_existential_1(v23, v24);
      v6 = *(v4 - 8);
      v7 = MEMORY[0x28223BE20](v5);
      v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = v3;
      v11 = sub_21700F7B4();
      (*(v6 + 8))(v9, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
      v19 = v3;
      v11 = 0;
    }

    v20 = sub_217005D24();
    (a2)[2](a2, v11, v20);
    swift_unknownObjectRelease();

    sub_216697664(v25, &unk_27CABF7A0, &unk_217014D20);
  }

  else
  {
    sub_2166EF9C4(v26, v25);
    sub_2166A6DF8(v25, v23);
    sub_216681B04(v23, v21, &unk_27CABF7A0, &unk_217014D20);
    v12 = v22;
    if (v22)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x28223BE20](v13);
      v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_21700F7B4();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      v18 = 0;
    }

    a2[2](a2, v18, 0);
    swift_unknownObjectRelease();
    sub_216697664(v23, &unk_27CABF7A0, &unk_217014D20);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  _Block_release(a2);
}

uint64_t sub_216A2BB94(uint64_t a1, void (*a2)(_OWORD *, id))
{
  sub_216681B04(a1, v8, &unk_27CAC9DD0, &unk_2170375A0);
  if (v9)
  {
    v3 = v8[0];
    memset(v7, 0, sizeof(v7));
    v4 = v8[0];
    a2(v7, v3);

    return sub_216697664(v7, &unk_27CABF7A0, &unk_217014D20);
  }

  else
  {
    sub_2166EF9C4(v8, v7);
    sub_2166A6DF8(v7, v6);
    a2(v6, 0);
    sub_216697664(v6, &unk_27CABF7A0, &unk_217014D20);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }
}

unint64_t sub_216A2BD14()
{
  result = qword_27CAC0110;
  if (!qword_27CAC0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0110);
  }

  return result;
}

void sub_216A2BD68(uint64_t a1, void *a2, uint64_t a3)
{
  sub_216681B04(a1, v12, &unk_27CABF7A0, &unk_217014D20);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  (*(v7 + 16))(v9 - v8);
  v11 = sub_21700F7B4();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_217005D24();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_216A2BED4(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v5[0] = a1;
    v6 = 1;
    v3 = a1;
  }

  else
  {
    v5[3] = MEMORY[0x277D839B0];
    LOBYTE(v5[0]) = 1;
    v6 = 0;
  }

  a2(v5);
  return sub_216697664(v5, &unk_27CAC9DD0, &unk_2170375A0);
}

void sub_216A2BF54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_216A2BFC0(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = MEMORY[0x277D839B0];
  v3[0] = 1;
  v5 = 0;
  a2(v3);
  return sub_216697664(v3, &unk_27CAC9DD0, &unk_2170375A0);
}

uint64_t sub_216A2C024(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v33 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v32 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  updated = type metadata accessor for UpdateNotificationSettingsAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_216A2C4A4();
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  v28[1] = a1;
  sub_21700E094();
  v29 = v34[0];
  v19 = *(v34[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded);
  sub_21700D234();
  *(v18 + *(updated + 20)) = 1;
  *(v18 + *(updated + 24)) = v19;
  sub_21700E094();
  v20 = v33;
  sub_21700E094();
  v35 = updated;
  v36 = sub_216A2E0F8(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction, &unk_21706ED74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_216A2E140(v18, boxed_opaque_existential_1, type metadata accessor for UpdateNotificationSettingsAction);
  v22 = v30;
  (*(v30 + 16))(v6, v20, v7);
  v23 = v31;
  (*(v3 + 104))(v6, *MEMORY[0x277D21E10], v31);
  sub_21700D5E4();
  (*(v3 + 8))(v6, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v35 = sub_21700D7C4();
  v36 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_21700D7B4();
  v24 = sub_21700E1B4();

  (*(v22 + 8))(v33, v7);
  v25 = OUTLINED_FUNCTION_82();
  v26(v25);
  sub_216A2E1A0(v18, type metadata accessor for UpdateNotificationSettingsAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v24;
}

uint64_t sub_216A2C428(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  v6 = 1;
  v3 = a1;
  a2(v5);
  return sub_216697664(v5, &unk_27CAC9DD0, &unk_2170375A0);
}

uint64_t sub_216A2C4A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = [objc_opt_self() currentNotificationCenter];
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v0;

  sub_21677E228(0, 0, v4, &unk_2170375B8, v7);
}

uint64_t sub_216A2C5A4()
{
  OUTLINED_FUNCTION_33();
  v1[30] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v1[31] = v2;
  OUTLINED_FUNCTION_2(v2);
  v1[32] = v3;
  v1[33] = OUTLINED_FUNCTION_80();
  v4 = sub_21700D2A4();
  v1[34] = v4;
  OUTLINED_FUNCTION_2(v4);
  v1[35] = v5;
  v1[36] = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v1[37] = v6;
  OUTLINED_FUNCTION_2(v6);
  v1[38] = v7;
  v1[39] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for PresentAlertAction(0);
  v1[40] = v8;
  OUTLINED_FUNCTION_36(v8);
  v1[41] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  OUTLINED_FUNCTION_36(v9);
  v1[42] = OUTLINED_FUNCTION_80();
  v10 = sub_217006224();
  v1[43] = v10;
  OUTLINED_FUNCTION_2(v10);
  v1[44] = v11;
  v1[45] = OUTLINED_FUNCTION_80();
  v12 = sub_21700D284();
  OUTLINED_FUNCTION_36(v12);
  v1[46] = OUTLINED_FUNCTION_80();
  v13 = sub_217006274();
  OUTLINED_FUNCTION_36(v13);
  v1[47] = OUTLINED_FUNCTION_80();
  v14 = sub_21700E4C4();
  OUTLINED_FUNCTION_36(v14);
  v1[48] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v1[49] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v1[50] = v16;
  v1[51] = v15;

  return MEMORY[0x2822009F8](sub_216A2C830, v16, v15);
}

uint64_t sub_216A2C830()
{
  v56 = v1;
  type metadata accessor for ObjectGraph(0);

  v52 = sub_21700D4F4();
  *(v1 + 416) = v52;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_96();
    v5 = OUTLINED_FUNCTION_44_0();
    v55 = v5;
    *v0 = 136446210;
    *(v0 + 4) = sub_2166A85FC(0xD000000000000023, 0x8000000217086A10, &v55);
    OUTLINED_FUNCTION_36_21(&dword_216679000, v6, v7, "💬 %{public}s Display reprompt");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }

  v8 = *(v1 + 360);
  v9 = *(v1 + 344);
  v54 = *(v1 + 352);
  v10 = *(v1 + 336);
  v47 = *(v1 + 328);
  v48 = *(v1 + 320);
  v49 = *(v1 + 256);
  v50 = *(v1 + 248);
  v51 = *(v1 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
  v11 = _s6ActionVMa(0);
  OUTLINED_FUNCTION_2(v11);
  v45 = *(v12 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_217013D90;
  v53 = (v46 + v14);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v15 = sub_21700E584();
  v42 = v16;
  sub_21700D234();
  v17 = sub_21700D2C4();
  v18 = MEMORY[0x277D21CB8];
  *(v1 + 72) = v17;
  *(v1 + 80) = v18;
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_21700D2B4();
  sub_217006214();
  v19 = sub_2170061F4();
  v21 = v20;
  v44 = *(v54 + 8);
  v44(v8, v9);
  *(v1 + 16) = v19;
  *(v1 + 24) = v21;
  *(v1 + 32) = v15;
  *(v1 + 40) = v42;
  v43 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v43);
  sub_216933210(v10, v53);
  sub_216697664(v10, &qword_27CAB70A8, &qword_21701B9E0);
  sub_2167ADC98(v1 + 16);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v22 = sub_21700E584();
  v24 = v23;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  sub_217006214();
  v25 = sub_2170061F4();
  v27 = v26;
  v44(v8, v9);
  *(v1 + 88) = v25;
  *(v1 + 96) = v27;
  *(v1 + 104) = v22;
  *(v1 + 112) = v24;
  sub_217007EF4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v43);
  sub_216933210(v10, &v53[v45]);
  sub_216697664(v10, &qword_27CAB70A8, &qword_21701B9E0);
  sub_2167ADC98(v1 + 88);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v28 = sub_21700E584();
  v30 = v29;
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v31 = sub_21700E584();
  sub_216933384(v28, v30, v46, v31, v32, (v1 + 160));
  sub_21700D234();
  v33 = v47 + *(v48 + 20);
  v34 = *(v1 + 160);
  v35 = *(v1 + 176);
  *(v33 + 32) = *(v1 + 192);
  *v33 = v34;
  *(v33 + 16) = v35;
  sub_21700E094();
  *(v1 + 224) = v48;
  *(v1 + 232) = sub_216A2E0F8(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 200));
  sub_216A2E140(v47, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
  (*(v49 + 104))(v51, *MEMORY[0x277D21E18], v50);
  v37 = swift_task_alloc();
  *(v1 + 424) = v37;
  *v37 = v1;
  v37[1] = sub_216A2CE48;
  v38 = *(v1 + 288);
  v39 = *(v1 + 296);
  v40 = *(v1 + 264);

  return MEMORY[0x28217F468](v38, v1 + 200, v40, v52, v39);
}

uint64_t sub_216A2CE48()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[31];
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v3[54] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v9 = v3[50];
    v10 = v3[51];
    v11 = sub_216A2D0E8;
  }

  else
  {
    (*(v3[35] + 8))(v3[36], v3[34]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 25);
    v9 = v3[50];
    v10 = v3[51];
    v11 = sub_216A2CFD4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216A2CFD4()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];

  (*(v2 + 8))(v3, v4);
  OUTLINED_FUNCTION_14_37();
  sub_216A2E1A0(v1, v5);

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216A2D0E8()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];

  (*(v2 + 8))(v3, v4);
  OUTLINED_FUNCTION_14_37();
  sub_216A2E1A0(v1, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);

  OUTLINED_FUNCTION_3();

  return v6();
}

void sub_216A2D208()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_2169C5A10();

    if (v2)
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_280E73D20);
      v4 = sub_217007C84();
      v5 = sub_21700EDA4();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "💬 Navigating to Settings > Notifications > Music";
    }

    else
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v8 = sub_217007CA4();
      __swift_project_value_buffer(v8, qword_280E73D20);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "💬 Failed to navigate to Settings > Notifications > Music";
    }

    _os_log_impl(&dword_216679000, v4, v5, v7, v6, 2u);
    MEMORY[0x21CEA1440](v6, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t sub_216A2D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  return MEMORY[0x2822009F8](sub_216A2D3C8, 0, 0);
}

uint64_t sub_216A2D3C8()
{
  v1 = v0[37];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_216A2D4E4;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0120, &qword_2170375C0);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_216A2DEE4;
  v0[21] = &block_descriptor_19;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_216A2D4E4()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216A2D5B8, 0, 0);
}

void sub_216A2D5B8()
{
  v24 = v0;
  v1 = v0[36];
  v0[39] = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = sub_217007CA4();
  v0[40] = __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_2166A85FC(0xD00000000000002DLL, 0x80000002170867E0, &v23);
    *(v6 + 12) = 2114;
    *(v6 + 14) = v3;
    *v7 = v3;
    *(v6 + 22) = 2082;
    v8 = objc_opt_self();
    v9 = v3;
    v0[34] = sub_2166E2BA8([v8 mainBundle]);
    v0[35] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    v11 = sub_21700E594();
    v13 = sub_2166A85FC(v11, v12, &v23);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_216679000, v4, v5, "💬 %{public}s Current notification setting: %{public}@ for %{public}s", v6, 0x20u);
    sub_216697664(v7, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }

  v14 = [v3 authorizationStatus];
  if ((v14 - 2) < 3)
  {

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_26_30();

    __asm { BRAA            X1, X16 }
  }

  if (v14 == 1)
  {
    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    v21[1] = sub_216A2DC0C;
    OUTLINED_FUNCTION_26_30();

    sub_216A2C5A4();
  }

  else if (v14)
  {
    sub_21700F584();
    OUTLINED_FUNCTION_26_30();
  }

  else
  {
    v17 = v0[37];
    v0[10] = v0;
    v0[15] = v0 + 44;
    v0[11] = sub_216A2D9CC;
    v18 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0128, &qword_2170375D0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_216A2DF78;
    v0[29] = &block_descriptor_24;
    v0[30] = v18;
    [v17 requestAuthorizationWithOptions:7 completionHandler:v0 + 26];
    OUTLINED_FUNCTION_26_30();

    MEMORY[0x282200938](v19);
  }
}

uint64_t sub_216A2D9CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  v2 = *(v0 + 112);
  *(v1 + 328) = v2;
  if (v2)
  {
    v3 = sub_216A2DD68;
  }

  else
  {
    v3 = sub_216A2DAD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_216A2DAD4(uint64_t a1)
{
  v2 = *(v1 + 352);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 312);
  if (v2 == 1)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_44_0();
    *v2 = 136446210;
    *(v2 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v7);
    v10 = "💬 %{public}s Authorized notifications";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_44_0();
    *v2 = 136446210;
    *(v2 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v7);
    v10 = "💬 %{public}s Declined notifications";
  }

  OUTLINED_FUNCTION_36_21(&dword_216679000, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_26_4();
LABEL_7:

  OUTLINED_FUNCTION_23();

  return v11();
}

uint64_t sub_216A2DC0C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 344) = v0;

  if (v0)
  {
    v5 = sub_216A2DE88;
  }

  else
  {
    v5 = sub_216A2DD10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216A2DD10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v1();
}

uint64_t sub_216A2DD68(uint64_t a1)
{
  swift_willThrow();
  v2 = sub_217007C84();
  v3 = sub_21700ED84();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 328);
  v6 = *(v1 + 312);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_96();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    *(v7 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v8);
    _os_log_impl(&dword_216679000, v2, v3, "💬 %{public}s could not set Settings > Notifications > Music", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_23();

  return v9();
}

uint64_t sub_216A2DE88()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A2DEE4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_2166A7FCC(v3, v4, MEMORY[0x277D85A80]);
}

uint64_t sub_216A2DF78(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_216A29470(*v5, a3);
  }

  else
  {
    return sub_216A2DF50(*v5, a2, MEMORY[0x277D85A88]);
  }
}

uint64_t sub_216A2DFF4()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return sub_216A2D3A8(v5, v6, v7, v3, v2);
}

uint64_t sub_216A2E0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A2E140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A2E1A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A2E208()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A2B73C(v4, v5, v6, v2);
}

uint64_t View.musicNavigationDestination<A, B>(using:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - v9;
  (*(v7 + 16))(&v15 - v9, *(v11 + 40) + *(**(v11 + 40) + 200), v6, v8);
  v12 = *(v5 + 104);

  sub_216BD3D88(v13, v10, a2, v6, a3, v12);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_216A2E494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = a3;
  v56 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_98();
  v49 = v5;
  v50 = *(v5 + 16);
  v51 = v5 + 16;
  v50(v8, v52, v56);
  v46 = v8;
  sub_21700D734();
  v53 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = *(v11 + 8);
  v54 = v11 + 8;
  v55 = v9;
  v24 = v23;
  v23(v16, v9);
  if (v22)
  {
    v25 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
    v57 = v20;
    v58 = v22;
    v26 = v59;
    sub_21700F364();
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v55;
    v24(v19, v55);
    v31 = (v26 + *(v25 + 24));
    *v31 = v27;
    v31[1] = v29;
    sub_21700CE04();
    v47 = v25;
    sub_21700CD34();
    v24(v19, v30);
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v32 = v46;
    v48 = v24;
    v33 = v52;
    v50(v46, v52, v56);
    v44 = sub_216A2EC2C(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    v34 = v45;
    sub_21700CE04();
    LOBYTE(v29) = sub_21700CD44();
    v48(v34, v55);
    *(v59 + *(v47 + 36)) = (v29 == 2) | v29 & 1;
    sub_21700CE04();
    v35 = v56;
    v36 = v50;
    v50(v32, v33, v56);
    sub_21700D734();
    type metadata accessor for VideoArtwork(0);
    v37 = v53;
    sub_21700CE04();
    v36(v32, v33, v35);
    sub_216A2EC2C(qword_280E44448, type metadata accessor for VideoArtwork, &unk_217061470);
    OUTLINED_FUNCTION_2_79();
    sub_21700D734();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_1_98();
    v50(v32, v33, v35);
    sub_216A2EC2C(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_2_79();
    sub_21700D734();
    (*(v49 + 8))(v33, v35);
    return (v48)(v37, v55);
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_216A2EC2C(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v40 = v24;
    v42 = v41;
    v43 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v39 - 8) + 104))(v42, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v49 + 8))(v52, v56);
    v40(v53, v55);
    return sub_2167B0250(v59);
  }
}

uint64_t sub_216A2EC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A2EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PaginationPageResult(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A2ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_216A2ED70(a1, a2, a3, v7);
  return v6;
}

char *sub_216A2ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  type metadata accessor for PageChangeInstructionPerformer(0, v9, v10, a4);
  v11 = *(a2 + *(*a2 + 168));

  v12 = sub_216A4116C();

  v13 = sub_216B37F10(v11, v12, 1);
  *(v5 + 2) = a3;
  *(v5 + 3) = v13;
  v14 = *(*v5 + 112);
  v16 = type metadata accessor for PaginationPageResult(0, v9, v10, v15);
  (*(*(v16 - 8) + 32))(&v5[v14], a1, v16);
  return v5;
}

uint64_t *sub_216A2EEBC()
{
  v1 = *v0;

  v2 = *(*v0 + 112);
  v4 = type metadata accessor for PaginationPageResult(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_216A2EF6C()
{
  sub_216A2EEBC();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A2EFFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A2F038(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AddRecentSearchMusicItemAction(uint64_t a1)
{
  result = qword_280E47F68;
  if (!qword_280E47F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A2F0E8(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A2F180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_216A2F1C0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t type metadata accessor for DefaultSectionHeaderView(uint64_t a1)
{
  result = qword_280E36B70;
  if (!qword_280E36B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A2F294(uint64_t a1)
{
  type metadata accessor for DefaultSectionHeader(319);
  if (v1 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_280E2B440, &qword_27CAB8600, &qword_217020AD0);
    if (v2 <= 0x3F)
    {
      sub_21692ED34();
      if (v3 <= 0x3F)
      {
        sub_216833F44(319);
        if (v4 <= 0x3F)
        {
          sub_2166B44E8(319, &qword_280E2B4A0, &qword_27CABBAA8, &unk_2170575E0);
          if (v5 <= 0x3F)
          {
            sub_2167D1C30(319);
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

uint64_t sub_216A2F3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0238, &qword_217037B40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0240, &qword_217037B48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0248, &qword_217037B50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0250, &qword_217037B58);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0258, &qword_217037B60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v37 - v21;
  if (sub_216A2F880())
  {
    v37 = v15;
    v38 = v16;
    v39 = a1;
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0260, &qword_217037B68);
    sub_216A2FC84(v1, &v6[*(v22 + 44)]);
    v23 = sub_217009C94();
    type metadata accessor for DefaultSectionHeaderView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    sub_217007F24();
    v24 = &v6[*(v3 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_217009CA4();
    if (*(v1 + *(type metadata accessor for DefaultSectionHeader(0) + 40)) != 1)
    {
      sub_21700F7D4();
    }

    sub_2170082C4();
    v30 = v38;
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    sub_2167C5834(v6, v9, &qword_27CAC0238, &qword_217037B40);
    OUTLINED_FUNCTION_1_99(&v9[*(v40 + 36)]);
    sub_217009CB4();
    sub_216A31BC8();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    sub_2167C5834(v9, v12, &qword_27CAC0240, &qword_217037B48);
    OUTLINED_FUNCTION_1_99(&v12[*(v41 + 36)]);
    sub_217009CD4();
    sub_216A31BC8();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    v31 = v37;
    sub_2167C5834(v12, v37, &qword_27CAC0248, &qword_217037B50);
    OUTLINED_FUNCTION_1_99(v31 + *(v43 + 36));
    KeyPath = swift_getKeyPath();
    sub_2167C5834(v31, v19, &qword_27CAC0250, &qword_217037B58);
    v33 = &v19[*(v30 + 36)];
    *v33 = KeyPath;
    v33[8] = 0;
    v34 = v42;
    sub_2167C5834(v19, v42, &qword_27CAC0258, &qword_217037B60);
    v35 = v34;
    v36 = v39;
    sub_2167C5834(v35, v39, &qword_27CAC0258, &qword_217037B60);
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v30);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v16);
  }
}

uint64_t sub_216A2F880()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0330, &qword_217037D20);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - v2;
  v4 = sub_2170090F4();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *(v0 + *(type metadata accessor for DefaultSectionHeader(0) + 44));
  if (v16 == 2)
  {
    return 1;
  }

  v18 = type metadata accessor for DefaultSectionHeaderView(0);
  sub_216683A80(v0 + *(v18 + 20), v9, &qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v9, v15, &qword_27CAB8600, &qword_217020AD0);
  }

  else
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v25 + 8))(v6, v4);
  }

  v20 = *(v1 + 48);
  sub_2167C5834(v15, v3, &qword_27CAB8600, &qword_217020AD0);
  v3[v20] = v16 & 1;
  v21 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  sub_216683A80(v3, v12, &qword_27CAB8600, &qword_217020AD0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 88))(v12, v21);
  if (v23 == *MEMORY[0x277CE0558])
  {
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_13:
    sub_216699778(v3, &qword_27CAB8600);
    return 1;
  }

  if (v23 != *MEMORY[0x277CE0560])
  {
    (*(v22 + 8))(v12, v21);
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_216699778(v3, &qword_27CAC0330);
  return 0;
}

uint64_t sub_216A2FC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0268, &qword_217037BA0);
  v85 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v84 = &v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0270, &qword_217037BA8);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v83 - v7;
  v98 = sub_217009314();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2170099D4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0278, &qword_217037BB0);
  MEMORY[0x28223BE20](v88);
  v11 = &v83 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0280, &qword_217037BB8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v83 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0288, &qword_217037BC0);
  MEMORY[0x28223BE20](v94);
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v105 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0290, &unk_217037BC8);
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0298, &qword_217037BD8);
  MEMORY[0x28223BE20](v27 - 8);
  v96 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  v32 = type metadata accessor for DefaultSectionHeader(0);
  sub_216683A80(a1 + *(v32 + 32), v23, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
  v104 = v31;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v23, &qword_27CAB6D60);
    v34 = v31;
    v35 = 1;
    v36 = v18;
  }

  else
  {
    v37 = v18;
    sub_216A329CC(v23, v26);
    sub_216A32A24(v26, v20);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
    v38 = type metadata accessor for ArtworkView(0);
    *&v20[*(v38 + 20)] = xmmword_217016ED0;
    *&v20[*(v38 + 24)] = vdupq_n_s64(0x4044000000000000uLL);
    v39 = *(a1 + *(v32 + 36));
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v40 = qword_280E73AA0;
    v41 = byte_280E73AA8;
    v42 = qword_280E73AB0;
    v43 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02F0, &qword_217037C48) + 36)];
    *v43 = v39;
    v83 = xmmword_217033420;
    *(v43 + 8) = xmmword_217033420;
    *(v43 + 12) = 256;
    KeyPath = swift_getKeyPath();
    v107 = v41;
    v106 = 0;
    v45 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02F8, &qword_217037C80) + 36)];
    *v45 = v40;
    v45[8] = v107;
    *(v45 + 9) = v108;
    *(v45 + 3) = *(&v108 + 3);
    *(v45 + 2) = v42;
    v45[24] = v39;
    *(v45 + 25) = v111;
    *(v45 + 7) = *(&v111 + 3);
    *(v45 + 2) = v83;
    *(v45 + 6) = KeyPath;
    v45[56] = v106;

    LOBYTE(v42) = sub_217009CD4();
    sub_217007F24();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_216A32A7C(v26, type metadata accessor for Artwork);
    v54 = &v20[*(v37 + 36)];
    *v54 = v42;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    v31 = v104;
    sub_2167C5834(v20, v104, &qword_27CAC0290, &unk_217037BC8);
    v34 = v31;
    v35 = 0;
    v36 = v37;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  *v11 = sub_2170093C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02A0, &qword_217037BE0);
  v56 = a1;
  sub_216A30AD8(a1, &v11[*(v55 + 44)]);
  v57 = swift_getKeyPath();
  v58 = v88;
  v59 = &v11[*(v88 + 36)];
  *v59 = v57;
  v59[8] = 0;
  v60 = v86;
  sub_2170099A4();
  v61 = sub_216A3282C();
  v62 = v87;
  sub_21700A784();
  (*(v89 + 8))(v60, v90);
  sub_216699778(v11, &qword_27CAC0278);
  v108 = sub_216BEDD74();
  v109 = v63;
  *&v111 = v58;
  *(&v111 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v64 = v93;
  v65 = v92;
  sub_21700A6B4();

  (*(v91 + 8))(v62, v65);
  sub_216683A80(v56 + 72, &v108, &qword_27CAB8100, qword_21701B4C0);
  v66 = v101;
  v67 = v97;
  v68 = v95;
  if (!v109)
  {
    sub_216699778(&v108, &qword_27CAB8100);
    v111 = 0u;
    v112 = 0u;
    v113 = 0;
    goto LABEL_10;
  }

  sub_216683A80(&v110, &v111, &qword_27CAB6DB0, &qword_217016C00);
  sub_2167ADC98(&v108);
  if (!*(&v112 + 1))
  {
LABEL_10:
    sub_216699778(&v111, &qword_27CAB6DB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0, &unk_217037BF0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_217013DA0;
    goto LABEL_11;
  }

  sub_216699778(&v111, &qword_27CAB6DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0, &unk_217037BF0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013D90;
  sub_2170092F4();
LABEL_11:
  sub_217009304();
  v108 = v69;
  sub_216A32C4C(&qword_280E2AC28, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B8, &qword_21706C760);
  sub_21669E098(&qword_280E29E60, &qword_27CAC02B8, &qword_21706C760, MEMORY[0x277D83970]);
  v70 = v98;
  sub_21700F214();
  sub_2170089A4();
  (*(v67 + 8))(v68, v70);
  sub_216699778(v64, &qword_27CAC0288);
  v71 = *(v56 + 152);
  if (v71 && *(v71 + 16))
  {
    v108 = *(v56 + 152);
    swift_getKeyPath();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C8, &unk_217040410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02D0, &qword_217037C40);
    sub_21669E098(&qword_27CAC02D8, &qword_27CAC02C8, &unk_217040410, MEMORY[0x277D83980]);
    sub_216A32910();
    v72 = v84;
    sub_21700B154();
    v73 = v100;
    (*(v85 + 32))(v66, v72, v100);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v100;
  }

  __swift_storeEnumTagSinglePayload(v66, v74, 1, v73);
  v75 = v96;
  sub_216683A80(v31, v96, &qword_27CAC0298, &qword_217037BD8);
  v76 = v105;
  v77 = v99;
  sub_216724D6C(v105, v99);
  v78 = v102;
  sub_216683A80(v66, v102, &qword_27CAC0270, &qword_217037BA8);
  v79 = v103;
  sub_216683A80(v75, v103, &qword_27CAC0298, &qword_217037BD8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C0, &qword_217037C00);
  sub_216724D6C(v77, v79 + v80[12]);
  v81 = v79 + v80[16];
  *v81 = 0;
  *(v81 + 8) = 1;
  sub_216683A80(v78, v79 + v80[20], &qword_27CAC0270, &qword_217037BA8);
  sub_216699778(v66, &qword_27CAC0270);
  sub_216699778(v76, &qword_27CAC0288);
  sub_216699778(v104, &qword_27CAC0298);
  sub_216699778(v78, &qword_27CAC0270);
  sub_216699778(v77, &qword_27CAC0288);
  return sub_216699778(v75, &qword_27CAC0298);
}

uint64_t sub_216A30AD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D70, &qword_217037C90);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v75 = &v70[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0308, &qword_217037C98);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v70[-v10];
  sub_216683A80(a1, v97, &qword_27CAB8100, qword_21701B4C0);
  v93 = v11;
  v86 = a1;
  if (v97[1])
  {
    sub_21700DF14();
    sub_2167ADC98(v97);
    if (qword_27CAB5BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21700A094();
    v14 = v13;
    v16 = v15;

    if (qword_27CAB5BE0 != -1)
    {
      swift_once();
    }

    v96[0] = qword_27CAC01C0;

    v17 = sub_21700A044();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_21678817C(v12, v14, v16 & 1);

    sub_21700B3B4();
    sub_2170083C4();
    v83 = v101;
    v88 = v103;
    v89 = v99;
    LOBYTE(v96[0]) = 1;
    v98[0] = v100;
    v95[0] = v102;
    v81 = 1;
    v82 = v104;
    v80 = v100;
    v79 = v102;
    LOBYTE(v105) = v21 & 1;
    v87 = v21 & 1;
    sub_216777114(v17, v19, v21 & 1);
    sub_21700DF14();
    v91 = v19;
    v92 = v17;
    sub_21678817C(v17, v19, v21 & 1);
    v90 = v23;

    a1 = v86;
    v11 = v93;
  }

  else
  {
    sub_216699778(v97, &qword_27CAB8100);
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v79 = 0;
    v87 = 0;
    v88 = 0;
  }

  sub_216683A80(a1 + 72, v97, &qword_27CAB8100, qword_21701B4C0);
  if (!v97[1])
  {
    sub_216699778(v97, &qword_27CAB8100);
    memset(v98, 0, 89);
    goto LABEL_21;
  }

  memcpy(v96, v97, 0x48uLL);
  v24 = *(a1 + *(type metadata accessor for DefaultSectionHeader(0) + 40));
  if ((v24 & 1) == 0)
  {
    v26 = qword_27CAB5BE8;
    sub_21700DF14();
    if (v26 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  v25 = qword_27CAB5BF8;
  sub_21700DF14();
  if (v25 != -1)
  {
LABEL_25:
    swift_once();
  }

LABEL_14:

  v27 = sub_21700A094();
  v29 = v28;
  v31 = v30;

  if (v24)
  {
    if (qword_27CAB5C00 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (qword_27CAB5BF0 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_18:
  v32 = sub_217009FA4();
  v34 = v33;
  v36 = v35;
  sub_21678817C(v27, v29, v31 & 1);

  if (qword_27CAB5C08 != -1)
  {
    swift_once();
  }

  v97[0] = qword_27CAC01E8;

  v37 = sub_21700A044();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_21678817C(v32, v34, v36 & 1);

  sub_216683A80(&v96[4], v97, &qword_27CAB6DB0, &qword_217016C00);
  v97[5] = v37;
  v97[6] = v39;
  LOBYTE(v97[7]) = v41 & 1;
  v97[8] = v43;
  a1 = v86;
  v44 = sub_216A31538();
  v46 = v45;
  sub_2167ADC98(v96);
  v97[9] = swift_getKeyPath();
  v97[10] = v44;
  LOBYTE(v97[11]) = v46 & 1;
  memcpy(v98, v97, 0x59uLL);
  v11 = v93;
LABEL_21:
  v47 = *(a1 + 144);
  if (v47)
  {
    sub_21700DF14();
    sub_21700B3B4();
    sub_2170083C4();
    v86 = v105;
    v73 = v109;
    v74 = v107;
    v72 = v110;
    LOBYTE(v96[0]) = 1;
    v95[0] = v106;
    v94 = v108;
    v97[0] = v47;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_21669E098(&qword_27CAB8D88, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83980]);
    v48 = v75;
    sub_21700B154();
    v49 = v96[0];
    v50 = v95[0];
    v71 = v94;
    v52 = v76;
    v51 = v77;
    v53 = *(v77 + 16);
    v54 = v78;
    v53(v76, v48, v78);
    *v11 = 0;
    v11[8] = v49;
    *(v11 + 2) = v86;
    v11[24] = v50;
    *(v11 + 4) = v74;
    v11[40] = v71;
    v55 = v72;
    *(v11 + 6) = v73;
    *(v11 + 7) = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0328, &qword_217037CE8);
    v53(&v11[*(v56 + 48)], v52, v54);
    v57 = *(v51 + 8);
    v57(v48, v54);
    v57(v52, v54);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0310, &unk_217037CA0);
    v59 = v11;
    v60 = 0;
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0310, &unk_217037CA0);
    v59 = v11;
    v60 = 1;
  }

  __swift_storeEnumTagSinglePayload(v59, v60, 1, v58);
  sub_216683A80(v98, v95, &qword_27CAB8D78, &qword_21701B630);
  v61 = v84;
  sub_216683A80(v11, v84, &qword_27CAC0308, &qword_217037C98);
  v96[0] = v92;
  v96[1] = v91;
  v96[2] = v87;
  v96[3] = v90;
  v63 = v80;
  v62 = v81;
  v96[4] = 0;
  v96[5] = v81;
  v96[6] = v89;
  v96[7] = v80;
  v65 = v82;
  v64 = v83;
  v66 = v79;
  v96[8] = v83;
  v96[9] = v79;
  v96[10] = v88;
  v96[11] = v82;
  v67 = v85;
  memcpy(v85, v96, 0x60uLL);
  sub_216683A80(v95, v67 + 96, &qword_27CAB8D78, &qword_21701B630);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0318, &qword_217037CB0);
  sub_216683A80(v61, v67 + *(v68 + 64), &qword_27CAC0308, &qword_217037C98);
  sub_216683A80(v96, v97, &qword_27CAC0320, &unk_217037CB8);
  sub_216699778(v93, &qword_27CAC0308);
  sub_216699778(v98, &qword_27CAB8D78);
  sub_216699778(v61, &qword_27CAC0308);
  sub_216699778(v95, &qword_27CAB8D78);
  v97[0] = v92;
  v97[1] = v91;
  v97[2] = v87;
  v97[3] = v90;
  v97[4] = 0;
  v97[5] = v62;
  v97[6] = v89;
  v97[7] = v63;
  v97[8] = v64;
  v97[9] = v66;
  v97[10] = v88;
  v97[11] = v65;
  return sub_216699778(v97, &qword_27CAC0320);
}

uint64_t sub_216A316E0@<X0>(uint64_t a2@<X8>)
{
  v3 = qword_27CAB5C10;
  sub_21700DF14();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_21700A094();
  v6 = v5;
  v8 = v7;

  if (qword_27CAB5C18 != -1)
  {
    swift_once();
  }

  v9 = sub_21700A044();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21678817C(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_216A31890(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0300, &qword_217037C88);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-v3 - 8];
  v5 = type metadata accessor for DefaultAccessoryButtonView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for DefaultAccessoryButton(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12 - 8];
  v17[0] = *a1;
  v14 = v17[0];
  sub_216826960((a1 + 8), v18);
  if (v14 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0), !swift_dynamicCast()))
  {
    swift_storeEnumTagMultiPayload();
    sub_216A32C4C(&qword_27CAC02E8, type metadata accessor for DefaultAccessoryButtonView, &unk_217050C9C);
    sub_217009554();
    return sub_216699778(v17, &qword_27CABDC08);
  }

  else
  {
    sub_216A329CC(v13, v10);
    sub_216A32A24(v10, v7);
    sub_216A32A24(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_216A32C4C(&qword_27CAC02E8, type metadata accessor for DefaultAccessoryButtonView, &unk_217050C9C);
    sub_217009554();
    sub_216A32A7C(v7, type metadata accessor for DefaultAccessoryButtonView);
    sub_216A32A7C(v10, type metadata accessor for DefaultAccessoryButton);
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

double sub_216A31BC8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E2B930 != -1)
  {
    swift_once();
  }

  result = 0.0;
  if ((byte_280E73A85 & 1) == 0)
  {
    v6 = v0 + *(type metadata accessor for DefaultSectionHeaderView(0) + 24);
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (*(v6 + 32) == 1)
    {
      return *v6;
    }

    else
    {

      sub_21700ED94();
      v11 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v8, v7, v10, v9, 0);
      (*(v2 + 8))(v4, v1);
      return v12;
    }
  }

  return result;
}

uint64_t sub_216A31DC0(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC01B8 = result;
  return result;
}

uint64_t sub_216A31DE0(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CAC01C0 = result;
  return result;
}

uint64_t sub_216A31E00()
{
  result = sub_217009E14();
  qword_27CAC01C8 = result;
  return result;
}

uint64_t sub_216A31E40(uint64_t a1)
{
  result = sub_217009D34();
  qword_27CAC01D8 = result;
  return result;
}

uint64_t sub_216A31E80(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAC01E8 = result;
  return result;
}

uint64_t sub_216A31EA0(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC01F0 = result;
  return result;
}

uint64_t sub_216A31EC0(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CAC01F8 = result;
  return result;
}

uint64_t sub_216A31EE0()
{
  sub_217009E14();
  sub_217009D94();
  v0 = sub_217009E34();

  qword_280E2C2B8 = v0;
  return result;
}

uint64_t sub_216A31F24()
{
  v0 = sub_21700ADF4();
  __swift_allocate_value_buffer(v0, qword_280E2C290);
  v1 = __swift_project_value_buffer(v0, qword_280E2C290);
  v2 = *MEMORY[0x277CE1050];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_216A31FAC()
{
  result = sub_21700ADB4();
  qword_27CAC0200 = result;
  return result;
}

uint64_t sub_216A31FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0210, &qword_217037A10) - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&__src[-1] - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0218, &unk_217037A18);
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-1] - v10;
  sub_216683A80(v2, v6, &qword_27CAB6DB0, &qword_217016C00);
  v12 = v3[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v6 + v12, 1, 1, v13);
  sub_216A327EC(v2, __src);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x48uLL);
  v15 = v3[14];
  *(v6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = v6 + v3[15];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v6[5] = sub_216A32824;
  v6[6] = v14;
  v6[7] = 0;
  v6[8] = 0;
  sub_216E316F0();
  sub_216699778(v6, &qword_27CAC0210);
  sub_216683A80(v2, __src, &qword_27CAB6DB0, &qword_217016C00);
  LOBYTE(v16) = __src[3] == 0;
  sub_216699778(__src, &qword_27CAB6DB0);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = v22;
  (*(v8 + 32))(v22, v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0220, &qword_217037AC0);
  v21 = (v19 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_2167D2420;
  v21[2] = v18;
  return result;
}

uint64_t sub_216A322B4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_216A3230C(a2, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0228, &qword_217037AF8);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_216A3230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700A124();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217009254();
  MEMORY[0x28223BE20](v6 - 8);
  sub_216683A80(a1, &v55, &qword_27CAB6DB0, &qword_217016C00);
  v7 = v58;
  sub_216699778(&v55, &qword_27CAB6DB0);
  if (v7)
  {
    sub_217009244();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    if (qword_27CAB5C20 != -1)
    {
      swift_once();
    }

    sub_217009214();
    sub_217009234();
    sub_217009274();
  }

  else
  {
    sub_217009264();
  }

  v54 = a2;
  v8 = sub_21700A154();
  v10 = v9;
  v12 = v11;
  if (qword_280E2C2B0 != -1)
  {
    swift_once();
  }

  v13 = sub_21700A094();
  v15 = v14;
  v17 = v16;
  sub_21678817C(v8, v10, v12 & 1);

  sub_21700AD34();
  v47 = sub_21700A034();
  v48 = v18;
  v20 = v19;
  v46 = v21;

  sub_21678817C(v13, v15, v17 & 1);

  v55 = 9273570;
  v56 = 0xA300000000000000;
  sub_2167B2E14();
  v22 = sub_21700A174();
  v24 = v23;
  v26 = v25;
  v27 = sub_21700A064();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24;
  v35 = v47;
  sub_21678817C(v22, v34, v26 & 1);
  v36 = v48;

  v55 = v27;
  v56 = v29;
  v37 = v31 & 1;
  v57 = v31 & 1;
  v49 = v33;
  v58 = v33;
  v50 = v20;
  v38 = v51;
  sub_21700A114();
  v39 = v54;
  sub_21700A334();
  (*(v52 + 8))(v38, v53);
  if (qword_280E2C288 != -1)
  {
    swift_once();
  }

  v40 = sub_21700ADF4();
  v41 = __swift_project_value_buffer(v40, qword_280E2C290);
  KeyPath = swift_getKeyPath();
  v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0230, &unk_217037B30) + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
  (*(*(v40 - 8) + 16))(v43 + *(v44 + 28), v41, v40);
  sub_21678817C(v27, v29, v37);

  sub_21678817C(v35, v36, v50 & 1);

  *v43 = KeyPath;
  return result;
}

unint64_t sub_216A3282C()
{
  result = qword_280E2B090;
  if (!qword_280E2B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0278, &qword_217037BB0);
    sub_21669E098(&qword_280E2A510, &unk_27CAC02A8, &unk_217037BE8, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B090);
  }

  return result;
}

unint64_t sub_216A32910()
{
  result = qword_27CAC02E0;
  if (!qword_27CAC02E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC02D0, &qword_217037C40);
    sub_216A32C4C(&qword_27CAC02E8, type metadata accessor for DefaultAccessoryButtonView, &unk_217050C9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC02E0);
  }

  return result;
}

uint64_t sub_216A329CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216A32A24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216A32A7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A32AD4()
{
  result = qword_280E2B190;
  if (!qword_280E2B190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0220, &qword_217037AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0210, &qword_217037A10);
    type metadata accessor for ActionButtonStyle(255);
    sub_21669E098(&qword_280E44DF8, &qword_27CAC0210, &qword_217037A10, &unk_21702C8E0);
    sub_216A32C4C(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A6E0, &qword_27CABF2D0, &unk_217032D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B190);
  }

  return result;
}

uint64_t sub_216A32C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A32C94()
{
  result = qword_280E2ADA0;
  if (!qword_280E2ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0338, &qword_217037D28);
    sub_216A32D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADA0);
  }

  return result;
}

unint64_t sub_216A32D18()
{
  result = qword_280E2ADA8;
  if (!qword_280E2ADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0258, &qword_217037B60);
    sub_216A32DFC(&qword_280E2AE00, &qword_27CAC0250, &qword_217037B58, sub_216A32E7C);
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADA8);
  }

  return result;
}

uint64_t sub_216A32DFC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216A32EDC()
{
  result = qword_280E2B0B0;
  if (!qword_280E2B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0238, &qword_217037B40);
    sub_21669E098(&qword_280E2A560, &unk_27CAC0340, &unk_217037D30, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0B0);
  }

  return result;
}

void sub_216A32F94(uint64_t a1)
{
  sub_21680D428(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21700BE14();
      swift_getWitnessTable();
      sub_2170081D4();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_217007CA4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A330B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_2170075A4() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = *(v8 + 84);
  v11 = sub_217007CA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  if (v14 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80);
  v17 = *(v12 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = *(v6 + 80) & 0xF8;
  v19 = v18 | 7;
  v20 = v9 + 8;
  v21 = v16 + 17;
  v22 = *(v8 + 64) + v17 + 1;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v23 = ((v22 + ((v21 + ((v20 + ((v18 + 48) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17) + *(*(v11 - 8) + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v27 < 2)
    {
LABEL_31:
      if (v14 > 0xFE)
      {
        v32 = (v21 + ((v20 + ((a1 + v19 + 41) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
        if (v10 == v15)
        {
          v13 = v10;
          v11 = v7;
        }

        else
        {
          v32 = (v22 + v32) & ~v17;
        }

        return __swift_getEnumTagSinglePayload(v32, v13, v11);
      }

      else
      {
        v31 = *(a1 + 40);
        if (v31 > 1)
        {
          return (v31 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_31;
  }

LABEL_21:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = v23;
    }

    else
    {
      v29 = 4;
    }

    switch(v29)
    {
      case 2:
        v30 = *a1;
        break;
      case 3:
        v30 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v30 = *a1;
        break;
      default:
        v30 = *a1;
        break;
    }
  }

  else
  {
    v30 = 0;
  }

  return v15 + (v30 | v28) + 1;
}

void sub_216A333C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_2170075A4() - 8);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v8 + 64);
  }

  v12 = *(v10 + 84);
  v13 = sub_217007CA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80) & 0xF8;
  v19 = *(v10 + 80);
  v20 = v19 + 17;
  v21 = *(v14 + 80);
  v22 = *(v10 + 64) + v21 + 1;
  v23 = ((v22 + ((v19 + 17 + ((v11 + 8 + ((v18 + 48) & ~(v18 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v21) + *(*(v13 - 8) + 64);
  v24 = 8 * v23;
  if (a3 <= v17)
  {
    v25 = 0;
  }

  else if (v23 <= 3)
  {
    v30 = ((a3 - v17 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v30))
    {
      v25 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v25 = v31;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v17 >= a2)
  {
    v28 = ~v19;
    v29 = ~v21;
    switch(v25)
    {
      case 1:
        a1[v23] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v23] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v23] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v16 > 0xFE)
          {
            v33 = (v20 + ((v11 + 8 + (&a1[(v18 | 7) + 41] & ~(v18 | 7))) & 0xFFFFFFFFFFFFFFF8)) & v28;
            if (v12 == v17)
            {
              v34 = a2;
              v15 = v12;
              v13 = v9;
            }

            else
            {
              v33 = (v22 + v33) & v29;
              v34 = a2;
            }

            __swift_storeEnumTagSinglePayload(v33, v34, v15, v13);
          }

          else if (a2 > 0xFE)
          {
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
            a1[40] = 0;
            *a1 = (a2 - 255);
          }

          else
          {
            a1[40] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v26 = ~v17 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> v24) + 1;
      if (v23)
      {
        v32 = v26 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else if (v23 == 2)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        a1[v23] = v27;
        break;
      case 2:
        *&a1[v23] = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v23] = v27;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216A337C8@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    sub_2170065A4();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_2170065D4();
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
  switch(a1)
  {
    case 1:
      sub_2170065B4();
      goto LABEL_5;
    case 2:
      sub_2170065E4();
      goto LABEL_5;
    case 3:
      break;
    default:
      sub_2170065C4();
      goto LABEL_5;
  }

LABEL_6:
  v5 = sub_2170065F4();

  return __swift_storeEnumTagSinglePayload(a3, v4, 1, v5);
}

uint64_t sub_216A3388C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  v45 = v6;
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_217006414();
  OUTLINED_FUNCTION_1();
  v49 = v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC03C8, &qword_217037DD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_2170065F4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v46 = v2;
  v21 = sub_216A33C40(a1);
  v23 = v22;
  v25 = v24;
  v26 = a1[2];
  v27 = a1[4];
  v28 = a1[5];
  v43 = a1[3];
  v44 = v26;
  sub_216A337C8(v21, v24, v12);
  sub_216A392D4(v21, v23, v25);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2166997CC(v12, &qword_27CAC03C8, &qword_217037DD0);
    v29 = 1;
    v31 = v52;
    v30 = v53;
  }

  else
  {
    (*(v15 + 32))(v20, v12, v13);
    (*(v15 + 16))(v51, v20, v13);
    v32 = v50;
    v33 = v48;
    (*(v50 + 16))(v48, v46, a1);
    v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
    v35 = swift_allocObject();
    v36 = v43;
    *(v35 + 2) = v44;
    *(v35 + 3) = v36;
    *(v35 + 4) = v27;
    *(v35 + 5) = v28;
    (*(v32 + 32))(&v35[v34], v33, a1);
    v37 = v47;
    sub_217006424();
    (*(v15 + 8))(v20, v13);
    v38 = v53;
    v39 = v37;
    v40 = v52;
    (*(v49 + 32))(v53, v39, v52);
    v29 = 0;
    v30 = v38;
    v31 = v40;
  }

  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v31);
}

uint64_t sub_216A33C40(uint64_t a1)
{
  v131 = sub_21700BDA4();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v128 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v114 - v5;
  v6 = sub_21700BB94();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x28223BE20](v6);
  v119 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v114 - v9;
  v133 = a1;
  v10 = *(a1 - 8);
  a1 -= 8;
  v130 = v10;
  MEMORY[0x28223BE20](v11);
  v127 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v114 - v14;
  MEMORY[0x28223BE20](v15);
  v115 = &v114 - v16;
  v17 = sub_21700BBA4();
  v18 = *(v17 - 8);
  v123 = v17;
  v124 = v18;
  MEMORY[0x28223BE20](v17);
  v122 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = &v114 - v21;
  v22 = sub_21700BDB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v114 - v27;
  v29 = v1;
  v30 = *(v1 + *(a1 + 64));
  v126 = *(a1 + 24);
  sub_21700BE14();
  swift_getWitnessTable();
  v121 = v30;
  sub_2170081B4();
  sub_21700BE04();

  v31 = *(v23 + 16);
  v134 = v28;
  v31(v25, v28, v22);
  v135 = v23;
  v32 = v23;
  v33 = v22;
  v34 = (*(v32 + 88))(v25, v22);
  if (v34 != *MEMORY[0x277D2B120])
  {
    v114 = v29;
    v36 = v133;
    if (v34 == *MEMORY[0x277D2B128])
    {
      (*(v135 + 96))(v25, v33);
      v37 = v131;
      v38 = v132;
      v39 = v25;
      v40 = v129;
      (*(v129 + 32))(v132, v39, v131);
      v41 = v36;
      v42 = v130;
      v43 = v127;
      (*(v130 + 16))(v127, v114, v36);
      v44 = v128;
      (*(v40 + 16))(v128, v38, v37);
      v45 = sub_217007C84();
      v46 = sub_21700EDA4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v136[0] = v125;
        *v47 = 136446466;
        sub_21700B934();
        LODWORD(v126) = v46;
        (*(v42 + 8))(v43, v41);
        v48 = sub_21700BA54();
        v50 = v49;

        v51 = sub_2166A85FC(v48, v50, v136);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        sub_216A39440(&qword_27CAC03D0, MEMORY[0x277D2B108], MEMORY[0x277D2B110]);
        v52 = v131;
        v53 = sub_21700F784();
        v55 = v54;
        v56 = *(v40 + 8);
        v56(v44, v52);
        v57 = sub_2166A85FC(v53, v55, v136);

        *(v47 + 14) = v57;
        _os_log_impl(&dword_216679000, v45, v126, "Library button not shown for item (id: %{public}s for reason: %{public}s", v47, 0x16u);
        v58 = v125;
        swift_arrayDestroy();
        MEMORY[0x21CEA1440](v58, -1, -1);
        MEMORY[0x21CEA1440](v47, -1, -1);

        v56(v132, v52);
        (*(v135 + 8))(v134, v33);
        return 3;
      }

      (*(v42 + 8))(v43, v41);

      v66 = *(v40 + 8);
      v66(v44, v37);
      v66(v132, v37);
      (*(v135 + 8))(v134, v33);
      return 3;
    }

    if (v34 != *MEMORY[0x277D2B118])
    {
      v67 = *(v135 + 8);
      v67(v134, v33);
      v67(v25, v33);
      return 3;
    }

    sub_21700BE44();
    sub_21700BE34();
    v60 = sub_21700BCC4();

    if ((v60 & 1) == 0)
    {
      v69 = sub_217007C84();
      v70 = sub_21700EDA4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_216679000, v69, v70, "Download actions not available", v71, 2u);
        MEMORY[0x21CEA1440](v71, -1, -1);
      }

      (*(v135 + 8))(v134, v33);
      return 3;
    }

    sub_2170081B4();
    v61 = v125;
    sub_21700BDC4();

    v63 = v123;
    v62 = v124;
    v64 = v122;
    (*(v124 + 16))(v122, v61, v123);
    v65 = (*(v62 + 88))(v64, v63);
    if (v65 == *MEMORY[0x277D2AFD8])
    {
      (*(v62 + 8))(v61, v63);
      (*(v135 + 8))(v134, v33);
      (*(v62 + 96))(v64, v63);
      return *v64;
    }

    v132 = v33;
    v72 = v135;
    if (v65 == *MEMORY[0x277D2AFF8])
    {
      (*(v62 + 96))(v64, v63);
      v73 = v117;
      v74 = v118;
      v75 = v120;
      (*(v117 + 32))(v120, v64, v118);
      v76 = v36;
      v77 = v130;
      v78 = v116;
      (*(v130 + 16))(v116, v114, v36);
      v79 = v119;
      (*(v73 + 16))(v119, v75, v74);
      v80 = sub_217007C84();
      v81 = sub_21700EDA4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v136[0] = v83;
        *v82 = 136446466;
        sub_21700B934();
        LODWORD(v131) = v81;
        (*(v77 + 8))(v78, v76);
        v84 = sub_21700BA54();
        v86 = v85;

        v87 = sub_2166A85FC(v84, v86, v136);

        *(v82 + 4) = v87;
        *(v82 + 12) = 2082;
        sub_216A39440(&qword_27CAC03D8, MEMORY[0x277D2AFC0], MEMORY[0x277D2AFC8]);
        v88 = v119;
        v89 = sub_21700F784();
        v91 = v90;
        v92 = *(v73 + 8);
        v92(v88, v74);
        v93 = sub_2166A85FC(v89, v91, v136);

        *(v82 + 14) = v93;
        _os_log_impl(&dword_216679000, v80, v131, "Download paused for item (id: %{public}s for reasons: %{public}s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEA1440](v83, -1, -1);
        MEMORY[0x21CEA1440](v82, -1, -1);
      }

      else
      {
        (*(v77 + 8))(v78, v36);

        v92 = *(v73 + 8);
        v92(v79, v74);
      }

      v94 = sub_216A33C40(v76);
      v96 = v95;
      v98 = v97;
      v99 = v97;
      v92(v120, v74);
      (*(v124 + 8))(v125, v123);
      (*(v135 + 8))(v134, v132);
      if (v99 == 1)
      {
        return 3;
      }

      sub_216A392D4(v94, v96, v98);
      return 1;
    }

    if (v65 == *MEMORY[0x277D2AFF0])
    {
      (*(v62 + 8))(v61, v63);
      (*(v72 + 8))(v134, v132);
      return 3;
    }

    if (v65 != *MEMORY[0x277D2AFE0])
    {
      if (v65 == *MEMORY[0x277D2AFE8])
      {
        (*(v62 + 8))(v61, v63);
        (*(v72 + 8))(v134, v132);
        return 1;
      }

      if (v65 == *MEMORY[0x277D2AFD0])
      {
        (*(v62 + 8))(v61, v63);
        (*(v72 + 8))(v134, v132);
        return 2;
      }

      if (v65 != *MEMORY[0x277D2B000])
      {
        v113 = *(v62 + 8);
        v113(v61, v63);
        (*(v72 + 8))(v134, v132);
        v113(v64, v63);
        return 3;
      }

      v100 = v130;
      v101 = v115;
      (*(v130 + 16))(v115, v114, v36);
      v102 = sub_217007C84();
      v103 = sub_21700EDA4();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v131 = v104;
        v105 = swift_slowAlloc();
        v136[0] = v105;
        *v104 = 136446210;
        sub_21700B934();
        (*(v100 + 8))(v101, v36);
        v106 = sub_21700BA54();
        v108 = v107;

        v109 = sub_2166A85FC(v106, v108, v136);

        v110 = v131;
        *(v131 + 4) = v109;
        v111 = v103;
        v112 = v110;
        _os_log_impl(&dword_216679000, v102, v111, "Download was canceled for item (id: %{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x21CEA1440](v105, -1, -1);
        MEMORY[0x21CEA1440](v112, -1, -1);

        (*(v62 + 8))(v125, v63);
        goto LABEL_32;
      }

      (*(v100 + 8))(v101, v36);
    }

    (*(v62 + 8))(v61, v63);
LABEL_32:
    (*(v72 + 8))(v134, v132);
    return 0;
  }

  if (*(v29 + *(v133 + 64)) == 1)
  {
    v35 = sub_216983738(3);
  }

  else
  {
    v35 = 0;
  }

  v59 = *(v135 + 8);
  v59(v134, v22);
  v59(v25, v22);
  return v35;
}

uint64_t sub_216A34CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = type metadata accessor for LibraryButtonView(0, v7);
  return sub_216A34CE0(v5);
}

uint64_t sub_216A34CE0(void *a1)
{
  v615 = sub_21700BCA4();
  v614 = *(v615 - 8);
  MEMORY[0x28223BE20](v615);
  v560 = &v548 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v574 = &v548 - v4;
  MEMORY[0x28223BE20](v5);
  v590 = &v548 - v6;
  v587 = sub_21700BCB4();
  v586 = *(v587 - 8);
  MEMORY[0x28223BE20](v587);
  v585 = &v548 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v616 = *(v619 - 8);
  MEMORY[0x28223BE20](v619);
  v554 = &v548 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v559 = &v548 - v10;
  MEMORY[0x28223BE20](v11);
  v600 = &v548 - v12;
  MEMORY[0x28223BE20](v13);
  v623 = (&v548 - v14);
  v624 = sub_21700BB74();
  v627 = *(v624 - 8);
  MEMORY[0x28223BE20](v624);
  v622 = &v548 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v626 = &v548 - v17;
  MEMORY[0x28223BE20](v18);
  v558 = &v548 - v19;
  MEMORY[0x28223BE20](v20);
  v588 = &v548 - v21;
  MEMORY[0x28223BE20](v22);
  v589 = &v548 - v23;
  v631 = sub_21700BB84();
  v630 = *(v631 - 1);
  MEMORY[0x28223BE20](v631);
  v629 = &v548 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v26 = *(v25 - 8);
  v636 = v25;
  v637 = v26;
  MEMORY[0x28223BE20](v25);
  v612 = &v548 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v628 = &v548 - v29;
  MEMORY[0x28223BE20](v30);
  v632 = &v548 - v31;
  MEMORY[0x28223BE20](v32);
  v573 = &v548 - v33;
  MEMORY[0x28223BE20](v34);
  v566 = &v548 - v35;
  MEMORY[0x28223BE20](v36);
  v599 = &v548 - v37;
  MEMORY[0x28223BE20](v38);
  v618 = (&v548 - v39);
  v621 = sub_21700BD84();
  v613 = *(v621 - 8);
  MEMORY[0x28223BE20](v621);
  v580 = &v548 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v611 = &v548 - v42;
  MEMORY[0x28223BE20](v43);
  v620 = &v548 - v44;
  v635 = *(a1 - 1);
  MEMORY[0x28223BE20](v45);
  v571 = &v548 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v572 = &v548 - v48;
  MEMORY[0x28223BE20](v49);
  v553 = &v548 - v50;
  MEMORY[0x28223BE20](v51);
  v578 = &v548 - v52;
  MEMORY[0x28223BE20](v53);
  v579 = &v548 - v54;
  MEMORY[0x28223BE20](v55);
  v562 = &v548 - v56;
  MEMORY[0x28223BE20](v57);
  v577 = &v548 - v58;
  MEMORY[0x28223BE20](v59);
  v570 = &v548 - v60;
  MEMORY[0x28223BE20](v61);
  v584 = &v548 - v62;
  MEMORY[0x28223BE20](v63);
  v552 = &v548 - v64;
  MEMORY[0x28223BE20](v65);
  v576 = &v548 - v66;
  MEMORY[0x28223BE20](v67);
  v610 = &v548 - v68;
  MEMORY[0x28223BE20](v69);
  v561 = &v548 - v70;
  v609 = sub_2170075A4();
  v608 = *(v609 - 8);
  MEMORY[0x28223BE20](v609);
  v607 = &v548 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1[2];
  v73 = a1[3];
  v74 = a1[4];
  v602 = type metadata accessor for LibraryActionType(0, v72, v73, v74);
  MEMORY[0x28223BE20](v602);
  v603 = &v548 - v75;
  v640 = v72;
  v634 = v73;
  v638 = v74;
  v606 = type metadata accessor for LibraryAction(0, v72, v73, v74);
  v605 = *(v606 - 8);
  MEMORY[0x28223BE20](v606);
  v604 = &v548 - v76;
  v597 = sub_21700CFB4();
  v596 = *(v597 - 8);
  MEMORY[0x28223BE20](v597);
  v595 = &v548 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v591 = sub_217005EF4();
  v575 = *(v591 - 8);
  MEMORY[0x28223BE20](v591);
  v557 = &v548 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v551 = &v548 - v80;
  MEMORY[0x28223BE20](v81);
  v556 = &v548 - v82;
  v594 = sub_21700D704();
  v593 = *(v594 - 8);
  MEMORY[0x28223BE20](v594);
  v569 = &v548 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v564 = &v548 - v85;
  MEMORY[0x28223BE20](v86);
  v592 = &v548 - v87;
  MEMORY[0x28223BE20](v88);
  v581 = &v548 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v90 - 8);
  v568 = &v548 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v582 = &v548 - v93;
  MEMORY[0x28223BE20](v94);
  v555 = &v548 - v95;
  MEMORY[0x28223BE20](v96);
  v563 = &v548 - v97;
  MEMORY[0x28223BE20](v98);
  v567 = &v548 - v99;
  MEMORY[0x28223BE20](v100);
  v102 = &v548 - v101;
  v617 = sub_21700D284();
  v598 = *(v617 - 8);
  MEMORY[0x28223BE20](v617);
  v583 = &v548 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v565 = &v548 - v105;
  MEMORY[0x28223BE20](v106);
  v601 = &v548 - v107;
  MEMORY[0x28223BE20](v108);
  v110 = &v548 - v109;
  v111 = sub_21700BD94();
  v625 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v113 = &v548 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0, &qword_217021070);
  v633 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v116 = &v548 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v119 = (&v548 - v118);
  MEMORY[0x28223BE20](v120);
  v122 = &v548 - v121;
  MEMORY[0x28223BE20](v123);
  v125 = (&v548 - v124);
  v639 = a1;
  v126 = sub_216A33C40(a1);
  if (!v128)
  {
    v629 = v116;
    v630 = v119;
    v631 = v102;
    v549 = v110;
    v632 = v126;
    v636 = v127;
    sub_21700BE44();
    sub_21700BE34();
    v192 = v639;
    v193 = *(v639 + 15);
    sub_2170067E4();
    v194 = v641;
    sub_21700BC04();

    (*(v625 + 8))(v113, v111);
    v195 = v633;
    v196 = *(v633 + 16);
    v637 = v125;
    v196(v122, v125, v114);
    v197 = (*(v195 + 88))(v122, v114);
    v182 = v197 == *MEMORY[0x277D2B040];
    v550 = v114;
    if (v182)
    {
      (*(v195 + 96))(v122, v550);
      v198 = v192;
      v199 = v613;
      v200 = v620;
      v201 = v621;
      (*(v613 + 32))();
      v202 = v635;
      v203 = v610;
      (*(v635 + 16))(v610, v194, v198);
      v204 = v611;
      v638 = *(v199 + 16);
      v638(v611, v200, v201);
      v205 = sub_217007C84();
      v206 = sub_21700EDA4();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v641 = swift_slowAlloc();
        v647 = v641;
        *v207 = 136446466;
        LODWORD(v634) = v206;
        sub_21700B934();
        v208 = v199;
        (*(v202 + 8))(v203, v198);
        v209 = sub_21700BA54();
        v211 = v210;

        v212 = sub_2166A85FC(v209, v211, &v647);

        *(v207 + 4) = v212;
        *(v207 + 12) = 2082;
        v213 = v621;
        v638(v580, v204, v621);
        v214 = v213;
        v215 = sub_21700E594();
        v217 = v216;
        v218 = *(v208 + 8);
        v218(v204, v214);
        v219 = sub_2166A85FC(v215, v217, &v647);

        *(v207 + 14) = v219;
        _os_log_impl(&dword_216679000, v205, v634, "Library button addtoLibrary action not supported for item (id: %{public}s for reason: %{public}s", v207, 0x16u);
        v220 = v641;
        swift_arrayDestroy();
        MEMORY[0x21CEA1440](v220, -1, -1);
        MEMORY[0x21CEA1440](v207, -1, -1);

        sub_216A392D4(v632, v636, 0);
        v218(v620, v214);
      }

      else
      {
        (*(v202 + 8))(v203, v198);

        sub_216A392D4(v632, v636, 0);
        v305 = *(v199 + 8);
        v305(v204, v201);
        v305(v200, v201);
      }

      v162 = *(v633 + 8);
      v163 = v637;
    }

    else
    {
      if (v197 != *MEMORY[0x277D2B048])
      {
        v307 = v639;
        v308 = v635;
        v309 = v576;
        (*(v635 + 16))(v576, v641, v639);
        v310 = v630;
        v311 = v637;
        v196(v630, v637, v550);
        v312 = sub_217007C84();
        v313 = sub_21700ED84();
        if (os_log_type_enabled(v312, v313))
        {
          v314 = swift_slowAlloc();
          LODWORD(v638) = v313;
          v315 = v307;
          v316 = v314;
          v641 = swift_slowAlloc();
          v647 = v641;
          *v316 = 136446466;
          v634 = v312;
          sub_21700B934();
          (*(v308 + 8))(v309, v315);
          v317 = sub_21700BA54();
          v319 = v318;

          v320 = sub_2166A85FC(v317, v319, &v647);
          v321 = v550;

          *(v316 + 4) = v320;
          *(v316 + 12) = 2082;
          v196(v629, v310, v321);
          v322 = sub_21700E594();
          v323 = v311;
          v325 = v324;
          v326 = *(v633 + 8);
          v326(v310, v321);
          v327 = sub_2166A85FC(v322, v325, &v647);

          *(v316 + 14) = v327;
          v328 = v634;
          _os_log_impl(&dword_216679000, v634, v638, "Library button addtoLibrary action not supported for item (id: %{public}s due to unknown status: %{public}s", v316, 0x16u);
          v329 = v641;
          swift_arrayDestroy();
          MEMORY[0x21CEA1440](v329, -1, -1);
          MEMORY[0x21CEA1440](v316, -1, -1);

          sub_216A392D4(v632, v636, 0);
          v326(v323, v321);
        }

        else
        {
          (*(v308 + 8))(v309, v307);

          sub_216A392D4(v632, v636, 0);
          v326 = *(v633 + 8);
          v359 = v310;
          v360 = v550;
          v326(v359, v550);
          v326(v311, v360);
        }

        return (v326)(v122, v550);
      }

      v233 = v641;
      sub_216C0C534(&v644);
      v234 = v635;
      if (v645)
      {
        sub_2167B8EF0(&v644, &v647);
        v635 = v193;
        v235 = sub_21700B934();
        v237 = v236;
        v238 = v631;
        v239 = v591;
        __swift_storeEnumTagSinglePayload(v631, 1, 1, v591);
        sub_21700D6F4();
        v240 = MEMORY[0x277D837D0];
        v645 = MEMORY[0x277D837D0];
        *&v644 = 6579297;
        *(&v644 + 1) = 0xE300000000000000;
        sub_2166EF9C4(&v644, &v643);
        v241 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v642 = v241;
        sub_2166EF9D4();
        v242 = v642;
        v243 = v567;
        sub_2167DE934(v238, v567);
        if (__swift_getEnumTagSinglePayload(v243, 1, v239) == 1)
        {
          sub_2166997CC(v243, &qword_27CABA820, &unk_217018CE0);
        }

        else
        {
          v455 = v575;
          v456 = v556;
          (*(v575 + 32))(v556, v243, v239);
          v457 = sub_217005DE4();
          v645 = v240;
          *&v644 = v457;
          *(&v644 + 1) = v458;
          sub_2166EF9C4(&v644, &v643);
          swift_isUniquelyReferenced_nonNull_native();
          v642 = v242;
          sub_2166EF9D4();
          v242 = v642;
          (*(v455 + 8))(v456, v239);
        }

        v459 = v549;
        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v460 = sub_21700CF84();
        v461 = __swift_project_value_buffer(v460, qword_280E73DB0);
        v462 = v595;
        MEMORY[0x21CE9DD70](v235, v237, 0x6E6F74747562, 0xE600000000000000, v242, v461);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
        v463 = v596;
        v464 = (*(v596 + 80) + 32) & ~*(v596 + 80);
        v465 = swift_allocObject();
        *(v465 + 16) = xmmword_217013DA0;
        v466 = v465 + v464;
        v467 = v597;
        (*(v463 + 16))(v466, v462, v597);
        v468 = v593;
        v469 = v581;
        v470 = v594;
        (*(v593 + 16))(v592, v581, v594);
        sub_21700D244();
        (*(v463 + 8))(v462, v467);
        (*(v468 + 8))(v469, v470);
        sub_2166997CC(v631, &qword_27CABA820, &unk_217018CE0);
        v471 = v640;
        v472 = v603;
        (*(*(v640 - 8) + 16))(v603, v641 + v635, v640);
        swift_storeEnumTagMultiPayload();
        v473 = v459;
        v474 = v598;
        v475 = v601;
        v476 = v617;
        (*(v598 + 16))(v601, v473, v617);
        v477 = v604;
        sub_2167A7DDC(v472, v475, v471, v634, v638, v604);
        __swift_project_boxed_opaque_existential_1(&v647, v648);
        v478 = v606;
        v645 = v606;
        WitnessTable = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v644);
        v480 = v605;
        v481 = (*(v605 + 16))(boxed_opaque_existential_1, v477, v478);
        v482 = v607;
        sub_216C0C548(v481, v483, v484, v485, v486, v487, v488, v489, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559);
        sub_217007544();
        sub_216A392D4(v632, v636, 0);
        (*(v608 + 8))(v482, v609);
        (*(v480 + 8))(v477, v478);
        (*(v474 + 8))(v549, v476);
        (*(v633 + 8))(v637, v550);
        goto LABEL_96;
      }

      sub_2166997CC(&v644, &qword_27CAB7310, &unk_2170170F0);
      v371 = v639;
      v372 = v561;
      (*(v234 + 16))(v561, v233, v639);
      v373 = sub_217007C84();
      v374 = sub_21700ED84();
      v375 = os_log_type_enabled(v373, v374);
      v376 = v637;
      if (v375)
      {
        v377 = swift_slowAlloc();
        v378 = swift_slowAlloc();
        v647 = v378;
        *v377 = 136446210;
        sub_21700B934();
        (*(v234 + 8))(v372, v371);
        v379 = sub_21700BA54();
        v381 = v380;

        v382 = sub_2166A85FC(v379, v381, &v647);

        *(v377 + 4) = v382;
        __swift_destroy_boxed_opaque_existential_1Tm(v378);
        MEMORY[0x21CEA1440](v378, -1, -1);
        MEMORY[0x21CEA1440](v377, -1, -1);
      }

      else
      {
        (*(v234 + 8))(v372, v371);
      }

      sub_216A392D4(v632, v636, 0);
      v162 = *(v633 + 8);
      v163 = v376;
    }

    p_WitnessTable = &v582;
LABEL_42:
    v306 = *(p_WitnessTable - 32);
    return (v162)(v163, v306);
  }

  if (v128 == 1)
  {
    sub_21700BE44();
    sub_21700BE34();
    v166 = v639;
    v167 = *(v639 + 15);
    v168 = v629;
    sub_217006834();
    v169 = v641;
    v170 = v632;
    v171 = v631;
    sub_21700BC04();

    v630[1](v168, v171);
    v173 = v636;
    v172 = v637;
    isa = v637[2].isa;
    v175 = v628;
    (isa)(v628, v170, v636);
    v176 = (v172[11].isa)(v175, v173);
    if (v176 == *MEMORY[0x277D2B040])
    {
      (v172[12].isa)(v175, v173);
      v177 = v627;
      v178 = v626;
      v179 = v624;
      (*(v627 + 32))(v626, v175, v624);
      v180 = v622;
      (*(v177 + 16))(v622, v178, v179);
      v181 = (*(v177 + 88))(v180, v179);
      v182 = v181 == *MEMORY[0x277D2AFA8] || v181 == *MEMORY[0x277D2AFB0];
      if (!v182)
      {
        v276 = v635;
        v277 = v579;
        (*(v635 + 16))(v579, v169, v166);
        v278 = sub_217007C84();
        v279 = sub_21700EDA4();
        if (os_log_type_enabled(v278, v279))
        {
          v281 = swift_slowAlloc();
          v282 = swift_slowAlloc();
          v647 = v282;
          *v281 = 136446210;
          sub_21700B934();
          (*(v276 + 8))(v277, v166);
          v283 = sub_21700BA54();
          v285 = v284;

          v286 = sub_2166A85FC(v283, v285, &v647);

          *(v281 + 4) = v286;
          _os_log_impl(&dword_216679000, v278, v279, "Library button cancelDownload action not supported for item (id: %{public}s because item not downloading", v281, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v282);
          MEMORY[0x21CEA1440](v282, -1, -1);
          MEMORY[0x21CEA1440](v281, -1, -1);

          v287 = *(v627 + 8);
          v287(v626, v179);
          (v637[1].isa)(v632, v636);
        }

        else
        {
          (*(v276 + 8))(v277, v166);

          v287 = *(v627 + 8);
          v287(v626, v179);
          (v637[1].isa)(v632, v173);
        }

        return (v287)(v622, v179);
      }

      sub_216C0C534(&v644);
      if (v645)
      {
        sub_2167B8EF0(&v644, &v647);
        v183 = sub_21700B934();
        v185 = v184;
        v186 = v582;
        v187 = v591;
        __swift_storeEnumTagSinglePayload(v582, 1, 1, v591);
        v188 = v569;
        sub_21700D6F4();
        v645 = MEMORY[0x277D837D0];
        strcpy(&v644, "cancelDownload");
        HIBYTE(v644) = -18;
        sub_2166EF9C4(&v644, &v643);
        v189 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v642 = v189;
        sub_2166EF9D4();
        v190 = v642;
        v191 = v568;
        sub_2167DE934(v186, v568);
        if (__swift_getEnumTagSinglePayload(v191, 1, v187) == 1)
        {
          sub_2166997CC(v191, &qword_27CABA820, &unk_217018CE0);
        }

        else
        {
          v421 = v575;
          v422 = v183;
          v423 = v557;
          (*(v575 + 32))(v557, v191, v187);
          v424 = sub_217005DE4();
          v645 = MEMORY[0x277D837D0];
          *&v644 = v424;
          *(&v644 + 1) = v425;
          sub_2166EF9C4(&v644, &v643);
          swift_isUniquelyReferenced_nonNull_native();
          v642 = v190;
          sub_2166EF9D4();
          v190 = v642;
          v426 = v423;
          v183 = v422;
          (*(v421 + 8))(v426, v187);
        }

        v635 = v167;
        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v427 = sub_21700CF84();
        v428 = __swift_project_value_buffer(v427, qword_280E73DB0);
        v429 = v595;
        MEMORY[0x21CE9DD70](v183, v185, 0x6E6F74747562, 0xE600000000000000, v190, v428);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
        v430 = v596;
        v431 = (*(v596 + 80) + 32) & ~*(v596 + 80);
        v432 = swift_allocObject();
        *(v432 + 16) = xmmword_217013DA0;
        v433 = v432 + v431;
        v434 = v597;
        (*(v430 + 16))(v433, v429, v597);
        v435 = v593;
        v436 = v594;
        (*(v593 + 16))(v592, v188, v594);
        v437 = v583;
        sub_21700D244();
        (*(v430 + 8))(v429, v434);
        (*(v435 + 8))(v188, v436);
        sub_2166997CC(v582, &qword_27CABA820, &unk_217018CE0);
        v438 = v640;
        v439 = v603;
        (*(*(v640 - 8) + 16))(v603, v641 + v635, v640);
        swift_storeEnumTagMultiPayload();
        v440 = v598;
        v441 = v601;
        (*(v598 + 16))(v601, v437, v617);
        v442 = v604;
        sub_2167A7DDC(v439, v441, v438, v634, v638, v604);
        __swift_project_boxed_opaque_existential_1(&v647, v648);
        v443 = v606;
        v645 = v606;
        WitnessTable = swift_getWitnessTable();
        v444 = __swift_allocate_boxed_opaque_existential_1(&v644);
        v445 = v605;
        v446 = (*(v605 + 16))(v444, v442, v443);
        v447 = v607;
        sub_216C0C548(v446, v448, v449, v450, v451, v452, v453, v454, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559);
        sub_217007544();
        (*(v608 + 8))(v447, v609);
        (*(v445 + 8))(v442, v443);
        (*(v440 + 8))(v583, v617);
        (*(v627 + 8))(v626, v624);
        (v637[1].isa)(v632, v636);
        goto LABEL_96;
      }

      sub_2166997CC(&v644, &qword_27CAB7310, &unk_2170170F0);
      v361 = v635;
      v362 = v562;
      (*(v635 + 16))(v562, v169, v166);
      v363 = sub_217007C84();
      v364 = sub_21700ED84();
      if (os_log_type_enabled(v363, v364))
      {
        v365 = swift_slowAlloc();
        v641 = swift_slowAlloc();
        v647 = v641;
        *v365 = 136446210;
        sub_21700B934();
        v228 = v173;
        (*(v361 + 8))(v362, v166);
        v366 = sub_21700BA54();
        v368 = v367;

        v369 = sub_2166A85FC(v366, v368, &v647);

        *(v365 + 4) = v369;
        v370 = v641;
        __swift_destroy_boxed_opaque_existential_1Tm(v641);
        MEMORY[0x21CEA1440](v370, -1, -1);
        MEMORY[0x21CEA1440](v365, -1, -1);

        (*(v627 + 8))(v626, v179);
        return (v637[1].isa)(v632, v228);
      }

      (*(v361 + 8))(v362, v166);

      (*(v627 + 8))(v626, v179);
    }

    else
    {
      v221 = v635;
      v222 = *(v635 + 16);
      if (v176 != *MEMORY[0x277D2B048])
      {
        v288 = v166;
        v289 = v578;
        v222(v578, v169, v288);
        (isa)(v612, v170, v173);
        v290 = sub_217007C84();
        v291 = v170;
        v292 = sub_21700ED84();
        if (os_log_type_enabled(v290, v292))
        {
          v293 = swift_slowAlloc();
          v641 = swift_slowAlloc();
          v647 = v641;
          *v293 = 136446466;
          sub_21700B934();
          (*(v221 + 8))(v289, v288);
          v294 = sub_21700BA54();
          v296 = v295;

          v297 = sub_2166A85FC(v294, v296, &v647);

          *(v293 + 4) = v297;
          *(v293 + 12) = 2082;
          v298 = v612;
          (isa)(v573, v612, v636);
          v299 = sub_21700E594();
          v301 = v300;
          v302 = v637[1].isa;
          (v302)(v298, v636);
          v303 = sub_2166A85FC(v299, v301, &v647);
          v173 = v636;

          *(v293 + 14) = v303;
          _os_log_impl(&dword_216679000, v290, v292, "Library button cancelDownload action not supported for item (id: %{public}s due to unknown status: %{public}s", v293, 0x16u);
          v304 = v641;
          swift_arrayDestroy();
          MEMORY[0x21CEA1440](v304, -1, -1);
          MEMORY[0x21CEA1440](v293, -1, -1);

          (v302)(v632, v173);
        }

        else
        {
          (*(v221 + 8))(v289, v288);

          v302 = v637[1].isa;
          (v302)(v612, v173);
          (v302)(v291, v173);
        }

        v358 = v628;
        goto LABEL_86;
      }

      v223 = v577;
      v222(v577, v169, v166);
      v224 = sub_217007C84();
      v225 = sub_21700EDA4();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v647 = v227;
        *v226 = 136446210;
        sub_21700B934();
        v228 = v173;
        (*(v221 + 8))(v223, v166);
        v229 = sub_21700BA54();
        v231 = v230;

        v232 = sub_2166A85FC(v229, v231, &v647);

        *(v226 + 4) = v232;
        _os_log_impl(&dword_216679000, v224, v225, "Library button not shown for item (id: %{public}s because item not downloading", v226, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v227);
        MEMORY[0x21CEA1440](v227, -1, -1);
        MEMORY[0x21CEA1440](v226, -1, -1);

        return (v637[1].isa)(v632, v228);
      }

      (*(v221 + 8))(v223, v166);
    }

    return (v637[1].isa)(v632, v173);
  }

  v129 = v639;
  v130 = v641;
  if (v128 != 2)
  {
LABEL_9:

    return sub_216A392D4(v126, v127, v128);
  }

  if (!(v126 | v127))
  {
    sub_21700BE44();
    sub_21700BE34();
    v244 = *(v129 + 15);
    v245 = v629;
    sub_217006834();
    v246 = v618;
    v247 = v631;
    sub_21700BC04();

    v630[1](v245, v247);
    v249 = v636;
    v248 = v637;
    v250 = v637[2].isa;
    v251 = v599;
    (v250)(v599, v246, v636);
    v252 = (v248[11].isa)(v251, v249);
    if (v252 == *MEMORY[0x277D2B040])
    {
      (v248[12].isa)(v251, v249);
      v253 = v627;
      v254 = v589;
      v255 = v624;
      (*(v627 + 32))(v589, v251, v624);
      v256 = v635;
      (*(v635 + 16))(v584, v130, v129);
      v257 = v254;
      v258 = v255;
      v638 = *(v253 + 16);
      v638(v588, v257, v255);
      v259 = v248;
      v260 = sub_217007C84();
      v261 = sub_21700EDA4();
      if (!os_log_type_enabled(v260, v261))
      {
        (*(v256 + 8))(v584, v129);

        v403 = *(v253 + 8);
        v403(v588, v258);
        v403(v589, v258);
        return (v259[1].isa)(v618, v249);
      }

      v262 = swift_slowAlloc();
      v641 = swift_slowAlloc();
      v647 = v641;
      *v262 = 136446466;
      LODWORD(v634) = v261;
      v263 = v584;
      sub_21700B934();
      v264 = v253;
      (*(v256 + 8))(v263, v129);
      v265 = sub_21700BA54();
      v267 = v266;

      v268 = sub_2166A85FC(v265, v267, &v647);

      *(v262 + 4) = v268;
      *(v262 + 12) = 2082;
      v269 = v588;
      v638(v558, v588, v258);
      v270 = sub_21700E594();
      v272 = v271;
      v273 = *(v264 + 8);
      v273(v269, v258);
      v274 = sub_2166A85FC(v270, v272, &v647);

      *(v262 + 14) = v274;
      _os_log_impl(&dword_216679000, v260, v634, "Library button download action not supported for item (id: %{public}s for reason: %{public}s", v262, 0x16u);
      v275 = v641;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v275, -1, -1);
      MEMORY[0x21CEA1440](v262, -1, -1);

      v273(v589, v258);
      v162 = v637[1].isa;
      v163 = v618;
      goto LABEL_100;
    }

    if (v252 == *MEMORY[0x277D2B048])
    {
      sub_216C0C534(&v644);
      if (v645)
      {
        sub_2167B8EF0(&v644, &v647);
        v349 = sub_21700B934();
        v351 = v350;
        v352 = v563;
        v353 = v591;
        __swift_storeEnumTagSinglePayload(v563, 1, 1, v591);
        sub_21700D6F4();
        v354 = MEMORY[0x277D837D0];
        v645 = MEMORY[0x277D837D0];
        strcpy(&v644, "download");
        BYTE9(v644) = 0;
        WORD5(v644) = 0;
        HIDWORD(v644) = -402653184;
        sub_2166EF9C4(&v644, &v643);
        v355 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v642 = v355;
        sub_2166EF9D4();
        v356 = v642;
        v357 = v555;
        sub_2167DE934(v352, v555);
        if (__swift_getEnumTagSinglePayload(v357, 1, v353) == 1)
        {
          sub_2166997CC(v357, &qword_27CABA820, &unk_217018CE0);
        }

        else
        {
          v513 = v575;
          v514 = v551;
          (*(v575 + 32))(v551, v357, v353);
          v515 = sub_217005DE4();
          v645 = v354;
          *&v644 = v515;
          *(&v644 + 1) = v516;
          sub_2166EF9C4(&v644, &v643);
          swift_isUniquelyReferenced_nonNull_native();
          v642 = v356;
          sub_2166EF9D4();
          v356 = v642;
          (*(v513 + 8))(v514, v353);
        }

        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v517 = sub_21700CF84();
        v518 = __swift_project_value_buffer(v517, qword_280E73DB0);
        v519 = v595;
        MEMORY[0x21CE9DD70](v349, v351, 0x6E6F74747562, 0xE600000000000000, v356, v518);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
        v520 = v596;
        v521 = (*(v596 + 80) + 32) & ~*(v596 + 80);
        v522 = swift_allocObject();
        *(v522 + 16) = xmmword_217013DA0;
        v523 = v522 + v521;
        v524 = v597;
        (*(v520 + 16))(v523, v519, v597);
        v525 = v593;
        v526 = v564;
        v527 = v594;
        (*(v593 + 16))(v592, v564, v594);
        v528 = v565;
        sub_21700D244();
        (*(v520 + 8))(v519, v524);
        (*(v525 + 8))(v526, v527);
        sub_2166997CC(v563, &qword_27CABA820, &unk_217018CE0);
        v529 = v640;
        v530 = v603;
        (*(*(v640 - 8) + 16))(v603, v641 + v244, v640);
        swift_storeEnumTagMultiPayload();
        v531 = v598;
        v532 = v601;
        v533 = v528;
        v534 = v617;
        (*(v598 + 16))(v601, v533, v617);
        v535 = v604;
        sub_2167A7DDC(v530, v532, v529, v634, v638, v604);
        __swift_project_boxed_opaque_existential_1(&v647, v648);
        v536 = v606;
        v645 = v606;
        WitnessTable = swift_getWitnessTable();
        v537 = __swift_allocate_boxed_opaque_existential_1(&v644);
        v538 = v605;
        v539 = (*(v605 + 16))(v537, v535, v536);
        v540 = v607;
        sub_216C0C548(v539, v541, v542, v543, v544, v545, v546, v547, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559);
        sub_217007544();
        (*(v608 + 8))(v540, v609);
        (*(v538 + 8))(v535, v536);
        (*(v531 + 8))(v565, v534);
        (v637[1].isa)(v618, v636);
        goto LABEL_96;
      }

      sub_2166997CC(&v644, &qword_27CAB7310, &unk_2170170F0);
      v503 = v635;
      v504 = v552;
      (*(v635 + 16))(v552, v130, v129);
      v505 = sub_217007C84();
      v506 = sub_21700ED84();
      if (os_log_type_enabled(v505, v506))
      {
        v507 = swift_slowAlloc();
        v508 = swift_slowAlloc();
        v647 = v508;
        *v507 = 136446210;
        sub_21700B934();
        (*(v503 + 8))(v504, v129);
        v509 = sub_21700BA54();
        v511 = v510;

        v512 = sub_2166A85FC(v509, v511, &v647);

        *(v507 + 4) = v512;
        __swift_destroy_boxed_opaque_existential_1Tm(v508);
        MEMORY[0x21CEA1440](v508, -1, -1);
        MEMORY[0x21CEA1440](v507, -1, -1);
      }

      else
      {
        (*(v503 + 8))(v504, v129);
      }

      v162 = v637[1].isa;
      v163 = v246;
LABEL_100:
      v306 = v636;
      return (v162)(v163, v306);
    }

    v404 = v246;
    v405 = v635;
    (*(v635 + 16))(v570, v130, v129);
    v406 = v566;
    v173 = v636;
    (v250)(v566, v404, v636);
    v407 = sub_217007C84();
    v408 = sub_21700ED84();
    if (os_log_type_enabled(v407, v408))
    {
      v409 = swift_slowAlloc();
      v641 = swift_slowAlloc();
      v647 = v641;
      *v409 = 136446466;
      v410 = v570;
      sub_21700B934();
      (*(v405 + 8))(v410, v129);
      v411 = sub_21700BA54();
      v413 = v412;

      v414 = sub_2166A85FC(v411, v413, &v647);

      *(v409 + 4) = v414;
      *(v409 + 12) = 2082;
      v415 = v566;
      (v250)(v573, v566, v636);
      v416 = sub_21700E594();
      v418 = v417;
      v302 = v637[1].isa;
      (v302)(v415, v636);
      v419 = sub_2166A85FC(v416, v418, &v647);
      v173 = v636;

      *(v409 + 14) = v419;
      _os_log_impl(&dword_216679000, v407, v408, "Library button download action not supported for item (id: %{public}s due to unknown status: %{public}s", v409, 0x16u);
      v420 = v641;
      swift_arrayDestroy();
      v251 = v599;
      MEMORY[0x21CEA1440](v420, -1, -1);
      MEMORY[0x21CEA1440](v409, -1, -1);
    }

    else
    {
      (*(v405 + 8))(v570, v129);

      v302 = v637[1].isa;
      (v302)(v406, v173);
    }

    (v302)(v618, v173);
    v358 = v251;
LABEL_86:
    v490 = v173;
    return (v302)(v358, v490);
  }

  if (v126 ^ 2 | v127)
  {
    goto LABEL_9;
  }

  sub_21700BE44();
  sub_21700BE34();
  v131 = *(v129 + 15);
  v132 = v585;
  sub_2170067D4();
  v133 = v623;
  v134 = v587;
  sub_21700BC04();

  (*(v586 + 8))(v132, v134);
  v135 = v616;
  v136 = *(v616 + 16);
  v137 = v600;
  v138 = v619;
  v136(v600, v133, v619);
  v139 = (*(v135 + 88))(v137, v138);
  v140 = v615;
  v141 = v614;
  if (v139 == *MEMORY[0x277D2B040])
  {
    (*(v135 + 96))(v137, v138);
    v142 = v590;
    (*(v141 + 32))(v590, v137, v140);
    v143 = v141;
    v144 = v635;
    v145 = v572;
    (*(v635 + 16))(v572, v130, v129);
    v146 = v574;
    v638 = *(v143 + 16);
    v638(v574, v142, v140);
    v147 = sub_217007C84();
    v148 = sub_21700EDA4();
    if (!os_log_type_enabled(v147, v148))
    {
      (*(v144 + 8))(v145, v129);

      v383 = *(v614 + 8);
      v384 = v615;
      v383(v146, v615);
      v383(v590, v384);
      return (*(v616 + 8))(v623, v138);
    }

    v149 = swift_slowAlloc();
    v641 = swift_slowAlloc();
    v647 = v641;
    *v149 = 136446466;
    sub_21700B934();
    v150 = v146;
    (*(v144 + 8))(v145, v129);
    v151 = sub_21700BA54();
    v153 = v152;

    v154 = sub_2166A85FC(v151, v153, &v647);

    *(v149 + 4) = v154;
    *(v149 + 12) = 2082;
    v155 = v615;
    v638(v560, v146, v615);
    v156 = sub_21700E594();
    v158 = v157;
    v159 = *(v614 + 8);
    v159(v150, v155);
    v160 = sub_2166A85FC(v156, v158, &v647);

    *(v149 + 14) = v160;
    _os_log_impl(&dword_216679000, v147, v148, "Library button removeFromLibrary action not supported for item (id: %{public}s for reason: %{public}s", v149, 0x16u);
    v161 = v641;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v161, -1, -1);
    MEMORY[0x21CEA1440](v149, -1, -1);

    v159(v590, v155);
    v162 = *(v616 + 8);
    v163 = v623;
    p_WitnessTable = &WitnessTable;
    goto LABEL_42;
  }

  if (v139 != *MEMORY[0x277D2B048])
  {
    v385 = v635;
    (*(v635 + 16))(v571, v130, v129);
    v386 = v559;
    v136(v559, v623, v138);
    v387 = sub_217007C84();
    v388 = sub_21700ED84();
    if (os_log_type_enabled(v387, v388))
    {
      v389 = swift_slowAlloc();
      v641 = swift_slowAlloc();
      v647 = v641;
      *v389 = 136446466;
      LODWORD(v638) = v388;
      v637 = v387;
      v390 = v571;
      sub_21700B934();
      v391 = v386;
      (*(v385 + 8))(v390, v129);
      v392 = sub_21700BA54();
      v394 = v393;

      v395 = sub_2166A85FC(v392, v394, &v647);

      *(v389 + 4) = v395;
      *(v389 + 12) = 2082;
      v136(v554, v386, v619);
      v396 = sub_21700E594();
      v398 = v397;
      v302 = *(v135 + 8);
      (v302)(v391, v619);
      v399 = sub_2166A85FC(v396, v398, &v647);

      *(v389 + 14) = v399;
      v400 = v637;
      _os_log_impl(&dword_216679000, v637, v638, "Library button removeFromLibrary action not supported for item (id: %{public}s due to unknown status: %{public}s", v389, 0x16u);
      v401 = v641;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v401, -1, -1);
      v402 = v389;
      v138 = v619;
      MEMORY[0x21CEA1440](v402, -1, -1);
    }

    else
    {
      (*(v385 + 8))(v571, v129);

      v302 = *(v135 + 8);
      (v302)(v386, v138);
    }

    (v302)(v623, v138);
    v358 = v600;
    v490 = v138;
    return (v302)(v358, v490);
  }

  sub_216C0C534(&v644);
  v330 = v623;
  if (v645)
  {
    sub_2167B8EF0(&v644, &v647);
    v331 = v640;
    v332 = v130 + v131;
    v333 = v603;
    (*(*(v640 - 8) + 16))(v603, v332, v640);
    swift_storeEnumTagMultiPayload();
    v334 = v601;
    sub_21700D234();
    v335 = v604;
    sub_2167A7DDC(v333, v334, v331, v634, v638, v604);
    __swift_project_boxed_opaque_existential_1(&v647, v648);
    v336 = v606;
    v645 = v606;
    WitnessTable = swift_getWitnessTable();
    v337 = __swift_allocate_boxed_opaque_existential_1(&v644);
    v338 = v605;
    v339 = (*(v605 + 16))(v337, v335, v336);
    v340 = v135;
    v341 = v607;
    sub_216C0C548(v339, v342, v343, v344, v345, v346, v347, v348, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559);
    sub_217007544();
    (*(v608 + 8))(v341, v609);
    (*(v338 + 8))(v335, v336);
    (*(v340 + 8))(v330, v619);
LABEL_96:
    __swift_destroy_boxed_opaque_existential_1Tm(&v644);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v647);
  }

  sub_2166997CC(&v644, &qword_27CAB7310, &unk_2170170F0);
  v491 = v635;
  v492 = v553;
  (*(v635 + 16))(v553, v130, v129);
  v493 = sub_217007C84();
  v494 = sub_21700ED84();
  if (os_log_type_enabled(v493, v494))
  {
    v495 = swift_slowAlloc();
    v496 = v330;
    v497 = v135;
    v498 = swift_slowAlloc();
    v647 = v498;
    *v495 = 136446210;
    sub_21700B934();
    (*(v491 + 8))(v492, v129);
    v499 = sub_21700BA54();
    v501 = v500;

    v502 = sub_2166A85FC(v499, v501, &v647);

    *(v495 + 4) = v502;
    __swift_destroy_boxed_opaque_existential_1Tm(v498);
    MEMORY[0x21CEA1440](v498, -1, -1);
    MEMORY[0x21CEA1440](v495, -1, -1);

    return (*(v497 + 8))(v496, v619);
  }

  else
  {
    (*(v491 + 8))(v492, v129);

    return (*(v135 + 8))(v330, v138);
  }
}

uint64_t sub_216A392D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_216A392E8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for LibraryButtonView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_216A34CA0(v6, v1, v2, v3, v4);
}

unint64_t sub_216A3938C()
{
  result = qword_27CAC03E0;
  if (!qword_27CAC03E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC03E8, &unk_217037DD8);
    sub_216A39440(&qword_27CAC03F0, MEMORY[0x277D269C8], MEMORY[0x277D269C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC03E0);
  }

  return result;
}

uint64_t sub_216A39440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Dictionary.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  sub_21700CCB4();
  v10 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2169CADB0(v9);
LABEL_5:
    v11 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v15 = v14;
    v16 = sub_21700E3F4();
    v17 = MEMORY[0x277D84F90];
    *v15 = v16;
    v15[1] = v17;
    (*(*(v11 - 8) + 104))(v15, *MEMORY[0x277D22538], v11);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(a2);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v19 + 8))(a1);
    return v11;
  }

  v11 = sub_21700D3D4();
  (*(*(v10 - 8) + 8))(v9, v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(a1);
  return v11;
}

uint64_t sub_216A39700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary.init(deserializing:using:)(a1, a2, a3[2], a3[3], a3[4]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t String.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CDB4();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v9 = MEMORY[0x277D84F90];
    *v10 = MEMORY[0x277D837D0];
    v10[1] = v9;
    (*(*(v6 - 8) + 104))(v10, *MEMORY[0x277D22538], v6);
    swift_willThrow();
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v7 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(a1);
  return v6;
}

uint64_t sub_216A398C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = String.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t Optional<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v34 = *(a3 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  if (sub_21700CDA4())
  {
    v25 = OUTLINED_FUNCTION_2_80();
    v26(v25);
    v27 = OUTLINED_FUNCTION_1_100();
    v28(v27);
    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }

  else
  {
    (*(v16 + 16))(v20, a1, v14);
    (*(v9 + 16))(v13, a2, v7);
    sub_21700D714();
    v30 = OUTLINED_FUNCTION_2_80();
    v31(v30);
    v32 = OUTLINED_FUNCTION_1_100();
    if (v36)
    {
      return v33(v32);
    }

    else
    {
      v33(v32);
      (*(v34 + 32))(a5, v24, a3);
      return __swift_storeEnumTagSinglePayload(a5, 0, 1, a3);
    }
  }
}

uint64_t StartSocialOnboardingAction.init(preferredFlowAction:actionMetrics:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_21700D284();
  (*(*(v6 - 8) + 32))(a3, a2, v6);
  result = type metadata accessor for StartSocialOnboardingAction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t StartSocialOnboardingAction.FlowActionType.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t StartSocialOnboardingAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StartSocialOnboardingAction.preferredFlowAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartSocialOnboardingAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t StartSocialOnboardingAction.preferredFlowAction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartSocialOnboardingAction(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

unint64_t sub_216A39DCC()
{
  result = qword_27CAC03F8;
  if (!qword_27CAC03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC03F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartSocialOnboardingAction.FlowActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_216A39F28()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_0_117();
  v1 = sub_21700E4D4();
  v2 = [v0 BOOLForKey_];

  byte_280E73A80 = v2;
}

double sub_216A39FAC()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = (*(v0 + 40) + 24.0 + -24.0) * 0.25;
  *(v0 + 56) = result;
  *(v0 + 64) = 0;
  return result;
}

uint64_t sub_216A39FE4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v81 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_7();
  v74 = v13 - v12;
  v14 = type metadata accessor for MarketingAlbumArtworkGridModel.Data(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_7();
  v73 = v17 - v16;
  v18 = sub_21700C4B4();
  v75 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v22 = (v5 + 48);
  *(v5 + 64) = 1;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  v23 = objc_opt_self();
  v24 = sub_21700E344();

  v76 = 0;
  v25 = [v23 dataWithJSONObject:v24 options:4 error:&v76];

  v26 = v76;
  v27 = 0x27CAB5000uLL;
  if (v25)
  {
    v72 = v15;
    v28 = v6;
    v29 = sub_217005FB4();
    v31 = v30;

    sub_217005894();
    swift_allocObject();
    sub_217005884();
    sub_216A3C5E8();
    sub_217005874();

    v47 = v76;
    v48 = v76[2];
    if (v48)
    {
      v69 = v31;
      v70 = v22;
      v71 = v28;
      v80 = MEMORY[0x277D84F90];
      sub_216AB9A80(0, v48, 0);
      v49 = v80;
      v50 = v47 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v51 = *(v72 + 72);
      v52 = (v75 + 32);
      do
      {
        sub_216A3C63C(v50, v73);
        sub_216A3C8F0(v73, v74, type metadata accessor for MarketingAlbumArtworkGridModel.Attributes);
        v53 = *v52;
        (*v52)(v21, v74, v18);
        v80 = v49;
        v55 = *(v49 + 16);
        v54 = *(v49 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_216AB9A80(v54 > 1, v55 + 1, 1);
          v49 = v80;
        }

        *(v49 + 16) = v55 + 1;
        v53(v49 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, v21, v18);
        v50 += v51;
        --v48;
      }

      while (v48);
      sub_21677A524(v29, v69);

      v6 = v71;
      v22 = v70;
      v27 = 0x27CAB5000;
    }

    else
    {

      sub_21677A524(v29, v31);
      v49 = MEMORY[0x277D84F90];
      v6 = v28;
    }

    swift_beginAccess();
    *v22 = v49;
  }

  else
  {
    v32 = v26;
    v33 = sub_217005D34();

    swift_willThrow();
    if (qword_27CAB5C30 != -1)
    {
      OUTLINED_FUNCTION_1_101(&qword_27CAB5C30);
    }

    v34 = sub_217007CA4();
    __swift_project_value_buffer(v34, qword_27CAC0400);
    v35 = v33;
    v36 = sub_217007C84();
    v37 = sub_21700ED84();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v22;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v39 = 136446210;
      v80 = v33;
      v41 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
      v42 = sub_21700E594();
      v44 = sub_2166A85FC(v42, v43, &v76);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_216679000, v36, v37, "Could not parse artworks=%{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v45 = v40;
      v27 = 0x27CAB5000uLL;
      MEMORY[0x21CEA1440](v45, -1, -1);
      v46 = v39;
      v22 = v38;
      MEMORY[0x21CEA1440](v46, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (*v22)
  {
    v56 = *(*v22 + 16);
    if (v56 >= 0xF)
    {
      swift_beginAccess();
      v57 = *v22;
      v58 = *(*v22 + 16);
      if (v58)
      {
        sub_216A73E6C(1uLL, v58, *v22);
        v76 = v59;
        v77 = v60;
        v78 = v61;
        v79 = v62;
        sub_216A3C088();
        v63 = *(v57 + 16);
        if (v63)
        {
          sub_216A3C49C(v76, v77, v78, v79, 1uLL, v63);
          swift_endAccess();
          return v6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    v56 = 0;
  }

  if (*(v27 + 3120) != -1)
  {
    OUTLINED_FUNCTION_1_101(&qword_27CAB5C30);
  }

  v64 = sub_217007CA4();
  __swift_project_value_buffer(v64, qword_27CAC0400);
  v65 = sub_217007C84();
  v66 = sub_21700ED84();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134349056;
    *(v67 + 4) = v56;
    _os_log_impl(&dword_216679000, v65, v66, "Missing artwork, received dictionaries count=%{public}ld", v67, 0xCu);
    MEMORY[0x21CEA1440](v67, -1, -1);
  }

  return v6;
}

uint64_t sub_216A3A744(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A3A7E8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0458, &qword_2170380D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C7A0();
  sub_21700F974();
  v9[1] = a2;
  sub_216A3C848();
  sub_21700F764();
  return (*(v5 + 8))(v7, v4);
}

void *sub_216A3A930(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0440, &qword_2170380C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C7A0();
  sub_21700F964();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_216A3C7F4();
    sub_21700F6A4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_216A3AAA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A3AB30(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0510, &qword_2170384A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3CD4C();
  sub_21700F974();
  v9[1] = a2;
  sub_216A3CDF4();
  sub_21700F764();
  return (*(v5 + 8))(v7, v4);
}

void *sub_216A3AC78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC04F8, &qword_2170384A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3CD4C();
  sub_21700F964();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_216A3CDA0();
    sub_21700F6A4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_216A3ADE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A3AE70(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0560, &qword_217038648);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3CF70();
  sub_21700F974();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0548, &qword_217038640);
  sub_216A3CFC4(&qword_27CAC0568, &qword_27CAC0570, &unk_217038028, MEMORY[0x277D83948]);
  sub_21700F764();
  return (*(v5 + 8))(v7, v4);
}

void *sub_216A3B004(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0538, &qword_217038638);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3CF70();
  sub_21700F964();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0548, &qword_217038640);
    sub_216A3CFC4(&qword_27CAC0550, &qword_27CAC0558, &unk_217038050, MEMORY[0x277D83978]);
    sub_21700F6A4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_216A3B1C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A3B25C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0480, &qword_2170380E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C89C();
  sub_21700F974();
  type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(0);
  sub_216A3C958(&qword_27CAC0488, type metadata accessor for MarketingAlbumArtworkGridModel.Attributes, &unk_217037FD8);
  sub_21700F764();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_216A3B3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0468, &qword_2170380D8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MarketingAlbumArtworkGridModel.Data(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C89C();
  sub_21700F964();
  if (!v2)
  {
    v12 = v15;
    sub_216A3C958(&qword_27CAC0478, type metadata accessor for MarketingAlbumArtworkGridModel.Attributes, &unk_217038000);
    v13 = v17;
    sub_21700F6A4();
    (*(v16 + 8))(v8, v6);
    sub_216A3C8F0(v13, v11, type metadata accessor for MarketingAlbumArtworkGridModel.Attributes);
    sub_216A3C8F0(v11, v12, type metadata accessor for MarketingAlbumArtworkGridModel.Data);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_216A3B648(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A3B6D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC04A0, &qword_2170380F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C9A0();
  sub_21700F974();
  sub_21700C4B4();
  sub_216A3C958(&qword_27CAC04A8, MEMORY[0x277CD8460], MEMORY[0x277CD8468]);
  sub_21700F764();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_216A3B850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_21700C4B4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0490, &qword_2170380E8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A3C9A0();
  sub_21700F964();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_216A3C958(&qword_280E2A398, MEMORY[0x277CD8460], MEMORY[0x277CD8480]);
    sub_21700F6A4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_216A3C8F0(v11, v13, type metadata accessor for MarketingAlbumArtworkGridModel.Attributes);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_216A3BAEC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0400);
  __swift_project_value_buffer(v0, qword_27CAC0400);
  return sub_217007C94();
}

uint64_t sub_216A3BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A3A744(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A3BB9C(uint64_t a1)
{
  v2 = sub_216A3C7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A3BBD8(uint64_t a1)
{
  v2 = sub_216A3C7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_216A3BC14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_216A3A930(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216A3BC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A3AAA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A3BC8C(uint64_t a1)
{
  v2 = sub_216A3CD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A3BCC8(uint64_t a1)
{
  v2 = sub_216A3CD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_216A3BD04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_216A3AC78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216A3BD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A3ADE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A3BD7C(uint64_t a1)
{
  v2 = sub_216A3CF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A3BDB8(uint64_t a1)
{
  v2 = sub_216A3CF70();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_216A3BDF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_216A3B004(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216A3BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A3B1C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A3BE6C(uint64_t a1)
{
  v2 = sub_216A3C89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A3BEA8(uint64_t a1)
{
  v2 = sub_216A3C89C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A3BF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A3B648(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A3BF44(uint64_t a1)
{
  v2 = sub_216A3C9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A3BF80(uint64_t a1)
{
  v2 = sub_216A3C9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A3BFEC()
{

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216A3C088()
{
  v43 = sub_21700C4B4();
  v36 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v41 = v35 - v4;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
LABEL_47:
    __break(1u);
    return;
  }

  if (v7 >= 2)
  {
    v35[1] = v36 + 16;
    v8 = v6;
    v39 = (v36 + 40);
    while (1)
    {
      v44 = v8;
      v45 = 0;
      MEMORY[0x21CEA1460](&v45, 8, v3);
      v9 = (v45 * v7) >> 64;
      if (v7 > v45 * v7)
      {
        v10 = -v7 % v7;
        if (v10 > v45 * v7)
        {
          do
          {
            v45 = 0;
            MEMORY[0x21CEA1460](&v45, 8);
          }

          while (v10 > v45 * v7);
          v9 = (v45 * v7) >> 64;
        }
      }

      v11 = v6 + v9;
      v8 = v44;
      if (__OFADD__(v6, v9))
      {
        break;
      }

      if (v6 != v11)
      {
        v12 = v6 >= v44 && v6 < (v5 >> 1);
        if (!v12)
        {
          goto LABEL_43;
        }

        v13 = v5;
        v14 = *(v0 + 8);
        v42 = v5 >> 1;
        v15 = *(v36 + 72);
        v16 = v43;
        v17 = *(v36 + 16);
        v38 = v15 * v6;
        v17(v41, v14 + v15 * v6, v43);
        if (v11 < v44 || v11 >= v42)
        {
          goto LABEL_44;
        }

        v37 = v15 * v11;
        v17(v40, v14 + v15 * v11, v16);
        v19 = *v0;
        v5 = v13;
        if (v13 & 1) != 0 && (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *v0 = v19, (isUniquelyReferenced_nonNull))
        {
          v21 = v39;
          v8 = v44;
          v22 = v42;
        }

        else
        {
          sub_216A3C3AC(v19, *(v0 + 8), *(v0 + 16), *(v0 + 24));
          v19 = v23;
          v14 = v24;
          v8 = v25;
          v5 = v26;
          *(v0 + 8) = v24;
          *(v0 + 16) = v25;
          *(v0 + 24) = v26;
          v22 = v26 >> 1;
          v21 = v39;
        }

        if (v6 < v8 || v6 >= v22)
        {
          goto LABEL_45;
        }

        v28 = *v21;
        (*v21)(v14 + v38, v40, v43);
        if ((v5 & 1) == 0)
        {
          sub_216A3C3AC(v19, v14, v8, v5);
          v19 = v29;
          v14 = v30;
          v8 = v31;
          *(v0 + 8) = v30;
          *(v0 + 16) = v31;
          *(v0 + 24) = v32;
          v5 = v32;
          v22 = v32 >> 1;
        }

        if (v11 < v8 || v11 >= v22)
        {
          goto LABEL_46;
        }

        v28(v14 + v37, v41, v43);
        *v0 = v19;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_42;
      }

      v12 = v7-- <= 2;
      if (v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }
}

void sub_216A3C3AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_216AB8BD0((a4 >> 1) - a3, (a4 >> 1) - a3);
  if (v4 < a3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_21700C4B4();
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();

  sub_2168A1358(v7, a3);
}

void sub_216A3C49C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v6;
  v10 = *(*v6 + 16);
  if (v10 < a5 || v10 < a6)
  {
    goto LABEL_20;
  }

  if (a6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(sub_21700C4B4() - 8);
  if (v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a5 != a2 + *(v15 + 72) * a3)
  {
LABEL_13:

    sub_216DD3D78();
    return;
  }

  if ((a4 >> 1) < a3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

unint64_t sub_216A3C5E8()
{
  result = qword_27CAC0418;
  if (!qword_27CAC0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0418);
  }

  return result;
}

uint64_t sub_216A3C63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAlbumArtworkGridModel.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A3C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A3C7A0()
{
  result = qword_27CAC0448;
  if (!qword_27CAC0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0448);
  }

  return result;
}

unint64_t sub_216A3C7F4()
{
  result = qword_27CAC0450;
  if (!qword_27CAC0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0450);
  }

  return result;
}

unint64_t sub_216A3C848()
{
  result = qword_27CAC0460;
  if (!qword_27CAC0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0460);
  }

  return result;
}

unint64_t sub_216A3C89C()
{
  result = qword_27CAC0470;
  if (!qword_27CAC0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0470);
  }

  return result;
}

uint64_t sub_216A3C8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_216A3C958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A3C9A0()
{
  result = qword_27CAC0498;
  if (!qword_27CAC0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0498);
  }

  return result;
}

unint64_t sub_216A3CA38()
{
  result = qword_27CAC04B0;
  if (!qword_27CAC04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04B0);
  }

  return result;
}

unint64_t sub_216A3CA90()
{
  result = qword_27CAC04B8;
  if (!qword_27CAC04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04B8);
  }

  return result;
}

unint64_t sub_216A3CAE8()
{
  result = qword_27CAC04C0;
  if (!qword_27CAC04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04C0);
  }

  return result;
}

unint64_t sub_216A3CB40()
{
  result = qword_27CAC04C8;
  if (!qword_27CAC04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04C8);
  }

  return result;
}

unint64_t sub_216A3CB98()
{
  result = qword_27CAC04D0;
  if (!qword_27CAC04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04D0);
  }

  return result;
}

unint64_t sub_216A3CBF0()
{
  result = qword_27CAC04D8;
  if (!qword_27CAC04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04D8);
  }

  return result;
}

unint64_t sub_216A3CC48()
{
  result = qword_27CAC04E0;
  if (!qword_27CAC04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04E0);
  }

  return result;
}

unint64_t sub_216A3CCA0()
{
  result = qword_27CAC04E8;
  if (!qword_27CAC04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04E8);
  }

  return result;
}

unint64_t sub_216A3CCF8()
{
  result = qword_27CAC04F0;
  if (!qword_27CAC04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC04F0);
  }

  return result;
}

unint64_t sub_216A3CD4C()
{
  result = qword_27CAC0500;
  if (!qword_27CAC0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0500);
  }

  return result;
}

unint64_t sub_216A3CDA0()
{
  result = qword_27CAC0508;
  if (!qword_27CAC0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0508);
  }

  return result;
}

unint64_t sub_216A3CDF4()
{
  result = qword_27CAC0518;
  if (!qword_27CAC0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0518);
  }

  return result;
}

unint64_t sub_216A3CE6C()
{
  result = qword_27CAC0520;
  if (!qword_27CAC0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0520);
  }

  return result;
}

unint64_t sub_216A3CEC4()
{
  result = qword_27CAC0528;
  if (!qword_27CAC0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0528);
  }

  return result;
}

unint64_t sub_216A3CF1C()
{
  result = qword_27CAC0530;
  if (!qword_27CAC0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0530);
  }

  return result;
}

unint64_t sub_216A3CF70()
{
  result = qword_27CAC0540;
  if (!qword_27CAC0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0540);
  }

  return result;
}

uint64_t sub_216A3CFC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0548, &qword_217038640);
    sub_216A3C958(a2, type metadata accessor for MarketingAlbumArtworkGridModel.Data, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_216A3D060(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A3D110()
{
  result = qword_27CAC0578;
  if (!qword_27CAC0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0578);
  }

  return result;
}

unint64_t sub_216A3D168()
{
  result = qword_27CAC0580;
  if (!qword_27CAC0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0580);
  }

  return result;
}

unint64_t sub_216A3D1C0()
{
  result = qword_27CAC0588;
  if (!qword_27CAC0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0588);
  }

  return result;
}

uint64_t NowPlayingItemMediaKind.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_216A3D2B0()
{
  result = qword_27CAC0590;
  if (!qword_27CAC0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NowPlayingItemMediaKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216A3D3E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v67 = a2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v60 = v22;
  v61 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v12 + 16);
  v64 = a1;
  v26(v20, a1, v10, v23);
  v27 = v67;
  (*(v6 + 16))(v9);
  v28 = v63;
  sub_21700D224();
  if (v28)
  {
    (*(v6 + 8))(v27, v4);
    return (*(v12 + 8))(v64, v10);
  }

  else
  {
    v58 = v6;
    v63 = v4;
    (*(v60 + 32))(v62, v25, v61);
    v30 = v64;
    sub_21700CE04();
    v31 = sub_21700CDB4();
    v34 = *(v12 + 8);
    v33 = (v12 + 8);
    v32 = v34;
    v35 = v17;
    v37 = v36;
    v34(v35, v10);
    if (v37)
    {
      v38 = type metadata accessor for RemoveItemAction(0);
      v39 = v37;
      v40 = v38;
      v41 = (v62 + *(v38 + 20));
      *v41 = v31;
      v41[1] = v39;
      v57 = v39;
      v42 = v59;
      sub_21700CE04();
      v43 = sub_21700CDB4();
      v45 = v44;
      v32(v42, v10);
      if (v45)
      {
        v65 = v43;
        v66 = v45;
        sub_21700F364();
        (*(v58 + 8))(v67, v63);
        return (v32)(v30, v10);
      }

      v59 = v33;
      v46 = v30;
      v54 = sub_21700E2E4();
      v55 = sub_2167B1EA4();
      OUTLINED_FUNCTION_3_0(v55);
      strcpy(v56, "itemIdentifier");
      v56[15] = -18;
      *(v56 + 2) = v40;
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
      v52 = v67;
      v53 = v63;
      v37 = v57;
    }

    else
    {
      v59 = v33;
      v46 = v30;
      v47 = sub_21700E2E4();
      v48 = sub_2167B1EA4();
      OUTLINED_FUNCTION_3_0(v48);
      v50 = v49;
      v51 = type metadata accessor for RemoveItemAction(0);
      *v50 = 0xD000000000000011;
      v50[1] = 0x8000000217083540;
      v50[2] = v51;
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D22530], v47);
      v52 = v67;
      v53 = v63;
    }

    swift_willThrow();
    (*(v58 + 8))(v52, v53);
    v32(v46, v10);
    result = (*(v60 + 8))(v62, v61);
    if (v37)
    {
      type metadata accessor for RemoveItemAction(0);
    }
  }

  return result;
}

uint64_t type metadata accessor for RemoveItemAction(uint64_t a1)
{
  result = qword_280E40930;
  if (!qword_280E40930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A3D9A4(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216A3DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a2;
  v6[7] = a4;
  v6[5] = a1;
  v7 = sub_21700F524();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_21700F514();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_21700EA34();
  v6[17] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v6[18] = v10;
  v6[19] = v9;

  return MEMORY[0x2822009F8](sub_216A3DBA4, v10, v9);
}

uint64_t sub_216A3DBA4()
{
  if ((sub_216AF3C9C() & 1) == 0)
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);

    type metadata accessor for DismissModalPresentationActionImplementation.DismissModalPresentationError(0, v6, v7, v8);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_3();
    goto LABEL_5;
  }

  v1 = *(v0 + 48);
  if (*(v1 + *(type metadata accessor for DismissModalPresentationAction(0) + 20) + 8))
  {

    v2 = *(v0 + 40);
    v3 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v4 + 104))(v2, v3);

    OUTLINED_FUNCTION_3();
LABEL_5:

    return v5();
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_21700F4F4();
  sub_21700F984();
  sub_21700F504();
  v13 = *(v12 + 8);
  *(v0 + 160) = v13;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_21700F854();
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  v15 = sub_216A3E2C0(qword_27CAC0598, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v14 = v0;
  v14[1] = sub_216A3DE50;
  v16 = *(v0 + 128);
  v17 = *(v0 + 96);
  v18 = *(v0 + 80);

  return MEMORY[0x282200488](v16, v0 + 16, v17, v18, v15);
}

uint64_t sub_216A3DE50()
{
  v4 = *v2;
  *(*v2 + 184) = v0;

  v5 = OUTLINED_FUNCTION_1_102();
  v6(v5);
  if (v0)
  {
    v3(v0, v1);
    v7 = *(v4 + 144);
    v8 = *(v4 + 152);
    v9 = sub_216A3E07C;
  }

  else
  {
    v3(0, v1);
    v7 = *(v4 + 144);
    v8 = *(v4 + 152);
    v9 = sub_216A3DFAC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A3DFAC()
{

  v1 = *(v0 + 40);
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v3 + 104))(v1, v2);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216A3E07C()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A3E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2167AF644;

  return sub_216A3DA40(a1, a2, v10, v9, v12, v13);
}

uint64_t sub_216A3E1B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A3E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216A3E2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_216A3E308(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PlayGenericMusicItemCollectionAction.ShuffleMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216A3E4C8()
{
  result = qword_27CAC0620;
  if (!qword_27CAC0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0620);
  }

  return result;
}

unint64_t sub_216A3E530()
{
  result = qword_280E33BB8;
  if (!qword_280E33BB8)
  {
    type metadata accessor for FollowRequestResponseAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E33BB8);
  }

  return result;
}

uint64_t sub_216A3E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[15] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[16] = v5;
  v3[17] = OUTLINED_FUNCTION_80();
  v6 = sub_21700DA84();
  v3[18] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[19] = v7;
  v3[20] = OUTLINED_FUNCTION_80();
  v8 = sub_217006224();
  v3[21] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[22] = v9;
  v3[23] = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v10);
  v3[24] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v11);
  v3[25] = OUTLINED_FUNCTION_80();
  v12 = type metadata accessor for FlowAction.Destination(0);
  v3[26] = v12;
  OUTLINED_FUNCTION_36(v12);
  v3[27] = OUTLINED_FUNCTION_80();
  v13 = sub_21700D284();
  v3[28] = v13;
  OUTLINED_FUNCTION_2(v13);
  v3[29] = v14;
  v3[30] = OUTLINED_FUNCTION_80();
  v15 = type metadata accessor for FlowAction(0);
  v3[31] = v15;
  OUTLINED_FUNCTION_36(v15);
  v3[32] = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v16);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v17 = sub_217005EF4();
  v3[36] = v17;
  OUTLINED_FUNCTION_2(v17);
  v3[37] = v18;
  v3[38] = OUTLINED_FUNCTION_80();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[39] = v19;
  OUTLINED_FUNCTION_2(v19);
  v3[40] = v20;
  v3[41] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[42] = sub_21700EA24();
  v22 = sub_21700E9B4();
  v3[43] = v22;
  v3[44] = v21;

  return MEMORY[0x2822009F8](sub_216A3E9E8, v22, v21);
}

uint64_t sub_216A3E9E8()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v4 = type metadata accessor for PerformPlaylistCollaborationRequestAction(0);
  sub_217005ED4();
  sub_2167A6724(v3, v2, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 328);
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);
    v8 = *(v0 + 280);

    sub_216846CF0(v8);
    sub_216A3F530();
    swift_allocError();
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    OUTLINED_FUNCTION_2_81();

    OUTLINED_FUNCTION_3();

    return v9();
  }

  else
  {
    v11 = *(v0 + 296);
    v32 = *(v0 + 288);
    v33 = *(v0 + 304);
    v12 = *(v0 + 256);
    v47 = *(v0 + 264);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v34 = *(v0 + 216);
    v36 = v14;
    v48 = *(v0 + 200);
    v46 = *(v0 + 192);
    v37 = *(v0 + 184);
    v38 = *(v0 + 176);
    v39 = *(v0 + 168);
    v40 = *(v0 + 144);
    v41 = *(v0 + 160);
    v42 = *(v0 + 152);
    v43 = *(v0 + 136);
    v44 = *(v0 + 128);
    v45 = *(v0 + 120);
    v17 = *(v0 + 104);
    (*(v11 + 32))();
    v35 = *(v15 + 16);
    v35(v14, v17, v16);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80) + 48);
    sub_216A3F5CC(v17 + *(v4 + 24), v34, type metadata accessor for ContentDescriptor);
    (*(v11 + 16))(v34 + v18, v33, v32);
    swift_storeEnumTagMultiPayload();
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v32);
    v19 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v19);
    v20 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v20);
    v21 = v12 + v13[10];
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v35(v12, v36, v16);
    sub_216A3F5CC(v34, v12 + v13[5], type metadata accessor for FlowAction.Destination);
    sub_217006214();
    v22 = sub_2170061F4();
    v24 = v23;
    (*(v38 + 8))(v37, v39);
    sub_2167B96B4(v34, type metadata accessor for FlowAction.Destination);
    (*(v15 + 8))(v36, v16);
    v25 = (v12 + v13[6]);
    *v25 = v22;
    v25[1] = v24;
    *(v12 + v13[7]) = 0;
    sub_2167A66B4(v0 + 16, v21);
    sub_2167A6724(v47, v12 + v13[8], &qword_27CABA820, &unk_217018CE0);
    sub_2167A6724(v48, v12 + v13[11], &qword_27CAB6BF0, &unk_217015620);
    sub_2167A6724(v46, v12 + v13[9], &qword_27CAB6FD0, &qword_21701D5F0);
    sub_21700E094();
    *(v0 + 80) = v13;
    *(v0 + 88) = sub_216A3F584(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_216A3F5CC(v12, boxed_opaque_existential_1, type metadata accessor for FlowAction);
    (*(v42 + 16))(v43, v41, v40);
    (*(v44 + 104))(v43, *MEMORY[0x277D21E10], v45);
    v27 = swift_task_alloc();
    *(v0 + 360) = v27;
    *v27 = v0;
    v27[1] = sub_216A3EFCC;
    v28 = *(v0 + 312);
    v29 = *(v0 + 136);
    v30 = *(v0 + 112);
    v31 = *(v0 + 96);

    return MEMORY[0x28217F468](v31, v0 + 56, v29, v30, v28);
  }
}

uint64_t sub_216A3EFCC()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_216A3F294;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_216A3F118;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216A3F118()
{
  v1 = v0[41];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v13 = v0[39];
  v6 = v0[32];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v6, v10);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v13);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216A3F294()
{
  v13 = v0[41];
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[32];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];

  (*(v7 + 8))(v8, v9);
  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v6, v10);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_2_81();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216A3F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2167AF644;

  return sub_216A3E680(a1, a2, a3);
}

unint64_t sub_216A3F4BC(uint64_t a1)
{
  result = sub_2166DC150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A3F530()
{
  result = qword_27CAC0628;
  if (!qword_27CAC0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0628);
  }

  return result;
}

uint64_t sub_216A3F584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A3F5CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PerformPlaylistCollaborationRequestActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A3F6DC()
{
  result = qword_27CAC0630;
  if (!qword_27CAC0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0630);
  }

  return result;
}

uint64_t sub_216A3F730@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  v12 = v11 == *MEMORY[0x277D2A400] || v11 == *MEMORY[0x277D2A418];
  if (v12 || (v11 != *MEMORY[0x277D2A438] ? (v13 = v11 == *MEMORY[0x277D2A3C8]) : (v13 = 1), !v13 ? (v14 = v11 == *MEMORY[0x277D2A428]) : (v14 = 1), !v14 ? (v15 = v11 == *MEMORY[0x277D2A388]) : (v15 = 1), !v15 ? (v16 = v11 == *MEMORY[0x277D2A408]) : (v16 = 1), !v16 ? (v17 = v11 == *MEMORY[0x277D2A3B0]) : (v17 = 1), !v17 ? (v18 = v11 == *MEMORY[0x277D2A3B8]) : (v18 = 1), !v18 ? (v19 = v11 == *MEMORY[0x277D2A440]) : (v19 = 1), !v19 ? (v20 = v11 == *MEMORY[0x277D2A450]) : (v20 = 1), !v20 ? (v21 = v11 == *MEMORY[0x277D2A3C0]) : (v21 = 1), !v21 ? (v22 = v11 == *MEMORY[0x277D2A3D0]) : (v22 = 1), !v22 ? (v23 = v11 == *MEMORY[0x277D2A3F8]) : (v23 = 0), v23))
  {
    (*(v7 + 8))(v10, v6);
    (*(v7 + 32))(a3, a1, v6);
    v27 = *(type metadata accessor for CreateGenericMusicItemStationAction(0) + 20);
    v28 = sub_21700D284();
    return (*(*(v28 - 8) + 32))(a3 + v27, a2, v28);
  }

  else
  {
    v24 = *(v7 + 8);
    v24(v10, v6);
    sub_216A3FA28();
    swift_allocError();
    swift_willThrow();
    v25 = sub_21700D284();
    (*(*(v25 - 8) + 8))(a2, v25);
    return (v24)(a1, v6);
  }
}

unint64_t sub_216A3FA28()
{
  result = qword_27CAC0638;
  if (!qword_27CAC0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CreateGenericMusicItemStationAction.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A3FB54()
{
  result = qword_27CAC0640;
  if (!qword_27CAC0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0640);
  }

  return result;
}

uint64_t sub_216A3FBA8()
{

  v1 = OBJC_IVAR____TtC7MusicUI31ContainerDetailFocusCoordinator___observationRegistrar;
  v2 = sub_217006714();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ContainerDetailFocusCoordinator(uint64_t a1)
{
  result = qword_27CAC0650;
  if (!qword_27CAC0650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A3FCA0(uint64_t a1)
{
  result = sub_217006714();
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

uint64_t sub_216A3FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_2166A6EA4();
  v13 = sub_21700EA74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v12, &unk_27CABFAC0, &qword_21701B9F0);
  }

  else
  {
    sub_21700EA64();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21700E9B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21700E5D4();
      sub_216A4ACE0(v19 + 32, v23);

      v20 = v23[0];
      sub_216697664(a3, &unk_27CABFAC0, &qword_21701B9F0);

      return v20;
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

  sub_216697664(a3, &unk_27CABFAC0, &qword_21701B9F0);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_216A40014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_0_1();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v10 = Strong, , v10 != a1) || (OUTLINED_FUNCTION_7_0(), (v14 = swift_weakLoadStrong()) == 0) || (v15 = v14, , v15 != a2) || (OUTLINED_FUNCTION_7_0(), (v11 = swift_weakLoadStrong()) == 0))
  {
    OUTLINED_FUNCTION_7_0();
    sub_216E9C900(a1, a2);
    sub_216E9CAB4(v5);

    OUTLINED_FUNCTION_7_0();
    v11 = sub_216C0CD74();

    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    *(v5 + *(v12 + 304) + 8) = a4;
    swift_unknownObjectWeakAssign();
  }

  return v11;
}

uint64_t sub_216A401A0()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for CatalogPagePresenter.State(255, *(v1 + 80), *(v1 + 88), v2);
  sub_21700F164();
  OUTLINED_FUNCTION_32();
  sub_217007E14();
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_216A4027C()
{
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_216A40320()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_64_5();
  sub_217007DE4();
}

uint64_t sub_216A403DC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_5();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for MenuBuilder();
    v2 = sub_216C65C14();
    OUTLINED_FUNCTION_143();
    Strong = swift_allocObject();
    *(Strong + 16) = v2;
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_216A40464(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for AddToPlaylistMenuBuilder();
    OUTLINED_FUNCTION_143();
    Strong = swift_allocObject();
    *(Strong + 16) = a1;
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_216A404D8(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (EnumCaseMultiPayload)
  {
    v10 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, AssociatedTypeWitness);
    return (*(v3 + 8))(v7, a1);
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v14 = OUTLINED_FUNCTION_116();
    v15(v14);
    v16 = OUTLINED_FUNCTION_44_3();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, AssociatedTypeWitness);
  }
}

uint64_t sub_216A40620()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  *(v1 + 224) = v21;
  *(v1 + 232) = v0;
  *(v1 + 208) = v20;
  *(v1 + 192) = v2;
  *(v1 + 200) = v4;
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 384) = v9;
  *(v1 + 152) = v10;
  *(v1 + 240) = *v0;
  v11 = sub_21700E9E4();
  *(v1 + 248) = v11;
  *(v1 + 256) = *(v11 - 8);
  *(v1 + 264) = OUTLINED_FUNCTION_80();
  *(v1 + 272) = *(v3 - 8);
  *(v1 + 280) = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_16_0();
  *(v1 + 288) = v12;
  *(v1 + 296) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 304) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  *(v1 + 312) = v13;
  *(v1 + 320) = v14;
  v15 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_216A407D4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v1 + 80);
  v8 = *(v1 + 88);
  *(v0 + 16) = v9;
  v26 = *(v0 + 184);
  *(v0 + 24) = v26;
  *(v0 + 40) = v8;
  *(v0 + 48) = v4;
  v25 = *(v0 + 208);
  *(v0 + 56) = v25;
  *(v0 + 72) = v3;
  *(v0 + 328) = type metadata accessor for IntentUpdate(0, v0 + 16);
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v26, v25, v10);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(v0 + 80, v7);
  OUTLINED_FUNCTION_0_5();
  v13 = *(v2 + *(v12 + 224));

  v18 = sub_216A44A48(v14, v15, v16, v17);

  v19 = sub_2167F1588(v0 + 80, v13, v18, v6, v5);
  *(v0 + 120) = v19;
  *(v0 + 336) = v19;
  *(v0 + 344) = swift_getWitnessTable();
  sub_216A46DD0();
  sub_21700EB34();
  v20 = *(*(v0 + 232) + *(**(v0 + 232) + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 352) = v21;
  *v21 = v22;
  v21[1] = sub_216A40AC4;
  v23 = *(v0 + 296);

  return sub_216BD51CC(v23, v19, v20);
}

uint64_t sub_216A40AC4()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 360) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_216A40F98;
  }

  else
  {
    v7 = sub_216A40BF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216A40BF4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = v0[45];
  (*(v0[36] + 32))(v0[19], v0[37], v0[23]);
  sub_21700EB34();
  if (v1)
  {

    OUTLINED_FUNCTION_118_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    v2 = swift_dynamicCast();
    v3 = v0[42];
    if (v2)
    {
      v4 = OUTLINED_FUNCTION_60_11();
      v5(v4);
      v0[18] = v3;
      OUTLINED_FUNCTION_31_9();
      sub_216A47518();
    }

    else
    {
      v0[17] = v3;
      OUTLINED_FUNCTION_71_0();
      sub_216A47808();
    }

    swift_willThrow();

    v9 = OUTLINED_FUNCTION_110_7();
    v10(v9);
    OUTLINED_FUNCTION_93_10();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_47_8();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_2167F28C8(v0[19]);
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_216A40DC0;
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_47_8();

    return sub_216A44AC8();
  }
}

uint64_t sub_216A40DC0()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_216A410B0;
  }

  else
  {
    v7 = sub_216A40EF0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216A40EF0()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_216A40F98()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();

  v1 = v0[45];
  v0[16] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_7_4();
  v3 = swift_dynamicCast();
  v4 = v0[42];
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_60_11();
    v6(v5);
    v0[18] = v4;
    OUTLINED_FUNCTION_31_9();
    sub_216A47518();
  }

  else
  {
    v0[17] = v4;
    OUTLINED_FUNCTION_71_0();
    sub_216A47808();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_93_10();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_216A410B0()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_116();
  v1(v0);
  v2 = OUTLINED_FUNCTION_110_7();
  v3(v2);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216A4116C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  OUTLINED_FUNCTION_181();
  swift_allocObject();
  v0 = sub_21700E854();
  v2 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  _s15ContentObserverCMa(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_0_1();

  *v2 = sub_2167B2EAC(v6, &off_282914240);
  sub_21700E984();
  return v0;
}

void sub_216A41228()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_62_9(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0670, &qword_2170390F8);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = type metadata accessor for Page(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_35();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_35_24();
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    if (OUTLINED_FUNCTION_74_13())
    {
    }

    else
    {
      OUTLINED_FUNCTION_57_14();

      sub_216A420D0();
      OUTLINED_FUNCTION_78_11();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
      OUTLINED_FUNCTION_40_15(v11);
      if (v12)
      {
        sub_216697664(v0, &qword_27CAC0670, &qword_2170390F8);
      }

      else
      {
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_120_4();
        sub_216697664(v0, &qword_27CAC0678, &unk_217039100);
        OUTLINED_FUNCTION_72_13();
        OUTLINED_FUNCTION_37();
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          OUTLINED_FUNCTION_42_21();
          OUTLINED_FUNCTION_119_5();

          v13 = sub_21700D194();
          OUTLINED_FUNCTION_34();
          v14 = OUTLINED_FUNCTION_83_11();
          v15(v14);
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
          sub_21700DAA4();
        }

        if (OUTLINED_FUNCTION_98_11())
        {
          OUTLINED_FUNCTION_61_11();
          sub_216A4AD9C();
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_123_3();
      }
    }
  }

  OUTLINED_FUNCTION_112_7();
  OUTLINED_FUNCTION_21_4();
}

void sub_216A414F0()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_62_9(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F8, &unk_2170394F0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = type metadata accessor for JSReplayPage(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_35();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_35_24();
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    if (OUTLINED_FUNCTION_74_13())
    {
    }

    else
    {
      OUTLINED_FUNCTION_57_14();

      sub_216A421DC();
      OUTLINED_FUNCTION_78_11();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
      OUTLINED_FUNCTION_40_15(v11);
      if (v12)
      {
        sub_216697664(v0, &qword_27CAC06F8, &unk_2170394F0);
      }

      else
      {
        OUTLINED_FUNCTION_54_17();
        OUTLINED_FUNCTION_120_4();
        sub_216697664(v0, &qword_27CAC0700, &qword_21705FC80);
        OUTLINED_FUNCTION_72_13();
        OUTLINED_FUNCTION_37();
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          OUTLINED_FUNCTION_42_21();
          OUTLINED_FUNCTION_119_5();

          v13 = sub_21700D194();
          OUTLINED_FUNCTION_34();
          v14 = OUTLINED_FUNCTION_83_11();
          v15(v14);
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
          sub_21700DAA4();
        }

        if (OUTLINED_FUNCTION_98_11())
        {
          OUTLINED_FUNCTION_61_11();
          sub_216A4AF34();
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_123_3();
      }
    }
  }

  OUTLINED_FUNCTION_112_7();
  OUTLINED_FUNCTION_21_4();
}

void sub_216A417B8()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_62_9(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A0, &qword_2170392B0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = type metadata accessor for JSSearchPage(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_35();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_35_24();
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    if (OUTLINED_FUNCTION_74_13())
    {
    }

    else
    {
      OUTLINED_FUNCTION_57_14();

      sub_216A423F4();
      OUTLINED_FUNCTION_78_11();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
      OUTLINED_FUNCTION_40_15(v11);
      if (v12)
      {
        sub_216697664(v0, &qword_27CAC06A0, &qword_2170392B0);
      }

      else
      {
        OUTLINED_FUNCTION_53_15();
        OUTLINED_FUNCTION_120_4();
        sub_216697664(v0, &qword_27CAC0698, &qword_2170392A8);
        OUTLINED_FUNCTION_72_13();
        OUTLINED_FUNCTION_37();
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          OUTLINED_FUNCTION_42_21();
          OUTLINED_FUNCTION_119_5();

          v13 = sub_21700D194();
          OUTLINED_FUNCTION_34();
          v14 = OUTLINED_FUNCTION_83_11();
          v15(v14);
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
          sub_21700DAA4();
        }

        if (OUTLINED_FUNCTION_98_11())
        {
          OUTLINED_FUNCTION_61_11();
          sub_216A4B14C();
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_123_3();
      }
    }
  }

  OUTLINED_FUNCTION_112_7();
  OUTLINED_FUNCTION_21_4();
}

void sub_216A41A80()
{
  OUTLINED_FUNCTION_22_3();
  v30 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B0, &qword_2170392C8);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(*Strong + 216);
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v16 + v17, 1, v4))
    {
    }

    else
    {
      sub_2166A6EA4();

      sub_216A422E8();
      v18 = OUTLINED_FUNCTION_64_5();
      sub_216697664(v18, v19, &qword_2170392C0);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
      {
        sub_216697664(v9, &qword_27CAC06B0, &qword_2170392C8);
      }

      else
      {
        OUTLINED_FUNCTION_52_13();
        sub_216A4B6FC();
        sub_216697664(v9, &qword_27CAC06B8, &qword_2170392D0);
        sub_216A4B754();
        OUTLINED_FUNCTION_37();
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          OUTLINED_FUNCTION_42_21();
          OUTLINED_FUNCTION_119_5();

          v21 = *(v10 + 20);
          v22 = v21 + *(type metadata accessor for ReplayYearModel(0) + 20);
          v23 = sub_21700D194();
          OUTLINED_FUNCTION_34();
          (*(v24 + 16))(v29, &v14[v22], v23);
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
          sub_21700DAA4();
        }

        if (OUTLINED_FUNCTION_98_11())
        {
          sub_216A4B040();
          swift_unknownObjectRelease();
        }

        sub_216A4B7AC(v14, type metadata accessor for ReplayModel);
      }
    }
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A41E18()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_62_9(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_9();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0718, &qword_2170600D0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_1();
  v9 = type metadata accessor for JSSearchResultsPage(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16_35();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_35_24();
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    if (OUTLINED_FUNCTION_74_13())
    {
    }

    else
    {
      OUTLINED_FUNCTION_57_14();

      sub_216A42500();
      OUTLINED_FUNCTION_78_11();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
      OUTLINED_FUNCTION_40_15(v12);
      if (v13)
      {
        sub_216697664(v1, &qword_27CAC0718, &qword_2170600D0);
      }

      else
      {
        OUTLINED_FUNCTION_51_8();
        OUTLINED_FUNCTION_120_4();
        sub_216697664(v1, &qword_27CAC0710, &unk_217039510);
        OUTLINED_FUNCTION_72_13();
        OUTLINED_FUNCTION_37();
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          OUTLINED_FUNCTION_42_21();

          sub_216EC58B8(v0);
          sub_21700D194();
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
          sub_21700DAA4();
        }

        if (OUTLINED_FUNCTION_98_11())
        {
          OUTLINED_FUNCTION_61_11();
          sub_216A4B258();
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_123_3();
      }
    }
  }

  OUTLINED_FUNCTION_112_7();
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A420D0()
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_58(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v10 = OUTLINED_FUNCTION_100_10();
  if (v10)
  {
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_5_2();
      sub_2167A4788();
      v11 = OUTLINED_FUNCTION_82();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v13 = OUTLINED_FUNCTION_44_3();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
      v18 = OUTLINED_FUNCTION_27_22();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      return sub_216697664(v0, &qword_27CAC0668, &qword_2170390F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    return sub_2167A4788();
  }
}

uint64_t sub_216A421DC()
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_58(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v10 = OUTLINED_FUNCTION_100_10();
  if (v10)
  {
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_5_2();
      sub_2167A4788();
      v11 = OUTLINED_FUNCTION_82();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v13 = OUTLINED_FUNCTION_44_3();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
      v18 = OUTLINED_FUNCTION_27_22();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      return sub_216697664(v0, &qword_27CAC06F0, &qword_21705FC00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    return sub_2167A4788();
  }
}

uint64_t sub_216A422E8()
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_58(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v10 = OUTLINED_FUNCTION_100_10();
  if (v10)
  {
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_5_2();
      sub_2167A4788();
      v11 = OUTLINED_FUNCTION_82();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v13 = OUTLINED_FUNCTION_44_3();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
      v18 = OUTLINED_FUNCTION_27_22();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      return sub_216697664(v0, &qword_27CAC06A8, &qword_2170392C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    return sub_2167A4788();
  }
}

uint64_t sub_216A423F4()
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_58(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v10 = OUTLINED_FUNCTION_100_10();
  if (v10)
  {
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_5_2();
      sub_2167A4788();
      v11 = OUTLINED_FUNCTION_82();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v13 = OUTLINED_FUNCTION_44_3();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
      v18 = OUTLINED_FUNCTION_27_22();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      return sub_216697664(v0, &qword_27CAC0690, &qword_2170392A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    return sub_2167A4788();
  }
}

uint64_t sub_216A42500()
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_58(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v10 = OUTLINED_FUNCTION_100_10();
  if (v10)
  {
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_5_2();
      sub_2167A4788();
      v11 = OUTLINED_FUNCTION_82();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v13 = OUTLINED_FUNCTION_44_3();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
      v18 = OUTLINED_FUNCTION_27_22();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      return sub_216697664(v0, &qword_27CAC0708, &qword_2170600C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    return sub_2167A4788();
  }
}

uint64_t sub_216A4260C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = type metadata accessor for CatalogPagePresenter.InternalState.Content(0, v10, v11, v9);
      (*(*(v12 - 8) + 32))(a2, v7, v12);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
    }

    else
    {
      v15 = type metadata accessor for CatalogPagePresenter.InternalState.Content(0, v10, v11, v9);
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
      return (*(v4 + 8))(v7, a1);
    }
  }

  else
  {
    type metadata accessor for CatalogPagePresenter.InternalState.Content(255, v10, v11, v9);
    v14 = sub_21700F164();
    return (*(*(v14 - 8) + 32))(a2, v7, v14);
  }
}