uint64_t sub_216EEEA88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EEEAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EEEB58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216EEEBB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216EEEC24()
{
  result = qword_280E2FC48[0];
  if (!qword_280E2FC48[0])
  {
    type metadata accessor for ToggleContactCheckAllowedAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2FC48);
  }

  return result;
}

uint64_t sub_216EEEC7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  v3 = sub_21700E244();
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v4 = v24;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v24 = *a1;
    v25 = v5;
    LOBYTE(v26) = v6 & 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    MEMORY[0x21CE9BEE0]((&v23 + 7), v7);
    v8 = HIBYTE(v23);
  }

  else
  {
    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000217082A90;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v8;
  v10 = sub_21700E384();
  sub_216CAE468(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v8;
  *(v18 + 32) = v3;
  v19 = sub_2166AF2EC();
  swift_retain_n();
  v20 = v4;
  v21 = sub_21700EE84();
  v27 = v19;
  v28 = MEMORY[0x277D225C0];
  v24 = v21;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  return v3;
}

void sub_216EEEE98(_BYTE *a1, uint64_t a2, char a3)
{
  v5 = sub_21700D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_216CB4528(a3 & 1);
    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    sub_21700E224();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_216EEF024();
    v9 = swift_allocError();
    sub_21700E214();
  }
}

unint64_t sub_216EEF024()
{
  result = qword_27CACCD08;
  if (!qword_27CACCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD08);
  }

  return result;
}

_BYTE *_s7MusicUI22UpdateUserProfileErrorOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_216EEF128()
{
  result = qword_27CACCD10;
  if (!qword_27CACCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD10);
  }

  return result;
}

void sub_216EEF1CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  CGRectGetWidth(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetHeight(v22);
  v9 = sub_21700B4A4();
  OUTLINED_FUNCTION_5(v9, v10, v11, v12, v13, v14, v15, v16, v17, v19, v18, v20, v21);
}

double sub_216EEF258@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_216EEF1CC(a2, a3, a4, a5, *v5);
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_216EEF2A4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_216EEF92C;
}

uint64_t sub_216EEF318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF8D0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216EEF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF8D0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216EEF3E0(uint64_t a1)
{
  v2 = sub_216EEF8D0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_216EEF430()
{
  result = qword_280E31918[0];
  if (!qword_280E31918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31918);
  }

  return result;
}

unint64_t sub_216EEF488()
{
  result = qword_280E31910;
  if (!qword_280E31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E31910);
  }

  return result;
}

uint64_t sub_216EEF50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double sub_216EEF560(double a1, double a2, double a3, double a4)
{
  v4 = sub_21700B4A4();
  *&result = OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, v12, v15, v13, v16, v17).n128_u64[0];
  return result;
}

double sub_216EEF5FC@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_216EEF560(a2, a3, a4, a5);
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_216EEF640(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_216EEF6B4;
}

uint64_t sub_216EEF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF87C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216EEF71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF87C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216EEF780(uint64_t a1)
{
  v2 = sub_216EEF87C();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_216EEF7D0()
{
  result = qword_280E3AA60[0];
  if (!qword_280E3AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3AA60);
  }

  return result;
}

unint64_t sub_216EEF828()
{
  result = qword_280E3AA58;
  if (!qword_280E3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AA58);
  }

  return result;
}

unint64_t sub_216EEF87C()
{
  result = qword_27CACCD38;
  if (!qword_27CACCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD38);
  }

  return result;
}

unint64_t sub_216EEF8D0()
{
  result = qword_27CACCD40;
  if (!qword_27CACCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD40);
  }

  return result;
}

uint64_t type metadata accessor for PlaylistDetailPageIntent(uint64_t a1)
{
  result = qword_27CACCD48;
  if (!qword_27CACCD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EEF9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v7;
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v55 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v26 = type metadata accessor for ContentDescriptor(0);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_21700CE04();
  v30 = *(v10 + 16);
  v63 = v8;
  v54 = v30;
  v30(v15, a2, v8);
  v31 = v59;
  ContentDescriptor.init(deserializing:using:)(v25, v15, v32, v33, v34, v35, v36, v37, v52, v53, SWORD2(v53), SBYTE6(v53), SHIBYTE(v53), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  if (v31)
  {
    (*(v10 + 8))(a2, v63);
    return (*(v17 + 8))(v60, v61);
  }

  else
  {
    v53 = v10;
    v39 = v29;
    v40 = v58;
    sub_216EF0414(v39, v58, type metadata accessor for ContentDescriptor);
    v41 = v60;
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v45 = *(v17 + 8);
    v59 = v17 + 8;
    v52 = v45;
    v45(v22, v61);
    v46 = type metadata accessor for PlaylistDetailPageIntent(0);
    v47 = (v40 + *(v46 + 20));
    *v47 = v42;
    v47[1] = v44;
    v48 = v55;
    sub_21700CE04();
    v49 = v56;
    v54(v56, a2, v63);
    v50 = v57;
    ReferrerInfo.init(deserializing:using:)(v48, v49, v57);
    (*(v53 + 8))(a2, v63);
    v52(v41, v61);
    v51 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    return sub_21693FB5C(v50, v58 + *(v46 + 24));
  }
}

id sub_216EEFE24(JSContext a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v9 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v10 = type metadata accessor for PlaylistDetailPageIntent(0);
    v11 = (v1 + *(v10 + 20));
    v12 = v11[1];
    if (v12)
    {
      v16[0] = *v11;
      v16[1] = v12;
      sub_21700DF14();
      v13 = sub_21700DD04();
    }

    else
    {
      v13 = 0;
    }

    sub_2166F1F64(v13, 0xD000000000000017, 0x800000021708A0F0);
    sub_2168CC268(v2 + *(v10 + 24), v7);
    v14 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
    {
      sub_216697664(v7, &qword_27CAB6FD0, &qword_21701D5F0);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v7);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_216EF0020(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCD68, &unk_21706F350);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  if ((static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for PlaylistDetailPageIntent(0);
  v16 = *(v15 + 20);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(v15 + 24);
  v23 = *(v11 + 48);
  sub_2168CC268(a1 + v22, v14);
  sub_2168CC268(a2 + v22, &v14[v23]);
  OUTLINED_FUNCTION_12_4(v14);
  if (v21)
  {
    OUTLINED_FUNCTION_12_4(&v14[v23]);
    if (v21)
    {
      sub_216697664(v14, &qword_27CAB6FD0, &qword_21701D5F0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_2168CC268(v14, v10);
  OUTLINED_FUNCTION_12_4(&v14[v23]);
  if (v24)
  {
    sub_2168CC340(v10);
LABEL_19:
    sub_216697664(v14, &qword_27CACCD68, &unk_21706F350);
    return 0;
  }

  sub_216EF0414(&v14[v23], v6, type metadata accessor for ReferrerInfo);
  v26 = static ReferrerInfo.== infix(_:_:)(v10, v6);
  sub_2168CC340(v6);
  sub_2168CC340(v10);
  sub_216697664(v14, &qword_27CAB6FD0, &qword_21701D5F0);
  return (v26 & 1) != 0;
}

uint64_t sub_216EF02F0(uint64_t a1)
{
  result = sub_2166CEAEC(&qword_27CACCD58, type metadata accessor for PlaylistDetailPageIntent, &unk_21706F238);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EF0390(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEAEC(&qword_27CACCD58, type metadata accessor for PlaylistDetailPageIntent, &unk_21706F238);
  result = sub_2166CEAEC(&qword_27CACCD60, type metadata accessor for PlaylistDetailPageIntent, &unk_21706F21C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216EF0414(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for QueueGenericMusicItemsAction.InsertionPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EF0658()
{
  result = qword_27CACCD70;
  if (!qword_27CACCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD70);
  }

  return result;
}

uint64_t sub_216EF0704(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  v6 = sub_21700E244();
  if (*(a1 + *(type metadata accessor for OpenExternalURLAction(0) + 20)) == 1 && (v7 = [objc_opt_self() defaultWorkspace]) != 0)
  {
    v8 = v7;
    v9 = sub_217005E04();
    v10 = sub_21700E384();
    sub_2169C5BD4(v9, v10, v8);

    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    sub_21700E224();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_217005E04();
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_216EF0BBC(&qword_27CAB6868, type metadata accessor for OpenExternalURLOptionsKey, &unk_217013BB8);
    sub_21700E384();
    v13 = sub_21700E344();

    aBlock[4] = sub_216EF0C04;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_216EF0B64;
    aBlock[3] = &block_descriptor_46;
    v14 = _Block_copy(aBlock);

    [v11 openURL:v12 options:v13 completionHandler:v14];
    _Block_release(v14);
  }

  return v6;
}

void sub_216EF0A18(char a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_21700E224();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_216EF0C0C();
    v7 = swift_allocError();
    sub_21700E214();
  }
}

uint64_t sub_216EF0B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_216EF0BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216EF0C0C()
{
  result = qword_27CACCD78;
  if (!qword_27CACCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenExternalURLActionImplementation.OpenExternalURLActionImplementationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216EF0D10()
{
  result = qword_27CACCD80;
  if (!qword_27CACCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD80);
  }

  return result;
}

uint64_t sub_216EF0D64(void *a1)
{
  result = sub_216EF0E5C();
  if (!v1)
  {
    sub_217005834();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217007A04();
    return sub_217005824();
  }

  return result;
}

uint64_t sub_216EF0E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_217005EF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for BaseURLRequest(0);
  if (!*(v0 + *(v11 + 24) + 8))
  {
    sub_216EF11F8();
    swift_allocError();
    v14 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  sub_21700DF14();
  sub_217005ED4();

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_216846CF0(v3);
    sub_216EF11F8();
    swift_allocError();
    v14 = 1;
LABEL_5:
    *v13 = v14;
    return swift_willThrow();
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_2170057E4();
  v16 = OUTLINED_FUNCTION_0_259(v12[7]);
  sub_216EF1104(v16, v17);
  sub_217005784();
  sub_21700DF14();
  sub_2170057C4();
  v18 = OUTLINED_FUNCTION_0_259(v12[8]);
  sub_216EF11DC(v18, v19);
  sub_217005794();
  if ((*(v0 + v12[9] + 8) & 1) == 0)
  {
    sub_2170057A4();
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_216EF1104(uint64_t a1, char a2)
{
  result = 5522759;
  if (a2)
  {
    switch(a1)
    {
      case 2:
        result = 1145128264;
        break;
      case 3:
        result = 0x4843544150;
        break;
      case 4:
        result = 1414745936;
        break;
      case 5:
        result = 5526864;
        break;
      case 6:
        result = 0x4554454C4544;
        break;
      case 7:
        result = 0x5443454E4E4F43;
        break;
      case 8:
        result = 0x534E4F4954504FLL;
        break;
      case 9:
        result = 0x4543415254;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_216EF11DC(uint64_t a1, char a2)
{
  if (a2)
  {
    return qword_21706F670[a1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_216EF11F8()
{
  result = qword_27CACCD88;
  if (!qword_27CACCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD88);
  }

  return result;
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EF132C()
{
  result = qword_27CACCD90;
  if (!qword_27CACCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD90);
  }

  return result;
}

uint64_t sub_216EF1380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_216EF13C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_216EF143C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for SuggestionItem(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB90C0;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_27_55();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  type metadata accessor for SuggestionItemView(0);
  v23 = sub_216EF8E18(qword_280E3E620, type metadata accessor for SuggestionItemView);
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1668()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for TextListComponentModel(0);
  OUTLINED_FUNCTION_31_2(v2, 1, v13);
  if (v17)
  {
    v14 = &qword_27CAB9868;
    v15 = v2;
LABEL_7:
    sub_216699778(v15, v14);
    v18 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, &unk_217014E30, *(v13 + 20));
  OUTLINED_FUNCTION_32_38();
  v16 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v16);
  if (v17)
  {
    v14 = &qword_27CAB6D58;
    v15 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v19 = OUTLINED_FUNCTION_113();
  v20(v19);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9880, &unk_21706F840);
  v21 = sub_216852000();
  OUTLINED_FUNCTION_5_144(v21);
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1894()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v29[0] = v5;
  v29[1] = v4;
  v7 = v6;
  v8 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = _s6LockupVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v22);
  v24 = v29 - v23;
  v25 = v0[1];
  v30 = *v0;
  v31 = v25;
  v32 = *(v0 + 4);
  if (!v7)
  {
    goto LABEL_5;
  }

  sub_216DE9318();
  sub_216683A80(v19 + *(v15 + 20), v1, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v26 = sub_21700D7A4();
  OUTLINED_FUNCTION_31_2(v1, 1, v26);
  if (v27)
  {
    sub_216699778(v1, &qword_27CAB6D58);
LABEL_5:
    v28 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v28);
    goto LABEL_6;
  }

  sub_216BE5AD4(v3 & 1, v24);
  (*(*(v26 - 8) + 8))(v1, v26);
  OUTLINED_FUNCTION_44_30();
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98D0, &unk_21701E360);
  sub_2168521E8();
  sub_21700A1C4();
  (*(v10 + 8))(v14, v8);
  sub_216699778(v24, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1B4C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for SuggestionItem(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB90C0;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_27_55();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F8, &qword_21701E380);
  v23 = sub_216852300();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1D54()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for PopoverSelector(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB9960;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9978, &qword_21701E3D0);
  v23 = sub_2168525DC();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1F6C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for ParagraphComponentModel(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB9990;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A8, &unk_21701E3F0);
  v23 = sub_2168526D0();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2184()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for LinkComponentModel(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB7A30;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99D0, &qword_21701E410);
  v23 = sub_2168527C4();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF239C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for InlineUpsell(0);
  OUTLINED_FUNCTION_31_2(v2, 1, v13);
  if (v17)
  {
    v14 = &qword_27CAB99E8;
    v15 = v2;
LABEL_7:
    sub_216699778(v15, v14);
    v18 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, &unk_217014E30, *(v13 + 20));
  OUTLINED_FUNCTION_32_38();
  v16 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v16);
  if (v17)
  {
    v14 = &qword_27CAB6D58;
    v15 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v19 = OUTLINED_FUNCTION_113();
  v20(v19);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A00, &unk_21706F850);
  v21 = sub_2168528B8();
  OUTLINED_FUNCTION_5_144(v21);
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF25C8()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v26[0] = v6;
  v26[1] = v5;
  v8 = v7;
  v9 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for HeaderComponentModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v20);
  v22 = v26 - v21;
  memcpy(v27, v2, sizeof(v27));
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_216DE9868();
  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, &unk_217014E30, *(v16 + 20));
  OUTLINED_FUNCTION_32_38();
  v23 = sub_21700D7A4();
  OUTLINED_FUNCTION_31_2(v1, 1, v23);
  if (v24)
  {
    sub_216699778(v1, &qword_27CAB6D58);
LABEL_5:
    v25 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v25);
    goto LABEL_6;
  }

  sub_216BE5AD4(v4 & 1, v22);
  (*(*(v23 - 8) + 8))(v1, v23);
  OUTLINED_FUNCTION_44_30();
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A78, &unk_21701E4A0);
  sub_216852B94();
  sub_21700A1C4();
  (*(v11 + 8))(v15, v9);
  sub_216699778(v22, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2878()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for GroupedTextListLockup(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB9AB0;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC8, &qword_21701E4D0);
  v23 = sub_216852C84();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2A90()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for EmptyStateLockup(0);
  OUTLINED_FUNCTION_31_2(v2, 1, v13);
  if (v17)
  {
    v14 = &qword_27CAB9B08;
    v15 = v2;
LABEL_7:
    sub_216699778(v15, v14);
    v18 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, &unk_217014E30, *(v13 + 20));
  OUTLINED_FUNCTION_32_38();
  v16 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v16);
  if (v17)
  {
    v14 = &qword_27CAB6D58;
    v15 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v19 = OUTLINED_FUNCTION_113();
  v20(v19);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B20, &unk_21706F870);
  v21 = sub_216852E6C();
  OUTLINED_FUNCTION_5_144(v21);
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2CBC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_115();
  v13 = type metadata accessor for SearchLandingBrickLockup(0);
  v14 = OUTLINED_FUNCTION_14_87(v13);
  if (v19)
  {
    v16 = &qword_27CAB9B38;
    v17 = v2;
LABEL_7:
    sub_216699778(v17, v16);
    v20 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v14, v15, &qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_32_38();
  v18 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v18);
  if (v19)
  {
    v16 = &qword_27CAB6D58;
    v17 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v21 = OUTLINED_FUNCTION_113();
  v22(v21);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B50, &qword_21701E580);
  v23 = sub_216853068();
  OUTLINED_FUNCTION_5_144(v23);
  v24 = OUTLINED_FUNCTION_15_77();
  v25(v24);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF2ED4@<X0>(uint64_t a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_21700DAF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  if (a1)
  {
    v22[1] = a4;
    v17 = sub_2170076F4();
    sub_21700EDC4();

    v18 = sub_21700D7A4();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      sub_216BE5AD4(a3 & 1, v16);
      (*(*(v18 - 8) + 8))(v13, v18);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
      goto LABEL_6;
    }

    sub_216699778(v13, &qword_27CAB6D58);
  }

  v19 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE00, &qword_21706F7E0);
  v20 = sub_216EF6C88();
  v22[2] = &_s20BubbleTipPopoverViewVN;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_21700A1C4();
  (*(v8 + 8))(v10, v7);
  return sub_216699778(v16, &qword_27CAB6D58);
}

void sub_216EF31A4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = _s27BannerNavigationItemAdaptorVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v14 = *v7;
  v13 = v7[1];
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  swift_storeEnumTagMultiPayload();
  v15 = (v12 + *(v8 + 20));
  *v15 = v14;
  v15[1] = v13;
  *(v12 + *(v8 + 24)) = v5;
  sub_21700DF14();

  MEMORY[0x21CE9B900](v12, v3, v8, v1);
  sub_216EF8278(v12, _s27BannerNavigationItemAdaptorVMa);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF3354(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_217009104();
  return v3;
}

uint64_t sub_216EF3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v87 = a2;
  v88 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v86 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v85 = v9 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEB8, &qword_21706FC98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v81 = v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEC0, &unk_21706FCA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v84 = v13;
  v73 = sub_2170098A4();
  OUTLINED_FUNCTION_1();
  v78 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v17 - v16);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  sub_2170090F4();
  OUTLINED_FUNCTION_3_121();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_171();
  v74 = _s15PaddingModifierVMa(0);
  v32 = *(v74 + 24);
  v80 = v2;
  v33 = v2 + v32;
  v34 = *v33;
  v35 = *(v33 + 8);
  v76 = v28;
  if (v35 != 1)
  {

    sub_21700ED94();
    v36 = sub_217009C34();
    OUTLINED_FUNCTION_45_32(v36, &dword_216679000, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    (*(v30 + 8))(v4, v3);
  }

  sub_216EF32B4();
  v39 = v38;
  v79 = v40;
  v42 = v41;
  if (v35)
  {
    v43 = *&v34;
  }

  else
  {

    sub_21700ED94();
    v44 = sub_217009C34();
    OUTLINED_FUNCTION_45_32(v44, &dword_216679000, v45, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    (*(v30 + 8))(v4, v3);
    v43 = v90;
  }

  v46 = v76;
  sub_217007784();
  OUTLINED_FUNCTION_42_0();
  v75 = swift_dynamicCastClass();
  sub_216C0C900();
  v47 = v78;
  v48 = v73;
  (*(v78 + 104))(v25, *MEMORY[0x277CE0558], v73);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v48);
  v49 = *(v77 + 48);
  sub_216683A80(v46, v20, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v25, &v20[v49], &qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_31_2(v20, 1, v48);
  if (!v50)
  {
    sub_216683A80(v20, v5, &qword_27CAB8600, &qword_217020AD0);
    OUTLINED_FUNCTION_31_2(&v20[v49], 1, v48);
    if (!v50)
    {
      v51 = v72;
      (*(v47 + 32))(v72, &v20[v49], v48);
      sub_216EF8E18(&qword_280E2A858, MEMORY[0x277CE0570]);
      LODWORD(v77) = sub_21700E494();
      v52 = *(v47 + 8);
      v52(v51, v48);
      sub_216699778(v25, &qword_27CAB8600);
      sub_216699778(v46, &qword_27CAB8600);
      v52(v5, v48);
      v53 = OUTLINED_FUNCTION_14_63();
      sub_216699778(v53, v54);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_48_27(v25);
    OUTLINED_FUNCTION_48_27(v46);
    (*(v47 + 8))(v5, v48);
LABEL_14:
    sub_216699778(v20, &qword_27CAB8708);
    LODWORD(v77) = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_27(v25);
  OUTLINED_FUNCTION_48_27(v46);
  OUTLINED_FUNCTION_31_2(&v20[v49], 1, v48);
  if (!v50)
  {
    goto LABEL_14;
  }

  sub_216699778(v20, &qword_27CAB8600);
  LODWORD(v77) = 1;
LABEL_15:
  sub_217009CB4();
  sub_217007F24();
  OUTLINED_FUNCTION_42_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEC8, &qword_21706FCB0);
  OUTLINED_FUNCTION_34();
  v56 = v81;
  (*(v55 + 16))(v81, v89);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCED0, &qword_21706FCB8);
  OUTLINED_FUNCTION_34_37(v57);
  sub_217009CD4();
  sub_217007F24();
  OUTLINED_FUNCTION_42_35();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCED8, &qword_21706FCC0);
  OUTLINED_FUNCTION_34_37(v58);
  v59 = sub_217009C94();
  sub_217007F24();
  v60 = v56 + *(v82 + 36);
  *v60 = v59;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = sub_21700B314();
  MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0, &qword_21706FCC8);
  sub_216EF8B14();
  sub_216EF8B74(&qword_280E2AE50, &qword_27CACCEE0, &qword_21706FCC8, sub_216EF8B14);
  v67 = v84;
  sub_21700AB34();
  sub_216699778(v56, &qword_27CACCEB8);
  KeyPath = swift_getKeyPath();
  v69 = v67 + *(v83 + 36);
  *v69 = KeyPath;
  *(v69 + 8) = v43 - v39 - v42;
  v70 = v85;
  sub_2170099C4();
  sub_216EF8CAC();
  OUTLINED_FUNCTION_8();
  sub_21700A784();
  (*(v86 + 8))(v70, v88);
  return sub_216699778(v67, &qword_27CACCEC0);
}

uint64_t sub_216EF3D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v8 = a3;
  v9 = a2;
  v15 = sub_217009CA4();
  sub_216EF3E5C(v9, v8, a5, a6, a7);
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_216683A80(a1, a4, &qword_27CACCEB8, &qword_21706FC98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0, &qword_21706FCC8);
  v25 = a4 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

double sub_216EF3E5C(char a1, char a2, double a3, double a4, double a5)
{
  v9 = sub_2170090F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14)
    {
      if ((a2 & 1) == 0)
      {
        v16 = _s15PaddingModifierVMa(0);
        v17 = v5 + *(v16 + 28);
        v18 = *v17;
        if (*(v17 + 8) == 1)
        {
          if ((v18 & 1) == 0)
          {
            return a5;
          }
        }

        else
        {

          sub_21700ED94();
          v19 = sub_217009C34();
          sub_217007BC4();

          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v18, 0);
          (*(v10 + 8))(v12, v9);
          if (v23[15] != 1)
          {
            return a5;
          }
        }

        v20 = v5 + *(v16 + 32);
        v21 = *v20;
        if (*(v20 + 8) == 1)
        {
          if (v21)
          {
            return a5;
          }
        }

        else
        {

          sub_21700ED94();
          v22 = sub_217009C34();
          sub_217007BC4();

          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v21, 0);
          (*(v10 + 8))(v12, v9);
          if (v23[14] == 1)
          {
            return a5;
          }
        }
      }

      return 38.0;
    }

    else if (a2)
    {
      return 38.0;
    }
  }

  return a5;
}

uint64_t sub_216EF40FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_217009CA4();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_216683A80(a1, a2, &qword_27CACCEB8, &qword_21706FC98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0, &qword_21706FCC8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_216EF41A8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = v0[2];
  v7 = v0[3];

  if ((v6 & 1) == 0)
  {
    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    v5 = v16[1];
  }

  if (!v5 || (v10 = sub_216A53B88(), , !v10) || (v12 = *(v10 + 24), v11 = *(v10 + 32), sub_21700DF14(), , !v11))
  {
    if (!v7)
    {

      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_13:

    v14 = 0;
    return v14 & 1;
  }

  if (v12 == v8 && v11 == v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21700F7D4();
  }

  return v14 & 1;
}

void sub_216EF4390()
{
  OUTLINED_FUNCTION_49();
  v41 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v40 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v4 - v3);
  v42 = sub_2170098F4();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7();
  v7 = (v6 - v5);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDA8, &qword_21706F7A0);
  OUTLINED_FUNCTION_1();
  v49 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v10);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDB0, &qword_21706F7A8);
  OUTLINED_FUNCTION_1();
  v48 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDB8, &qword_21706F7B0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDC0, &qword_21706F7B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v17);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDC8, &qword_21706F7C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  memcpy(v57, v0, sizeof(v57));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0, &qword_21706F7C8);
  sub_21700AED4();
  OUTLINED_FUNCTION_26_52();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v20);
  OUTLINED_FUNCTION_36_44();
  *v7 = sub_21700AEF4();
  (*(v43 + 104))(v7, *MEMORY[0x277CDE248], v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD8, &qword_21706F7D0);
  type metadata accessor for PopoverProvider.Popover();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDE0, &qword_21706F7D8);
  OUTLINED_FUNCTION_2_22();
  sub_21680DFBC(v21, &qword_27CACCDD8);
  sub_216EF8E18(&qword_27CACCDF0, type metadata accessor for PopoverProvider.Popover);
  sub_216EF6B94();
  sub_21700AAC4();

  (*(v43 + 8))(v7, v42);

  v59 = v57[1];
  v22 = v57[0];
  v58 = v57[0];
  v23 = v57[1];

  if ((v23 & 1) == 0)
  {
    sub_21700ED94();
    v24 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    OUTLINED_FUNCTION_8();
    swift_getAtKeyPath();
    sub_216699778(&v58, &unk_27CACCE10);
    (*(v40 + 8))(v39, v41);
    v22 = v56;
  }

  if (v22)
  {
    sub_216A53B88();
  }

  OUTLINED_FUNCTION_26_52();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v25);
  OUTLINED_FUNCTION_36_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC350, &unk_217026790);
  swift_getOpaqueTypeConformance2();
  sub_216EF6CE4();
  sub_21700AB04();

  (*(v49 + 8))(v55, v51);
  OUTLINED_FUNCTION_26_52();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v26);
  (*(v48 + 32))(v47, v45, v50);
  v27 = (v47 + *(v44 + 36));
  *v27 = sub_216EF6D98;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  OUTLINED_FUNCTION_26_52();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v28);
  sub_2167C5834(v47, v52, &qword_27CACCDB8, &qword_21706F7B0);
  v29 = (v52 + *(v46 + 36));
  *v29 = 0;
  v29[1] = 0;
  v29[2] = sub_216EF6DA0;
  v29[3] = v28;
  OUTLINED_FUNCTION_26_52();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v30);
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  type metadata accessor for MusicTabChangePublisher(0);
  sub_216EF8E18(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
  OUTLINED_FUNCTION_42_0();
  v31 = sub_217008CF4();
  v33 = v32;
  sub_2167C5834(v52, v54, &qword_27CACCDC0, &qword_21706F7B8);
  v34 = (v54 + *(v53 + 36));
  *v34 = v31;
  v34[1] = v33;
  v34[2] = sub_216EF6DC8;
  v34[3] = v30;
  OUTLINED_FUNCTION_26_52();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v35);
  OUTLINED_FUNCTION_26_52();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v36);
  OUTLINED_FUNCTION_26_52();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v37);
  OUTLINED_FUNCTION_26_52();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v38);
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  sub_216EF6E30();
  sub_216DE8638();
  sub_21700A7E4();

  sub_216699778(v54, &qword_27CACCDC8);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF4D8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v26 = sub_2170090F4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE00, &qword_21706F7E0);
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE50, &qword_21706F808);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDE0, &qword_21706F7D8);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - v13;
  v15 = *(*a1 + 16);
  KeyPath = swift_getKeyPath();
  v32[0] = v15;
  v32[1] = KeyPath;
  v33 = 0;
  sub_216EF6C88();
  sub_21700A264();

  v35 = a2[8];
  v17 = *a2;
  v34 = *a2;
  v18 = v35;

  if ((v18 & 1) == 0)
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v34, &unk_27CACCE10);
    (*(v5 + 8))(v7, v26);
    v17 = v32[0];
  }

  if (v17 && (v20 = sub_216A53B88(), , v20))
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  sub_216EF2ED4(v21, 1, v12);

  (*(v8 + 8))(v10, v29);
  v22 = swift_allocObject();
  memcpy((v22 + 16), a2, 0x48uLL);
  (*(v28 + 32))(v14, v12, v30);
  v23 = &v14[*(v27 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_216EF8270;
  *(v23 + 3) = v22;
  sub_2167C5834(v14, v31, &qword_27CACCDE0, &qword_21706F7D8);
  return sub_216EF6B5C(a2, v32);
}

uint64_t sub_216EF51A0(uint64_t *a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = *a1;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v13, &unk_27CACCE10);
    result = (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (v6)
  {
    v11 = *(a1 + 1);
    v12 = v11;
    sub_216EF8210(&v12, v10);
    sub_216A57208(&v11);
  }

  return result;
}

uint64_t sub_216EF533C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_280E73D20);
  sub_216EF6B5C(a3, __dst);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  sub_216EF7174(a3);
  if (os_log_type_enabled(v9, v10))
  {
    v29 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446466;
    v13 = *(a3 + 2);
    v14 = *(a3 + 3);
    __dst[0] = 46;
    __dst[1] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v13, v14);
    v15 = sub_2166A85FC(__dst[0], __dst[1], &v32);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v35 = a3[8];
    v16 = *a3;
    v34 = *a3;
    LOBYTE(v15) = v35;

    if ((v15 & 1) == 0)
    {
      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216699778(&v34, &unk_27CACCE10);
      (*(v5 + 8))(v7, v29);
      v16 = __dst[0];
    }

    if (v16)
    {
      v18 = sub_216A53B88();

      if (v18)
      {
        v19 = *(v18 + 24);
        v16 = *(v18 + 32);
        sub_21700DF14();
      }

      else
      {
        v19 = 0;
        v16 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    __dst[0] = v19;
    __dst[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    v20 = sub_21700E594();
    v22 = sub_2166A85FC(v20, v21, &v32);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_216679000, v9, v10, "💬 activePopoverChanged %{public}s -> %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v12, -1, -1);
    MEMORY[0x21CEA1440](v11, -1, -1);

    v4 = v29;
  }

  else
  {
  }

  memcpy(__dst, a3, sizeof(__dst));
  v33 = a3[8];
  v23 = *a3;
  v32 = *a3;
  v24 = v33;

  if ((v24 & 1) == 0)
  {
    sub_21700ED94();
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v32, &unk_27CACCE10);
    (*(v5 + 8))(v7, v4);
    v23 = v30;
  }

  if (v23)
  {
    v26 = sub_216A53B88();
  }

  else
  {
    v26 = 0;
  }

  sub_216EF5774(v26);
}

