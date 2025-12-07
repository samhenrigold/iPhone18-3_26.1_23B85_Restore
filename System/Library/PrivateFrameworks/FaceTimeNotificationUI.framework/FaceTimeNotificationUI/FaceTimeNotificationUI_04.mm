void *sub_24AA84094(void *a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  if (a2)
  {
    v5 = sub_24AA8382C(a1, 1);
    v6 = [v4 stringFromContact_];

    if (!v6)
    {
      v7 = [a1 remoteMembers];
      sub_24AA442A0(0, &qword_27EF87030, 0x277D6EEA0);
      sub_24AA84A68(&qword_27EF87038, &qword_27EF87030, 0x277D6EEA0);
      v8 = sub_24AAB5114();

      v9 = sub_24AA58CE0(v8);

      if (!v9)
      {
        return v9;
      }

      v10 = [v9 handle];

      v11 = [v10 value];
      if (!v11)
      {
        sub_24AAB4EF4();
        v11 = sub_24AAB4EE4();
      }

LABEL_11:
      v6 = [v11 formattedDisplayID];
    }
  }

  else
  {
    v12 = sub_24AA8382C(a1, 0);
    v6 = [v4 stringFromContact_];

    if (!v6)
    {
      v13 = [a1 handle];
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      v11 = [v13 value];

      if (!v11)
      {
        sub_24AAB4EF4();
        v11 = sub_24AAB4EE4();
      }

      goto LABEL_11;
    }
  }

  v9 = sub_24AAB4EF4();

  return v9;
}

uint64_t sub_24AA842FC@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CallSubtitle(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  if (a2)
  {
    v12 = sub_24AA84094(a1, 1);
    v14 = v13;
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    swift_storeEnumTagMultiPayload();
    v16 = sub_24AA8382C(a1, 1);
    v46 = v16;
    v17 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = v16;
      MEMORY[0x24C225850]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AAB5044();
      }

      sub_24AAB5064();
      v17 = v45;
    }

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    sub_24AA8499C(&v46);
    *a3 = v15;
    a3[1] = v19;
    v20 = type metadata accessor for CallStatusViewModel(0);
    a3[2] = 0;
    a3[3] = 0;
    result = sub_24AA84A04(v9, a3 + v20[6]);
    *(a3 + v20[7]) = v17;
    *(a3 + v20[8]) = 1;
    v22 = (a3 + v20[9]);
    *v22 = 0;
    v22[1] = 0;
  }

  else
  {
    v23 = sub_24AA84094(a1, 0);
    v25 = v24;
    if (v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    swift_storeEnumTagMultiPayload();
    v27 = sub_24AA8382C(a1, 0);
    v44 = v27;
    v28 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    if (v27)
    {
      v29 = v27;
      MEMORY[0x24C225850]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AAB5044();
      }

      sub_24AAB5064();
      v28 = v45;
    }

    if (v25)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    sub_24AA8499C(&v44);
    v31 = [a1 provider];
    v32 = [a1 isVideo];
    if ([v31 isFaceTimeProvider])
    {

      if (v32)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }
    }

    else
    {
      v34 = [v31 isTelephonyProvider];

      if (v34)
      {
        v33 = 0;
      }

      else
      {
        v33 = 3;
      }
    }

    v35 = [a1 localSenderIdentity];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 localizedShortName];

      v38 = sub_24AAB4EF4();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    *a3 = v26;
    a3[1] = v30;
    v41 = type metadata accessor for CallStatusViewModel(0);
    a3[2] = 0;
    a3[3] = 0;
    result = sub_24AA84A04(v11, a3 + v41[6]);
    *(a3 + v41[7]) = v28;
    *(a3 + v41[8]) = v33;
    v42 = (a3 + v41[9]);
    *v42 = v38;
    v42[1] = v40;
  }

  return result;
}

uint64_t DialPromptViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI19DialPromptViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DialPromptViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI19DialPromptViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DialPromptViewModel(uint64_t a1)
{
  result = qword_27EF87000;
  if (!qword_27EF87000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA84814(uint64_t a1)
{
  result = sub_24AAB2D34();
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

uint64_t sub_24AA848F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24AA8493C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA8499C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87028, &unk_24AABCA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA84A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallSubtitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA84A68(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24AA442A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnyTransition.delay(insertion:)(uint64_t a1, double a2)
{
  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB4D74();

  sub_24AAB3DB4();

  v2 = sub_24AAB3D64();

  return v2;
}

uint64_t sub_24AA84B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87070, &qword_24AABCB18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87078, &qword_24AABCB20);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *v2;
  v13 = v2[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87080, &qword_24AABCB28);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  sub_24AA1A25C(v7, v11, &qword_27EF87070, &qword_24AABCB18);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = &v11[*(v9 + 44)];
  *v16 = v15;
  v16[8] = 0;
  if (v12)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_24AA1A25C(v11, a2, &qword_27EF87078, &qword_24AABCB20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87088, &unk_24AABCB30);
  *(a2 + *(result + 36)) = v17;
  return result;
}

uint64_t AnyTransition.delay(removal:)(uint64_t a1, double a2)
{
  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB4D74();

  sub_24AAB3DB4();

  v2 = sub_24AAB3D64();

  return v2;
}

uint64_t getEnumTagSinglePayload for BlurModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlurModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24AA84E9C()
{
  result = qword_27EF87090;
  if (!qword_27EF87090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87088, &unk_24AABCB30);
    sub_24AA84F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87090);
  }

  return result;
}

unint64_t sub_24AA84F28()
{
  result = qword_27EF87098;
  if (!qword_27EF87098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87078, &qword_24AABCB20);
    sub_24AA84FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87098);
  }

  return result;
}

unint64_t sub_24AA84FB4()
{
  result = qword_27EF870A0;
  if (!qword_27EF870A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87070, &qword_24AABCB18);
    sub_24AA85040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870A0);
  }

  return result;
}

unint64_t sub_24AA85040()
{
  result = qword_27EF870A8;
  if (!qword_27EF870A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87080, &qword_24AABCB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870A8);
  }

  return result;
}

uint64_t static CallStatusViewModel.statusViewModel(for:status:isScreenLocked:wantsBadge:isCarPlay:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v71 = a5;
  v72 = a3;
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v64 - v11;
  v67 = type metadata accessor for CallSubtitle(0);
  v12 = MEMORY[0x28223BE20](v67);
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  if (v7 == 4 || v7 == 1)
  {
    v20 = a4;
    v21 = &v64 - v18;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = v21;
    a4 = v20;
    sub_24AAB3504();
    v22 = v74;
    if (v74)
    {
      v23 = v75;
      v24 = v73;

      if (v23)
      {
        v70 = v24;
        goto LABEL_8;
      }
    }
  }

  v25 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v70 = sub_24AA87578(v27, v7, v72 & 1, v25, v26);
  v22 = v28;
LABEL_8:
  v29 = a1[3];
  v30 = a1[4];
  v31 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v32 = sub_24AA86BC8(v31, v7, v71 & 1, v29, v30);
  v68 = v33;
  v69 = v32;
  if (v7 > 2)
  {
    if ((v7 - 5) >= 2)
    {
      if (v7 == 3)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        *v17 = sub_24AAB34F4();
        *(v17 + 1) = v42;
      }

      else if (v7 == 4)
      {
        sub_24AA16768(a1, v17);
        *(v17 + 10) = 4;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        *(v17 + 6) = sub_24AAB34F4();
        *(v17 + 7) = v34;
        v17[64] = v71 & 1;
      }

      goto LABEL_22;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24AAB35B4();
    v35 = v77;
    if (v77)
    {
      v36 = v76;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v43 = sub_24AAB34F4();
      if (v44)
      {
        v36 = v43;
      }

      else
      {
        v36 = 0;
      }

      if (v44)
      {
        v35 = v44;
      }

      else
      {
        v35 = 0xE000000000000000;
      }
    }

    *v14 = v36;
    v14[1] = v35;
    swift_storeEnumTagMultiPayload();
    sub_24AA84A04(v14, v17);
  }

  else
  {
    if (v7 != 1)
    {
LABEL_22:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v71 = a4;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v17 = sub_24AAB34F4();
    *(v17 + 1) = v37;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v38 = v66;
    sub_24AAB34E4();
    v39 = sub_24AAB2C54();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (v41(v38, 1, v39) == 1)
    {
      sub_24AAB2C34();
      if (v41(v38, 1, v39) != 1)
      {
        sub_24AA169C4(v38, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v40 + 32))(&v17[v65], v38, v39);
    }

    swift_storeEnumTagMultiPayload();
    LOBYTE(a4) = v71;
  }

LABEL_32:
  sub_24AA84A04(v17, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = sub_24AAB3564();
  if (v45 && (v46 = v45, v47 = [v45 shouldHideContactWithLockState_], v46, (v47 & 1) != 0))
  {
    v48 = MEMORY[0x277D84F90];
    if ((a4 & 1) == 0)
    {
LABEL_35:
      v49 = 3;
      goto LABEL_44;
    }
  }

  else
  {
    v50 = a1[3];
    v51 = a1[4];
    v52 = __swift_project_boxed_opaque_existential_1(a1, v50);
    v48 = sub_24AA86F34(v52, v50, v51);
    if ((a4 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = sub_24AAB35A4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = sub_24AAB3574();
  if ([v53 isFaceTimeProvider])
  {

    if (v54)
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v55 = [v53 isTelephonyProvider];

    if (v55)
    {
      v49 = 0;
    }

    else
    {
      v49 = 3;
    }
  }

LABEL_44:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = sub_24AAB3554();
  v58 = v57;
  v59 = v69;
  *a6 = v70;
  a6[1] = v22;
  v60 = v68;
  a6[2] = v59;
  a6[3] = v60;
  v61 = type metadata accessor for CallStatusViewModel(0);
  result = sub_24AA84A04(v19, a6 + v61[6]);
  *(a6 + v61[7]) = v48;
  *(a6 + v61[8]) = v49;
  v63 = (a6 + v61[9]);
  *v63 = v56;
  v63[1] = v58;
  return result;
}

uint64_t static CallStatusViewModel.statusViewModelFoCallRecording(for:statusLabel:duration:isScreenLocked:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v69 = a2;
  v75 = a4;
  v6 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v6 - 8);
  v76 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AAB4ED4();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v67 - v14;
  v80 = sub_24AAB2C54();
  v72 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for CallSubtitle(0);
  MEMORY[0x28223BE20](v73);
  v19 = (v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  v67[0] = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v67[1] = v20;
  v21 = sub_24AAB3564();
  v70 = v17;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 siriDisplayName];
    if (v23)
    {
      v24 = v23;
      v79 = v15;
      v25 = sub_24AAB4EF4();
      v27 = v26;

      if ([v22 shouldHideContactWithLockState_])
      {

        v71 = MEMORY[0x277D84F90];
        v28 = v27;
        v15 = v79;
        goto LABEL_8;
      }

      v15 = v79;
    }

    else
    {
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_24AAB34C4();
  v28 = v30;
  v31 = a1[3];
  v32 = a1[4];
  v33 = v11;
  v34 = __swift_project_boxed_opaque_existential_1(a1, v31);

  v35 = v34;
  v11 = v33;
  v25 = v29;
  v71 = sub_24AA86F34(v35, v31, v32);
LABEL_8:

  v36 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v36 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v37 = v80;
  v68 = v19;
  if (v36)
  {
    v79 = v25;
    v38 = v78;
    v39 = v74;
  }

  else
  {
    v40 = v11;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v79 = sub_24AAB3544();
    if (v41)
    {
      v28 = v41;
      v38 = v78;
      v37 = v80;
    }

    else
    {
      v42 = sub_24AAB3564();
      v37 = v80;
      if (v42)
      {
        v43 = v42;
        v44 = [v42 value];

        v79 = sub_24AAB4EF4();
        v28 = v45;
      }

      else
      {
        v79 = 0;
        v28 = 0xE000000000000000;
      }

      v38 = v78;
    }

    v39 = v74;
    v11 = v40;
  }

  sub_24AA46DA8(v69, v15);
  v46 = v72;
  if ((*(v72 + 48))(v15, 1, v37) == 1)
  {
    sub_24AA169C4(v15, &qword_27EF855E8, &unk_24AABCB40);
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    sub_24AAB4E84();
    v47 = v77;
    (*(v77 + 16))(v11, v39, v38);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v48 = qword_27EF919A8;
    sub_24AAB2CC4();
    v49 = sub_24AAB4F14();
    v51 = v50;
    (*(v47 + 8))(v39, v38);
    v52 = v68;
    *v68 = v49;
    *(v52 + 8) = v51;
    (*(v46 + 56))(v52 + v78, 1, 1, v37);
  }

  else
  {
    v78 = *(v46 + 32);
    (v78)(v70, v15, v37);
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    sub_24AAB4E84();
    v53 = v77;
    (*(v77 + 16))(v11, v39, v38);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v54 = qword_27EF919A8;
    sub_24AAB2CC4();
    v55 = sub_24AAB4F14();
    v57 = v56;
    (*(v53 + 8))(v39, v38);
    v52 = v68;
    *v68 = v55;
    *(v52 + 8) = v57;
    v58 = v74;
    v59 = v80;
    (v78)(&v74[v52], v70, v80);
    (*(v46 + 56))(&v58[v52], 0, 1, v59);
  }

  swift_storeEnumTagMultiPayload();
  v60 = type metadata accessor for CallStatusViewModel(0);
  v61 = v75;
  sub_24AA877CC(v52, v75 + v60[6]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = sub_24AAB3554();
  v64 = v63;
  result = sub_24AA87830(v52);
  *v61 = v79;
  v61[1] = v28;
  v61[2] = 0;
  v61[3] = 0;
  *(v61 + v60[7]) = v71;
  *(v61 + v60[8]) = 3;
  v66 = (v61 + v60[9]);
  *v66 = v62;
  v66[1] = v64;
  return result;
}

uint64_t static CallStatusViewModel.statusViewModelForWaitOnHold(for:isScreenLocked:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24AAB4ED4();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v48 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v47 - v11;
  v13 = a1[4];
  v47[1] = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47[2] = v13;
  v14 = sub_24AAB3564();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 siriDisplayName];
    if (v16)
    {
      v17 = v16;
      v18 = sub_24AAB4EF4();
      v20 = v19;

      if ([v15 shouldHideContactWithLockState_])
      {

        v49 = MEMORY[0x277D84F90];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_24AAB34C4();
  v20 = v21;
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);

  v49 = sub_24AA86F34(v24, v22, v23);
LABEL_8:

  v25 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v25 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v26 = v48;
  if (!v25)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v27 = sub_24AAB3544();
    if (v28)
    {
      v18 = v27;
      v20 = v28;
    }

    else
    {
      v29 = sub_24AAB3564();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 value];

        v18 = sub_24AAB4EF4();
        v20 = v32;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }
    }
  }

  v33 = v51;
  sub_24AAB4E84();
  (*(v8 + 16))(v26, v12, v33);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v34 = qword_27EF919A8;
  sub_24AAB2CC4();
  v35 = sub_24AAB4F14();
  v37 = v36;
  (*(v8 + 8))(v12, v33);
  v38 = type metadata accessor for CallStatusViewModel(0);
  v39 = (a3 + v38[6]);
  *v39 = v18;
  v39[1] = v20;
  type metadata accessor for CallSubtitle(0);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = sub_24AAB35A4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = sub_24AAB3574();
  if ([v40 isFaceTimeProvider])
  {

    if (v41)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v43 = [v40 isTelephonyProvider];

    if (v43)
    {
      v42 = 0;
    }

    else
    {
      v42 = 3;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_24AAB3554();
  *a3 = v35;
  a3[1] = v37;
  a3[2] = 0;
  a3[3] = 0;
  *(a3 + v38[7]) = v49;
  *(a3 + v38[8]) = v42;
  v45 = (a3 + v38[9]);
  *v45 = result;
  v45[1] = v46;
  return result;
}

uint64_t CallStatusViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallStatusViewModel.source.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallStatusViewModel.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallStatusViewModel(0) + 24);

  return sub_24AA877CC(v3, a1);
}

uint64_t CallStatusViewModel.contacts.getter()
{
  type metadata accessor for CallStatusViewModel(0);
}

uint64_t CallStatusViewModel.badge.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CallStatusViewModel(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CallStatusViewModel.senderIdentityShortName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CallStatusViewModel(0) + 36));

  return v1;
}

uint64_t static CallStatusViewModel.contacts(for:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24AA86F34(v3, v1, v2);
}

uint64_t CallSubtitle.string.getter()
{
  v1 = v0;
  v2 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24AAB4ED4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-v8];
  v10 = type metadata accessor for CallSubtitle(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA877CC(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6 || (v14 = EnumCaseMultiPayload, result = 0, v14 == 7))
      {
        sub_24AAB4E84();
        (*(v4 + 16))(v7, v9, v3);
        if (qword_27EF84C50 == -1)
        {
LABEL_28:
          v38 = qword_27EF919A8;
          sub_24AAB2CC4();
          v39 = sub_24AAB4F14();
          (*(v4 + 8))(v9, v3);
          return v39;
        }

LABEL_44:
        swift_once();
        goto LABEL_28;
      }

      return result;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v37 = *(v12 + 1);
      v49 = *v12;
      v50 = v37;
      return sub_24AAB4FF4();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50);
    sub_24AA169C4(&v12[*(v41 + 48)], &qword_27EF855E8, &unk_24AABCB40);
    return 0;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return *v12;
    }

    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    v36 = sub_24AAB2C54();
    (*(*(v36 - 8) + 8))(&v12[v35], v36);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *(v12 + 10);
    v17 = *(v12 + 6);
    v18 = *(v12 + 7);
    v47 = v12[64];
    sub_24AA16AF4(v12, &v49);
    v48 = v16;
    v19 = v16 == 4 || v16 == 1;
    if (!v19 || (__swift_project_boxed_opaque_existential_1(&v49, v51), sub_24AAB3504(), !v54))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
      return v17;
    }

    v20 = v56;
    if ((v57 & 1) == 0)
    {
      v42 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);

      if (!v18)
      {
        return v42;
      }

      return v17;
    }

    v21 = v55;

    if (v47)
    {
      if (!v20)
      {
LABEL_40:
        v43 = v51;
        v44 = v52;
        v45 = __swift_project_boxed_opaque_existential_1(&v49, v51);
        v34 = sub_24AA87578(v45, v48, 0, v43, v44);
LABEL_41:
        __swift_destroy_boxed_opaque_existential_1Tm(&v49);
        return v34;
      }

      v22 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v22 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        sub_24AAB4E84();
        (*(v4 + 16))(v7, v9, v3);
        if (qword_27EF84C50 != -1)
        {
          swift_once();
        }

        v23 = qword_27EF919A8;
        sub_24AAB2CC4();
        sub_24AAB4F14();
        (*(v4 + 8))(v9, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_24AAB7D10;
        v25 = MEMORY[0x277D837D0];
        *(v24 + 56) = MEMORY[0x277D837D0];
        v28 = sub_24AA8788C(v24, v26, v27);
        *(v24 + 64) = v28;
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;
        v29 = v51;
        v30 = v52;
        v31 = __swift_project_boxed_opaque_existential_1(&v49, v51);
        v32 = sub_24AA87578(v31, v48, 0, v29, v30);
        *(v24 + 96) = v25;
        *(v24 + 104) = v28;
        *(v24 + 72) = v32;
        *(v24 + 80) = v33;
        v34 = sub_24AAB4F04();

        goto LABEL_41;
      }
    }

    goto LABEL_40;
  }

  v40 = *(v12 + 1);
  if (!v40)
  {
    sub_24AAB4E84();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_27EF84C50 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  v49 = *v12;
  v50 = v40;

  MEMORY[0x24C2257F0](10911970, 0xA300000000000000);

  return v49;
}

