uint64_t type metadata accessor for AlbumDetailPageIntent(uint64_t a1)
{
  result = qword_27CAC46A0;
  if (!qword_27CAC46A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B9FC6C(uint64_t a1)
{
  type metadata accessor for ContentDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_216688154();
    if (v2 <= 0x3F)
    {
      sub_2166CE38C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B9FD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v49 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v54 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v59 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v61 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v53 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_21700CE04();
  v27 = a2;
  v28 = *(v9 + 16);
  v58 = v7;
  v28(v14, v27, v7);
  v29 = v57;
  ContentDescriptor.init(deserializing:using:)(v23, v14, v30, v31, v32, v33, v34, v35, v49, v50, SWORD2(v50), SBYTE6(v50), SHIBYTE(v50), v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  if (v29)
  {
    (*(v9 + 8))(v27, v58);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    v37 = v56;
    sub_2168ED900(v26, v56);
    v57 = v27;
    sub_21700CE04();
    v38 = sub_21700CDB4();
    v40 = v39;
    v41 = *(v61 + 8);
    v61 += 8;
    v52 = v41;
    v41(v20, v59);
    v50 = type metadata accessor for AlbumDetailPageIntent(0);
    v51 = v40;
    v42 = (v37 + *(v50 + 20));
    *v42 = v38;
    v42[1] = v40;
    v43 = v53;
    sub_21700CE04();
    v44 = v57;
    v45 = v58;
    v46 = v54;
    v28(v54, v57, v58);
    v47 = v55;
    ReferrerInfo.init(deserializing:using:)(v43, v46, v55);
    (*(v9 + 8))(v44, v45);
    v52(v60, v59);
    v48 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    return sub_21693FB5C(v47, v56 + *(v50 + 24));
  }
}

id sub_216BA01B0(JSContext a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v9 = type metadata accessor for AlbumDetailPageIntent(0);
    v10 = (v1 + *(v9 + 20));
    v11 = v10[1];
    if (v11)
    {
      v15[0] = *v10;
      v15[1] = v11;
      sub_21700DF14();
      v12 = sub_21700DD04();
    }

    else
    {
      v12 = 0;
    }

    sub_2166F1F64(v12, 0xD000000000000017, 0x800000021708A0F0);
    sub_2168CC268(v2 + *(v9 + 24), v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_216BA0544(v6, type metadata accessor for ReferrerInfo);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216BA0420(uint64_t a1)
{
  result = sub_2166CE7D4(&qword_27CAC46B0, type metadata accessor for AlbumDetailPageIntent, &unk_21704DBB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BA04C0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE7D4(&qword_27CAC46B0, type metadata accessor for AlbumDetailPageIntent, &unk_21704DBB4);
  result = sub_2166CE7D4(qword_27CAC46B8, type metadata accessor for AlbumDetailPageIntent, &unk_21704DB98);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216BA0544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216BA05A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BA05F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL sub_216BA0668(void *a1, void *a2)
{
  v3 = a1[11];
  v4 = a1[14];
  v5 = a2[11];
  v6 = a2[14];
  if (v3)
  {
    if (v5)
    {
      v7 = a1[10] == a2[10] && v3 == v5;
      if (v7 || (sub_21700F7D4() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

uint64_t sub_216BA06D4(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (*(v1 + 88))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return MEMORY[0x21CEA0720](v2);
}

uint64_t sub_216BA073C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 112);
  sub_21700F8F4();
  sub_21700F914();
  if (v1)
  {
    sub_21700E614();
  }

  MEMORY[0x21CEA0720](v2);
  return sub_21700F944();
}

uint64_t sub_216BA07C4(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 112);
  sub_21700F8F4();
  sub_21700F914();
  if (v2)
  {
    sub_21700E614();
  }

  MEMORY[0x21CEA0720](v3);
  return sub_21700F944();
}

char *sub_216BA0894()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216BA08EC();
}

char *sub_216BA08EC()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v4 + 280)) = 0;
  type metadata accessor for PlaylistCollaboratorsRefreshProvider();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v5 + 272)) = v6;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216BA0990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4748, &qword_21704DE70);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v21 - v10;
  v13 = v3[2];
  v12 = v3[3];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v13, v12);
  v24 = sub_216BA0CA8();
  sub_2166AF2EC();
  v14 = sub_21700EE84();
  v23 = v14;
  v15 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4750, qword_21704DE78);
  sub_2166D9530(&qword_27CAC4758, &qword_27CAC4750, qword_21704DE78, MEMORY[0x277CBCD90]);
  sub_2166C0E74();
  sub_217007E54();
  sub_2166C10E8(v8);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v22 + 264);
  *(v17 + 24) = v16;
  sub_2166D9530(&qword_27CAC4760, &qword_27CAC4748, &qword_21704DE70, MEMORY[0x277CBCD60]);
  v18 = v21;
  v19 = sub_217007E84();

  (*(v9 + 8))(v11, v18);
  *(v3 + *(*v3 + 280)) = v19;
}

uint64_t sub_216BA0CA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
  sub_2166D9530(&unk_280E484F8, &qword_27CABA610, &qword_217020C90, MEMORY[0x277CBCE20]);
  return sub_217007E24();
}

uint64_t sub_216BA0D3C()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 280);
  if (*(v0 + v2))
  {

    sub_217007D34();
  }

  *(v0 + v2) = 0;
}

uint64_t sub_216BA0DB0()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
}

char *sub_216BA0E00()
{
  v0 = sub_216B127F4();

  return v0;
}

uint64_t sub_216BA0E60()
{
  v0 = sub_216BA0E00();

  return MEMORY[0x2821FE8D8](v0);
}

id sub_216BA0EF8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7MusicUI36PlaylistCollaboratorsRefreshProvider__onRefresh;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
  swift_allocObject();
  *&v0[v2] = sub_217007D84();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for SocialProfilePageIntent(uint64_t a1)
{
  result = qword_27CAC4768;
  if (!qword_27CAC4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216BA1048(uint64_t a1)
{
  type metadata accessor for ContentDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_2166CE38C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216BA111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v46 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v50 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v57 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v49 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_21700CE04();
  v28 = *(v9 + 16);
  v55 = v7;
  v48 = v28;
  v28(v14, a2, v7);
  v29 = v53;
  ContentDescriptor.init(deserializing:using:)(v24, v14, v30, v31, v32, v33, v34, v35, v46, v47, SWORD2(v47), SBYTE6(v47), SHIBYTE(v47), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  if (v29)
  {
    (*(v9 + 8))(a2, v55);
    return (*(v16 + 8))(v54, v57);
  }

  else
  {
    v37 = v52;
    sub_2168ED900(v27, v52);
    v38 = a2;
    v39 = v54;
    sub_21700CE04();
    v40 = sub_21700CD44();
    v41 = *(v16 + 8);
    v53 = v16 + 8;
    v46 = v41;
    v41(v21, v57);
    v47 = type metadata accessor for SocialProfilePageIntent(0);
    *(v37 + *(v47 + 20)) = v40 & 1;
    v42 = v49;
    sub_21700CE04();
    v43 = v50;
    v48(v50, a2, v55);
    v44 = v51;
    ReferrerInfo.init(deserializing:using:)(v42, v43, v51);
    (*(v9 + 8))(v38, v55);
    v46(v39, v57);
    v45 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    return sub_21693FB5C(v44, v37 + *(v47 + 24));
  }
}

id sub_216BA1538(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v9 = type metadata accessor for SocialProfilePageIntent(0);
    v16[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D18, &qword_217045B58);
    v10 = sub_21700E594();
    v16[3] = MEMORY[0x277D837D0];
    v16[0] = v10;
    v16[1] = v11;
    v12 = a1;
    v13 = sub_2166F1E10(v16, a1);
    sub_2166F1F64(v13, 0x646E696B24, 0xE500000000000000);
    ContentDescriptor.makeValue(in:)(v12);
    sub_21700F0B4();
    LOBYTE(v16[0]) = *(v2 + *(v9 + 20));
    sub_21700DD04();
    sub_21700F0B4();
    sub_2168CC268(v2 + *(v9 + 24), v6);
    v14 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v12).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216BA17D0(uint64_t a1)
{
  result = sub_2166CE81C(&qword_27CAC4778, type metadata accessor for SocialProfilePageIntent, &unk_21704DEC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BA1870(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE81C(&qword_27CAC4778, type metadata accessor for SocialProfilePageIntent, &unk_21704DEC4);
  result = sub_2166CE81C(&qword_27CAC4780, type metadata accessor for SocialProfilePageIntent, &unk_21704DEA8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216BA1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  OUTLINED_FUNCTION_2_125();
  sub_21700CE04();
  (*(v9 + 16))(v13, a2, v7);
  v22 = type metadata accessor for PageEventTrigger(0, a3, a4, v21);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_2167C8B48(v20, v13, v22, WitnessTable);
  (*(v9 + 8))(a2, v7);
  (*(v16 + 8))(a1, v14);
  return v24;
}

uint64_t sub_216BA1B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_2_125();
  sub_21700CE04();
  (*(v8 + 16))(v12, a2, v6);
  v20 = a3(v19, v12);
  (*(v8 + 8))(a2, v6);
  (*(v15 + 8))(a1, v13);
  return v20;
}

uint64_t sub_216BA1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216BA1B74(a1, a2, sub_216AC70E4);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_216BA1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_216BA1950(a1, a2, *(a3 + 16), *(a3 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_216BA1D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216BA1B74(a1, a2, sub_216AC7114);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_216BA1DB8(uint64_t a1)
{
  result = sub_216BA1DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216BA1DE0()
{
  result = qword_27CAC4788;
  if (!qword_27CAC4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4788);
  }

  return result;
}

unint64_t sub_216BA1E34(uint64_t a1)
{
  result = sub_216BA1E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216BA1E5C()
{
  result = qword_280E36038[0];
  if (!qword_280E36038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36038);
  }

  return result;
}

uint64_t sub_216BA1EB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BA1EF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

void sub_216BA1F68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  switch(sub_216BA1EF4())
  {
    case 1u:
    case 2u:
    case 3u:
      v8 = sub_21700F7D4();

      if (v8)
      {
        goto LABEL_4;
      }

      if (qword_27CAB5E88 != -1)
      {
        OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
      }

      v25 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v25, qword_27CB22A10);
      v30 = sub_217007C84();
      v26 = sub_21700ED84();
      if (os_log_type_enabled(v30, v26))
      {
        v27 = OUTLINED_FUNCTION_43();
        *v27 = 0;
        _os_log_impl(&dword_216679000, v30, v26, "Attempt to purchase a subscription while another purchase attempt is in flight.", v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = v30;

      break;
    default:

LABEL_4:
      if (qword_27CAB5E88 != -1)
      {
        OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
      }

      v9 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v9, qword_27CB22A10);
      v10 = sub_217007C84();
      v11 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_73(v11))
      {
        *OUTLINED_FUNCTION_43() = 0;
        OUTLINED_FUNCTION_2_6(&dword_216679000, v12, v13, "Attempting to purchase.");
        OUTLINED_FUNCTION_4_102();
      }

      v14 = *&v2[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController];
      *&v2[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController] = a1;

      v15 = a1;
      sub_216BA2460(1);
      v16 = sub_216BA2CA4();
      sub_216685F4C(0, &qword_27CAC4820, 0x277CEE910);
      v17 = *&v2[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_bag];
      swift_unknownObjectRetain();
      v18 = sub_216BA39F8(v16, v17);
      [v18 setDelegate_];
      v19 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
      sub_21700EA34();
      v20 = v18;
      v21 = v2;
      v22 = sub_21700EA24();
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v20;
      v23[5] = v21;
      v23[6] = ObjectType;
      sub_21677BBA0();

      break;
  }
}

unint64_t sub_216BA2304(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216BA2350(char a1)
{
  result = 1701602409;
  switch(a1)
  {
    case 1:
      result = 0x6973616863727570;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6573616863727570;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216BA2404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216BA2304(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216BA2434@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216BA2350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216BA2460(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_217007DF4();
}

char *sub_216BA24CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v42 = a3;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4830, &qword_21704E360);
  OUTLINED_FUNCTION_1();
  v43 = v13;
  v44 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4818, &qword_21704E2E8);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel__state;
  v45 = 0;
  sub_217007DA4();
  (*(v19 + 32))(&v8[v23], v22, v17);
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_cancellables] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController] = 0;
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_buyParams] = a1;
  v24 = a1;
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_bag] = a2;
  v25 = OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_actionDispatcher;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v26 = *(v41 - 8);
  (*(v26 + 16))(&v8[v25], a3, v41);
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_objectGraph] = a4;
  v28 = v38;
  v27 = v39;
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_account] = v38;
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_metricsOverlay] = v27;
  *&v8[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_performanceMetricsOverlay] = v40;
  v29 = ObjectType;
  v46.receiver = v8;
  v46.super_class = ObjectType;
  v40 = v24;
  swift_unknownObjectRetain();

  v30 = v28;
  v31 = objc_msgSendSuper2(&v46, sel_init);
  swift_beginAccess();
  v32 = v31;
  sub_217007DB4();
  swift_endAccess();
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = v29;
  sub_216BA490C();

  v34 = v43;
  sub_217007E84();

  (*(v44 + 8))(v16, v34);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  swift_unknownObjectRelease();

  (*(v26 + 8))(v42, v41);
  return v32;
}

uint64_t sub_216BA28A4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = 0xEE0064656C696146;
  v4 = 0x6573616863727570;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = *a1;
  switch(*a1)
  {
    case 3u:
      goto LABEL_6;
    default:
      v9 = sub_21700F7D4();

      if (v9)
      {
        goto LABEL_7;
      }

      if (v8 > 1)
      {
LABEL_6:
      }

      else
      {
        v10 = sub_21700F7D4();

        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

LABEL_7:
      if (qword_27CAB5E88 != -1)
      {
        swift_once();
      }

      v12 = sub_217007CA4();
      __swift_project_value_buffer(v12, qword_27CB22A10);
      v13 = sub_217007C84();
      v14 = sub_21700EDA4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        v17 = v16;
        switch(v8)
        {
          case 1u:
            v4 = 0x6973616863727570;
            v3 = 0xEA0000000000676ELL;
            break;
          case 2u:
            v4 = 0xD000000000000012;
            v3 = 0x800000021707FF80;
            break;
          case 3u:
            break;
          default:
            v3 = 0xE400000000000000;
            v4 = 1701602409;
            break;
        }

        v18 = sub_2166A85FC(v4, v3, &v23);

        *(v15 + 4) = v18;
        _os_log_impl(&dword_216679000, v13, v14, "Finished attemping subscription purchase flow with state: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x21CEA1440](v17, -1, -1);
        MEMORY[0x21CEA1440](v15, -1, -1);
      }

      type metadata accessor for UnifiedMessages.Coordinator(0);
      type metadata accessor for ObjectGraph(0);
      sub_21700E094();
      v19 = v23;
      v20 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v19;
      sub_21677BBA0();
  }
}

uint64_t sub_216BA2C7C()
{
  *(*(v0 + 16) + 192) = 0;
  OUTLINED_FUNCTION_3();
  return v1();
}

