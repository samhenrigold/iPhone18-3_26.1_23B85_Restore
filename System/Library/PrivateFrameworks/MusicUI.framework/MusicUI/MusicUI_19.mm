unint64_t sub_21686E7B4()
{
  result = qword_27CABA320;
  if (!qword_27CABA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA320);
  }

  return result;
}

unint64_t sub_21686E80C()
{
  result = qword_27CABA328;
  if (!qword_27CABA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA328);
  }

  return result;
}

unint64_t sub_21686E864()
{
  result = qword_27CABA330;
  if (!qword_27CABA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA330);
  }

  return result;
}

uint64_t sub_21686E8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = type metadata accessor for UnfollowUserAction(0);
    v26 = v44;
    v27 = (v43 + *(v25 + 20));
    *v27 = v20;
    v27[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v28 = v42;
    sub_21700D224();
    v29 = OUTLINED_FUNCTION_1_23();
    v30(v29);
    v41(v26, v13);
    if (v28)
    {
    }

    else
    {
      return (*(v39 + 32))(v43, v12, v40);
    }
  }

  else
  {
    v32 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v34 = v33;
    v35 = type metadata accessor for UnfollowUserAction(0);
    *v34 = 0x72506C6169636F73;
    v34[1] = 0xEF4449656C69666FLL;
    v34[2] = v35;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_1_23();
    v37(v36);
    return (v24)(v44, v13);
  }
}

_BYTE *storeEnumTagSinglePayload for EmptyStateLockup.SystemType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21686EDD4(uint64_t a1)
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

uint64_t sub_21686EE20(char a1)
{
  result = 0x686372616573;
  switch(a1)
  {
    case 1:
      result = 0x647261646E617473;
      break;
    case 2:
      result = 0x656E696C6E69;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = 0x676E6964616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21686EED4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21686EDD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21686EF04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21686EE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21686EF34()
{
  result = qword_27CABA340;
  if (!qword_27CABA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA340);
  }

  return result;
}

uint64_t sub_21686EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v53 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v52 = v9;
  v49 = v22;
  v50 = v11 + 8;
  v22(v17, v9);
  if (v21)
  {
    v54 = v19;
    v55 = v21;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    v23 = *(v51 + 16);
    v47 = v51 + 16;
    v48 = v23;
    v45 = v8;
    v23(v8, v56, v53);
    v46 = type metadata accessor for EmptyStateLockup(0);
    OUTLINED_FUNCTION_0_53();
    v24 = v18;
    v44 = v18;
    sub_21700CE04();
    sub_21686F608();
    sub_21700CD14();
    v25 = v52;
    v26 = v49;
    v49(v14, v52);
    v27 = v46;
    *(a3 + *(v46 + 24)) = v54;
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_1_39();
    v29 = v25;
    v26(v28, v25);
    v30 = (a3 + v27[7]);
    *v30 = v14;
    v30[1] = v24;
    v18 = v44;
    sub_21700CE04();
    sub_21700CDB4();
    v31 = OUTLINED_FUNCTION_1_39();
    v26(v31, v29);
    v32 = (a3 + v27[8]);
    *v32 = v14;
    v32[1] = v24;
    sub_21700CE04();
    sub_21700CDB4();
    v33 = OUTLINED_FUNCTION_1_39();
    v26(v33, v29);
    v34 = (a3 + v27[9]);
    *v34 = v14;
    v34[1] = v24;
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v35 = v45;
    v36 = v56;
    v37 = v53;
    v48(v45, v56, v53);
    sub_21686F65C(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    OUTLINED_FUNCTION_0_53();
    type metadata accessor for ColorSchemeArtwork(0);
    sub_21700CE04();
    v48(v35, v36, v37);
    sub_21686F65C(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork, &unk_21703EED4);
    OUTLINED_FUNCTION_0_53();
    (*(v51 + 8))(v36, v37);
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_21686F65C(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for EmptyStateLockup(0);
    *v41 = 25705;
    v41[1] = 0xE200000000000000;
    v41[2] = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v51 + 8))(v56, v53);
  }

  return (v49)(v18, v52);
}

unint64_t sub_21686F608()
{
  result = qword_27CABA348;
  if (!qword_27CABA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA348);
  }

  return result;
}

uint64_t sub_21686F65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SocialProfileButtonDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_21686F740()
{
  result = qword_27CABA358;
  if (!qword_27CABA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialProfileButtonDisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21686F860(uint64_t a1, unsigned __int8 *a2)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA498, &qword_217020670);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v27[-v18];
  v28 = *a2;
  v20 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userArtwork;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360, &qword_2170202C8);
  sub_217007DA4();
  (*(v16 + 32))(v2 + v20, v19, v14);
  v21 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userFullName;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_217007DA4();
  (*(v10 + 32))(v2 + v21, v13, v8);
  v22 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userHasNotifications;
  LOBYTE(v32) = 0;
  sub_217007DA4();
  v23 = *(v6 + 32);
  v24 = v29;
  v23(v2 + v22, v3, v29);
  v25 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__isUpdating;
  LOBYTE(v32) = 0;
  sub_217007DA4();
  v23(v2 + v25, v3, v24);
  *(v2 + OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter_objectGraph) = v30;
  swift_beginAccess();
  v31 = v28;

  sub_217007DA4();
  swift_endAccess();
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  *(v2 + 16) = v32;
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  *(v2 + 24) = v32;
  sub_21686FC34();

  return v2;
}

uint64_t sub_21686FBC4(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_21686FC34()
{
  v1 = v0;
  v34 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0, &unk_217020690);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620, &unk_21705D770);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8, &unk_2170206A0);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - v7;
  v9 = v0[2];
  sub_21687099C(1, &unk_217020430, &unk_217020458);
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  if ((sub_2166C129C() & 1) != 0 && v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph] != 1)
  {
    sub_216CAC6EC();
    v12 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    swift_retain_n();
    v13 = sub_21700EE84();
    v35[3] = v12;
    v35[4] = MEMORY[0x277D225C0];
    v35[0] = v13;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    v10 = sub_216CAC834();
    sub_216870758(v10, v11);
    sub_21687099C(0, &unk_217020430, &unk_217020458);
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0, &qword_21705CA40);
  v16 = MEMORY[0x277D21A98];
  sub_21669E098(&qword_280E2A2D8, &qword_27CABA4C0, &qword_21705CA40, MEMORY[0x277D21A98]);
  v17 = v9;
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  (*(v6 + 8))(v8, v30);
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8, &unk_2170206B0);
  sub_21669E098(&qword_280E2A310, &qword_27CABA4C8, &unk_2170206B0, v16);
  sub_21700D1D4();
  v18 = v31;
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  (*(v32 + 8))(v18, v33);
  if (sub_21700B304())
  {
    v19 = v1[3];
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0, &qword_21703C4F0);
    sub_21669E098(&unk_280E2A2E0, &qword_27CABA4D0, &qword_21703C4F0, MEMORY[0x277D21A98]);
    sub_21700D1D4();
    v20 = v27;
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    (*(v28 + 8))(v20, v29);
    v21 = *(v19 + 32);
    v22 = *(v21 + 16);

    os_unfair_lock_lock(v22);
    v23 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
    swift_beginAccess();
    v24 = *(*(v19 + v23) + 16);
    os_unfair_lock_unlock(*(v21 + 16));

    sub_21687099C(v24 != 0, &unk_2170204E0, &unk_217020508);
  }
}

uint64_t sub_2168702E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D8, &unk_2170206C0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if ((v20[8] & 1) == 0 && qword_280E2C428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216699778(v10, &qword_27CAB6D60);
    return sub_21687099C(0, &unk_217020430, &unk_217020458);
  }

  else
  {
    sub_216875890();
    v17 = [objc_opt_self() currentTraitCollection];
    [v17 displayScale];

    v18 = sub_21700C444();
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v18);
    v19 = sub_21700C3D4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);

    sub_21700C3B4();

    sub_216699778(v4, &qword_27CABA4D8);
    sub_216699778(v0, &qword_27CAB7530);
    return sub_2168758F0(v15, type metadata accessor for Artwork);
  }
}

uint64_t sub_216870674()
{
  v0 = sub_216CAC834();
  sub_216870758(v0, v1);
  return sub_2168702E0();
}

uint64_t sub_2168706A8(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2168702E0();
    if (v2 && (v4 = sub_216875980(v2), v5))
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = sub_216CAC834();
      v7 = v8;
    }

    sub_216870758(v6, v7);
  }

  return result;
}

uint64_t sub_216870758(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870814(uint64_t a1)
{
  v1 = sub_216CAC834();
  sub_216870758(v1, v2);
  result = sub_216CAC8D0();
  if (result)
  {

    return sub_216870E50(0);
  }

  return result;
}

uint64_t (*sub_216870880())(__n128 *a1)
{
  v0 = sub_2168707D4();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_216875948;
}

uint64_t sub_21687090C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21687099C(v2 > 0, &unk_2170204E0, &unk_217020508);
  }

  return result;
}

uint64_t sub_21687099C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - v3;
  v5 = type metadata accessor for OpenUserAccountSettingsPageAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-1] - v10;
  switch(*(*(v0 + 16) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state))
  {
    case 1:

      break;
    default:
      v14 = v9;
      v13 = sub_21700F7D4();

      if ((v13 & 1) == 0)
      {
        type metadata accessor for ObjectGraph(0);
        sub_21700E094();
        sub_21700D234();
        v15[3] = v5;
        v15[4] = sub_2168752B0(&qword_27CABA428, type metadata accessor for OpenUserAccountSettingsPageAction, &unk_217040344);
        __swift_allocate_boxed_opaque_existential_1(v15);
        sub_216875708();
        (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);
        sub_21700D5E4();

        (*(v2 + 8))(v4, v1);
        sub_2168758F0(v7, type metadata accessor for OpenUserAccountSettingsPageAction);
        (*(v14 + 8))(v11, v8);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      }

      break;
  }

  return result;
}

uint64_t sub_216870DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216870E50(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870EC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216870F38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216870FD4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216871040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216870EC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2168710B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21700DF14();
  return sub_216870758(v1, v2);
}

uint64_t sub_2168710F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    a1 = sub_21700ADA4();
  }

  sub_216870E50(a1);
  return sub_21687099C(0, &unk_217020430, &unk_217020458);
}

uint64_t sub_21687113C()
{

  v1 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userArtwork;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA498, &qword_217020670);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__displayStyle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A0, &qword_217020678);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userFullName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userHasNotifications;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__isUpdating, v8);

  return v0;
}

uint64_t sub_2168712BC()
{
  sub_21687113C();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_21687133C(uint64_t a1)
{
  sub_216871688(319, &qword_280E483F8, &qword_27CABA360, &qword_2170202C8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_2166B2E20(319, &qword_280E48418, &type metadata for SocialProfileButtonDisplayStyle);
    if (v2 <= 0x3F)
    {
      sub_2166B2E20(319, &qword_280E483C8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2166B2E20(319, &qword_280E48380, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_216871544(uint64_t a1)
{
  sub_2168715F4(319);
  if (v1 <= 0x3F)
  {
    sub_216871688(319, &qword_280E2B440, &qword_27CAB8600, &qword_217020AD0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2168715F4(uint64_t a1)
{
  if (!qword_280E2B3E0)
  {
    type metadata accessor for AccountButtonPresenter(255);
    sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3E0);
    }
  }
}

void sub_216871688(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_216871708(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  type metadata accessor for AccountButtonPresenter(0);
  v2 = swift_allocObject();

  sub_21686F860(v3, &v5);
  return v2;
}

uint64_t sub_216871764@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_2170098C4();
  OUTLINED_FUNCTION_1();
  v59 = v4;
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v58 = v6 - v5;
  v7 = type metadata accessor for SocialProfileButtonView(0);
  v57 = *(v7 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v53 = v10;
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA368, &qword_217020378);
  OUTLINED_FUNCTION_1();
  v47 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA370, &qword_217020380);
  OUTLINED_FUNCTION_1();
  v48 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA378, &qword_217020388);
  OUTLINED_FUNCTION_1();
  v49 = v22;
  v50 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA380, &qword_217020390);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  v46 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v51 = &v45 - v30;
  v62 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA388, &qword_217020398);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA390, &qword_2170203A0);
  v32 = sub_2168749CC();
  v63 = v31;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21700AF14();
  v33 = sub_21669E098(&qword_280E2A578, &qword_27CABA368, &qword_217020378, MEMORY[0x277CDF028]);
  v34 = sub_2168752F8();
  sub_21700A364();
  (*(v47 + 8))(v18, v14);
  sub_2170099B4();
  v63 = v14;
  v64 = &type metadata for SocialProfileButtonStyle;
  v65 = v33;
  v66 = v34;
  OUTLINED_FUNCTION_2_9();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A784();
  (*(v53 + 8))(v13, v54);
  (*(v48 + 8))(v2, v19);
  v63 = v19;
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  v37 = v49;
  sub_21700A864();
  (*(v50 + 8))(v26, v37);
  sub_216875708();
  swift_allocObject();
  sub_216875890();
  v38 = v58;
  sub_2170098B4();
  v39 = v51;
  sub_217008994();

  (*(v59 + 8))(v38, v60);
  sub_216699778(v36, &qword_27CABA380);
  v40 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  sub_21687534C();
  OUTLINED_FUNCTION_3_41();
  sub_21669E098(v42, &qword_27CABA420, &unk_21706D110, v43);
  sub_21700A944();
  return sub_216699778(v39, &qword_27CABA380);
}

uint64_t sub_216871E28@<X0>(uint64_t a2@<X8>)
{
  v12[1] = a2;
  v2 = type metadata accessor for SocialProfileButtonView(0);
  v12[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA398, &qword_2170203A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA390, &qword_2170203A0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  sub_2168720EC(v5);
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  v9 = sub_216870FC0();

  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  sub_216707110();
  *&v8[*(v6 + 36)] = v10;
  sub_216875708();
  swift_allocObject();
  sub_216875890();
  sub_2168749CC();
  sub_21700A494();

  return sub_216699778(v8, &qword_27CABA390);
}

uint64_t sub_2168720EC@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA410, &qword_217020420);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA430, &qword_217020478);
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA438, &qword_217020480);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8, &qword_2170203B8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v33)
  {
    *v4 = sub_2170091A4();
    *(v4 + 1) = 0x4024000000000000;
    v4[16] = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA440, &qword_2170204D0);
    sub_216872AAC(&v4[*(v11 + 44)]);
    sub_21700B314();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA418, &qword_217020428);
    v13 = sub_21669E098(&qword_280E2A558, &qword_27CABA410, &qword_217020420, MEMORY[0x277CE1138]);
    v27 = v2;
    v28 = v13;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v15 = MEMORY[0x277CE1350];
    sub_21700AB44();
    sub_216699778(v4, &qword_27CABA410);
    v16 = v22;
    v17 = v25;
    (*(v22 + 16))(v8, v6, v25);
    swift_storeEnumTagMultiPayload();
    sub_216874BE0();
    v27 = v2;
    v28 = v15;
    v29 = v12;
    v30 = v13;
    v31 = MEMORY[0x277CE1340];
    v32 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v16 + 8))(v6, v17);
  }

  else
  {
    sub_216872640(v10);
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216874BE0();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA418, &qword_217020428);
    v20 = sub_21669E098(&qword_280E2A558, &qword_27CABA410, &qword_217020420, MEMORY[0x277CE1138]);
    v27 = v2;
    v28 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    v27 = v2;
    v28 = MEMORY[0x277CE1350];
    v29 = v19;
    v30 = v20;
    v31 = MEMORY[0x277CE1340];
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_216699778(v10, &qword_27CABA3A8);
  }
}

uint64_t sub_216872640@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_21700AC64();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3C8, &qword_2170203D8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3B0, &qword_2170203C0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  sub_2168735E0(v1, v5);
  v10 = sub_216874430();
  v12 = v11;
  v14 = v13;
  sub_216874EC4(&qword_280E2A5E8, &qword_27CABA3C8, &qword_2170203D8, sub_216874F3C);
  sub_21700A6A4();
  sub_21678817C(v10, v12, v14 & 1);

  sub_216699778(v5, &qword_27CABA3C8);
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3B8, &qword_2170203C8) + 36)] = 256;
  sub_216874698();
  sub_216874698();
  sub_21700B3B4();
  sub_2170083C4();
  v15 = &v9[*(v7 + 44)];
  v16 = *&v27[39];
  *v15 = *&v27[31];
  *(v15 + 1) = v16;
  *(v15 + 2) = *&v27[47];
  (*(v24 + 104))(v23, *MEMORY[0x277CE0EE0], v25);
  v17 = sub_21700AD44();
  sub_2168747C0();
  sub_2168747C0();
  sub_21700B3B4();
  sub_2170083C4();
  *&v27[3] = *&v27[55];
  *&v27[11] = *&v27[63];
  *&v27[19] = *&v27[71];
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  v18 = sub_216870FAC();

  __src = v17;
  if (v18)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v29 = 256;
  v30 = *v27;
  v31 = *&v27[8];
  *v32 = *&v27[16];
  *&v32[14] = *&v27[23];
  v33 = v19;
  v20 = sub_21700B364();
  sub_2168748B0(&__src, v20, v21, v26);
  sub_216699778(&__src, &unk_27CABA448);
  return sub_216699778(v9, &qword_27CABA3B0);
}

uint64_t sub_216872AAC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA460, &qword_217020600);
  v26 = *(v28 - 8);
  v1 = v26;
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8, &qword_2170203B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA468, &qword_217020608);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_216872640(v8);
  sub_216874BE0();
  sub_21700A4F4();
  sub_216699778(v8, &qword_27CABA3A8);
  v15 = v5;
  sub_216872DBC(v5);
  sub_2166A6EA4();
  v16 = *(v1 + 16);
  v17 = v27;
  v18 = v15;
  v19 = v15;
  v20 = v28;
  v16(v27, v18, v28);
  v21 = v29;
  sub_2166A6EA4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA470, &qword_217020610);
  v16((v21 + *(v22 + 48)), v17, v20);
  v23 = v21 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 0;
  v24 = *(v26 + 8);
  v24(v19, v20);
  sub_216699778(v14, &qword_27CABA468);
  v24(v17, v20);
  return sub_216699778(v11, &qword_27CABA468);
}

uint64_t sub_216872DBC@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA478, &qword_217020618);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  v8 = *(sub_2170081B4() + 16);

  v9 = sub_216CAC8D0();

  *v7 = sub_2170093C4();
  *(v7 + 1) = 0x3FF0000000000000;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA480, &unk_217020620);
  sub_216873250(v9, &v7[*(v10 + 44)]);
  sub_2170099B4();
  sub_21669E098(&qword_27CABA488, &qword_27CABA478, &qword_217020618, MEMORY[0x277CE1198]);
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_216699778(v7, &qword_27CABA478);
}

uint64_t sub_216873018()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA410, &qword_217020420);
  sub_21669E098(&qword_280E2A558, &qword_27CABA410, &qword_217020420, MEMORY[0x277CE1138]);
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21687314C(uint64_t a1)
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  OUTLINED_FUNCTION_8();
  sub_2170081B4();
  sub_216870A08();
}