uint64_t sub_24AA86BC8(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_24AAB4ED4();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, a4);
  v20 = 0;
  if ((a3 & 1) == 0 && a2 == 4)
  {
    sub_24AAB3504();
    if (v34)
    {
      v21 = v35;
      v22 = v36;

      if (v22)
      {
        v31 = v21;
        sub_24AAB4E84();
        v23 = v32;
        v24 = v33;
        (*(v32 + 16))(v13, v16, v33);
        if (qword_27EF84C50 != -1)
        {
          swift_once();
        }

        v25 = qword_27EF919A8;
        sub_24AAB2CC4();
        sub_24AAB4F14();
        (*(v23 + 8))(v16, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_24AAB7070;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_24AA8788C(v26, v27, v28);
        *(v26 + 32) = v31;
        *(v26 + 40) = v22;
        v20 = sub_24AAB4F04();
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  (*(v17 + 8))(v19, a4);
  return v20;
}

uint64_t sub_24AA86F34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_24AAB2BD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v17;
  (*(v17 + 16))(v16, a1, a2);
  v18 = sub_24AAB3584();
  v19 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v20 = [v19 callerIDSyncMacEnabled];

  if (v20)
  {
    v53 = a2;
    sub_24AAB3594();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_24AA169C4(v7, &qword_27EF85868, &qword_24AAB7940);
      v21 = v18;
LABEL_15:
      v22 = v53;
      goto LABEL_16;
    }

    v23 = v8;
    v24 = v14;
    (*(v9 + 32))(v14, v7, v8);
    v21 = v18;
    if (v18 >> 62)
    {
      if (sub_24AAB52F4() == 1 && sub_24AAB52F4())
      {
        goto LABEL_7;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_7:
      if ((v18 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C225BD0](0, v18);
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v28 = sub_24AAB3A84();
          __swift_project_value_buffer(v28, qword_27EF919D8);
          v29 = v54;
          (*(v9 + 16))(v54, v14, v23);
          v30 = sub_24AAB3A64();
          v31 = v23;
          v32 = sub_24AAB5124();
          if (os_log_type_enabled(v30, v32))
          {
            v33 = swift_slowAlloc();
            v52 = v24;
            v34 = v33;
            v57[0] = swift_slowAlloc();
            v51 = a2;
            v35 = v57[0];
            *v34 = 136315138;
            sub_24AA87FF4();
            v49 = v30;
            v36 = sub_24AAB5444();
            v50 = v7;
            v38 = v37;
            v39 = *(v9 + 8);
            v39(v29, v31);
            v40 = sub_24AA406B4(v36, v38, v57);

            *(v34 + 4) = v40;
            v41 = v49;
            _os_log_impl(&dword_24AA0F000, v49, v32, "Could not create imageData from %s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v35);
            MEMORY[0x24C226630](v35, -1, -1);
            MEMORY[0x24C226630](v34, -1, -1);

            v39(v52, v31);
          }

          else
          {

            v47 = *(v9 + 8);
            v47(v29, v31);
            v47(v24, v31);
          }

          goto LABEL_15;
        }

        v25 = *(v18 + 32);
      }

      v26 = v25;
      [v25 mutableCopy];

      sub_24AAB5284();
      swift_unknownObjectRelease();
      sub_24AA442A0(0, &qword_27EF87138, 0x277CBDB38);
      if (swift_dynamicCast())
      {
        v27 = v56;
        v42 = sub_24AAB2BE4();
        v44 = v43;

        v45 = sub_24AAB2BF4();
        sub_24AA190E8(v42, v44);
        [v27 setImageData_];

        [v27 setContactType_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_24AABC8C0;
        *(v21 + 32) = v27;
      }
    }

    (*(v9 + 8))(v14, v23);
    goto LABEL_15;
  }

  v21 = v18;
  v22 = a2;
LABEL_16:
  (*(v55 + 8))(v16, v22);
  return v21;
}

uint64_t sub_24AA87578(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v10 = sub_24AAB3564();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 siriDisplayName];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24AAB4EF4();
      v16 = v15;

      v17 = [v11 shouldHideContactWithLockState_];
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v14 = sub_24AAB34C4();
  v16 = v18;
LABEL_7:

  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
LABEL_15:
    if (a2 != 6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v20 = sub_24AAB3544();
  if (v21)
  {
    v14 = v20;
    if (a2 != 6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v22 = sub_24AAB3564();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 value];

    v14 = sub_24AAB4EF4();
    goto LABEL_15;
  }

  v14 = 0;
  if (a2 != 6)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_24AAB35B4();
  if (v33)
  {
    v25 = v31;
    v26 = v32;

    if (v26)
    {

      v14 = v25;
    }
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v14;
}

uint64_t sub_24AA877CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallSubtitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA87830(uint64_t a1)
{
  v2 = type metadata accessor for CallSubtitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AA8788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF870B8;
  if (!qword_27EF870B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870B8);
  }

  return result;
}

uint64_t sub_24AA878F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CallSubtitle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA879B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CallSubtitle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA87A58(uint64_t a1)
{
  sub_24AA87BA0(319, &qword_27EF870D0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CallSubtitle(319);
    if (v2 <= 0x3F)
    {
      sub_24AA87B38(319);
      if (v3 <= 0x3F)
      {
        sub_24AA87BA0(319, &qword_27EF870E0, &type metadata for CallBadgeView.Badge);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AA87B38(uint64_t a1)
{
  if (!qword_27EF870D8)
  {
    sub_24AA442A0(255, &qword_27EF861A0, 0x277CBDA58);
    v1 = sub_24AAB5074();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF870D8);
    }
  }
}

void sub_24AA87BA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24AAB5274();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24AA87C3C(uint64_t a1)
{
  sub_24AA87D00(319);
  if (v1 <= 0x3F)
  {
    sub_24AA87E44();
    if (v2 <= 0x3F)
    {
      sub_24AA87E9C(319);
      if (v3 <= 0x3F)
      {
        sub_24AA87F1C();
        if (v4 <= 0x3F)
        {
          sub_24AA87F4C();
          if (v5 <= 0x3F)
          {
            sub_24AA87F7C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24AA87D00(uint64_t a1)
{
  if (!qword_27EF870F8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87100, &qword_24AABCBD8);
    type metadata accessor for TUCallStatus(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87108, &qword_24AABCBE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EF870F8);
    }
  }
}

void sub_24AA87E44()
{
  if (!qword_27EF87110)
  {
    sub_24AA87BA0(0, &qword_27EF870D0, MEMORY[0x277D837D0]);
    if (!v1)
    {
      atomic_store(v0, &qword_27EF87110);
    }
  }
}

void sub_24AA87E9C(uint64_t a1)
{
  if (!qword_27EF87118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87108, &qword_24AABCBE0);
    sub_24AAB2C54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF87118);
    }
  }
}

uint64_t sub_24AA87F1C()
{
  result = qword_27EF87120;
  if (!qword_27EF87120)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF87120);
  }

  return result;
}

uint64_t sub_24AA87F4C()
{
  result = qword_27EF87128;
  if (!qword_27EF87128)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF87128);
  }

  return result;
}

void sub_24AA87F7C(uint64_t a1)
{
  if (!qword_27EF87130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF855E8, &unk_24AABCB40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF87130);
    }
  }
}

unint64_t sub_24AA87FF4()
{
  result = qword_27EF85878;
  if (!qword_27EF85878)
  {
    sub_24AAB2BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85878);
  }

  return result;
}

uint64_t sub_24AA8805C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24AA8811C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24AA593F8(v1, v2);
}

void sub_24AA881AC(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  sub_24AA8CD98(v4, v5, v6);
}

double sub_24AA88274(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();

  return result;
}

void sub_24AA88354(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_24AA8CD98(v3, v4, v5);
}

double sub_24AA8841C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();
  sub_24AA8CE4C(v1, v2);

  return result;
}

void sub_24AA88504(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1[2];
  v9 = a1[3];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_24AA8CD98(a2, a3, a4);
  sub_24AA8CE4C(v8, v9);
}

uint64_t (*sub_24AA8859C(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA8815C(v4);
  return sub_24AA886D4;
}

void sub_24AA886D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA88768()
{
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  sub_24AA16D2C(v1, *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8));
  return v1;
}

uint64_t sub_24AA88828@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AA8F788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AA16D2C(v4, v5);
}

double sub_24AA88920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_24AA8F750;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v2, v3);
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();
  sub_24AA16D74(v5, v4);

  return result;
}

void sub_24AA88A7C()
{
  sub_24AAB2E34();
  swift_allocObject();
  sub_24AAB2E24();
  v0 = sub_24AAB2E14();

  qword_27EF87140 = v0;
}

uint64_t sub_24AA88B08@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_24AABCC10;
  v2 = *MEMORY[0x277CFCA00];
  v3 = sub_24AAB2D94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static NotificationController.answeringMachine.getter()
{
  if (qword_27EF84C60 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t NotificationController.__allocating_init(callCenter:channel:callsReminder:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  NotificationController.init(callCenter:channel:callsReminder:)(a1, a2, a3);
  return v6;
}

void *NotificationController.init(callCenter:channel:callsReminder:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0xF000000000000007;
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
  v9 = sub_24AAB3454();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = (v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v12 = sub_24AAB3A84();
  v13 = __swift_project_value_buffer(v12, qword_27EF919D8);
  (*(*(v12 - 8) + 16))(v4 + v11, v13, v12);
  sub_24AAB2D24();
  *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc) = a2;
  sub_24AA16768(a1, v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  sub_24AA16768(a3, v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callsReminder);

  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    type metadata accessor for NotificationController(0);

    v18 = sub_24AAB4F44();
    v20 = sub_24AA406B4(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24AA0F000, v14, v15, "%s created.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x24C226630](v17, -1, -1);
    MEMORY[0x24C226630](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

void sub_24AA88ED4(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();

  sub_24AAB3274();

  swift_allocObject();
  swift_weakInit();

  sub_24AAB3284();

  v1 = sub_24AAB3634();

  swift_allocObject();
  swift_weakInit();

  sub_24AAB3684();

  sub_24AAB3644();

  oslog = sub_24AAB3A64();
  v2 = sub_24AAB5144();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for NotificationController(0);

    v5 = sub_24AAB4F44();
    v7 = sub_24AA406B4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24AA0F000, oslog, v2, "%s: NotificationController configured.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  else
  {
  }
}

double sub_24AA89194(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24AAB3454();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, a1, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    sub_24AA8FA3C(v5, v8 + v11);
    swift_endAccess();
  }

  return result;
}

double sub_24AA89304(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = a1;
    v10 = sub_24AAB3A64();
    v11 = sub_24AAB5144();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v8;
      v28 = v13;
      *v12 = 136315394;
      type metadata accessor for NotificationController(0);

      v14 = sub_24AAB4F44();
      v16 = sub_24AA406B4(v14, v15, &v28);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v27 = v9;
      sub_24AAB3444();
      v17 = v9;
      v18 = sub_24AAB4F44();
      v20 = sub_24AA406B4(v18, v19, &v28);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_24AA0F000, v10, v11, "%s: Received action %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v13, -1, -1);
      MEMORY[0x24C226630](v12, -1, -1);
    }

    v21 = sub_24AAB50F4();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_24AAB50C4();

    v22 = v9;
    v23 = sub_24AAB50B4();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v8;
    v24[5] = v22;
    sub_24AA330D4(0, 0, v5, &unk_24AABD050, v24);
  }

  return result;
}

uint64_t sub_24AA895D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24AAB50C4();
  v5[7] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA89670, v7, v6);
}

uint64_t sub_24AA89670()
{
  v1 = *(v0 + 40);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  v2 = swift_beginAccess();
  if ((~*(v1 + 16) & 0xF000000000000007) != 0)
  {
    MEMORY[0x24C2255E0](v2, 0.5, 1.0, 0.0);
  }

  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
  sub_24AAB3E24();

  v3 = *(v0 + 8);

  return v3();
}

void sub_24AA897F8(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_24AAB36D4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v7 = sub_24AAB36C4();
    v8 = v7;
    v9 = 1;
LABEL_5:
    sub_24AA89FDC(v7, v9);
LABEL_6:

    goto LABEL_7;
  }

  sub_24AAB36B4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v7 = sub_24AAB36A4();
    v8 = v7;
    v9 = 0;
    goto LABEL_5;
  }

  sub_24AAB3434();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v11 = sub_24AAB3424();
    sub_24AA8D548(v11, a2);

    goto LABEL_7;
  }

  sub_24AAB34B4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v8 = sub_24AAB34A4();
    sub_24AA8A368(v8);
    goto LABEL_6;
  }

  sub_24AAB3614();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v12 = sub_24AAB3604();
    sub_24AA8A738(v12 & 1);
  }

  else
  {
    sub_24AAB37A4();
    if (!swift_dynamicCastClass())
    {
      v17 = a1;

      v18 = sub_24AAB3A64();
      v19 = sub_24AAB5124();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315394;
        type metadata accessor for NotificationController(0);

        v22 = sub_24AAB4F44();
        v24 = sub_24AA406B4(v22, v23, &v29);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        sub_24AAB3444();
        v25 = v17;
        v26 = sub_24AAB4F44();
        v28 = sub_24AA406B4(v26, v27, &v29);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_24AA0F000, v18, v19, "%s: Unhandled received action %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v21, -1, -1);
        MEMORY[0x24C226630](v20, -1, -1);
      }

      goto LABEL_8;
    }

    swift_getKeyPath();
    v29 = a2;
    sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
    v6 = a1;
    sub_24AAB2CF4();

    v13 = a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback;
    v14 = *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
    if (!v14)
    {

      v10 = 1;
      goto LABEL_9;
    }

    v15 = *(v13 + 1);

    v16 = sub_24AAB3794();
    v14(v16 & 1);
    sub_24AA16D74(v14, v15);
  }

LABEL_7:

LABEL_8:
  v10 = 0;
LABEL_9:
  *a3 = v10;
}

double sub_24AA89BC0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_24AAB50F4();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_24AAB50C4();

    v8 = sub_24AAB50B4();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_24AA330D4(0, 0, v3, &unk_24AABD040, v9);
  }

  return result;
}

uint64_t sub_24AA89D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24AAB50C4();
  *(v4 + 32) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA89DAC, v6, v5);
}

uint64_t sub_24AA89DAC()
{
  v14 = v0;

  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for NotificationController(0);

    v6 = sub_24AAB4F44();
    v8 = sub_24AA406B4(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24AA0F000, v1, v2, "%s: Connection invalidated, destructing view model.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v9 = v0[3];
  swift_getKeyPath();
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = 0xF000000000000007;
  v10[4] = 0;
  v10[5] = 0;
  v0[2] = v9;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();

  v11 = v0[1];

  return v11();
}

double sub_24AA89FDC(void *a1, char a2)
{
  v3 = v2;
  v6 = a1;

  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315394;
    *&v24[0] = v3;
    type metadata accessor for NotificationController(0);

    v11 = sub_24AAB4F44();
    v13 = sub_24AA406B4(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *&v24[0] = a1;
    BYTE8(v24[0]) = a2 & 1;
    v14 = v6;
    v15 = sub_24AAB4F44();
    v17 = sub_24AA406B4(v15, v16, v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_24AA0F000, v7, v8, "%s: Showing dial prompt for %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  sub_24AA16768(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter, v24);
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for DialPromptViewModel(0);
  v19 = swift_allocObject();
  *(v19 + 88) = 0;

  sub_24AAB2D24();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2 & 1;
  sub_24AA15A64(v24, v19 + 32);
  *(v19 + 72) = sub_24AA8F550;
  *(v19 + 80) = v18;
  v20 = v6;

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v24[0] = v3;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();

  return result;
}

void sub_24AA8A2F0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = [objc_allocWithZone(sub_24AAB3744()) init];
    sub_24AA8B95C(v1);
  }
}

uint64_t sub_24AA8A368(void *a1)
{
  v2 = v1;

  v4 = a1;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    type metadata accessor for NotificationController(0);

    v9 = sub_24AAB4F44();
    v11 = sub_24AA406B4(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_24AAB3844();
    v12 = v4;
    v13 = sub_24AAB4F44();
    v15 = sub_24AA406B4(v13, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24AA0F000, v5, v6, "%s: Showing notice %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v16 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 24));
  sub_24AAB32D4();
  v17 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v17);
  sub_24AAB3344();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
  v18 = sub_24AAB53D4();

  if (*(v18 + 16))
  {
    swift_unknownObjectRetain();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v22 = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  v20 = v4;
  sub_24AAB2CE4();

  return swift_unknownObjectRelease();
}

double sub_24AA8A738(char a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;

  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v27[1] = v2;
    type metadata accessor for NotificationController(0);

    v10 = sub_24AAB4F44();
    v12 = sub_24AA406B4(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AA0F000, v6, v7, "%s: Showing test call.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  sub_24AA8D4E0();
  sub_24AAB5154();
  v13 = sub_24AAB2C54();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v15 = sub_24AAB4EE4();
  [v14 initWithType:3 value:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24AABC8C0;
  v17 = sub_24AAB4EE4();
  v18 = sub_24AAB4EE4();
  v19 = [objc_opt_self() contactWithDisplayName:v17 emailOrPhoneNumber:v18];

  *(v16 + 32) = v19;
  sub_24AAB3254();
  swift_allocObject();
  v20 = sub_24AAB3244();
  sub_24AAB35D4();
  swift_allocObject();

  v21 = sub_24AAB35C4();
  v22 = swift_allocObject();
  swift_weakInit();
  sub_24AAB36F4();
  swift_allocObject();

  v23 = sub_24AAB36E4();
  type metadata accessor for CallNotificationViewModel(0);
  v24 = swift_allocObject();

  sub_24AA8E8F4(v20, v21, v23, v2, sub_24AA8D52C, v22, 0, v24);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v28 = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CE4();

  return result;
}

double sub_24AA8AC28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v4 != 2)
    {
      goto LABEL_20;
    }

    if (v3 > 9)
    {
      if (__PAIR128__((v3 >= 0x12) + v2 - 1, v3 - 18) < 2)
      {
        v7 = [objc_allocWithZone(sub_24AAB3744()) init];
        goto LABEL_19;
      }

      if (v3 ^ 0xA | v2)
      {
        if (!(v3 ^ 0xC | v2))
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v3 <= 7)
      {
        if (v3 ^ 1 | v2)
        {
          if (!(v3 ^ 3 | v2))
          {
LABEL_7:
            v6 = objc_allocWithZone(sub_24AAB35F4());
            v7 = sub_24AAB35E4();
LABEL_19:
            v10 = v7;
            sub_24AA8B95C(v7);

            goto LABEL_20;
          }
        }

        else
        {
          v8 = [objc_allocWithZone(sub_24AAB3624()) init];
          sub_24AA8B95C(v8);
        }

        goto LABEL_20;
      }

      if (!(v3 ^ 8 | v2))
      {
        sub_24AA8AE64(0.0, 0.0);
        goto LABEL_20;
      }

      if (v3 ^ 9 | v2)
      {
LABEL_20:

        return result;
      }
    }

    v9 = objc_allocWithZone(sub_24AAB3674());
    v7 = sub_24AAB3664();
    goto LABEL_19;
  }

  return result;
}

void sub_24AA8AE64(double a1, double a2)
{
  v3 = v2;
  swift_getKeyPath();
  *&v33 = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v6 = *(v2 + 16);
  if ((~v6 & 0xF000000000000007) != 0 && (v6 & 0xC000000000000000) == 0x4000000000000000)
  {
    v7 = *(v2 + 24);
    v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    swift_getKeyPath();
    *&v33 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    sub_24AA8CDAC(v6, v7);
    sub_24AA8F508(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + v9);
    if (v10 && (swift_getKeyPath(), *&v33 = v10, sub_24AA8F508(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel), , sub_24AAB2CF4(), , v11 = *(v10 + 32), , (v11 & 1) != 0) || (swift_getKeyPath(), *&v33 = v6 & 0x3FFFFFFFFFFFFFFFLL, sub_24AAB2CF4(), , v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel, swift_beginAccess(), (v13 = *(v8 + v12)) != 0) && (swift_getKeyPath(), *&v33 = v13, sub_24AA8F508(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel), , sub_24AAB2CF4(), , v14 = *(v13 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts), , v14 == 1))
    {
      v15 = sub_24AAB3A64();
      v16 = sub_24AAB5144();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_24AA0F000, v15, v16, "Dragging notification view is disabled because translation or screening is active", v17, 2u);
        MEMORY[0x24C226630](v17, -1, -1);
      }
    }

    else
    {

      v18 = sub_24AAB3A64();
      v19 = sub_24AAB5144();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v32[0] = v21;
        *v20 = 136315394;
        *&v33 = v3;
        type metadata accessor for NotificationController(0);
        v31 = v7;

        v22 = sub_24AAB4F44();
        v24 = sub_24AA406B4(v22, v23, v32);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        *&v33 = a1;
        *(&v33 + 1) = a2;
        type metadata accessor for CGPoint(0);
        v25 = sub_24AAB4F44();
        v27 = sub_24AA406B4(v25, v26, v32);

        *(v20 + 14) = v27;
        v7 = v31;
        _os_log_impl(&dword_24AA0F000, v18, v19, "%s: Started dragging notification view at point %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v21, -1, -1);
        MEMORY[0x24C226630](v20, -1, -1);
      }

      swift_getKeyPath();
      *&v33 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      swift_beginAccess();
      swift_getKeyPath();
      *&v33 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      swift_getKeyPath();
      *&v33 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      v28 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel;
      swift_beginAccess();
      v29 = *(v8 + v28);
      if (v29)
      {
        swift_getKeyPath();
        *&v33 = v29;
        sub_24AA8F508(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);

        sub_24AAB2CF4();

        swift_beginAccess();
      }

      v33 = 0u;
      v34 = 0u;
      v35 = 1;
      v30 = objc_allocWithZone(sub_24AAB3674());
      v15 = sub_24AAB3664();
      sub_24AA8B95C(v15);
    }

    sub_24AA8CE4C(v6, v7);
  }
}

void sub_24AA8B54C(double a1, double a2)
{

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    type metadata accessor for NotificationController(0);

    v6 = sub_24AAB4F44();
    v8 = sub_24AA406B4(v6, v7, &v14);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    type metadata accessor for CGSize(0);
    v9 = sub_24AAB4F44();
    v11 = sub_24AA406B4(v9, v10, &v14);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_24AA0F000, v2, v3, "%s: Notification content size changed to %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v12 = objc_allocWithZone(sub_24AAB3494());
  v13 = sub_24AAB3484();
  sub_24AA8B95C(v13);
}

void sub_24AA8B710(uint64_t a1, uint64_t a2)
{
  v3 = sub_24AAB2CB4();
  MEMORY[0x28223BE20](v3 - 8);
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v2 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xC000000000000000) == 0x8000000000000000)
  {
    v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24AA8CDAC(v4, *(v2 + 24));
    swift_unknownObjectRelease();
    sub_24AAB37C4();
    v6 = objc_allocWithZone(sub_24AAB3764());

    v7 = sub_24AAB3754();
    sub_24AA8B95C(v7);
  }

  else
  {
    v7 = sub_24AAB3A64();
    v8 = sub_24AAB5124();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AA0F000, v7, v8, "buttonClicked called but we're not presenting a notice.", v9, 2u);
      MEMORY[0x24C226630](v9, -1, -1);
    }
  }
}