void *sub_216EF5774(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  if (a1 && ((v29 = *(v1 + 40), a1[3] == v3) ? (v8 = a1[4] == v2) : (v8 = 0), v8 || (sub_21700F7D4() & 1) != 0))
  {
    v9 = qword_280E416F8;

    sub_21700DF14();
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E73D20);
    j__swift_retain_0();

    sub_21700DF14();

    v11 = v6;
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    j__swift_release();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v30 = v15;
      v31 = 46;
      v32 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v3, v2);

      v16 = sub_2166A85FC(46, 0xE100000000000000, &v30);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = v29;
      LOBYTE(v31) = v29;
      v32 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
      sub_21700AEB4();
      v18 = sub_21700E594();
      v20 = sub_2166A85FC(v18, v19, &v30);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_216679000, v12, v13, "💬 Should show popover for placement: %{public}s during view state: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v15, -1, -1);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    else
    {

      v17 = v29;
    }

    LOBYTE(v31) = v17;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
    sub_21700AEB4();
    if (v30 != 2)
    {
    }

    v31 = v4;
    v32 = v11;
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0, &qword_21706F7C8);
  }

  else
  {
    v31 = v4;
    v32 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0, &qword_21706F7C8);
    sub_21700AEB4();
    result = v30;
    if (!v30)
    {
      return result;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_280E73D20);
    j__swift_retain_0();

    sub_21700DF14();

    v23 = sub_217007C84();
    v24 = v6;
    v25 = sub_21700EDA4();
    j__swift_release();

    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446210;
      v30 = v27;
      v31 = 46;
      v32 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v3, v2);
      v28 = sub_2166A85FC(46, 0xE100000000000000, &v30);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_216679000, v23, v25, "💬 Should dismiss popover for placement: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x21CEA1440](v27, -1, -1);
      MEMORY[0x21CEA1440](v26, -1, -1);
    }

    v31 = v4;
    v32 = v24;
    v30 = 0;
  }

  return sub_21700AEC4();
}

void *sub_216EF5C7C(uint64_t *a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, &v20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v21 = v10;
    *v9 = 136446210;
    v11 = a1[2];
    v12 = a1[3];
    *&v20 = 46;
    *(&v20 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v20, *(&v20 + 1), &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, "💬 onAppear %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  v20 = *(a1 + 5);
  v21 = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
  result = sub_21700AEB4();
  if (!v19)
  {
    v21 = v20;
    LOBYTE(v19) = 2;
    sub_21700AEC4();
    v23 = *(a1 + 8);
    v15 = *a1;
    v22 = *a1;
    v16 = v23;

    if ((v16 & 1) == 0)
    {
      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216699778(&v22, &unk_27CACCE10);
      result = (*(v3 + 8))(v5, v2);
      v15 = v21;
    }

    if (v15)
    {
      v21 = *(a1 + 1);
      v19 = *(a1 + 1);
      sub_216EF8210(&v21, v18);
      sub_216A54608(&v19);
    }
  }

  return result;
}

void sub_216EF5FAC(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, 0x48uLL);
  if (sub_216EF41A8())
  {
    *__dst = *(a2 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
    sub_21700AEB4();
    if (v15 - 3 > 1)
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v11 = sub_217007CA4();
      __swift_project_value_buffer(v11, qword_280E73D20);
      v12 = sub_217007C84();
      v13 = sub_21700EDA4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_216679000, v12, v13, "💬 Tab changed back to the popover view", v14, 2u);
        MEMORY[0x21CEA1440](v14, -1, -1);
      }
    }

    else
    {
      *__dst = *(a2 + 56);
      v15 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0, &qword_21706F7C8);
      sub_21700AEC4();
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_280E73D20);
      sub_216EF6B5C(a2, __dst);
      v4 = sub_217007C84();
      v5 = sub_21700EDA4();
      sub_216EF7174(a2);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v15 = v7;
        *v6 = 136446210;
        v8 = *(a2 + 16);
        v9 = *(a2 + 24);
        __dst[0] = 46;
        __dst[1] = 0xE100000000000000;
        MEMORY[0x21CE9F490](v8, v9);
        v10 = sub_2166A85FC(__dst[0], __dst[1], &v15);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_216679000, v4, v5, "💬 Tab changed to another view, popover should disappear: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_216EF6250(uint64_t *a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, v20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v19 = v10;
    *v9 = 136446210;
    v11 = a1[2];
    v12 = a1[3];
    v20[0] = 46;
    v20[1] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v20[0], v20[1], &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, "💬 handlePopoverViewWillAppear %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  *v20 = *(a1 + 5);
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
  sub_21700AEC4();
  v22 = *(a1 + 8);
  v14 = *a1;
  v21 = *a1;
  v15 = v22;

  if ((v15 & 1) == 0)
  {
    sub_21700ED94();
    v17 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v21, &unk_27CACCE10);
    result = (*(v3 + 8))(v5, v2);
    v14 = v20[0];
  }

  if (v14)
  {
    v19 = *(a1 + 1);
    *v20 = v19;
    sub_216EF8210(v20, v18);
    sub_216A54608(&v19);
  }

  return result;
}

