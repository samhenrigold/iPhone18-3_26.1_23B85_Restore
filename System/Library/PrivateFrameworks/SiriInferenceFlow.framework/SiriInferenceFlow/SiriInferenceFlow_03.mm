uint64_t sub_222DCBEC8(void *a1)
{
  v1 = [a1 phonemeData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222DDB500();

  return v3;
}

unint64_t sub_222DCBF2C()
{
  result = qword_27D048398;
  if (!qword_27D048398)
  {
    sub_222DDB200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048398);
  }

  return result;
}

uint64_t sub_222DCBF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479D0, &unk_222DDC760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222DCBFEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9B0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483A0, &qword_222DDE918);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_222DDC9B0;
  *(v3 + 32) = 0x7365756C6176;
  *(v3 + 40) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483A8, &qword_222DDE920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222DDC9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483B0, &qword_222DDE928);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_222DDC9B0;
  *(v5 + 32) = 0x73736572646461;
  *(v5 + 40) = 0xE700000000000000;
  v6 = [a1 _geoMapItem];
  if (v6 && (v7 = [v6 addressDictionary], swift_unknownObjectRelease(), v7))
  {
    v8 = sub_222DDB450();
  }

  else
  {
    v8 = sub_222DDB460();
  }

  v9 = sub_222DCC274(v8);

  *(v5 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483B8, &qword_222DDE930);
  *(v4 + 32) = sub_222DDB460();
  *(v3 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483C0, &qword_222DDE938);
  v10 = sub_222DDB460();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483C8, &qword_222DDE940);
  *(inited + 48) = v10;
  return sub_222DDB460();
}

void *sub_222DCC274(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v46 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_222DCC7A0(*(a1 + 48) + 40 * (v9 | (v7 << 6)), &v50);
    v48[0] = v50;
    v48[1] = v51;
    v49 = v52;
    if (swift_dynamicCast())
    {
      v10 = *(&v47[0] + 1);
      if (*(&v47[0] + 1))
      {
        v44 = *&v47[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_222DD75B4();
          v46 = v14;
        }

        v11 = v46[2];
        v12 = v11 + 1;
        if (v11 >= v46[3] >> 1)
        {
          sub_222DD75B4();
          v12 = v11 + 1;
          v46 = v15;
        }

        v46[2] = v12;
        v13 = &v46[2 * v11];
        v13[4] = v44;
        v13[5] = v10;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_222DDBAF0();
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v16 = sub_222DDB460();
  v17 = 0;
  v45 = v46[2];
  v18 = v46 + 5;
  while (v45 != v17)
  {
    if (v17 >= v46[2])
    {
      goto LABEL_37;
    }

    v20 = *(v18 - 1);
    v19 = *v18;
    swift_bridgeObjectRetain_n();
    sub_222DCC7FC(1, v20, v19);
    v21 = sub_222DDB730();
    v23 = v22;

    v24 = sub_222DCC8BC(1uLL, v20, v19);
    *&v48[0] = v21;
    *(&v48[0] + 1) = v23;
    *&v50 = v24;
    *(&v50 + 1) = v25;
    *&v51 = v26;
    *(&v51 + 1) = v27;
    sub_222DCC990();
    sub_222DDB580();

    sub_222DDB7E0();
    *&v47[0] = v20;
    *(&v47[0] + 1) = v19;

    sub_222DDB7E0();
    if (*(a1 + 16) && (v28 = sub_222DCCA5C(v48), (v29 & 1) != 0))
    {
      sub_222D8FDAC(*(a1 + 56) + 32 * v28, v47);
      sub_222DCCAA0(v48);
      swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_222DCCA5C(&v50);
      if (__OFADD__(v16[2], (v31 & 1) == 0))
      {
        goto LABEL_38;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483D8, &qword_222DDE948);
      if (sub_222DDB8E0())
      {
        v34 = sub_222DCCA5C(&v50);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_40;
        }

        v32 = v34;
      }

      if (v33)
      {
        v36 = (v16[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_0(v36);
        sub_222D93798(v47, v36);
      }

      else
      {
        v16[(v32 >> 6) + 8] |= 1 << v32;
        sub_222DCC7A0(&v50, v16[6] + 40 * v32);
        sub_222D93798(v47, (v16[7] + 32 * v32));
        v40 = v16[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_39;
        }

        v16[2] = v42;
      }

      sub_222DCCAA0(&v50);
    }

    else
    {
      sub_222DCCAA0(v48);
      v37 = sub_222DCCA5C(&v50);
      if (v38)
      {
        v39 = v37;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483D8, &qword_222DDE948);
        sub_222DDB8E0();
        sub_222DCCAA0(v16[6] + 40 * v39);
        sub_222D93798((v16[7] + 32 * v39), v47);
        sub_222DDB8F0();

        sub_222DCCAA0(&v50);
      }

      else
      {
        sub_222DCCAA0(&v50);

        memset(v47, 0, sizeof(v47));
      }

      sub_222D93730(v47);
    }

    v18 += 2;
    ++v17;
  }

  return v16;
}

uint64_t sub_222DCC7FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222DDB570();
    v3 = sub_222DDB5E0();

    return v3;
  }

  return result;
}

unint64_t sub_222DCC8BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_222DDB570();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_222DDB5E0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222DCC990()
{
  result = qword_27D0483D0;
  if (!qword_27D0483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0483D0);
  }

  return result;
}

unint64_t sub_222DCC9E4(uint64_t a1, uint64_t a2)
{
  sub_222DDBB60();
  sub_222DDB560();
  v4 = sub_222DDBB90();

  return sub_222DCCAF4(a1, a2, v4);
}

unint64_t sub_222DCCA5C(uint64_t a1)
{
  v2 = sub_222DDB7C0();

  return sub_222DCCBA8(a1, v2);
}

unint64_t sub_222DCCAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222DDBAC0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_222DCCBA8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_222DCC7A0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DCE510](v8, a1);
    sub_222DCCAA0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(SiriInferenceFlow::ContactDisambiguationModel *__return_ptr retstr, Swift::OpaquePointer contacts, Swift::String prompt, Swift::String contactSelectionDirectInvocationID)
{
  v6 = sub_222DA8780();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    retstr->contacts = contacts;
    retstr->prompt = prompt;
    retstr->contactSelectionDirectInvocationID = contactSelectionDirectInvocationID;
    retstr->contactSelectionDirectInvocationKey.value._countAndFlagsBits = 0;
    retstr->contactSelectionDirectInvocationKey.value._object = 0;
    retstr->encodedContacts._rawValue = v7;
    return;
  }

  v8 = v6;
  v27 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_55_2();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v27;
    v23 = contacts._rawValue & 0xC000000000000001;
    rawValue = contacts._rawValue;
    do
    {
      if (v23)
      {
        MEMORY[0x223DCE590](v9, contacts._rawValue);
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
      }

      sub_222DCE24C(v25);

      v10 = v25[0];
      v11 = v25[1];
      v12 = v25[2];
      v13 = v25[3];
      v14 = v26;
      v27 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_19_4(v15);
        v20 = v19;
        sub_222DA54E8(v18, v16 + 1, 1);
        v14 = v20;
        v7 = v27;
      }

      ++v9;
      v7[2] = v16 + 1;
      v17 = &v7[6 * v16];
      v17[4] = v10;
      v17[5] = v11;
      v17[6] = v12;
      v17[7] = v13;
      *(v17 + 4) = v14;
      contacts._rawValue = rawValue;
    }

    while (v8 != v9);

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t ContactHandleDisambiguationModel.init(contact:contactHandles:isDeviceLocked:contactSelectionDirectInvocationID:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_222DCE24C(&v37);
  v34 = a1;

  v15 = v37;
  v32 = v38;
  v33 = *(&v37 + 1);
  v30 = v39;
  v31 = *(&v38 + 1);
  v29 = *(&v39 + 1);
  v16 = sub_222DA8780();
  v36 = a4;
  if (!v16)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_13:
    *a8 = v34;
    *(a8 + 8) = a2;
    *(a8 + 16) = a3 & 1;
    *(a8 + 24) = v36;
    *(a8 + 32) = a5;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    *(a8 + 56) = a6;
    *(a8 + 64) = a7;
    *(a8 + 72) = v15;
    *(a8 + 80) = v33;
    *(a8 + 88) = v32;
    *(a8 + 96) = v31;
    *(a8 + 104) = v30;
    *(a8 + 112) = v29;
    *(a8 + 120) = v20;
    return result;
  }

  v17 = v16;
  result = OUTLINED_FUNCTION_39_3(v16, MEMORY[0x277D84F90]);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v28 = a7;
    v19 = 0;
    v20 = v41;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    MEMORY[0x223DCE590](v19, a2);
    while (1)
    {
      sub_222DCF124(&v37);

      v41 = v20;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = OUTLINED_FUNCTION_19_4(v21);
        sub_222DA5508(v27, v22 + 1, 1);
        v20 = v41;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (v20 + (v22 << 6));
      v24 = v37;
      v25 = v38;
      v26 = v40;
      v23[4] = v39;
      v23[5] = v26;
      v23[2] = v24;
      v23[3] = v25;
      if (v17 - 1 == v19)
      {
        break;
      }

      ++v19;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      OUTLINED_FUNCTION_27_0();
    }

    a7 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static ContactDisambiguationSnippetPluginModel.bundleName.getter()
{
  swift_beginAccess();
  v0 = qword_27D0483E0;

  return v0;
}

uint64_t static ContactDisambiguationSnippetPluginModel.bundleName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27D0483E0 = a1;
  off_27D0483E8 = a2;
}

uint64_t sub_222DCD0C4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27D0483E8;
  *a1 = qword_27D0483E0;
  a1[1] = v2;
}

uint64_t sub_222DCD114(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27D0483E0 = v2;
  off_27D0483E8 = v1;
}

uint64_t sub_222DCD180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x8000000222DE1470 == a2;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x8000000222DE1490 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000222DE14B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_222DCD298(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0xD000000000000013;
}

uint64_t sub_222DCD2F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_222DDBAC0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_222DCD370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCD180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCD398(uint64_t a1)
{
  v2 = sub_222DD2500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD3D4(uint64_t a1)
{
  v2 = sub_222DD2500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DBC398();
  *a1 = result & 1;
  return result;
}

uint64_t sub_222DCD460(uint64_t a1)
{
  v2 = sub_222DD2554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD49C(uint64_t a1)
{
  v2 = sub_222DD2554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD4D8(uint64_t a1)
{
  v2 = sub_222DD26A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD514(uint64_t a1)
{
  v2 = sub_222DD26A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DCD550(uint64_t a1)
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](0);
  return sub_222DDBB90();
}

uint64_t sub_222DCD590(uint64_t a1)
{
  v2 = sub_222DD25FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCD5CC(uint64_t a1)
{
  v2 = sub_222DD25FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactDisambiguationSnippetPluginModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v43 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483F0, &qword_222DDE950);
  OUTLINED_FUNCTION_2();
  v41 = v5;
  v42 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0483F8, &qword_222DDE958);
  OUTLINED_FUNCTION_2();
  v38 = v9;
  v39 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048400, &qword_222DDE960);
  OUTLINED_FUNCTION_2();
  v37 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_6();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048408, &qword_222DDE968);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  sub_222DD2500();
  sub_222DDBBC0();
  memcpy(v46, v43, 0x99uLL);
  v21 = sub_222DB1228(v46);
  v22 = (v17 + 8);
  if (v21)
  {
    if (v21 == 1)
    {
      nullsub_1();
      v24 = v23;
      v45[0] = 1;
      sub_222DD25FC();
      v25 = v44;
      OUTLINED_FUNCTION_29_5();
      sub_222DDBA10();
      memcpy(v45, v24, 0x80uLL);
      sub_222DD2650();
      v26 = v39;
      sub_222DDBA80();
      (*(v38 + 8))(v12, v26);
    }

    else
    {
      nullsub_1();
      v34 = v33;
      v45[0] = 2;
      sub_222DD2554();
      v35 = v40;
      v25 = v44;
      OUTLINED_FUNCTION_29_5();
      sub_222DDBA10();
      memcpy(v45, v34, sizeof(v45));
      sub_222DD25A8();
      v36 = v42;
      sub_222DDBA80();
      (*(v41 + 8))(v35, v36);
    }

    (*v22)(v20, v25);
  }

  else
  {
    nullsub_1();
    v28 = v27;
    v45[0] = 0;
    sub_222DD26A4();
    v29 = v44;
    sub_222DDBA10();
    v30 = *v28;
    v31 = v28[1];
    v32 = v28[3];
    *&v45[32] = v28[2];
    *&v45[48] = v32;
    *v45 = v30;
    *&v45[16] = v31;
    sub_222DD26F8();
    sub_222DDBA80();
    (*(v37 + 8))(v1, v13);
    (*v22)(v20, v29);
  }

  OUTLINED_FUNCTION_37_2();
}