uint64_t sub_2168731E8()
{
  sub_216983738(329);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216873250@<X0>(char a1@<W0>, char *a3@<X8>)
{
  v35 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  if (a1)
  {
    v10 = sub_216983738(25);
    v12 = v11;
  }

  else
  {
    type metadata accessor for AccountButtonPresenter(0);
    sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
    sub_2170081B4();
    v10 = sub_216870F38();
    v12 = v13;
  }

  v14 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v38 = v10;
  v39 = v12;
  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v42 = KeyPath;
  v43 = v14;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  if (a1)
  {
    v37 = sub_216983738(320);
    v17 = v16;
    v18 = sub_217009E64();
    v19 = swift_getKeyPath();
    v20 = sub_217009834();
    v34 = v17;
    sub_21700DF14();

    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = 0;
    v34 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    v20 = 0;
  }

  v22 = v4;
  v23 = *(v4 + 16);
  v33 = v9;
  v24 = v9;
  v25 = v36;
  v23(v6, v24, v36);
  v26 = v35;
  v23(v35, v6, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA490, &qword_217020668) + 48)];
  v28 = v37;
  v29 = v34;
  sub_2168757E0(v37, v34, 0, v21, v19);
  sub_21687582C(v28, v29, 0, v21, v19);
  *v27 = v28;
  *(v27 + 1) = v29;
  *(v27 + 2) = 0;
  *(v27 + 3) = v21;
  *(v27 + 4) = v19;
  *(v27 + 5) = v18;
  *(v27 + 12) = v20;
  v30 = *(v22 + 8);
  v30(v33, v25);
  sub_21687582C(v28, v29, 0, v21, v19);
  return (v30)(v6, v25);
}

uint64_t sub_2168735E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F0, &unk_217020400);
  MEMORY[0x28223BE20](v57);
  v47 = &v44 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E8, &qword_2170203F8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA450, &qword_217020570);
  MEMORY[0x28223BE20](v54);
  v55 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA458, &qword_217020578);
  MEMORY[0x28223BE20](v48);
  v49 = (&v44 - v6);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3D8, &qword_2170203E8);
  MEMORY[0x28223BE20](v53);
  v51 = &v44 - v7;
  v52 = sub_21700ADC4();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  v11 = sub_216870DDC();

  if (v11)
  {
    v12 = *(sub_2170081B4() + 16);

    v13 = sub_216CAC8D0();

    if (!v13)
    {
      v29 = v52;
      (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v52);
      v30 = sub_21700AE04();
      (*(v8 + 8))(v10, v29);
      v31 = v49;
      *v49 = v30;
      v31[1] = 0;
      *(v31 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E0, &qword_2170203F0);
      sub_216875080();
      sub_21669E098(&qword_280E2A538, &qword_27CABA3E8, &qword_2170203F8, MEMORY[0x277CE1148]);
      v32 = v51;
      sub_217009554();
      sub_2166A6EA4();
      swift_storeEnumTagMultiPayload();
      sub_216874FC8();
      sub_216875104();
      sub_217009554();

      v33 = v32;
      v34 = &qword_27CABA3D8;
      return sub_216699778(v33, v34);
    }
  }

  sub_2170081B4();
  v14 = sub_216870F38();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (v18 = *(sub_2170081B4() + 16), , v19 = sub_216CAC8D0(), v18, v19))
  {
    sub_21700ADB4();
    v20 = v52;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v52);
    v21 = sub_21700AE04();

    (*(v8 + 8))(v10, v20);
    v22 = sub_216873F78();
    v58 = v21;
    v59 = v22;
    sub_217009DC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F8, &unk_217070250);
    sub_2168751F8();
    v23 = v47;
    sub_21700A304();

    v24 = (v23 + *(v57 + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
    v26 = *MEMORY[0x277CE1048];
    v27 = sub_21700ADF4();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216874FC8();
    sub_216875104();
    sub_217009554();
    return sub_216699778(v23, &qword_27CABA3F0);
  }

  sub_216685F4C(0, &qword_280E29B00, 0x277CBDA58);
  sub_2170081B4();
  v35 = sub_216870F38();
  v37 = v36;

  sub_216873ED4(v35, v37, 0);
  v38 = v45;
  sub_217006734();
  sub_2170081B4();
  v39 = sub_216870F38();
  v41 = v40;

  v42 = &v38[*(v50 + 52)];
  *v42 = v39;
  v42[1] = v41;
  sub_2166A6EA4();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E0, &qword_2170203F0);
  sub_216875080();
  sub_21669E098(&qword_280E2A538, &qword_27CABA3E8, &qword_2170203F8, MEMORY[0x277CE1148]);
  v43 = v51;
  sub_217009554();
  sub_2166A6EA4();
  swift_storeEnumTagMultiPayload();
  sub_216874FC8();
  sub_216875104();
  sub_217009554();
  sub_216699778(v43, &qword_27CABA3D8);
  v33 = v38;
  v34 = &qword_27CABA3E8;
  return sub_216699778(v33, v34);
}

id sub_216873ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_21700E4D4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_21700E804();

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5];

  return v6;
}

uint64_t sub_216873F78()
{
  v0 = sub_2170098A4();
  v25 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  v13 = *(sub_2170081B4() + 16);

  v14 = sub_216CAC8D0();

  if (!v14)
  {
    return sub_21700AC54();
  }

  type metadata accessor for SocialProfileButtonView(0);
  sub_216C0C900();
  v15 = v25;
  (*(v25 + 104))(v9, *MEMORY[0x277CE0560], v0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v0);
  v16 = *(v2 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) == 1)
  {
    sub_216699778(v9, &qword_27CAB8600);
    sub_216699778(v12, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v4[v16], 1, v0) == 1)
    {
      sub_216699778(v4, &qword_27CAB8600);
      return sub_21700AD34();
    }

    goto LABEL_7;
  }

  v17 = v24;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v4[v16], 1, v0) == 1)
  {
    sub_216699778(v9, &qword_27CAB8600);
    sub_216699778(v12, &qword_27CAB8600);
    (*(v15 + 8))(v17, v0);
LABEL_7:
    sub_216699778(v4, &qword_27CAB8708);
    return sub_21700AC54();
  }

  v19 = v23;
  (*(v15 + 32))(v23, &v4[v16], v0);
  sub_2168752B0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v20 = sub_21700E494();
  v21 = *(v15 + 8);
  v21(v19, v0);
  sub_216699778(v9, &qword_27CAB8600);
  sub_216699778(v12, &qword_27CAB8600);
  v21(v17, v0);
  sub_216699778(v4, &qword_27CAB8600);
  if (v20)
  {
    return sub_21700AD34();
  }

  return sub_21700AC54();
}

uint64_t sub_216874430()
{
  v0 = sub_217009254();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  v1 = *(sub_2170081B4() + 16);

  v2 = sub_216CAC8D0();

  if (v2)
  {
    sub_217009244();
    sub_217009234();
    sub_216983738(25);
    sub_217009224();

    sub_217009234();
    sub_216983738(320);
    sub_217009224();

    sub_217009234();
    sub_217009274();
    return sub_21700A154();
  }

  else
  {
    sub_2170081B4();
    v4 = sub_216870F38();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_2170081B4();
      sub_216870F38();
    }

    else
    {
      sub_216983738(329);
    }

    sub_2167B2E14();
    return sub_21700A174();
  }
}

double sub_216874698()
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v1)
  {
    return 32.0;
  }

  if (qword_280E2C428 != -1)
  {
    swift_once();
  }

  return *&qword_280E2C430;
}

double sub_2168747C0()
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter, &unk_217020340);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = 12.0;
  if (v1)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_2168748B0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, 0x48uLL);
  __srca[9] = a2;
  __srca[10] = a3;
  sub_2166A6EA4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8, &qword_2170203B8);
  memcpy((a4 + *(v8 + 36)), __srca, 0x58uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = a2;
  v14 = a3;
  sub_2166A6EA4();
  sub_2166A6EA4();
  return sub_216699778(v12, &unk_27CABA408);
}

unint64_t sub_2168749CC()
{
  result = qword_280E2B0F0;
  if (!qword_280E2B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA390, &qword_2170203A0);
    sub_216874EC4(&qword_280E2A600, &qword_27CABA398, &qword_2170203A8, sub_216874A84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0F0);
  }

  return result;
}

unint64_t sub_216874A84()
{
  result = qword_280E2AA50;
  if (!qword_280E2AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3A0, &qword_2170203B0);
    sub_216874BE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA410, &qword_217020420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA418, &qword_217020428);
    sub_21669E098(&qword_280E2A558, &qword_27CABA410, &qword_217020420, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA50);
  }

  return result;
}

unint64_t sub_216874BE0()
{
  result = qword_280E2AE18;
  if (!qword_280E2AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3A8, &qword_2170203B8);
    sub_216874C98();
    sub_21669E098(&qword_280E2ACF0, &unk_27CABA408, &unk_217020418, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE18);
  }

  return result;
}

unint64_t sub_216874C98()
{
  result = qword_280E2AEB8;
  if (!qword_280E2AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3B0, &qword_2170203C0);
    sub_216874D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEB8);
  }

  return result;
}

unint64_t sub_216874D24()
{
  result = qword_280E2AF90;
  if (!qword_280E2AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3B8, &qword_2170203C8);
    sub_216874DDC();
    sub_21669E098(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF90);
  }

  return result;
}

unint64_t sub_216874DDC()
{
  result = qword_280E2B0E8;
  if (!qword_280E2B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3C0, &qword_2170203D0);
    sub_216874EC4(&qword_280E2A5E8, &qword_27CABA3C8, &qword_2170203D8, sub_216874F3C);
    sub_2168752B0(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0E8);
  }

  return result;
}

uint64_t sub_216874EC4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_216874F3C()
{
  result = qword_280E2A970;
  if (!qword_280E2A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3D0, &qword_2170203E0);
    sub_216874FC8();
    sub_216875104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A970);
  }

  return result;
}

unint64_t sub_216874FC8()
{
  result = qword_280E2AA70;
  if (!qword_280E2AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3D8, &qword_2170203E8);
    sub_216875080();
    sub_21669E098(&qword_280E2A538, &qword_27CABA3E8, &qword_2170203F8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA70);
  }

  return result;
}

unint64_t sub_216875080()
{
  result = qword_280E2B0E0;
  if (!qword_280E2B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3E0, &qword_2170203F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0E0);
  }

  return result;
}

unint64_t sub_216875104()
{
  result = qword_280E2B1B0;
  if (!qword_280E2B1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F0, &unk_217020400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8, &unk_217070250);
    sub_2168751F8();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A710, &qword_27CAB7820, &qword_21701A450, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1B0);
  }

  return result;
}

unint64_t sub_2168751F8()
{
  result = qword_280E2B0D8;
  if (!qword_280E2B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8, &unk_217070250);
    sub_21669E098(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0D8);
  }

  return result;
}

uint64_t sub_2168752B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2168752F8()
{
  result = qword_280E35F80[0];
  if (!qword_280E35F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35F80);
  }

  return result;
}

unint64_t sub_21687534C()
{
  result = qword_280E2B140;
  if (!qword_280E2B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA380, &qword_217020390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA370, &qword_217020380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA368, &qword_217020378);
    sub_21669E098(&qword_280E2A578, &qword_27CABA368, &qword_217020378, MEMORY[0x277CDF028]);
    sub_2168752F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2168752B0(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B140);
  }

  return result;
}

uint64_t sub_2168754D0()
{
  v0 = sub_217008AD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217009BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009BF4();
  sub_217008AC4();
  sub_2168752B0(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_2168752B0(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_21700A364();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2168756D0(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 34.0;
  if (result)
  {
    v2 = 44.0;
  }

  qword_280E2C430 = *&v2;
  return result;
}

uint64_t sub_216875708()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216875764()
{
  v1 = type metadata accessor for SocialProfileButtonView(0);
  OUTLINED_FUNCTION_36(v1);
  return sub_21687314C(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_2168757E0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167770D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21687582C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167C4DF0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216875890()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2168758F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216875980(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_216875A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216875AD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2166A6EA4();

  sub_217007DF4();
  return sub_216697664(a1, &qword_27CABA4E0, &qword_217020788);
}

uint64_t sub_216875BC4()
{
  v1 = OBJC_IVAR____TtCV7MusicUI24LibrarySearchResultsViewP33_29ABC8E274FD856D45A49733B4AC9A245Model__results;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E8, &qword_2170208D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216875C6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E8, &qword_2170208D8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtCV7MusicUI24LibrarySearchResultsViewP33_29ABC8E274FD856D45A49733B4AC9A245Model__results;
  v10 = sub_2170068C4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_2166A6EA4();
  sub_217007DA4();
  sub_216697664(v8, &qword_27CABA4E0, &qword_217020788);
  (*(v2 + 32))(v0 + v9, v4, v1);
  return v0;
}

uint64_t sub_216875E24(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216875E78(char a1)
{
  if (a1)
  {
    return 1684632167;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_216875EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216875E24(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216875EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216875E78(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_216875F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v35 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8, &qword_2170209E0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA500, &qword_2170209E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA508, &qword_2170209F0);
  OUTLINED_FUNCTION_1();
  v38 = v15;
  v39 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_2168763AC(v1, v13);
  sub_217006964();
  v19 = swift_allocObject();
  memcpy((v19 + 16), v1, 0x61uLL);
  sub_21687BF4C(v1, v42);
  OUTLINED_FUNCTION_3_42();
  v22 = sub_21687E120(v20, &qword_27CABA500, &qword_2170209E8, v21);
  v23 = sub_21687C2EC();
  v36 = v10;
  v37 = v6;
  v24 = v23;
  sub_21700AB14();

  sub_216697664(v9, &qword_27CABA4F8, &qword_2170209E0);
  sub_216697664(v13, &qword_27CABA500, &qword_2170209E8);
  v43 = *(v2 + 64);
  v44 = *(v2 + 72);
  LOBYTE(v13) = v44;

  if ((v13 & 1) == 0)
  {
    sub_21700ED94();
    v25 = sub_217009C34();
    sub_217007BC4();

    v26 = v33;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v43, &qword_27CABA548, &qword_217020A38);
    (*(v34 + 8))(v26, v35);
  }

  v27 = sub_216C03B7C();

  if (v27)
  {
    v28 = sub_216C03990();
  }

  else
  {
    v28 = 0;
  }

  v41 = v28;
  v29 = swift_allocObject();
  memcpy((v29 + 16), v2, 0x61uLL);
  sub_21687BF4C(v2, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA550, &unk_217020A40);
  v42[0] = v36;
  v42[1] = v37;
  v42[2] = v22;
  v42[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_21687C5A0();
  v30 = v39;
  sub_21700AB14();

  return (*(v38 + 8))(v18, v30);
}

uint64_t sub_2168763AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = (&v43 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA518, &qword_217020A00);
  MEMORY[0x28223BE20](v55);
  v53 = &v43 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA570, &unk_217020AB0);
  MEMORY[0x28223BE20](v52);
  v54 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8, &qword_2170209E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_21700B8D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = a1;
  sub_217006964();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_216697664(v15, &qword_27CABA4F8, &qword_2170209E0);
    sub_217007514();
    (*(v10 + 16))(v54, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    sub_217009554();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v45 = v17;
    v24 = *(v17 + 32);
    v46 = v17 + 32;
    v47 = v24;
    v24(v21, v15, v16);
    v44 = v21;
    v25 = v53;
    sub_216876A3C(a1, v53);
    v26 = *(sub_21700B8C4() + 16);

    v27 = v50;
    sub_21687714C(v26 != 0, v50);
    v48 = v9;
    v29 = v22[4];
    v28 = v22[5];
    v43 = v22[2];
    v30 = v51;
    sub_21687DB0C();
    v31 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA520, &qword_217020A08) + 36);
    v32 = _s19PageMetricsModifierVMa(0);
    v33 = (v31 + v32[6]);
    *v33 = v29;
    v33[1] = v28;
    v34 = (v31 + v32[5]);
    *v34 = 0x686372616553;
    v34[1] = 0xE600000000000000;
    swift_unknownObjectRetain();
    sub_216F0D610(v30, v31);
    sub_21687DB64(v30, type metadata accessor for MusicMetrics.PageFields);
    sub_21687DB64(v27, type metadata accessor for MusicMetrics.PageFields);
    *(v31 + v32[7]) = v43;
    v35 = v45;
    v36 = v49;
    v37 = v44;
    (*(v45 + 16))(v49, v44, v16);
    v38 = (*(v35 + 80) + 113) & ~*(v35 + 80);
    v39 = swift_allocObject();
    memcpy((v39 + 16), v22, 0x61uLL);
    v47(v39 + v38, v36, v16);
    v40 = v53;
    v41 = (v53 + *(v55 + 36));
    *v41 = sub_21687D3A0;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
    v42 = v40;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();

    sub_21687BF4C(v22, v57);
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    sub_217009554();
    sub_216697664(v42, &qword_27CABA518, &qword_217020A00);
    return (*(v35 + 8))(v37, v16);
  }
}

uint64_t sub_216876A3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540, &unk_217020A28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA578, &qword_217020AC8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v47 = &v37[-v13];
  v14 = sub_2170090F4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(sub_21700B8C4() + 16);

  if (v17)
  {
    v44 = v7;
    v45 = v3;
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    v21 = *(a1 + 16);
    v53 = *(a1 + 72);
    v52 = *(a1 + 64);
    v22 = v53;
    v42 = v19;
    v43 = v18;
    v41 = v20;
    sub_2167759EC(v18, v19);
    v40 = v21;

    sub_2166A6EA4();
    if (v22 != 1)
    {
      sub_21700ED94();
      v24 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v52, &qword_27CABA548, &qword_217020A38);
      (*(v46 + 8))(v16, v14);
    }

    v25 = sub_216C03B7C();

    if (v25)
    {
      v39 = *(v25 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionOfExistingItem);
    }

    else
    {
      v39 = 0;
    }

    v38 = *(a1 + 24);

    if ((v22 & 1) == 0)
    {
      sub_21700ED94();
      v26 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v52, &qword_27CABA548, &qword_217020A38);
      (*(v46 + 8))(v16, v14);
    }

    v27 = sub_216C03B7C();

    if (v27)
    {
      v28 = sub_216C03990();

      v30 = (*(*v28 + 96))(v29);
      v27 = v31;
    }

    else
    {
      v30 = 0;
    }

    v32 = v41;
    LOBYTE(v51) = v41;
    v33 = sub_2170098A4();
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v33);
    sub_2167A4788();
    v34 = swift_allocObject();
    *(v34 + 16) = v40;
    *(v34 + 24) = v38;
    v35 = v42;
    v36 = v43;
    *(v34 + 32) = v39;
    *(v34 + 40) = v36;
    *(v34 + 48) = v35;
    *(v34 + 56) = v32;
    *(v34 + 64) = v30;
    *(v34 + 72) = v27;
    sub_2167A4788();
    *v9 = sub_21687D434;
    v9[1] = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA538, &qword_217020A20);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538, &qword_217020A20, MEMORY[0x277CDF7D8]);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
    return sub_217009554();
  }

  else
  {
    sub_2170097E4();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA538, &qword_217020A20);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538, &qword_217020A20, MEMORY[0x277CDF7D8]);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
    sub_217009554();
    return (*(v4 + 8))(v6, v3);
  }
}