id sub_216BA2CA4()
{
  v1 = v0;
  v2 = sub_217006224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:*(v1 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_buyParams)];
  [v6 setAccount_];
  [v6 setRequiresAccount_];
  v7 = *(v1 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_metricsOverlay);
  if (v7)
  {
    sub_2169FD23C(v7);
    v8 = sub_21700E344();
  }

  else
  {
    v8 = 0;
  }

  [v6 setMetricsOverlay_];

  [v6 setUserInitiated_];
  sub_217006214();
  v9 = sub_2170061F4();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_216BA48A0(v9, v11, v6);
  v12 = *(v1 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_performanceMetricsOverlay);
  if (v12)
  {
    sub_2169FD23C(v12);
    v13 = sub_21700E344();
  }

  else
  {
    v13 = 0;
  }

  [v6 setPerformanceMetricsOverlay_];

  return v6;
}

uint64_t sub_216BA2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[7] = sub_21700EA34();
  v5[8] = sub_21700EA24();
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_216BA2F78;

  return sub_216BA3424();
}

uint64_t sub_216BA2F78(void *a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v4 = sub_21700E9B4();
    v6 = v5;
    v7 = sub_216BA3278;
  }

  else
  {

    v4 = sub_21700E9B4();
    v6 = v8;
    v7 = sub_216BA3100;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_216BA3100()
{
  OUTLINED_FUNCTION_31();

  sub_216BA2460(2);
  v0 = [objc_opt_self() defaultCenter];
  if (qword_280E29C48 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_280E29C50 object:0];

  sub_216BA37C0();
  if (qword_27CAB5E88 != -1)
  {
    OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
  }

  v1 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v1, qword_27CB22A10);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "Subscription Purchase Succeeded.", v4, 2u);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216BA3278()
{
  v16 = v0;

  sub_216BA2460(3);
  sub_216BA37C0();
  if (qword_27CAB5E88 != -1)
  {
    OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
  }

  v1 = *(v0 + 80);
  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_27CB22A10);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_21700F884();
    v12 = sub_2166A85FC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_216679000, v4, v5, "Subscription Purchase failed with error %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_4_102();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t sub_216BA3444()
{
  OUTLINED_FUNCTION_31();
  v1 = [*(v0 + 152) performPurchase];
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_216BA3578;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4828, &qword_21704E310);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2166A7F20;
  *(v0 + 104) = &block_descriptor_26;
  *(v0 + 112) = v2;
  [v1 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_216BA3578()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_216BA3758;
  }

  else
  {
    v2 = sub_216BA3688;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216BA3688()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 144);

  if ([v1 error])
  {
    swift_willThrow();

    OUTLINED_FUNCTION_3();

    return v2();
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(v1);
  }
}

uint64_t sub_216BA3758()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216BA37C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - v2;
  v4 = type metadata accessor for DismissModalPresentationAction(0);
  v9[3] = v4;
  v9[4] = sub_216BA481C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_21700D234();
  v6 = boxed_opaque_existential_1 + *(v4 + 20);
  *v6 = 0;
  v6[8] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D5E4();

  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216BA3948()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22A10);
  __swift_project_value_buffer(v0, qword_27CB22A10);
  return sub_217007C94();
}

id sub_216BA39F8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurchase:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_216BA3B9C(uint64_t a1, void *a2, void (*a3)(void, id))
{
  v5 = *(v3 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController);
  if (v5)
  {
    swift_getObjectType();
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    v7 = a2;
    v8 = v5;

    v9 = OUTLINED_FUNCTION_3_117();

    sub_216E1ACBC(v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = sub_21700E4D4();
    v16 = sub_21700E4D4();
    v17 = OUTLINED_FUNCTION_11_66(v16);

    a3(0, v17);
  }
}

void sub_216BA3CD4()
{
  OUTLINED_FUNCTION_2_1();
  if (qword_27CAB5E88 != -1)
  {
    OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_27CB22A10);
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_73(v5))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_2_6(&dword_216679000, v6, v7, "Performing authenticate task...");
    OUTLINED_FUNCTION_4_102();
  }

  sub_216685F4C(0, &qword_27CAC4810, 0x277CEE878);
  v8 = sub_216BA4100(v2, v1);
  v9 = [v8 performAuthentication];
  OUTLINED_FUNCTION_1_159();
  v10[1] = 1107296256;
  v10[2] = sub_216BA4A28;
  v10[3] = &block_descriptor_18;
  _Block_copy(v10);
  OUTLINED_FUNCTION_10_69();

  [v1 addFinishBlock_];
  _Block_release(v0);
}

void sub_216BA3E68(uint64_t a1, void *a2, void (*a3)(void, id))
{
  v5 = *(v3 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController);
  if (v5)
  {
    swift_getObjectType();
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    v7 = a2;
    v8 = v5;

    v9 = OUTLINED_FUNCTION_3_117();

    sub_216E1AD14(v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = sub_21700E4D4();
    v16 = sub_21700E4D4();
    v17 = OUTLINED_FUNCTION_11_66(v16);

    a3(0, v17);
  }
}

void sub_216BA3FA0()
{
  OUTLINED_FUNCTION_2_1();
  if (qword_27CAB5E88 != -1)
  {
    OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_27CB22A10);
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_73(v5))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_2_6(&dword_216679000, v6, v7, "Presenting alert dialog task...");
    OUTLINED_FUNCTION_4_102();
  }

  sub_216685F4C(0, &qword_27CAC4808, 0x277CEE868);
  v8 = sub_216BA4100(v2, v1);
  v9 = [v8 present];
  OUTLINED_FUNCTION_1_159();
  v10[1] = 1107296256;
  v10[2] = sub_216BA4A28;
  v10[3] = &block_descriptor_12;
  _Block_copy(v10);
  OUTLINED_FUNCTION_10_69();

  [v1 addFinishBlock_];
  _Block_release(v0);
}

id sub_216BA4100(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 presentingViewController:a2];

  return v4;
}

void sub_216BA4190(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v6 = *&v4[OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_presentingViewController];
  if (v6)
  {
    swift_getObjectType();
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    v8 = a2;
    v9 = v4;
    v10 = v6;

    sub_216E1B010();
  }

  else
  {
    v11 = sub_21700E4D4();
    v12 = sub_21700E4D4();
    v13 = AMSError();

    a3(0, v13);
  }
}

void sub_216BA430C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  if (qword_27CAB5E88 != -1)
  {
    OUTLINED_FUNCTION_0_183(&qword_27CAB5E88);
  }

  v8 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v8, qword_27CB22A10);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_43();
    *v11 = 0;
    _os_log_impl(&dword_216679000, v9, v10, "Presenting engagement...", v11, 2u);
    OUTLINED_FUNCTION_6();
  }

  sub_216685F4C(0, &qword_27CAC4800, 0x277CEE8D8);
  v12 = *(a2 + OBJC_IVAR____TtC7MusicUI29SubscriptionPurchaseViewModel_bag);
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = sub_216BA44B4(v13, v12, a3);
  v15 = [v14 presentEngagement];
  OUTLINED_FUNCTION_1_159();
  v16[1] = 1107296256;
  v16[2] = sub_216BA4A28;
  v16[3] = &block_descriptor_28;
  _Block_copy(v16);
  OUTLINED_FUNCTION_10_69();

  [a3 addFinishBlock_];
  _Block_release(a4);
}

id sub_216BA44B4(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_216BA4554(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v12 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v12;
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a8();
}

_BYTE *storeEnumTagSinglePayload for SubscriptionPurchaseViewModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216BA46F4()
{
  result = qword_27CAC47F0;
  if (!qword_27CAC47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC47F0);
  }

  return result;
}

uint64_t sub_216BA4764()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return sub_216BA2EC8(v5, v6, v7, v2, v3);
}

unint64_t sub_216BA481C()
{
  result = qword_280E30D30[0];
  if (!qword_280E30D30[0])
  {
    type metadata accessor for DismissModalPresentationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30D30);
  }

  return result;
}

void sub_216BA48A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setLogUUID_];
}

unint64_t sub_216BA490C()
{
  result = qword_27CAC4838;
  if (!qword_27CAC4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4830, &qword_21704E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4838);
  }

  return result;
}

uint64_t sub_216BA4970()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216BA2C5C(v4, v5, v6, v2);
}

void sub_216BA4A74(uint64_t a1)
{
  sub_216BA4B6C(319);
  if (v1 <= 0x3F)
  {
    sub_216BA8D68(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2169109EC(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216BA4B6C(uint64_t a1)
{
  if (!qword_280E458A0)
  {
    v4[0] = type metadata accessor for SquareLockup(255);
    v4[1] = sub_2166D7B10(&qword_280E445F0, type metadata accessor for SquareLockup, &unk_21704EAD0);
    v4[2] = &off_28293B1C0;
    v4[3] = sub_2166D7B10(&qword_280E445D0, type metadata accessor for SquareLockup, &unk_21702C038);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E458A0);
    }
  }
}

uint64_t sub_216BA4C64@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  v2 = type metadata accessor for SquareLockupView(0);
  v165 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v166 = v3;
  v168 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v159 = v6;
  v172 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v174 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v158 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v152 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v171 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v153 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v135 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v135 - v23;
  v170 = type metadata accessor for SquareLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v155 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  v154 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  *&v151 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v146 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v141 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  *&v140 = v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v145 = v38;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v39);
  v41 = (&v135 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = &v135 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v135 - v46;
  v48 = type metadata accessor for SquareLockupContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  v51 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC48C0, &qword_21704E480);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  v160 = v53;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC48C8, &qword_21704E488);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  v162 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC48D0, &qword_21704E490);
  OUTLINED_FUNCTION_1();
  v163 = v57;
  v164 = v56;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  v161 = v59;
  v167 = v1;
  v60 = *v1;

  sub_216DE9428();
  v61 = v170;
  v157 = v24;
  sub_2166A6EA4();
  v62 = v47;
  v63 = v61;
  sub_216BA9048(v62, type metadata accessor for SquareLockup);
  OUTLINED_FUNCTION_13_53();
  sub_2166A6EA4();
  sub_216BA9048(v44, type metadata accessor for SquareLockup);
  v139 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v139) == 1)
  {
    sub_216697664(v20, &qword_27CAB6A00, &unk_217016B60);
    v64 = 23;
  }

  else
  {
    v64 = *v20;
    OUTLINED_FUNCTION_3_118();
    sub_216BA9048(v20, v65);
  }

  LOBYTE(__dst[0]) = v64;
  v66 = sub_216E41068(__dst, 0);
  v149 = v67;
  v150 = v66;
  sub_216DE9428();
  v68 = *v41;
  sub_21700DF14();
  OUTLINED_FUNCTION_0_184();
  sub_216BA9048(v41, v69);
  if (v68)
  {
    v70 = sub_216B80C28(v68);
    v147 = v71;
    v148 = v70;
  }

  else
  {
    v147 = 0;
    v148 = 0;
  }

  v72 = v145;
  OUTLINED_FUNCTION_13_53();
  v73 = *(v72 + 8);
  sub_21700DF14();
  OUTLINED_FUNCTION_0_184();
  sub_216BA9048(v72, v74);
  if (v73)
  {
    v75 = sub_216B80C28(v73);
    v144 = v76;
    v145 = v75;
  }

  else
  {
    v144 = 0;
    v145 = 0;
  }

  v77 = v140;
  OUTLINED_FUNCTION_13_53();
  v78 = *(v77 + 24);
  v142 = *(v77 + 16);
  v143 = v78;
  sub_21700DF14();
  sub_216BA9048(v77, type metadata accessor for SquareLockup);
  v79 = v141;
  sub_216DE9428();
  v81 = *(v79 + 40);
  v80 = *(v79 + 48);
  v82 = *(v79 + 56);
  sub_21700DF14();
  sub_216BA9048(v79, type metadata accessor for SquareLockup);
  if (v80)
  {
    v83 = v171;
    sub_21693D94C(v81, v80, v82);

    v84 = 0;
  }

  else
  {
    v84 = 1;
    v83 = v171;
  }

  v85 = sub_217005C64();
  __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
  v86 = v146;
  OUTLINED_FUNCTION_13_53();
  LODWORD(v141) = *(v86 + 32);
  OUTLINED_FUNCTION_0_184();
  sub_216BA9048(v86, v87);
  v88 = v152;
  sub_216CCB7C4();
  LODWORD(v146) = sub_216EB939C();
  v89 = *(v174 + 1);
  v174 = (v174 + 8);
  v89(v88, v172);
  sub_2167B5AAC();
  v90 = v151;
  sub_216DE9428();
  v91 = v153;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v91, 1, v139) == 1)
  {
    OUTLINED_FUNCTION_0_184();
    sub_216BA9048(v90, v92);
    sub_216697664(v91, &qword_27CAB6A00, &unk_217016B60);
  }

  else
  {
    memcpy(__dst, (v91 + 8), 0x69uLL);
    sub_21686BC90(__dst, &v175);
    OUTLINED_FUNCTION_3_118();
    sub_216BA9048(v91, v93);
    v94 = *(v90 + *(v63 + 56));
    OUTLINED_FUNCTION_0_184();
    sub_216BA9048(v90, v95);
    if (v94 >= 1)
    {
      v140 = __dst[1];
      v151 = __dst[0];
      v137 = __dst[3];
      v138 = __dst[2];
      v135 = __dst[5];
      v136 = __dst[4];
      v152 = BYTE8(__dst[6]);
      v153 = *&__dst[6];
      v139 = v94;
      goto LABEL_19;
    }

    sub_21686BCEC(__dst);
  }

  v152 = 0;
  v153 = 0;
  v139 = 0;
  v151 = xmmword_217016ED0;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