void ContactDisambiguationSnippetPluginModel.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v66 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048448, &qword_222DDE970);
  OUTLINED_FUNCTION_2();
  v63 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v67 = &v56 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048450, &qword_222DDE978);
  OUTLINED_FUNCTION_2();
  v62 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048458, &qword_222DDE980);
  OUTLINED_FUNCTION_2();
  v61 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048460, &qword_222DDE988);
  OUTLINED_FUNCTION_2();
  v68 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v69 = v4;
  v19 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_28_5(v19, v20);
  sub_222DD2500();
  sub_222DDBBB0();
  if (v0)
  {
    goto LABEL_11;
  }

  v58 = v11;
  v59 = v1;
  v60 = v2;
  v73 = v18;
  v21 = sub_222DDBA00();
  v25 = sub_222DD274C(v21, 0);
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  v57 = 0;
  if (v23 < (v24 >> 1))
  {
    v26 = v14;
    v27 = *(v22 + v23);
    v28 = sub_222DD2798(v23 + 1, v24 >> 1, v25, v22, v23, v24);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if (v27)
      {
        if (v27 != 1)
        {
          LOBYTE(v70[0]) = 2;
          sub_222DD2554();
          OUTLINED_FUNCTION_30_5();
          v41 = v57;
          sub_222DDB970();
          v34 = v69;
          v42 = v66;
          if (v41)
          {
LABEL_16:
            (*(v68 + 8))(v18, v27);
            swift_unknownObjectRelease();
            goto LABEL_12;
          }

          v61 = v28;
          sub_222DD2814();
          v46 = v65;
          sub_222DDB9F0();
          v47 = (v68 + 8);
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_44_4();
          v55(v54, v46);
          (*v47)(v73, v27);
          memcpy(v70, v71, 0x98uLL);
          sub_222DB0F40(v70);
          OUTLINED_FUNCTION_36_3();
LABEL_21:
          memcpy(v42, v72, 0x99uLL);
          goto LABEL_12;
        }

        LOBYTE(v70[0]) = 1;
        sub_222DD25FC();
        OUTLINED_FUNCTION_30_5();
        v33 = v57;
        sub_222DDB970();
        v34 = v69;
        if (v33)
        {
          goto LABEL_16;
        }

        v61 = v28;
        sub_222DD2868();
        v43 = v64;
        sub_222DDB9F0();
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_44_4();
        v49(v48, v43);
        v50 = OUTLINED_FUNCTION_35_2();
        v51(v50);
        memcpy(v70, v71, 0x80uLL);
        sub_222DB0F4C(v70);
        OUTLINED_FUNCTION_36_3();
LABEL_20:
        v42 = v66;
        goto LABEL_21;
      }

      LOBYTE(v70[0]) = 0;
      sub_222DD26A4();
      OUTLINED_FUNCTION_30_5();
      v38 = v57;
      sub_222DDB970();
      if (!v38)
      {
        sub_222DD28BC();
        v44 = v58;
        OUTLINED_FUNCTION_29_5();
        sub_222DDB9F0();
        v45 = (v61 + 8);
        swift_unknownObjectRelease();
        (*v45)(v59, v44);
        v52 = OUTLINED_FUNCTION_35_2();
        v53(v52);
        v70[0] = *v71;
        v70[1] = *&v71[16];
        v70[2] = *&v71[32];
        v70[3] = *&v71[48];
        sub_222DB0FB4(v70);
        OUTLINED_FUNCTION_36_3();
        v34 = v69;
        goto LABEL_20;
      }

      v39 = OUTLINED_FUNCTION_35_2();
      v40(v39);
      swift_unknownObjectRelease();
LABEL_11:
      v34 = v69;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_37_2();
      return;
    }

    v14 = v26;
LABEL_10:
    sub_222DDB870();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048468, &qword_222DDE990);
    *v36 = &type metadata for ContactDisambiguationSnippetPluginModel;
    sub_222DDB980();
    sub_222DDB860();
    OUTLINED_FUNCTION_28_2();
    (*(v37 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v18, v14);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_222DCE24C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  sub_222DDB0A0();
  v10 = sub_222DDB240();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  sub_222DB783C(v9);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v12 = sub_222DDB3E0();
    __swift_project_value_buffer(v12, qword_27D04C928);
    v13 = sub_222DDB3C0();
    v14 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v14))
    {
      *OUTLINED_FUNCTION_43_0() = 0;
      OUTLINED_FUNCTION_53_2(&dword_222D8A000, v15, v16, "Contact fullName is nil!");
      OUTLINED_FUNCTION_48_2();
    }
  }

  v18 = *(v2 + qword_27D047A30);
  v17 = *(v2 + qword_27D047A30 + 8);
  if (!v17)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v19 = sub_222DDB3E0();
    __swift_project_value_buffer(v19, qword_27D04C928);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v21))
    {
      *OUTLINED_FUNCTION_43_0() = 0;
      OUTLINED_FUNCTION_52_4(&dword_222D8A000, v22, v23, "Contact view data is nil!");
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DDB0A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_222DB783C(v7);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_222DDB220();
    v25 = v26;
    OUTLINED_FUNCTION_28_2();
    (*(v27 + 8))(v7, v10);
  }

  v28 = v2 + qword_27D047A00;
  v29 = *(v2 + qword_27D047A00);
  v30 = *(v28 + 8);
  if (v25)
  {
    v31 = v24;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v25)
  {
    v33 = v25;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  if (v17)
  {
    v34 = v18;
  }

  else
  {
    v34 = 0;
  }

  if (v17)
  {
    v32 = v17;
  }

  *a1 = v31;
  a1[1] = v33;
  a1[2] = v34;
  a1[3] = v32;
  a1[4] = v29;
  a1[5] = v30;

  return sub_222D931B0(v29, v30);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:contactSelectionDirectInvocationKey:)(SiriInferenceFlow::ContactDisambiguationModel *__return_ptr retstr, Swift::OpaquePointer contacts, Swift::String prompt, Swift::String contactSelectionDirectInvocationID, Swift::String_optional contactSelectionDirectInvocationKey)
{
  object = contactSelectionDirectInvocationKey.value._object;
  countAndFlagsBits = contactSelectionDirectInvocationKey.value._countAndFlagsBits;
  v7 = contactSelectionDirectInvocationID._object;
  rawValue = contacts._rawValue;
  if (contacts._rawValue >> 62)
  {
    v22 = retstr;
    v23 = contactSelectionDirectInvocationID._countAndFlagsBits;
    v24 = prompt._object;
    v25 = prompt._countAndFlagsBits;
    v26 = sub_222DDB920();
    prompt._countAndFlagsBits = v25;
    prompt._object = v24;
    contactSelectionDirectInvocationID._countAndFlagsBits = v23;
    retstr = v22;
    v9 = v26;
  }

  else
  {
    v9 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_13:
    retstr->contacts._rawValue = rawValue;
    retstr->prompt = prompt;
    retstr->contactSelectionDirectInvocationID._countAndFlagsBits = contactSelectionDirectInvocationID._countAndFlagsBits;
    retstr->contactSelectionDirectInvocationID._object = v7;
    retstr->contactSelectionDirectInvocationKey.value._countAndFlagsBits = countAndFlagsBits;
    retstr->contactSelectionDirectInvocationKey.value._object = object;
    retstr->encodedContacts._rawValue = v10;
    return;
  }

  v30 = prompt;
  v31 = contactSelectionDirectInvocationID._countAndFlagsBits;
  v32 = retstr;
  v37 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_55_2();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = countAndFlagsBits;
    v29 = object;
    v11 = 0;
    v10 = v37;
    v33 = rawValue & 0xC000000000000001;
    v34 = rawValue;
    do
    {
      if (v33)
      {
        MEMORY[0x223DCE590](v11, rawValue);
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
      }

      sub_222DCE24C(v35);

      v12 = v35[0];
      v13 = v35[1];
      v14 = v35[2];
      v15 = v35[3];
      v16 = v36;
      v37 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_19_4(v17);
        v27 = v21;
        sub_222DA54E8(v20, v18 + 1, 1);
        v16 = v27;
        v10 = v37;
      }

      ++v11;
      v10[2] = v18 + 1;
      v19 = &v10[6 * v18];
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v15;
      *(v19 + 4) = v16;
      rawValue = v34;
    }

    while (v9 != v11);

    object = v29;
    countAndFlagsBits = v28;
    retstr = v32;
    prompt = v30;
    contactSelectionDirectInvocationID._countAndFlagsBits = v31;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_222DCE6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x8000000222DE14D0 == a2;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x8000000222DE1500 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x436465646F636E65 && a2 == 0xEF73746361746E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_222DDBAC0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_222DCE884(char a1)
{
  result = 0x73746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x74706D6F7270;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0x436465646F636E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DCE93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCE6CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCE964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DCE87C();
  *a1 = result;
  return result;
}

uint64_t sub_222DCE98C(uint64_t a1)
{
  v2 = sub_222DD2910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCE9C8(uint64_t a1)
{
  v2 = sub_222DD2910();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38_2();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048488, &qword_222DDE998);
  OUTLINED_FUNCTION_2();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_28_5(v22, v22[3]);
  v27 = sub_222DD2910();

  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
  OUTLINED_FUNCTION_13_5();
  sub_222DD29B8(v28);
  OUTLINED_FUNCTION_8_7();
  sub_222DDBA80();
  if (v27)
  {
  }

  else
  {

    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484B0, &qword_222DDE9A8);
    sub_222DD2A74(&unk_27D0484B8);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA80();
  }

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38_2();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484C8, &qword_222DDE9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_28_5(v22, v22[3]);
  sub_222DD2910();
  sub_222DDBBB0();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    LOBYTE(v42) = 0;
    OUTLINED_FUNCTION_12_7();
    sub_222DD29B8(v26);
    OUTLINED_FUNCTION_38_3();
    v27 = v46[0];
    OUTLINED_FUNCTION_16_4(1);
    v28 = sub_222DDB9C0();
    v41 = v29;
    v38 = v28;
    OUTLINED_FUNCTION_16_4(2);
    v37 = sub_222DDB9C0();
    v40 = v30;
    OUTLINED_FUNCTION_16_4(3);
    v36 = sub_222DDB990();
    v39 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484B0, &qword_222DDE9A8);
    v47 = 4;
    sub_222DD2A74(&unk_27D0484E0);
    OUTLINED_FUNCTION_38_3();
    v32 = OUTLINED_FUNCTION_6_7();
    v33(v32);
    *&v42 = v27;
    *(&v42 + 1) = v38;
    *&v43 = v41;
    *(&v43 + 1) = v37;
    *&v44 = v40;
    *(&v44 + 1) = v36;
    *&v45 = v39;
    *(&v45 + 1) = a10;
    v34 = v43;
    *v24 = v42;
    v24[1] = v34;
    v35 = v45;
    v24[2] = v44;
    v24[3] = v35;
    sub_222DB133C(&v42, v46);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v46[0] = v27;
    v46[1] = v38;
    v46[2] = v41;
    v46[3] = v37;
    v46[4] = v40;
    v46[5] = v36;
    v46[6] = v39;
    v46[7] = a10;
    sub_222DD2B34(v46);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactHandleDisambiguationModel.encodedContact.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_33_2(a1);

  return sub_222D931B0(v2, v1);
}