double sub_21687714C@<D0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8, &qword_2170209E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v46 = sub_2170090F4();
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = sub_2170068C4();
  v51 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v47 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v2 + 64);
  v50 = v2;
  v54 = *(v2 + 72);
  v20 = v54;

  if ((v20 & 1) == 0)
  {
    sub_21700ED94();
    v21 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v53, &qword_27CABA548, &qword_217020A38);
    (*(v9 + 8))(v11, v46);
  }

  v22 = sub_216C03B7C();

  if (v22)
  {
    v23 = sub_216C03990();

    (*(*v23 + 112))(v52, v24);

    v25 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v14, v25 ^ 1u, 1, v18);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v18);
    v27 = v50;
    if (EnumTagSinglePayload != 1)
    {
      (*(v51 + 32))(v17, v14, v18);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
      goto LABEL_12;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    v27 = v50;
  }

  sub_217006964();
  v28 = sub_21700B8D4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
  {
    sub_216697664(v8, &qword_27CABA4F8, &qword_2170209E0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  }

  else
  {
    v29 = sub_21700B8C4();
    (*(*(v28 - 8) + 8))(v8, v28);
    sub_216CE09EC(v29);
  }

  if (__swift_getEnumTagSinglePayload(v14, 1, v18) != 1)
  {
    sub_216697664(v14, &qword_27CABA4E0, &qword_217020788);
  }

LABEL_12:
  v30 = 0xE900000000000073;
  v31 = 0x746C757365526F6ELL;
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_216697664(v17, &qword_27CABA4E0, &qword_217020788);
    v32 = type metadata accessor for MusicMetrics.PageFields(0);
    v33 = v32[7];
    v34 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(a2 + v33, 1, 1, v34);
    v35 = *v27;
    v36 = v27[1];
    sub_21700DF14();
    v37 = sub_21700E384();
    *a2 = 16;
    a2[1] = 0x746C757365526F6ELL;
    a2[2] = 0xE900000000000073;
    *(a2 + 24) = 35;
  }

  else
  {
    v50 = a2;
    v38 = v47;
    (*(v51 + 32))(v47, v17, v18);
    if (v48)
    {
      v31 = sub_217006894();
      v30 = v39;
      v40 = 0xE400000000000000;
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
      v40 = 0xE500000000000000;
    }

    v42 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830, &qword_217020AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x6C75736552736168;
    *(inited + 40) = 0xEA00000000007374;
    v35 = *v27;
    v36 = v27[1];
    *(inited + 48) = v41;
    *(inited + 56) = v40;
    *(inited + 64) = 0xD000000000000014;
    *(inited + 72) = 0x800000021707F8F0;
    *(inited + 80) = 0x7972617262696CLL;
    *(inited + 88) = 0xE700000000000000;
    sub_21700DF14();
    v37 = sub_21700E384();
    (*(v51 + 8))(v38, v18);
    a2 = v50;
    *v50 = 16;
    a2[1] = v31;
    a2[2] = v30;
    *(a2 + 24) = 35;
    v32 = type metadata accessor for MusicMetrics.PageFields(0);
    sub_2167A4788();
  }

  *&result = 0x686372616553;
  *(a2 + v32[8]) = xmmword_217020730;
  v45 = (a2 + v32[9]);
  *v45 = v35;
  v45[1] = v36;
  *(a2 + v32[10]) = v37;
  return result;
}

uint64_t sub_2168778C0()
{
  v0 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MusicPageMetricsProvider(0);
  result = sub_21700D4B4();
  if (v5[1])
  {
    v4 = *(sub_21700B8C4() + 16);

    sub_21687714C(v4 != 0, v2);
    sub_216F0D464(v2);

    return sub_21687DB64(v2, type metadata accessor for MusicMetrics.PageFields);
  }

  return result;
}

uint64_t sub_2168779B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558, &qword_217053830);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v71 - v3;
  v4 = sub_2170090F4();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v15 = sub_2170068C4();
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = &v71 - v18;
  MEMORY[0x28223BE20](v19);
  v82 = &v71 - v20;
  MEMORY[0x28223BE20](v21);
  v81 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8, &qword_2170209E0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_21700B8D4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006964();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v30 = &qword_27CABA4F8;
    v31 = &qword_2170209E0;
    v32 = v25;
LABEL_13:
    sub_216697664(v32, v30, v31);
LABEL_14:
    v88 = *(v1 + 72);
    v87 = *(v1 + 64);
    v42 = v88;

    if ((v42 & 1) == 0)
    {
      sub_21700ED94();
      v43 = sub_217009C34();
      sub_217007BC4();

      v44 = v83;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v87, &qword_27CABA548, &qword_217020A38);
      (*(v84 + 8))(v44, v85);
    }

    sub_216C03C2C(0);

    type metadata accessor for LibrarySearchResultsView.Model(0);
    sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model, &unk_21702089C);
    sub_2170081B4();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
    sub_216875AD4(v8);
  }

  v80 = v8;
  v76 = v27;
  (*(v27 + 32))(v29, v25, v26);
  v90 = *(v0 + 72);
  v89 = *(v0 + 64);
  v33 = v90;

  if ((v33 & 1) == 0)
  {
    sub_21700ED94();
    v34 = sub_217009C34();
    sub_217007BC4();

    v35 = v83;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v89, &qword_27CABA548, &qword_217020A38);
    (*(v84 + 8))(v35, v85);
  }

  v36 = sub_216C03B7C();

  if (v36)
  {
    v37 = sub_216C03990();

    (*(*v37 + 112))(&v87, v38);

    v39 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v11, v39 ^ 1u, 1, v15);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      (*(v86 + 32))(v14, v11, v15);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
      v8 = v80;
      goto LABEL_11;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  }

  v40 = sub_21700B8C4();
  sub_216CE09EC(v40);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v15);
  v8 = v80;
  if (EnumTagSinglePayload != 1)
  {
    sub_216697664(v11, &qword_27CABA4E0, &qword_217020788);
  }

LABEL_11:
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    (*(v76 + 8))(v29, v26);
    v30 = &qword_27CABA4E0;
    v31 = &qword_217020788;
    v32 = v14;
    goto LABEL_13;
  }

  v46 = v81;
  (*(v86 + 32))(v81, v14, v15);
  v47 = sub_21700B8C4();
  MEMORY[0x28223BE20](v47);
  *(&v71 - 2) = v46;
  v48 = sub_216CE0FB4(sub_21687C678, (&v71 - 4), v47);
  v50 = v49;

  if (v50)
  {
    v51 = *(sub_21700B8C4() + 16);

    v8 = v80;
    if (!v51)
    {
      (*(v76 + 8))(v29, v26);
      (*(v86 + 8))(v81, v15);
      goto LABEL_14;
    }

    v48 = 0;
  }

  result = sub_21700B8C4();
  if ((v48 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v48 >= *(result + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v52 = v86 + 16;
  v53 = result + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v48;
  v75 = *(v86 + 16);
  v75(v82, v53, v15);

  v74 = v33;
  if ((v33 & 1) == 0)
  {
    sub_21700ED94();
    v54 = sub_217009C34();
    sub_217007BC4();

    v55 = v83;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v89, &qword_27CABA548, &qword_217020A38);
    (*(v84 + 8))(v55, v85);
  }

  v56 = sub_21700B8C4();
  v72 = sub_216878748(v56);

  v57 = v78;
  v58 = v75;
  v75(v78, v82, v15);
  v59 = v77;
  v73 = v52;
  v58(v77, v57, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA560, &unk_217020A50);
  swift_allocObject();
  v60 = sub_21687C698(v59);
  v61 = *(v86 + 8);
  v86 += 8;
  v78 = v61;
  (v61)(v57, v15);
  v62 = swift_allocObject();
  memcpy((v62 + 16), v1, 0x61uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v64 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v63);
  type metadata accessor for FacetBarState.Data(0);
  swift_allocObject();
  sub_21687BF4C(v1, &v87);
  v65 = sub_216C03494(v72, v60, sub_21687C834, v62, v64);
  sub_216C03C2C(v65);

  if ((v74 & 1) == 0)
  {
    sub_21700ED94();
    v66 = sub_217009C34();
    sub_217007BC4();

    v67 = v83;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v89, &qword_27CABA548, &qword_217020A38);
    (*(v84 + 8))(v67, v85);
  }

  sub_216C03D94(0);

  type metadata accessor for LibrarySearchResultsView.Model(0);
  sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model, &unk_21702089C);
  sub_2170081B4();
  v68 = v80;
  v69 = v82;
  v75(v80, v82, v15);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v15);
  sub_216875AD4(v68);

  v70 = v78;
  (v78)(v69, v15);
  (*(v76 + 8))(v29, v26);
  return v70(v81, v15);
}

uint64_t sub_216878678()
{
  type metadata accessor for LibrarySearchResultsView.Model(0);
  swift_allocObject();
  return sub_216875C6C();
}

uint64_t sub_2168786B0(uint64_t a1)
{
  v1 = sub_217006894();
  v3 = v2;
  if (v1 == sub_217006894() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21700F7D4();
  }

  return v6 & 1;
}

uint64_t sub_216878748(uint64_t a1)
{
  v2 = sub_2170068C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  sub_21700F494();
  if (v12)
  {
    v13 = *(v3 + 16);
    v14 = (a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
    v19 = *(v3 + 72);
    v20 = v13;
    v21 = v3 + 16;
    v15 = (v3 + 8);
    do
    {
      v16 = v20;
      v20(v11, v14, v2);
      v16(v8, v11, v2);
      v16(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA560, &unk_217020A50);
      swift_allocObject();
      sub_21687C698(v5);
      v17 = *v15;
      (*v15)(v8, v2);
      v17(v11, v2);
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v14 += v19;
      --v12;
    }

    while (v12);
  }

  return v22;
}

uint64_t sub_21687898C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsListSection(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  sub_21700F494();
  if (v14)
  {
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_21687DB0C();
      sub_21687DB0C();
      sub_21687DB0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A8, &qword_217020B50);
      swift_allocObject();
      sub_21687C83C(v7);
      sub_21687DB64(v10, type metadata accessor for SearchResultsListSection);
      sub_21687DB64(v13, type metadata accessor for SearchResultsListSection);
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return v19;
}

double sub_216878BA0@<D0>(uint64_t a1@<X8>)
{
  sub_216878BE4(v1, &v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_216878BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_2170068C4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  if (*(a1 + 8))
  {
    sub_216878FE8(&v35);
    v33 = v35;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B0, &qword_217020C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B8, &qword_217020C40);
    sub_21687D644();
    sub_21687D6F4();
    result = sub_217009554();
    v15 = v35;
    v16 = v36;
  }

  else
  {
    v28 = v11;
    v32 = a2;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    type metadata accessor for LibrarySearchResultsView.Model(0);
    sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model, &unk_21702089C);
    v30 = v18;
    v31 = v17;
    v29 = v19;
    sub_2170081B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_216697664(v6, &qword_27CABA4E0, &qword_217020788);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = v28 + 32;
      v23 = *(v28 + 32);
      v23(v13, v6, v7);
      v23(v9, v13, v7);
      v37 = *(a1 + 16);
      v24 = (*(v22 + 48) + 16) & ~*(v22 + 48);
      v21 = swift_allocObject();
      v23((v21 + v24), v9, v7);
      v25 = (v21 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      v26 = *(a1 + 16);
      *v25 = *a1;
      v25[1] = v26;
      *(v25 + 25) = *(a1 + 25);

      sub_2166A6EA4();
      sub_2167759EC(v31, v30);
      v20 = sub_21687D7A4;
    }

    *&v33 = v20;
    *(&v33 + 1) = v21;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B0, &qword_217020C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B8, &qword_217020C40);
    sub_21687D644();
    sub_21687D6F4();
    result = sub_217009554();
    v15 = v35;
    v16 = v36;
    a2 = v32;
  }

  *a2 = v15;
  *(a2 + 16) = v16;
  return result;
}

uint64_t sub_216878FE8@<X0>(uint64_t (**a1)()@<X8>)
{
  v48 = a1;
  v40 = sub_21700B264();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21700B274();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_2170068C4();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v37 - v13;
  v14 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *(v1 + 40);
  type metadata accessor for LibrarySearchResultsView.Model(0);
  sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model, &unk_21702089C);
  v45 = v15;
  v46 = v14;
  v44 = v16;
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v17 = v10;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_216697664(v9, &qword_27CABA4E0, &qword_217020788);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = v41 + 32;
    v41 = *(v41 + 32);
    v37 = v17;
    (v41)(v47, v9, v17);
    *v3 = xmmword_21701D000;
    (*(v38 + 104))(v3, *MEMORY[0x277CDF108], v40);
    sub_21700B284();
    v22 = v43;
    v23 = sub_21700E8A4();
    v40 = v23;
    *(v23 + 16) = 3;
    v24 = v42;
    v25 = v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v26 = *(v42 + 16);
    v26(v25, v6, v22);
    v27 = *(v24 + 72);
    v26(v25 + v27, v6, v22);
    v26(v25 + 2 * v27, v6, v22);
    (*(v24 + 8))(v6, v22);
    v28 = v39;
    v29 = v37;
    v30 = v41;
    (v41)(v39, v47, v37);
    v49 = *(v1 + 2);
    v31 = (*(v21 + 48) + 24) & ~*(v21 + 48);
    v32 = v31 + v11;
    v33 = (v31 + v11) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v40;
    v30(v20 + v31, v28, v29);
    *(v20 + v32) = 1;
    v34 = v20 + v33;
    *(v34 + 33) = *(v1 + 25);
    v35 = *v1;
    *(v34 + 24) = v1[1];
    *(v34 + 8) = v35;

    sub_2166A6EA4();
    result = sub_2167759EC(v46, v45);
    v19 = sub_21687DC14;
  }

  v36 = v48;
  *v48 = v19;
  v36[1] = v20;
  return result;
}

uint64_t sub_2168794FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v31 = a4;
  v40 = a1;
  v41 = a6;
  v38 = sub_217008A64();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = v9;
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2170068C4();
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v11;
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5D8, &qword_217020C60);
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA638, &qword_217020D00);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_217009C64();
  v42 = a2;
  v43 = a3;
  v44 = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA640, &qword_217020D08);
  sub_21687DCBC();
  sub_217008054();
  if (*(v32 + 16))
  {
    v45 = *(v32 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
    sub_2166D9530(&unk_280E484F8, &qword_27CABA610, &qword_217020C90, MEMORY[0x277CBCE20]);
    v32 = sub_217007E24();
  }

  else
  {
    sub_217007D94();
    sub_2166D9530(&qword_27CABA600, &qword_27CABA5D8, &qword_217020C60, MEMORY[0x277CBCE90]);
    v32 = sub_217007E24();
    (*(v30 + 8))(v15, v13);
  }

  v19 = v12;
  v20 = v12;
  v21 = v36;
  (*(v10 + 16))(v20, a3, v36);
  v23 = v37;
  v22 = v38;
  (*(v8 + 16))(v37, v40, v38);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = (v35 + *(v8 + 80) + v24) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v24, v19, v21);
  (*(v8 + 32))(v26 + v25, v23, v22);
  v27 = v41;
  (*(v33 + 32))(v41, v18, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA660, &qword_217020D18);
  *(v27 + *(result + 52)) = v32;
  v29 = (v27 + *(result + 56));
  *v29 = sub_21687DEA4;
  v29[1] = v26;
  return result;
}

uint64_t sub_2168799CC@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_217009714();
  MEMORY[0x28223BE20](v5);
  sub_21700DF14();
  sub_2170093B4();
  sub_21687DFB4(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA668, &qword_217020D20);
  sub_21687DFFC();
  sub_21700B484();
  v6 = sub_217009CA4();
  sub_217007F24();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA640, &qword_217020D08);
  v16 = a4 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_216879B80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = sub_2170068C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA618, &qword_217020C98);
  MEMORY[0x28223BE20](v8);
  sub_2170068A4();
  swift_getKeyPath();
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2 & 1;
  (*(v6 + 32))(v10 + v9, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for TopSearchLockupView(0);
  sub_2166D9530(&qword_280E2A478, &qword_27CABA618, &qword_217020C98, MEMORY[0x277CD7CB0]);
  sub_2166C32C0();
  sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
  return sub_21700B154();
}

uint64_t sub_216879DDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TopSearchLockup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = *(v7 + 16);
  v17(v9, a1, v6, v14);
  v18 = sub_217006884();
  sub_216879FC8(v9, a2 & 1, v18 & 1, v16);
  sub_21687DB0C();
  (v17)(v9, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF980, &qword_21701ABF0);
  swift_allocObject();
  sub_216DC2A50(v12);
  sub_2168027B0(v19, a3);
  return sub_21687DB64(v16, type metadata accessor for TopSearchLockup);
}

uint64_t sub_216879FC8@<X0>(char *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_2170067A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v82[0] = sub_217006784();
  *(&v82[0] + 1) = v25;
  sub_2166C32C0();
  sub_21700F364();
  LOBYTE(v79) = 0;
  sub_216DF6204(&v79, v82);
  v26 = sub_216C74700();
  v75 = v27;
  v76 = v26;
  if (a3)
  {
    sub_216DF6318();
  }

  else
  {
    v28 = sub_216C756EC();
  }

  v73 = v29;
  v74 = v28;
  v72 = sub_216C75FE8();
  (*(v22 + 16))(v24, a1, v21);
  v30 = (*(v22 + 88))(v24, v21);
  if (v30 == *MEMORY[0x277D2A400])
  {
LABEL_5:
    v71 = 0;
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x277D2A418])
  {
    goto LABEL_7;
  }

  if (v30 == *MEMORY[0x277D2A438] || v30 == *MEMORY[0x277D2A3C8])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A428])
  {
    goto LABEL_7;
  }

  if (v30 == *MEMORY[0x277D2A388] || v30 == *MEMORY[0x277D2A408])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A3B0] || v30 == *MEMORY[0x277D2A3B8])
  {
LABEL_30:
    v31 = 2;
    goto LABEL_8;
  }

  if (v30 == *MEMORY[0x277D2A440] || v30 == *MEMORY[0x277D2A450])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A3C0] || v30 == *MEMORY[0x277D2A3D0])
  {
LABEL_7:
    v31 = 1;
    goto LABEL_8;
  }

  if (v30 == *MEMORY[0x277D2A3F8] || v30 == *MEMORY[0x277D2A430])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A458] || v30 == *MEMORY[0x277D2A448])
  {
    goto LABEL_30;
  }

  if (v30 == *MEMORY[0x277D2A420] || v30 == *MEMORY[0x277D2A3D8])
  {
    goto LABEL_5;
  }

  v31 = 2 * (v30 == *MEMORY[0x277D2A3E0]);
LABEL_8:
  v71 = v31;
LABEL_9:
  v32 = *(v22 + 8);
  v32(v24, v21);
  LOBYTE(v79) = 0;
  sub_216E017AC(&v79, 0, v20);
  v33 = sub_21700D3B4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
  {
    sub_216697664(v20, &qword_27CAB89C0, &qword_21701AB00);
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
  }

  else
  {
    *(&v80 + 1) = v33;
    v81 = MEMORY[0x277D21D10];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
    (*(*(v33 - 8) + 32))(boxed_opaque_existential_1, v20, v33);
  }

  sub_217006794();
  v35 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v35);
  sub_216C7CDA8(v14, v11, v17);
  v32(a1, v21);
  v36 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v36);
  v37 = type metadata accessor for TopSearchLockup(0);
  v38 = a4 + v37[5];
  v39 = v85;
  *v38 = v84;
  *(v38 + 16) = v39;
  *(v38 + 32) = v86;
  v40 = a4 + v37[6];
  v41 = v82[1];
  *v40 = v82[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v83;
  v42 = (a4 + v37[8]);
  v43 = v75;
  *v42 = v76;
  v42[1] = v43;
  v44 = (a4 + v37[9]);
  v45 = v73;
  *v44 = v74;
  v44[1] = v45;
  v46 = (a4 + v37[10]);
  *v46 = 0;
  v46[1] = 0;
  *(a4 + v37[11]) = v72 & 1;
  sub_2167A4788();
  v47 = a4 + v37[12];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v48 = a4 + v37[13];
  *(v48 + 32) = 0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(a4 + v37[14]) = v71;
  v49 = a4 + v37[17];
  v50 = v80;
  *v49 = v79;
  *(v49 + 16) = v50;
  *(v49 + 32) = v81;
  v51 = v37[18];
  v52 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(a4 + v51, 1, 1, v52);
  v53 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v53) == 1)
  {
    sub_216697664(v17, &qword_27CAB6D60, &qword_217014E40);
    v54 = v37[19];
    v55 = type metadata accessor for LockupArtwork(0);
    v56 = a4 + v54;
    v57 = 1;
  }

  else
  {
    v58 = v37[19];
    sub_21687DBBC();
    v59 = type metadata accessor for LockupArtwork(0);
    swift_storeEnumTagMultiPayload();
    v56 = a4 + v58;
    v57 = 0;
    v55 = v59;
  }

  result = __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
  *(a4 + v37[15]) = v78 & 1;
  v61 = (a4 + v37[7]);
  *v61 = 0;
  v61[1] = 0;
  *(a4 + v37[16]) = 0;
  return result;
}