void sub_24AA8B90C()
{
  v0 = [objc_allocWithZone(sub_24AAB3234()) init];
  sub_24AA8B95C(v0);
}

void sub_24AA8B95C(void *a1)
{
  v2 = v1;
  v4 = sub_24AAB3454();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v62 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger;

  v23 = a1;
  v24 = sub_24AAB3A64();
  v25 = sub_24AAB5144();

  v63 = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v55 = v12;
    v57 = v24;
    v58 = v16;
    v60 = v22;
    v61 = v8;
    v26 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69[0] = v56;
    *v26 = 136315650;
    v66 = v2;
    type metadata accessor for NotificationController(0);

    v27 = sub_24AAB4F44();
    v29 = sub_24AA406B4(v27, v28, v69);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v66 = v23;
    sub_24AAB3464();
    v59 = v23;
    v30 = v23;
    v31 = sub_24AAB4F44();
    v33 = sub_24AA406B4(v31, v32, v69);

    *(v26 + 14) = v33;
    v34 = v64;
    v35 = v65;
    *(v26 + 22) = 2080;
    v36 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    sub_24AA8F7B4(v2 + v36, v21);
    sub_24AA8F7B4(v21, v19);
    if ((*(v35 + 48))(v19, 1, v34) == 1)
    {
      sub_24AA8CFF0(v19);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v40 = v64;
      v39 = v65;
      v41 = v55;
      (*(v65 + 32))(v55, v19, v64);
      (*(v39 + 16))(v62, v41, v40);
      v38 = sub_24AAB4F44();
      v37 = v42;
      (*(v39 + 8))(v41, v40);
    }

    v43 = v57;
    sub_24AA8CFF0(v21);
    v44 = sub_24AA406B4(v38, v37, v69);

    *(v26 + 24) = v44;
    _os_log_impl(&dword_24AA0F000, v43, v63, "%s: Send downstream action %s for alert %s", v26, 0x20u);
    v45 = v56;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v45, -1, -1);
    MEMORY[0x24C226630](v26, -1, -1);

    v8 = v61;
    v16 = v58;
  }

  else
  {
  }

  v46 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
  swift_beginAccess();
  sub_24AA8F7B4(v2 + v46, v16);
  if ((*(v65 + 48))(v16, 1, v64) == 1)
  {
    sub_24AA8CFF0(v16);
  }

  else
  {
    (*(v65 + 32))(v8, v16, v64);

    v47 = sub_24AAB3654();

    if (v47)
    {

      sub_24AAB3264();

      (*(v65 + 8))(v8, v64);
      return;
    }

    (*(v65 + 8))(v8, v64);
  }

  v48 = sub_24AAB3A64();
  v49 = sub_24AAB5134();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v2;
    v68 = v51;
    *v50 = 136315138;
    type metadata accessor for NotificationController(0);

    v52 = sub_24AAB4F44();
    v54 = sub_24AA406B4(v52, v53, &v68);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_24AA0F000, v48, v49, "%s: XPC disconnected.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x24C226630](v51, -1, -1);
    MEMORY[0x24C226630](v50, -1, -1);
  }
}

void *NotificationController.deinit()
{
  v1 = v0;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    type metadata accessor for NotificationController(0);

    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AA0F000, v3, v4, "%s: Notification controller destroyed.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  sub_24AA8CE4C(*(v1 + 16), *(v1 + 24));
  sub_24AA8CFF0(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callsReminder));
  sub_24AA16D74(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8));
  (*(*(v2 - 8) + 8))(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger, v2);
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  v11 = sub_24AAB2D34();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t NotificationController.__deallocating_deinit()
{
  NotificationController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AA8C230()
{
  MEMORY[0x24C2257F0](60, 0xE100000000000000);
  v0 = sub_24AAB5584();
  MEMORY[0x24C2257F0](v0);

  MEMORY[0x24C2257F0](8250, 0xE200000000000000);
  sub_24AAB53E4();
  MEMORY[0x24C2257F0](62, 0xE100000000000000);
  return 0;
}

uint64_t NotificationController.promptConfirmation(for:conflictingCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_24AAB3694();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_24AAB50C4();
  v4[11] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_24AA8C42C, v7, v6);
}

uint64_t sub_24AA8C42C()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[2] = v1;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback))
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
    swift_getObjectType();
    sub_24AAB39A4();
    v4 = objc_allocWithZone(sub_24AAB3784());
    v5 = sub_24AAB3774();
    sub_24AA8B95C(v5);

    v6 = sub_24AAB50B4();
    v0[14] = v6;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_24AA8C668;
    v8 = v0[6];
    v9 = MEMORY[0x277D85700];
    v10 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 16, v6, v9, 0xD000000000000028, 0x800000024AAD2F10, sub_24AA8D060, v8, v10);
  }
}

uint64_t sub_24AA8C668()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24AA8C7AC, v3, v2);
}

uint64_t sub_24AA8C7AC()
{

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_24AA8C81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v10, v8, v4);
  *(v12 + v11) = v9;
  swift_getKeyPath();
  v15 = a2;
  v16 = sub_24AA8F600;
  v17 = v12;
  v18 = a2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);

  sub_24AAB2CE4();

  return result;
}

double sub_24AA8CA40(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  sub_24AAB50A4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA8CB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AA8CC40;

  return NotificationController.promptConfirmation(for:conflictingCall:)(a1, a2, a3);
}

uint64_t sub_24AA8CC40(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata accessor for NotificationController(uint64_t a1)
{
  result = qword_27EF87190;
  if (!qword_27EF87190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA8CD98(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_24AA8CDAC(result, a2);
  }
}

void sub_24AA8CDAC(unint64_t a1, uint64_t a2)
{
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
      swift_unknownObjectRetain();

      v4 = v5;
    }
  }

  else
  {
    if (v3)
    {
    }
  }
}

void sub_24AA8CE4C(unint64_t result, uint64_t a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_24AA8CE60(result, a2);
  }
}

void sub_24AA8CE60(unint64_t a1, uint64_t a2)
{
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 == 2)
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v3)
    {
    }
  }
}

uint64_t sub_24AA8CF24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA8CFB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24AA593F8(v1, v2);
}

uint64_t sub_24AA8CFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA8D074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AA8D0D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_24AA8D164(uint64_t a1)
{
  sub_24AA8D438(319);
  if (v1 <= 0x3F)
  {
    sub_24AAB3A84();
    if (v2 <= 0x3F)
    {
      sub_24AAB2D34();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AA8D438(uint64_t a1)
{
  if (!qword_27EF871A0)
  {
    sub_24AAB3454();
    v1 = sub_24AAB5274();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF871A0);
    }
  }
}

unint64_t sub_24AA8D4E0()
{
  result = qword_27EF871A8;
  if (!qword_27EF871A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF871A8);
  }

  return result;
}

void sub_24AA8D548(void *a1, void *a2)
{
  v137 = sub_24AAB3454();
  v136 = *(v137 - 8);
  v4 = MEMORY[0x28223BE20](v137);
  v131 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v133 = &v127 - v7;
  MEMORY[0x28223BE20](v6);
  v130 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v134 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v127 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v127 - v15;
  MEMORY[0x28223BE20](v14);
  v135 = &v127 - v16;
  v17 = (a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter), *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 24));
  v18 = [a1 uniqueProxyIdentifier];
  sub_24AAB4EF4();

  v19 = sub_24AAB3324();

  if (v19)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v140 = v19;
    v141 = AssociatedConformanceWitness;
    v21 = v19;
LABEL_5:
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();

    v23 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    swift_unknownObjectRelease_n();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v143[0] = v26;
      *v25 = 136315651;
      v144 = a2;
      type metadata accessor for NotificationController(0);

      v27 = sub_24AAB4F44();
      v29 = sub_24AA406B4(v27, v28, v143);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      swift_getObjectType();
      v30 = v141;
      v144 = sub_24AAB39A4();
      v145 = v31;
      v32 = sub_24AAB4F44();
      v34 = sub_24AA406B4(v32, v33, v143);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2081;
      v144 = v21;
      v145 = v30;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v35 = sub_24AAB4F44();
      v37 = sub_24AA406B4(v35, v36, v143);

      *(v25 + 24) = v37;
      _os_log_impl(&dword_24AA0F000, v23, v24, "%s: Successfully fetched call with identifier %s %{private}s.", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_24AAB32D4();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v22 = [a1 uniqueProxyIdentifier];
  sub_24AAB4EF4();

  v21 = sub_24AAB3324();

  if (v21)
  {
    swift_getAssociatedTypeWitness();
    v141 = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    v140 = v21;
    goto LABEL_5;
  }

  v21 = a1;
  v66 = sub_24AAB3A64();
  v67 = sub_24AAB5124();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v143[0] = v69;
    *v68 = 136315394;
    v144 = a2;
    type metadata accessor for NotificationController(0);

    v70 = sub_24AAB4F44();
    v72 = sub_24AA406B4(v70, v71, v143);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    v73 = [v21 uniqueProxyIdentifier];
    v74 = sub_24AAB4EF4();
    v76 = v75;

    v144 = v74;
    v145 = v76;
    v77 = sub_24AAB4F44();
    v79 = sub_24AA406B4(v77, v78, v143);

    *(v68 + 14) = v79;
    _os_log_impl(&dword_24AA0F000, v66, v67, "%s: Could not find call with identifier %s, using call passed from the app. The view won't receive call updates.", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v69, -1, -1);
    MEMORY[0x24C226630](v68, -1, -1);
  }

  swift_unknownObjectRetain();
  v140 = 0;
  v141 = MEMORY[0x277D07EF0];
LABEL_8:
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  v144 = a2;
  v138 = sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v39 = a2[2];
  if ((~v39 & 0xF000000000000007) != 0 && (v39 & 0xC000000000000000) == 0x4000000000000000)
  {
    v127 = v17;
    v40 = a2[3];
    v41 = a2[4];
    swift_getObjectType();
    v128 = v40;
    v129 = v41;
    sub_24AA8CDAC(v39, v40);
    v42 = sub_24AAB39A4();
    v44 = v43;
    swift_getObjectType();
    if (v42 == sub_24AAB39A4() && v44 == v45)
    {

      goto LABEL_14;
    }

    v46 = sub_24AAB5474();

    if (v46)
    {
LABEL_14:

      swift_unknownObjectRetain();
      v47 = sub_24AAB3A64();
      v48 = sub_24AAB5144();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v143[0] = v50;
        *v49 = 136315650;
        v144 = a2;
        type metadata accessor for NotificationController(0);

        v51 = sub_24AAB4F44();
        v53 = sub_24AA406B4(v51, v52, v143);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v144 = sub_24AAB39A4();
        v145 = v54;
        v55 = sub_24AAB4F44();
        v57 = sub_24AA406B4(v55, v56, v143);

        *(v49 + 14) = v57;
        *(v49 + 22) = 2080;
        v58 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
        swift_beginAccess();
        v59 = a2 + v58;
        v60 = v135;
        sub_24AA8F7B4(v59, v135);
        v61 = v132;
        sub_24AA8F7B4(v60, v132);
        v62 = v136;
        v63 = v137;
        if ((*(v136 + 48))(v61, 1, v137) == 1)
        {
          v64 = 7104878;
          sub_24AA8CFF0(v61);
          v65 = 0xE300000000000000;
        }

        else
        {
          v121 = *(v62 + 32);
          v141 = v50;
          v122 = v130;
          v121(v130, v61, v63);
          (*(v62 + 16))(v133, v122, v63);
          v64 = sub_24AAB4F44();
          v65 = v123;
          v124 = v122;
          v50 = v141;
          (*(v62 + 8))(v124, v63);
        }

        sub_24AA8CFF0(v135);
        v125 = sub_24AA406B4(v64, v65, v143);

        *(v49 + 24) = v125;
        _os_log_impl(&dword_24AA0F000, v47, v48, "%s: Already showing call with identifier %s notification %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v50, -1, -1);
        MEMORY[0x24C226630](v49, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_24AA8CE4C(v39, v128);
      }

      else
      {

        swift_unknownObjectRelease();
        sub_24AA8CE4C(v39, v128);
        swift_unknownObjectRelease();
      }

      return;
    }

    sub_24AA8CE4C(v39, v128);
    v17 = v127;
  }

  v135 = v38;

  swift_unknownObjectRetain();
  v80 = sub_24AAB3A64();
  v81 = sub_24AAB5144();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v143[0] = v132;
    *v82 = 136315907;
    v144 = a2;
    type metadata accessor for NotificationController(0);

    v83 = sub_24AAB4F44();
    v85 = sub_24AA406B4(v83, v84, v143);

    *(v82 + 4) = v85;
    *(v82 + 12) = 2080;
    swift_getObjectType();
    v86 = v141;
    v144 = sub_24AAB39A4();
    v145 = v87;
    v88 = sub_24AAB4F44();
    v90 = sub_24AA406B4(v88, v89, v143);

    *(v82 + 14) = v90;
    *(v82 + 22) = 2081;
    v144 = v21;
    v145 = v86;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v91 = sub_24AAB4F44();
    v93 = sub_24AA406B4(v91, v92, v143);

    *(v82 + 24) = v93;
    *(v82 + 32) = 2080;
    v94 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    v95 = a2 + v94;
    v96 = v139;
    sub_24AA8F7B4(v95, v139);
    v97 = v96;
    v98 = v134;
    sub_24AA8F7B4(v97, v134);
    v99 = v136;
    v100 = v137;
    if ((*(v136 + 48))(v98, 1, v137) == 1)
    {
      v101 = v98;
      v102 = 7104878;
      sub_24AA8CFF0(v101);
      v103 = 0xE300000000000000;
    }

    else
    {
      v104 = v131;
      (*(v99 + 32))(v131, v98, v100);
      (*(v99 + 16))(v133, v104, v100);
      v102 = sub_24AAB4F44();
      v105 = v99;
      v103 = v106;
      (*(v105 + 8))(v104, v100);
    }

    sub_24AA8CFF0(v139);
    v107 = sub_24AA406B4(v102, v103, v143);

    *(v82 + 34) = v107;
    _os_log_impl(&dword_24AA0F000, v80, v81, "%s: Showing call with identifier %s %{private}s in notification %s", v82, 0x2Au);
    v108 = v132;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v108, -1, -1);
    MEMORY[0x24C226630](v82, -1, -1);
  }

  v109 = type metadata accessor for CallNotificationViewModel(0);
  sub_24AA16768(v17, &v144);
  v110 = swift_allocObject();
  swift_weakInit();
  v111 = sub_24AAB36F4();
  swift_allocObject();

  v112 = sub_24AAB36E4();
  v143[3] = v111;
  v143[4] = MEMORY[0x277D07EB0];
  v143[0] = v112;
  ObjectType = swift_getObjectType();
  v115 = v146;
  v114 = v147;
  v116 = __swift_mutable_project_boxed_opaque_existential_1(&v144, v146);
  v142 = a2;
  v117 = type metadata accessor for NotificationController(0);
  v118 = sub_24AA8F508(&qword_27EF871B0, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);

  v119 = swift_unknownObjectRetain();
  *(&v126 + 1) = v114;
  *&v126 = v141;
  sub_24AA41C74(v119, v116, v143, &v142, sub_24AA8FAC8, v110, 0, v109, ObjectType, v115, v117, v126, v118);

  __swift_destroy_boxed_opaque_existential_1Tm(&v144);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v144 = a2;
  sub_24AAB2CE4();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

char *sub_24AA8E5E0(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v5 = sub_24AAB3A84();
  v6 = __swift_project_value_buffer(v5, qword_27EF919D8);
  v7 = *(v5 - 8);
  v18 = v4;
  (*(v7 + 16))(&a2[v4], v6, v5);
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_featureFlags;
  *&a2[v8] = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables] = MEMORY[0x277D84FA0];
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController] = 0;
  v17 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView] = 0;
  v10 = [objc_opt_self() tu_contactStore];
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore] = v10;
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  sub_24AAB2D24();
  if ([*&a2[v8] posterEnabledMac] && (swift_getObjectType(), (sub_24AAB3574() & 1) == 0) && (sub_24AAB3254(), (sub_24AAB3864() & 1) != 0))
  {
    v13 = &a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call];
    *v13 = a1;
    *(v13 + 1) = MEMORY[0x277D07E80];
    swift_unknownObjectRetain();
    v14 = sub_24AA476E8();
    sub_24AA47AAC(v14);
    sub_24AA47C14();
  }

  else
  {

    (*(v7 + 8))(&a2[v18], v5);

    v15 = sub_24AAB2D34();
    (*(*(v15 - 8) + 8))(&a2[v12], v15);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return a2;
}

uint64_t sub_24AA8E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v91 = a7;
  v87 = a6;
  v86 = a5;
  v85 = a1;
  v88 = type metadata accessor for CallSubtitle(0);
  MEMORY[0x28223BE20](v88);
  v90 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v89);
  v14 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24AAB3A84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96[3] = sub_24AAB36F4();
  v96[4] = MEMORY[0x277D07EB0];
  v96[0] = a3;
  v95[3] = sub_24AAB35D4();
  v95[4] = MEMORY[0x277D07EA8];
  v95[0] = a2;
  v94[3] = type metadata accessor for NotificationController(0);
  v94[4] = sub_24AA8F508(&qword_27EF871B0, type metadata accessor for NotificationController, &protocol conformance descriptor for NotificationController);
  v94[0] = a4;
  v19 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_27EF919D8);
  v81 = *(v16 + 16);
  (v81)(a8 + v19, v20, v15);
  v21 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 5;
  v22 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = -1;
  type metadata accessor for CallHoldingAnalytics(0);
  v23 = swift_allocObject();
  v84 = v19;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85888, &qword_24AAB7950);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v24 + 16) = v25;
  v26 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  v27 = sub_24AAB2C54();
  v28 = *(*(v27 - 8) + 56);
  v82 = v16;
  v28(v24 + v26, 1, 1, v27);
  v28(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp, 1, 1, v27);
  *(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = v24;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = 0;
  v83 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__liveVoicemailViewController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = 0;
  v29 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  v30 = sub_24AAB2AA4();
  (*(*(v30 - 8) + 56))(a8 + v29, 1, 1, v30);
  v31 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  *v31 = 0;
  v31[1] = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) = 0;
  v32 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags;
  *(a8 + v32) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager) = 1;
  sub_24AAB2D24();
  v33 = a8 + v84;
  v84 = v15;
  (v81)(v18, v33, v15);
  v34 = v85;

  v35 = sub_24AAB3A64();
  v36 = sub_24AAB5144();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v81 = v18;
    v38 = v34;
    v39 = v37;
    v40 = swift_slowAlloc();
    v92[0] = v40;
    *v39 = 136316162;
    *(v39 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v92);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v92);
    *(v39 + 22) = 2048;
    *(v39 + 24) = 158;
    *(v39 + 32) = 2080;
    sub_24AAB3254();
    v41 = sub_24AAB39A4();
    v43 = sub_24AA406B4(v41, v42, v92);

    *(v39 + 34) = v43;
    *(v39 + 42) = 1024;
    v44 = v38;
    v45 = v91;
    *(v39 + 44) = v91 & 1;
    _os_log_impl(&dword_24AA0F000, v35, v36, "[%s:%s:%ld] Initializing CallNotificationViewModel with call: %s, isScreenLocked: %{BOOL}d", v39, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v40, -1, -1);
    MEMORY[0x24C226630](v39, -1, -1);

    (*(v82 + 8))(v81, v84);
  }

  else
  {

    (*(v82 + 8))(v18, v84);
    v44 = v34;
    v45 = v91;
  }

  v46 = MEMORY[0x277D07E80];
  v47 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  *v47 = v44;
  v47[1] = v46;
  sub_24AA16768(v95, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  sub_24AA16768(v96, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder);
  type metadata accessor for CallNotificationPosterViewModel(0);
  v48 = swift_allocObject();
  v49 = swift_retain_n();
  v50 = sub_24AA8E5E0(v49, v48);
  v51 = v83;

  *(a8 + v51) = v50;
  sub_24AA16768(v95, v92);
  sub_24AA16768(v94, v93);
  sub_24AAB3734();
  swift_allocObject();
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper) = sub_24AAB3714();
  v52 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
  v53 = v86;
  v54 = v87;
  *v52 = v86;
  v52[1] = v54;
  ObjectType = swift_getObjectType();
  v92[0] = v44;

  sub_24AA16D2C(v53, v54);
  v56 = *(v46 + 8);
  v87 = sub_24AA87578(v92, 0, v45 & 1, ObjectType, v56);
  v86 = v57;
  v58 = sub_24AA86BC8(v92, 0, 0, ObjectType, v56);
  v85 = v59;
  swift_storeEnumTagMultiPayload();
  v60 = sub_24AAB3564();
  if (v60 && (v61 = v60, v62 = [v60 shouldHideContactWithLockState_], v61, v62))
  {
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v63 = sub_24AA86F34(v92, ObjectType, v56);
  }

  v64 = sub_24AAB35A4();
  v65 = sub_24AAB3574();
  if ([v64 isFaceTimeProvider])
  {

    if (v65)
    {
      v66 = 2;
    }

    else
    {
      v66 = 1;
    }
  }

  else
  {
    v67 = [v64 isTelephonyProvider];

    if (v67)
    {
      v66 = 0;
    }

    else
    {
      v66 = 3;
    }
  }

  v68 = sub_24AAB3554();
  v70 = v69;

  v71 = v86;
  *v14 = v87;
  v14[1] = v71;
  v72 = v85;
  v14[2] = v58;
  v14[3] = v72;
  v73 = v89;
  sub_24AA44DD4(v90, v14 + *(v89 + 24), type metadata accessor for CallSubtitle);
  *(v14 + v73[7]) = v63;
  *(v14 + v73[8]) = v66;
  v74 = (v14 + v73[9]);
  *v74 = v68;
  v74[1] = v70;
  sub_24AA44DD4(v14, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked) = v91 & 1;
  sub_24AA23BC0();
  v75 = sub_24AAB3A64();
  v76 = sub_24AAB5144();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v92[0] = v78;
    *v77 = 136315650;
    *(v77 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v92);
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v92);
    *(v77 + 22) = 2048;
    *(v77 + 24) = 169;
    _os_log_impl(&dword_24AA0F000, v75, v76, "[%s:%s:%ld] CallNotificationViewModel features set up completed. Starting control recipe creation", v77, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v78, -1, -1);
    MEMORY[0x24C226630](v77, -1, -1);
  }

  sub_24AA2A2D4(v92);
  sub_24AA1D19C(v92);
  sub_24AA29C9C(v92);
  sub_24AA20C48(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  return a8;
}

