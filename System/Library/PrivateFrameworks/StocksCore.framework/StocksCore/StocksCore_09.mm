id sub_1DAB3412C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1DAB341C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1DAB342B8(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) addObject_];
  }

  return result;
}

id sub_1DAB342DC(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) removeObject_];
  }

  return result;
}

uint64_t sub_1DAB34370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v5;
  a4(a1, a2);
  v10 = v5;
  sub_1DACB8C14();
}

void sub_1DAB344E4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppConfiguration(0);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v3;
  v8 = a1;
  sub_1DAA4F924(a2, a3);
  v9 = v3;
  v10 = sub_1DACB89D4();
  sub_1DACB8A64();

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a2;
  v11[4] = a3;
  v12 = v8;
  sub_1DAA4F924(a2, a3);
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAB3464C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a2;
  v8 = sub_1DACB8FB4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB9004();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  aBlock[4] = sub_1DAA4F9DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_76;
  v15 = _Block_copy(aBlock);
  sub_1DAA4F924(a3, a4);
  v16 = a5;
  sub_1DACB8FD4();
  aBlock[7] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v17);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v10, v15);
  _Block_release(v15);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1DAB34944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = sub_1DACB8FB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB9004();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  aBlock[4] = sub_1DAB34EF0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_70;
  v15 = _Block_copy(aBlock);
  sub_1DAA4F924(a3, a4);
  v16 = a1;
  sub_1DACB8FD4();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v17);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_1DAB34D08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DAA4F924(a1, a2);
  sub_1DACB8C14();
}

uint64_t sub_1DAB34DEC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_1DAB34E80()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(MEMORY[0x1E69E7CC0], 0);
  }

  return result;
}

uint64_t sub_1DAB34EF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0, *(v0 + 32));
  }

  return result;
}

void sub_1DAB34F48(uint64_t *a1@<X8>)
{
  v2 = 0x73752D6E65;
  v3 = [objc_opt_self() sharedPreferences];
  v4 = v3;
  if (!v3)
  {
    v8 = 0xE500000000000000;
LABEL_8:

    v13 = 0xE200000000000000;
    v11 = 21333;
    goto LABEL_9;
  }

  v5 = [v3 stocksLanguageCode];
  if (v5)
  {
    v6 = v5;
    v2 = sub_1DACB9324();
    v8 = v7;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = [v4 stocksCountryCode];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_1DACB9324();
  v13 = v12;

LABEL_9:
  *a1 = v2;
  a1[1] = v8;
  a1[2] = v11;
  a1[3] = v13;
}

uint64_t sub_1DAB35054(uint64_t a1)
{
  result = sub_1DACB7AB4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB7CC4();
    if (v3 <= 0x3F)
    {
      result = sub_1DACB8204();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id sub_1DAB3519C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a1;
  v59 = a2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = *(v7 + qword_1EE13E4B0 + 8);
  v43 = *(v7 + qword_1EE13E4B0);
  v42 = v8;
  v49 = type metadata accessor for YahooBaseResponse(255, v43, v8, a4);
  v45 = sub_1DACB89E4();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = (&v41 - v9);
  v54 = sub_1DACB7CC4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1DACB8204();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1DACB74D4();
  v13 = *(v55 - 8);
  v14 = MEMORY[0x1EEE9AC00](v55);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v41 - v19;
  v20 = sub_1DACB7AB4();
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7A24();
  sub_1DAB361BC(0);
  inited = swift_initStackObject();
  *(inited + 32) = 1735287148;
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 40) = 0xE400000000000000;
  v24 = &v4[*((*v6 & *v4) + qword_1EE13E4B0 + 48)];
  v25 = *(v24 + 1);
  *(inited + 48) = *v24;
  *(inited + 56) = v25;
  *(inited + 64) = 0x6E6F69676572;
  *(inited + 72) = 0xE600000000000000;
  v26 = *(v24 + 3);
  *(inited + 80) = *(v24 + 2);
  *(inited + 88) = v26;
  *(inited + 96) = 0x74616D726F66;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = 1852797802;
  *(inited + 120) = 0xE400000000000000;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v27 = sub_1DACB86F4();

  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v29 = result;
    v30 = sub_1DACB7A04();
    sub_1DAB5A264(v27);

    v31 = sub_1DACB9114();

    v32 = [v29 signedRequestForURL:v30 parameters:v31];

    if (v32)
    {
      sub_1DACB7474();

      v34 = v52;
      v35 = v55;
      (*(v13 + 32))(v52, v18, v55);
      swift_getWitnessTable();
      sub_1DACB84B4();
      swift_getWitnessTable();
      sub_1DACB8514();
      (*(v13 + 16))(v46, v34, v35);
      v36 = MEMORY[0x1E69E7D40];
      (*(v47 + 16))(v50, &v5[*((*MEMORY[0x1E69E7D40] & *v5) + qword_1EE13E4B0 + 72)], v48);
      (*(v53 + 16))(v51, &v5[*((*v36 & *v5) + qword_1EE13E4B0 + 64)], v54);
      v37 = sub_1DACB84F4();
      *(swift_allocObject() + 16) = v5;
      v38 = v5;
      sub_1DACB84C4();
      v39 = v37;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v39 start];
      (*(v13 + 8))(v34, v35);
    }

    else
    {
      type metadata accessor for YahooBaseOperation.OperationError(0, v43, v42, v33);
      swift_getWitnessTable();
      *v10 = swift_allocError();
      v40 = v45;
      swift_storeEnumTagMultiPayload();
      v58(v10);
      (*(v44 + 8))(v10, v40);
    }

    return (*(v56 + 8))(v22, v57);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB35A30(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E4B0 + 56));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1DAB35B40(a1, v6);
  (*(v9 + 16))(v6, v8, v9);
  return sub_1DAB36234(v6);
}

uint64_t sub_1DAB35B40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DACB8754();
  (*(*(v5 - 8) + 16))(a3, a2, v5);
  type metadata accessor for NetworkEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DAB35C5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE13E4B0 + 24);
  v3 = sub_1DACB7AB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E4B0 + 56)]);
  v4 = *((*v1 & *v0) + qword_1EE13E4B0 + 64);
  v5 = sub_1DACB7CC4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *((*v1 & *v0) + qword_1EE13E4B0 + 72);
  v7 = sub_1DACB8204();
  v8 = *(*(v7 - 8) + 8);

  return v8(&v0[v6], v7);
}

uint64_t sub_1DAB35EFC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E4B0 + 24);
  v4 = sub_1DACB7AB4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E4B0 + 56)]);
  v5 = *((*v2 & *a1) + qword_1EE13E4B0 + 64);
  v6 = sub_1DACB7CC4();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *((*v2 & *a1) + qword_1EE13E4B0 + 72);
  v8 = sub_1DACB8204();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

void sub_1DAB361BC(uint64_t a1)
{
  if (!qword_1EE123B40)
  {
    sub_1DAA4BD7C();
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123B40);
    }
  }
}