uint64_t sub_21687A740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v50 = a4;
  v49 = sub_217008A64();
  v41 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v6;
  v48 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2170068C4();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v8;
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5D8, &qword_217020C60);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v10;
  v11 = sub_2170086D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5E0, &qword_217020C68);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5E8, &qword_217020C70);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = &v35 - v19;
  v44 = a2;
  v51 = a2;
  v52 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F0, &qword_217020C78);
  sub_21687D838();
  sub_217009ED4();
  sub_2170086C4();
  sub_2166D9530(&qword_280E2A6C8, &qword_27CABA5E0, &qword_217020C68, MEMORY[0x277CDE5A0]);
  v39 = v20;
  sub_21700ABC4();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  if (*(a3 + 16))
  {
    v53 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
    sub_2166D9530(&unk_280E484F8, &qword_27CABA610, &qword_217020C90, MEMORY[0x277CBCE20]);
    v21 = sub_217007E24();
  }

  else
  {
    v22 = v35;
    sub_217007D94();
    sub_2166D9530(&qword_27CABA600, &qword_27CABA5D8, &qword_217020C60, MEMORY[0x277CBCE90]);
    v23 = v37;
    v21 = sub_217007E24();
    (*(v36 + 8))(v22, v23);
  }

  v24 = v38;
  v25 = v45;
  (*(v7 + 16))(v38, v44, v45);
  v26 = v41;
  v27 = v48;
  v28 = v49;
  (*(v41 + 16))(v48, v47, v49);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v43 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v29, v24, v25);
  (*(v26 + 32))(v31 + v30, v27, v28);
  v32 = v50;
  (*(v40 + 32))(v50, v39, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA608, &qword_217020C88);
  *(v32 + *(result + 52)) = v21;
  v34 = (v32 + *(result + 56));
  *v34 = sub_21687D9A8;
  v34[1] = v31;
  return result;
}

uint64_t sub_21687AD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v23 = sub_2170068C4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA620, &qword_217020CA8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA618, &qword_217020C98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_2170068A4();
  (*(v9 + 16))(v11, v14, v8);
  sub_2166D9530(&qword_280E2A478, &qword_27CABA618, &qword_217020C98, MEMORY[0x277CD7CB0]);
  sub_2170075C4();
  (*(v9 + 8))(v14, v8);
  swift_getKeyPath();
  v15 = v23;
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v23);
  v29 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = *(a2 + 40);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(a2 + 16);
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21687DA60;
  *(v20 + 24) = v17;

  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8, &qword_217020C80);
  sub_2166D9530(&qword_280E48628, &qword_27CABA620, &qword_217020CA8, MEMORY[0x277D7EC38]);
  sub_2166C32C0();
  sub_21687D8BC();
  return sub_21700B154();
}

uint64_t sub_21687B174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v32 = a3;
  v37 = a5;
  v38 = a1;
  v39 = sub_21700DAF4();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v33 = type metadata accessor for TopSearchLockupView(0);
  MEMORY[0x28223BE20](v33);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2170067A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TopSearchLockup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  v23 = *(v13 + 16);
  v23(v15, a2, v12, v20);
  v24 = sub_217006884();
  sub_216879FC8(v15, 1, v24 & 1, v22);
  sub_21687DB0C();
  (v23)(v15, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF980, &qword_21701ABF0);
  swift_allocObject();
  sub_216DC2A50(v18);
  sub_2168027B0(v25, v11);
  sub_21687B59C();
  v26 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v26);
  v27 = v34;
  sub_21700DAE4();
  sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
  v28 = v37;
  sub_21700A1C4();
  (*(v36 + 8))(v27, v39);
  sub_216697664(v9, &qword_27CAB6D58, &unk_217014E30);
  sub_21687DB64(v11, type metadata accessor for TopSearchLockupView);
  sub_21687DB64(v22, type metadata accessor for TopSearchLockup);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8, &qword_217020C80);
  v31 = v28 + *(result + 36);
  *v31 = 0;
  *(v31 + 8) = KeyPath;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_21687B59C()
{
  v1 = sub_21700D704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21700D774();
  MEMORY[0x28223BE20](v2 - 8);
  sub_217006784();
  sub_21700D764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v4 = MEMORY[0x277D837D0];
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 72) = v4;
  *(inited + 48) = 0x4C746E65746E6F43;
  *(inited + 56) = 0xEF6D657449747369;
  sub_21700E384();
  sub_21700D6F4();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_217015230;
  *(v5 + 32) = 1684957547;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = 0x497972617262696CLL;
  *(v5 + 56) = 0xEB000000006D6574;
  *(v5 + 72) = v4;
  *(v5 + 80) = 1701667182;
  *(v5 + 88) = 0xE400000000000000;
  *(v5 + 96) = 0x497972617262696CLL;
  *(v5 + 104) = 0xEB000000006D6574;
  *(v5 + 120) = v4;
  *(v5 + 128) = 25705;
  *(v5 + 168) = v4;
  *(v5 + 136) = 0xE200000000000000;
  *(v5 + 144) = 0x497972617262696CLL;
  *(v5 + 152) = 0xEB000000006D6574;
  sub_21700E384();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_217013DA0;
  strcpy((v6 + 32), "locationType");
  *(v6 + 45) = 0;
  *(v6 + 46) = -5120;
  *(v6 + 72) = v4;
  *(v6 + 48) = 0x4C746E65746E6F43;
  *(v6 + 56) = 0xEF6D657449747369;
  sub_21700E384();
  return sub_21700D784();
}

uint64_t sub_21687B860(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA630, &unk_217020CF0);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21687BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700B544();
  sub_2166C32C0();
  return sub_217008A54();
}

uint64_t type metadata accessor for LibrarySearchResultsView.Model(uint64_t a1)
{
  result = qword_280E36788;
  if (!qword_280E36788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21687BC20(uint64_t a1)
{
  sub_21687BCB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21687BCB0(uint64_t a1)
{
  if (!qword_280E48480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4E0, &qword_217020788);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48480);
    }
  }
}

uint64_t sub_21687BD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_21687BD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibrarySearchResultsView.LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21687BEB8()
{
  result = qword_27CABA4F0;
  if (!qword_27CABA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA4F0);
  }

  return result;
}

unint64_t sub_21687BF84()
{
  result = qword_280E2AA58;
  if (!qword_280E2AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA510, &qword_2170209F8);
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA58);
  }

  return result;
}

unint64_t sub_21687C03C()
{
  result = qword_280E2AF98;
  if (!qword_280E2AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA518, &qword_217020A00);
    sub_21687C0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF98);
  }

  return result;
}

unint64_t sub_21687C0C8()
{
  result = qword_280E2B0F8;
  if (!qword_280E2B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA520, &qword_217020A08);
    sub_21687C184();
    sub_21687DFB4(&qword_280E460E0, _s19PageMetricsModifierVMa, &unk_2170413B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0F8);
  }

  return result;
}

unint64_t sub_21687C184()
{
  result = qword_280E2A5F8;
  if (!qword_280E2A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA528, &qword_217020A10);
    sub_21687C208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A5F8);
  }

  return result;
}

unint64_t sub_21687C208()
{
  result = qword_280E2AA48;
  if (!qword_280E2AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA530, &qword_217020A18);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538, &qword_217020A20, MEMORY[0x277CDF7D8]);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA48);
  }

  return result;
}

unint64_t sub_21687C2EC()
{
  result = qword_280E2A438;
  if (!qword_280E2A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4F8, &qword_2170209E0);
    sub_21687DFB4(&qword_280E2A440, MEMORY[0x277CD7D88], MEMORY[0x277CD7D90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A438);
  }

  return result;
}

void *sub_21687C3A0@<X0>(_OWORD *a1@<X1>, void *a2@<X8>)
{
  sub_217008444();
  v5 = sub_216A1204C(v4);
  v6 = qword_217020D70[v5];
  KeyPath = swift_getKeyPath();
  v8 = a1[1];
  *v16 = *a1;
  *&v16[16] = v8;
  v9 = a1[3];
  *&v16[32] = a1[2];
  *&v16[48] = v9;
  v10 = swift_getKeyPath();
  __src[0] = *v16;
  __src[1] = *&v16[16];
  __src[2] = *&v16[32];
  __src[3] = *&v16[48];
  *&__src[4] = KeyPath;
  BYTE8(__src[4]) = v5;
  memcpy(__dst, __src, 0x49uLL);
  v13[0] = *v16;
  v13[1] = *&v16[16];
  v13[2] = *&v16[32];
  v13[3] = *&v16[48];
  v14 = KeyPath;
  v15 = v5;
  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_216697664(v13, &qword_27CABA588, &qword_217020B30);
  memcpy(v16, __dst, 0x50uLL);
  *&v16[80] = v10;
  *&v16[88] = 0;
  *&v16[96] = v6;
  *&v16[104] = 0;
  *&v16[112] = v6;
  memcpy(v17, __dst, sizeof(v17));
  v18 = v10;
  v19 = 0;
  v20 = v6;
  v21 = 0;
  v22 = v6;
  sub_2166A6EA4();
  sub_216697664(v17, &qword_27CABA590, &qword_217020B38);
  return memcpy(a2, v16, 0x78uLL);
}

unint64_t sub_21687C5A0()
{
  result = qword_280E42940;
  if (!qword_280E42940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA550, &unk_217020A40);
    sub_21687C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42940);
  }

  return result;
}

unint64_t sub_21687C624()
{
  result = qword_280E42948;
  if (!qword_280E42948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42948);
  }

  return result;
}

char *sub_21687C698(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_2170068C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v1[*(v3 + 144)], a1, v5, v8);
  v9 = *(v6 + 32);
  v9(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  *(v1 + 2) = sub_21687CE80;
  *(v1 + 3) = v11;
  return v1;
}

uint64_t *sub_21687C83C(uint64_t a1)
{
  v2 = *v1;
  v3 = type metadata accessor for SearchResultsListSection(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21687DB0C();
  sub_21687DBBC();
  v9 = (v8 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_21687DBBC();
  *(v10 + v9) = v2;
  v1[2] = sub_21687D4BC;
  v1[3] = v10;
  return v1;
}

uint64_t sub_21687C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2170068C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA568, &qword_217020A60);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  sub_2166A6DF8(a1, v32);
  v20 = swift_dynamicCast();
  v30 = v6;
  if (v20)
  {
    v21 = *(v6 + 16);
    v21(v19, v31 + *(*v31 + 144), v5);

    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
    v21 = *(v6 + 16);
  }

  v21(v16, a2, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  v22 = *(v8 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) != 1)
  {
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(&v10[v22], 1, v5) != 1)
    {
      v24 = v29;
      v25 = v30;
      (*(v30 + 32))(v29, &v10[v22], v5);
      sub_21687DFB4(&qword_280E4A450, MEMORY[0x277D2A520], MEMORY[0x277D2A530]);
      v23 = sub_21700E494();
      v26 = *(v25 + 8);
      v26(v24, v5);
      sub_216697664(v16, &qword_27CABA4E0, &qword_217020788);
      sub_216697664(v19, &qword_27CABA4E0, &qword_217020788);
      v26(v13, v5);
      sub_216697664(v10, &qword_27CABA4E0, &qword_217020788);
      return v23 & 1;
    }

    sub_216697664(v16, &qword_27CABA4E0, &qword_217020788);
    sub_216697664(v19, &qword_27CABA4E0, &qword_217020788);
    (*(v30 + 8))(v13, v5);
    goto LABEL_9;
  }

  sub_216697664(v16, &qword_27CABA4E0, &qword_217020788);
  sub_216697664(v19, &qword_27CABA4E0, &qword_217020788);
  if (__swift_getEnumTagSinglePayload(&v10[v22], 1, v5) != 1)
  {
LABEL_9:
    sub_216697664(v10, &qword_27CABA568, &qword_217020A60);
    v23 = 0;
    return v23 & 1;
  }

  sub_216697664(v10, &qword_27CABA4E0, &qword_217020788);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_21687CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SearchResultsListSection(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA598, &unk_217020B40);
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0, &qword_2170539C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v26[-v17];
  sub_2166A6DF8(a1, v26);
  if (swift_dynamicCast())
  {
    sub_21687DB0C();

    v19 = v18;
    v20 = 0;
  }

  else
  {
    v19 = v18;
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v4);
  sub_21687DB0C();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_216697664(v15, &qword_27CABA5A0, &qword_2170539C0);
    sub_216697664(v18, &qword_27CABA5A0, &qword_2170539C0);
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v4) == 1)
    {
      sub_216697664(v9, &qword_27CABA5A0, &qword_2170539C0);
      v22 = 1;
      return v22 & 1;
    }

LABEL_9:
    sub_216697664(v9, &qword_27CABA598, &unk_217020B40);
    v22 = 0;
    return v22 & 1;
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v4) == 1)
  {
    sub_216697664(v15, &qword_27CABA5A0, &qword_2170539C0);
    sub_216697664(v18, &qword_27CABA5A0, &qword_2170539C0);
    sub_21687DB64(v12, type metadata accessor for SearchResultsListSection);
    goto LABEL_9;
  }

  sub_21687DBBC();
  if (*v12 == *v6 && v12[1] == v6[1])
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_21700F7D4();
  }

  sub_216697664(v15, &qword_27CABA5A0, &qword_2170539C0);
  sub_216697664(v18, &qword_27CABA5A0, &qword_2170539C0);
  sub_21687DB64(v6, type metadata accessor for SearchResultsListSection);
  sub_21687DB64(v12, type metadata accessor for SearchResultsListSection);
  sub_216697664(v9, &qword_27CABA5A0, &qword_2170539C0);
  return v22 & 1;
}

uint64_t sub_21687D2F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_2166A6EA4();
  return sub_216875AD4(v2);
}

uint64_t sub_21687D3A0()
{
  v0 = sub_21700B8D4();
  OUTLINED_FUNCTION_36(v0);

  return sub_2168778C0();
}

void *sub_21687D400@<X0>(_OWORD *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  return sub_21687C3A0(v5, a2);
}

void *sub_21687D434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_8_21();

  return sub_21687D400(v1, v2);
}

uint64_t sub_21687D4E8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_2(v5);
  OUTLINED_FUNCTION_26_2();
  v8 = *(v3 + v7);

  return a3(a1, v3 + v6, v8);
}

uint64_t sub_21687D58C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21687D5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21687D644()
{
  result = qword_280E2AD50;
  if (!qword_280E2AD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5B0, &qword_217020C38);
    sub_2166D9530(&qword_280E2AD58, &qword_27CABA5C0, &qword_217020C48, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD50);
  }

  return result;
}

unint64_t sub_21687D6F4()
{
  result = qword_280E2AD40;
  if (!qword_280E2AD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5B8, &qword_217020C40);
    sub_2166D9530(&qword_280E2AD48, &qword_27CABA5C8, &qword_217020C50, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD40);
  }

  return result;
}

uint64_t sub_21687D7A4()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_26_2();
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_21687A740(v1, v2, v3, v4);
}

unint64_t sub_21687D838()
{
  result = qword_280E2A4F0;
  if (!qword_280E2A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5F0, &qword_217020C78);
    sub_21687D8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4F0);
  }

  return result;
}

unint64_t sub_21687D8BC()
{
  result = qword_280E2B1C8;
  if (!qword_280E2B1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5F8, &qword_217020C80);
    type metadata accessor for TopSearchLockupView(255);
    sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
    swift_getOpaqueTypeConformance2();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1C8);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_11_22();
  v3(v2);

  sub_2166B8588(*(v0 + v1 + 24), *(v0 + v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_21687DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2170068C4();
  OUTLINED_FUNCTION_2(v7);
  OUTLINED_FUNCTION_26_2();

  return sub_21687B174(a1, a2, v3 + v8, v3 + v9, a3);
}

uint64_t sub_21687DB0C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21687DB64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21687DBBC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21687DC14()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_2168794FC(v1, v2, v3, v4, v5, v6);
}

unint64_t sub_21687DCBC()
{
  result = qword_27CABA648;
  if (!qword_27CABA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA640, &qword_217020D08);
    sub_2166D9530(&qword_27CABA650, &qword_27CABA658, &qword_217020D10, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA648);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_2170068C4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217008A64();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_21687DEBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2170068C4();
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_217008A64();
  OUTLINED_FUNCTION_36(v10);
  return sub_21687B8CC(a1, v2 + v7, v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_21687DFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21687DFFC()
{
  result = qword_27CABA670;
  if (!qword_27CABA670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA668, &qword_217020D20);
    sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA670);
  }

  return result;
}

uint64_t sub_21687E0B0()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_216879DDC(v1, v2, v3);
}

uint64_t sub_21687E120(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21687E19C()
{
  result = qword_280E2AA40;
  if (!qword_280E2AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA680, &unk_217020D60);
    sub_21687D644();
    sub_21687D6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA40);
  }

  return result;
}

uint64_t sub_21687E29C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3)
  {
    return sub_21687EB64(*a1, v3, a2);
  }

  else
  {
    return sub_21687E2B8(a2);
  }
}