uint64_t sub_24AA8F508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA8F558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

double sub_24AA8F600(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AA8CA40(a1, v1 + v4, v5);
}

uint64_t sub_24AA8F6C0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24AA16D2C(v1, v2);
  return sub_24AA16D74(v4, v5);
}

uint64_t sub_24AA8F718()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA8F750(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24AA8F7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA8F824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AA8F864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA89D14(a1, v4, v5, v6);
}

uint64_t sub_24AA8F918()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AA8F960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA43DBC;

  return sub_24AA895D8(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA8FA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24AA8FAE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_24AA73590(a1, a2, a3);
  sub_24AAB40A4();
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_24AA8FB34(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24AA73590(a1, a2, a3);

  return sub_24AAB40B4();
}

uint64_t VideoCallNotificationView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return v1;
}

void (*VideoCallNotificationView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return sub_24AA77F28;
}

uint64_t VideoCallNotificationView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  return v1;
}

void *VideoCallNotificationView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  a2[2] = 0;
  v3 = *(type metadata accessor for VideoCallNotificationView(0) + 24);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CallNotificationViewModel(0);
  result = sub_24AAB4B54();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t type metadata accessor for VideoCallNotificationView(uint64_t a1)
{
  result = qword_27EF871E0;
  if (!qword_27EF871E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA8FE24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for CallStatusView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87248, &qword_24AABD1F8) - 8;
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87250, &qword_24AABD200) - 8;
  v8 = MEMORY[0x28223BE20](v46);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - v12;
  v13 = a1[1];
  *&v49 = *a1;
  *(&v49 + 1) = v13;
  *&v56 = v49;
  *(&v56 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  v14 = v62;
  v15 = v63;
  swift_getKeyPath();
  v62 = v14;
  *&v63 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F08, &qword_24AABD230);
  sub_24AAB4C04();

  v50 = v49;
  sub_24AAB4B84();
  v16 = v56;
  v17 = v57;
  swift_getKeyPath();
  v56 = v16;
  *&v57 = v17;
  sub_24AAB4C04();

  v18 = v50;
  v19 = v51;

  *&v6[v4[11]] = 0;
  v20 = v4[12];
  *&v6[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v21 = &v6[v4[7]];
  *v21 = v18;
  v21[16] = v19;
  v22 = v49;
  v6[v4[8]] = 1;
  v6[v4[9]] = 1;
  *&v6[v4[10]] = 0x404B000000000000;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v23 = v6;
  v24 = v42;
  v25 = v44;
  sub_24AA91704(v23, v44, type metadata accessor for CallStatusView);
  v26 = (v25 + *(v45 + 44));
  v27 = v67;
  v26[4] = v66;
  v26[5] = v27;
  v26[6] = v68;
  v28 = v63;
  *v26 = v62;
  v26[1] = v28;
  v29 = v65;
  v26[2] = v64;
  v26[3] = v29;
  v30 = v25;
  v31 = v43;
  sub_24AA1A25C(v30, v43, &qword_27EF87248, &qword_24AABD1F8);
  *(v31 + *(v46 + 44)) = 0;
  sub_24AA1A25C(v31, v24, &qword_27EF87250, &qword_24AABD200);
  v32 = *(&v49 + 1);
  v56 = __PAIR128__(*(&v49 + 1), v22);
  sub_24AAB4B64();
  v33 = v50;
  swift_getKeyPath();
  *&v56 = v33;
  sub_24AA91774();
  sub_24AAB2CF4();

  v34 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v33 + v34, &v56);

  v52 = v58;
  v53 = v59;
  v54 = v60;
  LODWORD(v34) = v61;
  LOBYTE(v55) = v61;
  v50 = v56;
  v51 = v57;
  sub_24AA4214C(&v50);
  if (v34)
  {
    *&v56 = v22;
    *(&v56 + 1) = v32;
    sub_24AAB4B64();
    v35 = v50;
    swift_getKeyPath();
    *&v56 = v35;
    sub_24AAB2CF4();

    v36 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v35 + v36, &v50);

    *(&v55 + 1) = sub_24AAB3D74();
    v58 = v52;
    v59 = v53;
    v56 = v50;
    v57 = v51;
    v60 = v54;
    v61 = v55;
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
  }

  v37 = v47;
  sub_24AA1695C(v24, v47, &qword_27EF87250, &qword_24AABD200);
  sub_24AA1695C(&v56, &v50, &qword_27EF87258, &qword_24AABD288);
  v38 = v48;
  sub_24AA1695C(v37, v48, &qword_27EF87250, &qword_24AABD200);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87260, &qword_24AABD290);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_24AA1695C(&v50, v38 + *(v39 + 64), &qword_27EF87258, &qword_24AABD288);
  sub_24AA169C4(&v56, &qword_27EF87258, &qword_24AABD288);
  sub_24AA169C4(v24, &qword_27EF87250, &qword_24AABD200);
  sub_24AA169C4(&v50, &qword_27EF87258, &qword_24AABD288);
  return sub_24AA169C4(v37, &qword_27EF87250, &qword_24AABD200);
}

uint64_t VideoCallNotificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C0, &qword_24AABD0B0);
  MEMORY[0x28223BE20](v56);
  v4 = v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C8, &qword_24AABD0B8);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB8, &qword_24AABD0C0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v49 - v9;
  *v10 = sub_24AAB41B4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871D0, &qword_24AABD0C8);
  sub_24AA90BB0(v1, &v10[*(v11 + 44)]);
  sub_24AAB4D44();
  sub_24AAB3D54();
  v12 = &v10[*(v8 + 44)];
  v13 = v64;
  *v12 = v63;
  *(v12 + 1) = v13;
  *(v12 + 2) = v65;
  v14 = type metadata accessor for VideoCallNotificationView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24AA90DE4(v1, v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24AAB50C4();
  v17 = sub_24AAB50B4();
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_24AA91704(v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for VideoCallNotificationView);
  v54 = sub_24AAB50F4();
  v21 = *(v54 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v49 - v23;
  sub_24AAB50D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v52 = sub_24AAB3E94();
    v53 = v49;
    v51 = *(v52 - 8);
    MEMORY[0x28223BE20](v52);
    v26 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_24AAB5374();

    v61 = 0xD000000000000043;
    v62 = 0x800000024AAD3020;
    v60 = 53;
    v27 = sub_24AAB5444();
    v50 = v2;
    MEMORY[0x24C2257F0](v27);

    v49[1] = v49;
    MEMORY[0x28223BE20](v28);
    v29 = v49 - v23;
    v30 = v49 - v23;
    v31 = v54;
    (*(v21 + 16))(v29, v30, v54);
    v2 = v50;
    sub_24AAB3E84();
    (*(v21 + 8))(v24, v31);
    v32 = v55;
    sub_24AA1A25C(v10, v55, &qword_27EF84CB8, &qword_24AABD0C0);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC0, &qword_24AAB62E0);
    (*(v51 + 32))(v32 + *(v33 + 36), v26, v52);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC8, &qword_24AAB62E8);
    v35 = v55;
    v36 = (v55 + *(v34 + 36));
    v37 = sub_24AAB3E14();
    (*(v21 + 32))(&v36[*(v37 + 20)], v24, v54);
    v32 = v35;
    *v36 = &unk_24AABD0D8;
    *(v36 + 1) = v19;
    sub_24AA1A25C(v10, v35, &qword_27EF84CB8, &qword_24AABD0C0);
  }

  v38 = *(v56 + 36);
  v39 = *MEMORY[0x277CDF3C0];
  v40 = sub_24AAB3CE4();
  v41 = *(v40 - 8);
  (*(v41 + 104))(&v4[v38], v39, v40);
  (*(v41 + 56))(&v4[v38], 0, 1, v40);
  (*(v57 + 32))(v4, v32, v58);
  KeyPath = swift_getKeyPath();
  v43 = v2[1];
  v61 = *v2;
  v62 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v44 = v60;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_24AA910A4;
  *(v45 + 24) = v44;
  v46 = v59;
  sub_24AA91110(v4, v59);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871D8, &unk_24AABD110);
  v48 = (v46 + *(result + 36));
  *v48 = KeyPath;
  v48[1] = sub_24AA1B7D0;
  v48[2] = v45;
  return result;
}

uint64_t sub_24AA90BB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87228, &qword_24AABD1D8);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  *v10 = sub_24AAB41C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87230, &qword_24AABD1E0) + 44)];
  *v11 = sub_24AAB4104();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87238, &qword_24AABD1E8);
  sub_24AA8FE24(a1, &v11[*(v12 + 44)]);
  v13 = sub_24AAB44D4();
  v14 = &v10[*(v5 + 44)];
  *v14 = v13;
  *(v14 + 8) = xmmword_24AABD060;
  *(v14 + 24) = xmmword_24AABD060;
  v14[40] = 0;
  v15 = [objc_opt_self() sharedInstance];
  v21[1] = 0x3FFC71C71C71C71CLL;
  sub_24AAB4B54();
  v16 = v21[2];
  v17 = v21[3];
  sub_24AA1695C(v10, v8, &qword_27EF87228, &qword_24AABD1D8);
  sub_24AA1695C(v8, a2, &qword_27EF87228, &qword_24AABD1D8);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87240, &qword_24AABD1F0) + 48);
  *v18 = v15;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v18 + 24) = v16;
  *(v18 + 32) = v17;

  v19 = v15;
  sub_24AA169C4(v10, &qword_27EF87228, &qword_24AABD1D8);

  return sub_24AA169C4(v8, &qword_27EF87228, &qword_24AABD1D8);
}

uint64_t sub_24AA90DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoCallNotificationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA90E48()
{
  v1 = (type metadata accessor for VideoCallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24AAB3CE4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA90F74()
{
  v2 = *(type metadata accessor for VideoCallNotificationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA43DBC;

  return sub_24AA7F50C(v4, v5, v0 + v3);
}

double sub_24AA91050@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_24AA73590(a1, a2, a3);
  sub_24AAB40A4();
  result = *&v6;
  *a4 = v6;
  return result;
}

void sub_24AA910A4(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_24AA2F6C4(&v2);
}

uint64_t sub_24AA910D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA91110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C0, &qword_24AABD0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA911BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA9128C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA9133C(uint64_t a1)
{
  sub_24AA91428(319, &qword_27EF86C30, type metadata accessor for CallNotificationViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24AA91428(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA91428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_24AA91490()
{
  result = qword_27EF871F0;
  if (!qword_27EF871F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF871D8, &unk_24AABD110);
    sub_24AA91548();
    sub_24AA16A68(&qword_27EF87218, &qword_27EF87220, &qword_24AABD1D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF871F0);
  }

  return result;
}

unint64_t sub_24AA91548()
{
  result = qword_27EF871F8;
  if (!qword_27EF871F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF871C0, &qword_24AABD0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CB8, &qword_24AABD0C0);
    sub_24AA9163C();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF871F8);
  }

  return result;
}

unint64_t sub_24AA9163C()
{
  result = qword_27EF87200;
  if (!qword_27EF87200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CB8, &qword_24AABD0C0);
    sub_24AA16A68(&qword_27EF87208, &qword_27EF87210, &unk_24AABD1C0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87200);
  }

  return result;
}

uint64_t sub_24AA91704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AA91774()
{
  result = qword_27EF854D8;
  if (!qword_27EF854D8)
  {
    type metadata accessor for CallNotificationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF854D8);
  }

  return result;
}

uint64_t sub_24AA917CC()
{
  v0 = sub_24AAB3A84();
  __swift_allocate_value_buffer(v0, qword_27EF919D8);
  __swift_project_value_buffer(v0, qword_27EF919D8);
  sub_24AAB3224();
  return sub_24AAB3A74();
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

uint64_t sub_24AA918B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MoreMenuControl(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA91978(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MoreMenuControl(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MoreMenuButton(uint64_t a1)
{
  result = qword_27EF87268;
  if (!qword_27EF87268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA91A68(uint64_t a1)
{
  sub_24AAB30F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MoreMenuControl(319);
    if (v2 <= 0x3F)
    {
      sub_24AA91B0C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA91B0C()
{
  if (!qword_27EF87278)
  {
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF87278);
    }
  }
}

uint64_t sub_24AA91B78@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_24AAB4394();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v67);
  v5 = &v55 - v4;
  v59 = sub_24AAB3ED4();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MoreMenuButton(0);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v72 = &v55 - v16;
  sub_24AA92B2C(v1, &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v8 + 80);
  v18 = (v17 + 16) & ~v17;
  v63 = v9;
  v61 = v17;
  v19 = swift_allocObject();
  v62 = v18;
  v20 = v19 + v18;
  v21 = v14;
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA92B94(v64, v20);
  v73 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  sub_24AAB4BB4();
  sub_24AAB3EC4();
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
  sub_24AA9302C(&qword_27EF84D08, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v22 = v56;
  v23 = v59;
  v24 = v1;
  sub_24AAB49B4();
  (*(v60 + 8))(v7, v23);
  (*(v57 + 8))(v11, v22);
  v25 = v12;
  v26 = *(v12 + 36);
  v27 = v58;
  v28 = &v14[v26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v28 = swift_getKeyPath();
  v29 = v1 + v27[5];
  v30 = type metadata accessor for MoreMenuControl(0);
  v31 = *(v30 + 28);
  if (*(v29 + *(v30 + 36)) == 1 && (v32 = *(v29 + v31 + 24)) != 0)
  {
    v33 = *(v29 + v31 + 16);
  }

  else
  {
    v34 = (v29 + v31);
    v33 = *v34;
    v32 = v34[1];
  }

  v35 = *(v24 + v27[6]);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v36 = v67;
  v37 = *(v67 + 36);
  *&v5[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v38 = &v5[v36[10]];
  *v38 = v33;
  *(v38 + 1) = v32;
  v39 = &v5[v36[12]];
  *v39 = v35;
  *(v39 + 1) = v35;
  v39[16] = 0;
  v40 = &v5[v36[13]];
  v57 = sub_24AA14EE0();
  v41 = sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v40 = 0u;
  *(v40 + 1) = 0u;
  sub_24AAB47E4();
  sub_24AA92D80(v5);
  sub_24AA92DE8(v21);
  v42 = v24 + v27[7];
  v43 = *v42;
  v44 = *(v42 + 8);
  v78 = v43;
  v79 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  sub_24AAB4B84();
  v59 = v75;
  LODWORD(v60) = v76;
  v45 = v64;
  sub_24AA92B2C(v24, v64);
  v46 = v62;
  v47 = swift_allocObject();
  sub_24AA92B94(v45, v47 + v46);
  v48 = sub_24AAB4BA4();
  v49 = v69;
  v50 = v70;
  *v69 = v48;
  v51 = v71;
  (*(v50 + 104))(v49, *MEMORY[0x277CDE248], v71);
  MEMORY[0x24C224D90](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0);
  v74 = v25;
  v75 = v36;
  v76 = v57;
  v77 = v41;
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  v52 = v66;
  v53 = v72;
  sub_24AAB4804();

  (*(v50 + 8))(v49, v51);
  return (*(v65 + 8))(v53, v52);
}

uint64_t sub_24AA923EC(uint64_t a1)
{
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v1 = sub_24AAB3A84();
  __swift_project_value_buffer(v1, qword_27EF919D8);
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "did tap MoreMenuButton", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  type metadata accessor for MoreMenuButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AA9251C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MoreMenuButton(0);
  type metadata accessor for MoreMenuControl(0);

  v3 = sub_24AAB4AC4();
  v4 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

uint64_t sub_24AA925A0@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24AAB4334();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24AAB2EF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D30, &unk_24AAB6320);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;

  sub_24AAB2EE4();
  sub_24AAB4D14();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D38, &unk_24AABD3C0);
  v13 = sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0], MEMORY[0x277CFB9C8]);
  v30 = v4;
  v31 = MEMORY[0x277CE0F78];
  v32 = v13;
  v33 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = MEMORY[0x277CE1340];
  v15 = MEMORY[0x277CE1350];
  sub_24AAB4974();
  (*(v5 + 8))(v7, v4);
  sub_24AAB4324();
  v30 = v4;
  v31 = v15;
  v32 = v12;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = OpaqueTypeConformance2;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v28;
  v17 = v25;
  sub_24AAB48C4();
  (*(v27 + 8))(v3, v29);
  (*(v26 + 8))(v11, v17);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0) + 36);
  v19 = *MEMORY[0x277CDF3C0];
  v20 = sub_24AAB3CE4();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16 + v18, v19, v20);
  return (*(v21 + 56))(v16 + v18, 0, 1, v20);
}

double sub_24AA929B8(uint64_t a1)
{
  sub_24AAB4A24();
  sub_24AAB2EF4();
  sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0], MEMORY[0x277CFB9C8]);
  sub_24AAB48A4();

  return result;
}

double sub_24AA92A64(uint64_t a1)
{
  sub_24AAB4A14();
  sub_24AAB4A54();

  sub_24AAB2EF4();
  sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0], MEMORY[0x277CFB9C8]);
  sub_24AAB48A4();

  return result;
}