LABEL_19:
  v96 = v154;
  OUTLINED_FUNCTION_13_53();
  v97 = *(v96 + 57);
  sub_216BA9048(v96, type metadata accessor for SquareLockup);
  sub_216788294(v60 + 16, __dst);
  v98 = v158;
  sub_216CCB7C4();
  v99 = v159;
  sub_216A8EA78(v159);
  v100 = v98;
  v101 = v172;
  v89(v100, v172);
  v102 = sub_217005EF4();
  v103 = __swift_getEnumTagSinglePayload(v99, 1, v102) != 1;
  sub_216697664(v99, &qword_27CABA820, &unk_217018CE0);
  v104 = v155;
  sub_216DE9428();
  v105 = *(v104 + *(v170 + 52));
  sub_216BA9048(v104, type metadata accessor for SquareLockup);
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  *(v51 + 2) = v60;
  sub_2167A4788();
  v106 = &v51[v48[7]];
  v107 = v149;
  *v106 = v150;
  *(v106 + 1) = v107;
  v108 = &v51[v48[8]];
  v109 = v147;
  *v108 = v148;
  *(v108 + 1) = v109;
  v110 = &v51[v48[9]];
  v111 = v144;
  *v110 = v145;
  *(v110 + 1) = v111;
  v112 = &v51[v48[10]];
  v113 = v143;
  *v112 = v142;
  *(v112 + 1) = v113;
  sub_2167A4788();
  v51[v48[12]] = v141 & 1;
  v51[v48[13]] = v146 & 1;
  v114 = &v51[v48[14]];
  v115 = __dst[8];
  *v114 = __dst[7];
  *(v114 + 1) = v115;
  *(v114 + 4) = v177;
  v116 = &v51[v48[15]];
  v117 = v140;
  *v116 = v151;
  *(v116 + 1) = v117;
  v118 = v137;
  *(v116 + 2) = v138;
  *(v116 + 3) = v118;
  v119 = v135;
  *(v116 + 4) = v136;
  *(v116 + 5) = v119;
  v120 = v152;
  *(v116 + 12) = v153;
  *(v116 + 13) = v120;
  *(v116 + 14) = v139;
  v51[v48[16]] = v97;
  v121 = &v51[v48[17]];
  *(v121 + 4) = *&__dst[2];
  v122 = __dst[1];
  *v121 = __dst[0];
  *(v121 + 1) = v122;
  v51[v48[18]] = v103;
  v51[v48[19]] = v105;
  *(&__dst[1] + 1) = v101;
  *&__dst[2] = sub_2166D7B10(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(__dst);
  sub_216CCB7C4();
  v123 = (v160 + *(v156 + 36));
  sub_2167B7D58(__dst, (v123 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D7B10(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v123 = sub_217008CF4();
  v123[1] = v124;
  sub_216BA88E0();
  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  v125 = v162;
  v126 = v162 + *(v173 + 36);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v128 = sub_217008B34();
  __swift_project_value_buffer(v128, qword_280E73A88);
  sub_216BA8888();
  *(v126 + *(v127 + 36)) = 0;
  v129 = sub_2167A4788();
  v174 = &v135;
  MEMORY[0x28223BE20](v129);
  MEMORY[0x28223BE20](v167);
  sub_216BA8888();
  swift_allocObject();
  sub_216BA88E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216BA8994();
  sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  sub_2166D7B10(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v130 = v161;
  sub_21700A394();

  sub_216697664(v125, &qword_27CAC48C8, &qword_21704E488);
  KeyPath = swift_getKeyPath();
  v132 = v169;
  (*(v163 + 32))(v169, v130, v164);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC48E8, &unk_21704E4F0);
  v134 = v132 + *(result + 36);
  *v134 = KeyPath;
  *(v134 + 8) = 0;
  return result;
}

uint64_t sub_216BA5ADC@<X0>(uint64_t (**a1)()@<X8>)
{
  v30 = a1;
  v29 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MenuConfiguration(0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = sub_2170067A4();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_216CCB7C4();
  sub_216DE9428();
  sub_216DE9428();
  sub_216BA9048(v5, type metadata accessor for SquareLockup);
  swift_storeEnumTagMultiPayload();
  sub_2168A91B0();
  sub_216BA9048(v2, type metadata accessor for MenuContext);
  sub_216BA9048(v8, type metadata accessor for SquareLockup);
  v17 = *(v12 + 32);
  v18 = v25;
  v19 = v16;
  v20 = v26;
  v17(v25, v19, v26);
  sub_216BA88E0();
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v17((v22 + v21), v18, v20);
  result = sub_216BA88E0();
  v24 = v30;
  *v30 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216BA5E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2170067A4();
  v16 = sub_2166D7B10(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_216CCB7C4();
  sub_216DE9428();
  sub_2166A6EA4();
  sub_216BA9048(v4, type metadata accessor for SquareLockup);
  LOBYTE(v4) = v13 != 0;
  sub_216697664(v12, &qword_27CAB6DB0, &qword_217016C00);
  v5 = type metadata accessor for ContextMenuPreview(0);
  v6 = v5[7];
  v7 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[8];
  v9 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
  sub_2167B8EF0(&v14, a1 + v5[6]);
  *(a1 + v5[5]) = v4;
  v10 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_216BA6028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  sub_2166A6EA4();
  sub_216BA9048(v12, type metadata accessor for SquareLockup);
  sub_216CCB7C4();
  type metadata accessor for SquareLockupView(0);
  v13 = sub_216C0C534(v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(v29, v9, v28, v5, v2, v22, v23, v24, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  sub_216697664(v2, &qword_27CAB6DE8, "dP\r");
  (*(v3 + 8))(v5, v27);
  sub_216697664(v28, &qword_27CAB7310, &unk_2170170F0);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(v29, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_216BA631C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SquareLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

uint64_t sub_216BA63F8(uint64_t a1)
{
  result = sub_2166D7B10(qword_280E40720, type metadata accessor for SquareLockupView, &unk_21704E3A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BA6450()
{
  v0 = type metadata accessor for SquareLockupContent(0);
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4900, &qword_21704E568);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - v3);
  sub_2166A6EA4();
  v5 = v2[13];
  v6 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v4 + v5, 1, 1, v6);
  sub_216BA8888();
  v7 = swift_allocObject();
  sub_216BA88E0();
  v8 = v2[14];
  *(v4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = v4 + v2[15];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v4[5] = sub_216BA8FDC;
  v4[6] = v7;
  v4[7] = 0;
  v4[8] = 0;
  sub_216E31798();
  return sub_216697664(v4, &qword_27CAC4900, &qword_21704E568);
}

uint64_t sub_216BA668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_2170090F4();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4908, &qword_21704E570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  *v16 = sub_2170093C4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4910, &qword_21704E578);
  sub_216BA6A6C(a1, &v16[*(v17 + 44)]);
  sub_216CCB7C4();
  sub_216DE9428();
  v18 = v9[57];
  sub_216BA9048(v9, type metadata accessor for SquareLockup);
  if (v18 != 1)
  {
    sub_21700F7D4();
  }

  sub_216E30AB8();
  (*(v11 + 8))(v13, v10);
  sub_216697664(v16, &qword_27CAC4908, &qword_21704E570);
  v19 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v19, 0);
    (*(v4 + 8))(v6, v27);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4918, &qword_21704E580) + 36));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v21[2] = v30;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4920, &qword_21704E5B8);
  v25 = a2 + *(result + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_216BA6A6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4928, &qword_21704E5C0);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = (&v73 - v6);
  v89 = sub_21700D864();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700D8E4();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_217008B44();
  MEMORY[0x28223BE20](v78);
  v11 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_2170090F4();
  v12 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4930, &qword_21704E5C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v73 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4938, &qword_21704E5D0);
  MEMORY[0x28223BE20](v80);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4940, &qword_21704E5D8);
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v79 = &v73 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4948, &qword_21704E5E0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v73 - v24;
  v25 = type metadata accessor for SquareLockupContent(0);
  sub_2166A6EA4();
  v26 = (a1 + *(v25 + 28));
  v27 = *v26;
  v28 = v26[1];
  v29 = *a1;
  LODWORD(v26) = *(a1 + 8);
  v95 = a1;
  v76 = v28;
  v77 = v27;
  if (v26 == 1)
  {
    v30 = a1;
    sub_2167B8890(v27, v28);
    v31 = v29;
    v105 = v29;
    v32 = v29;
  }

  else
  {
    sub_2167B8890(v27, v28);
    sub_2167B88A8(v29, 0);
    sub_21700ED94();
    v74 = v11;
    v33 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v29, 0);
    v34 = *(v12 + 8);
    v73 = v25;
    v35 = v75;
    v34(v14, v75);
    v32 = __dst[0];

    sub_21700ED94();
    v36 = sub_217009C34();
    sub_217007BC4();

    v11 = v74;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v29, 0);
    v37 = v35;
    v25 = v73;
    v34(v14, v37);
    v30 = v95;
    v31 = v105;
  }

  v38 = type metadata accessor for ArtworkView(0);
  v39 = &v17[*(v38 + 20)];
  v40 = v76;
  *v39 = v77;
  *(v39 + 1) = v40;
  v41 = &v17[*(v38 + 24)];
  *v41 = v32;
  *(v41 + 1) = v31;
  v42 = *(v78 + 20);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_217009294();
  (*(*(v44 - 8) + 104))(v11 + v42, v43, v44);
  __asm { FMOV            V0.2D, #7.0 }

  *v11 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E301C4();
  sub_216BA9048(v11, MEMORY[0x277CDFC08]);
  sub_216697664(v17, &qword_27CAC4930, &qword_21704E5C8);
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4950, &unk_21704E5E8) + 36)] = xmmword_217026E20;
  v50 = *(v25 + 60);
  memcpy(__dst, (v30 + v50), sizeof(__dst));
  v51 = v80;
  memcpy(&v19[*(v80 + 36)], (v30 + v50), 0x78uLL);
  sub_2166A6EA4();
  v52 = sub_216BA90A0();
  v53 = v79;
  sub_21700A6E4();
  sub_216697664(v19, &qword_27CAC4938, &qword_21704E5D0);
  v54 = v87;
  v55 = v84;
  v56 = v89;
  (*(v87 + 104))(v84, *MEMORY[0x277D22060], v89);
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  v57 = v85;
  sub_21700D874();
  sub_216697664(v97, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(&v98, &unk_27CABF7A0, &unk_217014D20);
  (*(v54 + 8))(v55, v56);
  *&v98 = v51;
  *(&v98 + 1) = MEMORY[0x277D84030];
  *&v99 = v52;
  *(&v99 + 1) = MEMORY[0x277D84038];
  swift_getOpaqueTypeConformance2();
  v58 = v96;
  v59 = v82;
  sub_21700A204();
  (*(v90 + 8))(v57, v91);
  (*(v81 + 8))(v53, v59);
  sub_21700B3B4();
  sub_2170083C4();
  v90 = v99;
  v91 = v98;
  v89 = v100;
  v87 = v101;
  v97[0] = 1;
  v104 = BYTE8(v98);
  v103 = BYTE8(v99);
  v60 = sub_2170093C4();
  v61 = v92;
  *v92 = v60;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49B0, &qword_21704E618);
  sub_216BA74F0(v95, (v61 + *(v62 + 44)));
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v83;
  v66 = v88;
  v64(v83, v58, v88);
  LOBYTE(v58) = v97[0];
  LODWORD(v85) = v104;
  LODWORD(v95) = v103;
  v67 = v94;
  sub_21674568C();
  v68 = v93;
  v64(v93, v65, v66);
  v69 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49B8, &qword_21704E620) + 48)];
  *v69 = 0;
  v69[8] = v58;
  *(v69 + 2) = v91;
  v69[24] = v85;
  *(v69 + 4) = v90;
  v69[40] = v95;
  v70 = v87;
  *(v69 + 6) = v89;
  *(v69 + 7) = v70;
  sub_21674568C();
  sub_216697664(v61, &qword_27CAC4928, &qword_21704E5C0);
  v71 = *(v63 + 8);
  v71(v96, v66);
  sub_216697664(v67, &qword_27CAC4928, &qword_21704E5C0);
  return (v71)(v65, v66);
}

uint64_t sub_216BA74F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v126 = sub_21700D864();
  v133 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_21700D8E4();
  v131 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49C0, &qword_21704E628);
  v130 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v107 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49C8, &qword_21704E630);
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v127 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v99 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = &v99 - v13;
  MEMORY[0x28223BE20](v14);
  v132 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49D0, &qword_21704E638);
  v124 = *(v16 - 8);
  v125 = v16;
  MEMORY[0x28223BE20](v16);
  v120 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v129 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v99 - v21;
  v23 = type metadata accessor for SquareLockupContent(0);
  sub_2166A6EA4();
  v24 = sub_21693D75C(v22);
  v116 = v25;
  v117 = v24;
  v114 = v27;
  v115 = v26;
  if (qword_280E2C370 != -1)
  {
    swift_once();
  }

  v28 = qword_280E2C378;
  *&v113 = swift_getKeyPath();
  *(&v113 + 1) = v28;

  *(&v112 + 1) = sub_21700AD14();
  *&v112 = swift_getKeyPath();
  v29 = (a1 + v23[8]);
  v30 = *(a1 + v23[12]);
  v32 = *v29;
  v31 = v29[1];
  v33 = *(a1 + v23[13]);
  v34 = *(a1 + v23[18]);
  sub_21700DF14();
  v128 = a1;
  v35 = sub_216BA81BC();
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D7B10(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v37 = sub_217008CF4();
  v111 = v23;
  if (!v31)
  {

    v37 = 0;
    v105 = 0;
    v41 = 0;
LABEL_11:
    v103 = 0;
    v104 = 0;
    v40 = 0;
    v43 = 0;
    goto LABEL_14;
  }

  v38 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v38 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    v37 = 0;
    v105 = 0;
    v41 = 0;
    v31 = 0;
    goto LABEL_11;
  }

  LODWORD(v102) = v34;
  v39 = v36;
  v40 = v35;
  v41 = v32;
  if (v30)
  {
    v42 = sub_217009154();
  }

  else
  {
    v42 = sub_2170091A4();
  }

  v145[0] = v37;
  v145[1] = v39;
  v145[2] = v32;
  v145[3] = v31;
  LOBYTE(v145[4]) = v30;
  BYTE1(v145[4]) = v33;
  *(&v145[4] + 2) = v148;
  HIWORD(v145[4]) = v149;
  v145[5] = v40;
  LOBYTE(v145[6]) = v102;
  *(&v145[6] + 1) = *v147;
  HIDWORD(v145[6]) = *&v147[3];
  v145[7] = v42;
  v103 = v145[6];
  v104 = v145[4];
  __src[0] = v37;
  __src[1] = v39;
  v105 = v39;
  __src[2] = v32;
  __src[3] = v31;
  LOBYTE(__src[4]) = v30;
  BYTE1(__src[4]) = v33;
  HIWORD(__src[4]) = v149;
  *(&__src[4] + 2) = v148;
  __src[5] = v40;
  LOBYTE(__src[6]) = v102;
  HIDWORD(__src[6]) = *&v147[3];
  *(&__src[6] + 1) = *v147;
  v43 = v42;
  __src[7] = v42;
  sub_21680DAEC(v145, v144);
  sub_21680DB48(__src);