uint64_t sub_21687E2B8(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v52 - v6;
  v7 = sub_217006224();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v55);
  v56 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21700D284();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v62 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - v15;
  v16 = type metadata accessor for SocialProfilePageIntent(0);
  MEMORY[0x28223BE20](v16);
  v67 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v21 = v70;
  if (*(v70 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    v53 = v70;
    v22 = sub_216CAC650();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 25965;
    }

    v52 = a1;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE200000000000000;
    }

    v73 = 1;
    v26 = *(v18 + 24);
    v27 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v20[v26], 1, 1, v27);
    *v20 = 18;
    *(v20 + 1) = 0;
    *(v20 + 2) = 0;
    *(v20 + 3) = v24;
    *(v20 + 4) = v25;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 13) = 0;
    v20[112] = 1;
    v28 = v67;
    sub_21687F3D4(v20, v67, type metadata accessor for ContentDescriptor);
    v29 = *(v16 + 24);
    v30 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v28 + v29, 1, 1, v30);
    *(v28 + *(v16 + 20)) = 1;
    sub_21700E094();
    v31 = v66;
    sub_21700D234();
    v32 = v56;
    v56[3] = v16;
    v32[4] = sub_21687F38C(&qword_27CAB94A0, type metadata accessor for SocialProfilePageIntent, &unk_21704DF98);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    sub_21687F3D4(v28, boxed_opaque_existential_1, type metadata accessor for SocialProfilePageIntent);
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v27);
    v34 = v12[11];
    v35 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(&v14[v34], 1, 1, v35);
    __swift_storeEnumTagSinglePayload(&v14[v12[9]], 1, 1, v30);
    v36 = &v14[v12[10]];
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v38 = v57;
    v37 = v58;
    (*(v57 + 16))(v14, v31, v58);
    sub_21687F3D4(v32, &v14[v12[5]], type metadata accessor for FlowAction.Destination);
    v39 = v59;
    sub_217006214();
    v40 = sub_2170061F4();
    v42 = v41;
    (*(v60 + 8))(v39, v61);
    (*(v38 + 8))(v66, v37);
    sub_21687F43C(v32, type metadata accessor for FlowAction.Destination);
    v43 = &v14[v12[6]];
    *v43 = v40;
    v43[1] = v42;
    v14[v12[7]] = 1;
    sub_2167A66B4(&v70, v36);
    *(&v71 + 1) = v12;
    v72 = sub_21687F38C(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
    v44 = __swift_allocate_boxed_opaque_existential_1(&v70);
    sub_21687F3D4(v14, v44, type metadata accessor for FlowAction);
    v46 = v63;
    v45 = v64;
    v47 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x277D21E18], v65);
    v48 = v68;
    v49 = v69;
    v50 = sub_21700D5E4();

    (*(v45 + 8))(v46, v47);
    sub_21687F43C(v14, type metadata accessor for FlowAction);
    (*(v62 + 8))(v48, v49);
    sub_21687F43C(v67, type metadata accessor for SocialProfilePageIntent);
    sub_21687F43C(v20, type metadata accessor for ContentDescriptor);
    __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v54 + 104))(v4, *MEMORY[0x277D21CA0], v2);
    v50 = sub_21700E1F4();
  }

  return v50;
}

uint64_t sub_21687EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v55 - v7;
  v70 = sub_217006224();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v56);
  v66 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21700D284();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v63);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v55 - v13;
  v14 = type metadata accessor for SocialProfilePageIntent(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContentDescriptor(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  v76 = a3;
  sub_21700E094();
  v61 = v77;
  v21 = sub_216CAC650();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 25965;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE200000000000000;
  }

  v25 = *(v18 + 32);
  v26 = 1;
  v57 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v20[v25], 1, 1, v57);
  *v20 = 18;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = a1;
  *(v20 + 4) = a2;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 13) = 0;
  v20[112] = 1;
  v62 = v20;
  v27 = v20;
  v28 = v16;
  sub_21687F3D4(v27, v16, type metadata accessor for ContentDescriptor);
  if (v23 != a1 || v24 != a2)
  {
    v26 = sub_21700F7D4();
  }

  sub_21700DF14();

  v30 = *(v14 + 24);
  v31 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(&v16[v30], 1, 1, v31);
  v16[*(v14 + 20)] = v26 & 1;
  v58 = v16;
  sub_21700E094();
  v32 = v59;
  sub_21700D234();
  v33 = v66;
  v66[3] = v14;
  v33[4] = sub_21687F38C(&qword_27CAB94A0, type metadata accessor for SocialProfilePageIntent, &unk_21704DF98);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_21687F3D4(v28, boxed_opaque_existential_1, type metadata accessor for SocialProfilePageIntent);
  swift_storeEnumTagMultiPayload();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v35 = v63;
  v36 = v60;
  __swift_storeEnumTagSinglePayload(&v60[*(v63 + 32)], 1, 1, v57);
  v37 = v35[11];
  v38 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(v36 + v37, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v36 + v35[9], 1, 1, v31);
  v39 = v36 + v35[10];
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = v64;
  v41 = v65;
  (*(v64 + 16))(v36, v32, v65);
  sub_21687F3D4(v33, v36 + v35[5], type metadata accessor for FlowAction.Destination);
  v42 = v67;
  sub_217006214();
  v43 = sub_2170061F4();
  v45 = v44;
  (*(v68 + 8))(v42, v70);
  (*(v40 + 8))(v32, v41);
  sub_21687F43C(v33, type metadata accessor for FlowAction.Destination);
  v46 = (v36 + v35[6]);
  *v46 = v43;
  v46[1] = v45;
  *(v36 + v35[7]) = 0;
  sub_2167A66B4(&v77, v39);
  *(&v78 + 1) = v35;
  v79 = sub_21687F38C(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  v47 = __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_21687F3D4(v36, v47, type metadata accessor for FlowAction);
  v49 = v71;
  v48 = v72;
  v50 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D21E18], v73);
  v51 = v75;
  v52 = v74;
  v53 = sub_21700D5E4();

  (*(v48 + 8))(v49, v50);
  sub_21687F43C(v36, type metadata accessor for FlowAction);
  (*(v69 + 8))(v52, v51);
  sub_21687F43C(v58, type metadata accessor for SocialProfilePageIntent);
  sub_21687F43C(v62, type metadata accessor for ContentDescriptor);
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  return v53;
}

uint64_t sub_21687F38C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21687F3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21687F43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21687F49C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20[0] = v6;
  v7 = type metadata accessor for ReplaySwiftMusicContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 28);
  memset(v21, 0, sizeof(v21));
  sub_216681B04(v21, v23, &qword_27CABA690, &qword_217020E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA690, &qword_217020E30);
  sub_21700AEA4();
  sub_216697664(v21, &qword_27CABA690, &qword_217020E30);
  v13 = v7[9];
  *(v10 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v7[10];
  v23[0] = 0;
  sub_21700AEA4();
  v15 = *(&v21[0] + 1);
  *v14 = v21[0];
  *(v14 + 1) = v15;
  v16 = type metadata accessor for MappedReplayModel(0);
  sub_216BF47DC(*(v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 8), *(v5 + *(v16 + 20) + 16), *(v5 + *(v16 + 20) + 24), 0, 0, v21);
  if (*(&v21[0] + 1))
  {
    memcpy(v23, v21, 0x70uLL);
    v17 = sub_216880F68(v5, v10 + v7[5], type metadata accessor for MappedReplayModel);
    *v10 = v1;
    *(v10 + v7[6]) = v3;
    MEMORY[0x28223BE20](v17);
    v20[-2] = v5;
    sub_216C2E88C();
    v22 = 0;
    sub_21687F88C(v21, v10 + v12);
    v18 = (v10 + v7[8]);
    memcpy(v18, v23, 0x70uLL);
    v18[14] = 0;
    v19 = v20[0];
    sub_216880F68(v10, v20[0], type metadata accessor for ReplaySwiftMusicContentView);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v7);
    OUTLINED_FUNCTION_1_40();
    sub_216880FD4(v10, type metadata accessor for ReplaySwiftMusicContentView);
  }

  else
  {

    sub_216697664(v21, &qword_27CABA698, &qword_217020E70);
    OUTLINED_FUNCTION_1_40();
    sub_216697664(v10 + v12, &qword_27CABA6A0, qword_217020E78);
    sub_216697664(v10 + v13, &qword_27CAB84D8, &unk_217019FB0);

    __swift_storeEnumTagSinglePayload(v20[0], 1, 1, v7);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t type metadata accessor for ReplaySwiftMusicContentView(uint64_t a1)
{
  result = qword_27CABA6A8;
  if (!qword_27CABA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21687F804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 96) == *(a2 + 8) && v2 == *(a1 + 104))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_21687F88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0, qword_217020E78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21687F924(uint64_t a1)
{
  type metadata accessor for ObjectGraph(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MappedReplayModel(319);
    if (v2 <= 0x3F)
    {
      sub_21687FA98(319);
      if (v3 <= 0x3F)
      {
        sub_21687FB2C(319, &qword_280E2A5D0, &qword_27CABA690, &qword_217020E30, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21687FB90(319, &qword_27CABA6C0, &type metadata for ReplayPageResponse.FacetItem);
          if (v5 <= 0x3F)
          {
            sub_21687FB2C(319, &qword_280E2B440, &qword_27CAB8600, &qword_217020AD0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21687FB90(319, &qword_280E2A590, MEMORY[0x277D839B0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21687FA98(uint64_t a1)
{
  if (!qword_27CABA6B8)
  {
    v2 = type metadata accessor for ReplayModel(255);
    v3 = sub_216880D74(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
    v5 = type metadata accessor for CatalogPagePresenter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CABA6B8);
    }
  }
}

void sub_21687FB2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21687FB90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21700AEE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21687FBF8()
{
  OUTLINED_FUNCTION_49();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6C8, &qword_217020F08);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  type metadata accessor for ReplaySwiftMusicContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0, qword_217020E78);
  sub_21700AED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0, &unk_217020F10);
  sub_21700AED4();
  sub_21687FE5C();
  v6 = v5;
  sub_216697664(&v12, &qword_27CAB8C98, &unk_21702DAD0);
  sub_216697664(&v13, &qword_27CABA6D8, &qword_217020F20);
  sub_217009C64();
  v10 = v0;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6E0, &qword_217020F28);
  sub_2166D9530(&qword_27CABA6E8, &qword_27CABA6E0, &qword_217020F28, MEMORY[0x277CE11A8]);
  sub_217008054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6F0, &qword_217020F30);
  type metadata accessor for ReplayPageGeometry(0);
  sub_217007FF4();
  KeyPath = swift_getKeyPath();
  v8 = &v4[*(v1 + 36)];
  *v8 = KeyPath;
  v8[8] = 1;
  type metadata accessor for ObjectGraph(0);
  sub_216880B70();
  sub_21700A1E4();

  sub_216697664(v4, &qword_27CABA6C8, &qword_217020F08);
  OUTLINED_FUNCTION_26();
}

void sub_21687FE5C()
{
  OUTLINED_FUNCTION_49();
  v20 = v1;
  v21 = v0;
  v3 = v2;
  v19 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  sub_216681B04(v5, v22, &qword_27CABA6D8, &qword_217020F20);
  sub_216681B04(v3, &v23, &qword_27CAB8C98, &unk_21702DAD0);
  swift_weakInit();
  swift_weakAssign();
  v16 = *(v7 + 16);
  v16(v12, v9, v6);
  sub_216881080();
  sub_21700D5A4();
  sub_2168810D4(v22);
  v17 = *(v7 + 8);
  v17(v9, v6);
  sub_216681B04(v19, v22, &qword_27CAB8C98, &unk_21702DAD0);
  swift_weakInit();
  swift_weakAssign();
  v16(v15, v12, v6);
  sub_216881128();
  sub_21700D5A4();
  sub_21688117C(v22);
  v17(v12, v6);
  sub_216E9C508(v15);
  v17(v15, v6);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168800E4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_21700B354();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA720, &qword_217020F70);
  return sub_216880144(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_216880144@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = sub_217009714();
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA728, &qword_217020F78);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v35 - v7;
  v8 = type metadata accessor for BackgroundGradientView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA730, &qword_217020F80);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  type metadata accessor for ReplaySwiftMusicContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0, qword_217020E78);
  sub_21700AEB4();
  if (v42[1])
  {
    memcpy(v43, v42, 0x80uLL);
    sub_216880D18(v43, v10);
    sub_216C0C900();
    v10[128] = 1;
    v16 = &v10[*(v8 + 28)];
    type metadata accessor for ReplayPageGeometry(0);
    sub_216880D74(&qword_27CABA750, type metadata accessor for ReplayPageGeometry, &unk_2170558EC);
    v17 = sub_217008104();
    v19 = v18;
    sub_216880DBC(v43);
    *v16 = v17;
    v16[8] = v19 & 1;
    sub_216880E10(v10, v15, type metadata accessor for BackgroundGradientView);
    v20 = v15;
    v21 = 0;
  }

  else
  {
    sub_216697664(v42, &qword_27CABA690, &qword_217020E30);
    v20 = v15;
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v21, 1, v8);
  v22 = sub_2170093C4();
  MEMORY[0x28223BE20](v22);
  v23 = v36;
  *(&v35 - 2) = a1;
  *(&v35 - 1) = v23;
  v43[0] = 0;
  sub_216880D74(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA738, &qword_217020F88);
  sub_2166D9530(&qword_27CABA740, &qword_27CABA738, &qword_217020F88, MEMORY[0x277CE14C0]);
  v24 = v35;
  sub_217008014();
  v25 = v15;
  v26 = v37;
  sub_216681B04(v15, v37, &qword_27CABA730, &qword_217020F80);
  v28 = v38;
  v27 = v39;
  v29 = *(v38 + 16);
  v30 = v40;
  v29(v39, v24, v40);
  v31 = v41;
  sub_216681B04(v26, v41, &qword_27CABA730, &qword_217020F80);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA748, &qword_217020F90);
  v29((v31 + *(v32 + 48)), v27, v30);
  v33 = *(v28 + 8);
  v33(v24, v30);
  sub_216697664(v25, &qword_27CABA730, &qword_217020F80);
  v33(v27, v30);
  return sub_216697664(v26, &qword_27CABA730, &qword_217020F80);
}

uint64_t sub_216880694@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for ReplayPageBodyView(0) - 8;
  MEMORY[0x28223BE20](v31);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - v8;
  v9 = type metadata accessor for ReplaySwiftMusicContentView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_216880F68(a1, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplaySwiftMusicContentView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v33 = v14;
  sub_216880E10(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ReplaySwiftMusicContentView);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  KeyPath = swift_getKeyPath();
  v15 = *(v10 + 28);
  v16 = (a1 + *(type metadata accessor for MappedReplayModel(0) + 20) + v15);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  sub_21700DF14();

  sub_21700DF14();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0, &unk_217020F10);
  sub_21700AED4();
  v37[0] = v18;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v20;
  v37[20] = swift_getKeyPath();
  v21 = type metadata accessor for MappedReplayYearModel(0);
  memset(&v37[21], 0, 24);
  v38 = 0;
  v22 = v34;
  sub_216880F68(v16 + *(v21 + 20), v34, type metadata accessor for MappedReplayPage);
  v23 = v31;
  *(v22 + *(v31 + 28)) = *a1;
  v24 = (v22 + *(v23 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758, &qword_217020FC0);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
  *v24 = sub_217008CF4();
  v24[1] = v25;
  sub_216880F0C(v37, v36);
  v26 = v35;
  sub_216880F68(v22, v35, type metadata accessor for ReplayPageBodyView);
  v28 = KeyPath;
  v27 = v33;
  *a3 = sub_216880E70;
  *(a3 + 8) = v27;
  *(a3 + 16) = v28;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  sub_216880F0C(v36, a3 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA768, &qword_217020FC8);
  sub_216880F68(v26, a3 + *(v29 + 64), type metadata accessor for ReplayPageBodyView);

  sub_216880FC8(v28, 0, 0, 0, 0);
  sub_216880FD4(v22, type metadata accessor for ReplayPageBodyView);
  sub_21688102C(v37);
  sub_216880FD4(v26, type metadata accessor for ReplayPageBodyView);
  sub_21688102C(v36);

  return sub_21680E444(v28, 0, 0, 0, 0);
}

uint64_t sub_216880A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for ReplaySwiftMusicContentView(0) + 20));
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0, qword_217020E78);
  sub_21700AED4();
  sub_21700DC34();
  v6 = sub_21700DC24();
  sub_21700AEA4();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 160) = v5;
  *(a3 + 168) = v6;
  *(a3 + 176) = MEMORY[0x277D221C0];
  *(a3 + 184) = a2;
}

unint64_t sub_216880B70()
{
  result = qword_27CABA6F8;
  if (!qword_27CABA6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6C8, &qword_217020F08);
    sub_216880C28();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA6F8);
  }

  return result;
}

unint64_t sub_216880C28()
{
  result = qword_27CABA700;
  if (!qword_27CABA700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6F0, &qword_217020F30);
    sub_2166D9530(&qword_27CABA708, &qword_27CABA710, &unk_217020F60, MEMORY[0x277CDD6E0]);
    sub_216880D74(&qword_27CABA718, type metadata accessor for ReplayPageGeometryViewModifier, &unk_217055E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA700);
  }

  return result;
}

uint64_t sub_216880D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216880E10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216880E70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplaySwiftMusicContentView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216880A8C(v1 + v4, v5, a1);
}

uint64_t sub_216880F68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216880FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_216880FD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216881080()
{
  result = qword_27CABA770;
  if (!qword_27CABA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA770);
  }

  return result;
}

unint64_t sub_216881128()
{
  result = qword_27CABA778;
  if (!qword_27CABA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA778);
  }

  return result;
}

uint64_t sub_2168811D0(uint64_t a1)
{
  if (a1 > 3999)
  {
    return 0;
  }

  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = (&unk_28290E740 + 24 * v2);
    v4 = v3[4];
    if (v1 >= v4)
    {
      break;
    }

LABEL_8:
    if (++v2 == 13)
    {
      return 0;
    }
  }

  v6 = v3[5];
  v5 = v3[6];
  result = sub_21700DF14();
  while (1)
  {
    v8 = __OFSUB__(v1, v4);
    v1 -= v4;
    if (v8)
    {
      break;
    }

    result = MEMORY[0x21CE9F490](v6, v5);
    if (v1 < v4)
    {

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_216881290()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  *(v0 + 56) = v6;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher, v12, v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  OUTLINED_FUNCTION_33_15(v13);
  sub_2166A0F18(&v16, v0 + 16);
  sub_216681B04(v4, v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_targetPlaylist, &qword_27CAB74B8, &unk_217017110);
  sub_216681B04(v2, v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_parentFolder, &qword_27CABA7C8, qword_217021078);
  v14 = type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_33_15(v14);

  sub_2166997CC(v2, &qword_27CABA7C8, qword_217021078);
  sub_2166997CC(v4, &qword_27CAB74B8, &unk_217017110);
  *(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_subscriptionStatusCoordinator) = v16;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216881458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7C8, qword_217021078);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = sub_21700C924();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_21700C734();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = swift_allocObject();
  sub_216881290();
  return v10;
}

void sub_21688156C()
{
  OUTLINED_FUNCTION_49();
  v67 = v0;
  v66 = v1;
  v65 = v2;
  v4 = v3;
  v69 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v63[1] = type metadata accessor for PlaylistAddableItem(v7);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v14);
  v15 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  OUTLINED_FUNCTION_1();
  v24 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = v63 - v26;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v28 = sub_21700C1E4();
  sub_21700BC04();

  (*(v17 + 8))(v21, v15);
  LODWORD(v15) = (*(v24 + 88))(v27, v22);
  v29 = *MEMORY[0x277D2B048];
  (*(v24 + 8))(v27, v22);
  v63[0] = v28;
  if (v15 == v29)
  {
    OUTLINED_FUNCTION_50();
    (*(v30 + 16))(v11, v4, v28);
    swift_storeEnumTagMultiPayload();
    sub_21700C164();
    OUTLINED_FUNCTION_22_22();
    LOBYTE(v71[0]) = v31;
    v32 = v64;
    v33 = OUTLINED_FUNCTION_23_12();
    v34 = v65;
    v35 = v66;
    sub_216881BA8(v33, v36, v37, v65, v66, 0x6D75626C61, 0xE500000000000000, v38, v39);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v11, v40);