uint64_t sub_24AA92B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreMenuButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA92B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreMenuButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA92BF8()
{
  v1 = *(type metadata accessor for MoreMenuButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA923EC(v2);
}

uint64_t sub_24AA92CA8(uint64_t a1)
{
  v2 = sub_24AAB3F54();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3FB4();
}

uint64_t sub_24AA92D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA92DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MoreMenuButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  sub_24AA15ED0(*v5, *(v5 + 8), *(v5 + 16));
  v6 = type metadata accessor for MoreMenuControl(0);
  v7 = *(v6 + 20);
  v8 = sub_24AAB2B84();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + *(v6 + 28);

  if (*(v9 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA92FBC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MoreMenuButton(0);

  return sub_24AA925A0(a1);
}

uint64_t sub_24AA9302C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA9307C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD0, &unk_24AAB62F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD8, &unk_24AABD3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CallStatusView.init(viewModel:compact:showSubtitleWhenActive:avatarSize:shouldShowAvatar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for CallStatusView(0);
  *(a7 + v16[9]) = 0;
  v17 = v16[10];
  *(a7 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  result = sub_24AA1A25C(a1, a7, &qword_27EF87288, &qword_24AABD438);
  v19 = a7 + v16[5];
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a4;
  *(a7 + v16[6]) = a6;
  *(a7 + v16[7]) = a5;
  *(a7 + v16[8]) = a8;
  return result;
}

uint64_t type metadata accessor for CallStatusView(uint64_t a1)
{
  result = qword_27EF87298;
  if (!qword_27EF87298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA932F4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873F0, &qword_24AABD660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873F8, &qword_24AABD668);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87400, &qword_24AABD670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87408, &qword_24AABD678);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87410, &unk_24AABD680);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_24AAB2AF4();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v21);
  v22 = *(v20 + 3);

  sub_24AA97374(v20, type metadata accessor for CallStatusViewModel);
  v23 = 1;
  if (v22)
  {
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    sub_24AAB4654();
    v24 = sub_24AAB4664();
    (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
    sub_24AAB4654();
    v25 = sub_24AAB4684();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    v26 = v38;
    sub_24AAB4694();
    v27 = sub_24AAB46A4();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = sub_24AAB4644();
    (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
    sub_24AAB4A44();
    sub_24AAB4A54();

    sub_24AAB46B4();
    v29 = sub_24AAB46C4();
    (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
    v30 = sub_24AA1695C(v16, v39, &qword_27EF87410, &unk_24AABD680);
    sub_24AA97698(v30, v31, v32);
    v33 = v40;
    sub_24AAB2AC4();
    sub_24AA169C4(v16, &qword_27EF87410, &unk_24AABD680);
    v23 = 0;
    v34 = v33;
  }

  else
  {
    v34 = v40;
  }

  v35 = sub_24AAB2AA4();
  return (*(*(v35 - 8) + 56))(v34, v23, 1, v35);
}

uint64_t sub_24AA93828@<X0>(void *a1@<X8>)
{
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CallStatusView(0);
  sub_24AA1695C(v1 + *(v10 + 40), v9, &qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24AAB3CE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24AAB5134();
    v13 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t CallStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallStatusViewModel(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v7);
  LODWORD(v4) = v6[*(v4 + 40)];
  sub_24AA97374(v6, type metadata accessor for CallStatusViewModel);
  if (v4 == 3)
  {
    v8 = 0x4020000000000000;
  }

  else
  {
    v8 = 0x4024000000000000;
  }

  *a1 = sub_24AAB4104();
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87290, &qword_24AABD440);
  return sub_24AA93B24(v1, (a1 + *(v9 + 44)));
}

uint64_t sub_24AA93B24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v69 = sub_24AAB4404();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872C8, &qword_24AABD4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872D0, &qword_24AABD4E8);
  MEMORY[0x28223BE20](v61);
  v62 = &v54 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872D8, &qword_24AABD4F0);
  MEMORY[0x28223BE20](v63);
  v9 = &v54 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872E0, &unk_24AABD4F8);
  v57 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v54 - v12;
  v13 = type metadata accessor for CallStatusViewModel(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = type metadata accessor for CallStatusView(0);
  v20 = (a1 + *(v19 + 20));
  v21 = *v20;
  v22 = v20[1];
  LODWORD(v20) = *(v20 + 16);
  v82 = v21;
  v83 = v22;
  v56 = v20;
  LOBYTE(v84) = v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
  MEMORY[0x24C225430](&v77);
  if (v77)
  {
    v60 = 0;
    v23 = 0;
    v59 = 0;
    v58 = 0;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v24 = a1;
  }

  else
  {
    v24 = a1;
    if (*(a1 + *(v19 + 24)) == 1)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
      v54 = v22;
      v26 = v21;
      v27 = v25;
      MEMORY[0x24C225430]();
      v60 = *&v18[*(v13 + 28)];

      sub_24AA97374(v18, type metadata accessor for CallStatusViewModel);
      v28 = v27;
      v21 = v26;
      v22 = v54;
      MEMORY[0x24C225430](v28);
      v29 = v16[*(v13 + 32)];
      sub_24AA97374(v16, type metadata accessor for CallStatusViewModel);
      v59 = swift_allocObject();
      *(v59 + 16) = v29;
      sub_24AAB4D44();
      sub_24AAB3D54();
      v58 = v92;
      v76 = v93;
      v75 = v94;
      v74 = v95;
      v73 = v96;
      v72 = v97;
      v71 = sub_24AAB3D74();
      v23 = sub_24AA97364;
    }

    else
    {
      v60 = 0;
      v23 = 0;
      v59 = 0;
      v58 = 0;
      v76 = 0;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = 0;
      v71 = 0;
    }
  }

  v54 = v23;
  *v6 = sub_24AAB41C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872E8, &qword_24AABD508);
  sub_24AA94420(v24, &v6[*(v30 + 44)]);
  v31 = sub_24AAB4DD4();
  v32 = sub_24AAB43E4();
  sub_24AAB4E14();
  v34 = v33;
  v36 = v35;
  v37 = v62;
  sub_24AA1A25C(v6, v62, &qword_27EF872C8, &qword_24AABD4E0);
  v38 = v37 + *(v61 + 36);
  *v38 = 0x656C746974627573;
  *(v38 + 8) = 0xE800000000000000;
  *(v38 + 16) = v31;
  *(v38 + 24) = v32;
  *(v38 + 32) = v34;
  *(v38 + 40) = v36;
  *(v38 + 48) = 1;
  v82 = v21;
  v83 = v22;
  LOBYTE(v84) = v56;
  MEMORY[0x24C225430](&v77, v55);
  LOBYTE(v31) = v77;
  sub_24AA1A25C(v37, v9, &qword_27EF872D0, &qword_24AABD4E8);
  v9[*(v63 + 52)] = v31;
  v39 = v67;
  sub_24AAB43F4();
  sub_24AA16A68(&qword_27EF872F0, &qword_27EF872D8, &qword_24AABD4F0, MEMORY[0x277CE1148]);
  v40 = v64;
  sub_24AAB4894();
  (*(v68 + 8))(v39, v69);
  sub_24AA169C4(v9, &qword_27EF872D8, &qword_24AABD4F0);
  v41 = v57;
  v42 = *(v57 + 16);
  v43 = v65;
  v44 = v66;
  v42(v65, v40, v66);
  v45 = v60;
  *&v77 = v60;
  *(&v77 + 1) = v23;
  v46 = v59;
  *&v78 = v59;
  v47 = v58;
  *(&v78 + 1) = v58;
  *&v79 = v76;
  *(&v79 + 1) = v75;
  *&v80 = v74;
  *(&v80 + 1) = v73;
  *&v81 = v72;
  *(&v81 + 1) = v71;
  v48 = v80;
  v49 = v70;
  *(v70 + 2) = v79;
  *(v49 + 3) = v48;
  *(v49 + 4) = v81;
  v50 = v78;
  *v49 = v77;
  *(v49 + 1) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872F8, &qword_24AABD510);
  v42(&v49[*(v51 + 48)], v43, v44);
  sub_24AA1695C(&v77, &v82, &qword_27EF87300, &qword_24AABD518);
  v52 = *(v41 + 8);
  v52(v40, v44);
  v52(v43, v44);
  v82 = v45;
  v83 = v54;
  v84 = v46;
  v85 = v47;
  v86 = v76;
  v87 = v75;
  v88 = v74;
  v89 = v73;
  v90 = v72;
  v91 = v71;
  return sub_24AA169C4(&v82, &qword_27EF87300, &qword_24AABD518);
}

uint64_t sub_24AA94420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = sub_24AAB3CE4();
  v3 = *(v51 - 8);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v7;
  v52 = sub_24AAB4DB4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87308, &qword_24AABD520);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87310, &qword_24AABD528);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v46 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87318, &qword_24AABD530);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v45 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  *v25 = sub_24AAB4104();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87320, &qword_24AABD538);
  sub_24AA94978(&v25[*(v26 + 44)]);
  sub_24AA95100(a1, v12);
  v27 = sub_24AAB4554();
  KeyPath = swift_getKeyPath();
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87328, &qword_24AABD570) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = [objc_opt_self() secondaryLabelColor];
  *&v12[*(v10 + 44)] = sub_24AAB49C4();
  v31 = v47;
  sub_24AA93828(v47);
  v32 = v51;
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v51);
  LOBYTE(v10) = sub_24AAB3CD4();
  v33 = *(v3 + 8);
  v33(v6, v32);
  v33(v31, v32);
  v34 = v50;
  v35 = MEMORY[0x277CE13B8];
  if ((v10 & 1) == 0)
  {
    v35 = MEMORY[0x277CE13B0];
  }

  v36 = v49;
  v37 = v52;
  (*(v50 + 104))(v49, *v35, v52);
  (*(v34 + 32))(&v19[*(v14 + 44)], v36, v37);
  sub_24AA1A25C(v12, v19, &qword_27EF87308, &qword_24AABD520);
  v38 = v46;
  sub_24AA1A25C(v19, v46, &qword_27EF87310, &qword_24AABD528);
  v39 = v45;
  sub_24AA1695C(v25, v45, &qword_27EF87318, &qword_24AABD530);
  v40 = v48;
  sub_24AA1695C(v38, v48, &qword_27EF87310, &qword_24AABD528);
  v41 = v53;
  sub_24AA1695C(v39, v53, &qword_27EF87318, &qword_24AABD530);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87330, &qword_24AABD578);
  sub_24AA1695C(v40, v41 + *(v42 + 48), &qword_27EF87310, &qword_24AABD528);
  sub_24AA169C4(v38, &qword_27EF87310, &qword_24AABD528);
  sub_24AA169C4(v25, &qword_27EF87318, &qword_24AABD530);
  sub_24AA169C4(v40, &qword_27EF87310, &qword_24AABD528);
  return sub_24AA169C4(v39, &qword_27EF87318, &qword_24AABD530);
}

uint64_t sub_24AA94978@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F18, &qword_24AABD640);
  MEMORY[0x28223BE20](v1 - 8);
  v69 = &v67 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  v7 = sub_24AAB2AA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873D8, &qword_24AABD648);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v67 - v16;
  v17 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873E0, &qword_24AABD650);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v74 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v26);

  sub_24AA97374(v19, type metadata accessor for CallStatusViewModel);
  v27 = [objc_opt_self() labelColor];
  sub_24AAB2F14();
  sub_24AAB4554();
  sub_24AAB45A4();
  v28 = sub_24AAB45E4();

  KeyPath = swift_getKeyPath();
  v30 = *(v21 + 44);
  v72 = v25;
  v31 = &v25[v30];
  *v31 = KeyPath;
  v31[1] = v28;
  sub_24AA932F4(v6);
  v32 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24AA169C4(v6, &qword_27EF855C0, &unk_24AAB7270);
    v33 = 1;
    v34 = v73;
  }

  else
  {
    v35 = *(v8 + 32);
    v36 = v71;
    v68 = v7;
    v35(v71, v6, v7);
    (*(v8 + 16))(v11, v36, v7);
    v37 = sub_24AAB4764();
    v39 = v38;
    v41 = v40;
    sub_24AAB4584();
    v42 = sub_24AAB4564();
    v43 = v69;
    (*(*(v42 - 8) + 56))(v69, 1, 1, v42);
    sub_24AAB45B4();
    sub_24AA169C4(v43, &qword_27EF85F18, &qword_24AABD640);
    v44 = sub_24AAB4704();
    v46 = v45;
    v48 = v47;

    sub_24AA158E8(v37, v39, v41 & 1);

    sub_24AAB4A44();
    sub_24AAB4A54();

    v49 = sub_24AAB46E4();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_24AA158E8(v44, v46, v48 & 1);

    (*(v32 + 8))(v71, v68);
    v56 = *(v78 + 36);
    v57 = *MEMORY[0x277CE13E8];
    v58 = sub_24AAB4DB4();
    v59 = v70;
    (*(*(v58 - 8) + 104))(&v70[v56], v57, v58);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53 & 1;
    *(v59 + 24) = v55;
    v34 = v73;
    sub_24AA1A25C(v59, v73, &qword_27EF85438, &qword_24AABC780);
    v33 = 0;
  }

  (*(v76 + 56))(v34, v33, 1, v78);
  v60 = v72;
  v61 = v74;
  sub_24AA1695C(v72, v74, &qword_27EF873E0, &qword_24AABD650);
  v62 = v75;
  sub_24AA1695C(v34, v75, &qword_27EF873D8, &qword_24AABD648);
  v63 = v77;
  sub_24AA1695C(v61, v77, &qword_27EF873E0, &qword_24AABD650);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873E8, &qword_24AABD658);
  v65 = v63 + *(v64 + 48);
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_24AA1695C(v62, v63 + *(v64 + 64), &qword_27EF873D8, &qword_24AABD648);
  sub_24AA169C4(v34, &qword_27EF873D8, &qword_24AABD648);
  sub_24AA169C4(v60, &qword_27EF873E0, &qword_24AABD650);
  sub_24AA169C4(v62, &qword_27EF873D8, &qword_24AABD648);
  return sub_24AA169C4(v61, &qword_27EF873E0, &qword_24AABD650);
}

uint64_t sub_24AA95100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87338, &qword_24AABD580);
  MEMORY[0x28223BE20](v144);
  v132 = (&v130 - v3);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87340, &qword_24AABD588);
  MEMORY[0x28223BE20](v142);
  v143 = (&v130 - v4);
  v5 = sub_24AAB4734();
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87348, &qword_24AABD590);
  v7 = MEMORY[0x28223BE20](v163);
  v135 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v136 = &v130 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v130 - v12;
  MEMORY[0x28223BE20](v11);
  v134 = &v130 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87350, &qword_24AABD598);
  MEMORY[0x28223BE20](v139);
  v140 = (&v130 - v14);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87358, &qword_24AABD5A0);
  MEMORY[0x28223BE20](v159);
  v141 = &v130 - v15;
  v149 = sub_24AAB2C54();
  v151 = *(v149 - 8);
  v16 = MEMORY[0x28223BE20](v149);
  v137 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v153 = &v130 - v19;
  MEMORY[0x28223BE20](v18);
  v152 = &v130 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87360, &qword_24AABD5A8);
  MEMORY[0x28223BE20](v161);
  v162 = &v130 - v21;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87368, &qword_24AABD5B0);
  MEMORY[0x28223BE20](v155);
  v157 = &v130 - v22;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87370, &qword_24AABD5B8);
  MEMORY[0x28223BE20](v160);
  v158 = &v130 - v23;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87378, &unk_24AABD5C0);
  MEMORY[0x28223BE20](v156);
  v25 = &v130 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v145 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v150 = &v130 - v29;
  v148 = type metadata accessor for CallSubtitle(0);
  v30 = MEMORY[0x28223BE20](v148);
  v32 = (&v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v30);
  v146 = (&v130 - v34);
  MEMORY[0x28223BE20](v33);
  v36 = &v130 - v35;
  v37 = type metadata accessor for CallStatusViewModel(0);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v130 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v130 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v130 - v47;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  v49 = a1;
  MEMORY[0x24C225430]();
  v147 = v37;
  sub_24AA877CC(&v48[*(v37 + 24)], v36);
  sub_24AA97374(v48, type metadata accessor for CallStatusViewModel);
  v50 = CallSubtitle.string.getter();
  v52 = v51;
  sub_24AA97374(v36, type metadata accessor for CallSubtitle);
  if (v52)
  {
    *v25 = sub_24AAB4104();
    *(v25 + 1) = 0x4018000000000000;
    v25[16] = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B8, &qword_24AABD5F0);
    sub_24AA96524(v50, v52, &v25[*(v53 + 44)]);

    sub_24AA1695C(v25, v157, &qword_27EF87378, &unk_24AABD5C0);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0, MEMORY[0x277CE1138]);
    sub_24AA9748C();
    v54 = v158;
    sub_24AAB42B4();
    sub_24AA1695C(v54, v162, &qword_27EF87370, &qword_24AABD5B8);
    swift_storeEnumTagMultiPayload();
    sub_24AA973D4();
    sub_24AA97518();
    v55 = v164;
    sub_24AAB42B4();
    sub_24AA169C4(v54, &qword_27EF87370, &qword_24AABD5B8);
    sub_24AA169C4(v25, &qword_27EF87378, &unk_24AABD5C0);
LABEL_23:
    v104 = 0;
    goto LABEL_24;
  }

  v131 = v40;
  v56 = v145;
  v57 = v152;
  v58 = v153;
  v59 = v49;
  MEMORY[0x24C225430](v154);
  v60 = v147;
  v61 = v146;
  sub_24AA877CC(&v46[*(v147 + 24)], v146);
  sub_24AA97374(v46, type metadata accessor for CallStatusViewModel);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v62 = *v61;
    v63 = v61[1];
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50);
    v65 = v150;
    sub_24AA1A25C(v61 + *(v64 + 48), v150, &qword_27EF855E8, &unk_24AABCB40);
    sub_24AA1695C(v65, v56, &qword_27EF855E8, &unk_24AABCB40);
    v66 = v151;
    v67 = v149;
    if ((*(v151 + 48))(v56, 1, v149) == 1)
    {
      v68 = sub_24AA169C4(v56, &qword_27EF855E8, &unk_24AABCB40);
      v166 = v62;
      v167 = v63;
      sub_24AA15894(v68, v69, v70);
      v71 = sub_24AAB4774();
      v72 = v140;
      *v140 = v71;
      v72[1] = v73;
      *(v72 + 16) = v74 & 1;
      v72[3] = v75;
      swift_storeEnumTagMultiPayload();
      sub_24AA97518();
      v76 = v141;
      sub_24AAB42B4();
      v77 = v158;
    }

    else
    {
      v154 = v63;
      v94 = v58;
      (*(v66 + 32))(v58, v56, v67);
      v95 = type metadata accessor for CallStatusView(0);
      v96 = v59 + *(v95 + 20);
      v97 = *v96;
      v98 = *(v96 + 8);
      LOBYTE(v96) = *(v96 + 16);
      v166 = v97;
      v167 = v98;
      v168 = v96;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
      MEMORY[0x24C225430](&v165, v99);
      if ((v165 & 1) != 0 || (*(v59 + *(v95 + 28)) & 1) == 0)
      {
        (*(v66 + 16))(v137, v58, v67);
        sub_24AAB4724();
        v105 = sub_24AAB4744();
        v107 = v106;
        v108 = v143;
        *v143 = v105;
        v108[1] = v106;
        v110 = v109 & 1;
        *(v108 + 16) = v109 & 1;
        v108[3] = v111;
        swift_storeEnumTagMultiPayload();
        sub_24AA1A814(v105, v107, v110);

        sub_24AA1A814(v105, v107, v110);
        sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580, MEMORY[0x277CE1138]);

        v103 = v133;
        sub_24AAB42B4();

        sub_24AA158E8(v105, v107, v110);

        sub_24AA158E8(v105, v107, v110);
      }

      else
      {
        v100 = sub_24AAB4104();
        v101 = v132;
        *v132 = v100;
        *(v101 + 8) = 0x4000000000000000;
        *(v101 + 16) = 0;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B0, &unk_24AABD5E0);
        sub_24AA968F0(0, 0, v62, v154, v94, v101 + *(v102 + 44));
        sub_24AA1695C(v101, v143, &qword_27EF87338, &qword_24AABD580);
        swift_storeEnumTagMultiPayload();
        sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580, MEMORY[0x277CE1138]);
        v103 = v133;
        sub_24AAB42B4();

        sub_24AA169C4(v101, &qword_27EF87338, &qword_24AABD580);
      }

      v77 = v158;
      v112 = v103;
      v113 = v134;
      sub_24AA1A25C(v112, v134, &qword_27EF87348, &qword_24AABD590);
      sub_24AA1695C(v113, v140, &qword_27EF87348, &qword_24AABD590);
      swift_storeEnumTagMultiPayload();
      sub_24AA97518();
      v76 = v141;
      sub_24AAB42B4();
      sub_24AA169C4(v113, &qword_27EF87348, &qword_24AABD590);
      (*(v66 + 8))(v153, v67);
    }

    v55 = v164;
    sub_24AA1695C(v76, v157, &qword_27EF87358, &qword_24AABD5A0);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0, MEMORY[0x277CE1138]);
    sub_24AA9748C();
    sub_24AAB42B4();
    sub_24AA1695C(v77, v162, &qword_27EF87370, &qword_24AABD5B8);
    swift_storeEnumTagMultiPayload();
    sub_24AA973D4();
    sub_24AA97518();
    sub_24AAB42B4();
    sub_24AA169C4(v77, &qword_27EF87370, &qword_24AABD5B8);
    sub_24AA169C4(v76, &qword_27EF87358, &qword_24AABD5A0);
    sub_24AA169C4(v150, &qword_27EF855E8, &unk_24AABCB40);
    goto LABEL_23;
  }

  sub_24AA97374(v61, type metadata accessor for CallSubtitle);
  MEMORY[0x24C225430](v154);
  sub_24AA877CC(&v43[*(v60 + 24)], v32);
  sub_24AA97374(v43, type metadata accessor for CallStatusViewModel);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v78 = *v32;
    v79 = v32[1];
    v80 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    v81 = v57;
    v82 = v149;
    (*(v151 + 32))(v57, v80, v149);
    v83 = v131;
    MEMORY[0x24C225430](v154);
    v84 = (v83 + *(v60 + 36));
    v86 = *v84;
    v85 = v84[1];

    sub_24AA97374(v83, type metadata accessor for CallStatusViewModel);
    if (v79)
    {
      v87 = type metadata accessor for CallStatusView(0);
      v88 = v59 + *(v87 + 20);
      v89 = *v88;
      v90 = *(v88 + 8);
      LOBYTE(v88) = *(v88 + 16);
      v166 = v89;
      v167 = v90;
      v168 = v88;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
      MEMORY[0x24C225430](&v165, v91);
      v92 = v137;
      if (v165)
      {
        v55 = v164;
        v93 = v143;
      }

      else
      {
        v114 = *(v59 + *(v87 + 28));
        v55 = v164;
        if (v114)
        {
          v115 = sub_24AAB4104();
          v116 = v132;
          *v132 = v115;
          *(v116 + 8) = 0x4000000000000000;
          *(v116 + 16) = 0;
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B0, &unk_24AABD5E0);
          sub_24AA968F0(v86, v85, v78, v79, v81, v116 + *(v117 + 44));

          sub_24AA1695C(v116, v143, &qword_27EF87338, &qword_24AABD580);
          swift_storeEnumTagMultiPayload();
          sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580, MEMORY[0x277CE1138]);
          v118 = v135;
          sub_24AAB42B4();

          sub_24AA169C4(v116, &qword_27EF87338, &qword_24AABD580);
          v119 = v162;
          v120 = v151;
LABEL_22:
          v127 = v136;
          sub_24AA1A25C(v118, v136, &qword_27EF87348, &qword_24AABD590);
          sub_24AA1695C(v127, v119, &qword_27EF87348, &qword_24AABD590);
          swift_storeEnumTagMultiPayload();
          sub_24AA973D4();
          sub_24AA97518();
          sub_24AAB42B4();
          sub_24AA169C4(v127, &qword_27EF87348, &qword_24AABD590);
          (*(v120 + 8))(v152, v149);
          goto LABEL_23;
        }

        v93 = v143;
      }
    }

    else
    {
      v55 = v164;
      v93 = v143;
      v92 = v137;
    }

    v120 = v151;
    (*(v151 + 16))(v92, v81, v82);
    sub_24AAB4724();
    v121 = sub_24AAB4744();
    v123 = v122;
    *v93 = v121;
    v93[1] = v122;
    v125 = v124 & 1;
    *(v93 + 16) = v124 & 1;
    v93[3] = v126;
    swift_storeEnumTagMultiPayload();
    sub_24AA1A814(v121, v123, v125);

    sub_24AA1A814(v121, v123, v125);
    sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580, MEMORY[0x277CE1138]);

    v118 = v135;
    sub_24AAB42B4();

    sub_24AA158E8(v121, v123, v125);

    sub_24AA158E8(v121, v123, v125);

    v119 = v162;
    goto LABEL_22;
  }

  sub_24AA97374(v32, type metadata accessor for CallSubtitle);
  v104 = 1;
  v55 = v164;