uint64_t sub_222DCF124@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v43 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  if (sub_222DDAEE0())
  {
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v14 = sub_222DDB3E0();
    __swift_project_value_buffer(v14, qword_27D04C928);
    v15 = sub_222DDB3C0();
    v16 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_54_2(v16))
    {
      v17 = OUTLINED_FUNCTION_43_0();
      *v17 = 0;
      _os_log_impl(&dword_222D8A000, v15, v16, "Handle is nil! Unable to create a contact handle for the view", v17, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  if (sub_222DDAEE0())
  {
    sub_222DDAE60();

    v18 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      sub_222DB783C(v13);
      goto LABEL_17;
    }
  }

  else
  {
    v19 = sub_222DDB240();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  }

  sub_222DB783C(v13);
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
  }

  v20 = sub_222DDB3E0();
  __swift_project_value_buffer(v20, qword_27D04C928);
  v21 = sub_222DDB3C0();
  v22 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_54_2(v22))
  {
    *OUTLINED_FUNCTION_43_0() = 0;
    OUTLINED_FUNCTION_52_4(&dword_222D8A000, v23, v24, "Nil handle label!");
    OUTLINED_FUNCTION_48_2();
  }

LABEL_17:
  if (sub_222DDAEE0())
  {
    sub_222DDAE70();

    v25 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v11, 1, v25) != 1)
    {
      sub_222DB783C(v11);
      goto LABEL_26;
    }
  }

  else
  {
    v26 = sub_222DDB240();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v26);
  }

  sub_222DB783C(v11);
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
  }

  v27 = sub_222DDB3E0();
  __swift_project_value_buffer(v27, qword_27D04C928);
  v28 = sub_222DDB3C0();
  v29 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_54_2(v29))
  {
    *OUTLINED_FUNCTION_43_0() = 0;
    OUTLINED_FUNCTION_53_2(&dword_222D8A000, v30, v31, "No value set on handle");
    OUTLINED_FUNCTION_48_2();
  }

LABEL_26:
  if (!sub_222DDAEE0())
  {
LABEL_29:
    v33 = 0;
    v34 = 0;
    goto LABEL_31;
  }

  sub_222DDAE60();

  v32 = sub_222DDB240();
  if (__swift_getEnumTagSinglePayload(v8, 1, v32) == 1)
  {
    sub_222DB783C(v8);
    goto LABEL_29;
  }

  v33 = sub_222DDB220();
  v34 = v35;
  OUTLINED_FUNCTION_28_2();
  (*(v36 + 8))(v8, v32);
LABEL_31:
  v37 = sub_222DDAEE0();
  if (v37)
  {
    sub_222DDAE70();

    v38 = sub_222DDB240();
    if (__swift_getEnumTagSinglePayload(v5, 1, v38) != 1)
    {
      v37 = sub_222DDB220();
      v39 = v40;
      OUTLINED_FUNCTION_28_2();
      (*(v41 + 8))(v5, v38);
      return sub_222DD156C(v33, v34, v37, v39, a1);
    }

    sub_222DB783C(v5);
    v37 = 0;
  }

  v39 = 0;
  return sub_222DD156C(v33, v34, v37, v39, a1);
}