LABEL_5:
    sub_21678C1C4();
    sub_2166997CC(v32, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    inited = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_25_10(inited, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    goto LABEL_7;
  }

  v32 = v64;
  v34 = v65;
  v35 = v66;
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v41 + 16))(v11, v4);
    swift_storeEnumTagMultiPayload();
    sub_21700C164();
    OUTLINED_FUNCTION_22_22();
    LOBYTE(v71[0]) = v42;
    v43 = OUTLINED_FUNCTION_23_12();
    sub_216881BA8(v43, v44, v45, v34, v35, 0x6D75626C61, 0xE500000000000000, v46, v47);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v11, v48);
    goto LABEL_5;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_7:
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  v52 = v68;
  sub_21688746C(v35 + v51, v68, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v52, v55);
  if (EnumCaseMultiPayload == 7)
  {
    v71[3] = v63[0];
    v71[4] = MEMORY[0x277CD82B8];
    __swift_allocate_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_50();
    (*(v56 + 16))();
    v70 = 4;
    sub_2168831B8(v71, v34, v35, 0x6D75626C61, 0xE500000000000000, &v70, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v57 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_27_13(v32, v58, v59, v57);
    v60 = sub_21678C1C4();
    sub_2166997CC(v32, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_217013DA0;
    *(v61 + 32) = v60;
    sub_2167A2998(v61);
    OUTLINED_FUNCTION_26_5();
    sub_2169FAC94();
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_217013D90;
  *(v62 + 32) = v50;
  *(v62 + 40) = v60;
  sub_2167A2998(v62);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216881BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v170 = a5;
  v171 = a9;
  v172 = a6;
  v149 = a4;
  v159 = a2;
  *&v160 = a3;
  v168 = a1;
  v11 = type metadata accessor for OpenAddToPlaylistAction(0);
  v12 = *(v11 - 8);
  v144 = v11;
  v145 = v12;
  MEMORY[0x28223BE20](v11);
  v146 = v13;
  v147 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = (&v128 - v15);
  v16 = sub_2170075A4();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x28223BE20](v16);
  v148 = v17;
  v152 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v134 = *(v136 - 8);
  v132 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v128 - v18;
  v19 = type metadata accessor for ProcessDeepLinkAction(0);
  v20 = *(v19 - 8);
  v129 = v19;
  v130 = v20;
  MEMORY[0x28223BE20](v19);
  v133 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v128 - v23;
  v137 = type metadata accessor for OpenFinancePageAction.Kind(0);
  MEMORY[0x28223BE20](v137);
  v164 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21700DFD4();
  v138 = *(v25 - 8);
  v139 = v25;
  MEMORY[0x28223BE20](v25);
  v163 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v165);
  v140 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  MEMORY[0x28223BE20](v28 - 8);
  v161 = &v128 - v29;
  v158 = sub_21700CFB4();
  v153 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_217005EF4();
  v142 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v162 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v141 = &v128 - v34;
  v35 = sub_21700D704();
  v155 = *(v35 - 8);
  v156 = v35;
  MEMORY[0x28223BE20](v35);
  v154 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v128 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v128 - v44;
  v46 = sub_21700D284();
  v166 = *(v46 - 8);
  v167 = v46;
  MEMORY[0x28223BE20](v46);
  v173 = (&v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x6F54646461;
  *(inited + 40) = 0xE500000000000000;
  v50 = MEMORY[0x277D837D0];
  v51 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v50;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v52 = (v170 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v53 = v52[1];
  *(inited + 96) = *v52;
  *(inited + 104) = v53;
  *(inited + 120) = v50;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v50;
  v54 = v172;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v54;
  *(inited + 152) = a7;
  sub_21700DF14();
  sub_21700DF14();
  v55 = sub_21700E384();
  v172 = v45;
  v170 = v31;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v31);
  v56 = v39;
  sub_21700D6F4();
  *(&v178 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v177 = v55;
  sub_2166EF9C4(&v177, &v174);
  v57 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v57;
  sub_2166EF9D4();
  v58 = v180;
  *(&v178 + 1) = v50;
  *&v177 = 6579297;
  *(&v177 + 1) = 0xE300000000000000;
  sub_2166EF9C4(&v177, &v174);
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v58;
  sub_2166EF9D4();
  v59 = v180;
  v60 = 0x6472616F6279656BLL;
  switch(v48)
  {
    case 1:
      v51 = 0xE500000000000000;
      v60 = 0x79726F7473;
      break;
    case 2:
      v51 = 0xE400000000000000;
      v60 = 1701998445;
      break;
    case 3:
      v51 = 0xE500000000000000;
      v60 = 0x636972796CLL;
      break;
    case 4:
      v60 = 0xD000000000000010;
      v51 = 0x80000002170801D0;
      break;
    case 5:
      v51 = 0x80000002170801F0;
      v60 = 0xD000000000000012;
      break;
    case 6:
      v51 = 0xE900000000000075;
      v60 = 0x6E654D6570697773;
      break;
    case 7:
      v51 = 0x8000000217080210;
      v60 = 0xD000000000000015;
      break;
    default:
      break;
  }

  *(&v178 + 1) = v50;
  *&v177 = v60;
  *(&v177 + 1) = v51;
  sub_2166EF9C4(&v177, &v174);
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v59;
  sub_2166EF9D4();
  v61 = v180;
  sub_216681B04(v172, v42, &qword_27CABA820, &unk_217018CE0);
  v62 = v170;
  if (__swift_getEnumTagSinglePayload(v42, 1, v170) == 1)
  {
    sub_2166997CC(v42, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v64 = v141;
    v63 = v142;
    (*(v142 + 32))(v141, v42, v62);
    v65 = sub_217005DE4();
    *(&v178 + 1) = v50;
    *&v177 = v65;
    *(&v177 + 1) = v66;
    sub_2166EF9C4(&v177, &v174);
    swift_isUniquelyReferenced_nonNull_native();
    v180 = v61;
    sub_2166EF9D4();
    v61 = v180;
    (*(v63 + 8))(v64, v62);
  }

  v67 = v168;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v68 = sub_21700CF84();
  v69 = __swift_project_value_buffer(v68, qword_280E73DB0);
  v70 = v157;
  MEMORY[0x21CE9DD70](v159, v160, 0x6E6F74747562, 0xE600000000000000, v61, v69);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v71 = v153;
  v72 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v73 = swift_allocObject();
  v160 = xmmword_217013DA0;
  *(v73 + 16) = xmmword_217013DA0;
  v74 = v73 + v72;
  v75 = v158;
  (*(v71 + 16))(v74, v70, v158);
  v76 = v155;
  v77 = v156;
  (*(v155 + 16))(v154, v56, v156);
  sub_21700D244();
  (*(v71 + 8))(v70, v75);
  (*(v76 + 8))(v56, v77);
  sub_2166997CC(v172, &qword_27CABA820, &unk_217018CE0);
  PlaylistAddableItem.addableItem.getter(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA798, &qword_217021048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E38, &unk_217021050);
  v78 = v67;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
  }

  sub_216681B04(&v177, &v174, &qword_27CAB8E30, &unk_21701BA90);
  v79 = v175;
  v80 = v169;
  v82 = v163;
  v81 = v164;
  v83 = v161;
  v84 = v162;
  if (!v175)
  {
    sub_2166997CC(&v174, &qword_27CAB8E30, &unk_21701BA90);
    v95 = sub_21700BAB4();
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v95);
    goto LABEL_22;
  }

  v85 = v176;
  __swift_project_boxed_opaque_existential_1(&v174, v175);
  sub_21694EF28((v80 + 16), v79, v85);
  v86 = sub_21700BAB4();
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v86);
  __swift_destroy_boxed_opaque_existential_1Tm(&v174);
  if (__swift_getEnumTagSinglePayload(v83, 1, v86) == 1)
  {
LABEL_22:
    sub_2166997CC(v83, &qword_27CAB7090, &qword_217015A60);
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7A0, &unk_217021060);
    v96 = *(type metadata accessor for PlaylistAddableItem(0) - 8);
    v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = v160;
    sub_21688746C(v78, v98 + v97, type metadata accessor for PlaylistAddableItem);
    v99 = v143;
    (*(v166 + 32))(v143 + *(v144 + 20), v173, v167);
    *v99 = v98;
    swift_storeEnumTagMultiPayload();
    v100 = v147;
    sub_2168873E0(v99, v147, type metadata accessor for OpenAddToPlaylistAction);
    v101 = v80;
    v102 = v150;
    v103 = v151;
    v104 = v152;
    (*(v150 + 16))(v152, v149, v151);
    v105 = (*(v145 + 80) + 24) & ~*(v145 + 80);
    v106 = (v146 + *(v102 + 80) + v105) & ~*(v102 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = v101;
    sub_2168873E0(v100, v107 + v105, type metadata accessor for OpenAddToPlaylistAction);
    (*(v102 + 32))(v107 + v106, v104, v103);
    v108 = type metadata accessor for MenuAction(0);
    v109 = v171;
    v110 = (v171 + *(v108 + 20));
    *v110 = sub_2168870E0;
    v110[1] = v107;
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v108);
    goto LABEL_24;
  }

  v87 = *(v86 - 8);
  v88 = (*(v87 + 88))(v83, v86);
  v89 = v83;
  v90 = *MEMORY[0x277D2AE90];
  (*(v87 + 8))(v89, v86);
  if (v88 != v90 || (sub_216E3D990() & 1) != 0)
  {
    goto LABEL_23;
  }

  v91 = v140;
  swift_storeEnumTagMultiPayload();
  v92 = OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher;
  v93 = *(v80 + 56);
  type metadata accessor for ObjectGraph(0);
  v94 = v139;
  v172 = v93;
  sub_21700E094();
  *v81 = 1;
  swift_storeEnumTagMultiPayload();
  sub_216B80558(v81, v82, v84);
  sub_21688710C(v81, type metadata accessor for OpenFinancePageAction.Kind);
  v112 = v128;
  sub_21700D234();
  (*(v138 + 8))(v82, v94);
  (*(v166 + 8))(v173, v167);
  v113 = v129;
  (*(v142 + 32))(v112 + *(v129 + 20), v84, v170);
  v114 = *(v113 + 24);
  v115 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(v112 + v114, 1, 1, v115);
  *(v112 + *(v113 + 28)) = 1;
  sub_2168873E0(v91, v171, type metadata accessor for MenuActionType);
  v116 = v134;
  (*(v134 + 16))(v135, v80 + v92, v136);
  v173 = type metadata accessor for ProcessDeepLinkAction;
  v117 = v133;
  sub_2168873E0(v112, v133, type metadata accessor for ProcessDeepLinkAction);
  v118 = v150;
  v119 = v151;
  (*(v150 + 16))(v152, v149, v151);
  v120 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v121 = (v132 + *(v130 + 80) + v120) & ~*(v130 + 80);
  v122 = (v131 + *(v118 + 80) + v121) & ~*(v118 + 80);
  v123 = (v148 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = swift_allocObject();
  (*(v116 + 32))(v124 + v120, v135, v136);
  sub_2168873E0(v117, v124 + v121, v173);
  (*(v118 + 32))(v124 + v122, v152, v119);
  *(v124 + v123) = v172;
  v125 = type metadata accessor for MenuAction(0);
  v126 = v171;
  v127 = (v171 + *(v125 + 20));
  *v127 = sub_216887160;
  v127[1] = v124;
  __swift_storeEnumTagSinglePayload(v126, 0, 1, v125);
LABEL_24:

  return sub_2166997CC(&v177, &qword_27CAB8E30, &unk_21701BA90);
}