uint64_t sub_1DAB36234(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DAB362DC()
{
  v0 = 1280328001;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  xmmword_1ECBE74C0 = v13;
  *&xmmword_1ECBE74D0 = 1280328001;
  *(&xmmword_1ECBE74D0 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE74E0 = 0x6E4920656C707041;
  *(&xmmword_1ECBE74E0 + 1) = 0xEA00000000002E63;
  *&xmmword_1ECBE74F0 = 0x51414453414ELL;
  *(&xmmword_1ECBE74F0 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7500) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v4 = 1280328001;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1280328001;
  }

  *(&xmmword_1ECBE7500 + 1) = v4;
  unk_1ECBE7510 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7518 = v0;
  *&xmmword_1ECBE7520 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7520 + 8) = 0u;
  *(&xmmword_1ECBE7530 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36478@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A30 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7510;
  v11[6] = xmmword_1ECBE7520;
  v11[7] = xmmword_1ECBE7530;
  v2 = xmmword_1ECBE74D0;
  v3 = xmmword_1ECBE74E0;
  v11[2] = xmmword_1ECBE74E0;
  v11[3] = xmmword_1ECBE74F0;
  v4 = xmmword_1ECBE74F0;
  v5 = xmmword_1ECBE7500;
  v11[4] = xmmword_1ECBE7500;
  v11[5] = unk_1ECBE7510;
  v6 = xmmword_1ECBE74C0;
  v11[0] = xmmword_1ECBE74C0;
  v11[1] = xmmword_1ECBE74D0;
  v7 = xmmword_1ECBE7530;
  *(a1 + 96) = xmmword_1ECBE7520;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7540;
  *(a1 + 128) = qword_1ECBE7540;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36548()
{
  v0 = 1095521108;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1095521108, 0xE400000000000000);
  xmmword_1ECBE7548 = v13;
  *&xmmword_1ECBE7558 = 1095521108;
  *(&xmmword_1ECBE7558 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7568 = 0x49202C616C736554;
  *(&xmmword_1ECBE7568 + 1) = 0xEB000000002E636ELL;
  *&xmmword_1ECBE7578 = 0x51414453414ELL;
  *(&xmmword_1ECBE7578 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7588) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1095521108, 0xE400000000000000);
    v4 = 1095521108;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1095521108;
  }

  *(&xmmword_1ECBE7588 + 1) = v4;
  unk_1ECBE7598 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1095521108, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE75A0 = v0;
  *&xmmword_1ECBE75A8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE75A8 + 8) = 0u;
  *(&xmmword_1ECBE75B8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB366E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A38 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7598;
  v11[6] = xmmword_1ECBE75A8;
  v11[7] = xmmword_1ECBE75B8;
  v2 = xmmword_1ECBE7558;
  v3 = xmmword_1ECBE7568;
  v11[2] = xmmword_1ECBE7568;
  v11[3] = xmmword_1ECBE7578;
  v4 = xmmword_1ECBE7578;
  v5 = xmmword_1ECBE7588;
  v11[4] = xmmword_1ECBE7588;
  v11[5] = unk_1ECBE7598;
  v6 = xmmword_1ECBE7548;
  v11[0] = xmmword_1ECBE7548;
  v11[1] = xmmword_1ECBE7558;
  v7 = xmmword_1ECBE75B8;
  *(a1 + 96) = xmmword_1ECBE75A8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE75C8;
  *(a1 + 128) = qword_1ECBE75C8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB367B8()
{
  v0 = 1381259092;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1381259092, 0xE400000000000000);
  xmmword_1ECBE75D0 = v13;
  *&xmmword_1ECBE75E0 = 1381259092;
  *(&xmmword_1ECBE75E0 + 1) = 0xE400000000000000;
  strcpy(&xmmword_1ECBE75F0, "Twitter, Inc.");
  HIWORD(xmmword_1ECBE75F0) = -4864;
  *&xmmword_1ECBE7600 = 0x51414453414ELL;
  *(&xmmword_1ECBE7600 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7610) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1381259092, 0xE400000000000000);
    v4 = 1381259092;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1381259092;
  }

  *(&xmmword_1ECBE7610 + 1) = v4;
  unk_1ECBE7620 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1381259092, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7628 = v0;
  *&xmmword_1ECBE7630 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7630 + 8) = 0u;
  *(&xmmword_1ECBE7640 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB3695C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A40 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7620;
  v11[6] = xmmword_1ECBE7630;
  v11[7] = xmmword_1ECBE7640;
  v2 = xmmword_1ECBE75E0;
  v3 = xmmword_1ECBE75F0;
  v11[2] = xmmword_1ECBE75F0;
  v11[3] = xmmword_1ECBE7600;
  v4 = xmmword_1ECBE7600;
  v5 = xmmword_1ECBE7610;
  v11[4] = xmmword_1ECBE7610;
  v11[5] = unk_1ECBE7620;
  v6 = xmmword_1ECBE75D0;
  v11[0] = xmmword_1ECBE75D0;
  v11[1] = xmmword_1ECBE75E0;
  v7 = xmmword_1ECBE7640;
  *(a1 + 96) = xmmword_1ECBE7630;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7650;
  *(a1 + 128) = qword_1ECBE7650;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36A2C()
{
  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x435053475ELL, 0xE500000000000000);
  xmmword_1ECBE7658 = v11;
  *&xmmword_1ECBE7668 = 0x435053475ELL;
  *(&xmmword_1ECBE7668 + 1) = 0xE500000000000000;
  *&xmmword_1ECBE7678 = 0x30303520502653;
  *(&xmmword_1ECBE7678 + 1) = 0xE700000000000000;
  *&xmmword_1ECBE7688 = 0;
  *(&xmmword_1ECBE7688 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7698) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v1 = sub_1DAA4BF3C(0x435053475ELL, 0xE500000000000000), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
    v4 = sub_1DACB71E4();
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x30303520502653;
  }

  *(&xmmword_1ECBE7698 + 1) = v3;
  unk_1ECBE76A8 = v4;
  v5 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v6 = sub_1DAA4BF3C(0x435053475ELL, 0xE500000000000000), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    v9 = sub_1DACB71E4();
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 5252691;
  }

  qword_1ECBE76B0 = v8;
  *&xmmword_1ECBE76B8 = v9;
  result = 0.0;
  *(&xmmword_1ECBE76B8 + 8) = 0u;
  *(&xmmword_1ECBE76C8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36BA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A48 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE76A8;
  v11[6] = xmmword_1ECBE76B8;
  v11[7] = xmmword_1ECBE76C8;
  v2 = xmmword_1ECBE7668;
  v3 = xmmword_1ECBE7678;
  v11[2] = xmmword_1ECBE7678;
  v11[3] = xmmword_1ECBE7688;
  v4 = xmmword_1ECBE7688;
  v5 = xmmword_1ECBE7698;
  v11[4] = xmmword_1ECBE7698;
  v11[5] = unk_1ECBE76A8;
  v6 = xmmword_1ECBE7658;
  v11[0] = xmmword_1ECBE7658;
  v11[1] = xmmword_1ECBE7668;
  v7 = xmmword_1ECBE76C8;
  *(a1 + 96) = xmmword_1ECBE76B8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE76D8;
  *(a1 + 128) = qword_1ECBE76D8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36C70()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1229603934, 0xE400000000000000);
  xmmword_1ECBE76E0 = v12;
  *&xmmword_1ECBE76F0 = 1229603934;
  *(&xmmword_1ECBE76F0 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7700 = 0xD00000000000001CLL;
  *(&xmmword_1ECBE7700 + 1) = 0x80000001DACE73A0;
  *&xmmword_1ECBE7710 = 0;
  *(&xmmword_1ECBE7710 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7720) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = 0xE900000000000073;
  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v2 = sub_1DAA4BF3C(1229603934, 0xE400000000000000), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v5 = *v4;
    v0 = v4[1];
    sub_1DACB71E4();
  }

  else
  {
    v5 = 0x656E6F4A20776F44;
  }

  *(&xmmword_1ECBE7720 + 1) = v5;
  unk_1ECBE7730 = v0;
  v6 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v7 = sub_1DAA4BF3C(1229603934, 0xE400000000000000), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);
    v10 = sub_1DACB71E4();
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 5721924;
  }

  qword_1ECBE7738 = v9;
  *&xmmword_1ECBE7740 = v10;
  result = 0.0;
  *(&xmmword_1ECBE7740 + 8) = 0u;
  *(&xmmword_1ECBE7750 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36E00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A50 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7730;
  v11[6] = xmmword_1ECBE7740;
  v11[7] = xmmword_1ECBE7750;
  v2 = xmmword_1ECBE76F0;
  v3 = xmmword_1ECBE7700;
  v11[2] = xmmword_1ECBE7700;
  v11[3] = xmmword_1ECBE7710;
  v4 = xmmword_1ECBE7710;
  v5 = xmmword_1ECBE7720;
  v11[4] = xmmword_1ECBE7720;
  v11[5] = unk_1ECBE7730;
  v6 = xmmword_1ECBE76E0;
  v11[0] = xmmword_1ECBE76E0;
  v11[1] = xmmword_1ECBE76F0;
  v7 = xmmword_1ECBE7750;
  *(a1 + 96) = xmmword_1ECBE7740;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7760;
  *(a1 + 128) = qword_1ECBE7760;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36ED0()
{
  v0 = 5721924;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](5721924, 0xE300000000000000);
  xmmword_1ECBE7768 = v13;
  *&xmmword_1ECBE7778 = 5721924;
  *(&xmmword_1ECBE7778 + 1) = 0xE300000000000000;
  strcpy(&xmmword_1ECBE7788, "Dow Chemicals");
  HIWORD(xmmword_1ECBE7788) = -4864;
  *&xmmword_1ECBE7798 = 0;
  *(&xmmword_1ECBE7798 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE77A8) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE300000000000000;
    v3 = sub_1DAA4BF3C(5721924, 0xE300000000000000);
    v4 = 5721924;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE300000000000000;
    v4 = 5721924;
  }

  *(&xmmword_1ECBE77A8 + 1) = v4;
  unk_1ECBE77B8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE300000000000000;
    v9 = sub_1DAA4BF3C(5721924, 0xE300000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  qword_1ECBE77C0 = v0;
  *&xmmword_1ECBE77C8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE77C8 + 8) = 0u;
  *(&xmmword_1ECBE77D8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37060@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A58 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE77B8;
  v11[6] = xmmword_1ECBE77C8;
  v11[7] = xmmword_1ECBE77D8;
  v2 = xmmword_1ECBE7778;
  v3 = xmmword_1ECBE7788;
  v11[2] = xmmword_1ECBE7788;
  v11[3] = xmmword_1ECBE7798;
  v4 = xmmword_1ECBE7798;
  v5 = xmmword_1ECBE77A8;
  v11[4] = xmmword_1ECBE77A8;
  v11[5] = unk_1ECBE77B8;
  v6 = xmmword_1ECBE7768;
  v11[0] = xmmword_1ECBE7768;
  v11[1] = xmmword_1ECBE7778;
  v7 = xmmword_1ECBE77D8;
  *(a1 + 96) = xmmword_1ECBE77C8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE77E8;
  *(a1 + 128) = qword_1ECBE77E8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37130()
{
  v0 = 1296253505;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1296253505, 0xE400000000000000);
  xmmword_1ECBE77F0 = v13;
  *&xmmword_1ECBE7800 = 1296253505;
  *(&xmmword_1ECBE7800 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7810 = 0x6C70206D61636241;
  *(&xmmword_1ECBE7810 + 1) = 0xE900000000000063;
  *&xmmword_1ECBE7820 = 0;
  *(&xmmword_1ECBE7820 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7830) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1296253505, 0xE400000000000000);
    v4 = 1296253505;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1296253505;
  }

  *(&xmmword_1ECBE7830 + 1) = v4;
  unk_1ECBE7840 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1296253505, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7848 = v0;
  *&xmmword_1ECBE7850 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7850 + 8) = 0u;
  *(&xmmword_1ECBE7860 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB372B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7840;
  v11[6] = xmmword_1ECBE7850;
  v11[7] = xmmword_1ECBE7860;
  v2 = xmmword_1ECBE7800;
  v3 = xmmword_1ECBE7810;
  v11[2] = xmmword_1ECBE7810;
  v11[3] = xmmword_1ECBE7820;
  v4 = xmmword_1ECBE7820;
  v5 = xmmword_1ECBE7830;
  v11[4] = xmmword_1ECBE7830;
  v11[5] = unk_1ECBE7840;
  v6 = xmmword_1ECBE77F0;
  v11[0] = xmmword_1ECBE77F0;
  v11[1] = xmmword_1ECBE7800;
  v7 = xmmword_1ECBE7860;
  *(a1 + 96) = xmmword_1ECBE7850;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7870;
  *(a1 + 128) = qword_1ECBE7870;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37388()
{
  v0 = 1279476289;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1279476289, 0xE400000000000000);
  xmmword_1ECBE7878 = v13;
  *&xmmword_1ECBE7888 = 1279476289;
  *(&xmmword_1ECBE7888 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7898 = 0xD000000000000011;
  *(&xmmword_1ECBE7898 + 1) = 0x80000001DACE7380;
  *&xmmword_1ECBE78A8 = 0;
  *(&xmmword_1ECBE78A8 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE78B8) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1279476289, 0xE400000000000000);
    v4 = 1279476289;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1279476289;
  }

  *(&xmmword_1ECBE78B8 + 1) = v4;
  unk_1ECBE78C8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1279476289, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE78D0 = v0;
  *&xmmword_1ECBE78D8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE78D8 + 8) = 0u;
  *(&xmmword_1ECBE78E8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37518@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A68 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE78C8;
  v11[6] = xmmword_1ECBE78D8;
  v11[7] = xmmword_1ECBE78E8;
  v2 = xmmword_1ECBE7888;
  v3 = xmmword_1ECBE7898;
  v11[2] = xmmword_1ECBE7898;
  v11[3] = xmmword_1ECBE78A8;
  v4 = xmmword_1ECBE78A8;
  v5 = xmmword_1ECBE78B8;
  v11[4] = xmmword_1ECBE78B8;
  v11[5] = unk_1ECBE78C8;
  v6 = xmmword_1ECBE7878;
  v11[0] = xmmword_1ECBE7878;
  v11[1] = xmmword_1ECBE7888;
  v7 = xmmword_1ECBE78E8;
  *(a1 + 96) = xmmword_1ECBE78D8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE78F8;
  *(a1 + 128) = qword_1ECBE78F8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB375E8()
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](16706, 0xE200000000000000);
  xmmword_1ECBE7900 = v13;
  *&xmmword_1ECBE7910 = 16706;
  *(&xmmword_1ECBE7910 + 1) = 0xE200000000000000;
  *&xmmword_1ECBE7920 = 0xD000000000000012;
  *(&xmmword_1ECBE7920 + 1) = 0x80000001DACE7360;
  *&xmmword_1ECBE7930 = 0;
  *(&xmmword_1ECBE7930 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7940) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v1 = 16706;
    v2 = 0xE200000000000000;
    v3 = sub_1DAA4BF3C(16706, 0xE200000000000000);
    if (v4)
    {
      v5 = (*(v0 + 56) + 16 * v3);
      v1 = *v5;
      v2 = v5[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 16706;
  }

  *(&xmmword_1ECBE7940 + 1) = v1;
  unk_1ECBE7950 = v2;
  v6 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v7 = 16706;
    v8 = 0xE200000000000000;
    v9 = sub_1DAA4BF3C(16706, 0xE200000000000000);
    if (v10)
    {
      v11 = (*(v6 + 56) + 16 * v9);
      v7 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE200000000000000;
    v7 = 16706;
  }

  qword_1ECBE7958 = v7;
  *&xmmword_1ECBE7960 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7960 + 8) = 0u;
  *(&xmmword_1ECBE7970 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37768@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A70 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7950;
  v11[6] = xmmword_1ECBE7960;
  v11[7] = xmmword_1ECBE7970;
  v2 = xmmword_1ECBE7910;
  v3 = xmmword_1ECBE7920;
  v11[2] = xmmword_1ECBE7920;
  v11[3] = xmmword_1ECBE7930;
  v4 = xmmword_1ECBE7930;
  v5 = xmmword_1ECBE7940;
  v11[4] = xmmword_1ECBE7940;
  v11[5] = unk_1ECBE7950;
  v6 = xmmword_1ECBE7900;
  v11[0] = xmmword_1ECBE7900;
  v11[1] = xmmword_1ECBE7910;
  v7 = xmmword_1ECBE7970;
  *(a1 + 96) = xmmword_1ECBE7960;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7980;
  *(a1 + 128) = qword_1ECBE7980;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37838()
{
  v0 = 0x3532324E5ELL;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x3532324E5ELL, 0xE500000000000000);
  xmmword_1ECBE7988 = v13;
  *&xmmword_1ECBE7998 = 0x3532324E5ELL;
  *(&xmmword_1ECBE7998 + 1) = 0xE500000000000000;
  *&xmmword_1ECBE79A8 = 0xD000000000000010;
  *(&xmmword_1ECBE79A8 + 1) = 0x80000001DACE7340;
  *&xmmword_1ECBE79B8 = 0;
  *(&xmmword_1ECBE79B8 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE79C8) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE500000000000000;
    v3 = sub_1DAA4BF3C(0x3532324E5ELL, 0xE500000000000000);
    v4 = 0x3532324E5ELL;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    v4 = 0x3532324E5ELL;
  }

  *(&xmmword_1ECBE79C8 + 1) = v4;
  unk_1ECBE79D8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE500000000000000;
    v9 = sub_1DAA4BF3C(0x3532324E5ELL, 0xE500000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  qword_1ECBE79E0 = v0;
  *&xmmword_1ECBE79E8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE79E8 + 8) = 0u;
  *(&xmmword_1ECBE79F8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB379B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A78 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE79D8;
  v11[6] = xmmword_1ECBE79E8;
  v11[7] = xmmword_1ECBE79F8;
  v2 = xmmword_1ECBE7998;
  v3 = xmmword_1ECBE79A8;
  v11[2] = xmmword_1ECBE79A8;
  v11[3] = xmmword_1ECBE79B8;
  v4 = xmmword_1ECBE79B8;
  v5 = xmmword_1ECBE79C8;
  v11[4] = xmmword_1ECBE79C8;
  v11[5] = unk_1ECBE79D8;
  v6 = xmmword_1ECBE7988;
  v11[0] = xmmword_1ECBE7988;
  v11[1] = xmmword_1ECBE7998;
  v7 = xmmword_1ECBE79F8;
  *(a1 + 96) = xmmword_1ECBE79E8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7A08;
  *(a1 + 128) = qword_1ECBE7A08;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37A88()
{
  v0 = 0xE900000000000053;
  v1 = 0x4B2E303039313530;
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x4B2E303039313530, 0xE900000000000053);
  xmmword_1ECBE7A10 = v12;
  *&xmmword_1ECBE7A20 = 0x4B2E303039313530;
  *(&xmmword_1ECBE7A20 + 1) = 0xE900000000000053;
  *&xmmword_1ECBE7A30 = 0x1000000000000013;
  *(&xmmword_1ECBE7A30 + 1) = 0x80000001DACE7320;
  *&xmmword_1ECBE7A40 = 0;
  *(&xmmword_1ECBE7A40 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7A50) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v3 = sub_1DAA4BF3C(0x4B2E303039313530, 0xE900000000000053), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    v6 = sub_1DACB71E4();
  }

  else
  {
    v5 = 0x4B2E303039313530;
    v6 = 0xE900000000000053;
  }

  *(&xmmword_1ECBE7A50 + 1) = v5;
  unk_1ECBE7A60 = v6;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = sub_1DAA4BF3C(0x4B2E303039313530, 0xE900000000000053);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v1 = *v10;
      v0 = v10[1];
      sub_1DACB71E4();
    }
  }

  qword_1ECBE7A68 = v1;
  *&xmmword_1ECBE7A70 = v0;
  result = 0.0;
  *(&xmmword_1ECBE7A70 + 8) = 0u;
  *(&xmmword_1ECBE7A80 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37C08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A80 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7A60;
  v11[6] = xmmword_1ECBE7A70;
  v11[7] = xmmword_1ECBE7A80;
  v2 = xmmword_1ECBE7A20;
  v3 = xmmword_1ECBE7A30;
  v11[2] = xmmword_1ECBE7A30;
  v11[3] = xmmword_1ECBE7A40;
  v4 = xmmword_1ECBE7A40;
  v5 = xmmword_1ECBE7A50;
  v11[4] = xmmword_1ECBE7A50;
  v11[5] = unk_1ECBE7A60;
  v6 = xmmword_1ECBE7A10;
  v11[0] = xmmword_1ECBE7A10;
  v11[1] = xmmword_1ECBE7A20;
  v7 = xmmword_1ECBE7A80;
  *(a1 + 96) = xmmword_1ECBE7A70;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7A90;
  *(a1 + 128) = qword_1ECBE7A90;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

id sub_1DAB37CD8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_1DAADFA60(&v19);
    goto LABEL_11;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v16;
  v9 = [v16 integerValue];
  if (v9 == -1)
  {
LABEL_20:

    if ((((v9 + a4) ^ a4) & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    v12 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v13 = [v12 bundleChannelIDs];

    v14 = sub_1DACB92F4();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_1DAADFA60(&v19);
    goto LABEL_20;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v16;
  v11 = [v10 integerValue];

  if (((v11 - a4) ^ (v9 + a4)))
  {
    goto LABEL_18;
  }

  return 0;
}

BOOL AccessCheckerHasAccess(_:toItemPaid:isBundlePaid:channelID:lineNumber:)(id a1, char a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    v11 = [a1 purchaseProvider];
    if (!a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = [v11 purchasedTagIDs];
    v13 = sub_1DACB9804();

    LOBYTE(v12) = sub_1DAA65964(a4, a5, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_8:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_1DAADFA60(&v27);
    goto LABEL_17;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v15 = v24;
  v16 = [v24 integerValue];
  if (v16 == -1)
  {
LABEL_26:

    if ((((v16 + a6) ^ a6) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (objc_getAssociatedObject(v14, ~v16))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_1DAADFA60(&v27);
    goto LABEL_26;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = v24;
  v18 = [v17 integerValue];

  if ((((v18 - a6) ^ (v16 + a6)) & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v20 = [v19 bundleChannelIDs];

  v21 = sub_1DACB92F4();
  v22 = [v20 containsObject_];

  return (v22 & 1) != 0;
}

BOOL AccessCheckerHasAccess(_:to:lineNumber:)(void *a1, id a2, int a3)
{
  v6 = [a2 isPaid];
  if ([a2 respondsToSelector_])
  {
    v7 = [a2 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 sourceChannel];
  if (v8)
  {
    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    v10 = sub_1DACB9324();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v12 = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [a1 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = sub_1DACB9804();

    LOBYTE(v14) = sub_1DAA65964(v10, v12, v15);

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (v12)
  {
    v17 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v17, v17 + 1))
    {
      sub_1DACB9B74();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_1DAB0AAC8();
      if (swift_dynamicCast())
      {
        v18 = v26;
        v19 = [v26 integerValue];
        if (v19 == -1)
        {
LABEL_34:

          if ((((v19 + a3) ^ a3) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_1DAADFA60(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_1DACB9B74();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_1DAADFA60(&v29);
      goto LABEL_34;
    }

    sub_1DAB0AAC8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v20 = v26;
    v21 = [v20 integerValue];

    if (((v21 - a3) ^ (v19 + a3)))
    {
LABEL_31:
      v22 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v23 = [v22 bundleChannelIDs];

      v24 = sub_1DACB92F4();
      v25 = [v23 containsObject_];

      return (v25 & 1) != 0;
    }

LABEL_35:
  }

  return 0;
}

{
  v6 = [a2 isPaid];
  v7 = [a2 isBundlePaid];
  v8 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v9 = sub_1DACB9324();
  v11 = v10;

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:

    return 1;
  }

  v12 = [objc_msgSend(a1 purchaseProvider)];
  v13 = sub_1DACB9804();

  LOBYTE(v12) = sub_1DAA65964(v9, v11, v13);

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_1DAADFA60(&v26);
    goto LABEL_16;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_26:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_1DAADFA60(&v26);
    goto LABEL_26;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if (((v19 - a3) ^ (v17 + a3)))
  {
LABEL_23:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [v20 bundleChannelIDs];

    v22 = sub_1DACB92F4();
    LOBYTE(v20) = [v21 containsObject_];

    return (v20 & 1) != 0;
  }

LABEL_27:

  return 0;
}

uint64_t AccessCheckerHasAccess(_:with:lineNumber:)(void *a1, void *a2, int a3)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_1DACB9324();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1DACB9804();

  LOBYTE(v12) = sub_1DAA65964(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

LABEL_8:
  v15 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_1DAADFA60(&v26);
    goto LABEL_16;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_27:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_1DAADFA60(&v26);
    goto LABEL_27;
  }

  sub_1DAB0AAC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if ((((v19 - a3) ^ (v17 + a3)) & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_1DACB9324();
    v21 = sub_1DACB92F4();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_1DAB38E04()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11FDB0);
  __swift_project_value_buffer(v0, qword_1EE11FDB0);
  return sub_1DACB8C84();
}

uint64_t sub_1DAB38EA8()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11D368);
  __swift_project_value_buffer(v0, qword_1EE11D368);
  return sub_1DACB8C84();
}

uint64_t sub_1DAB38F70()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E2E8);
  __swift_project_value_buffer(v0, qword_1EE13E2E8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAB390CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id sub_1DAB39164(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1DAA4D678(v1 + 32, v26);
  sub_1DAA4D678(v1 + 72, v25);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = type metadata accessor for YahooChartModelEngine();
  v23 = v10;
  v24 = &off_1F5690098;
  v22[0] = v9;
  v11 = type metadata accessor for SparklineOperation(0);
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v21[3] = v10;
  v21[4] = &off_1F5690098;
  v21[0] = v17;
  *&v12[qword_1EE121DB8] = v3;
  *&v12[qword_1EE121DC0] = v4;
  sub_1DAA4D678(v21, &v12[qword_1EE121DD0]);
  sub_1DAA4D678(v25, &v12[qword_1EE121DC8]);
  *&v12[qword_1EE121DB0] = a1;
  v20.receiver = v12;
  v20.super_class = v11;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

uint64_t sub_1DAB393DC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB39450()
{
  v0 = swift_allocObject();
  sub_1DAA41644();
  return v0;
}

uint64_t sub_1DAB394B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB3954C()
{
  v1 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3957C()
{
  v1 = *(v0 + 64);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB395AC()
{
  v1 = *(v0 + 80);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB395DC()
{
  v1 = *(v0 + 96);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3960C()
{
  v1 = *(v0 + 112);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3963C()
{
  v1 = *(v0 + 128);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB396AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  v3 = *(v1 + 352);
  v25 = *(v1 + 336);
  v26 = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 288);
  v21 = *(v1 + 272);
  v6 = v21;
  v22 = v5;
  v7 = *(v1 + 288);
  v8 = *(v1 + 320);
  v23 = *(v1 + 304);
  v9 = v23;
  v24 = v8;
  v10 = *(v1 + 224);
  v18[0] = *(v1 + 208);
  v18[1] = v10;
  v11 = *(v1 + 256);
  v13 = *(v1 + 208);
  v12 = *(v1 + 224);
  v19 = *(v1 + 240);
  v14 = v19;
  v20 = v11;
  v15 = *(v1 + 352);
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 368);
  *(a1 + 160) = *(v1 + 368);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_1DAA5265C(v18, v17);
}

uint64_t sub_1DAB3975C()
{
  v1 = *(v0 + 408);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3978C()
{
  v1 = *(v0 + 424);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB397BC()
{
  v1 = *(v0 + 440);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3982C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAA964B0(*a1);
  v5 = v4;
  if (v3 == sub_1DAA964B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB398B4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAA964B0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB39918(uint64_t a1)
{
  sub_1DAA964B0(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAB3996C(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAA964B0(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB399CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB3D8B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAB399FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAA964B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAB39A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB3D8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB39A5C(uint64_t a1)
{
  v2 = sub_1DAA961D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB39A98(uint64_t a1)
{
  v2 = sub_1DAA961D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DAB39AD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, char a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58)
{
  v60 = a16;
  if (a14)
  {
    v126 = a14;
    v61 = a18;
    if (a16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v64 = qword_1EE1242C0;
    v63 = qword_1EE1242C8;
    sub_1DACB71E4();
    a13 = sub_1DAA4BBA0(v64, v63);
    v126 = v65;

    v61 = a18;
    if (a16)
    {
LABEL_3:
      v62 = a20;
      if (v61)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v66 = qword_1EE1242C0;
  v67 = qword_1EE1242C8;
  sub_1DACB71E4();
  a15 = sub_1DAA4C06C(v66, v67);
  v60 = v68;

  v62 = a20;
  if (!v61)
  {
LABEL_11:
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v70 = qword_1EE1242C0;
    v69 = qword_1EE1242C8;
    sub_1DACB71E4();
    a17 = sub_1DAA4C248(v70, v69);
    v61 = v71;
  }

LABEL_14:
  v72 = a22;
  v127 = v60;
  if (v62)
  {
    v124 = v62;
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v75 = qword_1EE1242C0;
    v74 = qword_1EE1242C8;
    sub_1DACB71E4();
    v76 = sub_1DAA4C424(v75, v74);
    v124 = v77;

    a19 = v76;
  }

  v78 = a54;
  v79 = a53;
  v80 = a52;
  v81 = a46;
  v82 = a43;
  v83 = a40;
  v84 = a38;
  v85 = a30;
  v86 = a29;
  v87 = a28;
  v88 = a27;
  v89 = a26;
  v90 = a25;
  v91 = a12;
  v92 = a11;
  v93 = a10;
  if (!a22)
  {
    v121 = a19;
    v122 = a3;
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v96 = qword_1EE1242C0;
    v95 = qword_1EE1242C8;
    sub_1DACB71E4();
    a21 = sub_1DAA4C600(v96, v95);
    v72 = v97;

    a3 = v122;
    v79 = a53;
    v78 = a54;
    v83 = a40;
    v80 = a52;
    v93 = a10;
    v84 = a38;
    v82 = a43;
    a19 = v121;
    v88 = a27;
    v90 = a25;
    v91 = a12;
    v89 = a26;
    v81 = a46;
    v92 = a11;
    v85 = a30;
    v86 = a29;
    v87 = a28;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 56) = v126;
  *(a9 + 64) = a15;
  *(a9 + 72) = v127;
  *(a9 + 80) = a17;
  *(a9 + 88) = v61;
  *(a9 + 96) = a19;
  *(a9 + 104) = v124;
  *(a9 + 112) = a21;
  *(a9 + 120) = v72;
  *(a9 + 128) = a23;
  *(a9 + 168) = a31;
  *(a9 + 176) = a32;
  *(a9 + 184) = a33;
  *(a9 + 192) = a35;
  *(a9 + 200) = a34;
  *(a9 + 392) = a39;
  *(a9 + 408) = a41;
  *(a9 + 416) = a42;
  *(a9 + 440) = a45;
  *(a9 + 448) = v81;
  *(a9 + 48) = a13;
  *(a9 + 376) = a37;
  v98 = 0xE000000000000000;
  if (a44)
  {
    v98 = a44;
    v99 = v82;
  }

  else
  {
    v99 = 0;
  }

  if (v85)
  {
    v100 = 0;
  }

  else
  {
    v100 = v86;
  }

  v101 = 172800;
  if ((v87 & 1) == 0)
  {
    v101 = v88;
  }

  v102 = 604800;
  if ((v89 & 1) == 0)
  {
    v102 = v90;
  }

  if (v91)
  {
    v103 = 0;
  }

  else
  {
    v103 = v92;
  }

  *(a9 + 40) = v103;
  *(a9 + 368) = *(a36 + 160);
  v104 = v84 & 1;
  v105 = v83 & 1;
  v106 = v93 & 1;
  if (a8)
  {
    v107 = 0;
  }

  else
  {
    v107 = a7;
  }

  if (a48)
  {
    a47 = 0;
  }

  if (a50)
  {
    a49 = 0;
  }

  if (v80)
  {
    a51 = 0;
  }

  v112 = v79 & 1;
  v113 = v78 & 1;
  v114 = 25;
  if ((a56 & 1) == 0)
  {
    v114 = a55;
  }

  v115 = MEMORY[0x1E69E7CC0];
  if (a57)
  {
    v115 = a57;
  }

  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = (a4 == 2) | a4 & 1;
  *(a9 + 18) = a5 & 1;
  *(a9 + 19) = a6 & 1;
  *(a9 + 24) = v107;
  *(a9 + 32) = v106;
  *(a9 + 136) = a24;
  *(a9 + 144) = v102;
  *(a9 + 152) = v101;
  *(a9 + 160) = v100;
  v116 = *(a36 + 144);
  *(a9 + 336) = *(a36 + 128);
  *(a9 + 352) = v116;
  v117 = *(a36 + 80);
  *(a9 + 272) = *(a36 + 64);
  *(a9 + 288) = v117;
  v118 = *(a36 + 112);
  *(a9 + 304) = *(a36 + 96);
  *(a9 + 320) = v118;
  v119 = *(a36 + 16);
  *(a9 + 208) = *a36;
  *(a9 + 224) = v119;
  result = *(a36 + 48);
  *(a9 + 240) = *(a36 + 32);
  *(a9 + 256) = result;
  *(a9 + 384) = v104;
  *(a9 + 400) = v105;
  *(a9 + 424) = v99;
  *(a9 + 432) = v98;
  *(a9 + 456) = a47;
  *(a9 + 464) = a49;
  *(a9 + 472) = a51;
  *(a9 + 480) = v112;
  *(a9 + 481) = v113;
  *(a9 + 488) = v114;
  *(a9 + 496) = v115;
  *(a9 + 504) = (a58 == 2) | a58 & 1;
  return result;
}

uint64_t sub_1DAB3A104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA955F4(0, &qword_1EE123C90, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v230 - v8;
  v10 = a1[3];
  v328 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DAA961D4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v328);
  }

  v281 = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  LOBYTE(v303) = 0;
  sub_1DAA5260C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v13 = v12;
  sub_1DAA96338(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v279 = v9;
  v280 = (v11 + 16);
  v14 = *&v314[0];
  v278 = MEMORY[0x1E69E7CC0];
  if (!*&v314[0])
  {
    v276 = v13;
    v277 = v6;
    v15 = v11;
    swift_beginAccess();
    v16 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = 0xD000000000000015;
    *(v19 + 5) = 0x80000001DACE1160;
    v278 = v16;
    *v280 = v16;
    swift_endAccess();
    v11 = v15;
    v14 = 0;
    v13 = v276;
    v6 = v277;
  }

  LOBYTE(v303) = 1;
  sub_1DACB9F84();
  v277 = v6;
  v275 = v7;
  v20 = *&v314[0];
  if (!*&v314[0])
  {
    v21 = v14;
    swift_beginAccess();
    v22 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v23 = v278;
    v25 = *(v278 + 2);
    v24 = *(v278 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v278);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[16 * v25];
    *(v26 + 4) = 0xD000000000000012;
    *(v26 + 5) = 0x80000001DACE1180;
    v278 = v23;
    *v280 = v23;
    swift_endAccess();
    v11 = v22;
    v14 = v21;
  }

  LOBYTE(v314[0]) = 2;
  sub_1DACB9F84();
  v274 = v303;
  if (v303 == 2)
  {
    v27 = v14;
    swift_beginAccess();
    v28 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v29 = v278;
    v31 = *(v278 + 2);
    v30 = *(v278 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v278);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[16 * v31];
    *(v32 + 4) = 0xD000000000000010;
    *(v32 + 5) = 0x80000001DACE11A0;
    v278 = v29;
    *v280 = v29;
    swift_endAccess();
    v11 = v28;
    v14 = v27;
  }

  LOBYTE(v314[0]) = 3;
  sub_1DACB9F84();
  v273 = v303;
  if (v303 == 2)
  {
    v33 = v14;
    swift_beginAccess();
    v34 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v35 = v278;
    v37 = *(v278 + 2);
    v36 = *(v278 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v278);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[16 * v37];
    *(v38 + 4) = 0xD000000000000010;
    *(v38 + 5) = 0x80000001DACE11C0;
    v278 = v35;
    *v280 = v35;
    swift_endAccess();
    v11 = v34;
    v14 = v33;
  }

  LOBYTE(v314[0]) = 4;
  sub_1DACB9F84();
  v272 = v303;
  if (v303 == 2)
  {
    v39 = v14;
    swift_beginAccess();
    v40 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v41 = v278;
    v43 = *(v278 + 2);
    v42 = *(v278 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1DAA9A3B0((v42 > 1), v43 + 1, 1, v278);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[16 * v43];
    *(v44 + 4) = 0xD00000000000001CLL;
    *(v44 + 5) = 0x80000001DACE11E0;
    v278 = v41;
    *v280 = v41;
    swift_endAccess();
    v11 = v40;
    v14 = v39;
  }

  LOBYTE(v314[0]) = 5;
  sub_1DACB9F84();
  v271 = v303;
  if (v303 == 2)
  {
    v45 = v14;
    swift_beginAccess();
    v46 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v47 = v278;
    v49 = *(v278 + 2);
    v48 = *(v278 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_1DAA9A3B0((v48 > 1), v49 + 1, 1, v278);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[16 * v49];
    *(v50 + 4) = 0xD00000000000001CLL;
    *(v50 + 5) = 0x80000001DACE1200;
    v278 = v47;
    *v280 = v47;
    swift_endAccess();
    v11 = v46;
    v14 = v45;
  }

  LOBYTE(v303) = 6;
  sub_1DACB9F84();
  v270 = *&v314[0];
  LODWORD(v269) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    v51 = v14;
    swift_beginAccess();
    v52 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v53 = v278;
    v55 = *(v278 + 2);
    v54 = *(v278 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1DAA9A3B0((v54 > 1), v55 + 1, 1, v278);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[16 * v55];
    strcpy(v56 + 32, "enabledLevel");
    v56[45] = 0;
    *(v56 + 23) = -5120;
    v278 = v53;
    *v280 = v53;
    swift_endAccess();
    v11 = v52;
    v14 = v51;
  }

  LOBYTE(v314[0]) = 7;
  sub_1DACB9F84();
  v276 = v13;
  v58 = v303;
  v59 = v328;
  v268 = v11;
  if (v303 == 2)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v61 = *(v278 + 2);
    v60 = *(v278 + 3);
    if (v61 >= v60 >> 1)
    {
      v278 = sub_1DAA9A3B0((v60 > 1), v61 + 1, 1, v278);
    }

    v62 = v278;
    *(v278 + 2) = v61 + 1;
    v63 = &v62[16 * v61];
    *(v63 + 4) = 0xD000000000000019;
    *(v63 + 5) = 0x80000001DACE1230;
    *v280 = v62;
    swift_endAccess();
  }

  LOBYTE(v303) = 8;
  v64 = v277;
  sub_1DACB9F84();
  v328 = *&v314[0];
  LODWORD(v267) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v66 = *(v278 + 2);
    v65 = *(v278 + 3);
    if (v66 >= v65 >> 1)
    {
      v278 = sub_1DAA9A3B0((v65 > 1), v66 + 1, 1, v278);
    }

    v67 = v278;
    *(v278 + 2) = v66 + 1;
    v68 = &v67[16 * v66];
    *(v68 + 4) = 0xD000000000000026;
    *(v68 + 5) = 0x80000001DACE1250;
    *v280 = v67;
    swift_endAccess();
  }

  LOBYTE(v303) = 9;
  sub_1DACB9F84();
  v266 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v70 = *(v278 + 2);
    v69 = *(v278 + 3);
    if (v70 >= v69 >> 1)
    {
      v278 = sub_1DAA9A3B0((v69 > 1), v70 + 1, 1, v278);
    }

    v71 = v278;
    *(v278 + 2) = v70 + 1;
    v72 = &v71[16 * v70];
    *(v72 + 4) = 0x6C63697472416564;
    *(v72 + 5) = 0xEB00000000444965;
    *v280 = v71;
    swift_endAccess();
  }

  LOBYTE(v303) = 10;
  sub_1DACB9F84();
  v265 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v74 = *(v278 + 2);
    v73 = *(v278 + 3);
    if (v74 >= v73 >> 1)
    {
      v278 = sub_1DAA9A3B0((v73 > 1), v74 + 1, 1, v278);
    }

    v75 = v278;
    *(v278 + 2) = v74 + 1;
    v76 = &v75[16 * v74];
    *(v76 + 4) = 0x6C63697472416572;
    *(v76 + 5) = 0xEB00000000444965;
    *v280 = v75;
    swift_endAccess();
  }

  LOBYTE(v303) = 11;
  sub_1DACB9F84();
  v264 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v78 = *(v278 + 2);
    v77 = *(v278 + 3);
    if (v78 >= v77 >> 1)
    {
      v278 = sub_1DAA9A3B0((v77 > 1), v78 + 1, 1, v278);
    }

    v79 = v278;
    *(v278 + 2) = v78 + 1;
    v80 = &v79[16 * v78];
    *(v80 + 4) = 0x6C63697472416873;
    *(v80 + 5) = 0xEB00000000444965;
    *v280 = v79;
    swift_endAccess();
  }

  LOBYTE(v303) = 12;
  sub_1DACB9F84();
  v263 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v82 = *(v278 + 2);
    v81 = *(v278 + 3);
    if (v82 >= v81 >> 1)
    {
      v278 = sub_1DAA9A3B0((v81 > 1), v82 + 1, 1, v278);
    }

    v83 = v278;
    *(v278 + 2) = v82 + 1;
    v84 = &v83[16 * v82];
    *(v84 + 4) = 0xD000000000000028;
    *(v84 + 5) = 0x80000001DACE12A0;
    *v280 = v83;
    swift_endAccess();
  }

  LOBYTE(v303) = 13;
  sub_1DACB9F84();
  v262 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v86 = *(v278 + 2);
    v85 = *(v278 + 3);
    if (v86 >= v85 >> 1)
    {
      v278 = sub_1DAA9A3B0((v85 > 1), v86 + 1, 1, v278);
    }

    v87 = v278;
    *(v278 + 2) = v86 + 1;
    v88 = &v87[16 * v86];
    *(v88 + 4) = 0xD00000000000002ALL;
    *(v88 + 5) = 0x80000001DACE12D0;
    *v280 = v87;
    swift_endAccess();
  }

  LOBYTE(v303) = 14;
  sub_1DACB9F84();
  v261 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v90 = *(v278 + 2);
    v89 = *(v278 + 3);
    if (v90 >= v89 >> 1)
    {
      v278 = sub_1DAA9A3B0((v89 > 1), v90 + 1, 1, v278);
    }

    v91 = v278;
    *(v278 + 2) = v90 + 1;
    v92 = &v91[16 * v90];
    *(v92 + 4) = 0xD00000000000001ALL;
    *(v92 + 5) = 0x80000001DACE1300;
    *v280 = v91;
    swift_endAccess();
  }

  LOBYTE(v303) = 15;
  sub_1DACB9F84();
  v260 = *&v314[0];
  LODWORD(v259) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v94 = *(v278 + 2);
    v93 = *(v278 + 3);
    if (v94 >= v93 >> 1)
    {
      v278 = sub_1DAA9A3B0((v93 > 1), v94 + 1, 1, v278);
    }

    v95 = v278;
    *(v278 + 2) = v94 + 1;
    v96 = &v95[16 * v94];
    *(v96 + 4) = 0xD000000000000020;
    *(v96 + 5) = 0x80000001DACE1320;
    *v280 = v95;
    swift_endAccess();
  }

  LOBYTE(v303) = 16;
  sub_1DACB9F84();
  v258 = *&v314[0];
  LODWORD(v257) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v98 = *(v278 + 2);
    v97 = *(v278 + 3);
    if (v98 >= v97 >> 1)
    {
      v278 = sub_1DAA9A3B0((v97 > 1), v98 + 1, 1, v278);
    }

    v99 = v278;
    *(v278 + 2) = v98 + 1;
    v100 = &v99[16 * v98];
    *(v100 + 4) = 0xD00000000000002CLL;
    *(v100 + 5) = 0x80000001DACE1350;
    *v280 = v99;
    swift_endAccess();
  }

  LOBYTE(v303) = 17;
  sub_1DACB9F84();
  v256 = *&v314[0];
  LODWORD(v255) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v102 = *(v278 + 2);
    v101 = *(v278 + 3);
    if (v102 >= v101 >> 1)
    {
      v278 = sub_1DAA9A3B0((v101 > 1), v102 + 1, 1, v278);
    }

    v103 = v278;
    *(v278 + 2) = v102 + 1;
    v104 = &v103[16 * v102];
    *(v104 + 4) = 0xD000000000000027;
    *(v104 + 5) = 0x80000001DACE1380;
    *v280 = v103;
    swift_endAccess();
  }

  LOBYTE(v303) = 18;
  sub_1DAA5260C(0, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96934(&qword_1EE123F80, sub_1DAB3D90C, MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v254 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v106 = *(v278 + 2);
    v105 = *(v278 + 3);
    if (v106 >= v105 >> 1)
    {
      v278 = sub_1DAA9A3B0((v105 > 1), v106 + 1, 1, v278);
    }

    v107 = v278;
    *(v278 + 2) = v106 + 1;
    v108 = &v107[16 * v106];
    strcpy(v108 + 32, "paywallConfigs");
    v108[47] = -18;
    *v280 = v107;
    swift_endAccess();
  }

  LOBYTE(v303) = 19;
  sub_1DAA5260C(0, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
  v110 = v109;
  v252 = sub_1DAB3D960();
  v253 = v110;
  sub_1DACB9F84();
  v251 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v112 = *(v278 + 2);
    v111 = *(v278 + 3);
    if (v112 >= v111 >> 1)
    {
      v278 = sub_1DAA9A3B0((v111 > 1), v112 + 1, 1, v278);
    }

    v113 = v278;
    *(v278 + 2) = v112 + 1;
    v114 = &v113[16 * v112];
    *(v114 + 4) = 0xD000000000000019;
    *(v114 + 5) = 0x80000001DACE13C0;
    *v280 = v113;
    swift_endAccess();
  }

  LOBYTE(v303) = 20;
  sub_1DACB9F84();
  v250 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v116 = *(v278 + 2);
    v115 = *(v278 + 3);
    if (v116 >= v115 >> 1)
    {
      v278 = sub_1DAA9A3B0((v115 > 1), v116 + 1, 1, v278);
    }

    v117 = v278;
    *(v278 + 2) = v116 + 1;
    v118 = &v117[16 * v116];
    *(v118 + 4) = 0xD00000000000001BLL;
    *(v118 + 5) = 0x80000001DACE13E0;
    *v280 = v117;
    swift_endAccess();
  }

  LOBYTE(v303) = 21;
  sub_1DACB9F84();
  v249 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v120 = *(v278 + 2);
    v119 = *(v278 + 3);
    if (v120 >= v119 >> 1)
    {
      v278 = sub_1DAA9A3B0((v119 > 1), v120 + 1, 1, v278);
    }

    v121 = v278;
    *(v278 + 2) = v120 + 1;
    v122 = &v121[16 * v120];
    *(v122 + 4) = 0xD000000000000027;
    *(v122 + 5) = 0x80000001DACE1400;
    *v280 = v121;
    swift_endAccess();
  }

  LOBYTE(v303) = 22;
  sub_1DACB9F84();
  v253 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v124 = *(v278 + 2);
    v123 = *(v278 + 3);
    if (v124 >= v123 >> 1)
    {
      v278 = sub_1DAA9A3B0((v123 > 1), v124 + 1, 1, v278);
    }

    v125 = v278;
    *(v278 + 2) = v124 + 1;
    v126 = &v125[16 * v124];
    *(v126 + 4) = 0xD00000000000002ELL;
    *(v126 + 5) = 0x80000001DACE1430;
    *v280 = v125;
    swift_endAccess();
  }

  v327[0] = 23;
  sub_1DAB3D9FC();
  sub_1DACB9F84();
  v314[8] = v324;
  v314[9] = v325;
  v315 = v326;
  v314[4] = v320;
  v314[5] = v321;
  v314[7] = v323;
  v314[6] = v322;
  v314[0] = v316;
  v314[1] = v317;
  v314[3] = v319;
  v314[2] = v318;
  if (sub_1DAA525E8(v314) == 1)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v128 = *(v278 + 2);
    v127 = *(v278 + 3);
    if (v128 >= v127 >> 1)
    {
      v278 = sub_1DAA9A3B0((v127 > 1), v128 + 1, 1, v278);
    }

    v129 = v278;
    *(v278 + 2) = v128 + 1;
    v130 = &v129[16 * v128];
    *(v130 + 4) = 0xD000000000000015;
    *(v130 + 5) = 0x80000001DACE1460;
    *v280 = v129;
    swift_endAccess();
  }

  v311 = v324;
  v312 = v325;
  v313 = v326;
  v307 = v320;
  v308 = v321;
  v309 = v322;
  v310 = v323;
  v303 = v316;
  v304 = v317;
  v305 = v318;
  v306 = v319;
  v298 = 24;
  sub_1DACB9F84();
  v248 = v299;
  LODWORD(v252) = v300;
  if (v300)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v132 = *(v278 + 2);
    v131 = *(v278 + 3);
    if (v132 >= v131 >> 1)
    {
      v278 = sub_1DAA9A3B0((v131 > 1), v132 + 1, 1, v278);
    }

    v133 = v278;
    *(v278 + 2) = v132 + 1;
    v134 = &v133[16 * v132];
    *(v134 + 4) = 0xD00000000000001DLL;
    *(v134 + 5) = 0x80000001DACE1480;
    *v280 = v133;
    swift_endAccess();
  }

  v298 = 25;
  sub_1DACB9F84();
  v246 = v299;
  v247 = v300;
  if (v300)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v136 = *(v278 + 2);
    v135 = *(v278 + 3);
    if (v136 >= v135 >> 1)
    {
      v278 = sub_1DAA9A3B0((v135 > 1), v136 + 1, 1, v278);
    }

    v137 = v278;
    *(v278 + 2) = v136 + 1;
    v138 = &v137[16 * v136];
    *(v138 + 4) = 0xD000000000000024;
    *(v138 + 5) = 0x80000001DACE14A0;
    *v280 = v137;
    swift_endAccess();
  }

  LOBYTE(v299) = 26;
  sub_1DACB9F84();
  v278 = *(&v286 + 1);
  v245 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(26, v268);
  }

  LOBYTE(v299) = 27;
  sub_1DACB9F84();
  v244 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(27, v268);
  }

  LOBYTE(v299) = 28;
  sub_1DACB9F84();
  v243 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(28, v268);
  }

  v298 = 29;
  sub_1DACB9F84();
  v242 = v299;
  v241 = v300;
  if (v300)
  {
    v139 = v280;
    swift_beginAccess();
    v140 = *v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_1DAA9A3B0(0, *(v140 + 2) + 1, 1, v140);
    }

    v142 = *(v140 + 2);
    v141 = *(v140 + 3);
    v240 = v142 + 1;
    if (v142 >= v141 >> 1)
    {
      v140 = sub_1DAA9A3B0((v141 > 1), v240, 1, v140);
    }

    *(v140 + 2) = v240;
    v143 = &v140[16 * v142];
    *(v143 + 4) = 0xD000000000000025;
    *(v143 + 5) = 0x80000001DACE1530;
    *v280 = v140;
    swift_endAccess();
  }

  v298 = 30;
  sub_1DACB9F84();
  v240 = v299;
  v239 = v300;
  if (v300)
  {
    v144 = v280;
    swift_beginAccess();
    v145 = *v144;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_1DAA9A3B0(0, *(v145 + 2) + 1, 1, v145);
    }

    v147 = *(v145 + 2);
    v146 = *(v145 + 3);
    v238 = v147 + 1;
    if (v147 >= v146 >> 1)
    {
      v145 = sub_1DAA9A3B0((v146 > 1), v238, 1, v145);
    }

    *(v145 + 2) = v238;
    v148 = &v145[16 * v147];
    *(v148 + 4) = 0xD000000000000021;
    *(v148 + 5) = 0x80000001DACE1560;
    *v280 = v145;
    swift_endAccess();
  }

  v298 = 31;
  sub_1DACB9F84();
  v238 = v299;
  v237 = v300;
  if (v300)
  {
    v149 = v280;
    swift_beginAccess();
    v150 = *v149;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_1DAA9A3B0(0, *(v150 + 2) + 1, 1, v150);
    }

    v152 = *(v150 + 2);
    v151 = *(v150 + 3);
    v236 = v152 + 1;
    if (v152 >= v151 >> 1)
    {
      v150 = sub_1DAA9A3B0((v151 > 1), v236, 1, v150);
    }

    *(v150 + 2) = v236;
    v153 = &v150[16 * v152];
    *(v153 + 4) = 0xD00000000000002FLL;
    *(v153 + 5) = 0x80000001DACE1590;
    *v280 = v150;
    swift_endAccess();
  }

  LOBYTE(v299) = 32;
  sub_1DACB9F84();
  LODWORD(v236) = v298;
  if (v298 == 2)
  {
    v154 = v280;
    swift_beginAccess();
    v155 = *v154;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_1DAA9A3B0(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    v235 = v157 + 1;
    if (v157 >= v156 >> 1)
    {
      v155 = sub_1DAA9A3B0((v156 > 1), v235, 1, v155);
    }

    *(v155 + 2) = v235;
    v158 = &v155[16 * v157];
    *(v158 + 4) = 0xD000000000000026;
    *(v158 + 5) = 0x80000001DACE15C0;
    *v280 = v155;
    swift_endAccess();
  }

  LOBYTE(v299) = 33;
  sub_1DACB9F84();
  LODWORD(v235) = v298;
  if (v298 == 2)
  {
    v159 = v280;
    swift_beginAccess();
    v160 = *v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_1DAA9A3B0(0, *(v160 + 2) + 1, 1, v160);
    }

    v162 = *(v160 + 2);
    v161 = *(v160 + 3);
    v234 = v162 + 1;
    if (v162 >= v161 >> 1)
    {
      v160 = sub_1DAA9A3B0((v161 > 1), v234, 1, v160);
    }

    *(v160 + 2) = v234;
    v163 = &v160[16 * v162];
    *(v163 + 4) = 0xD00000000000002DLL;
    *(v163 + 5) = 0x80000001DACE15F0;
    *v280 = v160;
    swift_endAccess();
  }

  v298 = 34;
  sub_1DACB9F84();
  v233 = v299;
  v232 = v300;
  if (v300)
  {
    v164 = v280;
    swift_beginAccess();
    v165 = *v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = sub_1DAA9A3B0(0, *(v165 + 2) + 1, 1, v165);
    }

    v167 = *(v165 + 2);
    v166 = *(v165 + 3);
    v234 = v167 + 1;
    if (v167 >= v166 >> 1)
    {
      v165 = sub_1DAA9A3B0((v166 > 1), v234, 1, v165);
    }

    *(v165 + 2) = v234;
    v168 = &v165[16 * v167];
    *(v168 + 4) = 0xD00000000000001ALL;
    *(v168 + 5) = 0x80000001DACE1620;
    *v280 = v165;
    swift_endAccess();
  }

  LOBYTE(v299) = 35;
  sub_1DAA4BB3C(0, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96BA0(&qword_1EE123F58, &qword_1EE124D60, &unk_1DACDCDE0, MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v234 = 0;
  v169 = v286;
  if (!v286)
  {
    sub_1DAB3D7E0(35, v268);
  }

  v170 = v273 == 2;
  v171 = v270;
  if (v269)
  {
    v171 = 0;
  }

  v270 = v171;
  v172 = v328;
  if (v267)
  {
    v172 = 0;
  }

  v328 = v172;
  if (*(&v266 + 1))
  {
    if (!*(&v265 + 1))
    {
      goto LABEL_208;
    }
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v177 = qword_1EE1242C0;
    v176 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v266 = sub_1DAA4BBA0(v177, v176);
    *(&v266 + 1) = v178;

    if (!*(&v265 + 1))
    {
LABEL_208:
      if (qword_1EE1242B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v174 = qword_1EE1242C0;
      v173 = qword_1EE1242C8;
      sub_1DACB71E4();
      *&v265 = sub_1DAA4C06C(v174, v173);
      *(&v265 + 1) = v175;

      if (*(&v264 + 1))
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }
  }

  if (!*(&v264 + 1))
  {
LABEL_216:
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v180 = qword_1EE1242C0;
    v179 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v264 = sub_1DAA4C248(v180, v179);
    *(&v264 + 1) = v181;
  }

LABEL_219:
  v182 = v170 | v273;
  if (!*(&v263 + 1))
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v184 = qword_1EE1242C0;
    v183 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v263 = sub_1DAA4C424(v184, v183);
    *(&v263 + 1) = v185;
  }

  v274 &= 1u;
  v273 = v182 & 1;
  v272 &= 1u;
  v271 &= 1u;
  v186 = v58 & 1;
  if (!*(&v262 + 1))
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v188 = qword_1EE1242C0;
    v187 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v262 = sub_1DAA4C600(v188, v187);
    *(&v262 + 1) = v189;
  }

  if (v259)
  {
    v190 = 604800;
  }

  else
  {
    v190 = v260;
  }

  v191 = 172800;
  if (!v257)
  {
    v191 = v258;
  }

  v230 = v191;
  v231 = v190;
  v294 = v311;
  v295 = v312;
  if (v255)
  {
    v192 = 0;
  }

  else
  {
    v192 = v256;
  }

  v296 = v313;
  v290 = v307;
  v291 = v308;
  v292 = v309;
  v293 = v310;
  v193 = v244;
  if (!*(&v244 + 1))
  {
    v193 = 0;
  }

  v269 = v193;
  v194 = 0xE000000000000000;
  if (*(&v244 + 1))
  {
    v194 = *(&v244 + 1);
  }

  v267 = v194;
  v286 = v303;
  v287 = v304;
  if (v241)
  {
    v195 = 0;
  }

  else
  {
    v195 = v242;
  }

  v196 = v240;
  if (v239)
  {
    v196 = 0;
  }

  v259 = v196;
  v260 = v195;
  v197 = v238;
  if (v237)
  {
    v197 = 0;
  }

  v257 = v197;
  LODWORD(v258) = v236 & 1;
  LODWORD(v256) = v235 & 1;
  v288 = v305;
  v289 = v306;
  v198 = 25;
  v302 = v252;
  if (!v232)
  {
    v198 = v233;
  }

  v255 = v198;
  v199 = MEMORY[0x1E69E7CC0];
  if (v169)
  {
    v199 = v169;
  }

  *(&v244 + 1) = v199;
  v301 = v247;
  v200 = v280;
  swift_beginAccess();
  v201 = *v200;
  if (*(v201 + 2))
  {
    sub_1DAA4BB3C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_1DACC1D20;
    *(v202 + 56) = v276;
    *(v202 + 64) = sub_1DAAF691C();
    *(v202 + 32) = v201;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v203 = sub_1DACB9AD4();
    v204 = sub_1DACB9914();
    sub_1DACB8C64("loaded paid bundle configuration with fallback values for keys: %@", 66, 2, &dword_1DAA3F000, v203, v204, v202);
  }

  else
  {
    sub_1DAA41DCC();
    v203 = sub_1DACB9AD4();
    v205 = sub_1DACB9914();
    sub_1DACB8C64("loaded paid bundle configuration with no need for fallback values", 65, 2, &dword_1DAA3F000, v203, v205, MEMORY[0x1E69E7CC0]);
  }

  (*(v275 + 8))(v279, v64);

  v206 = v281;
  *v281 = v14;
  v206[1] = v20;
  *(v206 + 16) = v274;
  *(v206 + 17) = v273;
  *(v206 + 18) = v272;
  *(v206 + 19) = v271;
  v206[3] = v270;
  *(v206 + 32) = v186;
  v207 = v266;
  v206[5] = v328;
  *(v206 + 3) = v207;
  v208 = *(&v265 + 1);
  v206[8] = v265;
  v206[9] = v208;
  v209 = *(&v264 + 1);
  v206[10] = v264;
  v206[11] = v209;
  v210 = *(&v263 + 1);
  v206[12] = v263;
  v206[13] = v210;
  v211 = v262;
  *(v206 + 33) = v297[0];
  *(v206 + 9) = *(v297 + 3);
  v212 = *(&v262 + 1);
  v206[14] = v211;
  v206[15] = v212;
  v213 = *(&v261 + 1);
  v206[16] = v261;
  v206[17] = v213;
  v214 = v230;
  v206[18] = v231;
  v206[19] = v214;
  v215 = v254;
  v206[20] = v192;
  v206[21] = v215;
  v216 = v250;
  v206[22] = v251;
  v206[23] = v216;
  v217 = v249;
  v206[24] = v253;
  v206[25] = v217;
  v218 = v295;
  *(v206 + 21) = v294;
  *(v206 + 22) = v218;
  v219 = v296;
  v220 = v291;
  *(v206 + 17) = v290;
  *(v206 + 18) = v220;
  v221 = v293;
  *(v206 + 19) = v292;
  *(v206 + 20) = v221;
  v222 = v287;
  *(v206 + 13) = v286;
  *(v206 + 14) = v222;
  v223 = v289;
  *(v206 + 15) = v288;
  *(v206 + 16) = v223;
  v224 = v248;
  v206[46] = v219;
  v206[47] = v224;
  *(v206 + 384) = v252;
  *(v206 + 385) = *v285;
  *(v206 + 97) = *&v285[3];
  v206[49] = v246;
  *(v206 + 400) = v247;
  *(v206 + 401) = *v284;
  *(v206 + 101) = *&v284[3];
  v225 = v278;
  v206[51] = v245;
  v206[52] = v225;
  v226 = v267;
  v206[53] = v269;
  v206[54] = v226;
  v227 = *(&v243 + 1);
  v206[55] = v243;
  v206[56] = v227;
  v228 = v259;
  v206[57] = v260;
  v206[58] = v228;
  v206[59] = v257;
  *(v206 + 480) = v258;
  *(v206 + 481) = v256;
  *(v206 + 482) = v282;
  *(v206 + 243) = v283;
  v229 = *(&v244 + 1);
  v206[61] = v255;
  v206[62] = v229;
  *(v206 + 504) = 1;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_1DAB3D4E4(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  v2 = *(a1 + 320);
  v3 = *(a1 + 352);
  v46 = *(a1 + 336);
  v47 = v3;
  v4 = *(a1 + 256);
  v5 = *(a1 + 288);
  v42 = *(a1 + 272);
  v43 = v5;
  v6 = *(a1 + 288);
  v7 = *(a1 + 320);
  v44 = *(a1 + 304);
  v45 = v7;
  v8 = *(a1 + 224);
  v39[0] = *(a1 + 208);
  v39[1] = v8;
  v9 = *(a1 + 256);
  v11 = *(a1 + 208);
  v10 = *(a1 + 224);
  v40 = *(a1 + 240);
  v41 = v9;
  v12 = *(a1 + 352);
  v36 = v46;
  v37 = v12;
  v32 = v42;
  v33 = v6;
  v34 = v44;
  v35 = v2;
  v28 = v11;
  v29 = v10;
  v48 = *(a1 + 368);
  v38 = *(a1 + 368);
  v30 = v40;
  v31 = v4;
  sub_1DAA5265C(v39, v26);
  sub_1DAA5260C(0, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
  sub_1DAB3DD38();
  v13 = sub_1DACB7584();
  v15 = v14;
  v26[8] = v36;
  v26[9] = v37;
  v27 = v38;
  v26[4] = v32;
  v26[5] = v33;
  v26[6] = v34;
  v26[7] = v35;
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v26[3] = v31;
  sub_1DAA52740(v26);

  v16 = objc_opt_self();
  v17 = sub_1DACB7B44();
  v25[0] = 0;
  v18 = [v16 JSONObjectWithData:v17 options:4 error:v25];

  if (v18)
  {
    v19 = v25[0];
    sub_1DACB9B74();
    swift_unknownObjectRelease();
    sub_1DAA61100();
    if (swift_dynamicCast())
    {
      sub_1DAA563C0(v13, v15);
      return v24;
    }
  }

  else
  {
    v21 = v25[0];
    v22 = sub_1DACB78C4();

    swift_willThrow();
  }

  v23 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
  sub_1DAA563C0(v13, v15);
  return v23;
}

uint64_t sub_1DAB3D7E0(char a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DAA9A3B0(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DAA9A3B0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = sub_1DAA964B0(a1);
  *(v4 + 2) = v7 + 1;
  v9 = &v4[16 * v7];
  *(v9 + 4) = v8;
  *(v9 + 5) = v10;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

unint64_t sub_1DAB3D8B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACBA1B4();

  if (v2 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAB3D90C()
{
  result = qword_1EE124FD8;
  if (!qword_1EE124FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FD8);
  }

  return result;
}

unint64_t sub_1DAB3D960()
{
  result = qword_1EE123F10;
  if (!qword_1EE123F10)
  {
    sub_1DAA5260C(255, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1DAAF8A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F10);
  }

  return result;
}

unint64_t sub_1DAB3D9FC()
{
  result = qword_1EE124E88;
  if (!qword_1EE124E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore39FlexiblePaywallResourceByLocationConfigVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DAB3DA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB3DAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 505) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAB3DBAC()
{
  result = qword_1ECBE7A98;
  if (!qword_1ECBE7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7A98);
  }

  return result;
}

uint64_t sub_1DAB3DC00(uint64_t a1)
{
  sub_1DAB3DC5C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB3DC5C(uint64_t a1)
{
  if (!qword_1ECBE7AA0)
  {
    sub_1DAA5260C(255, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7AA0);
    }
  }
}

unint64_t sub_1DAB3DD38()
{
  result = qword_1ECBE7AA8;
  if (!qword_1ECBE7AA8)
  {
    sub_1DAA5260C(255, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
    sub_1DAA96B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7AA8);
  }

  return result;
}

StocksCore::NewsProvider_optional __swiftcall NewsProvider.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NewsProvider.rawValue.getter()
{
  v1 = 0x656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6F6F686179;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72467265666E69;
  }
}

uint64_t sub_1DAB3DE90()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3DF38(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB3DFCC(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E07C(uint64_t a1)
{
  v2 = sub_1DAA5B994();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3E0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA5B994();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t NewsEnvironment.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7270;
  v3 = 0x316F6D6564;
  if (v1 != 6)
  {
    v3 = 0x326F6D6564;
  }

  v4 = 0x6C65766564;
  if (v1 != 4)
  {
    v4 = 0x786F62646E6173;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 24945;
  if (v1 != 2)
  {
    v5 = 1953719668;
  }

  if (*v0)
  {
    v2 = 0x676E6967617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAB3E224@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAB3E280()
{
  v1 = 0x656764457377656ELL;
  if (*v0 != 1)
  {
    v1 = 0x74694B64756F6C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1DAB3E2DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656764457377656ELL;
  if (v2 != 1)
  {
    v3 = 0x74694B64756F6C63;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656764457377656ELL;
  if (*a2 != 1)
  {
    v6 = 0x74694B64756F6C63;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAB3E3E0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E484(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB3E514(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB3E5C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656764457377656ELL;
  if (v2 != 1)
  {
    v4 = 0x74694B64756F6C63;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1DAB3E620(uint64_t a1)
{
  v2 = sub_1DAB44288();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3E674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAB44288();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3E6D0(uint64_t a1)
{
  v2 = sub_1DAB44288();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1DAB3E724@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAB3E780()
{
  v1 = 0x6465776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x776F6C6C61736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69666E6F43707061;
  }
}

uint64_t sub_1DAB3E7E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v4 = 0x776F6C6C61736964;
    v3 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69666E6F43707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6465776F6C6C61;
  if (*a2 != 1)
  {
    v8 = 0x776F6C6C61736964;
    v7 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69666E6F43707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB3E8F0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E99C(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB3EA34(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB3EAE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE700000000000000;
  v5 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v5 = 0x776F6C6C61736964;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69666E6F43707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAB3EB50(uint64_t a1)
{
  v2 = sub_1DAB44234();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3EBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAB44234();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3EC00(uint64_t a1)
{
  v2 = sub_1DAB44234();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

StocksCore::StocksDataServiceEnablement_optional __swiftcall StocksDataServiceEnablement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StocksDataServiceEnablement.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1DAB3ED0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64656C62616E65;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB3EE0C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3EEB0(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB3EF40(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3EFEC(uint64_t a1)
{
  v2 = sub_1DAA6D4B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3F040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA6D4B0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3F09C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200B0 = result;
  return result;
}

uint64_t sub_1DAB3F28C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE120088 = result;
  return result;
}

uint64_t sub_1DAB3F47C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D620 = result;
  return result;
}

uint64_t sub_1DAB3F66C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D608 = result;
  return result;
}

uint64_t sub_1DAB3F85C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60950(0, &unk_1ECBE7AF0, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  v5[3] = 3;
  v5[2] = 1;
  v5[1] = 5;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  result = sub_1DACB8094();
  qword_1ECBE7AB0 = result;
  return result;
}

uint64_t sub_1DAB3F9CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 1;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AB8 = result;
  return result;
}

uint64_t sub_1DAB3FBE4()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D638 = result;
  return result;
}

uint64_t sub_1DAB3FDD8()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D5F0 = result;
  return result;
}

uint64_t sub_1DAB40038()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200E0 = result;
  return result;
}

uint64_t sub_1DAB4024C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6A0 = result;
  return result;
}

uint64_t sub_1DAB4043C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6B8 = result;
  return result;
}

uint64_t sub_1DAB4062C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA4A8CC(0, &qword_1EE124130, sub_1DAB44384, &type metadata for AppConfigurationSource);
  v9[15] = 0;
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1DAA4A9E8(0, &qword_1EE123B60, &qword_1EE124140, &type metadata for AppConfigurationSource);
  sub_1DAA4AA40(0, &qword_1EE124140, &type metadata for AppConfigurationSource);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v9[14] = 0;
  sub_1DACB8044();
  v9[13] = 1;
  sub_1DACB8044();
  v9[12] = 2;
  sub_1DACB8044();
  sub_1DAB443D8();
  result = sub_1DACB8064();
  qword_1EE124190 = result;
  return result;
}

uint64_t sub_1DAB409CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124218 = result;
  return result;
}

uint64_t sub_1DAB40C04()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241F0 = result;
  return result;
}

uint64_t sub_1DAB40E3C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7FD4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v1 + 16))(v3, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v0);
  result = sub_1DACB7FB4();
  qword_1EE1241A8 = result;
  return result;
}

uint64_t sub_1DAB4104C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124200 = result;
  return result;
}

uint64_t sub_1DAB41288()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241D8 = result;
  return result;
}

uint64_t sub_1DAB414C4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241C0 = result;
  return result;
}

uint64_t sub_1DAB41700()
{
  v11 = sub_1DACB8024();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB8034();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E63B0];
  sub_1DAA60950(0, &qword_1EE11D4D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  v9[0] = ".kvs_cleanup_permission";
  v9[1] = v7;
  v13 = 0x404E000000000000;
  sub_1DAA4A9E8(0, &qword_1EE11CEC8, &qword_1EE11D4E8, v6);
  sub_1DAA4AA40(0, &qword_1EE11D4E8, v6);
  *(swift_allocObject() + 16) = xmmword_1DACC1D30;
  v12 = 0x3FF0000000000000;
  sub_1DACB8044();
  v12 = 0x4014000000000000;
  sub_1DACB8044();
  v12 = 0x4024000000000000;
  sub_1DACB8044();
  v12 = 0x404E000000000000;
  sub_1DACB8044();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D6EA0], v10);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E88], v11);
  result = sub_1DACB8064();
  qword_1EE11D660 = result;
  return result;
}

uint64_t sub_1DAB41A80()
{
  v10 = sub_1DACB8024();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8034();
  v3 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A8CC(0, &qword_1EE11D4E0, sub_1DAB442DC, &type metadata for KVSCleanupPermission);
  v8[1] = "ce.stocks_data_service_enabled";
  v8[2] = v6;
  v14 = 0;
  sub_1DAA4A9E8(0, &qword_1EE11CED0, &unk_1EE11D4F0, &type metadata for KVSCleanupPermission);
  sub_1DAA4AA40(0, &unk_1EE11D4F0, &type metadata for KVSCleanupPermission);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v13 = 0;
  sub_1DACB8044();
  v12 = 1;
  sub_1DACB8044();
  v11 = 2;
  sub_1DACB8044();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D6EA0], v9);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E88], v10);
  sub_1DAB44330();
  result = sub_1DACB8064();
  qword_1EE11D508 = result;
  return result;
}

uint64_t sub_1DAB41E10()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124178 = result;
  return result;
}

uint64_t sub_1DAB42048()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D650 = result;
  return result;
}

uint64_t sub_1DAB422A4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D530 = result;
  return result;
}

uint64_t sub_1DAB42498()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AC0 = result;
  return result;
}

uint64_t sub_1DAB42668()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AC8 = result;
  return result;
}