uint64_t ContactHandleDisambiguationModel.init(contact:contactHandles:isDeviceLocked:contactSelectionDirectInvocationID:contactSelectionDirectInvocationKey:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{

  sub_222DCE24C(&v40);
  v36 = a1;

  v17 = v40;
  v34 = v41;
  v35 = *(&v40 + 1);
  v32 = v42;
  v33 = *(&v41 + 1);
  v31 = *(&v42 + 1);
  v18 = sub_222DA8780();
  v39 = a5;
  if (!v18)
  {

    v22 = MEMORY[0x277D84F90];
LABEL_13:
    *a9 = v36;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3 & 1;
    *(a9 + 24) = a4;
    *(a9 + 32) = v39;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = v17;
    *(a9 + 80) = v35;
    *(a9 + 88) = v34;
    *(a9 + 96) = v33;
    *(a9 + 104) = v32;
    *(a9 + 112) = v31;
    *(a9 + 120) = v22;
    return result;
  }

  v19 = v18;
  result = OUTLINED_FUNCTION_39_3(v18, MEMORY[0x277D84F90]);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v30 = a8;
    v21 = 0;
    v22 = v44;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    MEMORY[0x223DCE590](v21, a2);
    while (1)
    {
      sub_222DCF124(&v40);

      v44 = v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = OUTLINED_FUNCTION_19_4(v23);
        sub_222DA5508(v29, v24 + 1, 1);
        v22 = v44;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (v22 + (v24 << 6));
      v26 = v40;
      v27 = v41;
      v28 = v43;
      v25[4] = v42;
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      if (v19 - 1 == v21)
      {
        break;
      }

      ++v21;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      OUTLINED_FUNCTION_27_0();
    }

    a8 = v30;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_222DCF7A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x48746361746E6F63 && a2 == 0xEE0073656C646E61;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000022 && 0x8000000222DE14D0 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000023 && 0x8000000222DE1500 == a2;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
            if (v10 || (sub_222DDBAC0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x436465646F636E65 && a2 == 0xEE00746361746E6FLL;
              if (v11 || (sub_222DDBAC0() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_222DDBAC0();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_222DCFA48(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x48746361746E6F63;
      break;
    case 2:
      result = 0x6563697665447369;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0x74706D6F7270;
      break;
    case 6:
      result = 0x436465646F636E65;
      break;
    case 7:
      result = 0x73656C646E6168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DCFB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCF7A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DCFB84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DCFA40();
  *a1 = result;
  return result;
}

uint64_t sub_222DCFBAC(uint64_t a1)
{
  v2 = sub_222DD2B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DCFBE8(uint64_t a1)
{
  v2 = sub_222DD2B64();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactHandleDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_38_2();
  v38 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0484F0, &qword_222DDE9B8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = v0[4];
  v36 = v0[3];
  v37 = v10;
  v13 = v0[5];
  v34 = v0[6];
  v35 = v12;
  v14 = v0[7];
  v32 = v0[8];
  v33 = v13;
  v15 = v0[10];
  v16 = v0[11];
  v25 = v0[9];
  v26 = v16;
  v18 = v0[12];
  v17 = v0[13];
  v27 = v15;
  v28 = v18;
  v29 = v17;
  v19 = v0[15];
  v30 = v0[14];
  v31 = v14;
  OUTLINED_FUNCTION_28_5(v3, v3[3]);
  sub_222DD2B64();

  sub_222DDBBC0();
  v39 = v11;
  type metadata accessor for ContactDialogPerson(0);
  OUTLINED_FUNCTION_22_5(&unk_27D0484A8);
  OUTLINED_FUNCTION_21_4();
  v20 = v38;
  sub_222DDBA80();

  if (!v20)
  {
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    OUTLINED_FUNCTION_13_5();
    sub_222DD29B8(v21);
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA80();
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA60();
    OUTLINED_FUNCTION_20_5(3);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(4);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA20();
    OUTLINED_FUNCTION_20_5(5);
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA50();
    v39 = v25;
    v40 = v27;
    v41 = v26;
    v42 = v28;
    v22 = v29;
    v23 = v30;
    v43 = v29;
    v44 = v30;

    sub_222D931B0(v22, v23);
    sub_222DD2964();
    OUTLINED_FUNCTION_27_6();
    sub_222DDBA80();
    OUTLINED_FUNCTION_54_3();

    sub_222D93218(v9, v23);
    v39 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048500, &qword_222DDE9C0);
    sub_222DD2BB8(&unk_27D048508);
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_47_4();
    sub_222DDBA80();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactHandleDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048518, &qword_222DDE9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_28_5(v6, v7);
  sub_222DD2B64();
  sub_222DDBBB0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    type metadata accessor for ContactDialogPerson(0);
    OUTLINED_FUNCTION_17_4(&unk_27D0484D8);
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v8 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048498, &qword_222DDE9A0);
    OUTLINED_FUNCTION_12_7();
    sub_222DD29B8(v9);
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v23 = v32;
    OUTLINED_FUNCTION_3_7(2);
    v10 = sub_222DDB9D0();
    OUTLINED_FUNCTION_3_7(3);
    v11 = sub_222DDB9C0();
    v30 = v12;
    OUTLINED_FUNCTION_3_7(4);
    v13 = sub_222DDB990();
    v29 = v14;
    v21 = v13;
    OUTLINED_FUNCTION_3_7(5);
    v20 = sub_222DDB9C0();
    v28 = v15;
    LOBYTE(v31[0]) = 6;
    sub_222DD2AE0();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v18 = v34;
    v19 = v32;
    v25 = v33;
    v26 = v35;
    v24 = v36;
    v27 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048500, &qword_222DDE9C0);
    v48 = 7;
    sub_222DD2BB8(&unk_27D048520);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_24_6();
    sub_222DDB9F0();
    v16 = OUTLINED_FUNCTION_5_8();
    v17(v16);
    v22 = v49;
    v31[0] = v8;
    v31[1] = v23;
    LOBYTE(v31[2]) = v10 & 1;
    *(&v31[2] + 1) = v50[0];
    HIDWORD(v31[2]) = *(v50 + 3);
    v31[3] = v11;
    v31[4] = v30;
    v31[5] = v21;
    v31[6] = v29;
    v31[7] = v20;
    v31[8] = v28;
    v31[9] = v19;
    v31[10] = v25;
    v31[11] = v18;
    v31[12] = v26;
    v31[13] = v24;
    v31[14] = v27;
    v31[15] = v49;
    memcpy(v4, v31, 0x80uLL);
    sub_222DB12E0(v31, &v32);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v32 = v8;
    v33 = v23;
    LOBYTE(v34) = v10 & 1;
    *(&v34 + 1) = v50[0];
    HIDWORD(v34) = *(v50 + 3);
    v35 = v11;
    v36 = v30;
    v37 = v21;
    v38 = v29;
    v39 = v20;
    v40 = v28;
    v41 = v19;
    v42 = v25;
    v43 = v18;
    v44 = v26;
    v45 = v24;
    v46 = v27;
    v47 = v22;
    sub_222DD2CCC(&v32);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactConfirmationModel.encodedContact.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_33_2(a1);

  return sub_222D931B0(v2, v1);
}

Swift::String __swiftcall ContactConfirmationModel.displayName()()
{
  v1 = sub_222DD9F60();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[17];
  v10 = v0[18];
  v20[0] = v8;
  v20[1] = v7;

  sub_222DD9F30();
  sub_222D8F710();
  v11 = sub_222DDB760();
  v13 = v12;
  (*(v3 + 8))(v6, v1);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = v7;
  }

  else
  {
    v15 = v10;
  }

  if (v14)
  {
    v16 = v8;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;
  v18 = v15;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_222DD079C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000222DE1530 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000222DE1550 == a2;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000222DE1570 == a2;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x8000000222DE1590 == a2;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x436465646F636E65 && a2 == 0xEE00746361746E6FLL;
            if (v10 || (sub_222DDBAC0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_222DDBAC0() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x487972616D697270 && a2 == 0xED0000656C646E61)
              {

                return 7;
              }

              else
              {
                v13 = sub_222DDBAC0();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_222DD0A30(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x436465646F636E65;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0x487972616D697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DD0B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD079C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD0B84(uint64_t a1)
{
  v2 = sub_222DD2CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD0BC0(uint64_t a1)
{
  v2 = sub_222DD2CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactConfirmationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38_2();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048530, &qword_222DDE9D0);
  OUTLINED_FUNCTION_2();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11_7();
  v34 = v23[3];
  v32 = v23[13];
  v33 = v23[14];
  OUTLINED_FUNCTION_28_5(v27, v27[3]);
  sub_222DD2CFC();

  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  type metadata accessor for ContactDialogPerson(0);
  OUTLINED_FUNCTION_22_5(&unk_27D0484A8);
  OUTLINED_FUNCTION_21_4();
  sub_222DDBA80();
  if (v24)
  {
  }

  else
  {

    OUTLINED_FUNCTION_20_5(1);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(2);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(3);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_20_5(4);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();

    sub_222D931B0(v32, v33);
    sub_222DD2964();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA80();
    OUTLINED_FUNCTION_54_3();

    sub_222D93218(v34, v28);
    OUTLINED_FUNCTION_20_5(6);
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    if (!v32)
    {
      OUTLINED_FUNCTION_20_5(7);
      OUTLINED_FUNCTION_8_7();
      sub_222DDBA50();
    }
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactConfirmationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38_2();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048540, &qword_222DDE9D8);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_6();
  v66 = v26;
  OUTLINED_FUNCTION_28_5(v26, v26[3]);
  v33 = sub_222DD2CFC();
  OUTLINED_FUNCTION_37_4(&type metadata for ContactConfirmationModel.CodingKeys, v34, v33);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v35 = v31;
    v36 = v28;
    type metadata accessor for ContactDialogPerson(0);
    OUTLINED_FUNCTION_17_4(&unk_27D0484D8);
    v37 = v29;
    OUTLINED_FUNCTION_15_3();
    sub_222DDB9F0();
    v56 = v68;
    v38 = v35;
    v39 = OUTLINED_FUNCTION_4_12(1);
    v65 = v40;
    v41 = OUTLINED_FUNCTION_4_12(2);
    v64 = v42;
    v55 = OUTLINED_FUNCTION_4_12(3);
    v63 = v43;
    v44 = OUTLINED_FUNCTION_4_12(4);
    v62 = v45;
    v54 = v44;
    LOBYTE(v67[0]) = 5;
    sub_222DD2AE0();
    OUTLINED_FUNCTION_15_3();
    sub_222DDB9F0();
    v52 = v70;
    v53 = v68;
    v58 = v71;
    v60 = v72;
    v61 = v69;
    v59 = v73;
    v51 = OUTLINED_FUNCTION_4_12(6);
    v57 = v46;
    OUTLINED_FUNCTION_15_3();
    v47 = sub_222DDB9C0();
    v48 = v24;
    v50 = v49;
    (*(v38 + 8))(v48, v37);
    v67[0] = v56;
    v67[1] = v39;
    v67[2] = v65;
    v67[3] = v41;
    v67[4] = v64;
    v67[5] = v55;
    v67[6] = v63;
    v67[7] = v54;
    v67[8] = v62;
    v67[9] = v53;
    v67[10] = v61;
    v67[11] = v52;
    v67[12] = v58;
    v67[13] = v60;
    v67[14] = v59;
    v67[15] = v51;
    v67[16] = v57;
    v67[17] = v47;
    v67[18] = v50;
    memcpy(v36, v67, 0x98uLL);
    sub_222DB1230(v67, &v68);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v68 = v56;
    v69 = v39;
    v70 = v65;
    v71 = v41;
    v72 = v64;
    v73 = v55;
    v74 = v63;
    v75 = v54;
    v76 = v62;
    v77 = v53;
    v78 = v61;
    v79 = v52;
    v80 = v58;
    v81 = v60;
    v82 = v59;
    v83 = v51;
    v84 = v57;
    v85 = v47;
    v86 = v50;
    sub_222DD2D50(&v68);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

uint64_t ContactHandle.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_222DD156C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v6 = a4;
  }

  *a5 = v8;
  *(a5 + 8) = v6;
  *(a5 + 16) = v5;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v6;
  *(a5 + 48) = 0;
  *(a5 + 56) = -1;
}

uint64_t sub_222DD15A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
      if (v7 || (sub_222DDBAC0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974656361467369 && a2 == 0xEE00656C6261656DLL;
        if (v8 || (sub_222DDBAC0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617373654D697369 && a2 == 0xEE00656C62616567;
          if (v9 || (sub_222DDBAC0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_222DDBAC0();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_222DD1794(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x646F6874656DLL;
      break;
    case 3:
      result = 0x6974656361467369;
      break;
    case 4:
      result = 0x617373654D697369;
      break;
    case 5:
      result = 0x7865646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222DD1854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD15A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD187C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DD178C();
  *a1 = result;
  return result;
}

uint64_t sub_222DD18A4(uint64_t a1)
{
  v2 = sub_222DD2D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD18E0(uint64_t a1)
{
  v2 = sub_222DD2D80();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactHandle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_38_2();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048548, &qword_222DDE9E0);
  OUTLINED_FUNCTION_2();
  v32 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_28_5(v29, v29[3]);
  sub_222DD2D80();
  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  sub_222DDBA50();
  if (!v26)
  {
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA60();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA60();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA70();
  }

  (*(v32 + 8))(v27, v30);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void ContactHandle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_2();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048558, &qword_222DDE9E8);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v50 - v33;
  OUTLINED_FUNCTION_28_5(v26, v26[3]);
  sub_222DD2D80();
  sub_222DDBBB0();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v61[0]) = 0;
    v35 = sub_222DDB9C0();
    v37 = v36;
    OUTLINED_FUNCTION_2_9(1);
    v38 = sub_222DDB9C0();
    v53 = v35;
    v54 = v38;
    v56 = v39;
    OUTLINED_FUNCTION_2_9(2);
    v40 = sub_222DDB9C0();
    v55 = v41;
    v52 = v40;
    OUTLINED_FUNCTION_2_9(3);
    v65 = sub_222DDB9D0();
    OUTLINED_FUNCTION_2_9(4);
    v51 = sub_222DDB9D0();
    v42 = sub_222DDB9E0();
    v65 &= 1u;
    v43 = v51 & 1;
    v44 = v42;
    (*(v31 + 8))(v34, v29);
    v45 = v53;
    *&v57 = v53;
    *(&v57 + 1) = v37;
    v47 = v55;
    v46 = v56;
    *&v58 = v54;
    *(&v58 + 1) = v56;
    *&v59 = v52;
    *(&v59 + 1) = v55;
    LOBYTE(v60) = v65;
    BYTE1(v60) = v43;
    *(&v60 + 1) = v44;
    v48 = v58;
    *v28 = v57;
    v28[1] = v48;
    v49 = v60;
    v28[2] = v59;
    v28[3] = v49;
    sub_222DD2DD4(&v57, v61);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v61[0] = v45;
    v61[1] = v37;
    v61[2] = v54;
    v61[3] = v46;
    v61[4] = v52;
    v61[5] = v47;
    v62 = v65;
    v63 = v43;
    v64 = v44;
    sub_222DD2E0C(v61);
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DD1E40@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EncodedContact.imageData.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_5();
  sub_222D931B0(v1, v2);
  return OUTLINED_FUNCTION_9_5();
}

uint64_t sub_222DD1EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000222DE15B0 == a2;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_222DD200C(char a1)
{
  if (!a1)
  {
    return 0x656D614E6C6C7566;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x7461446567616D69;
}

uint64_t sub_222DD2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DD1EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DD209C(uint64_t a1)
{
  v2 = sub_222DD2E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DD20D8(uint64_t a1)
{
  v2 = sub_222DD2E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void EncodedContact.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38_2();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048560, &qword_222DDE9F0);
  OUTLINED_FUNCTION_2();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11_7();
  v32 = *(v23 + 40);
  v33 = *(v23 + 32);
  OUTLINED_FUNCTION_28_5(v27, v27[3]);
  sub_222DD2E3C();
  OUTLINED_FUNCTION_49_4();
  sub_222DDBBC0();
  sub_222DDBA50();
  if (!v24)
  {
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA50();
    sub_222D931B0(v33, v32);
    sub_222D931C4();
    OUTLINED_FUNCTION_8_7();
    sub_222DDBA40();
    sub_222D93218(v33, v32);
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_37_2();
}

void EncodedContact.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38_2();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048570, &qword_222DDE9F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_28_5(v25, v25[3]);
  v29 = sub_222DD2E3C();
  OUTLINED_FUNCTION_37_4(&type metadata for EncodedContact.CodingKeys, v30, v29);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    v31 = sub_222DDB9C0();
    v42 = v32;
    LOBYTE(v43) = 1;
    OUTLINED_FUNCTION_15_3();
    v40 = sub_222DDB9C0();
    v41 = v33;
    sub_222D93620();
    sub_222DDB9B0();
    v34 = OUTLINED_FUNCTION_2_0();
    v35(v34);
    *v27 = v31;
    v27[1] = v42;
    v27[2] = v40;
    v27[3] = v41;
    v27[4] = v43;
    v27[5] = v44;

    v36 = OUTLINED_FUNCTION_51_1();
    sub_222D931B0(v36, v37);
    __swift_destroy_boxed_opaque_existential_0(v25);

    v38 = OUTLINED_FUNCTION_51_1();
    sub_222D93218(v38, v39);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_37_2();
}

unint64_t sub_222DD2500()
{
  result = qword_27D048410;
  if (!qword_27D048410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048410);
  }

  return result;
}

unint64_t sub_222DD2554()
{
  result = qword_27D048418;
  if (!qword_27D048418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048418);
  }

  return result;
}

unint64_t sub_222DD25A8()
{
  result = qword_27D048420;
  if (!qword_27D048420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048420);
  }

  return result;
}

unint64_t sub_222DD25FC()
{
  result = qword_27D048428;
  if (!qword_27D048428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048428);
  }

  return result;
}

unint64_t sub_222DD2650()
{
  result = qword_27D048430;
  if (!qword_27D048430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048430);
  }

  return result;
}

unint64_t sub_222DD26A4()
{
  result = qword_27D048438;
  if (!qword_27D048438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048438);
  }

  return result;
}

unint64_t sub_222DD26F8()
{
  result = qword_27D048440;
  if (!qword_27D048440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048440);
  }

  return result;
}

uint64_t sub_222DD274C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_222DD2798(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_222DD2814()
{
  result = qword_27D048470;
  if (!qword_27D048470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048470);
  }

  return result;
}

unint64_t sub_222DD2868()
{
  result = qword_27D048478;
  if (!qword_27D048478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048478);
  }

  return result;
}

unint64_t sub_222DD28BC()
{
  result = qword_27D048480;
  if (!qword_27D048480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048480);
  }

  return result;
}

unint64_t sub_222DD2910()
{
  result = qword_27D048490;
  if (!qword_27D048490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048490);
  }

  return result;
}

unint64_t sub_222DD2964()
{
  result = qword_27D0484C0;
  if (!qword_27D0484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484C0);
  }

  return result;
}

unint64_t sub_222DD29B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D048498, &qword_222DDE9A0);
    sub_222DD2A34(v4);
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2A34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    type metadata accessor for ContactDialogPerson(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2A74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0484B0, &qword_222DDE9A8);
    v4();
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2AE0()
{
  result = qword_27D0484E8;
  if (!qword_27D0484E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484E8);
  }

  return result;
}