uint64_t sub_216882F84()
{
  sub_2166C0578(&v8);
  v0 = v9;
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_21700F8F4();
      sub_21700E614();
      v1 = sub_21700F944();
      v2 = -1 << *(v0 + 32);
      v3 = v1 & ~v2;
      if ((*(v0 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
      {
        v4 = ~v2;
        while (2)
        {
          v5 = 0x80000002170817B0;
          switch(*(*(v0 + 48) + v3))
          {
            case 3:
              goto LABEL_7;
            case 5:
              v5 = 0x80000002170817F0;
LABEL_7:
              if (0x80000002170817B0 != v5)
              {
                goto LABEL_8;
              }

              v6 = 1;
              goto LABEL_12;
            default:
LABEL_8:
              v6 = sub_21700F7D4();

              if (v6)
              {
                goto LABEL_12;
              }

              v3 = (v3 + 1) & v4;
              if (((*(v0 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
              {
                goto LABEL_12;
              }

              continue;
          }
        }
      }
    }

    v6 = 0;
LABEL_12:
    sub_2166997CC(&v8, &qword_27CAC5980, &qword_217035260);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2168831B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a4;
  v72 = a3;
  v91 = a2;
  v95 = a7;
  v94 = sub_2170075A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = v10;
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PromptHideFromProfileAction(0);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v69 - v13;
  v83 = sub_21700CFB4();
  v14 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v71 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v70 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21700D704();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v78 = sub_21700D284();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a6;
  v30 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v74 = sub_21700B934();
  v75 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x724665766F6D6572;
  *(inited + 40) = 0xEA00000000006D6FLL;
  v33 = MEMORY[0x277D837D0];
  v34 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v33;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v35 = (v72 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v36 = v35[1];
  *(inited + 96) = *v35;
  *(inited + 104) = v36;
  *(inited + 120) = v33;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v33;
  v37 = v73;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v37;
  *(inited + 152) = a5;
  sub_21700DF14();
  sub_21700DF14();
  v38 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v16);
  sub_21700D6F4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v99 = v38;
  sub_2166EF9C4(&v99, v98);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v39;
  sub_2166EF9D4();
  v40 = v97;
  v100 = v33;
  *&v99 = 0x6D6F724665646968;
  *(&v99 + 1) = 0xEF656C69666F7250;
  sub_2166EF9C4(&v99, v98);
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v40;
  sub_2166EF9D4();
  v41 = v97;
  v42 = 0x6472616F6279656BLL;
  switch(v29)
  {
    case 1:
      v34 = 0xE500000000000000;
      v42 = 0x79726F7473;
      break;
    case 2:
      v34 = 0xE400000000000000;
      v42 = 1701998445;
      break;
    case 3:
      v34 = 0xE500000000000000;
      v42 = 0x636972796CLL;
      break;
    case 4:
      v42 = 0xD000000000000010;
      v34 = 0x80000002170801D0;
      break;
    case 5:
      v34 = 0x80000002170801F0;
      v42 = 0xD000000000000012;
      break;
    case 6:
      v34 = 0xE900000000000075;
      v42 = 0x6E654D6570697773;
      break;
    case 7:
      v34 = 0x8000000217080210;
      v42 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v100 = v33;
  *&v99 = v42;
  *(&v99 + 1) = v34;
  sub_2166EF9C4(&v99, v98);
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v41;
  sub_2166EF9D4();
  v43 = v97;
  sub_216681B04(v27, v24, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v16) == 1)
  {
    sub_2166997CC(v24, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v44 = v71;
    v45 = v70;
    (*(v71 + 32))(v70, v24, v16);
    v46 = sub_217005DE4();
    v100 = v33;
    *&v99 = v46;
    *(&v99 + 1) = v47;
    sub_2166EF9C4(&v99, v98);
    swift_isUniquelyReferenced_nonNull_native();
    v97 = v43;
    sub_2166EF9D4();
    v43 = v97;
    (*(v44 + 8))(v45, v16);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v48 = sub_21700CF84();
  v49 = __swift_project_value_buffer(v48, qword_280E73DB0);
  v50 = v82;
  MEMORY[0x21CE9DD70](v74, v75, 0x6E6F74747562, 0xE600000000000000, v43, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v51 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217013DA0;
  v53 = v52 + v51;
  v54 = v83;
  (*(v14 + 16))(v53, v50, v83);
  v55 = v80;
  v56 = v81;
  (*(v80 + 16))(v79, v21, v81);
  v57 = v76;
  sub_21700D244();
  (*(v14 + 8))(v50, v54);
  (*(v55 + 8))(v21, v56);
  sub_2166997CC(v27, &qword_27CABA820, &unk_217018CE0);
  v58 = v84;
  sub_21700D234();
  (*(v77 + 8))(v57, v78);
  sub_2167B7D58(v88, v58 + *(v85 + 20));
  type metadata accessor for MenuActionType(0);
  v59 = v95;
  swift_storeEnumTagMultiPayload();
  v60 = v89;
  sub_2168873E0(v58, v89, type metadata accessor for PromptHideFromProfileAction);
  v61 = v93;
  v62 = v92;
  v63 = v94;
  (*(v93 + 16))(v92, v91, v94);
  v64 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v65 = (v87 + *(v61 + 80) + v64) & ~*(v61 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v96;
  sub_2168873E0(v60, v66 + v64, type metadata accessor for PromptHideFromProfileAction);
  (*(v61 + 32))(v66 + v65, v62, v63);
  v67 = (v59 + *(type metadata accessor for MenuAction(0) + 20));
  *v67 = sub_216887440;
  v67[1] = v66;
}

void sub_216883DF4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v82 = v2;
  v78 = v3;
  v87 = v4;
  v76 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  v79 = type metadata accessor for MenuContext(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_0(v71 - v14);
  sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v84 = v16;
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v86 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v74 = type metadata accessor for PlaylistAddableItem(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = v0[5];
  v32 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v31);
  v33 = *(v32 + 144);
  v34 = sub_21700BA44();
  v35 = sub_2168874CC(&qword_280E2A420, MEMORY[0x277CD7E58], MEMORY[0x277D2AE80]);
  v33(v87, v34, v35, v31, v32);
  v36 = (*(v26 + 88))(v30, v24);
  LODWORD(v31) = *MEMORY[0x277D2AEE0];
  (*(v26 + 8))(v30, v24);
  v71[1] = v1;
  if (v36 == v31 && (sub_216882F84() & 1) != 0)
  {
    OUTLINED_FUNCTION_50();
    v38 = v75;
    (*(v37 + 16))(v75, v87, v34);
    swift_storeEnumTagMultiPayload();
    sub_21700B9F4();
    OUTLINED_FUNCTION_22_22();
    v88[0] = v39;
    v40 = v77;
    v41 = v82;
    sub_216881BA8(v38, v42, v30, v78, v82, 0x646956636973756DLL, 0xEA00000000006F65, v88, v77);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v38, v43);
    v44 = sub_21678C1C4();
    sub_2166997CC(v40, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = v44;
    v46 = sub_2167A2998(inited);
    swift_setDeallocating();
    sub_2169FAC94();
    v48 = v84;
    v47 = v85;
    v49 = v83;
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
    v48 = v84;
    v47 = v85;
    v49 = v83;
    v41 = v82;
  }

  v50 = v80;
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  sub_21688746C(v41 + v51, v50, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v86;
  v55 = v81;
  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_41();
    sub_21688710C(v50, v56);
  }

  else
  {
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    (*(v48 + 32))(v54, v50, v47);
    sub_216887070(v50 + v57, v49);
    sub_216681B04(v49, v55, &qword_27CAB74B8, &unk_217017110);
    v58 = v76;
    if (__swift_getEnumTagSinglePayload(v55, 1, v76) != 1)
    {
      v61 = v55;
      v62 = v73;
      v63 = v41;
      v64 = v72;
      (*(v73 + 32))(v72, v61, v58);
      v88[0] = 4;
      v65 = v77;
      sub_216884568(v54, v64, v78, v63, 0x646956636973756DLL, 0xEA00000000006F65, v88, v77);
      v66 = type metadata accessor for MenuAction(0);
      OUTLINED_FUNCTION_27_13(v65, v67, v68, v66);
      v69 = v58;
      v59 = sub_21678C1C4();
      sub_2166997CC(v65, &qword_27CAB6DF0, &unk_2170152D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_217013DA0;
      *(v70 + 32) = v59;
      sub_2167A2998(v70);
      OUTLINED_FUNCTION_26_5();
      sub_2169FAC94();
      (*(v62 + 8))(v64, v69);
      sub_2166997CC(v49, &qword_27CAB74B8, &unk_217017110);
      (*(v48 + 8))(v86, v47);
      goto LABEL_10;
    }

    sub_2166997CC(v49, &qword_27CAB74B8, &unk_217017110);
    (*(v48 + 8))(v54, v47);
    sub_2166997CC(v55, &qword_27CAB74B8, &unk_217017110);
  }

  v59 = MEMORY[0x277D84F90];
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_217013D90;
  *(v60 + 32) = v46;
  *(v60 + 40) = v59;
  sub_2167A2998(v60);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216884568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a5;
  v76 = a4;
  v96 = a3;
  v93 = a2;
  v100 = a8;
  v99 = sub_2170075A4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = v11;
  v97 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for RemoveFromPlaylistAction(0);
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v94 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v74 - v14;
  v87 = sub_21700CFB4();
  v15 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217005EF4();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700D704();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v83 = sub_21700D284();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a7;
  v90 = a1;
  v78 = sub_21700C874();
  v79 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x724665766F6D6572;
  *(inited + 40) = 0xEA00000000006D6FLL;
  v33 = MEMORY[0x277D837D0];
  v34 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v33;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v35 = (v76 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v36 = v35[1];
  *(inited + 96) = *v35;
  *(inited + 104) = v36;
  *(inited + 120) = v33;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v33;
  v37 = v77;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v37;
  *(inited + 152) = a6;
  sub_21700DF14();
  sub_21700DF14();
  v38 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v17);
  sub_21700D6F4();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v104 = v38;
  sub_2166EF9C4(&v104, &v103);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v39;
  sub_2166EF9D4();
  v40 = v102;
  v105 = v33;
  *&v104 = 0x6574656C6564;
  *(&v104 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v104, &v103);
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v40;
  sub_2166EF9D4();
  v41 = v102;
  v42 = 0x6472616F6279656BLL;
  switch(v30)
  {
    case 1:
      v34 = 0xE500000000000000;
      v42 = 0x79726F7473;
      break;
    case 2:
      v34 = 0xE400000000000000;
      v42 = 1701998445;
      break;
    case 3:
      v34 = 0xE500000000000000;
      v42 = 0x636972796CLL;
      break;
    case 4:
      v42 = 0xD000000000000010;
      v34 = 0x80000002170801D0;
      break;
    case 5:
      v34 = 0x80000002170801F0;
      v42 = 0xD000000000000012;
      break;
    case 6:
      v34 = 0xE900000000000075;
      v42 = 0x6E654D6570697773;
      break;
    case 7:
      v34 = 0x8000000217080210;
      v42 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v105 = v33;
  *&v104 = v42;
  *(&v104 + 1) = v34;
  sub_2166EF9C4(&v104, &v103);
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v41;
  sub_2166EF9D4();
  v43 = v102;
  sub_216681B04(v28, v25, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v17) == 1)
  {
    sub_2166997CC(v25, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v44 = v75;
    v45 = v74;
    (*(v75 + 32))(v74, v25, v17);
    v46 = sub_217005DE4();
    v105 = v33;
    *&v104 = v46;
    *(&v104 + 1) = v47;
    sub_2166EF9C4(&v104, &v103);
    swift_isUniquelyReferenced_nonNull_native();
    v102 = v43;
    sub_2166EF9D4();
    v43 = v102;
    (*(v44 + 8))(v45, v17);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v48 = sub_21700CF84();
  v49 = __swift_project_value_buffer(v48, qword_280E73DB0);
  v50 = v86;
  MEMORY[0x21CE9DD70](v78, v79, 0x6E6F74747562, 0xE600000000000000, v43, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v51 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217013DA0;
  v53 = v52 + v51;
  v54 = v87;
  (*(v15 + 16))(v53, v50, v87);
  v55 = v84;
  v56 = v85;
  (*(v84 + 16))(v81, v22, v85);
  v57 = v80;
  sub_21700D244();
  (*(v15 + 8))(v50, v54);
  (*(v55 + 8))(v22, v56);
  sub_2166997CC(v28, &qword_27CABA820, &unk_217018CE0);
  v58 = v88;
  v59 = *(v88 + 20);
  v60 = sub_21700C8E4();
  v61 = v89;
  (*(*(v60 - 8) + 16))(&v89[v59], v90, v60);
  v62 = *(v58 + 24);
  v63 = sub_21700C924();
  (*(*(v63 - 8) + 16))(v61 + v62, v93, v63);
  (*(v82 + 32))(v61, v57, v83);
  type metadata accessor for MenuActionType(0);
  v64 = v100;
  swift_storeEnumTagMultiPayload();
  v65 = v94;
  sub_2168873E0(v61, v94, type metadata accessor for RemoveFromPlaylistAction);
  v66 = v98;
  v67 = v97;
  v68 = v99;
  (*(v98 + 16))(v97, v96, v99);
  v69 = (*(v91 + 80) + 24) & ~*(v91 + 80);
  v70 = (v92 + *(v66 + 80) + v69) & ~*(v66 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v101;
  sub_2168873E0(v65, v71 + v69, type metadata accessor for RemoveFromPlaylistAction);
  (*(v66 + 32))(v71 + v70, v67, v68);
  v72 = (v64 + *(type metadata accessor for MenuAction(0) + 20));
  *v72 = sub_2168872A8;
  v72[1] = v71;
}

void sub_2168851F4()
{
  OUTLINED_FUNCTION_49();
  v106 = v0;
  v94 = v1;
  v95 = v2;
  v4 = v3;
  v103 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v102 = v6;
  OUTLINED_FUNCTION_4_1();
  v100 = sub_21700BD94();
  OUTLINED_FUNCTION_1();
  v98 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v96 = v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0, &qword_217021070);
  OUTLINED_FUNCTION_1();
  v97 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v101 = v12;
  v13 = OUTLINED_FUNCTION_4_1();
  v91 = type metadata accessor for PlaylistAddableItem(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v92 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v104 = v18;
  OUTLINED_FUNCTION_4_1();
  v19 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = &v91 - v30;
  v93 = sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v32 = sub_21700C924();
  sub_21700BC04();

  (*(v21 + 8))(v25, v19);
  v33 = (*(v28 + 88))(v31, v26);
  v34 = *MEMORY[0x277D2B048];
  (*(v28 + 8))(v31, v26);
  v105 = v32;
  if (v33 == v34)
  {
    OUTLINED_FUNCTION_50();
    v36 = v92;
    (*(v35 + 16))(v92, v4, v32);
    swift_storeEnumTagMultiPayload();
    sub_21700C7C4();
    OUTLINED_FUNCTION_17_21();
    v37 = v94;
    v38 = v95;
    OUTLINED_FUNCTION_30_10();
    sub_216881BA8(v39, v40, v41, v42, v43, v34, 0xE800000000000000, v44, v45);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v36, v46);
    v47 = v4;
LABEL_5:
    v54 = sub_21678C1C4();
    sub_2166997CC(v32, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = v54;
    v56 = sub_2167A2998(inited);
    swift_setDeallocating();
    sub_2169FAC94();
    goto LABEL_7;
  }

  v32 = v91;
  v48 = v92;
  v47 = v4;
  v37 = v94;
  v38 = v95;
  OUTLINED_FUNCTION_30_10();
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v49 + 16))(v48, v4);
    swift_storeEnumTagMultiPayload();
    sub_21700C7C4();
    OUTLINED_FUNCTION_17_21();
    sub_216881BA8(v48, v50, v48, v37, v38, v34, 0xE800000000000000, v51, v52);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v48, v53);
    goto LABEL_5;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_7:
  sub_21700BE34();
  v57 = v96;
  sub_2170067E4();
  v59 = v100;
  v58 = v101;
  v95 = v47;
  v60 = v105;
  sub_21700BC04();

  (*(v98 + 8))(v57, v59);
  v61 = v97;
  v62 = v99;
  if ((*(v97 + 88))(v58, v99) == *MEMORY[0x277D2B040])
  {
    v63 = v37;
    v64 = v61;
    v65 = v34;
    (*(v64 + 96))(v58, v62);
    v66 = sub_21700BD84();
    v67 = *(v66 - 8);
    v68 = (*(v67 + 88))(v58, v66);
    v69 = v58;
    v70 = v68;
    v71 = *MEMORY[0x277D2B0F0];
    (*(v67 + 8))(v69, v66);
    if (v70 == v71)
    {
      v72 = v104;
      v37 = v63;
      sub_216885ACC(v95, v63, v104);
      v73 = type metadata accessor for MenuAction(0);
      OUTLINED_FUNCTION_27_13(v72, v74, v75, v73);
      sub_21678C1C4();
      sub_2166997CC(v72, &qword_27CAB6DF0, &unk_2170152D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
      v76 = swift_initStackObject();
      v77 = OUTLINED_FUNCTION_25_10(v76, xmmword_217013DA0);
      swift_setDeallocating();
      sub_2169FAC94();
      v34 = v65;
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
      v34 = v65;
      v37 = v63;
    }

    v60 = v105;
  }

  else
  {
    (*(v61 + 8))(v58, v62);
    v77 = MEMORY[0x277D84F90];
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  v79 = v102;
  sub_21688746C(v38 + v78, v102, v80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v79, v82);
  if (EnumCaseMultiPayload == 7)
  {
    v108[3] = v60;
    v108[4] = MEMORY[0x277CD85F0];
    __swift_allocate_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_50();
    (*(v83 + 16))();
    v107 = 4;
    v84 = v104;
    sub_2168831B8(v108, v37, v38, v34, 0xE800000000000000, &v107, v104);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    v85 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_27_13(v84, v86, v87, v85);
    sub_21678C1C4();
    sub_2166997CC(v84, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    v88 = swift_initStackObject();
    v89 = OUTLINED_FUNCTION_25_10(v88, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_217015230;
  *(v90 + 32) = v56;
  *(v90 + 40) = v77;
  *(v90 + 48) = v89;
  sub_2167A2998(v90);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216885ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_2170075A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for OpenMoveToFolderAction(0);
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = sub_21700C924();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  sub_21700D234();
  type metadata accessor for MenuActionType(0);
  v15 = a3;
  swift_storeEnumTagMultiPayload();
  sub_2168873E0(v13, v10, type metadata accessor for OpenMoveToFolderAction);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v16 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v17 = (v9 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  sub_2168873E0(v10, v18 + v16, type metadata accessor for OpenMoveToFolderAction);
  (*(v6 + 32))(v18 + v17, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = (v15 + *(type metadata accessor for MenuAction(0) + 20));
  *v19 = sub_2168873B4;
  v19[1] = v18;
}

void sub_216885D6C()
{
  OUTLINED_FUNCTION_49();
  v123 = v0;
  v2 = v1;
  v112 = v3;
  v116 = v4;
  v107 = sub_21700C6E4();
  OUTLINED_FUNCTION_1();
  v105 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA780, &qword_217021038);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v10);
  v110 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v109 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_0(&v104 - v17);
  v124 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v120 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v21 = OUTLINED_FUNCTION_8_0(v20);
  v113 = type metadata accessor for PlaylistAddableItem(v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v26);
  v27 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  OUTLINED_FUNCTION_1();
  v36 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &v104 - v38;
  v40 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  v44 = &v104 - v43;
  v45 = *(type metadata accessor for MenuConfiguration(0) + 20);
  v117 = v40;
  swift_storeEnumTagMultiPayload();
  v118 = v2;
  v115 = v45;
  LOBYTE(v2) = sub_216B88F54(v2 + v45, v44);
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v44, v46);
  if (v2)
  {
    v47 = 4;
  }

  else
  {
    v47 = 7;
  }

  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v48 = sub_21700C084();
  v49 = v116;
  sub_21700BC04();

  (*(v29 + 8))(v33, v27);
  v50 = (*(v36 + 88))(v39, v34);
  v51 = *MEMORY[0x277D2B048];
  (*(v36 + 8))(v39, v34);
  v111 = v47;
  if (v50 == v51)
  {
    OUTLINED_FUNCTION_50();
    v53 = v114;
    (*(v52 + 16))(v114, v49, v48);
    swift_storeEnumTagMultiPayload();
    sub_21700BFF4();
    v125 = v47;
    v54 = v121;
    OUTLINED_FUNCTION_23_12();
    v55 = v118;
    OUTLINED_FUNCTION_32_13();
    sub_216881BA8(v56, v57, v58, v59, v60, v61, v62, v63, v64);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v53, v65);
LABEL_8:
    OUTLINED_FUNCTION_31_16();
    OUTLINED_FUNCTION_28_16();
    sub_21678C1C4();
    sub_2166997CC(v54, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    inited = swift_initStackObject();
    v78 = OUTLINED_FUNCTION_25_10(inited, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    v79 = v119;
    goto LABEL_10;
  }

  v33 = v113;
  v34 = v114;
  v54 = v121;
  v55 = v118;
  v27 = v123;
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v66 + 16))(v34, v49, v48);
    swift_storeEnumTagMultiPayload();
    sub_21700BFF4();
    v125 = v111;
    OUTLINED_FUNCTION_32_13();
    sub_216881BA8(v67, v68, v69, v70, v71, v72, v73, v74, v75);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v34, v76);
    goto LABEL_8;
  }

  v78 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_16();
  v79 = v119;
  OUTLINED_FUNCTION_28_16();
LABEL_10:
  OUTLINED_FUNCTION_5_25();
  sub_21688746C(v55 + v115, v49, v80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v122;
  if (!EnumCaseMultiPayload)
  {
    v120 = v78;
    v85 = v27;
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v87 = v34;
    (*(v34 + 32))(v82, v49, v85);
    sub_216887070(v49 + v86, v79);
    sub_216681B04(v79, v33, &qword_27CAB74B8, &unk_217017110);
    v88 = v110;
    if (__swift_getEnumTagSinglePayload(v33, 1, v110) == 1)
    {
      sub_2166997CC(v79, &qword_27CAB74B8, &unk_217017110);
      (*(v34 + 8))(v82, v85);
      sub_2166997CC(v33, &qword_27CAB74B8, &unk_217017110);
      v84 = MEMORY[0x277D84F90];
      v78 = v120;
      goto LABEL_19;
    }

    (*(v109 + 32))(v108, v33, v88);
    v78 = v106;
    sub_21700C6F4();
    v89 = v107;
    if (__swift_getEnumTagSinglePayload(v78, 1, v107) == 1)
    {
      sub_2166997CC(v78, &qword_27CABA780, &qword_217021038);
      OUTLINED_FUNCTION_18_13();
    }

    else
    {
      v92 = v104;
      sub_21700C6D4();
      sub_2168874CC(&qword_27CABA790, MEMORY[0x277D2B310], MEMORY[0x277D2B318]);
      LODWORD(v119) = sub_21700F1F4();
      v93 = v55;
      v94 = *(v105 + 8);
      v95 = v92;
      v54 = v121;
      v94(v95, v89);
      v94(v78, v89);
      v55 = v93;
      v82 = v122;
      OUTLINED_FUNCTION_18_13();
      if ((v119 & 1) == 0)
      {
        (*(v109 + 8))(v108, v88);
        sub_2166997CC(v79, &qword_27CAB74B8, &unk_217017110);
        (*(v34 + 8))(v82, v124);
        goto LABEL_12;
      }
    }

    v125 = v91;
    v96 = v79;
    v97 = v108;
    sub_216884568(v82, v108, v90, v55, 1735290739, 0xE400000000000000, &v125, v54);
    v98 = type metadata accessor for MenuAction(0);
    OUTLINED_FUNCTION_27_13(v54, v99, v100, v98);
    sub_21678C1C4();
    sub_2166997CC(v54, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    v101 = v82;
    v102 = swift_initStackObject();
    v84 = OUTLINED_FUNCTION_25_10(v102, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    (*(v109 + 8))(v97, v88);
    sub_2166997CC(v96, &qword_27CAB74B8, &unk_217017110);
    (*(v87 + 8))(v101, v124);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v49, v83);
LABEL_12:
  v84 = MEMORY[0x277D84F90];
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_217013D90;
  *(v103 + 32) = v78;
  *(v103 + 40) = v84;
  sub_2167A2998(v103);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168868A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for OpenAddToPlaylistAction(0);
  v6[4] = sub_2168874CC(&qword_27CABA7A8, type metadata accessor for OpenAddToPlaylistAction, &unk_217043678);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for OpenAddToPlaylistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216886990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for OpenMoveToFolderAction(0);
  v6[4] = sub_2168874CC(&qword_27CABA7B8, type metadata accessor for OpenMoveToFolderAction, &unk_21703EE28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for OpenMoveToFolderAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216886A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for RemoveFromPlaylistAction(0);
  v6[4] = sub_2168874CC(&qword_27CAB79E8, type metadata accessor for RemoveFromPlaylistAction, &unk_2170285FC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for RemoveFromPlaylistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216886B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for PromptHideFromProfileAction(0);
  v6[4] = sub_2168874CC(&qword_27CABA7C0, type metadata accessor for PromptHideFromProfileAction, &unk_217047754);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for PromptHideFromProfileAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216886C60()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_targetPlaylist, &qword_27CAB74B8, &unk_217017110);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_parentFolder, &qword_27CABA7C8, qword_217021078);

  return v0;
}

uint64_t sub_216886D20()
{
  sub_216886C60();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for PlaylistMenuActionProvider(uint64_t a1)
{
  result = qword_280E342F0;
  if (!qword_280E342F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216886DCC(uint64_t a1)
{
  sub_216886F7C(319, &qword_280E2A1F0, type metadata accessor for ObjectGraph, MEMORY[0x277D21E28]);
  if (v1 <= 0x3F)
  {
    sub_216886F7C(319, &qword_280E2A360, MEMORY[0x277CD8608], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216886F7C(319, &qword_280E2A380, MEMORY[0x277D2B3A0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_216886F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216887070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21688710C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216887160()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ProcessDeepLinkAction(0);
  OUTLINED_FUNCTION_2(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_2170075A4();
  OUTLINED_FUNCTION_2(v11);
  v13 = v12;
  v15 = v14;
  v16 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = *(v0 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2167D3A7C(v0 + v3, v0 + v8, v0 + v16, v17);
}

uint64_t sub_2168872D4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v2 + 16);
  v11 = v2 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return a2(v10, v2 + v5, v11);
}

uint64_t sub_2168873E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21688746C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2168874CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21688756C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v60 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v70 = v3;
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v69 = v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v10;
  OUTLINED_FUNCTION_4_1();
  v61 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v58 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v17 = v16;
  OUTLINED_FUNCTION_4_1();
  v18 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  v57 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v31 = v30;
  v32 = OUTLINED_FUNCTION_4_1();
  v33 = type metadata accessor for FlowAction(v32);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21688D828(44, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v20 + 16))(v23, v26, v18);
    sub_21700D244();
    (*(v20 + 8))(v26, v18);
  }

  v37 = *(type metadata accessor for GoToSongAction(0) + 20);
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v38 + 16))(v17, v60 + v37);
  swift_storeEnumTagMultiPayload();
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v39 = sub_217005EF4();
  OUTLINED_FUNCTION_3_27(v39);
  v40 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_27(v40);
  v41 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_3_27(v41);
  v42 = &v36[v33[10]];
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v43 = v57;
  (*(v28 + 16))(v36, v31, v57);
  sub_2167B9654(v17, &v36[v33[5]], type metadata accessor for FlowAction.Destination);
  v44 = v58;
  sub_217006214();
  v60 = sub_2170061F4();
  v46 = v45;
  (*(v59 + 8))(v44, v61);
  sub_2167B96B4(v17, type metadata accessor for FlowAction.Destination);
  (*(v28 + 8))(v31, v43);
  v47 = &v36[v33[6]];
  *v47 = v60;
  v47[1] = v46;
  v36[v33[7]] = 0;
  sub_2167A66B4(&v72, v42);
  type metadata accessor for ObjectGraph(0);
  v48 = v63;
  v49 = v67;
  sub_21700E094();
  *(&v73 + 1) = v33;
  v74 = sub_216887C68(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
  sub_2167B9654(v36, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v51 = v64;
  v52 = v62;
  v53 = v66;
  (*(v64 + 104))(v62, *MEMORY[0x277D21E18], v66);
  sub_21700D5E4();

  (*(v51 + 8))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v70 + 104))(v69, *MEMORY[0x277D21CA8], v71);
  v54 = sub_21700E1F4();
  (*(v65 + 8))(v48, v49);
  sub_2167B96B4(v36, type metadata accessor for FlowAction);
  return v54;
}

uint64_t sub_216887C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216887CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v85 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v83 = v11;
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v78 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v21 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v80 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  v27 = *(v26 + 36);
  v79 = a3;
  v28 = a3 + v27;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v82 = a1;
  sub_21700CE04();
  v29 = v85;
  v30 = v86;
  (*(v85 + 16))(v9, v86, v5);
  v31 = v81;
  sub_21700D224();
  if (v31)
  {
    (*(v29 + 8))(v30, v5);
    return (*(v83 + 8))(v82, v84);
  }

  v81 = v26;
  v74 = v21;
  v75 = v5;
  v33 = v79;
  (*(v80 + 32))(v79, v25, v21);
  v34 = v82;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v38 = *(v83 + 8);
  v39 = v19;
  v40 = v84;
  v41 = v83 + 8;
  v38(v39, v84);
  v42 = v33;
  v73 = v37;
  if (v37)
  {
    v43 = v40;
    v44 = (v42 + v81[5]);
    *v44 = v35;
    v44[1] = v37;
    v45 = v78;
    sub_21700CE04();
    v46 = sub_21700CDB4();
    v48 = v47;
    v38(v45, v43);
    v49 = v41;
    if (v48)
    {
      v50 = (v42 + v81[6]);
      *v50 = v46;
      v50[1] = v48;
      v51 = v77;
      v52 = v82;
      sub_21700CE04();
      v53 = sub_21700CDB4();
      v55 = v54;
      v38(v51, v43);
      v83 = v49;
      v34 = v52;
      v56 = v42;
      if (v55)
      {
        v57 = 0xD000000000000011;
        v58 = (v56 + v81[7]);
        *v58 = v53;
        v58[1] = v55;
        v59 = v76;
        v77 = 0x8000000217083540;
        sub_21700CE04();
        v78 = sub_21700CDB4();
        v61 = v60;
        v38(v59, v43);
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_1_42();
          v63(v62);
          result = (v38)(v34, v43);
          v64 = (v56 + v81[8]);
          *v64 = v78;
          v64[1] = v61;
          return result;
        }

        v65 = v77;
        v66 = v38;
        LODWORD(v78) = 1;
        v67 = 1;
      }

      else
      {
        v65 = 0xEE00726569666974;
        v66 = v38;
        v67 = 0;
        LODWORD(v78) = 1;
        v57 = 0x6E6564496D657469;
      }
    }

    else
    {
      v65 = 0xE500000000000000;
      v66 = v38;
      v34 = v82;
      LODWORD(v78) = 0;
      v67 = 0;
      v56 = v42;
      v57 = 0x656C746974;
    }
  }

  else
  {
    v65 = 0xE500000000000000;
    v66 = v38;
    LODWORD(v78) = 0;
    v67 = 0;
    v56 = v42;
    v57 = 0x4449707061;
  }

  v68 = sub_21700E2E4();
  sub_216888460(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v69 = v57;
  v69[1] = v65;
  v69[2] = v81;
  (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
  swift_willThrow();
  v70 = OUTLINED_FUNCTION_1_42();
  v71(v70);
  v66(v34, v84);
  result = (*(v80 + 8))(v56, v74);
  if (v73)
  {
  }

  if (v78)
  {
  }

  if (v67)
  {
  }

  return result;
}

uint64_t sub_2168883A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = v4 + *(a4 + 36);
  result = sub_21686CE9C(*v8, *(v8 + 8));
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t sub_2168883F0(uint64_t a1)
{
  result = sub_216888460(qword_280E30098, type metadata accessor for PromptRemoveAppWithAccessAction, &unk_217021174);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216888460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2168884BC()
{
  result = qword_27CABA7D8;
  if (!qword_27CABA7D8)
  {
    type metadata accessor for AgeVerificationOnboardingAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA7D8);
  }

  return result;
}

uint64_t sub_216888514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AgeVerificationManager();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = a2;

  return sub_216ECDBF4(&unk_217021228, v3);
}

uint64_t sub_2168885B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_216888654;

  return sub_216914044(a3);
}

uint64_t sub_216888654()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_216888784, 0, 0);
  }
}

uint64_t sub_216888784()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216888830(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2166DFAC0;

  return sub_2168885B4(a1, v5, v4);
}

uint64_t Bootstrap.__allocating_init(configuration:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_47();
  Bootstrap.init(configuration:)(v1);
  return v0;
}

uint64_t sub_216888918()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2168889A8, v3, v2);
}

uint64_t sub_2168889A8()
{
  OUTLINED_FUNCTION_33();
  if (qword_280E2B918 != -1)
  {
    OUTLINED_FUNCTION_16_22(&qword_280E2B918);
  }

  v1 = byte_280E73A83;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_216888A60;

  return sub_21669A5E0(v1);
}

uint64_t sub_216888A60()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    v9 = v5[4];
    v10 = v5[5];
    v11 = sub_216888BD8;
  }

  else
  {
    v5[8] = v3;
    v9 = v5[4];
    v10 = v5[5];
    v11 = sub_216888B74;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216888B74()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_216888BD8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216888C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  sub_2166975A4(a3, v24 - v11);
  v13 = sub_21700EA74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v12, &unk_27CABFAC0, &qword_21701B9F0);
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
      v19 = sub_21700E5D4() + 32;
      OUTLINED_FUNCTION_65_0();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_47();

      return v16;
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

  OUTLINED_FUNCTION_65_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_216888EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  sub_2166975A4(a3, v24 - v11);
  v13 = sub_21700EA74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v12, &unk_27CABFAC0, &qword_21701B9F0);
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
      v19 = sub_21700E5D4() + 32;
      OUTLINED_FUNCTION_65_0();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8, &qword_21703F520);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_47();

      return v16;
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

  OUTLINED_FUNCTION_65_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8, &qword_21703F520);
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_216889150()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2168891BC()
{
  OUTLINED_FUNCTION_31();
  sub_2166997CC(*(v0 + 2112), &qword_27CAB94C8, &qword_2170506D0);
  OUTLINED_FUNCTION_8_22();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216889264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return MEMORY[0x28218A820]();
}

uint64_t Bootstrap.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  sub_21700DF14();
  sub_21700DF14();

  return sub_21700DF14();
}

uint64_t sub_216889358(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  swift_willThrow();

  sub_2166997CC(v3, &qword_27CAB94C8, &qword_2170506D0);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2168893F8@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + 72);
  if (sub_21678485C())
  {
    v7 = sub_217007C84();
    v8 = sub_21700EDA4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_216679000, v7, v8, "JavaScript disabled.", v9, 2u);
      MEMORY[0x21CEA1440](v9, -1, -1);
    }

    result = 0;
  }

  else
  {
    sub_216685F4C(0, &qword_280E29B78, 0x277CEE3F8);
    sub_21700D4D4();
    v11 = v6;
    sub_21700E094();
    type metadata accessor for SourceBundle();
    v12 = swift_allocObject();
    result = sub_216889830(v11, v13, a3 & 1, v12);
  }

  *a4 = result;
  return result;
}

uint64_t sub_216889548()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168895BC@<X0>(void *a2@<X8>)
{
  result = sub_21678485C();
  if (result)
  {
    v4 = 0;
  }

  else
  {
    type metadata accessor for JSStackManager();
    swift_allocObject();

    v4 = sub_2166BE510(v5);
    type metadata accessor for JSIntentDispatcher();
    sub_21700D4D4();
    sub_21700E094();
    sub_2166C1594(v4);
  }

  *a2 = v4;
  return result;
}

uint64_t Bootstrap.deinit()
{

  v1 = OBJC_IVAR____TtC7MusicUI9Bootstrap_logger;
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Bootstrap.__deallocating_deinit()
{
  Bootstrap.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21688976C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_34_0(v1);

  return sub_216889264();
}

uint64_t sub_216889830(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = a3;
  v29 = a3;
  v8 = type metadata accessor for SourceBundleLoader(0);
  v35 = *(v8 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = (v27 - v11);
  v12 = sub_21700EE74();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700EE44();
  v27[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v16 = sub_21700B5E4();
  MEMORY[0x28223BE20](v16 - 8);
  *(a4 + 24) = a2;
  *(a4 + 32) = a1;
  *(a4 + 48) = v5;
  v17 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v27[1] = "ons/viewablePercentage";
  v27[2] = v17;
  v28 = a2;
  v18 = a1;
  sub_21700B5D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA808, &qword_217021328);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_217013DA0;
  sub_21700EE34();
  v36 = v19;
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810, &unk_217027550);
  sub_2166AF388();
  sub_21700F214();
  (*(v30 + 104))(v14, *MEMORY[0x277D85268], v31);
  *(a4 + 40) = sub_21700EEA4();
  v20 = v18;
  v21 = v32;
  sub_216A73FA4(v20, v28, v29, v32);
  v22 = v33;
  sub_2166B1ED4(v21, v33);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = swift_allocObject();
  sub_2166B1F48(v22, v24 + v23);
  v25 = sub_2166B22C4(&unk_217021330, v24);

  sub_2166B2500(v21);
  *(a4 + 16) = v25;
  return a4;
}

uint64_t sub_216889C24(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_216889D18;

  return v5(v2 + 16);
}

uint64_t sub_216889D18()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_216889E3C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216889F08()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for SourceBundleLoader(0);
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A4;

  return sub_2166B2F08();
}

__n128 ContentIdentifiers.init(cloudUniversalLibraryID:socialProfileID:storeCloudAlbumID:storeCloudID:storePurchasedAdamID:storeAdamID:libraryPersistentID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t ContentDescriptor.init(kind:identifiers:url:)@<X0>(_BYTE *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  memcpy(a4 + 8, a2, 0x69uLL);
  v6 = &a4[*(type metadata accessor for ContentDescriptor(0) + 24)];

  return sub_2166CF4DC(a3, v6);
}

uint64_t sub_21688A060(uint64_t a1, uint64_t a2)
{
  sub_21700E514();
  OUTLINED_FUNCTION_144_0();
  v4 = sub_21700E514();
  if (v3 == v4 && v2 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17(v3, v5, v4);
  }

  return v7 & 1;
}

uint64_t sub_21688A0E0()
{
  OUTLINED_FUNCTION_71_7();
  if (v2)
  {
    OUTLINED_FUNCTION_142_0();
    v5 = v4 | 0x6948737961770000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6853737961776C61;
    }

    if (v3)
    {
      v7 = 0xEA00000000006564;
    }

    else
    {
      v7 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v6 = v1;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_142_0();
    v10 = v9 | 0x6948737961770000;
    if (v8)
    {
      v1 = v10;
    }

    else
    {
      v1 = 0x6853737961776C61;
    }

    if (v8)
    {
      v11 = 0xEA00000000006564;
    }

    else
    {
      v11 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v6 == v1 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_28_17(v6, v0, v1);
  }

  return v13 & 1;
}

uint64_t sub_21688A1CC()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688A26C(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 27503;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v4 = 0x737574617473;
      break;
    case 2:
      v4 = 0x6554737574617473;
      v5 = 29816;
      goto LABEL_5;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 0x726564616568;
      goto LABEL_8;
    case 4:
      v4 = 0x7463657269646572;
      v5 = 25701;
LABEL_5:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v4 = 2036625250;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v6 = 0x63697274656DLL;
LABEL_8:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE200000000000000;
  v8 = 27503;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = 0x737574617473;
      break;
    case 2:
      v8 = 0x6554737574617473;
      v9 = 29816;
      goto LABEL_15;
    case 3:
      v7 = 0xE700000000000000;
      v10 = 0x726564616568;
      goto LABEL_18;
    case 4:
      v8 = 0x7463657269646572;
      v9 = 25701;
LABEL_15:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v7 = 0xE300000000000000;
      v8 = 7107189;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v8 = 2036625250;
      break;
    case 7:
      v7 = 0xE700000000000000;
      v10 = 0x63697274656DLL;
LABEL_18:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v4 == v8 && v3 == v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_28_17(v4, a2, v8);
  }

  return v12 & 1;
}

uint64_t sub_21688A43C(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657669;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688A4D0(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688A558(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x657261757173;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C63726963;
    }

    else
    {
      v4 = 0x6B63697262;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x657261757173;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C63726963;
    }

    else
    {
      v2 = 0x6B63697262;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688A634(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688A6C0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  v5 = a1;
  v6 = 0x6E69776F6C6C6F66;
  switch(v5)
  {
    case 1:
      v6 = 0x6F6C6C6F46746F6ELL;
      v4 = 0xEC000000676E6977;
      break;
    case 2:
      OUTLINED_FUNCTION_136_0();
      break;
    case 3:
      v4 = 0xE700000000000000;
      v6 = 0x64656B636F6C62;
      break;
    case 4:
      v6 = 0x4264656B636F6C62;
      v4 = 0xE900000000000079;
      break;
    case 5:
      v4 = 0xE400000000000000;
      v6 = 1718379891;
      break;
    default:
      break;
  }

  v7 = v2 + 3;
  switch(a2)
  {
    case 1:
      v3 = 0x6F6C6C6F46746F6ELL;
      v7 = 0xEC000000676E6977;
      break;
    case 2:
      v3 = 0x6574736575716572;
      v7 = 0xE900000000000064;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v3 = 0x64656B636F6C62;
      break;
    case 4:
      v3 = 0x4264656B636F6C62;
      v7 = v2 + 21;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v3 = 1718379891;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v6, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_21688A884(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E6D756C6F63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6D756C6F63;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7265736F706D6F63;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_38_8(22);
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7265736F706D6F63;
      break;
    case 2:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_71_7();
      break;
    case 3:
      OUTLINED_FUNCTION_37_12();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688A9A4(char a1, uint64_t a2)
{
  v2 = 1701736302;
  if (a1)
  {
    OUTLINED_FUNCTION_142_0();
    v5 = v4 | 0x74616E7265740000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6D6574737973;
    }

    if (v3)
    {
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1701736302;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    v10 = v9 | 0x74616E7265740000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x6D6574737973;
    }

    if (v8)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_28_17(v6, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_21688AA88(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688AB0C()
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_133();
  v3 = 0x61746544676E6F73;
  v5 = v4;
  v6 = 0x61746544676E6F73;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x8000000217081680;
      v6 = 0xD000000000000018;
      break;
    case 2:
      v7 = 0x8000000217081360;
      v6 = v2 + 16;
      break;
    case 3:
      v7 = 0x8000000217081390;
      v6 = v2 + 20;
      break;
    case 4:
      break;
    default:
      v7 = 0x8000000217080FD0;
      v6 = v2 + 12;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x8000000217081680;
      v3 = 0xD000000000000018;
      break;
    case 2:
      v0 = 0x8000000217081360;
      v3 = v2 + 16;
      break;
    case 3:
      v0 = 0x8000000217081390;
      v3 = v2 + 20;
      break;
    case 4:
      break;
    default:
      v0 = 0x8000000217080FD0;
      v3 = v2 + 12;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_62_3(v6, v1, v3);
  }

  return v9 & 1;
}

uint64_t sub_21688AC68(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688ACF4(char a1, uint64_t a2)
{
  v2 = 2036427888;
  if (a1)
  {
    OUTLINED_FUNCTION_91_7();
    if (v3)
    {
      v5 = 1735289203;
    }

    else
    {
      v5 = 0x656C6666756873;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 2036427888;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
    if (v7)
    {
      v2 = 1735289203;
    }

    else
    {
      v2 = 0x656C6666756873;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_21688AE10(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688AE94(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701602409;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701602409;
  switch(v4)
  {
    case 1:
      v5 = 0x6973616863727570;
      v3 = 0xEA0000000000676ELL;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_38_8(18);
      break;
    case 3:
      v3 = 1818845510;
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6973616863727570;
      v6 = 0xEA0000000000676ELL;
      break;
    case 2:
      OUTLINED_FUNCTION_37_12();
      break;
    case 3:
      v2 = 0x6573616863727570;
      v6 = 0xEE0064656C696146;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688AFDC()
{
  OUTLINED_FUNCTION_130_0();
  v2 = 0x616974696E696E75;
  v4 = v3;
  v5 = 0x616974696E696E75;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x676E697461647075;
      break;
    case 2:
      v5 = 0x6F5464656C696166;
      v6 = 0xEC00000064616F4CLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7964616572;
      break;
    case 4:
      v5 = 0x69446C6169636F73;
      v6 = 0xEE0064656C626173;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v2 = 0x676E697461647075;
      break;
    case 2:
      v2 = 0x6F5464656C696166;
      v0 = 0xEC00000064616F4CLL;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x7964616572;
      break;
    case 4:
      v0 = 1818386803;
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688B168(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "gradientListRowImage";
    }

    else
    {
      v2 = "splitPosterBottomImage";
    }
  }

  else
  {
    v2 = "oLoad";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688B234(char a1, uint64_t a2)
{
  v2 = 0x676E696461656CLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x676E696C69617274;
    }

    else
    {
      v3 = 0x64657265746E6563;
    }

    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x676E696461656CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E696C69617274;
    }

    else
    {
      v2 = 0x64657265746E6563;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17(v3, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_21688B324(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6564696C67;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6564696C67;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(19);
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 3:
      v5 = 0x6269726373627573;
      v3 = 0xEA00000000006465;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_114_3();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x6373627553746F6ELL;
      v6 = 0xED00006465626972;
      break;
    case 3:
      v2 = 0x6269726373627573;
      v6 = 0xEA00000000006465;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_66_8();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688B490(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x64656B6E696C6E75;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656B6E696C6E75;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(23);
      break;
    case 2:
      v5 = 0x656C626967696C65;
      break;
    case 3:
      v3 = 27746;
      OUTLINED_FUNCTION_124_2();
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_114_3();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x656C626967696C65;
      break;
    case 3:
      v2 = 0x6967696C45746F6ELL;
      v6 = 0xEB00000000656C62;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_66_8();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688B5D8()
{
  OUTLINED_FUNCTION_123_1();
  v2 = 0x577373696D736964;
  v4 = v3;
  v5 = 0x577373696D736964;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000021707FAF0;
      v5 = 0xD000000000000019;
      break;
    case 2:
      v6 = 0x800000021707FB10;
      v5 = 0xD000000000000027;
      break;
    case 3:
      v6 = 0x800000021707FB40;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v5 = 0x72656C41776F6873;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000021707FAF0;
      v2 = 0xD000000000000019;
      break;
    case 2:
      v0 = 0x800000021707FB10;
      v2 = 0xD000000000000027;
      break;
    case 3:
      v0 = 0x800000021707FB40;
      v2 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0x72656C41776F6873;
      v0 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3(v5, v1, v2);
  }

  return v8 & 1;
}