uint64_t sub_216EF6558(uint64_t a1)
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  sub_216EF6B5C(a1, &v12);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    *&v12 = 46;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v7, v8);
    v9 = sub_2166A85FC(v12, *(&v12 + 1), &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_216679000, v3, v4, "💬 handlePopoverViewWillDisappear %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v12 = *(a1 + 40);
  LOBYTE(v11) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
  sub_21700AEC4();
  v12 = *(a1 + 56);
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0, &qword_21706F7C8);
  return sub_21700AEC4();
}

uint64_t sub_216EF6730(uint64_t a1, const char *a2, char a3)
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, &v16);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    *&v16 = 46;
    *(&v16 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v16, *(&v16 + 1), &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  v16 = *(a1 + 40);
  LOBYTE(v15) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48, &unk_21706F7F8);
  return sub_21700AEC4();
}

void sub_216EF68E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_216683A80(v23, &a9 - v34, &qword_27CAB7858, &qword_217017740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v36 + 32))(v25, v35);
  }

  else
  {
    sub_21700ED94();
    v37 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_216EF6AAC()
{
  result = qword_27CACCD98;
  if (!qword_27CACCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD98);
  }

  return result;
}

unint64_t sub_216EF6B00()
{
  result = qword_27CACCDA0;
  if (!qword_27CACCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCDA0);
  }

  return result;
}

unint64_t sub_216EF6B94()
{
  result = qword_27CACCDF8;
  if (!qword_27CACCDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDE0, &qword_21706F7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE00, &qword_21706F7E0);
    sub_216EF6C88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCDF8);
  }

  return result;
}

unint64_t sub_216EF6C88()
{
  result = qword_27CACCE08;
  if (!qword_27CACCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE08);
  }

  return result;
}

unint64_t sub_216EF6CE4()
{
  result = qword_27CACCE18;
  if (!qword_27CACCE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC350, &unk_217026790);
    sub_216EF8E18(&qword_27CACCE20, type metadata accessor for PopoverProvider.Popover);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE18);
  }

  return result;
}

unint64_t sub_216EF6E30()
{
  result = qword_27CACCE28;
  if (!qword_27CACCE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC8, &qword_21706F7C0);
    sub_216EF6EBC();
    sub_216EF7120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE28);
  }

  return result;
}

unint64_t sub_216EF6EBC()
{
  result = qword_27CACCE30;
  if (!qword_27CACCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC0, &qword_21706F7B8);
    sub_216EF6F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE30);
  }

  return result;
}

unint64_t sub_216EF6F48()
{
  result = qword_27CACCE38;
  if (!qword_27CACCE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDB8, &qword_21706F7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDA8, &qword_21706F7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC350, &unk_217026790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDD8, &qword_21706F7D0);
    type metadata accessor for PopoverProvider.Popover();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDE0, &qword_21706F7D8);
    sub_21680DFBC(&qword_27CACCDE8, &qword_27CACCDD8);
    sub_216EF8E18(&qword_27CACCDF0, type metadata accessor for PopoverProvider.Popover);
    sub_216EF6B94();
    swift_getOpaqueTypeConformance2();
    sub_216EF6CE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE38);
  }

  return result;
}

unint64_t sub_216EF7120()
{
  result = qword_27CACCE40;
  if (!qword_27CACCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE40);
  }

  return result;
}

double sub_216EF7538(uint64_t a1, char a2, uint64_t a3)
{
  v15 = a3;
  v3 = sub_217007504();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170084B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170085B4();
  sub_216EF8E18(&qword_27CABE790, MEMORY[0x277CDF7F8]);
  sub_21700EC54();
  sub_21700EC94();
  if (sub_21700EC84() == 1)
  {
    sub_2170085C4();
    LOBYTE(v18[0]) = 0;
    LOBYTE(v19) = 0;
    sub_217008484();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_2170074E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCF08, &qword_21706FD10);
    sub_2170074D4();
    *(swift_allocObject() + 16) = xmmword_217013D90;
    v18[3] = &_s16PopoverContainerVN;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_21700E514();
    }

    sub_2170074C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    sub_2170074B4();
    sub_2170074F4();

    (*(v16 + 8))(v5, v17);
    return 0.0;
  }

  return v11;
}

void (*sub_216EF7904(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_216EF7978(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2170090F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(a2, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(a2) = v11[15];
  }

  return a2 & 1;
}

uint64_t sub_216EF7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {

    sub_216EF7B54(v7, v7, a2, a3 & 1, a4);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE60, &qword_21706FA78);

  return __swift_storeEnumTagSinglePayload(a4, v8, 1, v9);
}

uint64_t sub_216EF7B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v33 = a1;
  v46 = a5;
  v47 = sub_217008AF4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_217009BD4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_217009854();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_217009734();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_217007624();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE68, &qword_21706FA80);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE70, &qword_21706FA88);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE78, &qword_21706FA90);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v22 = &v29 - v21;

  sub_217007614();
  sub_21700B3B4();
  sub_217008BB4();
  (*(v11 + 32))(v16, v13, v30);
  memcpy(&v16[*(v14 + 36)], __src, 0x70uLL);
  sub_217009724();
  v23 = sub_216EF84F8();
  sub_21700A7F4();
  (*(v31 + 8))(v10, v32);
  sub_216699778(v16, &qword_27CACCE68);
  sub_217009844();
  v48 = v14;
  v49 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A914();
  (*(v36 + 8))(v8, v37);
  (*(v18 + 8))(v20, v17);
  if (sub_216EF7978(v38, v40, v39 & 1))
  {
    v25 = v41;
    sub_217009BB4();
  }

  else
  {
    v25 = v41;
    sub_217009BC4();
  }

  v26 = v44;
  sub_217008AE4();
  v48 = v17;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_21700A934();
  (*(v45 + 8))(v26, v47);
  (*(v42 + 8))(v25, v43);
  return (*(v34 + 8))(v22, v27);
}

uint64_t sub_216EF8278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216EF82F0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216EF8344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *_s15PopoverModifierV9ViewStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EF8488()
{
  result = qword_27CACCE58;
  if (!qword_27CACCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE58);
  }

  return result;
}

unint64_t sub_216EF84F8()
{
  result = qword_27CACCE80;
  if (!qword_27CACCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE68, &qword_21706FA80);
    sub_216EF8E18(&qword_280E48610, MEMORY[0x277CEE7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE80);
  }

  return result;
}

void sub_216EF861C(uint64_t a1)
{
  sub_217007714();
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      sub_216EF8810(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_216EF8810(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216EF8750(uint64_t a1)
{
  sub_2167C86F8(319);
  if (v1 <= 0x3F)
  {
    sub_216EF8810(319, &qword_280E44FC8, &type metadata for PlacementID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216EF8810(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_216EF8860()
{
  result = qword_27CACCE88;
  if (!qword_27CACCE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE90, &qword_21706FB20);
    sub_216EF88E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE88);
  }

  return result;
}

unint64_t sub_216EF88E4()
{
  result = qword_27CACCE98;
  if (!qword_27CACCE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE60, &qword_21706FA78);
    sub_21680DFBC(&qword_27CACCEA0, &unk_27CACCEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE78, &qword_21706FA90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE70, &qword_21706FA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE68, &qword_21706FA80);
    sub_216EF84F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE98);
  }

  return result;
}

unint64_t sub_216EF8A64()
{
  result = qword_27CACCEB0;
  if (!qword_27CACCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCEB0);
  }

  return result;
}

uint64_t sub_216EF8B74(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_216EF8BF4()
{
  result = qword_280E2B200;
  if (!qword_280E2B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCED0, &qword_21706FCB8);
    sub_21680DFBC(&qword_280E2A878, &qword_27CACCEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B200);
  }

  return result;
}

unint64_t sub_216EF8CAC()
{
  result = qword_27CACCEE8;
  if (!qword_27CACCEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEC0, &unk_21706FCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEB8, &qword_21706FC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEE0, &qword_21706FCC8);
    sub_216EF8B14();
    sub_216EF8B74(&qword_280E2AE50, &qword_27CACCEE0, &qword_21706FCC8, sub_216EF8B14);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCEE8);
  }

  return result;
}

uint64_t sub_216EF8E18(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216EF8E5C()
{
  result = qword_280E2AA20;
  if (!qword_280E2AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CACCF10, &qword_21706FD18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCF00, &qword_21706FD08);
    type metadata accessor for UnifiedMessagesBannerNavigationItemAdaptor(255);
    sub_21680DFBC(&qword_280E2A870, &qword_27CACCF00);
    sub_216EF8E18(qword_280E2D080, type metadata accessor for UnifiedMessagesBannerNavigationItemAdaptor);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA20);
  }

  return result;
}

uint64_t sub_216EF9070(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_21700F164();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216EF9120@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_21700F164();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_216EF9210()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  sub_2170089F4();
  v4 = *((v2 & v1) + 0x58);
  v36 = *(v4 + 8);
  v37 = sub_21698EDC8();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = OpaqueTypeMetadata2;
  v33[0] = OpaqueTypeMetadata2;
  v33[1] = MEMORY[0x277CE1428];
  v28 = OpaqueTypeConformance2;
  v33[2] = OpaqueTypeConformance2;
  v34 = MEMORY[0x277CE1410];
  v7 = sub_217009884();
  OUTLINED_FUNCTION_16();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v31 = v4;
  v32 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  OUTLINED_FUNCTION_16();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  sub_216EF9120(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v15 + 8))(v18, v13);
  }

  (*(v20 + 32))(v23, v18, AssociatedTypeWitness);
  [v0 frame];
  CGRectGetWidth(v38);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = v31;
  *(&v28 - 4) = v32;
  *(&v28 - 3) = v27;
  *(&v28 - 2) = v23;
  *(&v28 - 1) = v26;
  sub_217009874();
  sub_217009C84();
  v34 = v7;
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_217009864();
  (*(v30 + 8))(v11, v7);
  MEMORY[0x21CE9FE00](v33);
  return (*(v20 + 8))(v23, AssociatedTypeWitness);
}

uint64_t sub_216EF960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v55 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21700F164();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v41 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v50 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v19 = sub_2170089F4();
  v51 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v43 = *(a3 + 8);
  v20 = v43;
  v44 = &v41 - v21;
  v22 = sub_21698EDC8();
  v58 = v20;
  v59 = v22;
  WitnessTable = swift_getWitnessTable();
  v56 = *&v19;
  v57 = WitnessTable;
  v46 = WitnessTable;
  v47 = MEMORY[0x277D7EDB8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v48 = OpaqueTypeMetadata2;
  v49 = v25;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v45 = &v41 - v29;
  v30 = *(v12 + 16);
  v30(v15, a1, AssociatedTypeWitness, v28);
  v41 = a3;
  (*(a3 + 40))(v15, a2, a3);
  swift_getKeyPath();
  v56 = a5;
  v31 = v44;
  sub_21700A3D4();

  (*(v50 + 8))(v18, a2);
  v32 = v52;
  (v30)(v52, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v42;
  v35 = v46;
  sub_216BE53B0(v32, 0, 1, v19, AssociatedTypeWitness, v46, AssociatedConformanceWitness, v42);
  (*(v53 + 8))(v32, v54);
  (*(v51 + 8))(v31, v19);
  v56 = *&v19;
  v57 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v45;
  v38 = v48;
  sub_2166C24DC(v34, v48, OpaqueTypeConformance2);
  v39 = *(v49 + 8);
  v39(v34, v38);
  sub_2166C24DC(v37, v38, OpaqueTypeConformance2);
  return (v39)(v37, v38);
}

id sub_216EF9B24(double a1, double a2, double a3, double a4)
{
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v11 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v4 + v9, 1, 1, AssociatedTypeWitness);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ItemViewCell(0, v11, v10, v13);
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_216EF9C48(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, AssociatedTypeWitness);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ItemViewCell(0, v5, v4, v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_216EF9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ItemViewCell(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_216EF9DD8(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  swift_getAssociatedTypeWitness();
  v3 = sub_21700F164();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t sub_216EF9F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCF98, &qword_21706FEB0);
  sub_216EFA16C(v2, (a1 + *(v10 + 44)));
  v11 = v2 + *(type metadata accessor for SocialProfileFollowRequestResponseHeaderView(0) + 20);
  v13 = *v11;
  v12 = *(v11 + 16);
  LOBYTE(v11) = *(v11 + 32);
  v25 = v13;
  v26 = v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13;

    sub_21700ED94();
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v14, *(&v25 + 1), v26, *(&v26 + 1), 0);
    (*(v6 + 8))(v9, v4);
    v25 = v27;
    v26 = v28;
  }

  v16 = sub_217009C84();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFA0, &qword_21706FEB8) + 36);
  *v17 = v16;
  v18 = v25;
  *(v17 + 24) = v26;
  *(v17 + 8) = v18;
  *(v17 + 40) = 0;
  v19 = sub_217009C74();
  v20 = sub_217008A34();
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFA8, &qword_21706FEC0) + 36);
  *v21 = v20;
  *(v21 + 8) = v19;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFB0, &unk_21706FEC8) + 36);
  sub_21700B2B4();
  v23 = sub_217009C84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0);
  *(v22 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_216EFA16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFB8, &unk_21706FED8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v11 = (a1 + *(type metadata accessor for SocialProfileFollowRequestResponseHeader(0) + 24));
  v13 = *v11;
  v12 = v11[1];
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_2167C6E08();
  *(inited + 32) = v13;
  *(inited + 40) = v12;
  sub_21700DF14();
  v14 = sub_216983808(37, inited);
  v39 = v15;
  v40 = v14;
  v16 = v15;
  v17 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  LOBYTE(inited) = sub_217009C84();
  sub_217007F24();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v46[0]) = 0;
  *v9 = sub_2170091A4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFC0, &qword_21706FF18);
  sub_216EFA4AC(a1, &v9[*(v27 + 44)]);
  sub_21700B3B4();
  sub_2170083C4();
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFC8, &qword_21706FF20) + 36)];
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 2) = v44;
  LOBYTE(a1) = sub_217009CA4();
  sub_217007F24();
  v30 = &v9[*(v4 + 44)];
  *v30 = a1;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_2166A6E54(v9, v6, &qword_27CACCFB8, &unk_21706FED8);
  v45[0] = v14;
  v45[1] = v16;
  v45[2] = 0;
  v45[3] = MEMORY[0x277D84F90];
  v45[4] = KeyPath;
  v45[5] = v17;
  LOBYTE(v45[6]) = inited;
  LOBYTE(v14) = inited;
  v45[7] = v20;
  v45[8] = v22;
  v45[9] = v24;
  v45[10] = v26;
  LOBYTE(v45[11]) = 0;
  v35 = v41;
  memcpy(v41, v45, 0x59uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFD0, &unk_21706FF28);
  sub_2166A6E54(v6, v35 + *(v36 + 48), &qword_27CACCFB8, &unk_21706FED8);
  sub_2166A6E54(v45, v46, &qword_27CAC40C8, &unk_21704B2A0);
  sub_216697664(v9, &qword_27CACCFB8, &unk_21706FED8);
  sub_216697664(v6, &qword_27CACCFB8, &unk_21706FED8);
  v46[0] = v40;
  v46[1] = v39;
  v46[2] = 0;
  v46[3] = MEMORY[0x277D84F90];
  v46[4] = KeyPath;
  v46[5] = v17;
  v47 = v14;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = v26;
  v52 = 0;
  return sub_216697664(v46, &qword_27CAC40C8, &unk_21704B2A0);
}