LABEL_14:
  v44 = v128;
  v45 = sub_216BA81BC();
  KeyPath = swift_getKeyPath();
  v47 = sub_21700AD14();
  v48 = swift_getKeyPath();
  __src[0] = v37;
  __src[1] = v105;
  __src[2] = v41;
  __src[3] = v31;
  __src[4] = v104;
  __src[5] = v40;
  __src[6] = v103;
  __src[7] = v43;
  __src[8] = KeyPath;
  __src[9] = v45;
  __src[10] = v48;
  __src[11] = v47;
  v49 = (v44 + v111[9]);
  v51 = *v49;
  v50 = v49[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49D8, &qword_21704E6A0);
  sub_216BA95B8();
  sub_21700ABA4();
  memcpy(v145, __src, sizeof(v145));
  sub_216697664(v145, &qword_27CAC49D8, &qword_21704E6A0);
  if (v50)
  {
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  sub_21700DF14();
  v53 = sub_216BA8318();
  v54 = swift_getKeyPath();
  v55 = sub_21700AD34();
  v56 = swift_getKeyPath();
  *&v140 = v51;
  *(&v140 + 1) = v50;
  *&v141 = 0;
  *(&v141 + 1) = v52;
  *&v142 = v54;
  *(&v142 + 1) = v53;
  *&v143 = v56;
  *(&v143 + 1) = v55;
  sub_216BA8474();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0, &unk_217039CA0);
  v58 = sub_21686BF40();
  v59 = v106;
  sub_21700ABA4();
  v144[0] = v140;
  v144[1] = v141;
  v144[2] = v142;
  v144[3] = v143;
  sub_216697664(v144, &qword_27CABA1C0, &unk_217039CA0);
  v60 = *MEMORY[0x277D22070];
  v61 = v133;
  v62 = v121;
  v63 = v126;
  v102 = *(v133 + 104);
  v103 = v133 + 104;
  v102(v121, v60, v126);
  v140 = 0u;
  v141 = 0u;
  v136 = 0u;
  v137 = 0u;
  v64 = v119;
  sub_21700D874();
  sub_216697664(&v136, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(&v140, &unk_27CABF7A0, &unk_217014D20);
  v65 = *(v61 + 8);
  v133 = v61 + 8;
  v101 = v65;
  v65(v62, v63);
  v104 = v58;
  v105 = v57;
  *&v140 = v57;
  *(&v140 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  v66 = v118;
  sub_21700A204();
  v67 = *(v131 + 8);
  v131 += 8;
  v100 = v67;
  v67(v64, v123);
  v68 = v59;
  v69 = *(v130 + 8);
  v130 += 8;
  v69(v68, v66);
  v70 = (v128 + v111[10]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    v73 = MEMORY[0x277D84F90];
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  sub_21700DF14();
  v74 = sub_216BA8584();
  v75 = swift_getKeyPath();
  v76 = sub_21700AD34();
  v77 = swift_getKeyPath();
  *&v140 = v72;
  *(&v140 + 1) = v71;
  *&v141 = 0;
  *(&v141 + 1) = v73;
  *&v142 = v75;
  *(&v142 + 1) = v74;
  *&v143 = v77;
  *(&v143 + 1) = v76;
  v78 = v107;
  sub_21700ABA4();
  v135[0] = v140;
  v135[1] = v141;
  v135[2] = v142;
  v135[3] = v143;
  sub_216697664(v135, &qword_27CABA1C0, &unk_217039CA0);
  v79 = v121;
  v80 = v126;
  v102(v121, *MEMORY[0x277D22048], v126);
  v140 = 0u;
  v141 = 0u;
  v136 = 0u;
  v137 = 0u;
  v81 = v119;
  sub_21700D874();
  sub_216697664(&v136, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(&v140, &unk_27CABF7A0, &unk_217014D20);
  v101(v79, v80);
  v82 = v122;
  v83 = v118;
  sub_21700A204();
  v100(v81, v123);
  v69(v78, v83);
  v84 = *(v124 + 16);
  v85 = v120;
  v84(v120, v129, v125);
  v86 = v108;
  v87 = v109;
  v88 = *(v108 + 16);
  v88(v134, v132, v109);
  v88(v127, v82, v87);
  *&v136 = v117;
  *(&v136 + 1) = v116;
  *&v137 = v115;
  *(&v137 + 1) = v114;
  v138 = v113;
  v139 = v112;
  v89 = v137;
  v90 = v110;
  *v110 = v136;
  *(v90 + 1) = v89;
  v91 = v139;
  *(v90 + 2) = v138;
  *(v90 + 3) = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A08, &qword_21704E6C0);
  v93 = v85;
  v94 = v125;
  v84(&v90[v92[12]], v93, v125);
  v88(&v90[v92[16]], v134, v87);
  v95 = v127;
  v88(&v90[v92[20]], v127, v87);
  sub_2166A6EA4();
  v96 = *(v86 + 8);
  v96(v122, v87);
  v96(v132, v87);
  v97 = *(v124 + 8);
  v97(v129, v94);
  v96(v95, v87);
  v96(v134, v87);
  v97(v120, v94);
  *&v140 = v117;
  *(&v140 + 1) = v116;
  *&v141 = v115;
  *(&v141 + 1) = v114;
  v142 = v113;
  v143 = v112;
  return sub_216697664(&v140, &qword_27CABA1C0, &unk_217039CA0);
}

uint64_t sub_216BA81BC()
{
  v0 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5E98 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_280E2C270 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8318()
{
  v0 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5EA0 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_280E2C448 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8474()
{
  v1 = type metadata accessor for SquareLockupContent(0);
  if (*(v0 + v1[16]))
  {
    goto LABEL_2;
  }

  v2 = sub_21700F7D4();

  if (v2)
  {
    goto LABEL_4;
  }

  if (*(v0 + v1[19]))
  {
LABEL_2:
  }

  else
  {
    v8 = sub_21700F7D4();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_4:
  v3 = (v0 + v1[10]);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v5)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_216BA8584()
{
  v0 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5EA8 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_27CAB5E90 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8718(uint64_t a1)
{
  result = sub_217009E94();
  qword_280E2C450 = result;
  return result;
}

uint64_t sub_216BA8738(uint64_t a1)
{
  result = sub_217009E94();
  qword_27CAC48A0 = result;
  return result;
}

uint64_t sub_216BA878C(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC48B0 = result;
  return result;
}

uint64_t sub_216BA87AC(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC48B8 = result;
  return result;
}

uint64_t sub_216BA8800(uint64_t a1, void (*a2)(uint64_t), void (*a3)(void), uint64_t *a4)
{
  a2(a1);
  a3();
  v6 = sub_217009E34();

  *a4 = v6;
  return result;
}

uint64_t sub_216BA8888()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BA88E0()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BA8938()
{
  v0 = type metadata accessor for SquareLockupView(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_216BA6028();
}

unint64_t sub_216BA8994()
{
  result = qword_27CAC48D8;
  if (!qword_27CAC48D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C8, &qword_21704E488);
    sub_216BA8A4C();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48D8);
  }

  return result;
}

unint64_t sub_216BA8A4C()
{
  result = qword_27CAC48E0;
  if (!qword_27CAC48E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C0, &qword_21704E480);
    sub_2166D7B10(qword_280E3D070, type metadata accessor for SquareLockupContent, &unk_21704E518);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48E0);
  }

  return result;
}

void sub_216BA8B30(uint64_t a1)
{
  sub_216BA8DCC(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_216BA4B6C(319);
    if (v2 <= 0x3F)
    {
      sub_216BA8D68(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216BA8DCC(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_216BA8D68(319, &qword_27CAC2530, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_216BA8DCC(319, &qword_27CAC48F0, &_s30SocialProfileRequestDescriptorVN, MEMORY[0x277D83D88]);
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

void sub_216BA8D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216BA8DCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_216BA8E1C()
{
  result = qword_27CAC48F8;
  if (!qword_27CAC48F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48E8, &unk_21704E4F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C8, &qword_21704E488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216BA8994();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D7B10(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48F8);
  }

  return result;
}

uint64_t sub_216BA8FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SquareLockupContent(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216BA668C(v5, a1);
}

uint64_t sub_216BA9048(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216BA90A0()
{
  result = qword_27CAC4958;
  if (!qword_27CAC4958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4938, &qword_21704E5D0);
    sub_216BA912C();
    sub_216BA9564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4958);
  }

  return result;
}

unint64_t sub_216BA912C()
{
  result = qword_27CAC4960;
  if (!qword_27CAC4960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4950, &unk_21704E5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4968, &qword_21704E5F8);
    sub_216BA91F4();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4960);
  }

  return result;
}

unint64_t sub_216BA91F4()
{
  result = qword_27CAC4970;
  if (!qword_27CAC4970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4968, &qword_21704E5F8);
    sub_216BA92AC();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4970);
  }

  return result;
}

unint64_t sub_216BA92AC()
{
  result = qword_27CAC4978;
  if (!qword_27CAC4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4980, &qword_21704E600);
    sub_216BA9364();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4978);
  }

  return result;
}

unint64_t sub_216BA9364()
{
  result = qword_27CAC4988;
  if (!qword_27CAC4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4990, &qword_21704E608);
    sub_216BA93F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4988);
  }

  return result;
}

unint64_t sub_216BA93F0()
{
  result = qword_27CAC4998;
  if (!qword_27CAC4998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49A0, &qword_21704E610);
    sub_216BA94A8();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4998);
  }

  return result;
}

unint64_t sub_216BA94A8()
{
  result = qword_27CAC49A8;
  if (!qword_27CAC49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4930, &qword_21704E5C8);
    sub_2166D7B10(&qword_27CAB7430, type metadata accessor for ArtworkView, "Un\x1Bk");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49A8);
  }

  return result;
}

unint64_t sub_216BA9564()
{
  result = qword_280E34F10[0];
  if (!qword_280E34F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E34F10);
  }

  return result;
}

unint64_t sub_216BA95B8()
{
  result = qword_27CAC49E0;
  if (!qword_27CAC49E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49D8, &qword_21704E6A0);
    sub_216BA9670();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49E0);
  }

  return result;
}

unint64_t sub_216BA9670()
{
  result = qword_27CAC49E8;
  if (!qword_27CAC49E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49F0, &qword_21704E6A8);
    sub_216BA9728();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49E8);
  }

  return result;
}

unint64_t sub_216BA9728()
{
  result = qword_27CAC49F8;
  if (!qword_27CAC49F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4A00, &unk_21704E6B0);
    sub_21686C64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49F8);
  }

  return result;
}

uint64_t sub_216BA97AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB938, &qword_217024738);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB948, &qword_217024748);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A20, &qword_21704E6C8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = *(a1 + 56);
  if (v20 >= 2)
  {
    v39 = v17;
    v40 = v12;
    v41 = v10;
    v42 = v6;
    v43 = v4;
    v44 = a2;
    v23 = *(a1 + 48);
    v24 = qword_27CAB5EB8;
    sub_21700DF14();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_21700A094();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2167EF724(v23, v20);
    KeyPath = swift_getKeyPath();
    v33 = sub_21700ACF4();
    v34 = swift_getKeyPath();
    v53 = v29 & 1;
    *&v49 = v25;
    *(&v49 + 1) = v27;
    LOBYTE(v50) = v29 & 1;
    *(&v50 + 1) = v31;
    *&v51 = KeyPath;
    BYTE8(v51) = 0;
    *&v52 = v34;
    *(&v52 + 1) = v33;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB958, qword_217024758);
    sub_2168D0FE4();
    sub_21700A2A4();
    sub_216697664(&v49, &qword_27CABB958, qword_217024758);
    v35 = v43;
    sub_217006484();
    (*(v42 + 8))(v9, v35);
    sub_217009C74();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    (*(v40 + 32))(v19, v15, v41);
    OUTLINED_FUNCTION_1_99(&v19[*(v39 + 36)]);
    sub_217009CE4();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    v36 = v44;
    sub_2167457E8(v19, v44);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A28, &qword_21704E6D0);
    OUTLINED_FUNCTION_1_99(v36 + *(v37 + 36));
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A28, &qword_21704E6D0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
  }
}

uint64_t sub_216BA9BE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216697664(v2, &qword_27CAB81D0, &unk_21701AFF0);
  qword_27CAC4A18 = v4;
  return result;
}

uint64_t sub_216BA9D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A78, &qword_21704EB80);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = (v16 - v15);
  v18 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = *(v13 + 16);
  v23(v17, v5, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
    sub_216AF64B8(v12, v22);
    if (sub_2168ED65C())
    {
      a4[3] = v18;
      a4[4] = sub_2166D7B58(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_216BAC12C(v22, boxed_opaque_existential_1, type metadata accessor for FlowAction);
      v25 = *(v18 + 40);
      sub_216697664(boxed_opaque_existential_1 + v25, &qword_27CABF7B0, &qword_217016E20);
      sub_216788294(v29, boxed_opaque_existential_1 + v25);
      return OUTLINED_FUNCTION_4_103();
    }

    OUTLINED_FUNCTION_4_103();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
    sub_216697664(v12, &qword_27CAC4A78, &qword_21704EB80);
  }

  a4[3] = a2;
  a4[4] = a3;
  v27 = __swift_allocate_boxed_opaque_existential_1(a4);
  return v23(v27, v5, a2);
}

void sub_216BAA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  if ((v27 & 1) == 0)
  {
    sub_217007C94();
    v35 = sub_217007C84();
    v36 = sub_21700ED84();
    if (os_log_type_enabled(v35, v36))
    {
      v45 = v23;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      a10 = v38;
      *v37 = 136315394;
      v39 = sub_21700F784();
      v41 = sub_2166A85FC(v39, v40, &a10);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(v25, v45);
      v42 = sub_21700E594();
      v44 = sub_2166A85FC(v42, v43, &a10);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_216679000, v35, v36, "Unrecognized value '%s' for type '%s'", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v38, -1, -1);
      MEMORY[0x21CEA1440](v37, -1, -1);
    }

    (*(v30 + 8))(v34, v28);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216BAA278(char a1)
{
  if (a1)
  {
    return 0x6F697463656C6573;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216BAA2C0(char a1)
{
  if (a1)
  {
    return 0x6465646E61707865;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216BAA304(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_216BAA340(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_216BAA404(char a1)
{
  if (a1)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1954047348;
  }
}

void sub_216BAA430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22_3();
  a23 = v25;
  a24 = v26;
  a10 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AA8, &qword_21704EB90);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_216BAC2DC();
  sub_21700F974();
  a14 = 0;
  sub_21700F724();
  if (!v24)
  {
    a13 = a10;
    a12 = 1;
    sub_216BAC384();
    sub_21700F704();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216BAA59C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A90, &qword_21704EB88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216BAC2DC();
  sub_21700F964();
  if (!v1)
  {
    v4 = sub_21700F664();
    sub_216BAC330();
    sub_21700F644();
    v6 = OUTLINED_FUNCTION_13_54();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_216BAA764@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290FDB8);
  *a2 = result;
  return result;
}

uint64_t sub_216BAA79C()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_21691A2FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290FE08);
  *a2 = result;
  return result;
}

uint64_t sub_216BAA820()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA278(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290FE58);
  *a2 = result;
  return result;
}

uint64_t sub_216BAA8A4()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA2C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA8F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290FEA8);
  *a2 = result;
  return result;
}