uint64_t sub_1DAB42838()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AD0 = result;
  return result;
}

uint64_t sub_1DAB42A08()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5A8 = result;
  return result;
}

uint64_t sub_1DAB42BFC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5B8 = result;
  return result;
}

uint64_t sub_1DAB42DCC()
{
  v14 = sub_1DACB8024();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB8034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1DACB7FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6D00], v7);
  *v6 = sub_1DACB9324();
  v6[1] = v11;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E98], v3);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E90], v14);
  result = sub_1DACB8084();
  qword_1EE11D598 = result;
  return result;
}

uint64_t sub_1DAB4305C()
{
  v14 = sub_1DACB8024();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB8034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1DACB7FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6D00], v7);
  *v6 = sub_1DACB9324();
  v6[1] = v11;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E98], v3);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E90], v14);
  result = sub_1DACB8084();
  qword_1EE11D560 = result;
  return result;
}

uint64_t sub_1DAB432EC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  sub_1DACB9324();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D588 = result;
  return result;
}

uint64_t sub_1DAB434CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D570 = result;
  return result;
}

uint64_t sub_1DAB4369C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D08], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D548 = result;
  return result;
}

uint64_t sub_1DAB43890()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 0xD00000000000001CLL;
  v6[1] = 0x80000001DACE7990;
  (*(v7 + 104))(v6, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AD8 = result;
  return result;
}