uint64_t sub_216EFA4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFD8, &qword_21706FF38);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFE0, &unk_21706FF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
  sub_2166A6E54(a1 + *(v19 + 36), &v35, &qword_27CAB6DB0, &qword_217016C00);
  if (v36)
  {
    sub_2166A0F18(&v35, v37);
    sub_2166A0F18(v37, v6);
    v20 = v4[11];
    v21 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v20, 1, 1, v21);
    v22 = v4[12];
    *(v6 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v23 = v6 + v4[13];
    *v23 = swift_getKeyPath();
    v23[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216EFA914;
    v6[6] = 0;
    sub_21678818C(v6, v18, &qword_27CACCFD8, &qword_21706FF38);
    v24 = v18;
    v25 = 0;
  }

  else
  {
    sub_216697664(&v35, &qword_27CAB6DB0, &qword_217016C00);
    v24 = v18;
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
  sub_2166A6E54(a1 + *(v19 + 32), &v35, &qword_27CAB6DB0, &qword_217016C00);
  if (v36)
  {
    sub_2166A0F18(&v35, v37);
    sub_2166A0F18(v37, v6);
    v26 = v4[11];
    v27 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v26, 1, 1, v27);
    v28 = v4[12];
    *(v6 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v29 = v6 + v4[13];
    *v29 = swift_getKeyPath();
    v29[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216EFA930;
    v6[6] = 0;
    sub_21678818C(v6, v15, &qword_27CACCFD8, &qword_21706FF38);
    v30 = v15;
    v31 = 0;
  }

  else
  {
    sub_216697664(&v35, &qword_27CAB6DB0, &qword_217016C00);
    v30 = v15;
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v4);
  sub_2166A6E54(v18, v12, &qword_27CACCFE0, &unk_21706FF40);
  sub_2166A6E54(v15, v9, &qword_27CACCFE0, &unk_21706FF40);
  sub_2166A6E54(v12, a2, &qword_27CACCFE0, &unk_21706FF40);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFE8, &qword_21706FF50);
  v33 = a2 + *(v32 + 48);
  *v33 = 0x402C000000000000;
  *(v33 + 8) = 0;
  sub_2166A6E54(v9, a2 + *(v32 + 64), &qword_27CACCFE0, &unk_21706FF40);
  sub_216697664(v15, &qword_27CACCFE0, &unk_21706FF40);
  sub_216697664(v18, &qword_27CACCFE0, &unk_21706FF40);
  sub_216697664(v9, &qword_27CACCFE0, &unk_21706FF40);
  return sub_216697664(v12, &qword_27CACCFE0, &unk_21706FF40);
}

void *sub_216EFA94C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFF0, &qword_21706FFC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &__src[-v7];
  *v8 = sub_21700B3B4();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFF8, &qword_21706FFC8);
  sub_216EFAA98(a2, v8 + *(v10 + 44), v4);
  sub_21700B3B4();
  sub_217008BB4();
  sub_21678818C(v8, a3, &qword_27CACCFF0, &qword_21706FFC0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD000, &unk_21706FFD0);
  return memcpy((a3 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_216EFAA98@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>, __int16 a3@<W0>)
{
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0, &qword_217018C00);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v46 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD008, &qword_21706FFE0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(sub_217008B44() + 20);
  v21 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v22 + 104))(&v19[v20], v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v19 = _Q0;
  v28 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v30 = &v19[*(v14 + 44)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_216983738(a3);
  v33 = v32;
  v34 = a1();
  v35 = swift_getKeyPath();
  v36 = sub_217009EA4();
  v37 = swift_getKeyPath();
  *&v48 = v31;
  *(&v48 + 1) = v33;
  *&v49 = 0;
  *(&v49 + 1) = MEMORY[0x277D84F90];
  *&v50 = v35;
  *(&v50 + 1) = v34;
  *&v51 = v37;
  *(&v51 + 1) = v36;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  sub_2167D95A8();
  sub_21700A304();
  v52[0] = v48;
  v52[1] = v49;
  v52[2] = v50;
  v52[3] = v51;
  sub_216697664(v52, &qword_27CAB7E88, &unk_217018BF0);
  v45 = v16;
  sub_2166A6E54(v19, v16, &qword_27CACD008, &qword_21706FFE0);
  v38 = *(v7 + 16);
  v39 = v46;
  v38(v46, v12, v5);
  v40 = v47;
  sub_2166A6E54(v16, v47, &qword_27CACD008, &qword_21706FFE0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD010, &unk_217070020);
  v38(v40 + *(v41 + 48), v39, v5);
  v42 = *(v7 + 8);
  v42(v12, v5);
  sub_216697664(v19, &qword_27CACD008, &qword_21706FFE0);
  v42(v39, v5);
  return sub_216697664(v45, &qword_27CACD008, &qword_21706FFE0);
}

uint64_t type metadata accessor for SocialProfileFollowRequestResponseHeaderView(uint64_t a1)
{
  result = qword_280E2CD08;
  if (!qword_280E2CD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFAE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_216EFAED8(uint64_t a1)
{
  type metadata accessor for SocialProfileFollowRequestResponseHeader(319);
  if (v1 <= 0x3F)
  {
    sub_21692ED34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216EFAF5C()
{
  result = qword_27CACD018;
  if (!qword_27CACD018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFB0, &unk_21706FEC8);
    sub_216EFB014();
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20, &qword_2170180F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD018);
  }

  return result;
}

unint64_t sub_216EFB014()
{
  result = qword_27CACD020;
  if (!qword_27CACD020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFA8, &qword_21706FEC0);
    sub_216EFB0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD020);
  }

  return result;
}

unint64_t sub_216EFB0A0()
{
  result = qword_27CACD028;
  if (!qword_27CACD028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFA0, &qword_21706FEB8);
    sub_2166D9530(&qword_27CACD030, &qword_27CACD038, qword_217070060, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD028);
  }

  return result;
}

uint64_t type metadata accessor for ClearRecentSearchesAction(uint64_t a1)
{
  result = qword_280E35AF8;
  if (!qword_280E35AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFB1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void sub_216EFB44C(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD078, &qword_217070260);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21700B304() & 1) != 0 && a2 >= 0xA)
  {
    *a3 = a1;
    a3[1] = a2;
    _s11PlaceholderO5ModelOMa(0);
    swift_storeEnumTagMultiPayload();

    sub_21700DF14();
  }

  else
  {
    sub_216EFB604(a1, a2, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_216EFCA98(v8);
      *a3 = sub_216EFB6B4(a1, a2);
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v14;
    }

    else
    {
      sub_216EFC9D8(v8, v11);
      sub_216EFC9D8(v11, a3);
    }

    _s11PlaceholderO5ModelOMa(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_216EFB604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 0xA)
  {
    sub_216685F4C(0, &qword_280E29CF8, 0x277CD5D50);
    sub_216EFB834(a1, a2);
    sub_21700C3C4();
    v5 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
    *(a3 + *(v5 + 20)) = 0x3FF0000000000000;
    v6 = a3;
    v7 = 0;
  }

  else
  {
    v5 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
    v6 = a3;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

unint64_t sub_216EFB6B4(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = 0x636973756DLL;
      goto LABEL_11;
    case 2:
      v2 = 0x6F6E2E636973756DLL;
      goto LABEL_11;
    case 3:
      v2 = 0x7265646C6F66;
      goto LABEL_13;
    case 4:
      v2 = 0x6F6E2E636973756DLL;
      goto LABEL_13;
    case 5:
      v2 = 30324;
      goto LABEL_13;
    case 6:
      v2 = 0x696D2E636973756DLL;
      goto LABEL_13;
    case 7:
      v2 = 0x6F69646172;
      goto LABEL_13;
    case 8:
      v2 = 0x73726174697567;
      goto LABEL_11;
    case 9:
      v2 = 0xD000000000000013;
LABEL_11:
      sub_217009DB4();
      break;
    default:
      v2 = 0x662E6E6F73726570;
LABEL_13:
      sub_217009DD4();
      break;
  }

  return v2;
}

id sub_216EFB834(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(type metadata accessor for MonogramArtworkToken());
  sub_21700DF14();
  v4 = sub_216C49400(a1, a2, 0);
  if (qword_280E354B0 != -1)
  {
    swift_once();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CD5D50]) initWithToken:v4 dataSource:qword_280E73C20];

  return v5;
}

uint64_t sub_216EFB8F4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = sub_21700ACD4();
  sub_21700B3B4();
  sub_2170083C4();
  if (qword_280E396A0 != -1)
  {
    swift_once();
  }

  v6 = qword_280E396A8;
  v7 = sub_217009C84();

  v8 = sub_21700B3B4();
  v10 = v9;
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD040, &qword_217070218) + 36);
  sub_216EFBA6C(a1, a2, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD048, &qword_217070220);
  v13 = (v11 + *(result + 36));
  *v13 = v8;
  v13[1] = v10;
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v21;
  *(a3 + 48) = v22;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  return result;
}

uint64_t sub_216EFBA6C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a2;
  v59 = a3;
  v60 = sub_217006744();
  v47 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21700ADC4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD050, &qword_217070228);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD058, &qword_217070230);
  MEMORY[0x28223BE20](v56);
  v58 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD060, &qword_217070238);
  MEMORY[0x28223BE20](v49);
  v50 = &v44 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD068, &qword_217070240);
  MEMORY[0x28223BE20](v57);
  v53 = &v44 - v11;
  v12 = sub_21700C4B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_217007474();
  v16 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s11PlaceholderO5ModelOMa(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216EFB44C(v54, v55, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216EFC9D8(v24, v21);
      (*(v13 + 16))(v15, v21, v12);
      sub_217007484();
      v26 = v51;
      (*(v16 + 16))(v50, v18, v51);
      swift_storeEnumTagMultiPayload();
      sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
      sub_216EFC83C();
      v27 = v53;
      sub_217009554();
      sub_216681B64(v27, v58, &qword_27CACD068, &qword_217070240);
      swift_storeEnumTagMultiPayload();
      sub_216EFC780();
      sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
      sub_217009554();
      sub_21669987C(v27, &qword_27CACD068, &qword_217070240);
      (*(v16 + 8))(v18, v26);
      return sub_216EFCA3C(v21);
    }

    else
    {
      v39 = *v24;
      v40 = v24[1];
      sub_216685F4C(0, &qword_280E29B00, 0x277CBDA58);
      sub_216873ED4(v39, v40, 0);
      v41 = v46;
      sub_217006734();
      v42 = v47;
      v43 = v60;
      (*(v47 + 16))(v58, v41, v60);
      swift_storeEnumTagMultiPayload();
      sub_216EFC780();
      sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
      sub_217009554();
      return (*(v42 + 8))(v41, v43);
    }
  }

  else
  {
    sub_21700DF14();
    sub_21700ADD4();
    v29 = v44;
    v30 = v45;
    (*(v44 + 104))(v7, *MEMORY[0x277CE0FE0], v45);
    v31 = sub_21700AE04();

    (*(v29 + 8))(v7, v30);
    v32 = [objc_opt_self() tertiaryLabelColor];
    v33 = sub_21700AC44();
    *&v61 = v31;
    *(&v61 + 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F8, &unk_217070250);
    sub_2168751F8();
    v34 = v48;
    sub_21700A304();

    v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD070, &qword_217070248) + 36);
    *v35 = 0;
    *(v35 + 8) = 1;
    sub_21700B3B4();
    sub_2170083C4();
    v36 = (v34 + *(v52 + 36));
    v37 = v62;
    *v36 = v61;
    v36[1] = v37;
    v36[2] = v63;
    sub_216681B64(v34, v50, &qword_27CACD050, &qword_217070228);
    swift_storeEnumTagMultiPayload();
    sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    sub_216EFC83C();
    v38 = v53;
    sub_217009554();
    sub_216681B64(v38, v58, &qword_27CACD068, &qword_217070240);
    swift_storeEnumTagMultiPayload();
    sub_216EFC780();
    sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00], MEMORY[0x277CFBEF8]);
    sub_217009554();
    sub_21669987C(v38, &qword_27CACD068, &qword_217070240);
    return sub_21669987C(v34, &qword_27CACD050, &qword_217070228);
  }
}

uint64_t sub_216EFC454()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  sub_216847A1C(sub_216EFC4A8, 0);
  result = sub_21700AC44();
  qword_280E396A8 = result;
  return result;
}

id sub_216EFC4A8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 2)
  {
    v3 = 0.149019608;
    v4 = 0.160784314;
  }

  else
  {
    v3 = 0.91372549;
    v4 = 0.917647059;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:1.0];
}

uint64_t sub_216EFC538@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return sub_2167B8890(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI7ArtworkV11PlaceholderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EFC570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 8;
  if (v5 >= 0xA)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216EFC5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

void *sub_216EFC624(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_216EFC660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF5 && *(a1 + 32))
    {
      v2 = *a1 + 2147483637;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 9;
      if (v4 < 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EFC6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483638;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

unint64_t sub_216EFC780()
{
  result = qword_280E2ABD8;
  if (!qword_280E2ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD068, &qword_217070240);
    sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    sub_216EFC83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABD8);
  }

  return result;
}

unint64_t sub_216EFC83C()
{
  result = qword_280E2AFE0;
  if (!qword_280E2AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD050, &qword_217070228);
    sub_216EFC8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFE0);
  }

  return result;
}

unint64_t sub_216EFC8C8()
{
  result = qword_280E2B1A8;
  if (!qword_280E2B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD070, &qword_217070248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8, &unk_217070250);
    sub_2168751F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1A8);
  }

  return result;
}

uint64_t sub_216EFC990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216EFC9D8(uint64_t a1, uint64_t a2)
{
  v4 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EFCA3C(uint64_t a1)
{
  v2 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216EFCA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD078, &qword_217070260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216EFCB00(uint64_t a1)
{
  result = _s11PlaceholderO20ArtworkConfigurationVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_216EFCB80();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216EFCB80()
{
  result = qword_280E2A090;
  if (!qword_280E2A090)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E2A090);
  }

  return result;
}

unint64_t sub_216EFCBE0()
{
  result = qword_280E2AEC8;
  if (!qword_280E2AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD040, &qword_217070218);
    sub_216EFCC98();
    sub_2166D9530(&qword_280E2ACE8, &qword_27CACD048, &qword_217070220, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEC8);
  }

  return result;
}

unint64_t sub_216EFCC98()
{
  result = qword_280E2AFB0;
  if (!qword_280E2AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CACD080, &qword_2170702C8);
    sub_216DE8AEC();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFB0);
  }

  return result;
}

void sub_216EFCDB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for PushNotifications.Subscription(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216EFCF94();
  v14 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  swift_beginAccess();
  v15 = a2;
  v16 = sub_21693B60C();
  swift_endAccess();
  if (!v16)
  {
    sub_217006224();
    sub_2166A8A94();
    sub_21700E384();
  }

  *a6 = v15;
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  sub_21700DF14();

  sub_21700DF14();
  sub_217006214();
  sub_216EFE478(a6, v13);
  swift_isUniquelyReferenced_nonNull_native();
  sub_21693AD84();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v14);
  sub_21693AD70();
  *(a1 + v14) = v19;
  swift_endAccess();
  if (v16)
  {
  }

  else
  {
    sub_216EFCFE4();
  }
}

uint64_t sub_216EFCF94()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  v1 = sub_216EFD92C();
  sub_216EFDBF0(v1, v2);
}

void sub_216EFCFE4()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  swift_beginAccess();
  v1 = sub_21700DF14();
  v2 = sub_216AB428C(v1);
  v3 = *(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  if (v3)
  {
    sub_216EFE69C(v2, v3);
  }

  else
  {
  }
}

void sub_216EFD060(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120, &unk_21704A2E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = sub_2166AF66C(v8, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = v9;
  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v15 = type metadata accessor for PushNotifications.Subscription(0);
  sub_21700DF14();
  v16 = sub_2166ABD84();
  if (v17)
  {
    v18 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v2;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1D8, &unk_217029EE0);
    sub_21700F554();
    v14 = v31;
    v19 = *(v31 + 48);
    v20 = sub_217006224();
    (*(*(v20 - 8) + 8))(v19 + *(*(v20 - 8) + 72) * v18, v20);
    sub_216B6B5B8(*(v14 + 56) + *(*(v15 - 8) + 72) * v18, v7);
    sub_2166A8A94();
    sub_21700F574();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v21, 1, v15);
  sub_216697664(v7, &unk_27CACD120, &unk_21704A2E0);
  if (*(v14 + 16))
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a1 + v10);
    sub_21693AD70();
    *(a1 + v10) = v32;
LABEL_8:
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  sub_216A52008(v8, v30, v22, v23, v24, v25, v26, v27, v28, v29);
  swift_endAccess();

  sub_216EFCFE4();
}

void sub_216EFD3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v7 = type metadata accessor for PushNotifications.Subscription(0);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7();
  v50 = v9 - v8;
  v56 = sub_217006224();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  v49 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD110, &qword_217070360);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = *&v4[OBJC_IVAR____TtC7MusicUI17PushNotifications_lock];
  sub_21700DF14();
  sub_216E121AC(v19, v4, a2, a3);
  if (v20)
  {
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v44 = v10 + 32;
    v45 = v10 + 16;
    v48 = v10;
    v54 = (v10 + 8);
    v52 = v20;
    sub_21700DF14();
    v26 = 0;
    v46 = v18;
    v47 = v15;
    v43 = v21;
    v53 = v25;
    if (v24)
    {
      while (1)
      {
        v27 = v26;
LABEL_10:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = v52;
        v31 = v48;
        v32 = v49;
        v33 = v56;
        (*(v48 + 16))(v49, *(v52 + 48) + *(v48 + 72) * v29, v56);
        v34 = v50;
        sub_216EFE478(*(v30 + 56) + *(v51 + 72) * v29, v50);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118, qword_217070368);
        v36 = *(v35 + 48);
        v37 = *(v31 + 32);
        v15 = v47;
        v37(v47, v32, v33);
        sub_216B6B5B8(v34, &v15[v36]);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v35);
        v18 = v46;
        v21 = v43;
LABEL_11:
        sub_216EFE4DC(v15, v18);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118, qword_217070368);
        if (__swift_getEnumTagSinglePayload(v18, 1, v38) == 1)
        {
          break;
        }

        v39 = &v18[*(v38 + 48)];
        v40 = *(v39 + 16);

        sub_216B6B61C(v39);
        if (!v55)
        {
          goto LABEL_19;
        }

        v40();

        (*v54)(v18, v56);
        v25 = v53;
        if (!v24)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118, qword_217070368);
          __swift_storeEnumTagSinglePayload(v15, 1, 1, v41);
          v24 = 0;
          goto LABEL_11;
        }

        v24 = *(v21 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }
  }
}

uint64_t sub_216EFD8AC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACD090);
  __swift_project_value_buffer(v0, qword_27CACD090);
  return sub_217007C94();
}