unint64_t sub_222DD2B64()
{
  result = qword_27D0484F8;
  if (!qword_27D0484F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0484F8);
  }

  return result;
}

unint64_t sub_222DD2BB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_45_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D048500, &qword_222DDE9C0);
    v4();
    OUTLINED_FUNCTION_31_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_222DD2C24()
{
  result = qword_27D048510;
  if (!qword_27D048510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048510);
  }

  return result;
}

unint64_t sub_222DD2C78()
{
  result = qword_27D048528;
  if (!qword_27D048528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048528);
  }

  return result;
}

unint64_t sub_222DD2CFC()
{
  result = qword_27D048538;
  if (!qword_27D048538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048538);
  }

  return result;
}

unint64_t sub_222DD2D80()
{
  result = qword_27D048550;
  if (!qword_27D048550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048550);
  }

  return result;
}

unint64_t sub_222DD2E3C()
{
  result = qword_27D048568;
  if (!qword_27D048568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048568);
  }

  return result;
}

unint64_t sub_222DD2E94()
{
  result = qword_27D048578;
  if (!qword_27D048578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048578);
  }

  return result;
}

unint64_t sub_222DD2EEC()
{
  result = qword_27D048580;
  if (!qword_27D048580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048580);
  }

  return result;
}

uint64_t sub_222DD2F54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 153))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 152);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222DD2F94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222DD3028(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_222DD3068(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_222DD30CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_222DD310C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DD3180(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_222DD31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DD3230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_222DD3270(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ContactHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222DD33D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222DD3614(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222DD3710(_BYTE *result, int a2, int a3)
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

unint64_t sub_222DD37C0()
{
  result = qword_27D048588;
  if (!qword_27D048588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048588);
  }

  return result;
}

unint64_t sub_222DD3818()
{
  result = qword_27D048590;
  if (!qword_27D048590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048590);
  }

  return result;
}

unint64_t sub_222DD3870()
{
  result = qword_27D048598;
  if (!qword_27D048598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048598);
  }

  return result;
}

unint64_t sub_222DD38C8()
{
  result = qword_27D0485A0;
  if (!qword_27D0485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485A0);
  }

  return result;
}

unint64_t sub_222DD3920()
{
  result = qword_27D0485A8;
  if (!qword_27D0485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485A8);
  }

  return result;
}

unint64_t sub_222DD3978()
{
  result = qword_27D0485B0;
  if (!qword_27D0485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485B0);
  }

  return result;
}

unint64_t sub_222DD39D0()
{
  result = qword_27D0485B8;
  if (!qword_27D0485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485B8);
  }

  return result;
}

unint64_t sub_222DD3A28()
{
  result = qword_27D0485C0;
  if (!qword_27D0485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485C0);
  }

  return result;
}

unint64_t sub_222DD3A80()
{
  result = qword_27D0485C8;
  if (!qword_27D0485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485C8);
  }

  return result;
}

unint64_t sub_222DD3AD8()
{
  result = qword_27D0485D0;
  if (!qword_27D0485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485D0);
  }

  return result;
}

unint64_t sub_222DD3B30()
{
  result = qword_27D0485D8;
  if (!qword_27D0485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485D8);
  }

  return result;
}

unint64_t sub_222DD3B88()
{
  result = qword_27D0485E0;
  if (!qword_27D0485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485E0);
  }

  return result;
}

unint64_t sub_222DD3BE0()
{
  result = qword_27D0485E8;
  if (!qword_27D0485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485E8);
  }

  return result;
}

unint64_t sub_222DD3C38()
{
  result = qword_27D0485F0;
  if (!qword_27D0485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485F0);
  }

  return result;
}

unint64_t sub_222DD3C90()
{
  result = qword_27D0485F8;
  if (!qword_27D0485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0485F8);
  }

  return result;
}

unint64_t sub_222DD3CE8()
{
  result = qword_27D048600;
  if (!qword_27D048600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048600);
  }

  return result;
}

unint64_t sub_222DD3D40()
{
  result = qword_27D048608;
  if (!qword_27D048608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048608);
  }

  return result;
}

unint64_t sub_222DD3D98()
{
  result = qword_27D048610;
  if (!qword_27D048610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048610);
  }

  return result;
}

unint64_t sub_222DD3DF0()
{
  result = qword_27D048618;
  if (!qword_27D048618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048618);
  }

  return result;
}

unint64_t sub_222DD3E48()
{
  result = qword_27D048620;
  if (!qword_27D048620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048620);
  }

  return result;
}

unint64_t sub_222DD3EA0()
{
  result = qword_27D048628;
  if (!qword_27D048628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048628);
  }

  return result;
}

unint64_t sub_222DD3EF8()
{
  result = qword_27D048630;
  if (!qword_27D048630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048630);
  }

  return result;
}

unint64_t sub_222DD3F50()
{
  result = qword_27D048638;
  if (!qword_27D048638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048638);
  }

  return result;
}

unint64_t sub_222DD3FA8()
{
  result = qword_27D048640;
  if (!qword_27D048640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048640);
  }

  return result;
}

unint64_t sub_222DD4000()
{
  result = qword_27D048648;
  if (!qword_27D048648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048648);
  }

  return result;
}

unint64_t sub_222DD4058()
{
  result = qword_27D048650;
  if (!qword_27D048650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048650);
  }

  return result;
}

unint64_t sub_222DD40B0()
{
  result = qword_27D048658;
  if (!qword_27D048658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048658);
  }

  return result;
}

uint64_t sub_222DD410C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
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

uint64_t sub_222DD414C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_12@<X0>(char a1@<W8>)
{
  *(v1 - 240) = a1;

  return sub_222DDB9C0();
}

unint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{

  return sub_222DD2A34(a1);
}

unint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return sub_222DD2A34(a1);
}

uint64_t OUTLINED_FUNCTION_33_2@<X0>(void *a1@<X8>)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v8 = v1[13];
  v7 = v1[14];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

void *OUTLINED_FUNCTION_36_3()
{

  return memcpy((v1 - 256), (v0 + 112), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222DDBBB0();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_222DDB9F0();
}

char *OUTLINED_FUNCTION_39_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 72) = a2;

  return sub_222DA5508(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_52_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_53_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
}

char *OUTLINED_FUNCTION_55_2()
{

  return sub_222DA54E8(0, v0, 0);
}