uint64_t sub_1DAB43AA0()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 0xD00000000000001CLL;
  v6[1] = 0x80000001DACE7990;
  (*(v7 + 104))(v6, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AE0 = result;
  return result;
}

uint64_t sub_1DAB43CB0()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0xD00000000000001CLL;
  v6[1] = 0x80000001DACE7990;
  (*(v7 + 104))(v6, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[1] = 0x4024000000000000;
  sub_1DAA60950(0, &qword_1EE11D4D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AE8 = result;
  return result;
}

uint64_t sub_1DAB43EBC()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E88]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200D0 = result;
  return result;
}

unint64_t sub_1DAB440AC()
{
  result = qword_1EE1248D8;
  if (!qword_1EE1248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248D8);
  }

  return result;
}

unint64_t sub_1DAB44100()
{
  result = qword_1EE11E618;
  if (!qword_1EE11E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E618);
  }

  return result;
}

unint64_t sub_1DAB44234()
{
  result = qword_1EE11E610;
  if (!qword_1EE11E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E610);
  }

  return result;
}

unint64_t sub_1DAB44288()
{
  result = qword_1EE1248D0;
  if (!qword_1EE1248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248D0);
  }

  return result;
}

unint64_t sub_1DAB442DC()
{
  result = qword_1EE11E620;
  if (!qword_1EE11E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E620);
  }

  return result;
}