uint64_t sub_216BAA928()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA304(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216BAA340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216BAAA30(uint64_t a1)
{
  v2 = sub_216BAC2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216BAAA6C(uint64_t a1)
{
  v2 = sub_216BAC2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216BAAAA8(uint64_t a1@<X8>)
{
  sub_216E29494();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_216BAAAD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216BAA59C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_216BAAB2C()
{
  result = qword_27CAC4A30;
  if (!qword_27CAC4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A30);
  }

  return result;
}

unint64_t sub_216BAAB84()
{
  result = qword_27CAC4A38;
  if (!qword_27CAC4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A38);
  }

  return result;
}

unint64_t sub_216BAABDC()
{
  result = qword_27CAC4A40;
  if (!qword_27CAC4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A40);
  }

  return result;
}

void sub_216BAAC30()
{
  OUTLINED_FUNCTION_22_3();
  v96 = v0;
  v115 = v1;
  v3 = v2;
  v107 = v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v104 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = v94 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v94 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v24 = *(v104 + 16);
  v106 = v5;
  v102 = v104 + 16;
  v101 = v24;
  (v24)(v10, v115, v5);
  v105 = type metadata accessor for SquareLockup(0);
  v100 = v105[12];
  v95 = v23;
  v99 = v10;
  sub_21700D734();
  v25 = 25705;
  v26 = 0xE200000000000000;
  v27 = v3;
  sub_21700CE04();
  *&v98 = sub_21700CDB4();
  v29 = v28;
  v32 = *(v13 + 8);
  v31 = v13 + 8;
  v30 = v32;
  v32(v20, v11);
  v103 = v32;
  if (!v29)
  {
    goto LABEL_4;
  }

  v33 = v29;
  v26 = 0x8000000217081C10;
  v25 = 0xD000000000000014;
  v34 = *(&v98 + 1);
  sub_21700CE04();
  v94[0] = sub_21700CD24();
  v36 = v35;
  v30(v34, v11);
  if (v36)
  {

LABEL_4:
    v37 = sub_21700E2E4();
    sub_2166D7B58(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = v25;
    v38[1] = v26;
    v38[2] = v105;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_21_44();
    v40(v39);
    v103(v27, v11);
    sub_216697664(v107 + v100, &qword_27CAB6D58, &unk_217014E30);
    goto LABEL_14;
  }

  v97 = v11;
  v41 = v105;
  *&v112 = v98;
  *(&v112 + 1) = v33;
  *(&v98 + 1) = v33;
  sub_21700DF14();
  v42 = v107;
  sub_21700F364();
  *(v42 + v41[14]) = v94[0];
  type metadata accessor for ContentDescriptor(0);
  v43 = v95;
  sub_21700CE04();
  OUTLINED_FUNCTION_17_50();
  v44();
  sub_2166D7B58(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
  sub_21700D734();
  sub_21700CE04();
  OUTLINED_FUNCTION_39();
  sub_21700D2E4();
  v100 = v31;
  v103(v43, v97);
  v45 = v110;
  if (v110)
  {
    v46 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    v112 = v98;
    sub_21700F364();
    sub_216BA9D20(v108, v45, v46, &v112);
    sub_216788110(v108);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
  }

  else
  {

    sub_216697664(v109, &qword_27CAB6DB0, &qword_217016C00);
    v112 = 0u;
    v113 = 0u;
    v114 = 0;
  }

  v47 = v42 + v105[18];
  v48 = v113;
  *v47 = v112;
  *(v47 + 1) = v48;
  *(v47 + 4) = v114;
  type metadata accessor for Artwork(0);
  sub_21700CE04();
  v49 = OUTLINED_FUNCTION_108();
  v50 = v101;
  v101(v49);
  sub_2166D7B58(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
  OUTLINED_FUNCTION_25_7();
  sub_21700D734();
  OUTLINED_FUNCTION_25_37(0x6E694C656C746974, 0xEA0000000000736BLL);
  v51 = OUTLINED_FUNCTION_108();
  v50(v51);
  OUTLINED_FUNCTION_25_7();
  sub_216AC6598();
  *v42 = v52;
  sub_21700CE04();
  v53 = OUTLINED_FUNCTION_108();
  v50(v53);
  OUTLINED_FUNCTION_25_7();
  sub_216AC6598();
  v42[1] = v54;
  sub_21700CE04();
  OUTLINED_FUNCTION_39();
  sub_21700D2E4();
  v55 = v97;
  v56 = v103;
  v103(v43, v97);
  sub_21700CE04();
  v57 = sub_21700CD44();
  v58 = v55;
  v59 = v27;
  v60 = v107;
  v56(v43, v58);
  *(v60 + 32) = v57;
  sub_21700CE04();
  OUTLINED_FUNCTION_17_50();
  v61();
  sub_216BAC18C();
  OUTLINED_FUNCTION_25_7();
  sub_21700D734();
  v62 = *(&v112 + 1);
  if (*(&v112 + 1))
  {
    v63 = v113;
    v60[5] = v112;
    v60[6] = v62;
    *(v60 + 56) = v63;
  }

  else
  {
    v64 = v94[1];
    sub_21700CE04();
    v65 = sub_21700CDB4();
    v67 = v66;
    v103(v64, v97);
    if (v67)
    {
      v60[5] = v65;
      v60[6] = v67;
      *(v60 + 56) = 2;
    }

    else
    {
      v60[5] = 0;
      v60[6] = 0;
      *(v60 + 56) = 0;
    }
  }

  sub_21700CE04();
  sub_216BAC1E0();
  OUTLINED_FUNCTION_10_70();
  v68 = v97;
  v69 = v103;
  v103(v43, v97);
  *(v60 + 57) = v112;
  sub_21700CE04();
  sub_216BAC234();
  OUTLINED_FUNCTION_10_70();
  v70 = OUTLINED_FUNCTION_39();
  v69(v70);
  *(v60 + 58) = v112;
  sub_21700CE04();
  v71 = sub_21700CD44();
  v72 = OUTLINED_FUNCTION_108();
  v69(v72);
  v73 = v105;
  *(v60 + v105[16]) = v71 & 1;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25_37(v74 + 5, v75 | 0x8000000000000000);
  sub_21700CDB4();
  v76 = OUTLINED_FUNCTION_8_80();
  v69(v76);
  v77 = (v60 + v73[23]);
  *v77 = v71;
  v77[1] = v43;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25_37(v78 + 1, v79 | 0x8000000000000000);
  sub_21700CDB4();
  v80 = OUTLINED_FUNCTION_8_80();
  v69(v80);
  v81 = v69;
  v60[8] = v71;
  v60[9] = v43;
  OUTLINED_FUNCTION_11_0();
  v82 = v94[3];
  sub_21700CE04();
  v83 = sub_21700CD44();
  v81(v82, v68);
  v84 = v105;
  *(v60 + v105[15]) = v83 & 1;
  sub_21700CE04();
  sub_21700CDB4();
  v85 = OUTLINED_FUNCTION_8_80();
  (v81)(v85);
  v86 = (v60 + v84[21]);
  *v86 = v83;
  v86[1] = v43;
  sub_21700CE04();
  sub_216BAC288();
  OUTLINED_FUNCTION_10_70();
  v87 = OUTLINED_FUNCTION_39();
  (v81)(v87);
  *(v60 + v84[13]) = v112;
  OUTLINED_FUNCTION_25_37(0x7972616974726574, 0xEC00000074786554);
  v88 = sub_21700CDB4();
  v90 = v89;
  v91 = OUTLINED_FUNCTION_21_44();
  v92(v91);
  v81(v59, v68);
  v93 = OUTLINED_FUNCTION_39();
  (v81)(v93);
  v60[2] = v88;
  v60[3] = v90;
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_216BAB95C()
{
  result = qword_27CAC4A48;
  if (!qword_27CAC4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A48);
  }

  return result;
}

unint64_t sub_216BAC038()
{
  result = qword_27CAC4A50;
  if (!qword_27CAC4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A50);
  }

  return result;
}

uint64_t sub_216BAC0D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAC12C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_216BAC18C()
{
  result = qword_27CAC4A80;
  if (!qword_27CAC4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A80);
  }

  return result;
}

unint64_t sub_216BAC1E0()
{
  result = qword_280E445F8;
  if (!qword_280E445F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E445F8);
  }

  return result;
}

unint64_t sub_216BAC234()
{
  result = qword_280E44608;
  if (!qword_280E44608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44608);
  }

  return result;
}

unint64_t sub_216BAC288()
{
  result = qword_27CAC4A88;
  if (!qword_27CAC4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A88);
  }

  return result;
}

unint64_t sub_216BAC2DC()
{
  result = qword_27CAC4A98;
  if (!qword_27CAC4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A98);
  }

  return result;
}

unint64_t sub_216BAC330()
{
  result = qword_27CAC4AA0;
  if (!qword_27CAC4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AA0);
  }

  return result;
}

unint64_t sub_216BAC384()
{
  result = qword_27CAC4AB0;
  if (!qword_27CAC4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AB0);
  }

  return result;
}

uint64_t sub_216BAC3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BAC43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_216BAC4A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216BAC580()
{
  result = qword_27CAC4AB8;
  if (!qword_27CAC4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AB8);
  }

  return result;
}

unint64_t sub_216BAC5D8()
{
  result = qword_27CAC4AC0;
  if (!qword_27CAC4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AC0);
  }

  return result;
}

unint64_t sub_216BAC630()
{
  result = qword_27CAC4AC8;
  if (!qword_27CAC4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AC8);
  }

  return result;
}

unint64_t sub_216BAC688()
{
  result = qword_27CAC4AD0;
  if (!qword_27CAC4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AD0);
  }

  return result;
}

unint64_t sub_216BAC6DC()
{
  result = qword_27CAC4AD8;
  if (!qword_27CAC4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AD8);
  }

  return result;
}

uint64_t type metadata accessor for MenuActionType(uint64_t a1)
{
  result = qword_280E43220;
  if (!qword_280E43220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216BAC7AC(uint64_t a1)
{
  type metadata accessor for ShareableMusicItem(319);
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E452C8, &type metadata for ContentKind);
    if (v2 <= 0x3F)
    {
      sub_217006AC4();
      if (v3 <= 0x3F)
      {
        sub_21700C924();
        if (v4 <= 0x3F)
        {
          sub_216BAC8A8(319);
          if (v5 <= 0x3F)
          {
            sub_217006C84();
            if (v6 <= 0x3F)
            {
              sub_216BAC920();
              if (v7 <= 0x3F)
              {
                sub_216BAC978();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216BAC8A8(uint64_t a1)
{
  if (!qword_280E2A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CABD310, &qword_21702A090);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A088);
    }
  }
}

void sub_216BAC920()
{
  if (!qword_280E2A078)
  {
    sub_216688560(0, &qword_280E2A070, MEMORY[0x277D837D0]);
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A078);
    }
  }
}

uint64_t sub_216BAC978()
{
  result = qword_280E29DE8;
  if (!qword_280E29DE8)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_280E29DE8);
  }

  return result;
}

uint64_t sub_216BAC9A0()
{
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  if (v3 == 12)
  {
    LOWORD(v3) = 350;
  }

  else if (v3 != 9)
  {
    sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
    return 0;
  }

  return sub_216983738(v3);
}

uint64_t sub_216BACA44()
{
  v2 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v48 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v49 = sub_217006AC4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_53();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  sub_21691775C(v0, v24 - v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v50 = *v25;
      sub_216BAE400(&v50);
      goto LABEL_53;
    case 2u:
      v33 = v9;
      OUTLINED_FUNCTION_18_11();
      v34 = v49;
      v35(v20, v25, v49);
      (*(v33 + 16))(v17, v20, v34);
      v36 = (*(v33 + 88))(v17, v34);
      if (v36 == *MEMORY[0x277D2A750])
      {
        v37 = 184;
LABEL_75:
        sub_216983738(v37);
        OUTLINED_FUNCTION_1_118();
        goto LABEL_76;
      }

      if (v36 == *MEMORY[0x277D2A758])
      {
        v37 = 185;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A740])
      {
        v37 = 188;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A760])
      {
        v37 = 186;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A748])
      {
        v37 = 187;
        goto LABEL_75;
      }

      v21 = 0;
LABEL_76:
      v46 = *(v33 + 8);
      v46(v17, v34);
      v46(v20, v34);
      return v21;
    case 3u:
      v28 = v9;
      OUTLINED_FUNCTION_18_11();
      v29 = v49;
      v30(v1, v25, v49);
      (*(v28 + 16))(v13, v1, v29);
      v31 = (*(v28 + 88))(v13, v29);
      if (v31 == *MEMORY[0x277D2A750])
      {
        v32 = 357;
LABEL_71:
        sub_216983738(v32);
        OUTLINED_FUNCTION_1_118();
        goto LABEL_72;
      }

      if (v31 == *MEMORY[0x277D2A758])
      {
        v32 = 358;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A740])
      {
        v32 = 361;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A760])
      {
        v32 = 359;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A748])
      {
        v32 = 360;
        goto LABEL_71;
      }

      v21 = 0;
LABEL_72:
      v45 = *(v28 + 8);
      v45(v13, v29);
      v45(v1, v29);
      return v21;
    case 4u:
      v39 = v48;
      OUTLINED_FUNCTION_18_11();
      v40(v7, v25, v2);
      v41 = sub_21700C6C4();
      if (v41 == 2 || (v41 & 1) == 0)
      {
        v42 = 337;
      }

      else
      {
        v42 = 149;
      }

      sub_216983738(v42);
      OUTLINED_FUNCTION_1_118();
      (*(v39 + 8))(v7, v2);
      return v21;
    case 5u:
      v21 = *v25;

      return v21;
    case 6u:
      sub_216983738(190);
      OUTLINED_FUNCTION_1_118();
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v38);
      return v21;
    case 7u:
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v43);
      v27 = 133;
      goto LABEL_52;
    case 8u:
      if (*v25 != 1)
      {
        goto LABEL_39;
      }

      v27 = 234;
      goto LABEL_52;
    case 9u:
      v27 = 8;
      goto LABEL_52;
    case 0xAu:
      v27 = 91;
      goto LABEL_52;
    case 0xBu:
      v27 = 6;
      goto LABEL_52;
    case 0xCu:
      v27 = 351;
      goto LABEL_52;
    case 0xDu:
      goto LABEL_3;
    case 0xEu:
      v27 = 189;
      goto LABEL_52;
    case 0xFu:
      v27 = 318;
      goto LABEL_52;
    case 0x10u:
      v27 = 4;
      goto LABEL_52;
    case 0x11u:
      v27 = 159;
      goto LABEL_52;
    case 0x12u:
      v27 = 167;
      goto LABEL_52;
    case 0x13u:
      v27 = 97;
      goto LABEL_52;
    case 0x14u:
      v27 = 140;
      goto LABEL_52;
    case 0x15u:
      v27 = 289;
      goto LABEL_52;
    case 0x16u:
      v27 = 122;
      goto LABEL_52;
    case 0x17u:
      v27 = 44;
      goto LABEL_52;
    case 0x18u:
      v27 = 355;
      goto LABEL_52;
    case 0x19u:
      v27 = 39;
      goto LABEL_52;
    case 0x1Au:
      v27 = 237;
      goto LABEL_52;
    case 0x1Bu:
      v27 = 348;
      goto LABEL_52;
    case 0x1Cu:
      v27 = 194;
      goto LABEL_52;
    case 0x1Du:
      v27 = 11;
      goto LABEL_52;
    case 0x1Eu:
      v27 = 192;
      goto LABEL_52;
    case 0x1Fu:
      v27 = 66;
      goto LABEL_52;
    case 0x20u:
      v27 = 134;
      goto LABEL_52;
    case 0x21u:
      v27 = 135;
      goto LABEL_52;
    case 0x22u:
      v27 = 370;
      goto LABEL_52;
    case 0x23u:
      v27 = 369;
      goto LABEL_52;
    case 0x24u:
      v27 = 182;
      goto LABEL_52;
    case 0x25u:
      v27 = 340;
      goto LABEL_52;
    case 0x26u:
      v27 = 147;
      goto LABEL_52;
    case 0x27u:
      v27 = 352;
      goto LABEL_52;
    case 0x28u:
      v27 = 356;
      goto LABEL_52;
    case 0x29u:
      v27 = 269;
      goto LABEL_52;
    case 0x2Au:
LABEL_39:
      v27 = 71;
      goto LABEL_52;
    case 0x2Bu:
      v27 = 235;
      goto LABEL_52;
    case 0x2Cu:
      v27 = 262;
      goto LABEL_52;
    default:
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v26);
LABEL_3:
      v27 = 296;