uint64_t sub_222DD4598(uint64_t a1)
{
  result = sub_222DDA160();
  if (v2 <= 0x3F)
  {
    result = sub_222DDA210();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_222DD46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_5();
  v4 = swift_allocObject();
  sub_222DD4740();
  return v4;
}

uint64_t sub_222DD4700(uint64_t a1)
{
  sub_222DDBB60();
  sub_222D8D900(v3, *v1);
  return sub_222DDBB90();
}

void sub_222DD4740()
{
  OUTLINED_FUNCTION_32_2();
  v5 = v4;
  OUTLINED_FUNCTION_17_5();
  v6 = *v0;
  v7 = qword_27D048660;
  v8 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6();
  v10 = *(v9 + 32);
  v10(&v0[v7], v3, v8);
  v10(&v0[qword_27D048668], v2, v8);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v6 + 80) - 8) + 32))(&v0[*(v11 + 120)], v1);
  v12 = qword_27D048670;
  sub_222DDA210();
  OUTLINED_FUNCTION_4_6();
  (*(v13 + 32))(&v0[v12], v5);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DD486C()
{
  OUTLINED_FUNCTION_32_2();
  v158 = v2;
  v159 = v1;
  v153 = v3;
  OUTLINED_FUNCTION_22_3();
  v156 = v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048720, &qword_222DE0028);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v5);
  v160 = &v149 - v6;
  OUTLINED_FUNCTION_10_4();
  sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v162 = v8;
  v163 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_11();
  v152 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v10);
  v161 = &v149 - v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v12);
  v150 = &v149 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v14);
  v151 = &v149 - v15;
  OUTLINED_FUNCTION_10_4();
  sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v154 = v17;
  v155 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048700, &qword_222DE0000);
  v21 = sub_222DDA160();
  OUTLINED_FUNCTION_2();
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_222DDDFD0;
  v28 = *(v23 + 16);
  v28(v27 + v26, v0 + qword_27D048660, v21);
  v28(v27 + v26 + v25, v0 + qword_27D048668, v21);
  v165 = MEMORY[0x277D84F90];
  sub_222DDB8B0();
  v29 = 0;
  do
  {
    v30 = v29;
    sub_222DD55DC(&v164);
    sub_222DDB890();
    sub_222DDB8C0();
    sub_222DDB8D0();
    sub_222DDB8A0();
    v29 = 1;
  }

  while ((v30 & 1) == 0);
  swift_setDeallocating();
  sub_222D9DFC8();
  sub_222DDA870();
  v31 = OUTLINED_FUNCTION_18_5();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D5C128])
  {
    v34 = OUTLINED_FUNCTION_18_5();
    v35(v34);
    v36 = v161;
    v37 = v162;
    v38 = v163;
    (*(v162 + 32))(v161, v20, v163);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v39 = sub_222DDB3E0();
    __swift_project_value_buffer(v39, qword_27D04C910);
    v40 = v152;
    (*(v37 + 16))(v152, v36, v38);
    v41 = sub_222DDB3C0();
    v42 = sub_222DDB6B0();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_29_4();
      v43 = OUTLINED_FUNCTION_22_6();
      v165 = v43;
      *v40 = 136315138;
      OUTLINED_FUNCTION_8_8();
      sub_222DD7BE8(v44, v45, MEMORY[0x277D5F460]);
      v46 = sub_222DDBAB0();
      v48 = v47;
      v155 = *(v162 + 8);
      v155(v40, v163);
      v49 = sub_222D8F7F0(v46, v48, &v165);

      *(v40 + 4) = v49;
      _os_log_impl(&dword_222D8A000, v41, v42, "parsing disambiguation result, (nlv3 only), nlIntent: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v38 = v163;
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }

    else
    {

      v155 = *(v37 + 8);
      v155(v40, v38);
    }

    v73 = *(v156 + 80);
    v72 = *(v156 + 88);
    v74 = OUTLINED_FUNCTION_28_6();
    v75 = v161;
    v76(v74, v161, v73, v72);

    v78 = v165;
    if (v165)
    {

      v79 = sub_222DDB3C0();
      v80 = sub_222DDB6B0();

      if (os_log_type_enabled(v79, v80))
      {
        OUTLINED_FUNCTION_29_4();
        v81 = OUTLINED_FUNCTION_22_6();
        v164 = v78;
        v165 = v81;
        *v72 = 136315138;
        sub_222DDAD60();
        OUTLINED_FUNCTION_7_9();
        sub_222DD7BE8(v82, v83, MEMORY[0x277D564C0]);
        v84 = sub_222DDBAB0();
        v86 = sub_222D8F7F0(v84, v85, &v165);

        *(v72 + 4) = v86;
        v75 = v161;
        _os_log_impl(&dword_222D8A000, v79, v80, "Picked datetime after disambiguation (nlv3 only): %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v87 = v155;
      v165 = v78;
      sub_222DDAD60();
      v88 = v160;
      sub_222DDA7A0();
      swift_storeEnumTagMultiPayload();
      v159(v88);

      sub_222DB6FC0(v88, &qword_27D048720, &qword_222DE0028);
      v87(v75, v38);
    }

    else
    {
      v106 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError(0, v73, v72, v77);
      OUTLINED_FUNCTION_0_14();
      WitnessTable = swift_getWitnessTable();
      v108 = OUTLINED_FUNCTION_12_5(WitnessTable);
      *v109 = 2;
      OUTLINED_FUNCTION_4_13(v108);
      v110 = OUTLINED_FUNCTION_19_5();
      v111(v110);
      sub_222DB6FC0(v106, &qword_27D048720, &qword_222DE0028);
      v155(v75, v38);
    }
  }

  else
  {
    v50 = v33;
    v52 = v162;
    v51 = v163;
    if (v33 == *MEMORY[0x277D5C158])
    {
      v53 = OUTLINED_FUNCTION_18_5();
      v54(v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250);

      v55 = v151;
      (*(v52 + 32))(v151, v20, v51);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      }

      v56 = sub_222DDB3E0();
      v57 = __swift_project_value_buffer(v56, qword_27D04C910);
      v58 = v150;
      (*(v52 + 16))(v150, v55, v51);
      v59 = sub_222DDB3C0();
      v60 = sub_222DDB6B0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_29_4();
        v161 = v57;
        v62 = v58;
        v63 = v61;
        v64 = swift_slowAlloc();
        v165 = v64;
        *v63 = 136315138;
        OUTLINED_FUNCTION_8_8();
        sub_222DD7BE8(v65, v66, MEMORY[0x277D5F460]);
        v67 = sub_222DDBAB0();
        v69 = v68;
        v70 = *(v52 + 8);
        v70(v62, v163);
        v71 = sub_222D8F7F0(v67, v69, &v165);
        v51 = v163;

        *(v63 + 4) = v71;
        _os_log_impl(&dword_222D8A000, v59, v60, "parsing disambiguation result, (nlv3 plus server conversion), nlIntent: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        v55 = v151;
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      else
      {

        v70 = *(v52 + 8);
        v70(v58, v51);
      }

      v113 = *(v156 + 80);
      v112 = *(v156 + 88);
      v114 = OUTLINED_FUNCTION_28_6();
      v115(v114, v55, v113, v112);

      v117 = v165;
      if (v165)
      {

        v118 = sub_222DDB3C0();
        v119 = sub_222DDB6B0();

        if (os_log_type_enabled(v118, v119))
        {
          OUTLINED_FUNCTION_29_4();
          v120 = OUTLINED_FUNCTION_22_6();
          v164 = v117;
          v165 = v120;
          *v113 = 136315138;
          sub_222DDAD60();
          OUTLINED_FUNCTION_7_9();
          sub_222DD7BE8(v121, v122, MEMORY[0x277D564C0]);
          v123 = sub_222DDBAB0();
          v125 = sub_222D8F7F0(v123, v124, &v165);

          *(v113 + 4) = v125;
          v55 = v151;
          _os_log_impl(&dword_222D8A000, v118, v119, "Picked datetime after disambiguation (nlv3 plus server conversion): %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          OUTLINED_FUNCTION_48_2();
          OUTLINED_FUNCTION_48_2();
        }

        v165 = v117;
        sub_222DDAD60();
        v126 = v160;
        sub_222DDA7A0();
        swift_storeEnumTagMultiPayload();
        v127 = OUTLINED_FUNCTION_19_5();
        v128(v127);
      }

      else
      {
        v126 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError(0, v113, v112, v116);
        OUTLINED_FUNCTION_0_14();
        v144 = swift_getWitnessTable();
        v145 = OUTLINED_FUNCTION_12_5(v144);
        *v146 = 2;
        OUTLINED_FUNCTION_4_13(v145);
        v147 = OUTLINED_FUNCTION_19_5();
        v148(v147);
      }

      sub_222DB6FC0(v126, &qword_27D048720, &qword_222DE0028);
      v70(v55, v51);
    }

    else
    {
      v89 = *MEMORY[0x277D5C150];

      if (v50 == v89)
      {
        v90 = OUTLINED_FUNCTION_18_5();
        v91(v90);
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v92 = sub_222DDB3E0();
        __swift_project_value_buffer(v92, qword_27D04C910);
        v93 = sub_222DDB3C0();
        v94 = sub_222DDB6B0();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_222D8A000, v93, v94, "got direct invocation omg", v95, 2u);
          OUTLINED_FUNCTION_48_2();
        }

        v100 = OUTLINED_FUNCTION_21_5(v96, v97, v98, v99);
        OUTLINED_FUNCTION_0_14();
        v101 = swift_getWitnessTable();
        v102 = OUTLINED_FUNCTION_12_5(v101);
        *v103 = 0;
        OUTLINED_FUNCTION_4_13(v102);
        v104 = OUTLINED_FUNCTION_19_5();
        v105(v104);
        sub_222DB6FC0(v100, &qword_27D048720, &qword_222DE0028);
      }

      else
      {
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v129 = sub_222DDB3E0();
        __swift_project_value_buffer(v129, qword_27D04C910);
        v130 = sub_222DDB3C0();
        v131 = sub_222DDB6B0();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_222D8A000, v130, v131, "received unsupported parse", v132, 2u);
          OUTLINED_FUNCTION_48_2();
        }

        OUTLINED_FUNCTION_21_5(v133, v134, v135, v136);
        OUTLINED_FUNCTION_0_14();
        v137 = swift_getWitnessTable();
        v138 = OUTLINED_FUNCTION_33_3(v137);
        *v139 = 0;
        OUTLINED_FUNCTION_4_13(v138);
        v140 = OUTLINED_FUNCTION_19_5();
        v141(v140);
        sub_222DB6FC0(v89, &qword_27D048720, &qword_222DE0028);
        v142 = OUTLINED_FUNCTION_18_5();
        v143(v142);
      }
    }
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD55DC@<X0>(uint64_t *a1@<X8>)
{
  sub_222DB1C58();
  sub_222DDAD60();
  swift_allocObject();
  result = sub_222DDAC80();
  *a1 = result;
  return result;
}

void sub_222DD564C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v81 = v2;
  v80 = v3;
  OUTLINED_FUNCTION_22_3();
  v104 = v4;
  v99 = sub_222DDA7B0();
  OUTLINED_FUNCTION_2();
  v105 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v98 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0486F8, &qword_222DDFFF8);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v76 - v10;
  OUTLINED_FUNCTION_10_4();
  v96 = sub_222DDA740();
  OUTLINED_FUNCTION_2();
  v102 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v95 = v14 - v13;
  OUTLINED_FUNCTION_10_4();
  v94 = sub_222DDA5D0();
  OUTLINED_FUNCTION_2();
  v84 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_11();
  v93 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v18);
  v92 = &v76 - v19;
  OUTLINED_FUNCTION_10_4();
  v91 = sub_222DDA700();
  OUTLINED_FUNCTION_2();
  v101 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v100 = v23 - v22;
  OUTLINED_FUNCTION_10_4();
  sub_222DDB140();
  swift_allocObject();
  sub_222DDB130();
  v24 = qword_27D048660;
  sub_222DDA150();
  sub_222DDB120();

  v79 = sub_222DDB110();

  swift_allocObject();
  sub_222DDB130();
  v25 = qword_27D048668;
  sub_222DDA150();
  sub_222DDB120();

  v78 = sub_222DDB110();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048700, &qword_222DE0000);
  v26 = sub_222DDA160();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  v30 = *(v29 + 72);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_222DDDFD0;
  v33 = v32 + v31;
  v34 = *(v28 + 16);
  v34(v32 + v31, v1 + v24, v26);
  v34(v32 + v31 + v30, v1 + v25, v26);
  v35 = 0;
  v103 = MEMORY[0x277D84F90];
LABEL_2:
  v36 = v33 + v30 * v35;
  while (++v35 != 3)
  {
    v37 = v36 + v30;
    sub_222DD6044(v107);
    v38 = v107[0];
    v36 = v37;
    if (v107[0])
    {
      v106 = v32;
      v39 = v107[1];
      v40 = v107[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_222DD782C(0, v103[2] + 1, 1, v103);
      }

      v42 = v103[2];
      v41 = v103[3];
      if (v42 >= v41 >> 1)
      {
        v103 = sub_222DD782C((v41 > 1), v42 + 1, 1, v103);
      }

      v43 = v103;
      v103[2] = v42 + 1;
      v44 = &v43[3 * v42];
      v44[4] = v38;
      v44[5] = v39;
      v44[6] = v40;
      v32 = v106;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_222D9DFC8();
  v45 = v103;
  if (v103[2] == 2)
  {
    v77 = v1;
    v107[0] = MEMORY[0x277D84F90];
    sub_222DA5580(0, 2, 0);
    v46 = 0;
    v47 = 0;
    v48 = v107[0];
    v90 = v45 + 4;
    v89 = (v84 + 2);
    v88 = v102 + 16;
    v87 = *MEMORY[0x277D5BF70];
    v86 = (v105 + 104);
    v85 = v102 + 8;
    ++v84;
    v83 = v101 + 32;
    v82 = xmmword_222DDC9B0;
    v49 = v92;
    v50 = v95;
    v51 = v102;
    do
    {
      if (v47 >= v45[2])
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      LODWORD(v105) = v46;
      v104 = v90[3 * v47];
      v106 = v48;
      swift_bridgeObjectRetain_n();

      sub_222DDA5B0();
      v52 = v94;
      (*v89)(v93, v49, v94);
      __swift_storeEnumTagSinglePayload(v97, 1, 1, v52);

      OUTLINED_FUNCTION_27_7();
      sub_222DDA720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048708, &qword_222DE0008);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v82;
      v55 = v96;
      (*(v51 + 16))(v54 + v53, v50, v96);
      (*v86)(v98, v87, v99);
      OUTLINED_FUNCTION_27_7();
      sub_222DDA6B0();
      (*(v51 + 8))(v50, v55);
      (*v84)(v49, v52);
      v48 = v106;

      v107[0] = v48;
      v57 = *(v48 + 16);
      v56 = *(v48 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_222DA5580(v56 > 1, v57 + 1, 1);
        v48 = v107[0];
      }

      *(v48 + 16) = v57 + 1;
      (*(v101 + 32))(v48 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v57, v100, v91);
      v46 = 1;
      v47 = 1;
      v45 = v103;
    }

    while ((v105 & 1) == 0);
    v65 = v103[2];
    if (v65)
    {
      v106 = v48;
      v107[0] = MEMORY[0x277D84F90];
      sub_222DDB8B0();
      v66 = 0;
      v67 = v45[2];
      v68 = v45 + 6;
      v69 = v77;
      while (v67 != v66)
      {
        if (v66 >= v45[2])
        {
          goto LABEL_29;
        }

        v70 = *(v68 - 2);
        v71 = *(v68 - 1);
        v72 = *v68;
        v68 += 3;

        sub_222DD6204(v66, v70, v71, v72, v69);

        sub_222DDB890();
        sub_222DDB8C0();
        sub_222DDB8D0();
        sub_222DDB8A0();
        if (v65 == ++v66)
        {

          v48 = v106;
          v73 = v107[0];
          goto LABEL_25;
        }
      }

      goto LABEL_28;
    }

    v73 = MEMORY[0x277D84F90];
    v69 = v77;
LABEL_25:
    v74 = swift_allocObject();
    v75 = v80;
    v74[2] = v73;
    v74[3] = v75;
    v74[4] = v81;
    v74[5] = v69;
    v74[6] = v48;

    sub_222DD69C4();
  }

  else
  {

    OUTLINED_FUNCTION_21_5(v58, v59, v60, v61);
    OUTLINED_FUNCTION_0_14();
    WitnessTable = swift_getWitnessTable();
    v63 = OUTLINED_FUNCTION_12_5(WitnessTable);
    *v64 = 1;
    v107[0] = v63;
    v108 = 1;
    v80(v107);

    sub_222DB6FC0(v107, &unk_27D047F40, &unk_222DDE220);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD6044@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_222DDB140();
  swift_allocObject();
  sub_222DDB130();
  sub_222DDA150();
  sub_222DDB120();

  sub_222DDB110();

  sub_222DDB100();
  v5 = sub_222DDB240();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    result = sub_222DB6FC0(v4, &qword_27D0479C0, &qword_222DDE100);
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_222DDB220();
    v9 = v10;
    (*(*(v5 - 8) + 8))(v4, v5);
    v7 = sub_222DB1C58();
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return result;
}

uint64_t sub_222DD6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222DDD2F0;
  sub_222DDA3F0();

  sub_222DDA3C0();

  v8 = sub_222DDA3E0();

  *(v7 + 32) = v8;
  sub_222DDAD60();
  swift_allocObject();

  v11 = sub_222DDAC80();
  (*(*(v6 + 88) + 48))(&v11, a1, *(v6 + 80));

  sub_222DDA370();
  swift_allocObject();
  v9 = sub_222DDA360();

  return v9;
}