uint64_t sub_216EFD92C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130, &qword_21705D720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = *MEMORY[0x277D7FA00];
  sub_21700DF44();

  sub_21700DF84();
  (*(v1 + 8))(v3, v0);
  if (v16[0])
  {
    v14 = 0x6D6E6F7269766E65;
    v15 = 0xEB00000000746E65;
    sub_21700F364();
    sub_216934FBC();

    sub_216788110(v16);
    if (!v18)
    {
      sub_216697664(v17, &unk_27CABF7A0, &unk_217014D20);
      return sub_21700E514();
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return sub_21700E514();
    }

    v5 = v14;
    v6 = v15;
    v7 = objc_opt_self();
    if ((sub_216EFE654(v5, v6, v7) & 1) == 0)
    {

      return sub_21700E514();
    }
  }

  else
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CACD090);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_216679000, v9, v10, "No push configuration in bag, disabling push notification observation.", v11, 2u);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }

    return 0;
  }

  return v5;
}

void sub_216EFDBF0(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  if (a2)
  {
    v5 = v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection;
    v6 = *(v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
    if (v6)
    {
      v7 = *(v5 + 8) == a1 && *(v5 + 16) == a2;
      if (!v7 && (sub_21700F7D4() & 1) == 0)
      {
        v14 = v6;
        sub_21700DF14();
        v11 = sub_216EFE144(a1, a2);
        sub_216EFE0A8(v11, v12, v13);
      }

      return;
    }

    v8 = sub_216EFE144(a1, a2);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  sub_216EFE0A8(v8, v9, v10);
}

void sub_216EFDD18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &qword_27CAB6000;
  if (a1)
  {
    v9 = qword_27CAB6258;
    v10 = a1;
    sub_21700DF14();
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CACD090);
    v12 = v10;
    sub_21700DF14();
    v13 = sub_217007C84();
    v14 = sub_21700EDA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446210;
      sub_21700DF14();
      v17 = sub_2166A85FC(a2, a3, &v32);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_216679000, v13, v14, "Ending APSConnection with environment %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x21CEA1440](v16, -1, -1);
      v18 = v15;
      v6 = &qword_27CAB6000;
      MEMORY[0x21CEA1440](v18, -1, -1);
    }

    else
    {
    }
  }

  v19 = v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection;
  v20 = *(v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  if (v20)
  {
    v22 = *(v19 + 8);
    v21 = *(v19 + 16);
    v23 = v6[75];
    v24 = v20;
    sub_21700DF14();
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACD090);
    v26 = v24;
    sub_21700DF14();
    v27 = sub_217007C84();
    v28 = sub_21700EDA4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136446210;
      sub_21700DF14();
      v31 = sub_2166A85FC(v22, v21, &v32);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_216679000, v27, v28, "Starting APSConnection with environment %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x21CEA1440](v30, -1, -1);
      MEMORY[0x21CEA1440](v29, -1, -1);
    }

    else
    {
    }
  }

  os_unfair_lock_assert_owner(*(*(v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  if (a1)
  {
    [a1 setDelegate_];
    [a1 shutdown];
  }

  if (*v19)
  {
    [*v19 setDelegate_];
  }

  sub_216EFCFE4();
}

void *sub_216EFE0A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  v6 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  v7 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection + 8);
  v8 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection + 16);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  sub_216EFE708(a1);
  sub_216EFDD18(v6, v7, v8);
  sub_216EFE54C(v6);

  return sub_216EFE54C(a1);
}

id sub_216EFE144(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CACD090);
    v12 = sub_217007C84();
    v13 = sub_21700ED84();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Environment name is empty.";
    goto LABEL_14;
  }

  v5 = sub_21700E514();
  v7 = v6;
  sub_2166AF2EC();
  v8 = sub_21700EE84();
  objc_allocWithZone(MEMORY[0x277CEEA10]);
  sub_21700DF14();
  v9 = sub_216EFE5A8(a1, a2, v5, v7, v8);
  if (!v9)
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_27CACD090);
    v12 = sub_217007C84();
    v13 = sub_21700ED84();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Failed to initialize APSConnection";
LABEL_14:
    _os_log_impl(&dword_216679000, v12, v13, v15, v14, 2u);
    MEMORY[0x21CEA1440](v14, -1, -1);
LABEL_15:

    return 0;
  }

  v10 = v9;
  sub_21700DF14();
  return v10;
}

uint64_t sub_216EFE478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EFE4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD110, &qword_217070360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_216EFE54C(void *result)
{
  if (result)
  {
  }

  return result;
}

id sub_216EFE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_21700E4D4();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_216EFE654(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();
  v5 = [a3 isValidEnvironment_];

  return v5;
}

void sub_216EFE69C(uint64_t a1, void *a2)
{
  v3 = sub_21700E804();

  [a2 _setEnabledTopics_];
}

double sub_216EFE708(void *a1)
{
  if (a1)
  {
    v1 = a1;

    sub_21700DF14();
  }

  return result;
}