LABEL_24:
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87380, &unk_24AABD5D0);
  return (*(*(v128 - 8) + 56))(v55, v104, 1, v128);
}

uint64_t sub_24AA96524@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_24AAB3044();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallStatusViewModel(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C0, &qword_24AABD5F8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v19);
  v20 = &v12[*(v10 + 44)];
  v22 = *v20;
  v21 = *(v20 + 1);

  sub_24AA97374(v12, type metadata accessor for CallStatusViewModel);
  if (!v21)
  {
    goto LABEL_7;
  }

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

LABEL_7:
    v27 = 1;
    goto LABEL_8;
  }

  v24 = objc_opt_self();
  v25 = [v24 dynamicBackgroundColor];
  sub_24AAB49C4();
  v42 = v5;
  v26 = [v24 dynamicCarPrimaryColor];
  sub_24AAB49C4();
  v5 = v42;
  sub_24AAB3034();
  (*(v6 + 32))(v18, v8, v5);
  v27 = 0;
LABEL_8:
  v28 = (*(v6 + 56))(v18, v27, 1, v5);
  v44 = a1;
  v45 = a2;
  sub_24AA15894(v28, v29, v30);

  v31 = sub_24AAB4774();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  KeyPath = swift_getKeyPath();
  sub_24AA1695C(v18, v16, &qword_27EF873C0, &qword_24AABD5F8);
  v39 = v43;
  sub_24AA1695C(v16, v43, &qword_27EF873C0, &qword_24AABD5F8);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C8, &qword_24AABD630) + 48);
  *v40 = v31;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35 & 1;
  *(v40 + 24) = v37;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 2;
  *(v40 + 48) = 0;
  sub_24AA1A814(v31, v33, v35 & 1);

  sub_24AA169C4(v18, &qword_27EF873C0, &qword_24AABD5F8);
  sub_24AA158E8(v31, v33, v35 & 1);

  return sub_24AA169C4(v16, &qword_27EF873C0, &qword_24AABD5F8);
}

uint64_t sub_24AA968F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a3;
  v59 = a6;
  v60 = a1;
  v9 = sub_24AAB4734();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24AAB2C54();
  v12 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24AAB3044();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C0, &qword_24AABD5F8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v58 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  if (!a2)
  {
    goto LABEL_6;
  }

  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = objc_opt_self();
    v54 = a5;
    v26 = v25;

    v27 = [v26 dynamicBackgroundColor];
    sub_24AAB49C4();
    v53 = v11;
    v28 = v26;
    a5 = v54;
    v29 = [v28 dynamicCarPrimaryColor];
    sub_24AAB49C4();
    sub_24AAB3034();
    (*(v16 + 32))(v23, v18, v15);
    (*(v16 + 56))(v23, 0, 1, v15);
  }

  else
  {
LABEL_6:
    (*(v16 + 56))(&v53 - v22, 1, 1, v15);
  }

  v55 = v23;
  v61 = v56;
  v62 = a4;

  v30 = MEMORY[0x24C2257F0](2108704, 0xE300000000000000);
  sub_24AA15894(v30, v31, v32);
  v56 = sub_24AAB4774();
  v34 = v33;
  v36 = v35;
  v60 = v37;
  (*(v12 + 16))(v14, a5, v57);
  sub_24AAB4724();
  v38 = sub_24AAB4744();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v23;
  v46 = v58;
  sub_24AA1695C(v45, v58, &qword_27EF873C0, &qword_24AABD5F8);
  v36 &= 1u;
  LOBYTE(v61) = v36;
  v47 = v59;
  sub_24AA1695C(v46, v59, &qword_27EF873C0, &qword_24AABD5F8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873D0, &qword_24AABD638);
  v49 = v47 + *(v48 + 48);
  v50 = v56;
  *v49 = v56;
  *(v49 + 8) = v34;
  *(v49 + 16) = v36;
  *(v49 + 24) = v60;
  v51 = v47 + *(v48 + 64);
  *v51 = v38;
  *(v51 + 8) = v40;
  v42 &= 1u;
  *(v51 + 16) = v42;
  *(v51 + 24) = v44;
  sub_24AA1A814(v50, v34, v36);

  sub_24AA1A814(v38, v40, v42);

  sub_24AA169C4(v55, &qword_27EF873C0, &qword_24AABD5F8);
  sub_24AA158E8(v38, v40, v42);

  sub_24AA158E8(v50, v34, v61);

  return sub_24AA169C4(v46, &qword_27EF873C0, &qword_24AABD5F8);
}

uint64_t sub_24AA96DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallStatusViewModel(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v7);
  LODWORD(v4) = v6[*(v4 + 40)];
  sub_24AA97374(v6, type metadata accessor for CallStatusViewModel);
  if (v4 == 3)
  {
    v8 = 0x4020000000000000;
  }

  else
  {
    v8 = 0x4024000000000000;
  }

  *a1 = sub_24AAB4104();
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87290, &qword_24AABD440);
  return sub_24AA93B24(v1, (a1 + *(v9 + 44)));
}

uint64_t sub_24AA96EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AA96FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24AA9713C(uint64_t a1)
{
  sub_24AA972AC(319, &qword_27EF872A8, type metadata accessor for CallStatusViewModel, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24AA9725C();
    if (v2 <= 0x3F)
    {
      sub_24AA972AC(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA9725C()
{
  if (!qword_27EF872B0)
  {
    v0 = sub_24AAB4C34();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF872B0);
    }
  }
}

void sub_24AA972AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24AA97374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AA973D4()
{
  result = qword_27EF87390;
  if (!qword_27EF87390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87370, &qword_24AABD5B8);
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0, MEMORY[0x277CE1138]);
    sub_24AA9748C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87390);
  }

  return result;
}

unint64_t sub_24AA9748C()
{
  result = qword_27EF873A0;
  if (!qword_27EF873A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87358, &qword_24AABD5A0);
    sub_24AA97518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF873A0);
  }

  return result;
}

unint64_t sub_24AA97518()
{
  result = qword_27EF873A8;
  if (!qword_27EF873A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87348, &qword_24AABD590);
    sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF873A8);
  }

  return result;
}

uint64_t sub_24AA975D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AAB4044();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24AA97604@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AAB4044();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_24AA97698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF87418;
  if (!qword_27EF87418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87418);
  }

  return result;
}

uint64_t CallTranslationViewModel.showingTranslationActivity.getter()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  return *(v0 + 32);
}

double CallTranslationViewModel.moreMenuViewModel.getter()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  return result;
}

double CallTranslationViewModel.prepareToShowCall.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(a1, a2);

  return result;
}

Swift::Void __swiftcall CallTranslationViewModel.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87428, &qword_24AABD720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v10[3] = sub_24AAB2F24();
  sub_24AA98EFC();
  v7 = sub_24AAB5184();
  v10[2] = v7;
  v8 = sub_24AAB5174();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87438, &qword_24AABD728);
  sub_24AA16A68(&qword_27EF87440, &qword_27EF87438, &qword_24AABD728, MEMORY[0x277CBCD90]);
  sub_24AA98F48(&qword_27EF85720, sub_24AA98EFC, MEMORY[0x277D85228]);
  sub_24AAB3C14();
  sub_24AA169C4(v2, &qword_27EF856C8, &qword_24AAB75E0);

  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF87448, &qword_27EF87428, &qword_24AABD720, MEMORY[0x277CBCD60]);
  v9 = sub_24AAB3C44();

  (*(v4 + 8))(v6, v3);
  sub_24AA99118(v9);
}

void sub_24AA97C60(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_getObjectType();
  if (sub_24AAB3574() & 1) != 0 || (swift_getKeyPath(), sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel), sub_24AAB2CF4(), , (*(v2 + 32)) || a1 != 1 || (sub_24AAB2E94(), v6 = sub_24AAB2E84(), v7 = sub_24AAB2E74(), v6, (v7))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v8 = type metadata accessor for CustomViewControl(0);
    *(a2 + 24) = v8;
    *(a2 + 32) = sub_24AA98F48(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_24AAB2B24();
    v10 = qword_27EF84C70;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27EF919F8;
    v12 = unk_27EF91A00;
    v13 = qword_27EF91A08;
    v14 = unk_27EF91A10;
    *(boxed_opaque_existential_1Tm + v8[8]) = 0;
    *(boxed_opaque_existential_1Tm + v8[9]) = 0;
    *boxed_opaque_existential_1Tm = xmmword_24AABD690;
    *(boxed_opaque_existential_1Tm + 16) = 1;
    boxed_opaque_existential_1Tm[3] = 0;
    boxed_opaque_existential_1Tm[4] = 0xE000000000000000;
    v15 = (boxed_opaque_existential_1Tm + v8[7]);
    *v15 = v11;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v16 = (boxed_opaque_existential_1Tm + v8[10]);
    *v16 = 0x74616C736E617254;
    v16[1] = 0xEB000000006E6F69;
    v17 = (boxed_opaque_existential_1Tm + v8[11]);
    *v17 = sub_24AA9AA48;
    v17[1] = v3;

    sub_24AA1B750(v13, v14);
  }
}

id CallTranslationViewModel.transcriptView()@<X0>(void *a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  v5 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController);
  v6 = v5;
  if (!v5)
  {
    v6 = sub_24AAB2F44();
    v7 = *(v2 + v4);
    *(v2 + v4) = v6;

    v8 = v6;
    v5 = 0;
  }

  *a1 = v6;

  return v5;
}

uint64_t *CallTranslationViewModel.init(call:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87458, &qword_24AABD730);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v9;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v11 = sub_24AAB3A84();
  v12 = __swift_project_value_buffer(v11, qword_27EF919D8);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v2 + v10, v12, v11);
  v33 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController) = 0;
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  sub_24AAB2D24();
  swift_getObjectType();
  v34 = a1;
  if ((sub_24AAB3574() & 1) != 0 || (sub_24AAB3124(), sub_24AAB3114(), v30 = v14, sub_24AAB39A4(), v15 = sub_24AAB3104(), v14 = v30, , , !v15))
  {
    swift_unknownObjectRelease();
    sub_24AA16D74(v3[2], v3[3]);

    (*(v13 + 8))(v3 + v10, v11);

    v27 = sub_24AAB2D34();
    (*(*(v27 - 8) + 8))(v3 + v14, v27);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_call);
    *v16 = a1;
    v16[1] = a2;
    v17 = sub_24AAB31A4();

    swift_unknownObjectRetain();
    v33 = v15;
    v18 = sub_24AAB3194();
    v35 = v17;
    v36 = MEMORY[0x277CFBA58];
    v19 = MEMORY[0x277CFBA58];
    v34 = v18;
    sub_24AAB2F64();
    swift_allocObject();
    v20 = v18;
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker) = sub_24AAB2F54();
    v21 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_service);
    v21[3] = v17;
    v21[4] = v19;
    *v21 = v20;
    sub_24AAB31F4();
    v22 = sub_24AAB2CD4();
    v23 = *(*(v22 - 8) + 56);
    v23(v31, 1, 1, v22);
    v24 = v20;
    v25 = v32;
    sub_24AAB2CC4();
    v23(v25, 0, 1, v22);
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_languageViewModel) = sub_24AAB31E4();
    v35 = v17;
    v36 = MEMORY[0x277CFBA58];
    v34 = v24;
    sub_24AAB3024();
    swift_allocObject();
    v26 = sub_24AAB3014();
    swift_unknownObjectRelease();

    v3[5] = v26;
  }

  return v3;
}

void sub_24AA983F4(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }
}

double sub_24AA98504(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t CallTranslationViewModel.prepareToShowCall.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_24AA16D2C(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_24AA98700@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AA9ABA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AA16D2C(v4, v5);
}

double sub_24AA98800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_24AA9AB9C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v2, v3);
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v5, v4);

  return result;
}

uint64_t sub_24AA9895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_24AA16D2C(a2, a3);
  return sub_24AA16D74(v6, v7);
}

uint64_t (*CallTranslationViewModel.prepareToShowCall.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AA98B18;
}

void sub_24AA98B18(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA98B9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TranslationButton(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_languageViewModel);
  v6[1] = sub_24AA9AA70;
  v6[2] = a2;
  v6[3] = 0x4041800000000000;
  v7 = v6 + *(v4 + 28);
  *v7 = xmmword_24AAB7080;
  v7[16] = 2;
  v8 = type metadata accessor for TranslationControl(0);

  sub_24AAB2B24();
  v9 = &v7[v8[6]];
  *v9 = 0x74616C736E617274;
  *(v9 + 1) = 0xE900000000000065;
  v10 = v8[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v11 = &v7[v10];
  v12 = unk_27EF91A00;
  v13 = qword_27EF91A08;
  v14 = unk_27EF91A10;
  *v11 = qword_27EF919F8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  v7[v8[8]] = 0;
  v7[v8[9]] = 0;
  v15 = v6 + *(v3 + 32);
  v18[15] = 0;

  sub_24AA1B750(v13, v14);
  sub_24AAB4B54();
  v16 = v19;
  *v15 = v18[16];
  *(v15 + 1) = v16;
  sub_24AA98F48(&qword_27EF874A0, type metadata accessor for TranslationButton, &unk_24AABD9B4);
  return sub_24AAB4BD4();
}

double sub_24AA98DEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 40);

  return result;
}

unint64_t sub_24AA98EFC()
{
  result = qword_27EF86400;
  if (!qword_27EF86400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF86400);
  }

  return result;
}

uint64_t sub_24AA98F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA98F90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24AA98FC8()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  return result;
}

double sub_24AA9906C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 48);

  return result;
}

double sub_24AA99118(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    if (a1)
    {
      sub_24AAB3B34();
      sub_24AA98F48(&qword_27EF85A18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v4 = sub_24AAB4E74();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
    sub_24AAB2CE4();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 48) = a1;

  return result;
}

double sub_24AA992C0(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24AA99328(v2);
  }

  return result;
}

void sub_24AA99328(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + 32) != v2)
  {
    v4 = MEMORY[0x24C2255E0](v3, 0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v4);
    sub_24AAB3E24();

    swift_getKeyPath();
    sub_24AAB2CF4();

    swift_beginAccess();
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = *(v1 + 24);

      v5(v7);
      sub_24AA16D74(v5, v6);
    }
  }
}