uint64_t sub_222DD63AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v36 = a6;
  v40 = a4;
  v39 = a3;
  v35 = a2;
  v38 = *a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v33 - v8;
  v9 = sub_222DDA770();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222DDA700();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v17);
  v19 = (&v33 - v18);
  sub_222DBA6B4(a1, &v33 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError(0, *(v38 + 80), *(v38 + 88), v20);
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 0;
    v45[0] = v21;
    v48 = 1;
    v39(v45);
    sub_222DB6FC0(v45, &unk_27D047F40, &unk_222DDE220);
    v23 = &unk_27D047F60;
    v24 = &qword_222DDE000;
    v25 = v19;
  }

  else
  {
    v34 = v14;
    v26 = *(v14 + 32);
    v33 = v13;
    v26(v16, v19, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_222DDD2F0;
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v45, v46);
    sub_222DDA760();
    v28 = sub_222DDA4A0();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v45);
    *(v27 + 32) = MEMORY[0x223DCD150](v35, (v28 & 1) == 0);
    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_222DDA4C0();
    v29 = v37;
    (*(*(v38 + 88) + 64))(v36, *(v38 + 80));
    v30 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
    v31 = sub_222DDA920();
    memset(v41, 0, sizeof(v41));
    v42 = 0;
    v46 = v31;
    v47 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v45);
    sub_222DDA5F0();

    sub_222DB6FC0(v41, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v29, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v44);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v48 = 0;
    v39(v45);
    (*(v34 + 8))(v16, v33);
    v23 = &unk_27D047F40;
    v24 = &unk_222DDE220;
    v25 = v45;
  }

  return sub_222DB6FC0(v25, v23, v24);
}

uint64_t sub_222DD6910(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError(0, *(*v4 + 80), *(*v4 + 88), a4);
  OUTLINED_FUNCTION_0_14();
  WitnessTable = swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_33_3(WitnessTable);
  *v8 = 0;
  v10[0] = v7;
  v11 = 1;
  a1(v10);
  return sub_222DB6FC0(v10, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DD69C4()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v4);
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v5 = sub_222DDB3E0();
  __swift_project_value_buffer(v5, qword_27D04C910);

  v6 = sub_222DDB3C0();
  v7 = sub_222DDB6B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v8 = 136315394;
    sub_222DDB100();
    v9 = sub_222DDB540();
    v11 = sub_222D8F7F0(v9, v10, v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_222DDB100();
    v12 = sub_222DDB540();
    v14 = sub_222D8F7F0(v12, v13, v17);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_222D8A000, v6, v7, "earlierDate: %s laterDate: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDDFD0;
  *(inited + 32) = 0x447265696C726165;
  *(inited + 40) = 0xEB00000000657461;
  v16 = sub_222DDB150();
  *(inited + 48) = v3;
  *(inited + 72) = v16;
  *(inited + 80) = 0x746144726574616CLL;
  *(inited + 120) = v16;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v1;

  sub_222DDB460();
  sub_222DD6CB8();

  OUTLINED_FUNCTION_36_1();
}

void sub_222DD6CB8()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v5;
  v17[4] = v3;
  v17[5] = v1;
  sub_222DDB180();

  v18 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v10 + 8))(v14, v8);
  sub_222DB6FC0(v19, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DD6EA8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  v25 = a2;
  v7 = sub_222DDA700();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v25 - v15);
  sub_222DBA6B4(a1, &v25 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v18 = sub_222DDB3E0();
    __swift_project_value_buffer(v18, qword_27D04C910);

    v19 = sub_222DDB3C0();
    v20 = sub_222DDB6C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_222D8F7F0(v25, a3, &v26);
      _os_log_impl(&dword_222D8A000, v19, v20, "Failed to execute cat with id: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DCEF40](v22, -1, -1);
      MEMORY[0x223DCEF40](v21, -1, -1);
    }

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    v23 = v17;
    a4(v14);

    return sub_222DB6FC0(v14, &unk_27D047F60, &qword_222DDE000);
  }

  else
  {
    (*(v8 + 32))(v10, v16, v7);
    (*(v8 + 16))(v14, v10, v7);
    swift_storeEnumTagMultiPayload();
    a4(v14);
    sub_222DB6FC0(v14, &unk_27D047F60, &qword_222DDE000);
    return (*(v8 + 8))(v10, v7);
  }
}

char *sub_222DD7200()
{
  v1 = *v0;
  v2 = qword_27D048660;
  v3 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 8);
  v5(&v0[v2], v3);
  v5(&v0[qword_27D048668], v3);
  v6 = qword_27D048670;
  sub_222DDA210();
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v8 + 120)]);
  return v0;
}

uint64_t sub_222DD7314()
{
  sub_222DD7200();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DD73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_17_5();
  v11 = type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy(0, *(v10 + 80), *(v10 + 88), v10);

  return a6(v8, v7, v6, v11, a5);
}