LABEL_52:
      sub_216983738(v27);
LABEL_53:
      OUTLINED_FUNCTION_1_118();
      return v21;
  }
}

uint64_t sub_216BAD07C()
{
  v1 = v0;
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v41 = v3;
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v43 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_217006C84();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  sub_21691775C(v1, v25 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_18_11();
      v28(v22, v26, v13);
      (*(v15 + 16))(v19, v22, v13);
      v29 = (*(v15 + 88))(v19, v13);
      if (v29 == *MEMORY[0x277D2A8E8])
      {
        v30 = OUTLINED_FUNCTION_13_55();
        v31(v30);
        v32 = v43;
        (*(v43 + 32))(v12, v19, v7);
        v33 = sub_21700C184();
        (*(v32 + 8))(v12, v7);
LABEL_9:
        (*(v15 + 8))(v22, v13);
        return v33;
      }

      if (v29 == *MEMORY[0x277D2A8F0])
      {
        v34 = OUTLINED_FUNCTION_13_55();
        v35(v34);
        v37 = v41;
        v36 = v42;
        (*(v41 + 32))(v6, v19, v42);
        v33 = sub_21700C804();
        (*(v37 + 8))(v6, v36);
        goto LABEL_9;
      }

      v38 = *(v15 + 8);
      v38(v22, v13);
      v38(v19, v13);
    }

    else
    {
      sub_216BAE5AC(v26, type metadata accessor for MenuActionType);
    }

    return 0;
  }

  return *v26;
}

uint64_t sub_216BAD428(unsigned __int8 *a1, uint64_t *a2)
{
  v134 = a1;
  v135 = a2;
  sub_217006C84();
  OUTLINED_FUNCTION_1();
  v130 = v4;
  v131 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v125 = v6 - v5;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v128 = v8;
  v129 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v124 = v10 - v9;
  OUTLINED_FUNCTION_4_1();
  sub_217006AC4();
  OUTLINED_FUNCTION_1();
  v132 = v12;
  v133 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v123 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v122 = &v121 - v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v18 = type metadata accessor for ShareableMusicItem(v17);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_7();
  v121 = v20 - v19;
  v21 = OUTLINED_FUNCTION_4_1();
  v22 = type metadata accessor for MenuActionType(v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v126 = (v24 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = (&v121 - v27);
  MEMORY[0x28223BE20](v29);
  v127 = &v121 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v121 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = &v121 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v121 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v121 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15_53();
  MEMORY[0x28223BE20](v44);
  v46 = &v121 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AE0, &qword_21704EE78);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v121 - v48;
  v51 = &v121 + *(v50 + 56) - v48;
  v52 = OUTLINED_FUNCTION_4_104();
  sub_21691775C(v52, v53);
  v134 = v51;
  sub_21691775C(v135, v51);
  v135 = v49;
  v54 = v22;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v80, v2);
      v81 = *v2;
      v82 = v134;
      OUTLINED_FUNCTION_227();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_84;
      }

      v83 = *v82;
      if (v81 == 23)
      {
        if (v83 == 23)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v137 = v81;
        if (v83 != 23)
        {
          v136 = v83;
          if (static ContentKind.== infix(_:_:)(&v137, &v136))
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_98;
    case 2u:
      v63 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v63, v42);
      v64 = v134;
      OUTLINED_FUNCTION_227();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v66 = v132;
        v65 = v133;
        v67 = v122;
        (*(v132 + 32))(v122, v64, v133);
        v54 = sub_217006AA4();
        v68 = *(v66 + 8);
        v68(v67, v65);
        v68(v42, v65);
        goto LABEL_56;
      }

      v106 = *(v132 + 8);
      v107 = v42;
      goto LABEL_79;
    case 3u:
      v69 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v69, v39);
      if (OUTLINED_FUNCTION_8_81() == 3)
      {
        v58 = v133;
        v70 = OUTLINED_FUNCTION_10_71();
        v71(v70);
        sub_217006AA4();
        v72 = OUTLINED_FUNCTION_6_80();
        (v42)(v72);
        v62 = v39;
        goto LABEL_55;
      }

      v106 = *(v132 + 8);
      v107 = v39;
LABEL_79:
      v108 = v133;
      goto LABEL_83;
    case 4u:
      v57 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v57, v36);
      if (OUTLINED_FUNCTION_8_81() == 4)
      {
        v58 = v129;
        v59 = OUTLINED_FUNCTION_10_71();
        v60(v59);
        sub_21700C7B4();
        v61 = OUTLINED_FUNCTION_6_80();
        (v42)(v61);
        v62 = v36;
        goto LABEL_55;
      }

      (*(v128 + 8))(v36, v129);
      goto LABEL_84;
    case 5u:
      sub_21691775C(v135, v33);
      v85 = *v33;
      v84 = v33[1];
      v86 = v33[2];
      if (OUTLINED_FUNCTION_8_81() != 5)
      {

        v33 = v135;
        goto LABEL_84;
      }

      v87 = *v42;
      v88 = *(v42 + 1);
      v89 = *(v42 + 2);
      if (v85 == v87 && v84 == v88)
      {
      }

      else
      {
        v91 = sub_21700F7D4();

        if ((v91 & 1) == 0)
        {

          OUTLINED_FUNCTION_0_186();
          v93 = v135;
          goto LABEL_105;
        }
      }

      if (v86)
      {
        if (v89)
        {
          sub_21693D428();
          v118 = v86;
          v119 = sub_21700F104();

          v120 = v135;
          if ((v119 & 1) == 0)
          {
            goto LABEL_104;
          }

LABEL_100:
          OUTLINED_FUNCTION_0_186();
          v105 = v120;
          goto LABEL_75;
        }

        v89 = v86;
        v120 = v135;
      }

      else
      {
        v120 = v135;
        if (!v89)
        {
          goto LABEL_100;
        }
      }

LABEL_104:
      OUTLINED_FUNCTION_0_186();
      v93 = v120;
LABEL_105:
      sub_216BAE5AC(v93, v92);
LABEL_85:
      v54 = 0;
      return v54 & 1;
    case 6u:
      v94 = OUTLINED_FUNCTION_9_74();
      v95 = v127;
      sub_21691775C(v94, v127);
      if (OUTLINED_FUNCTION_8_81() != 6)
      {
        v108 = v131;
        v106 = *(v130 + 8);
        v107 = v95;
LABEL_83:
        v106(v107, v108);
        goto LABEL_84;
      }

      v58 = v131;
      v96 = OUTLINED_FUNCTION_10_71();
      v97(v96);
      sub_217006C74();
      v98 = OUTLINED_FUNCTION_6_80();
      (v42)(v98);
      v62 = v95;
LABEL_55:
      (v42)(v62, v58);
      goto LABEL_56;
    case 7u:
      v73 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v73, v28);
      v75 = *v28;
      v74 = v28[1];
      v76 = v134;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        goto LABEL_84;
      }

      v77 = *(v76 + 1);
      if (v74)
      {
        if (v77)
        {
          if (v75 == *v76 && v74 == v77)
          {
          }

          else
          {
            v79 = sub_21700F7D4();

            if ((v79 & 1) == 0)
            {
              goto LABEL_98;
            }
          }

LABEL_74:
          OUTLINED_FUNCTION_0_186();
          v105 = v33;
LABEL_75:
          sub_216BAE5AC(v105, v104);
          v54 = 1;
          return v54 & 1;
        }
      }

      else if (!v77)
      {
        goto LABEL_74;
      }

LABEL_98:
      OUTLINED_FUNCTION_0_186();
      v93 = v33;
      goto LABEL_105;
    case 8u:
      v100 = OUTLINED_FUNCTION_9_74();
      v101 = v126;
      sub_21691775C(v100, v126);
      if (OUTLINED_FUNCTION_8_81() != 8)
      {
        goto LABEL_84;
      }

      v102 = *v101 ^ *v42;
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v33, v103);
      v54 = v102 ^ 1;
      return v54 & 1;
    case 9u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 9;
      goto LABEL_72;
    case 0xAu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 10;
      goto LABEL_72;
    case 0xBu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 11;
      goto LABEL_72;
    case 0xCu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 12;
      goto LABEL_72;
    case 0xDu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 13;
      goto LABEL_72;
    case 0xEu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 14;
      goto LABEL_72;
    case 0xFu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 15;
      goto LABEL_72;
    case 0x10u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 16;
      goto LABEL_72;
    case 0x11u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 17;
      goto LABEL_72;
    case 0x12u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 18;
      goto LABEL_72;
    case 0x13u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 19;
      goto LABEL_72;
    case 0x14u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 20;
      goto LABEL_72;
    case 0x15u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 21;
      goto LABEL_72;
    case 0x16u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 22;
      goto LABEL_72;
    case 0x17u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 23;
      goto LABEL_72;
    case 0x18u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 24;
      goto LABEL_72;
    case 0x19u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 25;
      goto LABEL_72;
    case 0x1Au:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 26;
      goto LABEL_72;
    case 0x1Bu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 27;
      goto LABEL_72;
    case 0x1Cu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 28;
      goto LABEL_72;
    case 0x1Du:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 29;
      goto LABEL_72;
    case 0x1Eu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 30;
      goto LABEL_72;
    case 0x1Fu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 31;
      goto LABEL_72;
    case 0x20u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 32;
      goto LABEL_72;
    case 0x21u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 33;
      goto LABEL_72;
    case 0x22u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 34;
      goto LABEL_72;
    case 0x23u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 35;
      goto LABEL_72;
    case 0x24u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 36;
      goto LABEL_72;
    case 0x25u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 37;
      goto LABEL_72;
    case 0x26u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 38;
      goto LABEL_72;
    case 0x27u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 39;
      goto LABEL_72;
    case 0x28u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 40;
      goto LABEL_72;
    case 0x29u:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 41;
      goto LABEL_72;
    case 0x2Au:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 42;
      goto LABEL_72;
    case 0x2Bu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 43;
      goto LABEL_72;
    case 0x2Cu:
      OUTLINED_FUNCTION_4_104();
      v56 = swift_getEnumCaseMultiPayload() == 44;
LABEL_72:
      v33 = v135;
      if (!v56)
      {
        goto LABEL_84;
      }

      goto LABEL_74;
    default:
      v55 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v55, v46);
      if (!OUTLINED_FUNCTION_8_81())
      {
        v110 = v121;
        sub_2168D2070(v42, v121);
        static ShareableMusicItem.== infix(_:_:)(v46, v110, v111, v112, v113, v114, v115, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
        v54 = v117;
        sub_216BAE5AC(v110, type metadata accessor for ShareableMusicItem);
        sub_216BAE5AC(v46, type metadata accessor for ShareableMusicItem);
LABEL_56:
        OUTLINED_FUNCTION_0_186();
        sub_216BAE5AC(v33, v99);
        return v54 & 1;
      }

      sub_216BAE5AC(v46, type metadata accessor for ShareableMusicItem);
LABEL_84:
      sub_216BAE544(v33);
      goto LABEL_85;
  }
}

uint64_t sub_216BADF14()
{
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  result = 0;
  switch(v3)
  {
    case 1:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return result;
    case 2:
    case 3:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      return 5;
    case 4:
    case 5:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_2;
    case 6:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_10;
    case 7:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_12;
    case 8:
    case 42:
    case 43:
    case 44:
      return 3;
    case 14:
    case 15:
      return 2;
    case 16:
      return 5;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
LABEL_2:
      result = 14;
      break;
    case 28:
    case 29:
    case 30:
    case 31:
LABEL_10:
      result = 7;
      break;
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
LABEL_12:
      result = 4;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
      result = 9;
      break;
    case 41:
      result = 10;
      break;
    default:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_216BAE074()
{
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  result = 101;
  switch(v3)
  {
    case 1:
      result = 106;
      break;
    case 2:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 301;
      break;
    case 3:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 302;
      break;
    case 4:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 401;
      break;
    case 5:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 407;
      break;
    case 6:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 504;
      break;
    case 7:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 601;
      break;
    case 8:
      result = 904;
      break;
    case 9:
      return result;
    case 10:
      result = 102;
      break;
    case 11:
      result = 103;
      break;
    case 12:
      result = 104;
      break;
    case 13:
      result = 107;
      break;
    case 14:
      result = 201;
      break;
    case 15:
      result = 202;
      break;
    case 16:
      result = 303;
      break;
    case 17:
      result = 402;
      break;
    case 18:
      result = 403;
      break;
    case 19:
      result = 404;
      break;
    case 20:
      result = 405;
      break;
    case 21:
      result = 406;
      break;
    case 22:
      result = 408;
      break;
    case 23:
      result = 409;
      break;
    case 24:
      result = 410;
      break;
    case 25:
      result = 411;
      break;
    case 26:
      result = 412;
      break;
    case 27:
      result = 413;
      break;
    case 28:
      result = 501;
      break;
    case 29:
      result = 502;
      break;
    case 30:
      result = 503;
      break;
    case 31:
      result = 505;
      break;
    case 32:
      result = 602;
      break;
    case 33:
      result = 603;
      break;
    case 34:
      result = 605;
      break;
    case 35:
      result = 604;
      break;
    case 36:
      result = 606;
      break;
    case 37:
      result = 701;
      break;
    case 38:
      result = 702;
      break;
    case 39:
      result = 703;
      break;
    case 40:
      result = 704;
      break;
    case 41:
      result = 801;
      break;
    case 42:
      result = 903;
      break;
    case 43:
      result = 902;
      break;
    case 44:
      result = 901;
      break;
    default:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 105;
      break;
  }

  return result;
}

uint64_t sub_216BAE324@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_227();
  sub_21691775C(v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 42 || EnumCaseMultiPayload == 8)
  {
    sub_217007ED4();
    v10 = sub_217007F04();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }

  else
  {
    v11 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
    OUTLINED_FUNCTION_0_186();
    return sub_216BAE5AC(v5, v12);
  }
}

uint64_t sub_216BAE400(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 3) >= 0x15)
  {
    if (sub_21688D2E4(v1, 1))
    {
      v2 = 310;
    }

    else
    {
      v2 = 300;
    }
  }

  else
  {
    v2 = word_21704EE82[(v1 - 3)];
  }

  return sub_216983738(v2);
}