void sub_24AA994C8(uint64_t a1, char a2)
{
  if (*(a1 + 32) == (a2 & 1))
  {
    *(a1 + 32) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t *CallTranslationViewModel.deinit()
{
  sub_24AA16D74(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_service));

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CallTranslationViewModel.__deallocating_deinit()
{
  CallTranslationViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AA9975C(uint64_t a1)
{
  result = sub_24AAB3A84();
  if (v2 <= 0x3F)
  {
    result = sub_24AAB2D34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_24AA998A0()
{
  result = qword_27EF87490;
  if (!qword_27EF87490)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87498, &qword_24AABD848);
    sub_24AA81C40(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87490);
  }

  return result;
}

uint64_t sub_24AA99924(uint64_t a1)
{
  CallAction.hash(into:)(a1);
  v2 = type metadata accessor for TranslationControl(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v3)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB4F64();
  v4 = (v1 + *(v2 + 28));
  v6 = v4[2];
  v5 = v4[3];
  if (*v4)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v5)
  {
    sub_24AAB5514();
    if (v6)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA99AEC()
{
  sub_24AAB54F4();
  sub_24AA99924(v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA99B30(uint64_t a1)
{
  sub_24AAB54F4();
  sub_24AA99924(v2);
  return sub_24AAB5524();
}

uint64_t sub_24AA99B70@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v62);
  v3 = &v50 - v2;
  v53 = sub_24AAB3ED4();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TranslationButton(0);
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v56 = &v50 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF874F8, &qword_24AABDA08);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - v15;
  sub_24AA9B188(v1, &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + 80);
  v17 = (v16 + 16) & ~v16;
  v63 = v7;
  v57 = v16;
  v18 = swift_allocObject();
  v55 = v17;
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA9B1F0(v52, v18 + v17);
  v66 = v1;
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  v20 = v10;
  sub_24AAB4BB4();
  sub_24AAB3EC4();
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
  sub_24AA98F48(&qword_27EF84D08, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v21 = v50;
  v22 = v53;
  sub_24AAB49B4();
  (*(v54 + 8))(v5, v22);
  (*(v51 + 8))(v9, v21);
  v23 = &v12[*(v20 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v23 = swift_getKeyPath();
  v24 = v1 + *(v65 + 28);
  v25 = type metadata accessor for TranslationControl(0);
  v26 = *(v25 + 28);
  if (*(v24 + *(v25 + 36)) == 1 && (v27 = *(v24 + v26 + 24)) != 0)
  {
    v28 = *(v24 + v26 + 16);
  }

  else
  {
    v29 = (v24 + v26);
    v28 = *v29;
    v27 = v29[1];
  }

  v30 = *(v19 + 24);
  v31 = v19;
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v32 = v62;
  v33 = *(v62 + 36);
  *&v3[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v34 = &v3[v32[10]];
  *v34 = v28;
  *(v34 + 1) = v27;
  v35 = &v3[v32[12]];
  *v35 = v30;
  *(v35 + 1) = v30;
  v35[16] = 0;
  v36 = &v3[v32[13]];
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v37 = v56;
  sub_24AAB47E4();
  sub_24AA169C4(v3, &qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA169C4(v12, &qword_27EF84CE0, &unk_24AAB6300);
  v38 = v31;
  v39 = v31;
  v40 = v52;
  sub_24AA9B188(v39, v52);
  v41 = v55;
  v42 = swift_allocObject();
  sub_24AA9B1F0(v40, v42 + v41);
  v43 = v61;
  v44 = &v61[*(v60 + 36)];
  sub_24AAB3E14();
  sub_24AAB50D4();
  *v44 = &unk_24AABDAB8;
  *(v44 + 1) = v42;
  (*(v58 + 32))(v43, v37, v59);
  v45 = v38 + *(v65 + 32);
  v46 = *v45;
  v47 = *(v45 + 8);
  v67 = v46;
  v68 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  sub_24AAB4B84();
  sub_24AA9B188(v38, v40);
  v48 = swift_allocObject();
  sub_24AA9B1F0(v40, v48 + v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87500, &qword_24AABDAC8);
  sub_24AA9B580();
  sub_24AA9B6D8();
  sub_24AAB48D4();

  return sub_24AA169C4(v43, &qword_27EF874F8, &qword_24AABDA08);
}

uint64_t sub_24AA9A39C(uint64_t a1)
{
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v1 = sub_24AAB3A84();
  __swift_project_value_buffer(v1, qword_27EF919D8);
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "did tap live translation button", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  type metadata accessor for TranslationButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AA9A4CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TranslationButton(0);
  type metadata accessor for TranslationControl(0);

  v3 = sub_24AAB4AC4();
  v4 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

uint64_t sub_24AA9A550(uint64_t a1)
{
  v1[2] = a1;
  sub_24AAB50C4();
  v1[3] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24AA9A5E8, v3, v2);
}

uint64_t sub_24AA9A5E8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24AA3B77C;

  return MEMORY[0x28214EAE8]();
}

__n128 sub_24AA9A680@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for TranslationButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87458, &qword_24AABD730);
  MEMORY[0x28223BE20](v9 - 8);
  (*(v5 + 56))(v22 - v10, 1, 1, v4);
  sub_24AA9B188(a1, v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_24AA9B1F0(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);

  sub_24AAB2CC4();
  sub_24AAB3004();
  KeyPath = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87520, &unk_24AABDAD0) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA8, &qword_24AABC270) + 28);
  v16 = *MEMORY[0x277CDF3C0];
  v17 = sub_24AAB3CE4();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = KeyPath;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87500, &qword_24AABDAC8) + 36);
  v19 = v22[5];
  *(v18 + 64) = v22[4];
  *(v18 + 80) = v19;
  *(v18 + 96) = v22[6];
  v20 = v22[1];
  *v18 = v22[0];
  *(v18 + 16) = v20;
  result = v22[3];
  *(v18 + 32) = v22[2];
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_24AA9A9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a1, a2);
  type metadata accessor for TranslationButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

void sub_24AA9AAF8()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_24AA9AB64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24AA9ABAC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_24AA9ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA9ACD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA9ADA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TranslationControl(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA9AE68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TranslationControl(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA9AF0C(uint64_t a1)
{
  sub_24AAB31F4();
  if (v1 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TranslationControl(319);
      if (v3 <= 0x3F)
      {
        sub_24AA91B0C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24AA9B010(uint64_t a1)
{
  result = sub_24AA98F48(&qword_27EF874D0, type metadata accessor for TranslationControl, &unk_24AABD8DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA9B068(uint64_t a1)
{
  result = sub_24AA98F48(&qword_27EF874D8, type metadata accessor for TranslationControl, &unk_24AABD91C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA9B0C0(void *a1)
{
  a1[1] = sub_24AA98F48(&qword_27EF874E0, type metadata accessor for TranslationControl, &unk_24AABD960);
  a1[2] = sub_24AA98F48(&qword_27EF874E8, type metadata accessor for TranslationControl, &unk_24AABD97C);
  result = sub_24AA98F48(&qword_27EF874F0, type metadata accessor for TranslationControl, &unk_24AABD938);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA9B188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA9B1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA9B254()
{
  v1 = *(type metadata accessor for TranslationButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA9A39C(v2);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for TranslationButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  sub_24AA15ED0(*v5, *(v5 + 8), *(v5 + 16));
  v6 = type metadata accessor for TranslationControl(0);
  v7 = *(v6 + 20);
  v8 = sub_24AAB2B84();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + *(v6 + 28);

  if (*(v9 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA9B444()
{
  v2 = *(type metadata accessor for TranslationButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AA43DBC;

  return sub_24AA9A550(v0 + v3);
}

double sub_24AA9B510@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationButton(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_24AA9A680(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_24AA9B580()
{
  result = qword_27EF87508;
  if (!qword_27EF87508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF874F8, &qword_24AABDA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA14EE0();
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA98F48(&qword_27EF84C80, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87508);
  }

  return result;
}

unint64_t sub_24AA9B6D8()
{
  result = qword_27EF87510;
  if (!qword_27EF87510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87500, &qword_24AABDAC8);
    sub_24AA9B764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87510);
  }

  return result;
}

unint64_t sub_24AA9B764()
{
  result = qword_27EF87518;
  if (!qword_27EF87518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87520, &unk_24AABDAD0);
    sub_24AA98F48(&qword_27EF87528, MEMORY[0x277CFBA28], MEMORY[0x277CFBA20]);
    sub_24AA16A68(&unk_27EF86FE0, &qword_27EF86CA8, &qword_24AABC270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87518);
  }

  return result;
}

uint64_t sub_24AA9B84C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TranslationButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA9A9C8(a1, a2, v6);
}

uint64_t sub_24AA9B8DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_24AA15F10(v20, v4, v5);
  sub_24AA15F10(v17, v6, v7);
  v8 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v20, &v17);
  sub_24AA15ED0(v17, v18, v19);
  sub_24AA15ED0(v20, v21, v22);
  if (v8 & 1) != 0 && (v9 = type metadata accessor for TranslationControl(0), (MEMORY[0x24C2233A0](a1 + v9[5], a2 + v9[5])) && ((v10 = v9[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) && v12 == v13[1] || (sub_24AAB5474()) && (v14 = v9[7], sub_24AAAA8E0(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && *(a1 + v9[8]) == *(a2 + v9[8]))
  {
    v15 = *(a1 + v9[9]) ^ *(a2 + v9[9]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_24AA9BA24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF874F8, &qword_24AABDA08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87500, &qword_24AABDAC8);
  sub_24AA9B580();
  sub_24AA9B6D8();
  return swift_getOpaqueTypeConformance2();
}

double VideoPreviewView.init(aspectRatio:contentMode:callCenter:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24AAB4B54();
  result = v11;
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 16) = a2 & 1;
  *(a5 + 17) = a3 & 1;
  *a5 = a4;
  *(a5 + 8) = a1;
  return result;
}

uint64_t VideoPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87530, &qword_24AABDB40);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87538, &qword_24AABDB48);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87540, &qword_24AABDB50);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = v1[1];
  v33 = *v1;
  v34 = v11;
  v35 = *(v1 + 4);
  v12 = sub_24AAB4A24();
  v13 = sub_24AAB4D44();
  v28 = v14;
  v29 = v13;
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 4);
  if (v34)
  {
    v32 = *(v1 + 24);
    sub_24AA9BF7C(&v33, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87548, &qword_24AABDB58);
    sub_24AAB4B64();
    v17 = v31[0];
  }

  else
  {
    v17 = *(&v33 + 1);
    sub_24AA9BF7C(&v33, v31);
  }

  v18 = BYTE1(v34);
  LOBYTE(v32) = 0;
  v19 = [objc_opt_self() defaultCenter];
  sub_24AAB51D4();

  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 16) = v33;
  *(v20 + 32) = v21;
  *(v20 + 48) = v35;
  *v4 = v12;
  *(v4 + 1) = sub_24AA9BF74;
  v22 = v28;
  v23 = v29;
  *(v4 + 2) = v15;
  *(v4 + 3) = v23;
  *(v4 + 4) = v22;
  *(v4 + 5) = v17;
  v4[48] = 0;
  v4[49] = v18;
  v24 = &v4[*(v2 + 56)];
  *v24 = sub_24AA9C224;
  v24[1] = v20;
  sub_24AA1A25C(v4, v7, &qword_27EF87530, &qword_24AABDB40);
  v25 = &v7[*(v5 + 36)];
  *v25 = sub_24AA9C22C;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = 0;
  sub_24AA1A25C(v7, v10, &qword_27EF87538, &qword_24AABDB48);
  v26 = &v10[*(v8 + 36)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_24AA9C248;
  *(v26 + 3) = 0;
  sub_24AA1A25C(v10, v30, &qword_27EF87540, &qword_24AABDB50);
  return sub_24AA9BF7C(&v33, v31);
}

double sub_24AA9BED4@<D0>(id *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24AAB3DD4();
  sub_24AAB3DD4();
  sub_24AAB4D44();
  sub_24AAB3D54();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

void sub_24AA9BFB4(uint64_t a1, uint64_t a2)
{
  v3 = [*a2 videoDeviceController];
  [v3 localVideoLandscapeAspectRatio];
  v5 = v4;
  v7 = v6;

  if (v7 < v5)
  {
    v5 = v7;
  }

  if (v5 != 0.0)
  {
    v19 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87548, &qword_24AABDB58);
    sub_24AAB4B74();
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v8 = sub_24AAB3A84();
    __swift_project_value_buffer(v8, qword_27EF919D8);
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v19 = v12;
      *v11 = 136315394;
      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v19);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_24AAB4F44();
      v18 = sub_24AA406B4(v16, v17, &v19);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_24AA0F000, v9, v10, "Resizing video preview with ratio %s / %s.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }
  }
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_24AA9C22C()
{
  v0 = qword_27EF919F0;
  if (__OFADD__(qword_27EF919F0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27EF919F0;
    sub_24AA9C67C(v0);
  }
}

void sub_24AA9C248()
{
  v0 = qword_27EF919F0;
  if (__OFSUB__(qword_27EF919F0, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_27EF919F0;
    sub_24AA9C67C(v0);
  }
}

uint64_t sub_24AA9C308(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_24AA9C38C()
{
  result = qword_27EF87560;
  if (!qword_27EF87560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87530, &qword_24AABDB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87560);
  }

  return result;
}

id sub_24AA9C400()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = [v1 videoDeviceController];
  v4 = [v2 layer];
  [v3 setLocalFrontLayer_];

  v5 = [v1 videoDeviceController];
  [v5 setCurrentVideoOrientation_];

  return v2;
}

uint64_t sub_24AA9C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA9C628(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA9C544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA9C628(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA9C5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA9C628(a1, a2, a3);
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AA9C5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF87568;
  if (!qword_27EF87568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87568);
  }

  return result;
}

unint64_t sub_24AA9C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF87570;
  if (!qword_27EF87570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87570);
  }

  return result;
}

void sub_24AA9C67C(uint64_t a1)
{
  if (qword_27EF919F0 == a1)
  {
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  v16 = [v1 videoDeviceController];

  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = qword_27EF919F0;
    _os_log_impl(&dword_24AA0F000, v3, v4, "VideoPreviewView: activeCount = %ld", v5, 0xCu);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  if (!qword_27EF919F0)
  {
    v13 = sub_24AAB3A64();
    v14 = sub_24AAB5144();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AA0F000, v13, v14, "VideoPreviewView: stopping preview.", v15, 2u);
      MEMORY[0x24C226630](v15, -1, -1);
    }

    [v16 stopPreview];
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "VideoPreviewView: preview stopped.";
    goto LABEL_17;
  }

  if (qword_27EF919F0 >= 1 && ([v16 isPreviewRunning] & 1) == 0)
  {
    v6 = sub_24AAB3A64();
    v7 = sub_24AAB5144();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AA0F000, v6, v7, "VideoPreviewView: starting preview.", v8, 2u);
      MEMORY[0x24C226630](v8, -1, -1);
    }

    [v16 startPreview];
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "VideoPreviewView: preview started.";
LABEL_17:
    _os_log_impl(&dword_24AA0F000, v9, v10, v12, v11, 2u);
    MEMORY[0x24C226630](v11, -1, -1);
LABEL_18:
  }
}

Swift::Void __swiftcall CallScreeningViewModel.update(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87588, &unk_24AABDDB8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v105 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v104 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87590, &unk_24AABDDC8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v99 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v93 - v15;
  v16 = sub_24AAB2AF4();
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24AAB2AA4();
  v101 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  MEMORY[0x28223BE20](v19 - 8);
  v98 = &v93 - v20;
  v21 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v21 - 8);
  v97 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24AAB4ED4();
  v96 = *(v106 - 8);
  v23 = MEMORY[0x28223BE20](v106);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v93 - v26;
  v114 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  v29 = os_log_type_enabled(v27, v28);
  LODWORD(v107) = v3;
  v94 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v116[0] = v31;
    *v30 = 136315906;
    *(v30 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v116);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v116);
    *(v30 + 22) = 2048;
    *(v30 + 24) = 140;
    *(v30 + 32) = 1024;
    *(v30 + 34) = v3;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] Update called, initialUpdate: %{BOOL}d", v30, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v31, -1, -1);
    MEMORY[0x24C226630](v30, -1, -1);
  }

  v32 = v2;
  v34 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v33 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  ObjectType = swift_getObjectType();
  v116[0] = v34;
  v36 = *(v33 + 8);
  if (sub_24AAB34D4() & 1) == 0 || (sub_24AAB3944())
  {
    v37 = sub_24AAB3954();
    v115 = 0;
    v38 = v37 == 4;
    goto LABEL_6;
  }

  v57 = sub_24AAB39F4();
  v38 = sub_24AAB3954() == 4;
  if (v57 != 1)
  {
    v115 = 0;
    goto LABEL_6;
  }

  v116[0] = v34;
  v58 = sub_24AAB3524();
  v115 = 1;
  LODWORD(v113) = 1;
  if (v58 != 1)
  {
LABEL_6:
    v116[0] = v34;
    LODWORD(v113) = sub_24AAB3524() == 2;
  }

  v111 = v36;
  v39 = sub_24AAB3A64();
  v40 = sub_24AAB5144();
  v41 = os_log_type_enabled(v39, v40);
  v112 = ObjectType;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v116[0] = v43;
    *v42 = 136316674;
    *(v42 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v116);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v116);
    *(v42 + 22) = 2048;
    *(v42 + 24) = 150;
    *(v42 + 32) = 1024;
    v44 = v115;
    *(v42 + 34) = v115;
    *(v42 + 38) = 1024;
    *(v42 + 40) = v44;
    *(v42 + 44) = 1024;
    *(v42 + 46) = v38;
    *(v42 + 50) = 1024;
    *(v42 + 52) = v113;
    _os_log_impl(&dword_24AA0F000, v39, v40, "[%s:%s:%ld] callIsScreening: %{BOOL}d, showTranscripts: %{BOOL}d, isRinging: %{BOOL}d, receptionistIsScreening: %{BOOL}d", v42, 0x38u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v43, -1, -1);
    MEMORY[0x24C226630](v42, -1, -1);

    v45 = 0;
  }

  else
  {

    v45 = 0;
    v44 = v115;
  }

  v46 = &qword_27EF87000;
  v47 = v32;
  if (v44 && ((v116[0] = v34, sub_24AAB3524() == 1) || (v116[0] = v34, sub_24AAB3524() == 2)))
  {
    v48 = v95;
    sub_24AAB4E84();
    v49 = v96;
    v50 = v106;
    (*(v96 + 16))(v94, v48, v106);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v51 = qword_27EF919A8;
    sub_24AAB2CC4();
    v52 = sub_24AAB4F14();
    v54 = v53;
    (*(v49 + 8))(v48, v50);
    sub_24AAA2D0C(v52, v54);
    LODWORD(v50) = v115;
    v46 = &qword_27EF87000;
  }

  else
  {
    v55 = (v32 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
    if (*(v32 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v93 - 3) = 0;
      v91 = 0;
      *(&v93 - 4) = v32;
      v116[0] = v32;
      sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
      v47 = v32;
      sub_24AAB2CE4();
    }

    else
    {
      *v55 = 0;
      v55[1] = 0;
    }

    LODWORD(v50) = v115;
  }

  swift_getKeyPath();
  v59 = v46[175];
  v116[0] = v47;
  v60 = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (v50 != *(v47 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts))
  {
    v61 = sub_24AAB3A64();
    v62 = sub_24AAB5144();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v106 = 0;
      v65 = v60;
      v66 = v64;
      v116[0] = v64;
      *v63 = 136315906;
      *(v63 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v116);
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v116);
      *(v63 + 22) = 2048;
      *(v63 + 24) = 159;
      *(v63 + 32) = 1024;
      *(v63 + 34) = v50;
      _os_log_impl(&dword_24AA0F000, v61, v62, "[%s:%s:%ld] Update transcripts state: %{BOOL}d", v63, 0x26u);
      swift_arrayDestroy();
      v67 = v66;
      v60 = v65;
      v45 = v106;
      MEMORY[0x24C226630](v67, -1, -1);
      MEMORY[0x24C226630](v63, -1, -1);
    }

    if (!v50)
    {
      v68 = *(v47 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
      *(v47 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController) = 0;
    }

    v69 = MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v69);
    v91 = v47;
    LOBYTE(v92) = v50;
    sub_24AAB3E24();
  }

  swift_getKeyPath();
  v116[0] = v47;
  sub_24AAB2CF4();

  v70 = v113;
  if (!((*(v47 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity) == 0) | v113 & 1))
  {
    CallScreeningViewModel.clearActivity()();
  }

  if (v50 & v107 & v70)
  {
    v113 = v60;
    v71 = sub_24AAB3A64();
    v72 = sub_24AAB5144();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v116[0] = v74;
      *v73 = 136315650;
      *(v73 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v116);
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v116);
      *(v73 + 22) = 2048;
      *(v73 + 24) = 174;
      _os_log_impl(&dword_24AA0F000, v71, v72, "[%s:%s:%ld] Setting up call screening activity", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v74, -1, -1);
      MEMORY[0x24C226630](v73, -1, -1);
    }

    v114 = v59;
    v106 = v45;
    sub_24AAB2FA4();
    v75 = sub_24AAB2BD4();
    (*(*(v75 - 8) + 56))(v98, 1, 1, v75);
    swift_allocObject();
    swift_weakInit();
    v107 = sub_24AAB2F94();
    v111 = v47;
    if (qword_27EF84C58 != -1)
    {
      swift_once();
    }

    v97 = *algn_27EF919B8;
    v98 = qword_27EF919B0;
    v96 = qword_27EF919C0;
    v91 = 0xE000000000000000;
    sub_24AAB2AD4();
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    v76 = v109;
    sub_24AAB3074();
    v94 = sub_24AAB3084();
    v77 = *(v94 - 8);
    v93 = *(v77 + 56);
    v95 = (v77 + 56);
    v93(v76, 0, 1, v94);
    v116[0] = v34;
    sub_24AAB34C4();
    sub_24AAB2AE4();
    v78 = v102;
    sub_24AAB2AB4();
    v101 = *(v101 + 56);
    (v101)(v78, 0, 1, v110);
    v79 = *MEMORY[0x277CFBA50];
    v80 = sub_24AAB3134();
    v81 = *(v80 - 8);
    v82 = v104;
    (*(v81 + 104))(v104, v79, v80);
    v83 = *(v81 + 56);
    v83(v82, 0, 1, v80);
    v84 = v105;
    v83(v105, 1, 1, v80);
    v93(v99, 1, 1, v94);
    sub_24AAB2FC4();
    swift_allocObject();
    v112 = sub_24AAB2FB4();
    v91 = 0xE000000000000000;
    sub_24AAB2AD4();
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    v85 = v110;
    v86 = v101;
    (v101)(v78, 0, 1, v110);
    v86(v103, 1, 1, v85);
    v83(v82, 1, 1, v80);
    v83(v84, 1, 1, v80);
    sub_24AAB2FF4();
    swift_allocObject();
    v87 = sub_24AAB2FE4();
    v88 = swift_getKeyPath();
    MEMORY[0x28223BE20](v88);
    v90 = v111;
    v89 = v112;
    v50 = v107;
    *(&v93 - 4) = v111;
    *(&v93 - 3) = v50;
    v91 = v89;
    v92 = v87;
    v116[0] = v90;
    sub_24AAB2CE4();

    LOBYTE(v50) = v115;
  }

  CallScreeningViewModel.updateBlockButtonVisibility(with:)(v50);
}

uint64_t CallScreeningViewModel.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_24AA16768(a3, v9);
  if (qword_27EF84C60 != -1)
  {
    swift_once();
  }

  v6 = qword_27EF87140;
  swift_allocObject();
  swift_unknownObjectRetain();
  v7 = sub_24AAA7274(a1, a2, v9, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v7;
}

double sub_24AA9DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(a1, a2);

  return result;
}