void sub_222DD7444()
{
  OUTLINED_FUNCTION_31_4();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_6(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_8();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048740, &unk_222DE0050);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10_8();
        sub_222DA52C4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_16_5();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_222DD7500()
{
  OUTLINED_FUNCTION_31_4();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_6(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_8();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C28, &qword_222DDD6B8);
      v8 = OUTLINED_FUNCTION_20_6(v7);
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_8(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v8 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_222DD75B4()
{
  OUTLINED_FUNCTION_31_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
      v7 = OUTLINED_FUNCTION_20_6(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_5();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_222DD7668()
{
  OUTLINED_FUNCTION_31_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048730, &qword_222DE0038);
      v7 = OUTLINED_FUNCTION_20_6(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10_8();
        sub_222DA52EC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048738, &unk_222DE0040);
    OUTLINED_FUNCTION_16_5();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_8();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_222DD772C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_222DD7AC4(v9, a2, &qword_27D047BD0, &qword_222DE0030, MEMORY[0x277D5BD60]);
  v11 = *(sub_222DDA700() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_222DA530C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_6();
  }

  return v10;
}

void *sub_222DD782C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048710, &qword_222DE0018);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_222DA5324((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048718, &qword_222DE0020);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_222DD7944(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_222DD7AC4(v9, a2, &qword_27D048708, &qword_222DE0008, MEMORY[0x277D5BDD8]);
  v11 = *(sub_222DDA740() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_222DA534C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_6();
  }

  return v10;
}

void *sub_222DD7A44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_222DD7AC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_222DD7BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_222DD7C30(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1)
{
  **(v1 - 136) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 168);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);

  return type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy.RelativeDateDisambiguationStrategyError(0, v7, v8, a4);
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_222DD7EE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v13 = a1;
  v14 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_222DDA7B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222DDA6C0();
  v9 = sub_222DDA6F0();
  v10 = sub_222DDA6F0();
  v15 = v9;
  sub_222DD80B4(v10);
  sub_222DD81B4(v13, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_222DDA6D0();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_222DD8224(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  return sub_222DDA6B0();
}

uint64_t sub_222DD80B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_222DD828C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_222DDA740();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_222DD81B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DD8224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_222DD828C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_222DD7944(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

id sub_222DD82F4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_222DDA190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222D8E3B4(v10);
  if (v11)
  {
  }

  else
  {
    sub_222DDA180();
    v12 = sub_222DDA170();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    sub_222D8E490(v12, v14, v10, &selRef_setAceId_);
  }

  v15 = sub_222D8E0D0();
  [v10 setSash_];

  v16 = sub_222DDB500();
  sub_222D8E490(v16, v17, v10, &selRef_setItemType_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222DDD2F0;
  sub_222D9E3E4(0, &qword_27D0487C8, 0x277D470F0);
  v19 = a1;
  v20 = a2;
  *(v18 + 32) = sub_222DD9204(a1, v20);
  sub_222DD858C(v18, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_222DDDDA0;
  *(v21 + 32) = sub_222DDB500();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_222DDB500();
  *(v21 + 56) = v23;
  *(v21 + 64) = sub_222DDB500();
  *(v21 + 72) = v24;
  sub_222DD8610(v21, v10);

  sub_222DCB020(a3);
  return v10;
}

void sub_222DD858C(uint64_t a1, void *a2)
{
  sub_222D9E3E4(0, &unk_27D0487D0, 0x277D47630);
  v3 = sub_222DDB620();

  [a2 setPersons_];
}

void sub_222DD8610(uint64_t a1, void *a2)
{
  v3 = sub_222DDB620();

  [a2 setDisplayProperties_];
}

id sub_222DD867C(void *a1, unint64_t a2)
{
  sub_222D9E3E4(0, &unk_27D0487E0, 0x277D47508);
  v4 = a1;
  v5 = sub_222DD8C38(v4);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setLocation_];
  sub_222DD89FC(v5);
  if (v7)
  {
    v8 = sub_222DDB4C0();
  }

  else
  {
    v8 = 0;
  }

  [v6 setLabel_];

  result = [v4 _geoMapItem];
  if (result)
  {
    v10 = [result _placeDataAsData];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = sub_222DDA130();
      v13 = v12;

      v14 = sub_222DDA110();
      sub_222D9322C(v11, v13);
    }

    else
    {
      v14 = 0;
    }

    [v6 setPlaceData2_];

    v15 = sub_222DDB500();
    sub_222DD8A60(v15, v16, v6);
    v17 = [v4 _geoMapItem];
    v18 = v17;
    if (v17)
    {
      [v17 _resultProviderID];
      swift_unknownObjectRelease();
      v18 = sub_222DDBB50();
    }

    [v6 setLocalSearchProviderId_];

    v19 = [v4 _geoMapItem];
    if (v19)
    {
      v20 = [v19 _reviewsAttribution];
      swift_unknownObjectRelease();
      if (v20)
      {
        v21 = [objc_allocWithZone(MEMORY[0x277D47480]) init];
        v22 = v20;
        sub_222DD8B44(v22);
        if (v23)
        {
          v24 = sub_222DDB4C0();
        }

        else
        {
          v24 = 0;
        }

        [v21 setAttributionId_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_222DDD2F0;
        *(v25 + 32) = v21;
        v26 = v21;
        sub_222DD8BB4(v25, v6);
        v27 = sub_222DDB500();
        sub_222DD8A60(v27, v28, v6);
      }
    }

    if (a2 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
      v29 = sub_222DDB910();
    }

    else
    {
      sub_222DDBAD0();
      v29 = a2;
    }

    sub_222DD8AC4(v29, v6);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222DD89FC(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222DDB500();

  return v3;
}

void sub_222DD8A60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222DDB4C0();

  [a3 setDetailType_];
}

void sub_222DD8AC4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
  v3 = sub_222DDB620();

  [a2 setCommands_];
}

uint64_t sub_222DD8B44(void *a1)
{
  v2 = [a1 providerID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

void sub_222DD8BB4(uint64_t a1, void *a2)
{
  sub_222D9E3E4(0, &qword_27D0487F8, 0x277D47480);
  v3 = sub_222DDB620();

  [a2 setAttributions_];
}

id sub_222DD8C38(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = OUTLINED_FUNCTION_5_9();
  if (result)
  {
    v4 = [result name];
    v5 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_10(v5, sel_setLabel_);

    v6 = OUTLINED_FUNCTION_5_9();
    v7 = v6;
    if (v6)
    {
      [v6 coordinate];
      swift_unknownObjectRelease();
      v7 = sub_222DDB670();
    }

    [v2 setLatitude_];

    v8 = OUTLINED_FUNCTION_5_9();
    v9 = v8;
    if (v8)
    {
      [v8 coordinate];
      swift_unknownObjectRelease();
      v9 = sub_222DDB670();
    }

    [v2 setLongitude_];

    result = OUTLINED_FUNCTION_5_9();
    if (result)
    {
      v10 = [result addressDictionary];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_222DDB450();
      }

      else
      {
        sub_222DDB460();
      }

      v11 = sub_222DA7B8C(a1, &selRef_fullThoroughfare);
      if (v12)
      {
        sub_222DDB4C0();
        v11 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v11, sel_setStreet_);

      v13 = sub_222DA7B8C(a1, &selRef_thoroughfare);
      if (v14)
      {
        sub_222DDB4C0();
        v13 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v13, sel_setThoroughfare_);

      v15 = sub_222DA7B8C(a1, &selRef_subThoroughfare);
      if (v16)
      {
        sub_222DDB4C0();
        v15 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v15, sel_setSubThoroughfare_);

      v17 = sub_222DA7B8C(a1, &selRef_locality);
      if (v18)
      {
        sub_222DDB4C0();
        v17 = OUTLINED_FUNCTION_4_14();
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_2_10(v17, sel_setCity_);

      v21 = OUTLINED_FUNCTION_3_8(v19, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v20);
      OUTLINED_FUNCTION_1_9(v21, v22, v23, v24, v25, v26, v27, v28, v83, 0x437972746E756F43, 0xEB0000000065646FLL, v94, v95, v96, v97, v98, v99);
      v29 = sub_222DCCAA0(&v94);
      if (v100)
      {
        if (OUTLINED_FUNCTION_0_15(v29, v30, v31, MEMORY[0x277D837D0], v32))
        {
          v33 = v86;
          v34 = v90;
          goto LABEL_27;
        }
      }

      else
      {
        sub_222D93730(&v99);
      }

      v33 = 0;
      v34 = 0xE000000000000000;
LABEL_27:
      sub_222D8E490(v33, v34, v2, &selRef_setCountryCode_);

      v37 = OUTLINED_FUNCTION_3_8(v35, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v36);
      OUTLINED_FUNCTION_1_9(v37, v38, v39, v40, v41, v42, v43, v44, v84, 0xD000000000000016, 0x8000000222DE1630, v94, v95, v96, v97, v98, v99);
      v45 = sub_222DCCAA0(&v94);
      if (v100)
      {
        v49 = OUTLINED_FUNCTION_0_15(v45, v46, v47, MEMORY[0x277D837D0], v48);
        if (v49)
        {
          if ((v87 || v91 != 0xE000000000000000) && (sub_222DDBAC0() & 1) == 0)
          {
            sub_222D8E490(v87, v91, v2, &selRef_setStateCode_);
LABEL_40:
            v67 = OUTLINED_FUNCTION_3_8(v65, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v66);
            OUTLINED_FUNCTION_1_9(v67, v68, v69, v70, v71, v72, v73, v74, v85, 0x65646F4374736F50, 0xE800000000000000, v94, v95, v96, v97, v98, v99);

            v75 = sub_222DCCAA0(&v94);
            if (v100)
            {
              if (OUTLINED_FUNCTION_0_15(v75, v76, v77, MEMORY[0x277D837D0], v78))
              {
                v79 = v89;
                v80 = v93;
LABEL_45:
                sub_222D8E490(v79, v80, v2, &selRef_setPostalCode_);
                v81 = sub_222DDB500();
                sub_222D8E490(v81, v82, v2, &selRef_setRegionType_);

                return v2;
              }
            }

            else
            {
              sub_222D93730(&v99);
            }

            v79 = 0;
            v80 = 0xE000000000000000;
            goto LABEL_45;
          }
        }
      }

      else
      {
        v49 = sub_222D93730(&v99);
      }

      v51 = OUTLINED_FUNCTION_3_8(v49, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v50);
      OUTLINED_FUNCTION_1_9(v51, v52, v53, v54, v55, v56, v57, v58, v85, 0xD000000000000012, 0x8000000222DE1650, v94, v95, v96, v97, v98, v99);
      v59 = sub_222DCCAA0(&v94);
      if (v100)
      {
        if (OUTLINED_FUNCTION_0_15(v59, v60, v61, MEMORY[0x277D837D0], v62))
        {
          v63 = v88;
          v64 = v92;
LABEL_39:
          sub_222D8E490(v63, v64, v2, &selRef_setStateCode_);
          v65 = v2;
          goto LABEL_40;
        }
      }

      else
      {
        sub_222D93730(&v99);
      }

      v63 = 0;
      v64 = 0xE000000000000000;
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{

  return sub_222DA0340(v17, &a17, &a12);
}

id OUTLINED_FUNCTION_2_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_222DDB7E0();
}

uint64_t OUTLINED_FUNCTION_4_14()
{
}

id OUTLINED_FUNCTION_5_9()
{

  return [v0 (v1 + 494)];
}

id sub_222DD9204(void *a1, void *a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v73 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E38, &qword_222DDDFA0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v73 - v8;
  v9 = sub_222DDA100();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222DDA190();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222D8E3B4(v21);
  if (v22)
  {
  }

  else
  {
    sub_222DDA180();
    v23 = sub_222DDA170();
    v25 = v24;
    (*(v17 + 8))(v20, v15);
    sub_222DD8580(v23, v25, v21);
  }

  v26 = v76;
  if (a1)
  {
    v27 = [objc_opt_self() assistantIDFromContact_];
    if (v27)
    {
      sub_222DDA0E0();

      v27 = sub_222DDA0D0();
      (*(v11 + 8))(v14, v9);
    }

    v28 = v74;
    v29 = v75;
    v30 = v73;
    [v21 setIdentifier_];

    v31 = [a1 identifier];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v32, v33, v34, &selRef_setInternalGUID_);
    v35 = [a1 birthday];
    if (v35)
    {
      v36 = v35;
      sub_222DD9F70();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_222DD9FC0();
    __swift_storeEnumTagSinglePayload(v30, v37, 1, v38);
    sub_222DD9808(v30, v28);
    if (__swift_getEnumTagSinglePayload(v28, 1, v38) == 1)
    {
      sub_222DD9878(v28);
      v39 = sub_222DDA160();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v39);
      v40 = 0;
    }

    else
    {
      sub_222DD9F90();
      (*(*(v38 - 8) + 8))(v28, v38);
      v41 = sub_222DDA160();
      v40 = 0;
      if (__swift_getEnumTagSinglePayload(v29, 1, v41) != 1)
      {
        v40 = sub_222DDA140();
        (*(*(v41 - 8) + 8))(v29, v41);
      }
    }

    [v21 setBirthday_];

    v42 = [a1 organizationName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v43, v44, v45, &selRef_setCompany_);
    v46 = [a1 givenName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v47, v48, v49, &selRef_setFirstName_);
    v50 = sub_222D8E87C();
    sub_222D8E490(v50, v51, v21, &selRef_setFullName_);
    v52 = [a1 familyName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v53, v54, v55, &selRef_setLastName_);
    [v21 setMe_];
    v56 = [a1 middleName];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v57, v58, v59, &selRef_setMiddleName_);
    v60 = [a1 nickname];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v61, v62, v63, &selRef_setNickName_);
    v64 = [a1 namePrefix];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v65, v66, v67, &selRef_setPrefix_);
    v68 = [a1 nameSuffix];
    sub_222DDB500();
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0_16(v69, v70, v71, &selRef_setSuffix_);
  }

  return v21;
}

uint64_t sub_222DD9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DD9878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048800, &unk_222DE0140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_222D8E490(v4, v6, v5, a4);
}

void OUTLINED_FUNCTION_1_10()
{
}

id sub_222DD9914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_222DD9B58(a1, v6, &unk_27D048870, &unk_222DDE230);
  sub_222D8E490(a2, a3, v6, &selRef_setText_);

  return v6;
}

id sub_222DD99A0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222DDD2F0;
  sub_222DD9B14();
  v6 = v4;
  *(v5 + 32) = sub_222DD9A6C(a1, a2);
  sub_222DD9B58(v5, v6, &qword_27D048888, &unk_222DE0150);

  return v6;
}

id sub_222DD9A6C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_222DDB500();
  v7 = v6;
  v8 = v4;
  sub_222D8E490(v5, v7, v8, &selRef_setOrigin_);
  sub_222D8E490(a1, a2, v8, &selRef_setUtterance_);

  return v8;
}

unint64_t sub_222DD9B14()
{
  result = qword_27D048880;
  if (!qword_27D048880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048880);
  }

  return result;
}

void sub_222DD9B58(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = sub_222DDB620();

  [a2 setCommands_];
}

uint64_t sub_222DD9BD0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_222D97C84(a3, v3 + 32);
  return v3;
}

uint64_t sub_222DD9C34(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4)
{
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v7 = sub_222DDB3E0();
  __swift_project_value_buffer(v7, qword_27D04C910);
  v8 = sub_222DDB3C0();
  v9 = sub_222DDB6B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222D8A000, v8, v9, a4, v10, 2u);
    MEMORY[0x223DCEF40](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222DDD2F0;
  sub_222DD9E4C();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v16 = &type metadata for InstalledAppsProvider;
  v17 = &off_28362CB10;
  *(v11 + 32) = sub_222DD82F4(v12, v13, v15);
  sub_222DBAB24(v11, 0, a2);
}

uint64_t sub_222DD9DF4()
{
  sub_222DD9DC4();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_222DD9E4C()
{
  result = qword_27D048890;
  if (!qword_27D048890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048890);
  }

  return result;
}