uint64_t sub_216BAE460()
{
  type metadata accessor for MenuActionType(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  if (v3 != 9 && v3 != 12)
  {
    v4 = sub_216BACA44();
    sub_216E1A4E0(v4, v5, v6);

    OUTLINED_FUNCTION_0_186();
    sub_216BAE5AC(v0, v7);
  }

  return OUTLINED_FUNCTION_227();
}

uint64_t sub_216BAE544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AE0, &qword_21704EE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BAE5AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAE65C(uint64_t a1, uint64_t a2)
{
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v76 = v3;
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v74 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v83 = v7;
  v84 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v82 = v9;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v80 = v11;
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v79 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v88 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v87 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v85 = v19;
  v20 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = (v23 - v22);
  v75 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v73 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v72 = v28 - v27;
  v29 = OUTLINED_FUNCTION_4_1();
  v30 = type metadata accessor for FlowAction(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v78 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  v38 = v37;
  v39 = OUTLINED_FUNCTION_4_1();
  v40 = type metadata accessor for SocialFollowRequestsPageIntent(v39);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  v44 = v43 - v42;
  v45 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for UserSocialProfileCoordinator(v45);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v46 = v89;
  if (*(v89 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    v47 = type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
    v71 = v38;
    sub_21700E094();
    sub_21700D234();
    v24[3] = v40;
    v24[4] = sub_216BAEE8C(&qword_27CAC4AE8, type metadata accessor for SocialFollowRequestsPageIntent, &unk_217056A30);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    sub_216BAEED4(v44, boxed_opaque_existential_1, type metadata accessor for SocialFollowRequestsPageIntent);
    swift_storeEnumTagMultiPayload();
    sub_217005EF4();
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v47);
    v63 = v34 + v30[10];
    *(v63 + 32) = 0;
    *v63 = 0u;
    *(v63 + 16) = 0u;
    (*(v73 + 16))(v34, v72, v75);
    sub_216BAEED4(v24, v34 + v30[5], type metadata accessor for FlowAction.Destination);
    sub_217006214();
    v64 = sub_2170061F4();
    v66 = v65;
    (*(v80 + 8))(v79, v81);
    (*(v73 + 8))(v72, v75);
    sub_216BAEF34(v24, type metadata accessor for FlowAction.Destination);
    v67 = (v34 + v30[6]);
    *v67 = v64;
    v67[1] = v66;
    *(v34 + v30[7]) = 0;
    sub_2167A66B4(&v89, v63);
    sub_2167A6724(v85, v34 + v30[8], &qword_27CABA820, &unk_217018CE0);
    sub_2167A6724(v87, v34 + v30[11], &qword_27CAB6BF0, &unk_217015620);
    sub_2167A6724(v88, v34 + v30[9], &qword_27CAB6FD0, &qword_21701D5F0);
    *(&v90 + 1) = v30;
    v91 = sub_216BAEE8C(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
    v68 = __swift_allocate_boxed_opaque_existential_1(&v89);
    sub_216BAEED4(v34, v68, type metadata accessor for FlowAction);
    (*(v83 + 104))(v82, *MEMORY[0x277D21E18], v84);
    v69 = sub_21700D5E4();

    (*(v83 + 8))(v82, v84);
    sub_216BAEF34(v34, type metadata accessor for FlowAction);
    (*(v78 + 8))(v71, v86);
    sub_216BAEF34(v44, type metadata accessor for SocialFollowRequestsPageIntent);
    __swift_destroy_boxed_opaque_existential_1Tm(&v89);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v76 + 104))(v74, *MEMORY[0x277D21CA0], v77);
    v69 = sub_21700E1F4();
  }

  return v69;
}

uint64_t sub_216BAEE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216BAEED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216BAEF34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAEF8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216BAEFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_216BAF070(void *a1)
{
  sub_216BAF374(v1, v10);
  sub_2166A0F18(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AF8, &unk_21704F050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B00, &unk_21705B000);
  if (swift_dynamicCast())
  {
    sub_2166A0F18(v7, v11);
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = sub_21700DCD4();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_216BAF3E4(v7);
    result = [objc_opt_self() valueWithNewObjectInContext_];
    v3 = result;
    if (!result)
    {
      goto LABEL_9;
    }
  }

  v5 = *(v1 + 40);
  if (!v5)
  {
    return v3;
  }

  sub_2166F1DCC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  v11[0] = v5;
  v6 = a1;
  sub_21700DF14();
  result = sub_2166F1E10(v11, a1);
  if (result)
  {
    sub_21700F0B4();
    return v3;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_216BAF254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216BAF29C(uint64_t a1)
{
  *(a1 + 8) = sub_216BAF2CC();
  result = sub_216BAF320();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216BAF2CC()
{
  result = qword_280E3D120;
  if (!qword_280E3D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D120);
  }

  return result;
}

unint64_t sub_216BAF320()
{
  result = qword_27CAC4AF0;
  if (!qword_27CAC4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AF0);
  }

  return result;
}

uint64_t sub_216BAF374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BAF3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B08, &qword_21704F060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BAF44C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216BAF46C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_216BAF4A8(double a1)
{
  sub_2170085B4();
  sub_216BB0970(&qword_27CABE790, MEMORY[0x277CDF820], v1);
  sub_21700EC54();
  sub_21700EC94();
  result = v4;
  if (v3 < v4)
  {
    __break(1u);
  }

  return result;
}

double sub_216BAF534(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2170085B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  (*(v10 + 16))(v9 - v8, a6);
  sub_216BAF634();
  v12 = v11;

  return v12;
}

void sub_216BAF634()
{
  OUTLINED_FUNCTION_19_41();
  v160 = v0;
  v168 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v4;
  v146 = sub_217008274();
  OUTLINED_FUNCTION_1();
  v167 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v145 = &v137 - v10;
  v155 = sub_2170084B4();
  OUTLINED_FUNCTION_1();
  v166 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  v151 = &v137 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B18, &qword_21704F160);
  MEMORY[0x28223BE20](v150);
  v149 = &v137 - v18;
  v19 = sub_2170085B4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B20, &qword_21704F168);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v137 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B28, &qword_21704F170);
  MEMORY[0x28223BE20](v30);
  v32 = (&v137 - v31);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = 1.79769313e308;
  }

  else
  {
    v33 = v5;
  }

  v171 = MEMORY[0x277D84F90];
  v34 = sub_216BAF4A8(1.79769313e308);
  v35 = *(v27 + 60);
  v37 = v36;
  v38 = *(v21 + 16);
  v163 = v3;
  v38(&v29[v35], v3, v19);
  *v32 = v34;
  v32[1] = v37;
  v32[2] = v34;
  v139 = v21;
  v39 = (*(v21 + 32))(v25, &v29[v35], v19);
  v138 = v30;
  v40 = *(v30 + 52);
  v154 = v32;
  v41 = v32 + v40;
  sub_216BB0970(&qword_27CABE788, MEMORY[0x277CDF810], v39);
  v165 = v41;
  sub_21700E754();
  swift_beginAccess();
  v42 = 0;
  v148 = (v166 + 16);
  v147 = (v166 + 32);
  v158 = v168;
  v43 = v155;
  v157 = (v166 + 8);
  v144 = (v167 + 8);
  v161 = 0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = MEMORY[0x277D84F90];
  v168 = MEMORY[0x277D84F90];
  v153 = v34;
  v47 = v34;
  v156 = v19;
  v162 = v37;
  while (1)
  {
    if (v37 == v47)
    {
LABEL_60:
      v136 = v154;
      *(v154 + *(v138 + 56)) = 1;
      (*(v139 + 8))(v163, v19);
      sub_216BB09B4(v136);

      OUTLINED_FUNCTION_20_43();
      return;
    }

    if (v37 < v153)
    {
      break;
    }

    if (v47 >= v37)
    {
      goto LABEL_62;
    }

    v159 = v47 + 1;
    v154[2] = (v47 + 1);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780, &qword_21702FB18) + 36);
    sub_216BB0970(&qword_27CABE790, MEMORY[0x277CDF820], v49);
    v50 = v165;
    sub_21700EC94();
    if (*&v50[v48] == v170)
    {
      goto LABEL_60;
    }

    v166 = v46;
    v51 = sub_21700ECE4();
    v52 = v152;
    (*v148)(v152);
    v51(&v170, 0);
    sub_21700ECA4();
    v167 = v47;
    v53 = *v147;
    v54 = v151;
    (*v147)(v151, v52, v43);
    v55 = *(v150 + 48);
    v56 = v149;
    v53(&v149[v55], v54, v43);
    v53(v164, &v56[v55], v43);
    v57 = v167;
    sub_217008B04();
    LOBYTE(v170) = v58 & 1;
    v169 = v59 & 1;
    sub_217008484();
    v61 = v60;
    v63 = v62;
    if (v57)
    {
      v37 = v162;
      v46 = v166;
      if (v42 < 1)
      {
        if (v33 >= v60)
        {
LABEL_34:
          v82 = 0.0;
LABEL_36:
          v79 = v61 + v82;
          goto LABEL_37;
        }

LABEL_21:
        if (__OFSUB__(v57, 1))
        {
          goto LABEL_68;
        }

        if (__OFSUB__(v42, 1))
        {
          goto LABEL_69;
        }

        v87 = (v57 - 1) & ~((v57 - 1) >> 63);
        v88 = (v42 - 1) & ~((v42 - 1) >> 63);
        v89 = v87 - v88;
        v19 = v87 + 1;
        if (v87 + 1 < v87 - v88)
        {
          goto LABEL_70;
        }

        sub_21700DF14();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_0();
          sub_2169391D4();
          v168 = v134;
        }

        v91 = *(*&v168 + 16);
        v90 = *(*&v168 + 24);
        v92 = v91 + 1;
        if (v91 >= v90 >> 1)
        {
          OUTLINED_FUNCTION_10_22(v90);
          sub_2169391D4();
          v168 = v135;
        }

        v93 = OUTLINED_FUNCTION_16_52();
        v96 = v95 + v91 * v94;
        *(v96 + 32) = v89;
        *(v96 + 40) = v19;
        OUTLINED_FUNCTION_5_92(v96, v93);
        v98 = *(v97 - 256);
        OUTLINED_FUNCTION_12_59();
        if (v99)
        {
          OUTLINED_FUNCTION_15_54();
          sub_217008264();
          sub_217008264();
          sub_217008254();
          v98 = v100;
          v101 = OUTLINED_FUNCTION_10_72();
          v102 = v146;
          (v37)(v101, v146);
          v103 = OUTLINED_FUNCTION_3_120();
          (v37)(v103, v102);
          v92 = *(*&v168 + 16);
        }

        v82 = 0.0;
        if (v92 <= 1)
        {
          v104 = 0.0;
        }

        else
        {
          v104 = v98;
        }

        OUTLINED_FUNCTION_8_82(v104);
        v44 = v44 + v45 + v98;
        v46 = MEMORY[0x277D84F90];
        v171 = MEMORY[0x277D84F90];

        v42 = 0;
        v79 = v61 + 0.0;
        v45 = 0.0;
        v33 = v5;
        OUTLINED_FUNCTION_11_67();
        goto LABEL_37;
      }

      v64 = v158;
      OUTLINED_FUNCTION_12_59();
      if (v65)
      {
        if (__OFSUB__(v57, 1))
        {
          goto LABEL_72;
        }

        v66 = v143;
        sub_2170085C4();
        OUTLINED_FUNCTION_15_54();
        sub_2170084A4();
        v67 = *v157;
        (*v157)(v66, v43);
        OUTLINED_FUNCTION_13_56();
        v57 = v167;
        sub_2170085C4();
        sub_2170084A4();
        OUTLINED_FUNCTION_11_67();
        v67();
        sub_217008254();
        v64 = v68;
        v69 = OUTLINED_FUNCTION_10_72();
        v46 = v166;
        v70 = v146;
        (v37)(v69, v146);
        v71 = OUTLINED_FUNCTION_3_120();
        (v37)(v71, v70);
      }

      if (v33 < v61 + v64)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v37 = v162;
      v46 = v166;
      if (v42 < 1)
      {
        goto LABEL_34;
      }
    }

    OUTLINED_FUNCTION_12_59();
    if ((v72 & 1) == 0)
    {
      v82 = v158;
      goto LABEL_36;
    }

    if (__OFSUB__(v57, 1))
    {
      goto LABEL_71;
    }

    v142 = v57 - 1;
    sub_2170085C4();
    v73 = v145;
    sub_2170084A4();
    v74 = *v157;
    OUTLINED_FUNCTION_14_55();
    v74();
    v140 = v74;
    OUTLINED_FUNCTION_13_56();
    sub_2170085C4();
    OUTLINED_FUNCTION_15_54();
    sub_2170084A4();
    OUTLINED_FUNCTION_14_55();
    v74();
    sub_217008254();
    v76 = v75;
    v77 = *v144;
    v141 = v77;
    v78 = v146;
    v77(v37, v146);
    v77(v73, v78);
    v79 = v61 + v76;
    sub_2170085C4();
    sub_2170084A4();
    OUTLINED_FUNCTION_14_55();
    v80 = v140;
    v140();
    sub_2170085C4();
    sub_2170084A4();
    OUTLINED_FUNCTION_11_67();
    OUTLINED_FUNCTION_14_55();
    v80();
    v57 = v167;
    sub_217008254();
    v82 = v81;
    v83 = OUTLINED_FUNCTION_3_120();
    v84 = v141;
    v141(v83, v78);
    v85 = v73;
    v43 = v155;
    v86 = v78;
    v46 = v166;
    v84(v85, v86);
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_216939108();
      v46 = v130;
    }

    v106 = *(v46 + 16);
    v105 = *(v46 + 24);
    if (v106 >= v105 >> 1)
    {
      OUTLINED_FUNCTION_10_22(v105);
      sub_216939108();
      v46 = v131;
    }

    *(v46 + 16) = v106 + 1;
    *(v46 + 8 * v106 + 32) = v82 + v5 - v33;
    v171 = v46;
    if (v45 <= v63)
    {
      v45 = v63;
    }

    if (__OFADD__(v42++, 1))
    {
      goto LABEL_63;
    }

    sub_21700EC54();
    sub_21700EC94();
    v108 = sub_21700EC84();
    if (__OFSUB__(v108, 1))
    {
      goto LABEL_64;
    }

    v33 = v33 - v79;
    if (v57 == (v108 - 1))
    {
      if (__OFSUB__(v42, 1))
      {
        goto LABEL_65;
      }

      v109 = (v42 - 1) & ~((v42 - 1) >> 63);
      v110 = &v57[-v109];
      if (__OFSUB__(v57, v109))
      {
        goto LABEL_66;
      }

      v111 = v159;
      if (v159 < v110)
      {
        goto LABEL_67;
      }

      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_2169391D4();
        v168 = v132;
      }

      v19 = *(*&v168 + 16);
      v112 = *(*&v168 + 24);
      if (v19 >= v112 >> 1)
      {
        OUTLINED_FUNCTION_10_22(v112);
        sub_2169391D4();
        v168 = v133;
      }

      v113 = OUTLINED_FUNCTION_16_52();
      v116 = v115 + v19 * v114;
      *(v116 + 32) = v110;
      *(v116 + 40) = v111;
      OUTLINED_FUNCTION_5_92(v116, v113);
      v118 = *(v117 - 256);
      OUTLINED_FUNCTION_12_59();
      if (v119)
      {
        v120 = v145;
        sub_217008264();
        OUTLINED_FUNCTION_15_54();
        sub_217008264();
        sub_217008254();
        v118 = v121;
        v122 = *v144;
        v123 = OUTLINED_FUNCTION_3_120();
        v124 = v146;
        v122(v123, v146);
        v122(v120, v124);
      }

      v125 = OUTLINED_FUNCTION_6_81();
      v126(v125);
      v127 = 0.0;
      if (*(*&v168 + 16) > 1uLL)
      {
        v127 = v118;
      }

      OUTLINED_FUNCTION_8_82(v127);
      v44 = v44 + v45 + v118;
      v46 = MEMORY[0x277D84F90];
      v171 = MEMORY[0x277D84F90];

      v42 = 0;
      v45 = 0.0;
      v33 = v5;
      OUTLINED_FUNCTION_11_67();
    }

    else
    {
      v128 = OUTLINED_FUNCTION_6_81();
      v129(v128);
    }

    v47 = v57 + 1;
  }

  __break(1u);
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
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_216BB03AC()
{
  OUTLINED_FUNCTION_19_41();
  v1 = v0;
  v36.size.width = v2;
  v36.size.height = v3;
  v36.origin.x = v4;
  v36.origin.y = v5;
  v35 = sub_2170084B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  sub_2170085B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  (*(v15 + 16))(v14 - v13, v1);
  sub_216BAF634();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v32 = v16 + 32;
    v20 = (v7 + 8);
    v31 = v16;
    v30 = *(v16 + 16);
    while (v19 < *(v17 + 16))
    {
      v33 = v19;
      v21 = (v32 + 56 * v19);
      v23 = *v21;
      v22 = *(v21 + 1);
      v25 = v21[5];
      v24 = v21[6];
      v27 = v21[3];
      v26 = v21[4];
      v34 = *(v21 + 2);
      sub_21700DF14();
      CGRectGetWidth(v36);
      v37.origin.x = OUTLINED_FUNCTION_17_52();
      CGRectGetWidth(v37);
      sub_2170093C4();
      if (sub_217009174())
      {
        if (*&v23 != v22)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_2170093D4();
        if (sub_217009174())
        {
          if (*&v23 != v22)
          {
            goto LABEL_12;
          }
        }

        else if (*&v23 != v22)
        {
LABEL_12:
          if (v22 < *&v23)
          {
            goto LABEL_26;
          }

          if (*&v23 >= v22)
          {
            goto LABEL_27;
          }

          v28 = v23;
          while (1)
          {
            v38.origin.x = OUTLINED_FUNCTION_17_52();
            CGRectGetMinX(v38);
            if (__OFSUB__(*&v28, *&v23))
            {
              break;
            }

            if (*&v28 - *&v23 >= *(v34 + 16))
            {
              goto LABEL_24;
            }

            CGRectGetMinX(v36);
            v39.origin.x = v27;
            v39.origin.y = v26;
            v39.size.width = v25;
            v39.size.height = v24;
            CGRectGetHeight(v39);
            sub_2170085C4();
            sub_217008B04();
            sub_217008484();
            v29 = *v20;
            (*v20)(v11, v35);
            sub_217009184();
            if ((sub_217009174() & 1) == 0)
            {
              sub_217009194();
              sub_217009174();
            }

            v40.origin.x = v27;
            v40.origin.y = v26;
            v40.size.width = v25;
            v40.size.height = v24;
            CGRectGetMinY(v40);
            CGRectGetMinY(v36);
            sub_2170085C4();
            sub_21700B534();
            sub_217008B04();
            sub_217008494();
            v29(v11, v35);
            if (v22 == ++*&v28)
            {

              v17 = v31;
              v18 = v30;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }
      }

LABEL_21:
      v19 = v33 + 1;
      if (v33 + 1 == v18)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_22:

    OUTLINED_FUNCTION_20_43();
  }
}

void (*sub_216BB08A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

unint64_t sub_216BB091C()
{
  result = qword_27CAC4B10;
  if (!qword_27CAC4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4B10);
  }

  return result;
}

uint64_t sub_216BB0970(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    sub_2170085B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216BB09B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B28, &qword_21704F170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BB0A28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216BB0A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216BB0AC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_3_121();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI25DislikeMenuActionProvider_actionDispatcher, v8, v2);
  return v1;
}

uint64_t sub_216BB0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40, qword_21704F220);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B180];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB1A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40, qword_21704F220);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C384();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B1D8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB2820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40, qword_21704F220);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2AE68];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB3630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40, qword_21704F220);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B2A8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB4440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40, qword_21704F220);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B158];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA118;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB5250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30, &qword_21704F218);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B180];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30, &qword_21704F218);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C384();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B1D8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB6E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30, &qword_21704F218);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2AE68];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB7CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30, &qword_21704F218);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B2A8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB8AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction(0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30, &qword_21704F218);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820, &unk_217018CE0);
    v74 = MEMORY[0x277D2B158];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction(0);
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB9918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v19 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = OUTLINED_FUNCTION_2_126();
  a6(v11);
  v12 = sub_21678C1C4();
  sub_216697664(v10, &qword_27CAB6DF0, &unk_2170152D0);
  v13 = OUTLINED_FUNCTION_2_126();
  v19(v13);
  v14 = sub_21678C1C4();
  sub_216697664(v10, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v16;
}