uint64_t type metadata accessor for TVEpisodeDetailPageIntent(uint64_t a1)
{
  result = qword_27CACD150;
  if (!qword_27CACD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFE804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for TVEpisodeDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216EFEB94(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for TVEpisodeDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216EFED68(uint64_t a1)
{
  result = sub_2166CEB34(&qword_27CACD160, type metadata accessor for TVEpisodeDetailPageIntent, &unk_2170703B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEE08(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEB34(&qword_27CACD160, type metadata accessor for TVEpisodeDetailPageIntent, &unk_2170703B8);
  result = sub_2166CEB34(&qword_27CACD168, type metadata accessor for TVEpisodeDetailPageIntent, &unk_21707039C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216EFEE8C(uint64_t a1)
{
  result = sub_2166CEB7C(&qword_27CABB870, type metadata accessor for AnyPageRequest, &unk_2170766FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEEE4(uint64_t a1)
{
  result = sub_2166CEB7C(&qword_27CAB6F30, type metadata accessor for AnyReplayRequest, &unk_217076734);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_116(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_151();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_109();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AnyPageRequestBody(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_2166CEB7C(&qword_27CAC8E18, type metadata accessor for AnyPageRequestBody, &unk_21707E378);
  OUTLINED_FUNCTION_7_123();
  v18 = *(type metadata accessor for AnyPageRequest(0) + 20);
  sub_216697664(v3 + v18, &qword_27CACD170, &unk_217070520);
  sub_216EFF61C(v17, v3 + v18, type metadata accessor for AnyPageRequestBody);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  sub_2167DE934(v30, v4);
  sub_2167DE934(v4, v5);
  v22 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_30_46(v5);
    sub_216EF11F8();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_10_106(v23, v24);
    return OUTLINED_FUNCTION_30_46(v4);
  }

  else
  {
    sub_217005DE4();
    OUTLINED_FUNCTION_5_145();
    (*(v26 + 8))(v5, v22);
    sub_216F8A97C(v12);
    sub_216697664(v4, &qword_27CABA820, &unk_217018CE0);

    OUTLINED_FUNCTION_1_220();
    sub_216697664(v3 + v5, &qword_27CACD178, &qword_21707A6A0);
    OUTLINED_FUNCTION_2_185();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  }
}

uint64_t sub_216EFF28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_116(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_151();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_109();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AnyReplayRequestBody(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_2166CEB7C(&qword_27CAC92C0, type metadata accessor for AnyReplayRequestBody, &unk_21707A900);
  OUTLINED_FUNCTION_7_123();
  v18 = *(type metadata accessor for AnyReplayRequest(0) + 20);
  sub_216697664(v3 + v18, &qword_27CACD188, &qword_217070538);
  sub_216EFF61C(v17, v3 + v18, type metadata accessor for AnyReplayRequestBody);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  sub_2167DE934(v30, v4);
  sub_2167DE934(v4, v5);
  v22 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_30_46(v5);
    sub_216EF11F8();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_10_106(v23, v24);
    return OUTLINED_FUNCTION_30_46(v4);
  }

  else
  {
    sub_217005DE4();
    OUTLINED_FUNCTION_5_145();
    (*(v26 + 8))(v5, v22);
    sub_216F8A97C(v12);
    sub_216697664(v4, &qword_27CABA820, &unk_217018CE0);

    OUTLINED_FUNCTION_1_220();
    sub_216697664(v3 + v5, &qword_27CACD178, &qword_21707A6A0);
    OUTLINED_FUNCTION_2_185();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  }
}

uint64_t sub_216EFF55C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  sub_216697664(a1, a3, a4);
  sub_216EFF67C(a2, a1, a5);
  a6(0);
  OUTLINED_FUNCTION_41();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_216EFF61C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216EFF67C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EFF704@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v44 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v39 = v6;
  v7 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v40 = v10;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v46 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v20, v11);
  if (v23)
  {
    v37 = v7;
    v25 = v42;
    v26 = v43;
    *v42 = v21;
    *(v25 + 8) = v23;
    sub_21700CE04();
    sub_216EFFBBC();
    v27 = v41;
    sub_21700CCD4();
    if (v27)
    {
      (*(v26 + 8))(v44, v45);
      v24(v46, v11);
      v24(v17, v11);
    }

    else
    {
      v24(v17, v11);
      *(v42 + 16) = v47;
      sub_21700CE04();
      v32 = v26;
      v33 = *(v26 + 16);
      v34 = v44;
      v33(v39, v44, v45);
      sub_21700D224();
      (*(v32 + 8))(v34, v45);
      v24(v46, v11);
      v36 = type metadata accessor for FollowRequestResponseAction(0);
      return (*(v38 + 32))(v42 + *(v36 + 24), v40, v37);
    }
  }

  else
  {
    v28 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v30 = v29;
    v31 = type metadata accessor for FollowRequestResponseAction(0);
    *v30 = 0x72506C6169636F73;
    v30[1] = 0xEF4449656C69666FLL;
    v30[2] = v31;
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v43 + 8))(v44, v45);
    return (v24)(v46, v11);
  }
}

unint64_t sub_216EFFBBC()
{
  result = qword_27CACD198;
  if (!qword_27CACD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD198);
  }

  return result;
}

uint64_t sub_216EFFC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_21700CE04();
  v14 = sub_21700CDB4();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v13, v7);
  if (v16)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(a2);
    v20 = type metadata accessor for OpaqueProtoRequestConvertibleIntent(0, a3, a4, v19);
    result = (*(v9 + 32))(a5 + *(v20 + 36), a1, v7);
    *a5 = v14;
    a5[1] = v16;
  }

  else
  {
    v22 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v24 = v23;
    v26 = type metadata accessor for OpaqueProtoRequestConvertibleIntent(0, a3, a4, v25);
    *v24 = 0x646E696B24;
    v24[1] = 0xE500000000000000;
    v24[2] = v26;
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(a2);
    return (v17)(a1, v7);
  }

  return result;
}

uint64_t sub_216EFFE90(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = sub_21700E574();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_7();
  v2 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_109();
  v10(v9);
  sub_21700CDD4();
  (*(v4 + 8))(v8, v2);
  if (!v27)
  {
    sub_216697CFC(&v26);
    return 0;
  }

  sub_2166EF9C4(&v26, &v28);
  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v28, v29);
  v12 = sub_21700F7B4();
  *&v26 = 0;
  v13 = [v11 dataWithJSONObject:v12 options:0 error:&v26];
  swift_unknownObjectRelease();
  v14 = v26;
  if (!v13)
  {
    v19 = v14;
    v20 = sub_217005D34();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_217013DA0;
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD000000000000022, 0x80000002170909D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    sub_21700F544();
    v22 = v26;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 32) = v22;
    sub_21700F8D4();

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    return 0;
  }

  sub_217005FB4();

  sub_21700E564();
  OUTLINED_FUNCTION_109();
  sub_21700E534();
  if (!v15)
  {
    v23 = OUTLINED_FUNCTION_109();
    sub_21677A524(v23, v24);
    goto LABEL_8;
  }

  sub_2166F1DCC();
  v16 = sub_21700F084();

  v17 = OUTLINED_FUNCTION_109();
  sub_21677A524(v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  return v16;
}

id sub_216F001F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_216EFFE90(a1);
  if (v4)
  {
    return v4;
  }

  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    sub_2166F1DCC();
    v7 = sub_21700CEA4();
    v11[3] = MEMORY[0x277D837D0];
    v11[0] = v7;
    v11[1] = v8;
    v9 = a1;
    v10 = sub_2166F1E10(v11, a1);
    sub_2166F1F64(v10, 0x646E696B24, 0xE500000000000000);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_216F00324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21700CDF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_216F003D0(void *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216F001F4(a1, a2, WitnessTable);
}

uint64_t sub_216F004A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216F00518@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v69 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v60 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v58 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v62 = v6;
  v21 = *(v6 + 16);
  v20 = v6 + 16;
  v67 = v4;
  v63 = v21;
  v21(v9, v68, v4);
  v22 = type metadata accessor for LiveRadioGridLockup(0);
  v61 = *(v22 + 24);
  v64 = v9;
  sub_21700D734();
  v66 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = v16;
  v27 = *(v11 + 8);
  v65 = v11 + 8;
  v27(v26, v77);
  if (v25)
  {
    v58[0] = v23;
    *&v74 = v23;
    *(&v74 + 1) = v25;
    sub_21700DF14();
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    v61 = v27;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v28 = v68;
    v58[1] = v20;
    v63(v64, v68, v67);
    v59 = v22;
    sub_2166D5234(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v29 = v69;
    sub_21700D734();
    sub_21700CE04();
    sub_21700D2E4();
    v61(v19, v77);
    v30 = v72;
    v31 = v28;
    if (v72)
    {
      v32 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      *&v74 = v58[0];
      *(&v74 + 1) = v25;
      sub_21700F364();
      sub_216BA9D20(v70, v30, v32, &v74);
      sub_216788110(v70);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
    }

    else
    {

      sub_21669987C(v71, &qword_27CAB6DB0, &qword_217016C00);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    v38 = v59;
    v39 = v29 + *(v59 + 36);
    v40 = v75;
    *v39 = v74;
    *(v39 + 16) = v40;
    *(v39 + 32) = v76;
    type metadata accessor for Artwork(0);
    v41 = v66;
    sub_21700CE04();
    v63(v64, v31, v67);
    sub_2166D5234(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    sub_21700CE04();
    OUTLINED_FUNCTION_100_1();
    sub_21700D2E4();
    v42 = v77;
    v43 = v61;
    v61(v19, v77);
    sub_21700CE04();
    sub_21700D2E4();
    v44 = OUTLINED_FUNCTION_100_1();
    v43(v44);
    v45 = v60;
    sub_21700CE04();
    v46 = sub_21700CD44();
    (v43)(v45, v42);
    *(v29 + *(v38 + 28)) = v46 & 1;
    sub_21700CE04();
    v47 = sub_21700CDB4();
    v49 = v48;
    v50 = OUTLINED_FUNCTION_100_1();
    v43(v50);
    *(v29 + 40) = v47;
    *(v29 + 48) = v49;
    sub_21700CE04();
    v51 = sub_21700CDB4();
    v53 = v52;
    v54 = OUTLINED_FUNCTION_1_221();
    v55(v54);
    (v43)(v41, v42);
    v56 = OUTLINED_FUNCTION_100_1();
    result = (v43)(v56);
    v57 = (v29 + *(v38 + 48));
    *v57 = v51;
    v57[1] = v53;
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_2166D5234(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v34 = 25705;
    v34[1] = 0xE200000000000000;
    v34[2] = v22;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_221();
    v36(v35);
    v27(v66, v77);
    return sub_21669987C(v61 + v69, &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

void sub_216F00D7C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v35 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = sub_21700EC74();
  if (v19)
  {
    v40 = v19;
    v44 = sub_21700F4D4();
    v31 = sub_21700F4E4();
    sub_21700F484();
    sub_21700EC54();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v26 = v10;
      v27 = a5;
      v20 = 0;
      v32 = (v41 + 16);
      v33 = (v41 + 8);
      v34 = v8;
      while (!__OFADD__(v20, 1))
      {
        v41 = v20 + 1;
        v21 = sub_21700ECE4();
        v22 = v13;
        v23 = v13;
        v24 = AssociatedTypeWitness;
        (*v32)(v22);
        v21(v43, 0);
        v25 = v42;
        v37(v23, v39);
        if (v25)
        {
          (*v33)(v23, v24);
          (*(v29 + 8))(v18, v30);

          (*(v26 + 32))(v28, v39, v27);
          return;
        }

        v42 = 0;
        (*v33)(v23, v24);
        sub_21700F4C4();
        sub_21700ECA4();
        ++v20;
        v13 = v23;
        if (v41 == v40)
        {
          (*(v29 + 8))(v18, v30);
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_21700E894();
  }
}

uint64_t sub_216F01198()
{
  v0 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_23_61();
  v10(v9);
  if (__swift_getEnumTagSinglePayload(v8, 1, v0) != 1)
  {
    sub_216F04E54(v8, v4, type metadata accessor for MappedSection);
    sub_21700DF14();
    sub_216F04EB4(v4, type metadata accessor for MappedSection);
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216F012F0(uint64_t a1)
{
  v3 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, v1, a1);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_216F01198();
  }

  else
  {
    sub_216F04E54(v11, v7, type metadata accessor for MappedSection);
    sub_21700DF14();
    sub_216F04EB4(v7, type metadata accessor for MappedSection);
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216F01444(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2();
  sub_2166D9530(v1, v2, v3, v4);

  return sub_217008684();
}

uint64_t sub_216F014C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F01198();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216F014F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216F012F0(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_216F01518()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v70 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F08, &qword_217057A30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - v6;
  v8 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v65 = v11 - v10;
  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_16();
  v64 = v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v63 = &v61 - v16;
  v17 = OUTLINED_FUNCTION_36_45();
  v68 = v18;
  v21 = type metadata accessor for CompositeLibraryCatalogView.Section(v17, v19, v18, v20);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  OUTLINED_FUNCTION_36_45();
  v69 = v4;
  v27 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v67 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v66 = v30;
  (*(v23 + 16))(v26, v0 + *(v2 + 60), v21);
  if (__swift_getEnumTagSinglePayload(v26, 1, v8) == 1)
  {
    (*v0)();
    v31 = v63;
    v32 = OUTLINED_FUNCTION_33_41();
    v33 = v68;
    sub_2166C24DC(v32, v34, v68);
    v35 = *(v64 + 1);
    v36 = OUTLINED_FUNCTION_33_41();
    v35(v36);
    sub_2166C24DC(v31, v12, v33);
    OUTLINED_FUNCTION_2_186();
    sub_2166D9530(v37, v38, v39, v40);
    v41 = v66;
    OUTLINED_FUNCTION_33_41();
    sub_2166C2718();
    v42 = OUTLINED_FUNCTION_33_41();
    v35(v42);
    (v35)(v31, v12);
  }

  else
  {
    v64 = type metadata accessor for MappedSection;
    v43 = v65;
    sub_216F04E54(v26, v65, type metadata accessor for MappedSection);
    sub_2167CC3A4(v43, v7);
    v44 = *(v0 + *(v2 + 68));
    v62 = *(v0 + *(v2 + 64));
    v63 = v44;
    v45 = *(v0 + 32);
    v46 = v69;
    v47 = &v7[v69[13]];

    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v7[v46[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
    OUTLINED_FUNCTION_3_2();
    sub_2166D9530(v49, &qword_27CAB9AA0, &unk_21701E4B0, v50);
    *v48 = sub_217008684();
    v48[1] = v51;
    *&v7[v46[9]] = v45;
    v52 = v63;
    *&v7[v46[10]] = v62;
    *&v7[v46[11]] = v52;
    OUTLINED_FUNCTION_2_186();
    sub_2166D9530(v53, &qword_27CAC6F08, &qword_217057A30, v54);
    v41 = v66;
    v33 = v68;
    sub_2166C2CB0();
    sub_216697664(v7, &qword_27CAC6F08, &qword_217057A30);
    sub_216F04EB4(v65, v64);
  }

  OUTLINED_FUNCTION_2_186();
  v59 = sub_2166D9530(v55, v56, v57, v58);
  v71 = v33;
  v72 = v59;
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v41, v27, WitnessTable);
  (*(v67 + 8))(v41, v27);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F019E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = sub_216F01444(a3);
  *(a9 + 3) = v18;
  *(a9 + 4) = a4;
  v24[0] = a8;
  v24[1] = a10;
  v24[2] = a11;
  v24[3] = a12;
  v19 = type metadata accessor for CompositeLibraryCatalogView.SectionView(0, v24);
  v20 = v19[15];
  type metadata accessor for CompositeLibraryCatalogView.Section(0, a10, a12, v21);
  OUTLINED_FUNCTION_34();
  result = (*(v22 + 32))(&a9[v20], a5);
  *&a9[v19[16]] = a6;
  *&a9[v19[17]] = a7;
  return result;
}

void sub_216F01AD8()
{
  OUTLINED_FUNCTION_49();
  v299 = v0;
  v2 = v1;
  v290 = v3;
  v4 = sub_21700D704();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v288 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v289 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v286 = v13;
  v284 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v287 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v285 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v283 = v20;
  v300 = v2;
  v21 = OUTLINED_FUNCTION_34_38(v305, v2[1], v2[1]);
  v240 = v23;
  v241 = v22;
  type metadata accessor for CompositeLibraryCatalogView.Section(v21, v22, v23, v24);
  v25 = sub_21700E984();
  v26 = v314;
  v351.val[0] = v305[0];
  v351.val[1] = v305[1];
  vst2q_f64(v26, v351);
  v27 = type metadata accessor for CompositeLibraryCatalogView.SectionView(255, v314);
  OUTLINED_FUNCTION_5_104();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_69();
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_63();
  v30 = swift_getWitnessTable();
  *&v314[0] = v25;
  *(&v314[0] + 1) = v27;
  *&v314[1] = MEMORY[0x277CE1428];
  *(&v314[1] + 1) = WitnessTable;
  *&v314[2] = v29;
  *(&v314[2] + 1) = MEMORY[0x277CE1410];
  *&v314[3] = &off_2816C2F28;
  *(&v314[3] + 1) = v30;
  type metadata accessor for ShelfCollection(255, v314);
  OUTLINED_FUNCTION_0_228();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v31 = sub_217008B64();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v234 = v31;
  v235 = v32;
  v33 = sub_21700B0A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8, &unk_217054400);
  OUTLINED_FUNCTION_19_0();
  v34 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00, &qword_217024DD0);
  OUTLINED_FUNCTION_19_0();
  v35 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18, &unk_2170543F0);
  OUTLINED_FUNCTION_19_0();
  v36 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20, &qword_217024DF0);
  OUTLINED_FUNCTION_19_0();
  v37 = sub_2170089F4();
  v38 = type metadata accessor for ObjectGraph(255);
  v291 = v38;
  OUTLINED_FUNCTION_10_56();
  v238 = v33;
  v39 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v41 = v40;
  v44 = sub_2166D9530(v42, &qword_27CABB9F8, &unk_217054400, v43);
  v233 = v39;
  v349 = v39;
  v350 = v44;
  OUTLINED_FUNCTION_8_72();
  v242 = v34;
  v45 = swift_getWitnessTable();
  v46 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0, v41);
  v237 = v45;
  v347 = v45;
  v348 = v46;
  v247 = v35;
  v47 = swift_getWitnessTable();
  v305[0].n128_u64[0] = v41;
  v48 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0, v41);
  v239 = v47;
  v345 = v47;
  v346 = v48;
  v252 = v36;
  v49 = swift_getWitnessTable();
  v50 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20, &qword_217024DF0, v41);
  v245 = v49;
  v343 = v49;
  v344 = v50;
  OUTLINED_FUNCTION_46_1();
  v293 = swift_getWitnessTable();
  *&v314[0] = v37;
  v51 = v37;
  *(&v314[0] + 1) = v38;
  *&v314[1] = v293;
  v304 = MEMORY[0x277D7EDC8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v250 = v53;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  v249 = v55;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD1A0, &qword_2170708B8);
  OUTLINED_FUNCTION_72_0();
  v251 = OpaqueTypeMetadata2;
  v56 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v261 = v57;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  v294 = v59;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68, &qword_217057700);
  OUTLINED_FUNCTION_36_45();
  v60 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v270 = v61;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_105();
  v269 = v63;
  v64 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v273 = v65;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_105();
  v272 = v67;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v279 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  OUTLINED_FUNCTION_19_0();
  v292 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  OUTLINED_FUNCTION_19_0();
  v301 = sub_2170089F4();
  v302 = sub_217009564();
  v303 = sub_217009564();
  v297 = sub_217009564();
  OUTLINED_FUNCTION_16();
  v277 = v68;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_105();
  v295 = v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278, &qword_21701C850);
  OUTLINED_FUNCTION_72_0();
  v296 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v276 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_105();
  v275 = v73;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E70, &unk_217057738);
  OUTLINED_FUNCTION_72_0();
  v74 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v278 = v75;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_105();
  v298 = v77;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290, &unk_21701C860);
  v282 = sub_2170089F4();
  v78 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v281 = v79;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_105();
  v280 = v81;
  v259 = v51;
  *&v314[0] = v51;
  *(&v314[0] + 1) = v291;
  *&v314[1] = v293;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22_62();
  v85 = sub_2166D9530(v83, &qword_27CACD1A0, &qword_2170708B8, v84);
  v231 = OpaqueTypeConformance2;
  v341 = OpaqueTypeConformance2;
  v342 = v85;
  v263 = v56;
  v86 = swift_getWitnessTable();
  v87 = v305[0].n128_u64[0];
  v88 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700, v305[0].n128_i64[0]);
  v232 = v86;
  v339 = v86;
  v340 = v88;
  v271 = v60;
  v236 = swift_getWitnessTable();
  v337 = v236;
  v338 = v88;
  v274 = v64;
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x277CE0328];
  v91 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
  v335 = v89;
  v336 = v91;
  OUTLINED_FUNCTION_7_4();
  v92 = swift_getWitnessTable();
  v333 = v89;
  v334 = v92;
  v93 = swift_getWitnessTable();
  v94 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v90);
  v331 = v89;
  v332 = v94;
  v95 = swift_getWitnessTable();
  v96 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v90);
  v329 = v89;
  v330 = v96;
  v97 = swift_getWitnessTable();
  v327 = v95;
  v328 = v97;
  v98 = swift_getWitnessTable();
  v325 = v93;
  v326 = v98;
  v323 = swift_getWitnessTable();
  v243 = v89;
  v324 = v89;
  v99 = swift_getWitnessTable();
  v100 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, v87);
  v244 = v99;
  v321 = v99;
  v322 = v100;
  v101 = swift_getWitnessTable();
  v102 = v87;
  v103 = sub_2166D9530(&qword_27CAC6E68, &qword_27CAC6E70, &unk_217057738, v87);
  v246 = v101;
  v319 = v101;
  v320 = v103;
  v279 = v74;
  v104 = swift_getWitnessTable();
  v105 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, v102);
  v248 = v104;
  v317 = v104;
  v318 = v105;
  v106 = v299;
  v315 = swift_getWitnessTable();
  v316 = v105;
  v107 = swift_getWitnessTable();
  *&v314[0] = v78;
  *(&v314[0] + 1) = v107;
  v108 = swift_getOpaqueTypeMetadata2();
  v282 = v78;
  *&v314[0] = v78;
  v257 = v107;
  *(&v314[0] + 1) = v107;
  v109 = swift_getOpaqueTypeConformance2();
  *&v314[0] = v108;
  *(&v314[0] + 1) = v109;
  OUTLINED_FUNCTION_12_91();
  v110 = swift_getOpaqueTypeMetadata2();
  *&v314[0] = v108;
  *(&v314[0] + 1) = v109;
  v111 = swift_getOpaqueTypeConformance2();
  v255 = v110;
  *&v314[0] = v110;
  v253 = v111;
  *(&v314[0] + 1) = v111;
  v112 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v256 = v113;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_105();
  v254 = v115;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298, &unk_2170544C0);
  OUTLINED_FUNCTION_72_0();
  v258 = v112;
  v116 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v265 = v117;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_105();
  v260 = v119;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0, &unk_21701C870);
  OUTLINED_FUNCTION_72_0();
  v266 = v116;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v267 = v121;
  v268 = v120;
  MEMORY[0x28223BE20](v120);
  v262 = &v229 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v123);
  v264 = &v229 - v124;
  if (*v106)
  {
    v125 = v300;
    v126 = *(v106 + v300[3].n128_i32[0]);

    sub_216E9C900(v127, v126);

    v128 = v106 + *(v125 + 40);
    v129 = *(v128 + 1);
    v305[0].n128_u64[0] = *v128;
    v303 = v129;
    LODWORD(v302) = v128[16];
    v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
    OUTLINED_FUNCTION_3_2();
    v301 = sub_2166D9530(v130, &qword_27CAB9AA0, &unk_21701E4B0, v131);
    v132 = sub_2170081B4();
    v133 = sub_216C522F4(v132);

    v229 = type metadata accessor for MenuBuilder();
    v134 = sub_216C65C14();
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    v230 = type metadata accessor for AddToPlaylistMenuBuilder();
    v292 = swift_allocObject();
    *(v292 + 16) = v133;

    v136 = sub_21700B354();
    MEMORY[0x28223BE20](v136);
    v137 = v240;
    *(&v229 - 4) = v241;
    *(&v229 - 3) = v137;
    *(&v229 - 2) = v106;
    swift_checkMetadataState();
    sub_21700B094();
    v310[0] = v311[0];
    v310[1] = v311[1];
    type metadata accessor for MusicEntityAnnotationWrapper();
    v291 = swift_checkMetadataState();
    sub_21700E094();
    swift_checkMetadataState();
    sub_2166B4D7C(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
    sub_21700A654();

    v310[0] = v314[0];
    v310[1] = v314[1];
    v310[2] = v314[2];
    type metadata accessor for PlaybackPresenter(0);
    sub_21700E094();
    swift_checkMetadataState();
    sub_2166B4D7C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
    OUTLINED_FUNCTION_44_21();
    sub_21700A654();

    v310[0] = v311[0];
    v310[1] = v311[1];
    v310[2] = v311[2];
    v310[3] = v311[3];
    v138 = swift_checkMetadataState();
    sub_2166B4D7C(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    v247 = v135;
    sub_21700A654();
    v312[0] = v310[0];
    v312[1] = v310[1];
    v312[2] = v310[2];
    v312[3] = v310[3];
    (*(*(v138 - 8) + 8))(v312, v138);
    memcpy(v310, v314, 0x50uLL);
    v139 = swift_checkMetadataState();
    sub_2166B4D7C(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder, &unk_21706FD4C);
    sub_21700A654();
    memcpy(v313, v310, sizeof(v313));
    (*(*(v139 - 8) + 8))(v313, v139);
    memcpy(v310, v311, sizeof(v310));
    v140 = swift_checkMetadataState();
    v141 = v249;
    v259 = v133;
    sub_21700A1E4();
    memcpy(v314, v310, sizeof(v314));
    (*(*(v140 - 8) + 8))(v314, v140);
    v142 = v304;
    *&v311[0] = sub_2170081B4();
    v143 = v251;
    sub_2167C9688(v311, v251, v142, v231);

    (*(v250 + 8))(v141, v143);
    v144 = sub_2170081B4();
    MEMORY[0x28223BE20](v144);
    v145 = type metadata accessor for Page(0);
    *(&v229 - 2) = v145;
    v146 = sub_2166B4D7C(&qword_280E2C548, type metadata accessor for Page, &unk_217040788);
    *(&v229 - 1) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_32_39();
    MEMORY[0x28223BE20](v147);
    OUTLINED_FUNCTION_2_121();
    *(v148 - 16) = v145;
    *(v148 - 8) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    v149 = v283;
    OUTLINED_FUNCTION_23_61();
    sub_217007DE4();

    v293 = type metadata accessor for BackgroundConfiguration(0);
    v150 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
    v154 = v269;
    v155 = v263;
    v156 = v294;
    sub_2169850F0(v149, v263, v232);
    sub_216697664(v149, &qword_27CABBAA8, &unk_2170575E0);
    (*(v261 + 8))(v156, v155);
    v157 = sub_2170081B4();
    MEMORY[0x28223BE20](v157);
    OUTLINED_FUNCTION_2_121();
    v291 = v145;
    *(v158 - 16) = v145;
    *(v158 - 8) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    MEMORY[0x28223BE20](v159);
    OUTLINED_FUNCTION_2_121();
    *(v160 - 16) = v145;
    *(v160 - 8) = v146;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_27_56(KeyPath);

    v162 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v293);
    v165 = v271;
    v166 = v272;
    sub_2169850FC(v149, v271, v236);
    sub_216697664(v149, &qword_27CABBAA8, &unk_2170575E0);
    (*(v270 + 8))(v154, v165);
    v167 = sub_2170081B4();
    MEMORY[0x28223BE20](v167);
    OUTLINED_FUNCTION_2_121();
    v168 = v291;
    *(v169 - 16) = v291;
    *(v169 - 8) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    MEMORY[0x28223BE20](v170);
    OUTLINED_FUNCTION_2_121();
    *(v171 - 16) = v168;
    *(v171 - 8) = v146;
    v172 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_56(v172);

    v173 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v293);
    v176 = v274;
    sub_216985178(v149, v274, v243, v295);
    sub_216697664(v149, &qword_27CABBAA8, &unk_2170575E0);
    (*(v273 + 8))(v166, v176);
    v177 = sub_2170081B4();
    MEMORY[0x28223BE20](v177);
    OUTLINED_FUNCTION_2_121();
    v178 = v291;
    *(v179 - 16) = v291;
    *(v179 - 8) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_32_39();
    MEMORY[0x28223BE20](v180);
    OUTLINED_FUNCTION_2_121();
    *(v181 - 16) = v178;
    *(v181 - 8) = v146;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    v182 = v286;
    OUTLINED_FUNCTION_23_61();
    sub_217007DE4();

    v183 = v284;
    if (__swift_getEnumTagSinglePayload(v182, 1, v284) == 1)
    {
      v191 = v285;
      sub_216F04690(v300, v184, v185, v186, v187, v188, v189, v190, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v182, 1, v183);
      v193 = v287;
      if (EnumTagSinglePayload != 1)
      {
        sub_216697664(v182, &qword_27CAB9180, &qword_21701C770);
      }
    }

    else
    {
      v193 = v287;
      v191 = v285;
      (*(v287 + 32))(v285, v182, v183);
    }

    v194 = v275;
    sub_21700A384();
    (*(v193 + 8))(v191, v183);
    v195 = OUTLINED_FUNCTION_46_1();
    v196(v195);
    sub_2170081B4();
    v197 = v296;
    sub_21700A654();

    (*(v276 + 8))(v194, v197);
    v198 = sub_2170081B4();
    v199 = *(v198 + *(*v198 + 176));

    type metadata accessor for SocialBadgingRequestCoordinator(0);
    v200 = sub_2166B4D7C(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
    v201 = v279;
    v202 = v298;
    sub_2168532E4(v199, v248, v200, v280);

    (*(v278 + 8))(v202, v201);
    v203 = MEMORY[0x277D84F90];
    sub_21700E384();
    sub_21700D6F4();
    sub_216C5570C(v203);
    v204 = v289;
    OUTLINED_FUNCTION_23_61();
    sub_21700D124();
    sub_21700D194();
    v205 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
    v209 = sub_2170081B4();
    v210 = *(v209 + *(*v209 + 160));

    v211 = v254;
    sub_216AD2BF8(v204, 0, 0, 0xD00000000000002ALL, 0x8000000217090A00, v210, v282, v257, v254);

    sub_216697664(v204, &qword_27CAB8DF8, qword_21701B930);
    v212 = OUTLINED_FUNCTION_44_21();
    v213(v212);
    type metadata accessor for UserSocialProfileCoordinator(0);
    *&v311[0] = v255;
    *(&v311[0] + 1) = v253;
    v214 = swift_getOpaqueTypeConformance2();
    sub_2166B4D7C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
    v215 = v260;
    v216 = v258;
    sub_21700A654();
    (*(v256 + 8))(v211, v216);
    type metadata accessor for SocialGraphController(0);
    v217 = MEMORY[0x277CE0868];
    v218 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, MEMORY[0x277CE0868]);
    v308 = v214;
    v309 = v218;
    v219 = v266;
    v220 = swift_getWitnessTable();
    sub_2166B4D7C(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    OUTLINED_FUNCTION_46_1();
    sub_21700A654();

    (*(v265 + 8))(v215, v219);
    v221 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, v217);
    v306 = v220;
    v307 = v221;
    v222 = v268;
    v223 = swift_getWitnessTable();
    v224 = v264;
    v225 = OUTLINED_FUNCTION_44_21();
    sub_2166C24DC(v225, v226, v223);
    v227 = *(v267 + 8);
    v228 = OUTLINED_FUNCTION_44_21();
    v227(v228);
    sub_2166C24DC(v224, v222, v223);
    (v227)(v224, v222);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_2166B4D7C(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_216F038E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CompositeLibraryCatalogView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  (*(v8 + 16))(&v24 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  type metadata accessor for CompositeLibraryCatalogView.Section(255, a2, a3, v14);
  v15 = sub_21700E984();
  v26 = a2;
  v27 = a2;
  v28 = a3;
  v29 = a3;
  v16 = type metadata accessor for CompositeLibraryCatalogView.SectionView(255, &v26);
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v26 = v15;
  v27 = v16;
  v28 = MEMORY[0x277CE1428];
  v29 = WitnessTable;
  v30 = v18;
  v31 = MEMORY[0x277CE1410];
  v32 = &off_2816C2F28;
  v33 = v19;
  type metadata accessor for ShelfCollection(0, &v26);
  swift_getWitnessTable();
  v24 = sub_217008B54();
  v25 = v20;
  v21 = sub_217008B64();
  v22 = swift_getWitnessTable();
  sub_2166C24DC(&v24, v21, v22);

  v24 = v26;
  v25 = v27;
  sub_2166C24DC(&v24, v21, v22);
}

uint64_t sub_216F03BA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for CompositeLibraryCatalogView(0, a2, a3, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  *&v39 = sub_216F03F4C(v11);
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);
  type metadata accessor for CompositeLibraryCatalogView.Section(255, a2, a3, v14);
  v15 = sub_21700E984();
  *&v43 = a2;
  *(&v43 + 1) = a2;
  *&v44 = a3;
  *(&v44 + 1) = a3;
  v16 = type metadata accessor for CompositeLibraryCatalogView.SectionView(0, &v43);
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = sub_216922514();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  sub_216922530(&v39, 0, 0, 0, 0, sub_216F04998, v13, sub_216F04A44, v23, v15, v16, MEMORY[0x277CE1428], WitnessTable, v18, MEMORY[0x277CE1410], &off_2816C2F28, v19, v28, v29, v30, v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1));
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  *&v39 = v15;
  *(&v39 + 1) = v16;
  *&v40 = MEMORY[0x277CE1428];
  *(&v40 + 1) = WitnessTable;
  *&v41 = v18;
  *(&v41 + 1) = MEMORY[0x277CE1410];
  *&v42 = &off_2816C2F28;
  *(&v42 + 1) = v19;
  v24 = type metadata accessor for ShelfCollection(0, &v39);
  v25 = swift_getWitnessTable();
  sub_2166C24DC(&v31, v24, v25);
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v26 = *(*(v24 - 8) + 8);
  v26(&v39, v24);
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_2166C24DC(&v31, v24, v25);
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  return (v26)(&v43, v24);
}