double sub_24AA9DE08@<D0>(uint64_t a1@<X8>)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315906;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v17);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD35F0, &v17);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 288;
    *(v5 + 32) = 2080;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CF4();

    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v17);

    *(v5 + 34) = v9;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] trailingControlRecipe called, shouldShowBlockButtonForUnknownCallerWhileScreening: %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  swift_getKeyPath();
  v17 = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) == 1)
  {
    v10 = type metadata accessor for BlockControl(0);
    *(a1 + 24) = v10;
    *(a1 + 32) = sub_24AAA7FFC(&qword_27EF867F8, type metadata accessor for BlockControl, &unk_24AABB27C);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    *boxed_opaque_existential_1Tm = xmmword_24AABDD40;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    sub_24AAB2B24();
    v12 = (boxed_opaque_existential_1Tm + v10[6]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v13 = unk_27EF91A00;
    v14 = qword_27EF91A08;
    v15 = unk_27EF91A10;
    *v12 = qword_27EF919F8;
    v12[1] = v13;
    v12[2] = v14;
    v12[3] = v15;
    *(boxed_opaque_existential_1Tm + v10[7]) = 0;
    *(boxed_opaque_existential_1Tm + v10[8]) = 0;
    *(a1 + 80) = 2;

    sub_24AA1B750(v14, v15);
  }

  else
  {
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

void sub_24AA9E1C4(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v141 = a3;
  v7 = type metadata accessor for CustomViewControl(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v139 = &v136 - v12;
  MEMORY[0x28223BE20](v11);
  v138 = &v136 - v13;
  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();
  v16 = os_log_type_enabled(v14, v15);
  v140 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v143 = v18;
    *v17 = 136316162;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v143);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0xD00000000000001ALL, 0x800000024AAD3510, &v143);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 66;
    *(v17 + 32) = 1024;
    *(v17 + 34) = a1;
    *(v17 + 38) = 1024;
    *(v17 + 40) = a2 & 1;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Control recipe for state: %d, disabled: %{BOOL}d", v17, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  v20 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v19 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  swift_getObjectType();
  v143 = v20;
  v21 = *(v19 + 8);
  if (sub_24AAB3574())
  {
    goto LABEL_4;
  }

  if (a1 != 4)
  {
    if (a1 == 6)
    {
      v142 = v20;
      sub_24AAB35B4();
      if (v144)
      {
        v23 = v145;

        v24 = v141;
        if (v23)
        {
          v25 = type metadata accessor for DialControl(0);
          *(v24 + 24) = v25;
          *(v24 + 32) = sub_24AAA7FFC(&qword_27EF854B0, type metadata accessor for DialControl, &unk_24AABB3CC);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
          *boxed_opaque_existential_1Tm = xmmword_24AAB6E00;
          *(boxed_opaque_existential_1Tm + 16) = 2;
          sub_24AAB2B24();
          v27 = (boxed_opaque_existential_1Tm + v25[6]);
          *v27 = 0x69662E656E6F6870;
          v27[1] = 0xEA00000000006C6CLL;
          v28 = (boxed_opaque_existential_1Tm + v25[7]);
          v29 = sub_24AAB4A34();
          v30 = sub_24AAB4A44();
          *v28 = v29;
          v28[1] = v30;
          v28[2] = 0;
          v28[3] = 0;
          *(boxed_opaque_existential_1Tm + v25[8]) = 0;
          *(boxed_opaque_existential_1Tm + v25[9]) = 0;
          v31 = type metadata accessor for CancelDialControl(0);
          *(v24 + 64) = v31;
          *(v24 + 72) = sub_24AAA7FFC(&qword_27EF854B8, type metadata accessor for CancelDialControl, &unk_24AABB3B0);
          v32 = __swift_allocate_boxed_opaque_existential_1Tm((v24 + 40));
          *v32 = xmmword_24AAB6E10;
          *(v32 + 16) = 2;
          sub_24AAB2B24();
          v33 = (v32 + v31[6]);
          *v33 = 0x796C7069746C756DLL;
          v33[1] = 0xE800000000000000;
          v34 = (v32 + v31[7]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v35 = unk_27EF91A00;
          v36 = qword_27EF91A08;
          v37 = unk_27EF91A10;
          *v34 = qword_27EF919F8;
          v34[1] = v35;
          v34[2] = v36;
          v34[3] = v37;
          *(v32 + v31[8]) = 0;
          *(v32 + v31[9]) = 0;
          *(v24 + 80) = 3;

          sub_24AA1B750(v36, v37);
          return;
        }
      }

      else
      {
        v24 = v141;
      }

      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *v24 = 0u;
      *(v24 + 80) = -1;
      return;
    }

    goto LABEL_13;
  }

  v143 = v20;
  if (sub_24AAB34D4())
  {
LABEL_13:
    swift_getKeyPath();
    v143 = v4;
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CF4();

    if (*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
    {
      if ([*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags) receptionistEnabled])
      {
        sub_24AAB2B24();
        v38 = qword_27EF84C70;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = qword_27EF919F8;
        v40 = unk_27EF91A00;
        v42 = qword_27EF91A08;
        v41 = unk_27EF91A10;
        v139 = unk_27EF91A10;
        v10[v7[8]] = 0;
        v10[v7[9]] = 0;
        *v10 = xmmword_24AAB7080;
        v10[16] = 2;
        *(v10 + 3) = 0;
        *(v10 + 4) = 0xE000000000000000;
        v43 = &v10[v7[7]];
        *v43 = v39;
        v43[1] = v40;
        v43[2] = v42;
        v43[3] = v41;
        v44 = &v10[v7[10]];
        strcpy(v44, "TYPE_TO_SPEAK");
        *(v44 + 7) = -4864;
        v45 = &v10[v7[11]];
        *v45 = sub_24AAA8398;
        v45[1] = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_24AAB6FC0;
        v47 = type metadata accessor for StopLiveVoicemailControl(0);
        *(v46 + 56) = v47;
        *(v46 + 64) = sub_24AAA7FFC(&qword_27EF87660, type metadata accessor for StopLiveVoicemailControl, &unk_24AABB2D0);
        v48 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 32));
        *v48 = xmmword_24AABDD80;
        *(v48 + 16) = 2;
        v138 = v47[5];

        v49 = v139;
        sub_24AA1B750(v42, v139);

        sub_24AA1B750(v42, v49);
        sub_24AAB2B24();
        v50 = (v48 + v47[6]);
        *v50 = 0x6B72616D78;
        v50[1] = 0xE500000000000000;
        v51 = (v48 + v47[7]);
        *v51 = v39;
        v51[1] = v40;
        v51[2] = v42;
        v51[3] = v49;
        *(v48 + v47[8]) = 0;
        *(v48 + v47[9]) = 0;
        *(v46 + 96) = v7;
        *(v46 + 104) = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
        v52 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 72));
        sub_24AAA8CC4(v10, v52, type metadata accessor for CustomViewControl);
        v53 = type metadata accessor for AcceptControl(0);
        *(v46 + 136) = v53;
        *(v46 + 144) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
        v54 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 112));
        *v54 = 0;
        v54[1] = 0;
        v54[2] = 0;
        *(v54 + 24) = 2;
        sub_24AAB2B24();
        v55 = (v54 + v53[7]);
        v56 = sub_24AAB4A34();
        v57 = sub_24AAB4A44();
        *v55 = v56;
        v55[1] = v57;
        v55[2] = 0;
        v55[3] = 0;
        *(v54 + v53[8]) = v140 & 1;
        *(v54 + v53[9]) = 0;
        *(v54 + v53[10]) = 1;
        sub_24AA15D0C(v10);
        goto LABEL_36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_24AAB7D10;
      v80 = type metadata accessor for StopLiveVoicemailControl(0);
      *(v46 + 56) = v80;
      *(v46 + 64) = sub_24AAA7FFC(&qword_27EF87660, type metadata accessor for StopLiveVoicemailControl, &unk_24AABB2D0);
      v81 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 32));
      *v81 = xmmword_24AABDD80;
      *(v81 + 16) = 2;
      sub_24AAB2B24();
      v82 = (v81 + v80[6]);
      *v82 = 0x6B72616D78;
      v82[1] = 0xE500000000000000;
      v83 = (v81 + v80[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v84 = unk_27EF91A00;
      v85 = qword_27EF91A08;
      v86 = unk_27EF91A10;
      *v83 = qword_27EF919F8;
      v83[1] = v84;
      v83[2] = v85;
      v83[3] = v86;
      *(v81 + v80[8]) = 0;
      *(v81 + v80[9]) = 0;
      v87 = type metadata accessor for AcceptControl(0);
      *(v46 + 96) = v87;
      *(v46 + 104) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
      v88 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 72));
      *v88 = 0;
      v88[1] = 0;
      v88[2] = 0;
      *(v88 + 24) = 2;

      sub_24AA1B750(v85, v86);
      sub_24AAB2B24();
      v89 = (v88 + v87[7]);
      v90 = sub_24AAB4A34();
      v91 = sub_24AAB4A44();
      *v89 = v90;
      v89[1] = v91;
      v89[2] = 0;
      v89[3] = 0;
      *(v88 + v87[8]) = v140 & 1;
      *(v88 + v87[9]) = 0;
      v92 = v87[10];
LABEL_35:
      *(v88 + v92) = 1;
LABEL_36:
      v115 = v141;
      *v141 = v46;
      *(v115 + 80) = 0;
      return;
    }

    v58 = sub_24AAB3A64();
    v59 = sub_24AAB5144();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v141;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v143 = v63;
      *v62 = 136315650;
      *(v62 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v143);
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_24AA406B4(0xD00000000000001ALL, 0x800000024AAD3510, &v143);
      *(v62 + 22) = 2048;
      *(v62 + 24) = 122;
      _os_log_impl(&dword_24AA0F000, v58, v59, "[%s:%s:%ld] is showing transcripts is false, not returning a control.", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v63, -1, -1);
      MEMORY[0x24C226630](v62, -1, -1);
    }

    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
    *(v61 + 16) = 0u;
    *(v61 + 32) = 0u;
    *v61 = 0u;
    *(v61 + 80) = -1;
    return;
  }

  if ((sub_24AAA15EC() & 1) == 0)
  {
    if ((sub_24AAA1CF0() & 1) == 0)
    {
LABEL_4:
      v22 = v141;
      *(v141 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      *(v22 + 80) = -1;
      return;
    }

    v139 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_24AABDD50;
    v93 = type metadata accessor for LiveVoicemailControl(0);
    *(v46 + 56) = v93;
    *(v46 + 64) = sub_24AAA7FFC(&qword_27EF87668, type metadata accessor for LiveVoicemailControl, &unk_24AABB2B4);
    v94 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 32));
    *v94 = xmmword_24AABDD60;
    *(v94 + 16) = 2;
    sub_24AAB2B24();
    v95 = v94 + v93[6];
    strcpy(v95, "recordingtape");
    *(v95 + 7) = -4864;
    v96 = (v94 + v93[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v97 = qword_27EF919F8;
    v98 = unk_27EF91A00;
    v99 = qword_27EF91A08;
    v100 = unk_27EF91A10;
    *v96 = qword_27EF919F8;
    v96[1] = v98;
    v96[2] = v99;
    v96[3] = v100;
    *(v94 + v93[8]) = 0;
    *(v94 + v93[9]) = 0;
    v101 = type metadata accessor for DeclineWithMessageControl(0);
    *(v46 + 96) = v101;
    *(v46 + 104) = sub_24AAA7FFC(&qword_27EF87670, type metadata accessor for DeclineWithMessageControl, &unk_24AABB298);
    v102 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 72));
    *v102 = xmmword_24AAB9980;
    *(v102 + 16) = 2;
    v138 = "LIVE_VOICEMAIL_CONTROL";

    sub_24AA1B750(v99, v100);

    sub_24AA1B750(v99, v100);
    sub_24AAB2B24();
    v103 = v102 + v101[6];
    strcpy(v103, "message.fill");
    v103[13] = 0;
    *(v103 + 7) = -5120;
    v104 = (v102 + v101[7]);
    *v104 = v97;
    v104[1] = v98;
    v104[2] = v99;
    v104[3] = v100;
    *(v102 + v101[8]) = 0;
    *(v102 + v101[9]) = 0;
    v105 = type metadata accessor for DeclineControl(0);
    *(v46 + 136) = v105;
    *(v46 + 144) = sub_24AAA7FFC(&qword_27EF87678, type metadata accessor for DeclineControl, &unk_24AABB490);
    v106 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 112));
    *v106 = xmmword_24AAB6FB0;
    *(v106 + 16) = 2;
    sub_24AAB2B24();
    v107 = (v106 + v105[6]);
    *v107 = 0x6F642E656E6F6870;
    v107[1] = 0xEF6C6C69662E6E77;
    v108 = (v106 + v105[7]);
    v109 = sub_24AAB49F4();
    v110 = sub_24AAB4A44();
    *v108 = v109;
    v108[1] = v110;
    v108[2] = 0;
    v108[3] = 0;
    *(v106 + v105[8]) = 0;
    *(v106 + v105[9]) = 0;
    v143 = v20;
    LOBYTE(v105) = sub_24AAB3574();
    v111 = type metadata accessor for AcceptControl(0);
    *(v46 + 176) = v111;
    *(v46 + 184) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
    v88 = __swift_allocate_boxed_opaque_existential_1Tm((v46 + 152));
    *v88 = v105 & 1;
    v88[1] = 0;
    v88[2] = 0;
    *(v88 + 24) = 2;
    sub_24AAB2B24();
    v112 = (v88 + v111[7]);
    v113 = sub_24AAB4A34();
    v114 = sub_24AAB4A44();
    *v112 = v113;
    v112[1] = v114;
    v112[2] = 0;
    v112[3] = 0;
    *(v88 + v111[8]) = v140 & 1;
    *(v88 + v111[9]) = 0;
    v92 = v111[10];
    goto LABEL_35;
  }

  v64 = v138;
  sub_24AAB2B24();
  v65 = qword_27EF84C70;

  if (v65 != -1)
  {
    swift_once();
  }

  v67 = qword_27EF919F8;
  v66 = unk_27EF91A00;
  v68 = qword_27EF91A08;
  v69 = unk_27EF91A10;
  *(v64 + v7[8]) = 0;
  *(v64 + v7[9]) = 0;
  *v64 = xmmword_24AABDD70;
  *(v64 + 16) = 1;
  *(v64 + 24) = 0;
  *(v64 + 32) = 0xE000000000000000;
  v70 = (v64 + v7[7]);
  *v70 = v67;
  v70[1] = v66;
  v70[2] = v68;
  v70[3] = v69;
  v71 = (v64 + v7[10]);
  *v71 = 0x5045525F4556494CLL;
  v71[1] = 0xEA0000000000594CLL;
  v72 = (v64 + v7[11]);
  *v72 = sub_24AAA83A0;
  v72[1] = v4;

  sub_24AA1B750(v68, v69);

  sub_24AA1B750(v68, v69);
  v73 = v139;
  sub_24AAB2B24();
  *(v73 + v7[8]) = 0;
  *(v73 + v7[9]) = 0;
  *v73 = 0xD00000000000001ALL;
  *(v73 + 8) = 0x800000024AAD3590;
  *(v73 + 16) = 1;
  *(v73 + 24) = 0;
  *(v73 + 32) = 0xE000000000000000;
  v74 = (v73 + v7[7]);
  v136 = v67;
  v137 = v68;
  *v74 = v67;
  v74[1] = v66;
  v75 = v66;
  v74[2] = v68;
  v74[3] = v69;
  v76 = v69;
  v77 = v73 + v7[10];
  strcpy(v77, "INCOMING_MORE");
  *(v77 + 14) = -4864;
  v78 = (v73 + v7[11]);
  *v78 = sub_24AAA1B24;
  v78[1] = 0;
  if (sub_24AAA1CF0())
  {
    v144 = v7;
    v145 = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
    v79 = __swift_allocate_boxed_opaque_existential_1Tm(&v143);
    sub_24AAA8CC4(v73, v79, type metadata accessor for CustomViewControl);
  }

  else
  {
    v116 = type metadata accessor for DeclineWithMessageControl(0);
    v144 = v116;
    v145 = sub_24AAA7FFC(&qword_27EF87670, type metadata accessor for DeclineWithMessageControl, &unk_24AABB298);
    v117 = __swift_allocate_boxed_opaque_existential_1Tm(&v143);
    *v117 = xmmword_24AAB9980;
    *(v117 + 16) = 2;
    sub_24AAB2B24();
    v118 = v117 + v116[6];
    strcpy(v118, "message.fill");
    v118[13] = 0;
    *(v118 + 7) = -5120;
    v119 = (v117 + v116[7]);
    v120 = v137;
    *v119 = v136;
    v119[1] = v75;
    v119[2] = v120;
    v119[3] = v76;
    *(v117 + v116[8]) = 0;
    *(v117 + v116[9]) = 0;

    sub_24AA1B750(v120, v76);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_24AABDD50;
  *(v121 + 56) = v7;
  *(v121 + 64) = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
  v122 = __swift_allocate_boxed_opaque_existential_1Tm((v121 + 32));
  v123 = v138;
  sub_24AAA8CC4(v138, v122, type metadata accessor for CustomViewControl);
  sub_24AA16768(&v143, v121 + 72);
  v124 = type metadata accessor for DeclineControl(0);
  *(v121 + 136) = v124;
  *(v121 + 144) = sub_24AAA7FFC(&qword_27EF87678, type metadata accessor for DeclineControl, &unk_24AABB490);
  v125 = __swift_allocate_boxed_opaque_existential_1Tm((v121 + 112));
  *v125 = xmmword_24AAB6FB0;
  *(v125 + 16) = 2;
  sub_24AAB2B24();
  v126 = (v125 + v124[6]);
  *v126 = 0x6F642E656E6F6870;
  v126[1] = 0xEF6C6C69662E6E77;
  v127 = (v125 + v124[7]);
  v128 = sub_24AAB49F4();
  v129 = sub_24AAB4A44();
  *v127 = v128;
  v127[1] = v129;
  v127[2] = 0;
  v127[3] = 0;
  *(v125 + v124[8]) = 0;
  *(v125 + v124[9]) = 0;
  v142 = v20;
  LOBYTE(v124) = sub_24AAB3574();
  v130 = type metadata accessor for AcceptControl(0);
  *(v121 + 176) = v130;
  *(v121 + 184) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
  v131 = __swift_allocate_boxed_opaque_existential_1Tm((v121 + 152));
  *v131 = v124 & 1;
  v131[1] = 0;
  v131[2] = 0;
  *(v131 + 24) = 2;
  sub_24AAB2B24();
  v132 = (v131 + v130[7]);
  v133 = sub_24AAB4A34();
  v134 = sub_24AAB4A44();
  *v132 = v133;
  v132[1] = v134;
  v132[2] = 0;
  v132[3] = 0;
  *(v131 + v130[8]) = v140 & 1;
  *(v131 + v130[9]) = 0;
  *(v131 + v130[10]) = 1;
  sub_24AA15D0C(v139);
  sub_24AA15D0C(v123);
  v135 = v141;
  *v141 = v121;
  *(v135 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&v143);
}

uint64_t CallScreeningViewModel.startScreening(manualScreening:receptionist:)(char a1, char a2)
{
  *(v3 + 144) = v2;
  *(v3 + 194) = a2;
  *(v3 + 193) = a1;
  sub_24AAB50C4();
  *(v3 + 152) = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  *(v3 + 160) = v5;
  *(v3 + 168) = v4;

  return MEMORY[0x2822009F8](sub_24AA9F8B8, v5, v4);
}

uint64_t sub_24AA9F8B8()
{
  v12 = v0;
  *(v0 + 176) = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315650;
    *(v3 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v11);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AA406B4(0xD00000000000002DLL, 0x800000024AAD31F0, &v11);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 230;
    _os_log_impl(&dword_24AA0F000, v1, v2, "[%s:%s:%ld] Entering screening state", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  v5 = *(v0 + 194);
  v6 = *(*(v0 + 144) + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_answeringMachine);
  v7 = *(v0 + 193);
  swift_getObjectType();
  sub_24AAB39A4();
  v8 = sub_24AAB4EE4();
  *(v0 + 184) = v8;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_24AA9FB68;
  v9 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF875C8, &unk_24AABDEA8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AAA43B8;
  *(v0 + 104) = &block_descriptor_3;
  *(v0 + 112) = v9;
  [v6 screenCallWithUUID:v8 manualScreening:v7 receptionist:v5 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AA9FB68()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_24AA9FC70, v2, v1);
}

uint64_t sub_24AA9FC70()
{
  v10 = v0;
  v1 = *(v0 + 184);

  v2 = *(v0 + 192);

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD00000000000002DLL, 0x800000024AAD31F0, &v9);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 232;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Entered screening state", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

void CallScreeningViewModel.updateAnswerRequest(_:)(uint64_t a1)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  v5 = &qword_27EF87000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v16);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD3220, &v16);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 265;
    *(v6 + 32) = 2080;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CF4();

    v8 = sub_24AAB4F44();
    v10 = sub_24AA406B4(v8, v9, &v16);

    *(v6 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] updateAnswerRequest called, isShowingTranscripts: %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    v11 = v6;
    v5 = &qword_27EF87000;
    MEMORY[0x24C226630](v11, -1, -1);
  }

  swift_getKeyPath();
  v16 = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (*(v1 + v5[176]) == 1)
  {
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v16);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD3220, &v16);
      *(v14 + 22) = 2048;
      *(v14 + 24) = 268;
      _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Connecting to call from LVM state", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v15, -1, -1);
      MEMORY[0x24C226630](v14, -1, -1);
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24AAB3474();
  }
}

Swift::Void __swiftcall CallScreeningViewModel.sendToLiveVoicemail()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1EF0, &v14);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 237;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] sendToLiveVoicemail", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v9 = sub_24AAB50F4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_24AAB50C4();

  v10 = sub_24AAB50B4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_24AA333D4(0, 0, v4, &unk_24AABDEC0, v11);
}

Swift::Void __swiftcall CallScreeningViewModel.declineWithReminder()()
{
  oslog = sub_24AAB3A64();
  v0 = sub_24AAB5144();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315650;
    *(v1 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v4);
    *(v1 + 12) = 2080;
    *(v1 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD3240, &v4);
    *(v1 + 22) = 2048;
    *(v1 + 24) = 245;
    _os_log_impl(&dword_24AA0F000, oslog, v0, "[%s:%s:%ld] declineWithReminder", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v2, -1, -1);
    MEMORY[0x24C226630](v1, -1, -1);
  }
}

Swift::Void __swiftcall CallScreeningViewModel.stopLiveVoicemail()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v6);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F10, &v6);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 249;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] stopLiveVoicemail", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  swift_getObjectType();
  sub_24AAB3374();
}

Swift::Void __swiftcall CallScreeningViewModel.block()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v19);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 254;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] block", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  swift_getObjectType();
  v19 = v6;
  v7 = sub_24AAB3564();
  if (!v7)
  {
    v10 = sub_24AAB3A64();
    v16 = sub_24AAB5144();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v19);
      *(v17 + 22) = 2048;
      *(v17 + 24) = 259;
      _os_log_impl(&dword_24AA0F000, v10, v16, "[%s:%s:%ld] Failed to block call handle, still proceeding to end voicemail", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v18, -1, -1);
      MEMORY[0x24C226630](v17, -1, -1);
    }

    goto LABEL_9;
  }

  v8 = v7;
  [v7 block];
  v9 = v8;
  v10 = sub_24AAB3A64();
  v11 = sub_24AAB5144();

  if (!os_log_type_enabled(v10, v11))
  {

LABEL_9:
    goto LABEL_10;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v19 = v14;
  *v12 = 136315906;
  *(v12 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
  *(v12 + 12) = 2080;
  *(v12 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v19);
  *(v12 + 22) = 2048;
  *(v12 + 24) = 257;
  *(v12 + 32) = 2112;
  *(v12 + 34) = v9;
  *v13 = v8;
  v15 = v9;
  _os_log_impl(&dword_24AA0F000, v10, v11, "[%s:%s:%ld] Successfully blocked %@, proceeding to end voicemail", v12, 0x2Au);
  sub_24AA169C4(v13, &qword_27EF857E8, &qword_24AAB78C0);
  MEMORY[0x24C226630](v13, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v14, -1, -1);
  MEMORY[0x24C226630](v12, -1, -1);

LABEL_10:
  CallScreeningViewModel.stopLiveVoicemail()();
}

uint64_t CallScreeningViewModel.statusLabel.getter()
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);

  return v1;
}

id CallScreeningViewModel.transcriptView()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD3260, &v7);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 283;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Creating transcript view", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  result = sub_24AAA347C();
  *a1 = result;
  return result;
}

uint64_t CallScreeningViewModel.activity.getter()
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  sub_24AA80F1C(v1, *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16));
  return v1;
}

uint64_t CallScreeningViewModel.receptionistReplyStarted.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24AAA0FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void CallScreeningViewModel.receptionistReplyStarted.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AAA11CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*CallScreeningViewModel.receptionistReplyStarted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA1370;
}

uint64_t CallScreeningViewModel.__allocating_init(call:callCenter:answeringMachine:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24AAA7274(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t CallScreeningViewModel.init(call:callCenter:answeringMachine:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = sub_24AAA7274(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

void sub_24AAA14E8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }
}