uint64_t sub_216BB9AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30[-v5];
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(a3 + v10, v9);
  sub_2168CD6E4(v9);
  v11 = OUTLINED_FUNCTION_1_160();
  sub_216BB4440(v11, v12, v13, v14, v15, v16, v17);
  v18 = sub_21678C1C4();
  sub_216697664(v6, &qword_27CAB6DF0, &unk_2170152D0);
  v19 = OUTLINED_FUNCTION_1_160();
  sub_216BB8AC0(v19, v20, v21, v22, v23, v24, v25);
  v26 = sub_21678C1C4();
  sub_216697664(v6, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v18;
  *(inited + 40) = v26;
  v28 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v28;
}

uint64_t sub_216BB9CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for DislikeAction(0);
  v6[4] = sub_216BBA05C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216BBA0B4(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216BB9D5C()
{

  v1 = OBJC_IVAR____TtC7MusicUI25DislikeMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for DislikeMenuActionProvider(uint64_t a1)
{
  result = qword_280E359E8;
  if (!qword_280E359E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BB9FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216BBA05C()
{
  result = qword_27CAC4B38;
  if (!qword_27CAC4B38)
  {
    type metadata accessor for DislikeAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4B38);
  }

  return result;
}

uint64_t sub_216BBA0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBA11C()
{
  v1 = *(type metadata accessor for DislikeAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  return sub_216BB9CB0(*(v0 + 16), v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

id sub_216BBA1E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI31JSSubscriptionStatusCoordinator_subscriptionStatusCoordinator] = v6;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_216BBA2F4(uint64_t a1)
{
  swift_getObjectType();
  sub_216685F4C(0, &qword_280E29AF8, 0x277CD4640);
  v1 = sub_21700F124();
  v2 = sub_21700F134();

  return v2;
}

char *sub_216BBA388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21700E314();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D904();
  v10 = MEMORY[0x21CE9E710]();
  if (v10)
  {
    v11 = v10;
    v12 = sub_21700F0A4();
    v13 = sub_21700F094();

    v14 = sub_216E3DC8C(v13 & 1);
    v15 = swift_allocObject();
    *(v15 + 2) = v14;
    *(v15 + 3) = v11;
    *(v15 + 4) = a4;
    v16 = a1;

    sub_21700E2F4();
    if (v4)
    {
    }

    else
    {
      v15 = sub_21700E304();

      (*(v19 + 8))(v9, v7);
    }
  }

  else
  {
    v15 = "iptionStatusCoordinator";
    sub_21700E0D4();
    sub_216973E30();
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_216BBA5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v30 = a6;
  v25 = a3;
  v26 = a5;
  v28 = a1;
  v7 = sub_21700CCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + 16);
  v24(v11, a2, v7, v10);
  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v23 = v9 + 7;
  v14 = swift_allocObject();
  *(v14 + 16) = v28;
  v22 = *(v8 + 32);
  v22(v14 + v13, v11, v7);
  *(v14 + ((v9 + 7 + v13) & 0xFFFFFFFFFFFFFFF8)) = v30;
  (v24)(v11, v25, v7);
  v15 = (v12 + 16) & ~v12;
  v16 = (v23 + v15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v22(v17 + v15, v11, v7);
  v18 = v28;
  *(v17 + v16) = v28;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v29[3] = sub_21700D904();
  v29[4] = MEMORY[0x277D22078];
  v29[0] = v26;
  v19 = v18;

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

void sub_216BBA838(uint64_t a1, void *a2)
{
  v2 = sub_2166F3D44(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217013DA0;
  *(v3 + 56) = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
  *(v3 + 32) = v2;
  v4 = v2;
  oslog = sub_21700CC94();
}

void sub_216BBAA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21700E0D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  sub_21700F884();
  sub_21700E0A4();
  v8 = sub_21700E0C4();
  (*(v4 + 8))(v6, v3);
  *(v7 + 56) = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
  *(v7 + 32) = v8;
  v9 = sub_21700CC94();
}

uint64_t sub_216BBADE0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC4B48);
  __swift_project_value_buffer(v0, qword_27CAC4B48);
  return sub_217007C94();
}

void sub_216BBAEC4(uint64_t a1)
{
  sub_21700CCA4();
  v3 = *(v1 + 16);

  sub_216BBA838(a1, v3);
}

void sub_216BBAF64(uint64_t a1)
{
  v3 = *(sub_21700CCA4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_216BBAA74(a1, v1 + v4, v5);
}

uint64_t sub_216BBB00C()
{
  result = sub_21700E4D4();
  qword_27CAC4B68 = result;
  return result;
}

id static NSNotificationName.recentLibrarySearchesDidChange.getter()
{
  if (qword_27CAB5EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CAC4B68;

  return v1;
}

uint64_t sub_216BBB12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216BBB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  v8[15] = type metadata accessor for OpenAddToPlaylistAction(0);
  v8[16] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v8[17] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v8[18] = OUTLINED_FUNCTION_80();
  v9 = sub_217006924();
  v8[19] = v9;
  OUTLINED_FUNCTION_2(v9);
  v8[20] = v10;
  v8[21] = OUTLINED_FUNCTION_80();
  v11 = type metadata accessor for PlayActionItem(0);
  v8[22] = v11;
  OUTLINED_FUNCTION_2(v11);
  v8[23] = v12;
  v8[24] = OUTLINED_FUNCTION_80();
  v13 = type metadata accessor for PlayAction(0);
  v8[25] = v13;
  OUTLINED_FUNCTION_2(v13);
  v8[26] = v14;
  v8[27] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[28] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v8[29] = v16;
  v8[30] = v15;

  return MEMORY[0x2822009F8](sub_216BBB390, v16, v15);
}

void sub_216BBB390()
{
  v1 = *(v0 + 72);
  v2 = *v1;
  v3 = v1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_216EE9CCC(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = *(*(v0 + 200) + 20);
    v11 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v12 = *(v8 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = *(v0 + 216);
      sub_216BBC520(v11, v14, type metadata accessor for PlayAction);
      v15 = *(v9 + v10);
      sub_21700DF14();
      sub_216BBC598(v14, type metadata accessor for PlayAction);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937748(0, *(v13 + 16) + 1, 1, v13);
          v13 = v18;
        }

        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_216937748(v16 > 1, v17 + 1, 1, v13);
          v13 = v19;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v15;
      }

      v11 += v12;
      --v7;
    }

    while (v7);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v20 = 0;
  v21 = *(v0 + 184);
  v22 = *(v13 + 16);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v22 == v20)
    {

      v34 = *(v23 + 16);
      if (!v34)
      {

        v36 = MEMORY[0x277D84F90];
LABEL_43:
        if (*(v36 + 16) && (v51 = *(v0 + 80), v52 = swift_task_alloc(), *(v52 + 16) = *(v0 + 104), *(v52 + 32) = v51, v60 = sub_216A95C5C(sub_216BBC4B4, v52, v36), , , *(v60 + 16)))
        {
          v62 = *(v0 + 120);
          v61 = *(v0 + 128);
          v63 = *(v0 + 72);
          v64 = *(type metadata accessor for AddItemsToPlaylistAction(0) + 20);
          v65 = *(v62 + 20);
          sub_21700D284();
          OUTLINED_FUNCTION_34();
          (*(v66 + 16))(v61 + v65, v63 + v64);
          *v61 = v60;
          *(v0 + 40) = v62;
          *(v0 + 48) = sub_216BBC4D8(&qword_27CABA7A8, type metadata accessor for OpenAddToPlaylistAction, &unk_217043678);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_216BBC520(v61, boxed_opaque_existential_1, type metadata accessor for OpenAddToPlaylistAction);
          v68 = swift_task_alloc();
          *(v0 + 248) = v68;
          v69 = OUTLINED_FUNCTION_5_93();
          type metadata accessor for MapAddItemsToPlaylistActionImplementation(v69, v70, v71, v72);
          swift_getWitnessTable();
          *v68 = v0;
          v68[1] = sub_216BBBB40;

          sub_216B6DB60();
        }

        else
        {

          v53 = OUTLINED_FUNCTION_5_93();
          v57 = type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error(v53, v54, v55, v56);
          v58 = OUTLINED_FUNCTION_1_161(v57);
          OUTLINED_FUNCTION_4(v58);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          OUTLINED_FUNCTION_3_122();

          OUTLINED_FUNCTION_3();

          v59();
        }

        return;
      }

      v75 = *(*(v0 + 176) + 24);
      v76 = *(v0 + 192);
      v35 = v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v73 = *(v0 + 160);
      v74 = (v73 + 32);
      v36 = MEMORY[0x277D84F90];
      v37 = *(v21 + 72);
      while (1)
      {
        v38 = *(v0 + 136);
        sub_216BBC520(v35, *(v0 + 192), type metadata accessor for PlayActionItem);
        sub_216919014(v76 + v75, v38);
        v39 = type metadata accessor for ContentDescriptor(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
        v41 = *(v0 + 144);
        v42 = *(v0 + 152);
        v43 = *(v0 + 136);
        if (EnumTagSinglePayload == 1)
        {
          OUTLINED_FUNCTION_2_127();
          sub_216697664(v43, &qword_27CAB6A00, &unk_217016B60);
          __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
        }

        else
        {
          sub_216C6C5E8(*(v0 + 144));
          OUTLINED_FUNCTION_2_127();
          sub_216BBC598(v43, type metadata accessor for ContentDescriptor);
          if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
          {
            v44 = *v74;
            (*v74)(*(v0 + 168), *(v0 + 144), *(v0 + 152));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2169375D4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v49;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_2169375D4(v45 > 1, v46 + 1, 1, v36);
              v36 = v50;
            }

            v47 = *(v0 + 168);
            v48 = *(v0 + 152);
            *(v36 + 16) = v46 + 1;
            v44(v36 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v46, v47, v48);
            goto LABEL_40;
          }
        }

        sub_216697664(*(v0 + 144), &unk_27CABF9C0, &qword_21701ADB0);
LABEL_40:
        v35 += v37;
        if (!--v34)
        {

          goto LABEL_43;
        }
      }
    }

    if (v20 >= *(v13 + 16))
    {
      break;
    }

    v24 = *(v13 + 8 * v20 + 32);
    v25 = *(v24 + 16);
    v26 = *(v23 + 16);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_54;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > *(v23 + 24) >> 1)
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      sub_216937708(isUniquelyReferenced_nonNull_native, v29, 1, v23);
      v23 = v30;
    }

    if (*(v24 + 16))
    {
      if ((*(v23 + 24) >> 1) - *(v23 + 16) < v25)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = *(v23 + 16);
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_57;
        }

        *(v23 + 16) = v33;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_55;
      }
    }

    ++v20;
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
}