uint64_t sub_216F03F4C(uint64_t a1)
{
  v2 = type metadata accessor for MappedCatalogPage(0);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28, &qword_217057640);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0, &unk_21701E4B0, &unk_2170390B0);
  sub_2170081B4();
  v10 = type metadata accessor for Page(0);
  v40 = v10;
  v11 = sub_2166B4D7C(&qword_280E2C548, type metadata accessor for Page, &unk_217040788);
  v41 = v11;
  swift_getKeyPath();
  v38 = v10;
  v39 = v11;
  swift_getKeyPath();
  sub_217007DE4();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
  {
    sub_216681B04(v9, v6, &qword_27CAC6D28, &qword_217057640);
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = v37;
      sub_216F04E54(v6, v37, type metadata accessor for MappedCatalogPage);
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
      v25 = type metadata accessor for CompositeLibraryCatalogView.Section(255, v23, v22, v24);
      sub_21700F794();
      swift_allocObject();
      v26 = sub_21700E854();
      v28 = v27;
      v29 = type metadata accessor for MappedSection(0);
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
      v30 = sub_216A3FD4C(v26, v25);
      v42 = *(v21 + *(v2 + 24));
      v43 = v30;
      MEMORY[0x28223BE20](v30);
      *(&v36 - 2) = v23;
      *(&v36 - 1) = v22;
      sub_21700DF14();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000, &qword_21701C310);
      v32 = sub_2166D9530(qword_27CACD1B0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83988]);
      sub_216F00D7C(sub_216F04A6C, (&v36 - 4), v31, v25, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v33);
      v35 = v34;

      v42 = v35;
      sub_21700E984();
      swift_getWitnessTable();
      sub_21700E8E4();
      sub_216F04EB4(v21, type metadata accessor for MappedCatalogPage);
      v19 = v43;
      goto LABEL_5;
    }

    sub_216697664(v6, &qword_27CAC6D30, &qword_2170576A0);
  }

  v14 = type metadata accessor for CompositeLibraryCatalogView.Section(255, *(a1 + 16), *(a1 + 24), v13);
  sub_21700F794();
  swift_allocObject();
  v15 = sub_21700E854();
  v17 = v16;
  v18 = type metadata accessor for MappedSection(0);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = sub_216A3FD4C(v15, v14);
LABEL_5:
  sub_216697664(v9, &qword_27CAC6D28, &qword_217057640);
  return v19;
}

uint64_t sub_216F044C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v27 = a7;
  v24 = a5;
  v25 = type metadata accessor for CompositeLibraryCatalogView.Section(0, a5, a6, a4);
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v20 - v11;
  v14 = type metadata accessor for CompositeLibraryCatalogView(0, a5, a6, v13);
  v15 = (a4 + *(v14 + 44));
  v16 = v15[1];
  v23 = *v15;
  v21 = a4;
  v22 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0, &unk_21701E4B0, &unk_2170390B0);
  v17 = sub_2170081B4();
  v18 = *(v21 + *(v14 + 52));
  (*(v10 + 16))(v12, v26, v25);

  return sub_216F019E8(v23, v22, v17, v18, v12, v28, v29, v24, v27, v24, a6, a6);
}

void sub_216F04690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  sub_216681B04(v20 + *(v24 + 36), &a9 - v35, &qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v37 + 32))(v26, v36);
  }

  else
  {
    sub_21700ED94();
    v38 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v29 + 8))(v33, v27);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F0485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2167CC3A4(a1, a2);
  v3 = type metadata accessor for MappedSection(0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t sub_216F04900@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for CompositeLibraryCatalogView(0, v4, v5, a1);
  OUTLINED_FUNCTION_36(v6);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_216F03BA4(v8, v4, v5, a2);
}

uint64_t sub_216F04998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = OUTLINED_FUNCTION_36_45();
  v14 = type metadata accessor for CompositeLibraryCatalogView(v11, v12, v10, v13);
  OUTLINED_FUNCTION_36(v14);
  v16 = v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80));

  return sub_216F044C0(a1, a2, a3, v16, v9, v10, a4);
}

void sub_216F04A8C(uint64_t a1)
{
  sub_2166B0B84();
  if (v2 <= 0x3F)
  {
    sub_216F04D74(319, &qword_27CAC6E90, MEMORY[0x277CDF860]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v5 <= 0x3F)
      {
        type metadata accessor for CompositeLibraryCatalogView.Section(319, *(a1 + 24), *(a1 + 40), v4);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216F04B9C(uint64_t a1)
{
  v1 = type metadata accessor for MappedSection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_216F04C1C(uint64_t a1)
{
  sub_2166B49AC(319);
  if (v1 <= 0x3F)
  {
    sub_216820EBC(319);
    if (v2 <= 0x3F)
    {
      sub_216F04D74(319, &qword_27CACD338, MEMORY[0x277CDF4A0]);
      if (v3 <= 0x3F)
      {
        sub_2166B0B84();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AppDestinationPageProviderBox();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObjectGraph(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UserSocialProfileCoordinator(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SocialGraphController(319);
                if (v8 <= 0x3F)
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
}

void sub_216F04D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AA0, &unk_21701E4B0);
    OUTLINED_FUNCTION_3_2();
    v9 = sub_2166D9530(v7, &qword_27CAB9AA0, &unk_21701E4B0, v8);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_216F04E54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216F04EB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F04F64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v26 = v3;
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v25 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for ModalFlowAction(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D234();
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v19[*(v17 + 24)] = xmmword_217015580;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700E094();
  v28[3] = v17;
  v28[4] = sub_216F052D8(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_216B9DD8C(v19, boxed_opaque_existential_1);
  (*(v8 + 16))(v5, v11, v6);
  v22 = v26;
  v21 = v27;
  (*(v26 + 104))(v5, *MEMORY[0x277D21E10], v27);
  v23 = sub_21700D5E4();
  (*(v22 + 8))(v5, v21);
  (*(v8 + 8))(v11, v6);
  (*(v25 + 8))(v16, v12);
  sub_216B9DDF0(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v23;
}

uint64_t sub_216F052D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F05378(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v61 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v70 = v5 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v65 = v6;
  MEMORY[0x28223BE20](v7);
  v63 = v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  v64 = v58 - v11;
  v62 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v58[1] = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v58 - v28;
  v59 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  v36 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v40 = v39 - v38;
  if (sub_21688D828(3, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v23 + 16))(v26, v29, v21);
    sub_21700D244();
    (*(v23 + 8))(v29, v21);
  }

  sub_216F05AB8(v61, v20, type metadata accessor for GoToArtistContext);
  swift_storeEnumTagMultiPayload();
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v41 = sub_217005EF4();
  OUTLINED_FUNCTION_3_27(v41);
  v42 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_27(v42);
  v43 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_3_27(v43);
  v44 = v40 + v36[10];
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = v59;
  (*(v31 + 16))(v40, v35, v59);
  sub_216F05AB8(v20, v40 + v36[5], type metadata accessor for FlowAction.Destination);
  sub_217006214();
  v46 = sub_2170061F4();
  v48 = v47;
  (*(v60 + 8))(v16, v62);
  sub_2167B96B4(v20, type metadata accessor for FlowAction.Destination);
  (*(v31 + 8))(v35, v45);
  v49 = (v40 + v36[6]);
  *v49 = v46;
  v49[1] = v48;
  *(v40 + v36[7]) = 0;
  sub_2167A66B4(&v73, v44);
  type metadata accessor for ObjectGraph(0);
  v50 = v64;
  v51 = v68;
  sub_21700E094();
  *(&v74 + 1) = v36;
  v75 = sub_216F05A70(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
  sub_216F05AB8(v40, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v53 = v65;
  v54 = v63;
  v55 = v67;
  (*(v65 + 104))(v63, *MEMORY[0x277D21E18], v67);
  sub_21700D5E4();

  (*(v53 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(&v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v71 + 104))(v70, *MEMORY[0x277D21CA8], v72);
  v56 = sub_21700E1F4();
  (*(v66 + 8))(v50, v51);
  sub_2167B96B4(v40, type metadata accessor for FlowAction);
  return v56;
}

uint64_t sub_216F05A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F05AB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216F05B18@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v78 = v2;
  v79 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v77 = v4 - v3;
  v5 = OUTLINED_FUNCTION_4_1();
  v73 = type metadata accessor for FlowAction.Destination(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v72 = (v8 - v7);
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v68 = v10;
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v76 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v74 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = type metadata accessor for RecordLabelDetailPageIntent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = sub_21700BE64();
  v32 = v31;
  LOBYTE(v80[0]) = 1;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v71 = v33;
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  *v29 = 17;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  *(v29 + 88) = v30;
  *(v29 + 96) = v32;
  *(v29 + 104) = 0;
  *(v29 + 112) = 1;
  sub_216F068A4(v29, v25, type metadata accessor for ContentDescriptor);
  v37 = type metadata accessor for ReferrerInfo(0);
  v38 = v25;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
  if (sub_21688D828(32, 48))
  {
    v42 = v20;
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    v44 = v68;
    v43 = v69;
    (*(v68 + 16))(v12, v15, v69);
    v42 = v20;
    sub_21700D244();
    (*(v44 + 8))(v15, v43);
  }

  v45 = v72;
  v72[3] = v21;
  v45[4] = sub_216F0685C(&qword_27CAC9E90, type metadata accessor for RecordLabelDetailPageIntent, &unk_21705AE2C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  v70 = v38;
  sub_216F068A4(v38, boxed_opaque_existential_1, type metadata accessor for RecordLabelDetailPageIntent);
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for FlowAction(0);
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v48 = v75;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v71);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v37);
  v59 = v48 + v47[10];
  *(v59 + 32) = 0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v60 = v74;
  v61 = v76;
  (*(v74 + 16))(v48, v42, v76);
  sub_216F068A4(v45, v48 + v47[5], type metadata accessor for FlowAction.Destination);
  v62 = v77;
  sub_217006214();
  v63 = sub_2170061F4();
  v73 = v64;
  (*(v78 + 8))(v62, v79);
  (*(v60 + 8))(v42, v61);
  sub_216F06904(v70, type metadata accessor for RecordLabelDetailPageIntent);
  sub_216F06904(v29, type metadata accessor for ContentDescriptor);
  sub_216F06904(v45, type metadata accessor for FlowAction.Destination);
  v65 = (v48 + v47[6]);
  v66 = v73;
  *v65 = v63;
  v65[1] = v66;
  *(v48 + v47[7]) = 0;
  return sub_2167A66B4(v80, v59);
}

void *sub_216F060C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v79 = v7 - v6;
  v8 = OUTLINED_FUNCTION_4_1();
  v78 = type metadata accessor for FlowAction(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v77 = v11 - v10;
  OUTLINED_FUNCTION_4_1();
  v76 = sub_21700BEA4();
  OUTLINED_FUNCTION_1();
  v72 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v75 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD340, &unk_217070C70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBAF0, &qword_217069CF8);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  __src[0] = sub_21700C164();
  __src[1] = v25;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x7265746F6F66, 0xE600000000000000);

  v26 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  sub_21700F364();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_216BC8BF0();
  v31 = (a2 + v26[8]);
  *v31 = v32;
  v31[1] = v33;
  sub_21700C0F4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_216F06790(v18);
LABEL_5:
    v34 = (a2 + v26[9]);
    *v34 = 0;
    v34[1] = 0;
    v34[2] = 0;
    goto LABEL_14;
  }

  (*(v21 + 32))(v24, v18, v19);
  if (sub_216E9A370())
  {
    (*(v21 + 8))(v24, v19);
    goto LABEL_5;
  }

  v35 = sub_216F067F8();
  v36 = sub_21700EC74();
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v38 = v36;
    v65 = v21;
    v66 = v26;
    v67 = a1;
    v68 = a2;
    v83 = MEMORY[0x277D84F90];
    sub_216AB96F8(0, v36 & ~(v36 >> 63), 0);
    v37 = v83;
    result = sub_21700EC54();
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v74 = (v72 + 2);
    ++v73;
    ++v72;
    v71 = v24;
    v70 = v35;
    v69 = v19;
    do
    {
      v40 = sub_21700ECE4();
      v42 = v75;
      v41 = v76;
      (*v74)(v75);
      v40(v81, 0);
      v43 = v77;
      sub_216F05B18(v77);
      v44 = sub_21700BE84();
      v46 = v45;
      __src[7] = v78;
      __src[8] = sub_216F0685C(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
      sub_216F068A4(v43, boxed_opaque_existential_1, type metadata accessor for FlowAction);
      v48 = v79;
      sub_217006214();
      v49 = sub_2170061F4();
      v51 = v50;
      (*v73)(v48, v80);
      sub_216F06904(v43, type metadata accessor for FlowAction);
      (*v72)(v42, v41);
      __src[0] = v49;
      __src[1] = v51;
      __src[2] = v44;
      __src[3] = v46;
      v83 = v37;
      v53 = *(v37 + 16);
      v52 = *(v37 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_216AB96F8(v52 > 1, v53 + 1, 1);
        v37 = v83;
      }

      *(v37 + 16) = v53 + 1;
      memcpy((v37 + 72 * v53 + 32), __src, 0x48uLL);
      v24 = v71;
      v19 = v69;
      sub_21700ECA4();
      --v38;
    }

    while (v38);
    a2 = v68;
    a1 = v67;
    v26 = v66;
    v21 = v65;
  }

  v54 = sub_216983738(228);
  v56 = v55;
  (*(v21 + 8))(v24, v19);
  v57 = (a2 + v26[9]);
  *v57 = v54;
  v57[1] = v56;
  v57[2] = v37;
LABEL_14:
  v58 = sub_21700C144();
  if (v58 == 2 || (v58 & 1) == 0)
  {
    v59 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = &unk_28290EB00;
  }

  sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  (*(v60 + 8))(a1);
  *(a2 + v26[10]) = v59;
  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  *(a2 + v26[7]) = 0;
  return result;
}

uint64_t sub_216F06790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD340, &unk_217070C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216F067F8()
{
  result = qword_27CACBAF8;
  if (!qword_27CACBAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBAF0, &qword_217069CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBAF8);
  }

  return result;
}

uint64_t sub_216F0685C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F068A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216F06904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F069A4()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06A00()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](a1);
  return sub_21700F944();
}

uint64_t sub_216F06CB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06DA8(char a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](qword_217070FE0[a1]);
  return sub_21700F944();
}

uint64_t sub_216F06DF4(char a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](qword_217071010[a1]);
  return sub_21700F944();
}

uint64_t sub_216F06F54(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_6_8();
  a2(v5, a1);
  return sub_21700F944();
}

uint64_t sub_216F06FFC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_6_8();
  a2(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216F0706C()
{
  OUTLINED_FUNCTION_20_3();
  if (!v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_146();
  v5 = v5 && v4 == v0;
  if (v5 || (sub_21700F7D4() & 1) != 0)
  {
    return 5;
  }

  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v8);
  v9 = sub_216F08C30();
  v10 = sub_2169356A4(v2, v0, v9);

  os_unfair_lock_unlock(*(v7 + 16));

  if (v10 == 6)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_216F07138(uint64_t a1)
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

uint64_t sub_216F0718C(char a1)
{
  if (a1)
  {
    return 0x656E696C636564;
  }

  else
  {
    return 0x747065636361;
  }
}

unint64_t sub_216F071C0(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_216F0720C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v6);
  sub_216F08750(v3, v2, a1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_216F073C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_3();
  if (!v2)
  {
    return 0;
  }

  MEMORY[0x21CE9F490]();
  return 64;
}

id sub_216F0742C(uint64_t a1)
{
  v1 = sub_21700E804();

  v2 = [swift_getObjCClassFromMetadata() propertySetWithProperties_];

  return v2;
}

uint64_t sub_216F07498(char a1)
{
  v2 = 126;
  v3 = 0;
  switch(a1)
  {
    case 1:
      v2 = 122;
      return sub_216983738(v2);
    case 2:
      v2 = 273;
      return sub_216983738(v2);
    case 3:
      v2 = 348;
      return sub_216983738(v2);
    case 4:
      return v3;
    case 5:
      v2 = 95;
      return sub_216983738(v2);
    default:
      return sub_216983738(v2);
  }
}

uint64_t sub_216F0750C(char a1)
{
  result = 0x2064656B636F6C62;
  switch(a1)
  {
    case 1:
      v3 = 177;
      return sub_216983738(v3);
    case 2:
      v3 = 273;
      return sub_216983738(v3);
    case 3:
      v3 = 42;
      return sub_216983738(v3);
    case 4:
      return result;
    case 5:
      return 1919251317;
    default:
      v3 = 126;
      return sub_216983738(v3);
  }
}

uint64_t sub_216F07590(uint64_t a1)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_216982D68();
  v38 = v1;
  sub_216F0720C(v10, 1);

  v36 = type metadata accessor for UserSocialProfileGraph(0);
  v37 = a1;
  v11 = *(a1 + *(v36 + 28));
  v12 = *(v11 + 16);
  v35 = v4;
  if (v12)
  {
    v13 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_21695BC04(v13, v9);
      v16 = *(v9 + 3);
      v17 = *(v9 + 4);
      sub_21700DF14();
      sub_2168F3F20(v9);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v15 = v20;
        }

        v18 = *(v15 + 16);
        if (v18 >= *(v15 + 24) >> 1)
        {
          sub_21693776C();
          v15 = v21;
        }

        *(v15 + 16) = v18 + 1;
        v19 = v15 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v22 = v38;
  sub_216F072A0(v15);

  v23 = *(v37 + *(v36 + 24));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v26 = *(v35 + 72);
    do
    {
      sub_21695BC04(v25, v6);
      v27 = *(v6 + 3);
      v28 = *(v6 + 4);
      sub_21700DF14();
      sub_2168F3F20(v6);
      if (v28)
      {
        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          sub_216F07A9C(1, v27, v28, 0);
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = *(v22 + 32);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  v32 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v33 = *(*(v22 + v32) + 16);
  os_unfair_lock_unlock(*(v30 + 16));

  v39 = v33;
  return sub_21700CC34();
}

uint64_t sub_216F07870(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v5 + 24);
  v10 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v7[v9], 1, 1, v10);
  *v7 = 18;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = a1;
  *(v7 + 4) = a2;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 13) = 0;
  v7[112] = 1;
  type metadata accessor for SocialGraphController(0);
  sub_21700DF14();
  v11 = sub_216F08658();
  v12 = v11;
  if (a2 && (v13 = ContentDescriptor.modelObject(with:)(v11)) != 0)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();

    if (!v15)
    {
    }
  }

  else
  {

    v15 = 0;
  }

  sub_2168F3F20(v7);
  return v15;
}

void sub_216F079D4()
{
  OUTLINED_FUNCTION_20_3();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_6_128();
    v7 = v7 && v6 == v0;
    if (!v7 && (OUTLINED_FUNCTION_4_152(v5, v6) & 1) == 0)
    {
      OUTLINED_FUNCTION_3_177();
      sub_21700DF14();
      os_unfair_lock_lock(v2);
      sub_216F088B0(v1);
      os_unfair_lock_unlock(*(v3 + 16));
    }
  }
}

uint64_t sub_216F07A9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v4;
    v9 = result;
    result = *(v4 + 40);
    v10 = *(v4 + 48);
    if (result != a2 || v10 != a3)
    {
      result = OUTLINED_FUNCTION_4_152(result, v10);
      if ((result & 1) == 0)
      {
        v13 = *(v6 + 32);
        v14 = *(v13 + 16);

        sub_21700DF14();
        os_unfair_lock_lock(v14);
        sub_216F089A0(v9 & 1, v6, a2, a3);
        os_unfair_lock_unlock(*(v13 + 16));

        if (a4)
        {
          v15 = *(v13 + 16);

          os_unfair_lock_lock(v15);
          swift_beginAccess();
          os_unfair_lock_unlock(*(v13 + 16));

          sub_21700CC34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_217013DA0;
          *(v16 + 32) = a2;
          *(v16 + 40) = a3;
          sub_21700DF14();
          sub_21700CC34();
        }
      }
    }
  }

  return result;
}