unint64_t sub_1DAB44330()
{
  result = qword_1EE11E628;
  if (!qword_1EE11E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E628);
  }

  return result;
}

unint64_t sub_1DAB44384()
{
  result = qword_1EE1248E0;
  if (!qword_1EE1248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248E0);
  }

  return result;
}

unint64_t sub_1DAB443D8()
{
  result = qword_1EE1248E8;
  if (!qword_1EE1248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248E8);
  }

  return result;
}

uint64_t sub_1DAB44448(void *a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DACB82E4();
  v5 = a1[2];
  sub_1DAB44A40(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = a1[6];
  v8 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 164);
  v10 = *(v4 + 165);
  sub_1DACB71E4();
  sub_1DAA640AC(v4);
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69B55A0]);
  v12 = sub_1DACB9634();

  v13 = [v11 initWithContext:v5 resourceIDs:v12 downloadAssets:1];

  v14 = sub_1DACB8294();
  v19 = v13;
  v20 = v14;
  sub_1DAB44ACC(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB8B44();
  v15 = sub_1DACB89D4();
  sub_1DAB449A0();
  v16 = sub_1DACB8A54();

  return v16;
}

uint64_t sub_1DAB446A0(id *a1)
{
  v2 = v1;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = [*a1 fileURL];
  if (v11)
  {
    v12 = v11;
    sub_1DACB7A44();

    (*(v5 + 32))(v10, v8, v4);
    v13 = sub_1DACB7AD4();
    if (!v1)
    {
      v16[0] = v13;
      v16[1] = v14;
      sub_1DAB44A40(0, &qword_1EE11D448, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v2 = sub_1DACB8AE4();
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_1DAB449EC();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1DAB4488C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB448F0()
{
  sub_1DAB449A0();
  sub_1DACB8BB4();
  v0 = sub_1DACB89D4();
  v1 = sub_1DACB8A54();

  return v1;
}

unint64_t sub_1DAB449A0()
{
  result = qword_1EE11D0D8;
  if (!qword_1EE11D0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11D0D8);
  }

  return result;
}

unint64_t sub_1DAB449EC()
{
  result = qword_1ECBE7B00;
  if (!qword_1ECBE7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B00);
  }

  return result;
}

void sub_1DAB44A40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAB44ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAB44B44()
{
  result = qword_1ECBE7B08;
  if (!qword_1ECBE7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B08);
  }

  return result;
}

uint64_t sub_1DAB44B98()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB44BC8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DAB44D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for RawAttributionSource(0);
  v11 = *(v10 + 20);
  v12 = sub_1DACB7AB4();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for RawAttributionSourceLogo(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_1DAA6EA70(a3, &a5[v11], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EA70(a4, &a5[v13], &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

uint64_t sub_1DAB44E8C()
{
  v1 = 0x4C5255656D6F68;
  if (*v0 != 1)
  {
    v1 = 1869049708;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DAB44ED8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB4C194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB44F00(uint64_t a1)
{
  v2 = sub_1DAB4B06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB44F3C(uint64_t a1)
{
  v2 = sub_1DAB4B06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB44F78(void *a1)
{
  sub_1DAB4B354(0, &qword_1EE11CF40, sub_1DAB4B06C, &type metadata for RawAttributionSource.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B06C();
  sub_1DACBA304();
  v12 = 0;
  sub_1DACBA094();
  if (!v1)
  {
    type metadata accessor for RawAttributionSource(0);
    v11 = 1;
    sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DACBA074();
    v10 = 2;
    type metadata accessor for RawAttributionSourceLogo(0);
    sub_1DAB4B0C0(&qword_1EE11DF00, type metadata accessor for RawAttributionSourceLogo, &unk_1DACC8610);
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB451D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v26 - v4;
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  sub_1DAB4B354(0, &qword_1ECBE7B10, sub_1DAB4B06C, &type metadata for RawAttributionSource.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RawAttributionSource(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 28);
  v16 = sub_1DACB7AB4();
  v17 = *(*(v16 - 8) + 56);
  v33 = v15;
  v17(v14 + v15, 1, 1, v16);
  v18 = *(v12 + 32);
  v19 = type metadata accessor for RawAttributionSourceLogo(0);
  v20 = *(*(v19 - 8) + 56);
  v32 = v18;
  v20(v14 + v18, 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B06C();
  v21 = v31;
  sub_1DACBA2F4();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1DAA92844(v14 + v33, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    return sub_1DAA92844(v14 + v32, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  }

  else
  {
    v22 = v29;
    v31 = a1;
    v36 = 0;
    *v14 = sub_1DACB9FA4();
    v14[1] = v23;
    v26 = v23;
    v35 = 1;
    sub_1DAB4B0C0(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DACB9F84();
    sub_1DAA6EA70(v7, v14 + v33, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v34 = 2;
    sub_1DAB4B0C0(&qword_1ECBE7B18, type metadata accessor for RawAttributionSourceLogo, &unk_1DACC85E8);
    v24 = v28;
    sub_1DACB9F84();
    (*(v22 + 8))(v10, v30);
    sub_1DAA6EA70(v24, v14 + v32, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    sub_1DAA91EDC(v14, v27, type metadata accessor for RawAttributionSource);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_1DAA7133C(v14, type metadata accessor for RawAttributionSource);
  }
}

uint64_t sub_1DAB4573C@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - v12;
  v13 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RawAttributionSourceLogo(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA91EDC(v1, v21, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1DAA6E94C(v21, a1, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  }

  v33 = v13;
  sub_1DAA6E94C(v21, v18, type metadata accessor for RawAttributionSourceLogo.Resolved);
  v22 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DAA91EDC(&v18[*(v22 + 28)], v15, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA70878(&v18[*(v16 + 20)], v8, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v8, 1, v22) == 1)
  {
    sub_1DAA92844(v8, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v24 = 1;
    v25 = v35;
  }

  else
  {
    v25 = v35;
    sub_1DAA91EDC(&v8[*(v22 + 28)], v35, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v24 = 0;
  }

  v27 = *(v36 + 56);
  v28 = v25;
  v29 = v33;
  v36 += 56;
  v27(v28, v24, 1, v33);
  sub_1DAA70878(&v18[*(v16 + 24)], v6, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v18, type metadata accessor for RawAttributionSourceLogo.Resolved);
  if (v23(v6, 1, v22) == 1)
  {
    sub_1DAA92844(v6, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v30 = 1;
    v31 = v34;
  }

  else
  {
    v31 = v34;
    sub_1DAA91EDC(&v6[*(v22 + 28)], v34, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v6, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v30 = 0;
  }

  v27(v31, v30, 1, v29);
  sub_1DAA6E94C(v15, a1, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v32 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DAA6EA04(v35, a1 + *(v32 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  return sub_1DAA6EA04(v31, a1 + *(v32 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB45D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1DACB7AB4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1DAB45E28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DAB45E90(uint64_t a1)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1DAB45F3C(double a1)
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

BOOL sub_1DAB45FB4(uint64_t a1, uint64_t a2)
{
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1DAB46004()
{
  if (*v0)
  {
    return 0x656E696C65736162;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DAB46044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAB46128(uint64_t a1)
{
  v2 = sub_1DAB4B108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB46164(uint64_t a1)
{
  v2 = sub_1DAB4B108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB461A0(void *a1)
{
  sub_1DAB4B354(0, &qword_1ECBE7B20, sub_1DAB4B108, &type metadata for RawAttributionSourceLogo.Unresolved.Variant.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B108();
  sub_1DACBA304();
  v11 = 0;
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DACBA0E4();
  if (!v1)
  {
    type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    v10 = 1;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB46388(uint64_t a1)
{
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v2 = *(v1 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v2);
}

uint64_t sub_1DAB46428()
{
  sub_1DACBA284();
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v1 = *(v0 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB464D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1DACB7AB4();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B30, sub_1DAB4B108, &type metadata for RawAttributionSourceLogo.Unresolved.Variant.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B108();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v27 = 0;
  sub_1DAB4B0C0(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v14 = v23;
  sub_1DACB9FE4();
  v15 = v19;
  (*(v13 + 32))(v19, v24, v14);
  v26 = 1;
  sub_1DACB9FC4();
  v17 = v16;
  (*(v12 + 8))(v8, v25);
  *(v15 + *(v9 + 20)) = v17;
  sub_1DAA91EDC(v15, v20, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAA7133C(v15, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB46898(uint64_t a1, uint64_t a2)
{
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v4);
}

uint64_t sub_1DAB46934(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v4);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB46A3C(uint64_t a1)
{
  v2 = sub_1DAB4B15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB46A78(uint64_t a1)
{
  v2 = sub_1DAB4B15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB46AB4(void *a1)
{
  sub_1DAB4B354(0, &qword_1EE11CF20, sub_1DAB4B15C, &type metadata for RawAttributionSourceLogo.Unresolved.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B15C();
  sub_1DACBA304();
  v12 = 0;
  type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  sub_1DAB4B0C0(&qword_1ECBE7B38, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, &unk_1DACC8330);
  sub_1DACBA0E4();
  if (!v1)
  {
    type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
    v11 = 1;
    sub_1DACBA074();
    v10 = 2;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB46CE0(uint64_t a1)
{
  v2 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v25 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - v5;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v12 = *(v1 + *(v2 + 20));
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v12);
  v13 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v14 = *(v13 + 20);
  v26 = v1;
  v15 = v25;
  sub_1DAA70878(v1 + v14, v11, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v2) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    v17 = v11;
    v18 = v23;
    sub_1DAA6E94C(v17, v23, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DACBA2A4();
    sub_1DACB91F4();
    v19 = *(v18 + *(v2 + 20));
    if (v19 == 0.0)
    {
      v19 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v19);
    sub_1DAA7133C(v18, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  }

  sub_1DAA70878(v26 + *(v13 + 24), v9, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v16(v9, 1, v2) == 1)
  {
    return sub_1DACBA2A4();
  }

  v21 = v24;
  sub_1DAA6E94C(v9, v24, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DACBA2A4();
  sub_1DACB91F4();
  v22 = *(v21 + *(v2 + 20));
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v22);
  return sub_1DAA7133C(v21, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB470A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v22 - v7;
  v31 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B40, sub_1DAB4B15C, &type metadata for RawAttributionSourceLogo.Unresolved.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B15C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v27;
  v16 = v28;
  v23 = v12;
  v24 = a1;
  v34 = 0;
  sub_1DAB4B0C0(&qword_1ECBE7B48, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, &unk_1DACC8308);
  v17 = v29;
  sub_1DACB9FE4();
  v29 = v14;
  sub_1DAA6E94C(v17, v14, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v33 = 1;
  sub_1DACB9F84();
  sub_1DAA6EA04(v16, &v29[*(v23 + 20)], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v32 = 2;
  v18 = v26;
  sub_1DACB9F84();
  v19 = v24;
  (*(v15 + 8))(v11, v30);
  v20 = v29;
  sub_1DAA6EA04(v18, &v29[*(v23 + 24)], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA91EDC(v20, v25, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1DAA7133C(v20, type metadata accessor for RawAttributionSourceLogo.Unresolved);
}

uint64_t sub_1DAB476EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>)
{
  sub_1DAA6E94C(a1, a8, a4);
  v14 = a5(0);
  sub_1DAA6EA04(a2, a8 + *(v14 + 20), a6, a7);
  return sub_1DAA6EA04(a3, a8 + *(v14 + 24), a6, a7);
}

uint64_t sub_1DAB4777C()
{
  v1 = *v0;
  sub_1DAB0B080(*v0, *(v0 + 8));
  return v1;
}

BOOL sub_1DAB4780C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  v5 = a1 + v4;
  v6 = a2 + v4;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(v5 + *(v7 + 20)) == *(v6 + *(v7 + 20));
}

uint64_t sub_1DAB47878(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v3 = *(v2 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v3);
}

uint64_t sub_1DAB47928()
{
  v1 = 1635017060;
  v2 = 0x656E696C65736162;
  if (*v0 != 2)
  {
    v2 = 0x766C6F7365726E75;
  }

  if (*v0)
  {
    v1 = 0x656C616373;
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

uint64_t sub_1DAB479A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB4C2AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB479D0(uint64_t a1)
{
  v2 = sub_1DAB4B1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB47A0C(uint64_t a1)
{
  v2 = sub_1DAB4B1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB47A48(void *a1)
{
  v3 = v1;
  sub_1DAB4B354(0, &qword_1ECBE7B50, sub_1DAB4B1B0, &type metadata for RawAttributionSourceLogo.Resolved.Variant.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B1B0();
  sub_1DACBA304();
  v10 = v3[1];
  v12 = *v3;
  v13 = v10;
  v14 = 0;
  sub_1DAB0B080(v12, v10);
  sub_1DAB0C0CC();
  sub_1DACBA0E4();
  if (v2)
  {
    sub_1DAA563C0(v12, v13);
  }

  else
  {
    sub_1DAA563C0(v12, v13);
    LOBYTE(v12) = 1;
    sub_1DACBA0B4();
    LOBYTE(v12) = 2;
    sub_1DACBA0B4();
    type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
    LOBYTE(v12) = 3;
    type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    sub_1DAB4B0C0(&qword_1ECBE7B38, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, &unk_1DACC8330);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAB47CB4()
{
  sub_1DACBA284();
  v1 = v0 + *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v2 = *(v1 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v2);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB47D74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B60, sub_1DAB4B1B0, &type metadata for RawAttributionSourceLogo.Resolved.Variant.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B1B0();
  v27 = v7;
  v11 = v28;
  sub_1DACBA2F4();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v12 = v23;
  v13 = a1;
  v28 = v4;
  v14 = v10;
  v15 = v25;
  v30 = 0;
  sub_1DAB0C014();
  v16 = v26;
  sub_1DACB9FE4();
  *v14 = v29;
  LOBYTE(v29) = 1;
  sub_1DACB9FC4();
  *(v14 + 16) = v17;
  LOBYTE(v29) = 2;
  sub_1DACB9FC4();
  *(v14 + 24) = v18;
  LOBYTE(v29) = 3;
  sub_1DAB4B0C0(&qword_1ECBE7B48, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, &unk_1DACC8308);
  v19 = v28;
  sub_1DACB9FE4();
  (*(v12 + 8))(v27, v16);
  sub_1DAA6E94C(v19, v14 + *(v22 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA91EDC(v14, v15, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1DAA7133C(v14, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
}

uint64_t sub_1DAB4818C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v4 = *(v3 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v4);
}

uint64_t sub_1DAB48234(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  v4 = v2 + *(a2 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v5 = *(v4 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v5);
  return sub_1DACBA2C4();
}

BOOL sub_1DAB482EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = a1 + v3;
  v5 = a2 + v3;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(v4 + *(v6 + 20)) == *(v5 + *(v6 + 20));
}

uint64_t sub_1DAB4834C(uint64_t a1)
{
  v2 = sub_1DAB4B204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB48388(uint64_t a1)
{
  v2 = sub_1DAB4B204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB483C4(void *a1)
{
  sub_1DAB4B354(0, &qword_1ECBE7B68, sub_1DAB4B204, &type metadata for RawAttributionSourceLogo.Resolved.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B204();
  sub_1DACBA304();
  v12 = 0;
  type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DAB4B0C0(&qword_1ECBE7B78, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, &unk_1DACC84A0);
  sub_1DACBA0E4();
  if (!v1)
  {
    type metadata accessor for RawAttributionSourceLogo.Resolved(0);
    v11 = 1;
    sub_1DACBA074();
    v10 = 2;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB485F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v33 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - v6;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = v1 + *(v3 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DACB91F4();
  v13 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v14 = *(v12 + *(v13 + 20));
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v14);
  v15 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v16 = *(v15 + 20);
  v35 = v2;
  v17 = v2 + v16;
  v18 = v33;
  sub_1DAA70878(v17, v11, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v19 = *(v18 + 48);
  v20 = v19(v11, 1, v3);
  v30 = v13;
  if (v20 == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    v21 = v11;
    v22 = v31;
    sub_1DAA6E94C(v21, v31, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DACBA2A4();
    v23 = v22 + *(v3 + 28);
    sub_1DACB91F4();
    v24 = *(v23 + *(v13 + 20));
    if (v24 == 0.0)
    {
      v24 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v24);
    sub_1DAA7133C(v22, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  }

  v25 = v34;
  sub_1DAA70878(v35 + *(v15 + 24), v34, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v19(v25, 1, v3) == 1)
  {
    return sub_1DACBA2A4();
  }

  v27 = v32;
  sub_1DAA6E94C(v25, v32, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACBA2A4();
  v28 = v27 + *(v3 + 28);
  sub_1DACB91F4();
  v29 = *(v28 + *(v30 + 20));
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v29);
  return sub_1DAA7133C(v27, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
}

uint64_t sub_1DAB489DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v22 - v7;
  v31 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B80, sub_1DAB4B204, &type metadata for RawAttributionSourceLogo.Resolved.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B204();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v27;
  v16 = v28;
  v23 = v12;
  v24 = a1;
  v34 = 0;
  sub_1DAB4B0C0(&qword_1ECBE7B88, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, &unk_1DACC8478);
  v17 = v29;
  sub_1DACB9FE4();
  v29 = v14;
  sub_1DAA6E94C(v17, v14, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v33 = 1;
  sub_1DACB9F84();
  sub_1DAA6EA04(v16, &v29[*(v23 + 20)], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v32 = 2;
  v18 = v26;
  sub_1DACB9F84();
  v19 = v24;
  (*(v15 + 8))(v11, v30);
  v20 = v29;
  sub_1DAA6EA04(v18, &v29[*(v23 + 24)], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA91EDC(v20, v25, type metadata accessor for RawAttributionSourceLogo.Resolved);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1DAA7133C(v20, type metadata accessor for RawAttributionSourceLogo.Resolved);
}

uint64_t sub_1DAB48F44()
{
  if (*v0)
  {
    return 0x6465766C6F736572;
  }

  else
  {
    return 0x766C6F7365726E75;
  }
}

uint64_t sub_1DAB48F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAB49068(uint64_t a1)
{
  v2 = sub_1DAB4B300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB490A4(uint64_t a1)
{
  v2 = sub_1DAB4B300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB490EC(uint64_t a1)
{
  v2 = sub_1DAB4B258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB49128(uint64_t a1)
{
  v2 = sub_1DAB4B258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB49164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB491E4(uint64_t a1)
{
  v2 = sub_1DAB4B2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB49220(uint64_t a1)
{
  v2 = sub_1DAB4B2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB4925C(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1DAB4B354(0, &qword_1EE11CF18, sub_1DAB4B258, &type metadata for RawAttributionSourceLogo.ResolvedCodingKeys, MEMORY[0x1E69E6F58]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v25 - v4;
  v29 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1EE11CF10, sub_1DAB4B2AC, &type metadata for RawAttributionSourceLogo.UnresolvedCodingKeys, v2);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - v7;
  v25 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawAttributionSourceLogo(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1EE11CF28, sub_1DAB4B300, &type metadata for RawAttributionSourceLogo.CodingKeys, v2);
  v14 = v13;
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B300();
  sub_1DACBA304();
  sub_1DAA91EDC(v34, v12, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v30;
    sub_1DAA6E94C(v12, v30, type metadata accessor for RawAttributionSourceLogo.Resolved);
    v37 = 1;
    sub_1DAB4B258();
    v18 = v31;
    sub_1DACBA014();
    sub_1DAB4B0C0(&qword_1ECBE7B90, type metadata accessor for RawAttributionSourceLogo.Resolved, &unk_1DACC8558);
    v19 = v33;
    sub_1DACBA0E4();
    (*(v32 + 8))(v18, v19);
    v20 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v21 = v17;
  }

  else
  {
    sub_1DAA6E94C(v12, v9, type metadata accessor for RawAttributionSourceLogo.Unresolved);
    v36 = 0;
    sub_1DAB4B2AC();
    v22 = v26;
    sub_1DACBA014();
    sub_1DAB4B0C0(&qword_1EE11DF38, type metadata accessor for RawAttributionSourceLogo.Unresolved, &unk_1DACC83E8);
    v23 = v28;
    sub_1DACBA0E4();
    (*(v27 + 8))(v22, v23);
    v20 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v21 = v9;
  }

  sub_1DAA7133C(v21, v20);
  return (*(v35 + 8))(v16, v14);
}

uint64_t sub_1DAB497D0(uint64_t a1)
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v56 - v4;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v56 - v8;
  v66 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  MEMORY[0x1EEE9AC00](v66);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v56 - v15;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v22 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RawAttributionSourceLogo(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA91EDC(v67, v27, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAA6E94C(v27, v10, type metadata accessor for RawAttributionSourceLogo.Resolved);
    MEMORY[0x1E1277D70](1);
    v28 = v64;
    v29 = &v10[*(v64 + 28)];
    v30 = sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DACB91F4();
    v31 = *&v29[*(v11 + 20)];
    if (v31 == 0.0)
    {
      v31 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v31);
    v32 = v66;
    v33 = v62;
    sub_1DAA70878(&v10[*(v66 + 5)], v62, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v34 = v11;
    v35 = *(v63 + 48);
    v36 = v35(v33, 1, v28);
    v67 = v30;
    v57 = v34;
    if (v36 == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v39 = v10;
      v40 = v60;
      sub_1DAA6E94C(v33, v60, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      sub_1DACBA2A4();
      v41 = v40 + *(v28 + 28);
      sub_1DACB91F4();
      v42 = *(v41 + *(v34 + 20));
      if (v42 == 0.0)
      {
        v42 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v42);
      v43 = v40;
      v10 = v39;
      v32 = v66;
      sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    }

    v44 = v65;
    sub_1DAA70878(&v10[*(v32 + 24)], v65, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    if (v35(v44, 1, v28) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v48 = v61;
      sub_1DAA6E94C(v44, v61, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      sub_1DACBA2A4();
      v49 = v48 + *(v28 + 28);
      sub_1DACB91F4();
      v50 = *(v49 + *(v57 + 20));
      if (v50 == 0.0)
      {
        v50 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v50);
      sub_1DAA7133C(v48, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    }

    v51 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v52 = v10;
  }

  else
  {
    v66 = v19;
    sub_1DAA6E94C(v27, v24, type metadata accessor for RawAttributionSourceLogo.Unresolved);
    MEMORY[0x1E1277D70](0);
    sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DACB91F4();
    v37 = *&v24[*(v11 + 20)];
    if (v37 == 0.0)
    {
      v37 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v37);
    sub_1DAA70878(&v24[*(v22 + 20)], v21, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v38 = *(v12 + 48);
    v67 = v12 + 48;
    if (v38(v21, 1, v11) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v45 = v58;
      sub_1DAA6E94C(v21, v58, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DACBA2A4();
      sub_1DACB91F4();
      v46 = *(v45 + *(v11 + 20));
      if (v46 == 0.0)
      {
        v46 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v46);
      sub_1DAA7133C(v45, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    v47 = v66;
    sub_1DAA70878(&v24[*(v22 + 24)], v66, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    if (v38(v47, 1, v11) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v53 = v59;
      sub_1DAA6E94C(v47, v59, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DACBA2A4();
      sub_1DACB91F4();
      v54 = *(v53 + *(v11 + 20));
      if (v54 == 0.0)
      {
        v54 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v54);
      sub_1DAA7133C(v53, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    v51 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v52 = v24;
  }

  return sub_1DAA7133C(v52, v51);
}

uint64_t sub_1DAB4A0E8(uint64_t (*a1)(void *))
{
  sub_1DACBA284();
  a1(v3);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB4A130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DAB4B354(0, &qword_1ECBE7B98, sub_1DAB4B258, &type metadata for RawAttributionSourceLogo.ResolvedCodingKeys, MEMORY[0x1E69E6F48]);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v43 - v5;
  sub_1DAB4B354(0, &qword_1ECBE7BA0, sub_1DAB4B2AC, &type metadata for RawAttributionSourceLogo.UnresolvedCodingKeys, v3);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v7;
  sub_1DAB4B354(0, &qword_1ECBE7BA8, sub_1DAB4B300, &type metadata for RawAttributionSourceLogo.CodingKeys, v3);
  v53 = v8;
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for RawAttributionSourceLogo(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B300();
  v20 = v56;
  sub_1DACBA2F4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v14;
  v44 = v17;
  v45 = v19;
  v46 = 0;
  v21 = v53;
  v22 = v54;
  v23 = v11;
  v56 = a1;
  v24 = v10;
  v25 = sub_1DACB9FF4();
  v26 = v25;
  if (*(v25 + 16) != 1)
  {
    v32 = sub_1DACB9D14();
    swift_allocError();
    v34 = v33;
    sub_1DAB4B3BC(0);
    *v34 = v23;
    sub_1DACB9F24();
    sub_1DACB9CF4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v55 + 8))(v10, v21);
    swift_unknownObjectRelease();
    a1 = v56;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if ((*(v25 + 32) & 1) == 0)
  {
    v57 = 0;
    sub_1DAB4B2AC();
    v35 = v46;
    sub_1DACB9F14();
    if (!v35)
    {
      v37 = v10;
      v46 = v26;
      type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
      sub_1DAB4B0C0(&qword_1ECBE7BC8, type metadata accessor for RawAttributionSourceLogo.Unresolved, &unk_1DACC83C0);
      v38 = v44;
      v39 = v49;
      sub_1DACB9FE4();
      v40 = v22;
      v41 = v55;
      (*(v48 + 8))(v40, v39);
      (*(v41 + 8))(v37, v21);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v29 = v45;
      v42 = v38;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v58 = 1;
  sub_1DAB4B258();
  v27 = v52;
  v28 = v46;
  sub_1DACB9F14();
  v29 = v45;
  if (v28)
  {
LABEL_8:
    (*(v55 + 8))(v24, v21);
    swift_unknownObjectRelease();
    a1 = v56;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v24;
  v46 = v26;
  type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DAB4B0C0(&qword_1ECBE7BC0, type metadata accessor for RawAttributionSourceLogo.Resolved, &unk_1DACC8530);
  v30 = v43;
  v31 = v51;
  sub_1DACB9FE4();
  (*(v50 + 8))(v27, v31);
  (*(v55 + 8))(v54, v21);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v42 = v30;
LABEL_11:
  sub_1DAA6E94C(v42, v29, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA6E94C(v29, v47, type metadata accessor for RawAttributionSourceLogo);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1DAB4A848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB4A8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1DACBA284();
  a3(v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB4A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1DACBA284();
  a4(v6);
  return sub_1DACBA2C4();
}

BOOL sub_1DAB4A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  sub_1DAA712D8(0, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = *(v4 + 28);
  v23 = a1 + v22;
  v57 = a2;
  v24 = a2 + v22;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v25 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  if (*(v23 + *(v25 + 20)) != *(v24 + *(v25 + 20)))
  {
    return 0;
  }

  v52 = v7;
  v53 = v25;
  v55 = v19;
  v54 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v26 = *(v54 + 20);
  v27 = *(v16 + 48);
  sub_1DAA70878(a1 + v26, v21, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA70878(v57 + v26, &v21[v27], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v29 = v58 + 48;
  v28 = *(v58 + 48);
  if (v28(v21, 1, v4) == 1)
  {
    if (v28(&v21[v27], 1, v4) == 1)
    {
      v58 = v29;
      sub_1DAA92844(v21, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      goto LABEL_11;
    }

LABEL_8:
    sub_1DAB4C530(v21, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  sub_1DAA70878(v21, v14, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v28(&v21[v27], 1, v4) == 1)
  {
    sub_1DAA7133C(v14, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    goto LABEL_8;
  }

  v58 = v29;
  sub_1DAA6E94C(&v21[v27], v9, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v30 = *(v4 + 28);
  v31 = &v14[v30];
  v32 = &v9[v30];
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DAA7133C(v14, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v42 = v21;
LABEL_22:
    sub_1DAA92844(v42, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  v33 = *(v53 + 20);
  v34 = *&v31[v33];
  v35 = *&v32[v33];
  sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v14, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA92844(v21, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v34 != v35)
  {
    return 0;
  }

LABEL_11:
  v36 = *(v54 + 24);
  v37 = *(v16 + 48);
  v38 = a1 + v36;
  v39 = v55;
  sub_1DAA70878(v38, v55, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA70878(v57 + v36, v39 + v37, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v28(v39, 1, v4) == 1)
  {
    if (v28((v39 + v37), 1, v4) == 1)
    {
      sub_1DAA92844(v39, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      return 1;
    }

    goto LABEL_16;
  }

  v41 = v56;
  sub_1DAA70878(v39, v56, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v28((v39 + v37), 1, v4) == 1)
  {
    sub_1DAA7133C(v41, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
LABEL_16:
    sub_1DAB4C530(v39, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  v43 = v39 + v37;
  v44 = v52;
  sub_1DAA6E94C(v43, v52, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v45 = *(v4 + 28);
  v46 = v41 + v45;
  v47 = v44 + v45;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v44, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DAA7133C(v41, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v42 = v39;
    goto LABEL_22;
  }

  v48 = *(v53 + 20);
  v49 = *(v46 + v48);
  v50 = *(v47 + v48);
  sub_1DAA7133C(v44, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v41, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA92844(v39, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  return v49 == v50;
}

unint64_t sub_1DAB4B06C()
{
  result = qword_1EE11E608;
  if (!qword_1EE11E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E608);
  }

  return result;
}

uint64_t sub_1DAB4B0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAB4B108()
{
  result = qword_1ECBE7B28;
  if (!qword_1ECBE7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B28);
  }

  return result;
}

unint64_t sub_1DAB4B15C()
{
  result = qword_1EE11DF58;
  if (!qword_1EE11DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF58);
  }

  return result;
}

unint64_t sub_1DAB4B1B0()
{
  result = qword_1ECBE7B58;
  if (!qword_1ECBE7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B58);
  }

  return result;
}

unint64_t sub_1DAB4B204()
{
  result = qword_1ECBE7B70;
  if (!qword_1ECBE7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B70);
  }

  return result;
}

unint64_t sub_1DAB4B258()
{
  result = qword_1EE11DF30;
  if (!qword_1EE11DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF30);
  }

  return result;
}

unint64_t sub_1DAB4B2AC()
{
  result = qword_1EE11DF18;
  if (!qword_1EE11DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF18);
  }

  return result;
}

unint64_t sub_1DAB4B300()
{
  result = qword_1EE11DF70;
  if (!qword_1EE11DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF70);
  }

  return result;
}

void sub_1DAB4B354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAB4B3BC(uint64_t a1)
{
  if (!qword_1ECBE7BB0)
  {
    sub_1DAB4B42C();
    sub_1DACB9D04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7BB0);
    }
  }
}

unint64_t sub_1DAB4B42C()
{
  result = qword_1ECBE7BB8;
  if (!qword_1ECBE7BB8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECBE7BB8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    sub_1DAA52FAC(0, a5, a6);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    sub_1DAA52FAC(0, a6, a7);
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

unint64_t sub_1DAB4B958()
{
  result = qword_1ECBE7BF8;
  if (!qword_1ECBE7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7BF8);
  }

  return result;
}

unint64_t sub_1DAB4B9B0()
{
  result = qword_1ECBE7C00;
  if (!qword_1ECBE7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C00);
  }

  return result;
}

unint64_t sub_1DAB4BA08()
{
  result = qword_1ECBE7C08;
  if (!qword_1ECBE7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C08);
  }

  return result;
}

unint64_t sub_1DAB4BA60()
{
  result = qword_1ECBE7C10;
  if (!qword_1ECBE7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C10);
  }

  return result;
}

unint64_t sub_1DAB4BAB8()
{
  result = qword_1ECBE7C18;
  if (!qword_1ECBE7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C18);
  }

  return result;
}

unint64_t sub_1DAB4BB10()
{
  result = qword_1ECBE7C20;
  if (!qword_1ECBE7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C20);
  }

  return result;
}

unint64_t sub_1DAB4BB68()
{
  result = qword_1ECBE7C28;
  if (!qword_1ECBE7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C28);
  }

  return result;
}

unint64_t sub_1DAB4BBC0()
{
  result = qword_1ECBE7C30;
  if (!qword_1ECBE7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C30);
  }

  return result;
}

unint64_t sub_1DAB4BC18()
{
  result = qword_1EE11DF60;
  if (!qword_1EE11DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF60);
  }

  return result;
}

unint64_t sub_1DAB4BC70()
{
  result = qword_1EE11DF68;
  if (!qword_1EE11DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF68);
  }

  return result;
}

unint64_t sub_1DAB4BCC8()
{
  result = qword_1EE11DF08;
  if (!qword_1EE11DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF08);
  }

  return result;
}

unint64_t sub_1DAB4BD20()
{
  result = qword_1EE11DF10;
  if (!qword_1EE11DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF10);
  }

  return result;
}

unint64_t sub_1DAB4BD78()
{
  result = qword_1EE11DF20;
  if (!qword_1EE11DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF20);
  }

  return result;
}

unint64_t sub_1DAB4BDD0()
{
  result = qword_1EE11DF28;
  if (!qword_1EE11DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF28);
  }

  return result;
}

unint64_t sub_1DAB4BE28()
{
  result = qword_1ECBE7C38;
  if (!qword_1ECBE7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C38);
  }

  return result;
}

unint64_t sub_1DAB4BE80()
{
  result = qword_1ECBE7C40;
  if (!qword_1ECBE7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C40);
  }

  return result;
}

unint64_t sub_1DAB4BED8()
{
  result = qword_1ECBE7C48;
  if (!qword_1ECBE7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C48);
  }

  return result;
}

unint64_t sub_1DAB4BF30()
{
  result = qword_1ECBE7C50;
  if (!qword_1ECBE7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C50);
  }

  return result;
}

unint64_t sub_1DAB4BF88()
{
  result = qword_1EE11DF48;
  if (!qword_1EE11DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF48);
  }

  return result;
}

unint64_t sub_1DAB4BFE0()
{
  result = qword_1EE11DF50;
  if (!qword_1EE11DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF50);
  }

  return result;
}

unint64_t sub_1DAB4C038()
{
  result = qword_1ECBE7C58;
  if (!qword_1ECBE7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C58);
  }

  return result;
}

unint64_t sub_1DAB4C090()
{
  result = qword_1ECBE7C60;
  if (!qword_1ECBE7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C60);
  }

  return result;
}

unint64_t sub_1DAB4C0E8()
{
  result = qword_1EE11E5F8;
  if (!qword_1EE11E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5F8);
  }

  return result;
}

unint64_t sub_1DAB4C140()
{
  result = qword_1EE11E600;
  if (!qword_1EE11E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E600);
  }

  return result;
}

uint64_t sub_1DAB4C194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656D6F68 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAB4C2AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DAB4C41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAB4C530(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA712D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAB4C5AC@<X0>(void *a1@<X8>)
{
  result = [v1 respondsToSelector_];
  if ((result & 1) != 0 && (result = [v1 stocksFields]) != 0 && (v4 = objc_msgSend(result, sel_stocksMetadataJSON), result = swift_unknownObjectRelease(), v4))
  {
    v5 = sub_1DACB9324();
    v7 = v6;

    sub_1DACB7554();
    swift_allocObject();
    sub_1DACB7544();
    v8 = sub_1DAB4C6F8(v5, v7);
    v10 = v9;
    sub_1DAB4CC1C();
    sub_1DACB7524();
    sub_1DAA563C0(v8, v10);

    v11 = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v11;
  return result;
}

uint64_t sub_1DAB4C6F8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1DAB4CD58();
  sub_1DACB71E4();
  if (swift_dynamicCast())
  {
    sub_1DAA4D460(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1DACB7814();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DAA928A0(__src, &qword_1EE123A88, sub_1DAB4CD58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DACB9D24();
  }

  sub_1DAB4CDBC(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DAB4D42C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1DAB4CE84(sub_1DAB4D4CC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DACB7B14();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DABBE508(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DACB9454();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DACB9484();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DACB9D24();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DABBE508(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DACB9464();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1DACB7B24();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1DACB7B24();
    sub_1DAB4D534(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DAB4D534(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DAB0B080(*&__src[0], *(&__src[0] + 1));

  sub_1DAA563C0(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_1DAB4CC1C()
{
  result = qword_1EE122B40;
  if (!qword_1EE122B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B40);
  }

  return result;
}

void sub_1DAB4CC70()
{
  if (!qword_1EE11F480)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F480);
    }
  }
}

uint64_t sub_1DAB4CCC4(uint64_t a1, uint64_t a2)
{
  sub_1DAA53000(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAB4CD58()
{
  result = qword_1EE123A90;
  if (!qword_1EE123A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123A90);
  }

  return result;
}

uint64_t *sub_1DAB4CDBC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1DABDEF9C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1DACB7794();
      swift_allocObject();
      v8 = sub_1DACB7744();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1DACB7B04();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1DAB4CE84(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1DAA563C0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1DACB71F4();
    sub_1DAA563C0(v7, v6);
    *v4 = xmmword_1DACC9000;
    sub_1DAA563C0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1DACB71F4();
      if (sub_1DACB7754() && __OFSUB__(v7, sub_1DACB7784()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1DACB7794();
      swift_allocObject();
      v14 = sub_1DACB7734();

      v12 = v14;
    }

    if (v13 >= v7)
    {
      sub_1DACB71F4();
      v15 = sub_1DAB4D328(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {
    sub_1DACB71F4();
    sub_1DACB71F4();
    sub_1DAA563C0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DACC9000;
    sub_1DAA563C0(0, 0xC000000000000000);
    sub_1DACB7AC4();
    result = sub_1DAB4D328(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1DAB4D228@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DABDEF9C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DAB4D548(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DAB4D5C4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DAB4D2BC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DAB4D328(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DACB7754();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DACB7784();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DACB7774();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DAB4D3DC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1DACB9CA4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB4D42C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DABDEF7C(result);
    }

    else
    {
      sub_1DACB7794();
      swift_allocObject();
      sub_1DACB7764();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DACB7B04();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DAB4D4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DAB4D2BC(sub_1DAB4D648, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DAB4D534(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAA563C0(result, a2);
  }

  return result;
}

uint64_t sub_1DAB4D548(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DACB7794();
  swift_allocObject();
  result = sub_1DACB7744();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB7B04();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DAB4D5C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DACB7794();
  swift_allocObject();
  result = sub_1DACB7744();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DAB4D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1DACB82E4();
  sub_1DAA4D678(v11 + 16, v21);
  (*(v8 + 16))(v10, a3, v7);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  sub_1DACB71E4();
  v17 = sub_1DAB4D860(a1, a2, v16, v10);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = sub_1DACB82B4();

  return v18;
}

id sub_1DAB4D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for YahooBaseOperationFactory();
  v24[3] = v8;
  v24[4] = &off_1F56825C8;
  v24[0] = a3;
  v9 = type metadata accessor for YahooSearchOperation(0);
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v23[3] = v8;
  v23[4] = &off_1F56825C8;
  v23[0] = v15;
  v16 = &v10[qword_1ECBE8A98];
  *v16 = a1;
  *(v16 + 1) = a2;
  sub_1DAA4D678(v23, &v10[qword_1ECBE8AA0]);
  v17 = qword_1ECBE8AA8;
  v18 = sub_1DACB8204();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a4, v18);
  v22.receiver = v10;
  v22.super_class = v9;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v19 + 8))(a4, v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

uint64_t sub_1DAB4DA40()
{

  sub_1DAA4CFDC(v0 + 72, sub_1DAB4DAE8);

  return swift_deallocClassInstance();
}

void sub_1DAB4DA9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACB8C24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAB4DB1C()
{
  result = qword_1EE11CE98;
  if (!qword_1EE11CE98)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE11CE98);
  }

  return result;
}

unint64_t sub_1DAB4DB6C()
{
  result = qword_1ECBE7C90;
  if (!qword_1ECBE7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C90);
  }

  return result;
}

unint64_t sub_1DAB4DC24()
{
  result = qword_1ECBE7C98;
  if (!qword_1ECBE7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C98);
  }

  return result;
}

void sub_1DAB4DDD0(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateUserIDCommand();
  v10 = objc_allocWithZone(updated);
  v11 = &v10[OBJC_IVAR___SCUpdateUserIDCommand_userID];
  *v11 = a2;
  v11[1] = a3;
  v10[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = a4;
  v13.receiver = v10;
  v13.super_class = updated;
  sub_1DACB71E4();
  v12 = objc_msgSendSuper2(&v13, sel_init);
  [v7 modifyContentsOfZone:v8 withCommand:{v12, v13.receiver, v13.super_class}];
}

void sub_1DAB4DEA0(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_1DACB92F4();
  sub_1DACB7C84();
  updated = type metadata accessor for UpdateAdsUserIDCommand(0);
  v15 = objc_allocWithZone(updated);
  v16 = &v15[OBJC_IVAR___SCUpdateAdsUserIDCommand_userID];
  *v16 = a2;
  v16[1] = a3;
  (*(v9 + 16))(&v15[OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate], v11, v8);
  v15[OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite] = a4;
  v18.receiver = v15;
  v18.super_class = updated;
  sub_1DACB71E4();
  v17 = objc_msgSendSuper2(&v18, sel_init);
  (*(v9 + 8))(v11, v8);
  [v12 modifyContentsOfZone:v13 withCommand:v17];
}

uint64_t sub_1DAB4E048()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB4E088(id *a1)
{
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1 || (v6 = [*a1 encryptedValues], v7 = sub_1DACB92F4(), v8 = objc_msgSend(v6, sel_objectForKeyedSubscript_, v7), swift_unknownObjectRelease(), v7, !v8) || (v14[1] = v8, sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue), (swift_dynamicCast() & 1) == 0))
  {
    sub_1DACB6D04();
    v9 = sub_1DACB7CE4();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = 0;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v14[2] = v9;
    v14[3] = v11;
  }

  sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB4E2C0(void **a1, uint64_t a2)
{
  v53 = sub_1DACB7D04();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v48 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v44 - v17;
  v18 = *a1;
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = [v18 encryptedValues];
  v52 = v2;
  v20 = v19;
  v21 = sub_1DACB92F4();
  v51 = a2;
  v22 = v21;
  v23 = [v20 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_9;
  }

  v56 = v23;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v45 = v54;
  v46 = v55;
  v24 = [v18 encryptedValues];
  v25 = sub_1DACB92F4();
  v26 = [v24 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v26)
  {

    (*(v49 + 56))(v10, 1, 1, v50);
    goto LABEL_8;
  }

  v27 = v46;
  v54 = v26;
  v28 = v50;
  v29 = swift_dynamicCast();
  v30 = v49;
  (*(v49 + 56))(v10, v29 ^ 1u, 1, v28);
  if ((*(v30 + 48))(v10, 1, v28) == 1)
  {

LABEL_8:
    sub_1DAA776C4(v10);
LABEL_9:
    sub_1DACB6D04();
    v31 = sub_1DACB7CE4();
    v33 = v32;
    (*(v5 + 8))(v7, v53);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    *(v34 + 32) = 0;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v54 = v31;
    v55 = v33;
    sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  v36 = v47;
  (*(v30 + 32))(v47, v10, v28);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D658 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  sub_1DACB7BF4();
  sub_1DACB7C84();
  v37 = sub_1DACB7C14();
  v49 = *(v30 + 8);
  (v49)(v14, v28);
  if (v37)
  {
    v54 = v45;
    v55 = v27;
  }

  else
  {

    sub_1DACB6D04();
    v40 = sub_1DACB7CE4();
    v42 = v41;
    (*(v5 + 8))(v7, v53);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v42;
    *(v43 + 32) = 1;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v54 = v40;
    v55 = v42;
  }

  sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v38 = sub_1DACB8AE4();
  v39 = v49;
  (v49)(v48, v28);
  v39(v36, v28);
  return v38;
}

void sub_1DAB4E9AC(void **a1, uint64_t a2, char a3)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_1DACB92F4();
  v12 = *(v7 + 16);
  v12(v9, a2, v6);
  updated = type metadata accessor for UpdateUserStartDateCommand(0);
  v14 = objc_allocWithZone(updated);
  v12(&v14[OBJC_IVAR___SCUpdateUserStartDateCommand_startDate], v9, v6);
  v14[OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy] = a3;
  v16.receiver = v14;
  v16.super_class = updated;
  v15 = objc_msgSendSuper2(&v16, sel_init);
  (*(v7 + 8))(v9, v6);
  [v10 modifyContentsOfZone:v11 withCommand:v15];
}

uint64_t sub_1DAB4EB44(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = [v1 valuesByKey];
    v3 = sub_1DACB92F4();
    v4 = [v2 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v4)
    {
      sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
      swift_dynamicCast();
    }
  }

  sub_1DAB501A8(0, &unk_1EE11D3A8, &qword_1EE11CEA0, MEMORY[0x1E69E7360]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB4EC7C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateUpsellAppLaunchCountCommand();
  v6 = objc_allocWithZone(updated);
  *&v6[OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount] = a2;
  v8.receiver = v6;
  v8.super_class = updated;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  [v3 modifyContentsOfZone:v4 withCommand:v7];
}

uint64_t sub_1DAB4ED20(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = [v1 valuesByKey];
    v3 = sub_1DACB92F4();
    v4 = [v2 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v4)
    {
      sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
      swift_dynamicCast();
    }
  }

  sub_1DAB501A8(0, &qword_1EE11D3E8, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB4EE54(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  v8 = objc_allocWithZone(updated);
  v9 = &v8[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v8;
  v11.super_class = updated;
  sub_1DACB71E4();
  v10 = objc_msgSendSuper2(&v11, sel_init);
  [v5 modifyContentsOfZone:v6 withCommand:{v10, v11.receiver, v11.super_class}];
}

uint64_t sub_1DAB4EF14(id *a1)
{
  sub_1DAA492B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  if (*a1 && (v8 = [*a1 encryptedValues], v9 = sub_1DACB92F4(), v10 = objc_msgSend(v8, sel_objectForKeyedSubscript_, v9), swift_unknownObjectRelease(), v9, v10))
  {
    v16[1] = v10;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v11 = sub_1DACB7CC4();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v7, v12 ^ 1u, 1, v11);
  }

  else
  {
    v13 = sub_1DACB7CC4();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1DAA77630(v7, v5);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v14 = sub_1DACB8AE4();
  sub_1DAA776C4(v7);
  return v14;
}

void sub_1DAB4F14C(void **a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_1DACB92F4();
  v14 = *(v9 + 16);
  v14(v11, a2, v8);
  v15 = a3(0);
  v16 = objc_allocWithZone(v15);
  v14(&v16[*a4], v11, v8);
  v18.receiver = v16;
  v18.super_class = v15;
  v17 = objc_msgSendSuper2(&v18, sel_init);
  (*(v9 + 8))(v11, v8);
  [v12 modifyContentsOfZone:v13 withCommand:v17];
}

uint64_t sub_1DAB4F2DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 24);
  v13 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v12 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v13;
          a2 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        sub_1DACB71F4();
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v3 + 24) = v8;

  type metadata accessor for ObserverProxy();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x1E12770F0](v10);
  if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  return swift_endAccess();
}

uint64_t sub_1DAB4F508(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v11;
        sub_1DACB9D44();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v1[3] = v8;
}