uint64_t sub_216F07C18(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = result;
    v8 = (a2 + 40);
    v9 = v4 + 1;
    while (--v9)
    {
      result = *(v3 + 40);
      if (result != *&v8[-2]._os_unfair_lock_opaque || *(v3 + 48) != *&v8->_os_unfair_lock_opaque)
      {
        v8 += 4;
        result = sub_21700F7D4();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      return result;
    }

    OUTLINED_FUNCTION_3_177();
    sub_21700DF14();
    os_unfair_lock_lock(v8);
    sub_216F08A70(v7 & 1, v3, a2);
    os_unfair_lock_unlock(MEMORY[0x10]);

    if (a3)
    {
      return sub_21700CC34();
    }
  }

  return result;
}

uint64_t sub_216F07CF8()
{
  OUTLINED_FUNCTION_20_3();
  if (!v5 || ((OUTLINED_FUNCTION_5_146(), v8) ? (v8 = v6 == v0) : (v8 = 0), v8 || (v9 = v7, (sub_21700F7D4() & 1) != 0)))
  {
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_177();
    sub_21700DF14();
    os_unfair_lock_lock(v3);
    v12 = *v9;
    swift_beginAccess();
    v13 = *(v1 + v12);
    sub_21700DF14();
    v10 = sub_216CE11AC(v2, v0, v13);

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return v10 & 1;
}

void sub_216F07DD0()
{
  OUTLINED_FUNCTION_20_3();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_6_128();
    v7 = v7 && v5 == v0;
    if (!v7)
    {
      v8 = v6;
      if ((OUTLINED_FUNCTION_4_152(v4, v5) & 1) == 0)
      {
        v9 = *(v1 + 32);
        v10 = *(v9 + 16);

        sub_21700DF14();
        os_unfair_lock_lock(v10);
        sub_216F08B60(v1, v2, v0);
        os_unfair_lock_unlock(*(v9 + 16));

        if (v8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_217013DA0;
          *(v11 + 32) = v2;
          *(v11 + 40) = v0;
          sub_21700DF14();
          sub_21700CC34();
        }
      }
    }
  }
}

uint64_t sub_216F07EC8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_216F08CA4(v0);
  os_unfair_lock_unlock(*(v1 + 16));
}

id sub_216F07F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  result = ContentDescriptor.modelObject(with:)(a2);
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_216F07FB4(char a1)
{
  result = 0x6E69776F6C6C6F66;
  switch(a1)
  {
    case 1:
      result = 0x6F6C6C6F46746F6ELL;
      break;
    case 2:
      result = 0x6574736575716572;
      break;
    case 3:
      result = 0x64656B636F6C62;
      break;
    case 4:
      result = 0x4264656B636F6C62;
      break;
    case 5:
      result = 1718379891;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216F080C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216F071C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216F080F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F07FB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216F08140@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216F07138(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216F08170@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F0718C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216F0824C(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_216F082A4(a1, a2);
  return v4;
}

void *sub_216F082A4(char *a1, uint64_t a2)
{
  v4 = v2;
  v23 = a2;
  v22[1] = *v2;
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  sub_21700CE04();
  sub_21700CCB4();
  v15 = *(v8 + 8);
  v15(v11, v6);
  v16 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v23);
    v15(a1, v6);
    sub_2169CADB0(v14);
    v18 = 0;
LABEL_5:
    v4[2] = v18;
    return v4;
  }

  v19 = sub_21700D3C4();
  if (!v3)
  {
    v18 = v19;
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v23);
    v15(a1, v6);
    (*(*(v16 - 8) + 8))(v14, v16);
    goto LABEL_5;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_216F08580(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216F09658();
  sub_21700CD14();
  v6 = v7;
  if (v7 == 6)
  {
    a1 = 0;
    a2 = 0;
    v6 = 0;
  }

  else
  {
    sub_21700DF14();
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
}

uint64_t sub_216F0862C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216F0824C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_216F08658()
{
  v0 = sub_216F08DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD360, &unk_217070EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v2;
  *(inited + 48) = sub_216F08DC8();
  sub_216F09614();
  v3 = sub_21700E384();
  v4 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v5 = sub_216F09214(MEMORY[0x277D84F90], v3);
  v6 = [v0 propertySetByCombiningWithPropertySet_];

  return v6;
}

uint64_t sub_216F08750(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_21700DF14();
    return sub_216F08840(v4);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21700DF14();
    v6 = sub_217007DD4();
    sub_216F092C8(a3, sub_216F095D0, 0, v7);
    v6(&v8, 0);
  }
}

uint64_t sub_216F08840(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216F088B0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_217007DD4();
  v3 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *v3;
  sub_21693A574();
  *v3 = v6;
  v1(&v5, 0);
}

uint64_t sub_216F08A70(char a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  if (a1)
  {
    swift_beginAccess();
    sub_21700DF14();
    sub_216AB3FD4(v6);
  }

  else
  {
    swift_beginAccess();
    if (*(*(a2 + v5) + 16))
    {
      v7 = *(a3 + 16);
      for (i = (a3 + 40); v7; --v7)
      {
        v9 = *(i - 1);
        v10 = *i;
        sub_21700DF14();
        sub_216ABB244(v9, v10);

        i += 2;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_216F08C30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216F08CA4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_217007DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD358, &qword_217070EB8);
  sub_21700E3D4();
  v2(v7, 0);

  v3 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v4 = MEMORY[0x277D84FA0];
  *(a1 + v3) = MEMORY[0x277D84FA0];

  v5 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs;
  swift_beginAccess();
  *(a1 + v5) = v4;
}

id sub_216F08DC8()
{
  sub_216F09614();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21703A490;
  *(v0 + 32) = sub_21700E514();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_21700E514();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_21700E514();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_21700E514();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_21700E514();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_21700E514();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_21700E514();
  *(v0 + 136) = v7;
  return sub_216F0742C(v0);
}

uint64_t sub_216F08EE0()
{

  v1 = OBJC_IVAR____TtC7MusicUI21SocialGraphController__followStateMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340, &qword_217054AB8);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216F08F90()
{
  sub_216F08EE0();

  return MEMORY[0x2821FE8D8](v0);
}

_BYTE *storeEnumTagSinglePayload for Social.FollowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216F090D0()
{
  result = qword_27CACD348;
  if (!qword_27CACD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD348);
  }

  return result;
}

uint64_t sub_216F091BC(uint64_t a1, uint64_t a2)
{
  result = sub_21668F258(&qword_27CACD350, a2, type metadata accessor for Social.FollowStateMapResponse, &unk_217070DBC);
  *(a1 + 8) = result;
  return result;
}

id sub_216F09214(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_21700E804();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_216F09614();
  v5 = sub_21700E344();

LABEL_6:
  v6 = [v2 initWithProperties:v4 relationships:v5];

  return v6;
}

uint64_t sub_216F092C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_216F0933C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_216F0933C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  sub_216ABEAA0();
  v6 = v42;
  v7 = v44;
  v8 = v45;
  v33 = v46;
  v34 = v41;
  v9 = (v43 + 64) >> 6;
  sub_21700DF14();

  v32 = v42;
  if (v45)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v34 + 48) + 16 * v12);
      v14 = v13[1];
      LOBYTE(v12) = *(*(v34 + 56) + v12);
      v39[0] = *v13;
      v39[1] = v14;
      v40 = v12;
      sub_21700DF14();
      v33(&v36, v39);

      v15 = v36;
      v16 = v37;
      v17 = v38;
      v18 = *v47;
      v20 = sub_2166AF66C(v36, v37);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      if (v18[3] >= v21 + v22)
      {
        if ((v35 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118, &qword_217029E20);
          sub_21700F564();
        }
      }

      else
      {
        sub_216AB9554();
        v24 = sub_2166AF66C(v15, v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v20 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v47;
      if (v23)
      {

        *(v26[7] + v20) = v17;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v26[6] + 16 * v20);
        *v27 = v15;
        v27[1] = v16;
        *(v26[7] + v20) = v17;
        v28 = v26[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v26[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_216687978(v34);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216F095D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216ABC480(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

unint64_t sub_216F09614()
{
  result = qword_280E29D70;
  if (!qword_280E29D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D70);
  }

  return result;
}

unint64_t sub_216F09658()
{
  result = qword_27CACD368;
  if (!qword_27CACD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD368);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Social.FollowRequestResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216F0978C()
{
  result = qword_27CACD370;
  if (!qword_27CACD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD370);
  }

  return result;
}

uint64_t type metadata accessor for LinkView(uint64_t a1)
{
  result = qword_280E2BAD0;
  if (!qword_280E2BAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216F09858(uint64_t a1)
{
  type metadata accessor for LinkComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_21692ED34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216F09910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169936D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216F099A0(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v7 = type metadata accessor for ActionButtonListStyle(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  *v3 = sub_217007F94() & 1;
  *(v3 + 8) = v9;
  *(v3 + 16) = v10 & 1;
  sub_21700AEA4();
  *(v3 + 24) = v14;
  *(v3 + 32) = v15;
  v11 = *(v7 + 24);
  *(v3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v12 = v3 + *(v7 + 28);
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_216F0AE68(a3, a1, a2);
  sub_216F0AB3C(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle, &unk_21702C964);
  sub_21700A364();
  return sub_216F0AB84(v3);
}

uint64_t sub_216F09B70@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v29 = a1;
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v30 = v5;
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_0();
  v6 = type metadata accessor for LinkView(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD398, &qword_217071110);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v29 - v10);
  type metadata accessor for LinkComponentModel(0);
  sub_2166A6EA4();
  v12 = v9[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  sub_216F0AA1C();
  v14 = swift_allocObject();
  sub_216F0AA74();
  v15 = v9[14];
  *(v11 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = v11 + v9[15];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v11[5] = sub_216F0AACC;
  v11[6] = v14;
  v11[7] = 0;
  v11[8] = 0;
  sub_216F099A0(&qword_27CACD398, &qword_217071110, &qword_27CACD3B0);
  sub_216697664(v11, &qword_27CACD398, &qword_217071110);
  sub_217009CD4();
  v17 = v3 + *(v7 + 32);
  v32 = *(v17 + 8);
  v18 = *(v17 + 32);
  if (v18 == 1)
  {
    v20 = v30;
    v19 = v31;
  }

  else
  {

    sub_21700ED94();
    v21 = sub_217009C34();
    OUTLINED_FUNCTION_10_107(v21, &dword_216679000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_4_153();
    v20 = v30;
    v19 = v31;
    (*(v30 + 8))(v2, v31);
  }

  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3A0, &qword_217071178);
  OUTLINED_FUNCTION_3_178(v23);
  sub_217009CB4();
  if (!v18)
  {

    sub_21700ED94();
    v24 = v20;
    v25 = sub_217009C34();
    OUTLINED_FUNCTION_10_107(v25, &dword_216679000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_4_153();
    (*(v24 + 8))(v2, v19);
  }

  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3A8, &qword_217071180);
  return OUTLINED_FUNCTION_3_178(v27);
}