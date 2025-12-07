unint64_t sub_1ABE29DCC()
{
  result = qword_1EB4DAAB8;
  if (!qword_1EB4DAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAB8);
  }

  return result;
}

unint64_t sub_1ABE29E24()
{
  result = qword_1EB4DAAC0;
  if (!qword_1EB4DAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeSemanticType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeSemanticType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeDataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PersonalKnowledgeToolResultAttribute(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolResultAttributeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABE2A2EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA7F920();
    v4 = v13;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(v11, v5, sizeof(v11));
      sub_1ABDE4398(__dst, v10);
      sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
      swift_dynamicCast();
      sub_1ABA93994();
      if (v8)
      {
        v6 = sub_1ABADEA0C((v7 > 1), v2, 1);
        v4 = v13;
      }

      sub_1ABA7EB84(v6);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1ABE2A3F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA7F920();
    v4 = v13;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(v11, v5, sizeof(v11));
      sub_1ABDE45C4(__dst, v10);
      sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
      swift_dynamicCast();
      sub_1ABA93994();
      if (v8)
      {
        v6 = sub_1ABADEA0C((v7 > 1), v2, 1);
        v4 = v13;
      }

      sub_1ABA7EB84(v6);
      v5 += 96;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1ABE2A504(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC4C(0, v1, 0);
    v4 = a1 + 48;
    v2 = v12;
    do
    {

      sub_1ABAD219C(&qword_1EB4D1330, &unk_1ABF69190);
      sub_1ABAD219C(&qword_1EB4D1300, &qword_1ABF33488);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1ABADEC4C((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PersonalKnowledgeToolExecution.execute(kgqString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[197] = v4;
  v5[196] = a4;
  v5[195] = a3;
  v5[194] = a2;
  v5[193] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABE2A6A0, 0, 0);
}

uint64_t sub_1ABE2A6A0()
{
  v8 = v0;
  static ParserV2.parse(kgq:)(&v7);
  v1 = v0[197];
  v2 = v7;
  v3 = *v1;
  v0[198] = *v1;
  sub_1ABA93E64((v1 + 1), (v0 + 156));
  v0[162] = MEMORY[0x1E69E7CC0];
  v0[155] = v3;
  v0[161] = v2;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[199] = v5;
  *v5 = v0;
  v5[1] = sub_1ABE2A8B8;

  return sub_1ABD73544();
}

uint64_t sub_1ABE2A8B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1600) = v1;

  if (v1)
  {
    v5 = sub_1ABE2B480;
  }

  else
  {
    *(v4 + 1608) = a1;
    v5 = sub_1ABE2A9E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ABE2A9E0()
{
  v77 = v0;
  v1 = sub_1ABE2A504(*(v0 + 1608));

  if (qword_1EB4D03A8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1EB4D6190);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24654();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v76[0] = v6;
      *v5 = 136315138;

      v7 = sub_1ABAD219C(&qword_1EB4D1300, &qword_1ABF33488);
      v8 = MEMORY[0x1AC5A9750](v1, v7);
      v10 = v9;

      v11 = sub_1ABADD6D8(v8, v10, v76);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1ABA78000, v3, v4, "kgq to vop: %s", v5, 0xCu);
      sub_1ABA84B54(v6);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    sub_1ABE2B728(v0 + 1240);
    v12 = *(v1 + 16);
    v68 = v1;
    if (!v12)
    {
      break;
    }

    v13 = (v0 + 1304);

    v14 = 0;
    v15 = 0;
    v67 = v12 - 1;
    v16 = (v1 + 48);
    v17 = 1;
    v18 = MEMORY[0x1E69E7CC0];
    v1 = MEMORY[0x1E69E7CC0];
    while (v15 < v12)
    {
      v70 = v15;
      v71 = v18;
      v73 = *(v16 - 2);
      v69 = v16;
      v19 = *v16;
      v76[0] = *(v16 - 1);

      v72 = v19;

      VOPBuilder.toString.getter();
      v22 = v20;
      v23 = v21;
      if (v17)
      {
      }

      else
      {
        *(v0 + 1400) = v20;
        *(v0 + 1408) = v21;
        *(v0 + 1416) = 0;
        *(v0 + 1424) = 0xE000000000000000;

        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1528) = v14;
        v24 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v24);

        v25 = *(v0 + 1424);
        *(v0 + 1432) = *(v0 + 1416);
        *(v0 + 1440) = v25;
        sub_1ABAE28EC();
        v26 = sub_1ABF248D4();

        if (v26)
        {
          *(v0 + 1448) = v22;
          *(v0 + 1456) = v23;
          *(v0 + 1464) = 0;
          *(v0 + 1472) = 0xE000000000000000;
          sub_1ABA81104();
          sub_1ABF23B14();
          *(v0 + 1536) = v14;
          v27 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v27);

          v28 = *(v0 + 1472);
          *(v0 + 1480) = *(v0 + 1464);
          *(v0 + 1488) = v28;
          v29 = sub_1ABE2B5E4(v71);
          v31 = v30;

          *(v0 + 1496) = v29;
          *(v0 + 1504) = v31;
          v22 = sub_1ABF248B4();
          v33 = v32;

          v23 = v33;
        }

        else
        {
        }

        v13 = (v0 + 1304);
      }

      *__src = 0;
      *&__src[8] = 0;
      *&__src[16] = v22;
      *&__src[24] = v23;
      memset(&__src[32], 0, 24);
      *&__src[56] = 257;
      KnosisServer.executeKGQ(request:)();
      v34 = *&__src[16];
      *v13 = *__src;
      v13[1] = v34;
      v13[2] = *&__src[32];
      *(v13 + 42) = *&__src[42];
      sub_1ABB2F6BC(v13);
      memcpy((v0 + 568), v76, 0xA8uLL);
      memcpy(__dst, v76, sizeof(__dst));
      sub_1ABD974FC(v0 + 568, v0 + 736);
      v35 = sub_1ABF237D4();
      v36 = sub_1ABF24654();
      sub_1ABB2F710(v0 + 568);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v37 = 136315394;
        *(v0 + 1384) = 0;
        *(v0 + 1392) = 0xE000000000000000;
        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1520) = v73;
        v38 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v38);

        v39 = sub_1ABADD6D8(*(v0 + 1384), *(v0 + 1392), v76);

        *(v37 + 4) = v39;
        *(v37 + 12) = 2080;
        sub_1ABD922F8();
        v42 = sub_1ABADD6D8(v40, v41, v76);

        *(v37 + 14) = v42;
        _os_log_impl(&dword_1ABA78000, v35, v36, "execution result for %s: %s", v37, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      sub_1ABD974FC(v0 + 568, v0 + 904);
      v43 = sub_1ABF237D4();
      v44 = sub_1ABF24654();
      sub_1ABB2F710(v0 + 568);
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v45 = 136315394;
        *(v0 + 1368) = 0;
        v46 = 0xE000000000000000;
        *(v0 + 1376) = 0xE000000000000000;
        sub_1ABA81104();
        sub_1ABF23B14();
        *(v0 + 1512) = v73;
        v47 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v47);

        v48 = sub_1ABADD6D8(*(v0 + 1368), *(v0 + 1376), v76);

        *(v45 + 4) = v48;
        *(v45 + 12) = 2080;
        if (*(v0 + 720))
        {
          sub_1ABD924EC();
          v46 = v50;
        }

        else
        {
          v49 = 0;
        }

        v51 = sub_1ABADD6D8(v49, v46, v76);

        *(v45 + 14) = v51;
        _os_log_impl(&dword_1ABA78000, v43, v44, "execution debug for %s: %s", v45, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      switch(*(v0 + 608))
      {
        case 1:
        case 2:
        case 3:
          v52 = sub_1ABF25054();

          if ((v52 & 1) == 0)
          {
            goto LABEL_31;
          }

          break;
        default:

          break;
      }

      if (!*(*(v0 + 600) + 16))
      {
LABEL_31:
        v57 = *(v0 + 1552);
        v58 = *(v0 + 1544);

        memcpy(v58, (v0 + 568), 0xA8uLL);
        sub_1ABB2BB90(v72, v57);

        goto LABEL_40;
      }

      sub_1ABD974FC(v0 + 568, v0 + 1072);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADC8CC();
        v1 = v55;
      }

      v53 = *(v1 + 16);
      if (v53 >= *(v1 + 24) >> 1)
      {
        sub_1ABADC8CC();
        v1 = v56;
      }

      memcpy(__src, __dst, sizeof(__src));
      *(v1 + 16) = v53 + 1;
      v54 = (v1 + 184 * v53);
      v14 = v73;
      v54[4] = v73;
      memcpy(v54 + 5, __src, 0xA8uLL);
      v54[26] = v72;
      memcpy(v76, (v0 + 568), 0xA8uLL);
      v18 = KnosisResult.answerIds.getter();

      sub_1ABB2F710(v0 + 568);
      if (v67 == v70)
      {

        goto LABEL_34;
      }

      v17 = 0;
      v12 = *(v68 + 16);
      v16 = v69 + 3;
      v15 = v70 + 1;
    }

    __break(1u);
LABEL_45:
    sub_1ABA8FA68(&qword_1EB4D03A8);
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v59 = *(v1 + 16);
  if (v59)
  {
    memcpy((v0 + 16), (v1 + 184 * v59 - 152), 0xB8uLL);
    sub_1ABE2B77C(v0 + 16, v0 + 200);

    v60 = *(v0 + 192);
    sub_1ABE2B77C(v0 + 16, v0 + 384);
    sub_1ABB2F710(v0 + 24);
    if (*(v60 + 16))
    {
      v61 = *(v60 + 32);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v61 = 1280;
    }

    v64 = *(v0 + 1552);
    v65 = *(v0 + 1544);

    memcpy(v65, (v0 + 24), 0xA8uLL);
    *v64 = v61;
LABEL_40:
    sub_1ABA7BBE0();
  }

  else
  {

    sub_1ABE2B7EC();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();

    sub_1ABA7BBE0();
  }

  return v63();
}

uint64_t sub_1ABE2B480()
{
  sub_1ABE2B728(v0 + 1240);
  v1 = *(v0 + 1600);
  if (qword_1EB4D03A8 != -1)
  {
    sub_1ABA8FA68(&qword_1EB4D03A8);
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1EB4D6190);
  v3 = v1;
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24664();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_1ABA8ED0C(&dword_1ABA78000, v10, v11, "kgq v2 parsing error: %@");
    sub_1ABB24B18(v7);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  swift_willThrow();

  sub_1ABA7BBE0();

  return v12();
}

uint64_t sub_1ABE2B5E4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v1 = sub_1ABF23B54();
  MEMORY[0x1AC5A9410](v1);

  MEMORY[0x1AC5A9410](23847, 0xE200000000000000);
  return 10075;
}

uint64_t PersonalKnowledgeToolError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABE2B77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D12F0, &unk_1ABF69050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE2B7EC()
{
  result = qword_1EB4DAAC8;
  if (!qword_1EB4DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAC8);
  }

  return result;
}

unint64_t sub_1ABE2B844()
{
  result = qword_1EB4DAAD0;
  if (!qword_1EB4DAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeToolError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PersonEntityCard.summaryInfos.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTime.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocations.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t PersonEntityCard.name.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t PersonEntityCard.currentUser.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t PersonEntityCard.relationship.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeActivities.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeSpantext.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsActivities.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsSpantext.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocations.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t PersonEntityCard.summaryAllTimeWithLocationsLocNames.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t sub_1ABE2BFB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x497972616D6D7573 && a2 == 0xEC000000736F666ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x417972616D6D7573 && a2 == 0xEE00656D69546C6CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001ABF92B80 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x55746E6572727563 && a2 == 0xEB00000000726573;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001ABF91C60 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000016 && 0x80000001ABF91C80 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000025 && 0x80000001ABF92BA0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000023 && 0x80000001ABF92BD0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000024 && 0x80000001ABF92C00 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000023 && 0x80000001ABF92C30 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE2C3A4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x497972616D6D7573;
      break;
    case 2:
      result = 0x417972616D6D7573;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x55746E6572727563;
      break;
    case 6:
      result = 0x6E6F6974616C6572;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE2C54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE2BFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE2C574(uint64_t a1)
{
  v2 = sub_1ABE2C978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2C5B0(uint64_t a1)
{
  v2 = sub_1ABE2C978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonEntityCard.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DAAE0, &qword_1ABF691A0);
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v49 = v1[2];
  v50 = v8;
  v10 = v1[5];
  v47 = v1[4];
  v48 = v9;
  v11 = v1[6];
  v12 = v1[7];
  v45 = v10;
  v46 = v11;
  v13 = v1[8];
  v14 = v1[9];
  v43 = v12;
  v44 = v13;
  v15 = v1[10];
  v16 = v1[11];
  v41 = v14;
  v42 = v15;
  v17 = v1[12];
  v18 = v1[13];
  v39 = v16;
  v40 = v17;
  v19 = v1[15];
  v37 = v1[14];
  v38 = v18;
  v20 = v1[17];
  v35 = v1[16];
  v36 = v19;
  v21 = v1[19];
  v33 = v1[18];
  v34 = v20;
  v32[4] = v21;
  v22 = v1[21];
  v32[3] = v1[20];
  v32[2] = v22;
  v32[1] = v1[22];
  v23 = v1[24];
  v24 = a1[3];
  v25 = a1;
  v27 = v26;
  sub_1ABA93E20(v25, v24);
  sub_1ABE2C978();
  sub_1ABF252E4();
  v63[1] = 0;
  v28 = v51;
  sub_1ABF24FA4();
  if (!v28)
  {
    v30 = v47;
    v31 = v48;
    v51 = v23;
    v63[0] = 1;
    sub_1ABA7C740(v50, v49, v63);
    v62 = 2;
    sub_1ABA7C740(v31, v30, &v62);
    v61 = 3;
    sub_1ABA7C740(v45, v46, &v61);
    v60 = 4;
    sub_1ABA7C740(v43, v44, &v60);
    v59 = 5;
    sub_1ABA7C740(v41, v42, &v59);
    v58 = 6;
    sub_1ABA7C740(v39, v40, &v58);
    v57 = 7;
    sub_1ABA7C740(v38, v37, &v57);
    v56[0] = 8;
    sub_1ABA7C740(v36, v35, v56);
    v55 = 9;
    sub_1ABA7C740(v34, v33, &v55);
    v54 = 10;
    sub_1ABF24ED4();
    v53 = 11;
    sub_1ABF24ED4();
    v52 = 12;
    sub_1ABF24ED4();
  }

  return (*(v4 + 8))(v7, v27);
}

unint64_t sub_1ABE2C978()
{
  result = qword_1EB4DAAE8;
  if (!qword_1EB4DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAE8);
  }

  return result;
}

uint64_t PersonEntityCard.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DAAF0, &qword_1ABF691A8);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  v48 = a1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE2C978();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA7DF24();
    sub_1ABA8ED2C();
    sub_1ABA84B54(a1);
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    v6 = sub_1ABF24E84();
    sub_1ABA8FA88(1);
    v7 = sub_1ABF24DB4();
    v47 = v8;
    sub_1ABA8FA88(2);
    v9 = sub_1ABF24DB4();
    v46 = v10;
    sub_1ABA8FA88(3);
    v44 = sub_1ABF24DB4();
    v45 = v11;
    sub_1ABA8FA88(4);
    v43 = sub_1ABF24DB4();
    v13 = v12;
    sub_1ABA8FA88(5);
    v41 = sub_1ABF24DB4();
    v42 = v7;
    v15 = v14;
    sub_1ABA8FA88(6);
    v39 = sub_1ABF24DB4();
    v40 = v6;
    v17 = v16;
    sub_1ABA8FA88(7);
    v36 = sub_1ABF24DB4();
    v38 = v18;
    sub_1ABA8FA88(8);
    v35 = sub_1ABF24DB4();
    v37 = v19;
    v34 = a2;
    sub_1ABA8FA88(9);
    v20 = sub_1ABF24DB4();
    v51 = v21;
    v22 = v20;
    sub_1ABA8FA88(10);
    v33 = sub_1ABF24DB4();
    v50 = v23;
    sub_1ABA8FA88(11);
    v32 = sub_1ABF24DB4();
    v49 = v24;
    v54 = 12;
    v25 = sub_1ABF24DB4();
    v31 = v26;
    v27 = v25;
    v28 = sub_1ABA7F948();
    v29(v28);
    v52[0] = v40;
    v52[1] = v42;
    v52[2] = v47;
    v52[3] = v9;
    v52[4] = v46;
    v52[5] = v44;
    v52[6] = v45;
    v52[7] = v43;
    v52[8] = v13;
    v52[9] = v41;
    v52[10] = v15;
    v52[11] = v39;
    v52[12] = v17;
    v52[13] = v36;
    v52[14] = v38;
    v52[15] = v35;
    v52[16] = v37;
    v52[17] = v22;
    v52[18] = v51;
    v52[19] = v33;
    v52[20] = v50;
    v52[21] = v32;
    v52[22] = v49;
    v52[23] = v27;
    v52[24] = v31;
    memcpy(v34, v52, 0xC8uLL);
    sub_1ABE2CF68(v52, v53);
    sub_1ABA84B54(v48);
    v53[0] = v40;
    v53[1] = v42;
    v53[2] = v47;
    v53[3] = v9;
    v53[4] = v46;
    v53[5] = v44;
    v53[6] = v45;
    v53[7] = v43;
    v53[8] = v13;
    v53[9] = v41;
    v53[10] = v15;
    v53[11] = v39;
    v53[12] = v17;
    v53[13] = v36;
    v53[14] = v38;
    v53[15] = v35;
    v53[16] = v37;
    v53[17] = v22;
    v53[18] = v51;
    v53[19] = v33;
    v53[20] = v50;
    v53[21] = v32;
    v53[22] = v49;
    v53[23] = v27;
    v53[24] = v31;
    return sub_1ABE2CFA0(v53);
  }
}

uint64_t sub_1ABE2D000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE2E044();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE2D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABE2DFF0();

  return sub_1ABF22804();
}

uint64_t sub_1ABE2D15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE2DF9C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ViewService.personEntityCardsView.getter(void *a1@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v16[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1ABE2D338(v6, v13, v14, a1);
    }
  }

  else
  {
    v15 = v16[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

void sub_1ABE2D338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0x80000001ABF92C80;
    v10 = 0xD000000000000016;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

void *sub_1ABE2D484@<X0>(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19[1] = a1;
  v19[0] = a4;
  v5 = sub_1ABAD219C(&qword_1EB4DAB48, &qword_1ABF695B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4DAB50, &unk_1ABF695C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;

  sub_1ABF22D04();
  v22[0] = a3;
  LOBYTE(v22[1]) = 0;
  sub_1ABF22C84();
  sub_1ABAB47C4(&qword_1EB4DAB58, &qword_1EB4DAB48, &qword_1ABF695B8, MEMORY[0x1E699FF60]);
  sub_1ABE2E098();
  v13 = v19[2];
  sub_1ABF22244();
  if (v13)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    memcpy(v22, v23, sizeof(v22));
    if (sub_1ABE06C14(v22) != 1)
    {
      (*(v10 + 8))(v12, v9);
      return memcpy(v19[0], v22, 0xC8uLL);
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1ABF24AB4();

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001ABF92C60;
    v24 = a3;
    v14 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v14);

    v15 = v20;
    v16 = v21;
    sub_1ABB93C20();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t ViewService.PersonEntityCardsView.getEntityCards(personIds:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DAAF8, &qword_1ABF691B0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1ABE2D894@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a1;
  v16 = a4;
  v17 = sub_1ABAD219C(&qword_1EB4DAB48, &qword_1ABF695B8);
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4DAB50, &unk_1ABF695C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;

  sub_1ABF22D04();
  v21[6] = a3;
  v20[3] = sub_1ABF22D14();
  v20[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v20);
  sub_1ABF22D24();
  v21[3] = sub_1ABF22424();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v21);
  sub_1ABAD219C(&qword_1EB4DA6D8, &qword_1ABF672A8);
  sub_1ABAB47C4(&qword_1EB4DA6E0, &qword_1EB4DA6D8, &qword_1ABF672A8, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(v20);
  sub_1ABF22CA4();
  sub_1ABA84B54(v21);
  sub_1ABAB47C4(&qword_1EB4DAB58, &qword_1EB4DAB48, &qword_1ABF695B8, MEMORY[0x1E699FF60]);
  sub_1ABE2E098();
  v12 = v17;
  v13 = v19;
  v14 = sub_1ABF22234();
  (*(v5 + 8))(v7, v12);
  result = (*(v9 + 8))(v11, v8);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

unint64_t sub_1ABE2DBB4()
{
  result = qword_1EB4DAB00;
  if (!qword_1EB4DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB00);
  }

  return result;
}

unint64_t sub_1ABE2DC0C()
{
  result = qword_1EB4DAB08;
  if (!qword_1EB4DAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB08);
  }

  return result;
}

unint64_t sub_1ABE2DC64()
{
  result = qword_1EB4DAB10;
  if (!qword_1EB4DAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB10);
  }

  return result;
}

uint64_t sub_1ABE2DCC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1ABE2DD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonEntityCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE2DE98()
{
  result = qword_1EB4DAB18;
  if (!qword_1EB4DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB18);
  }

  return result;
}

unint64_t sub_1ABE2DEF0()
{
  result = qword_1EB4DAB20;
  if (!qword_1EB4DAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB20);
  }

  return result;
}

unint64_t sub_1ABE2DF48()
{
  result = qword_1EB4DAB28;
  if (!qword_1EB4DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB28);
  }

  return result;
}

unint64_t sub_1ABE2DF9C()
{
  result = qword_1EB4DAB30;
  if (!qword_1EB4DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB30);
  }

  return result;
}

unint64_t sub_1ABE2DFF0()
{
  result = qword_1EB4DAB38;
  if (!qword_1EB4DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB38);
  }

  return result;
}

unint64_t sub_1ABE2E044()
{
  result = qword_1EB4DAB40;
  if (!qword_1EB4DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB40);
  }

  return result;
}

unint64_t sub_1ABE2E098()
{
  result = qword_1EB4DAB60;
  if (!qword_1EB4DAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB60);
  }

  return result;
}

IntelligencePlatform::PersonMatcherInferenceInterface::Input __swiftcall PersonMatcherInferenceInterface.Input.init(string:charList:)(Swift::String string, Swift::String charList)
{
  *v2 = string;
  v2[1] = charList;
  result.charList = charList;
  result.string = string;
  return result;
}

uint64_t sub_1ABE2E114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694C72616863 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABE2E1D8(char a1)
{
  if (a1)
  {
    return 0x7473694C72616863;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1ABE2E214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE2E114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE2E23C(uint64_t a1)
{
  v2 = sub_1ABE2E410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2E278(uint64_t a1)
{
  v2 = sub_1ABE2E410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Input.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4DAB68, &qword_1ABF695D0);
  sub_1ABA7BB64();
  v34 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABE2E410();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v24)
  {
    sub_1ABF24F34();
  }

  (*(v34 + 8))(v31, v27);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2E410()
{
  result = qword_1EB4DAB70;
  if (!qword_1EB4DAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB70);
  }

  return result;
}

void PersonMatcherInferenceInterface.Input.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4DAB78, &unk_1ABF695D8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BCE0();
  sub_1ABA80908(v25);
  sub_1ABE2E410();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    v29 = sub_1ABF24E14();
    v31 = v30;
    v32 = sub_1ABF24E14();
    v34 = v33;
    v37 = v32;
    v35 = sub_1ABA8C53C();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    sub_1ABA84B54(v25);
  }

  sub_1ABA7BC90();
}

uint64_t PersonMatcherInferenceInterface.Output.embedding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1ABE2E6CC(uint64_t a1)
{
  v2 = sub_1ABE2E8AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2E708(uint64_t a1)
{
  v2 = sub_1ABE2E8AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonMatcherInferenceInterface.Output.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DAB80, &qword_1ABF695E8);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE2E8AC();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABE2EB90(&qword_1EB4DA4A8, MEMORY[0x1E69E6458], MEMORY[0x1E695FCF8]);
  sub_1ABF24F84();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1ABE2E8AC()
{
  result = qword_1EB4DAB88;
  if (!qword_1EB4DAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAB88);
  }

  return result;
}

void PersonMatcherInferenceInterface.Output.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v18 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64();
  v19 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v20 = &v17 - v8;
  v9 = sub_1ABAD219C(&qword_1EB4DAB90, &qword_1ABF695F0);
  sub_1ABA7BB64();
  v11 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E358();
  v13 = type metadata accessor for PersonMatcherInferenceInterface.Output(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE2E8AC();
  sub_1ABF252C4();
  if (!v0)
  {
    v16 = v19;
    sub_1ABE2EB90(&qword_1EB4DA4B8, MEMORY[0x1E69E6478], MEMORY[0x1E695FD00]);
    sub_1ABF24E64();
    (*(v11 + 8))(v1, v9);
    (*(v16 + 32))(v15, v20, v5);
    sub_1ABE2EBFC(v15, v18);
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t type metadata accessor for PersonMatcherInferenceInterface.Output(uint64_t a1)
{
  result = qword_1EB4CEB88;
  if (!qword_1EB4CEB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABE2EB90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1AA8, &qword_1ABF661A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABE2EBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonMatcherInferenceInterface.Output(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE2EC98(uint64_t a1)
{
  v2 = sub_1ABE2EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2ECD4(uint64_t a1)
{
  v2 = sub_1ABE2EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE2ED10(uint64_t a1)
{
  v2 = sub_1ABE2EF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2ED4C(uint64_t a1)
{
  v2 = sub_1ABE2EF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Errors.InitError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4DAB98, &qword_1ABF695F8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABAD219C(&qword_1EB4DABA0, &qword_1ABF69600);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA80908(v1);
  v4 = sub_1ABE2EEF4();
  sub_1ABA8E46C(&type metadata for PersonMatcherInferenceInterface.Errors.InitError.CodingKeys, v5, v4);
  sub_1ABE2EF48();
  sub_1ABAA5A1C(&type metadata for PersonMatcherInferenceInterface.Errors.InitError.InvalidModelCodingKeys, v6);
  v7 = sub_1ABA7F7CC();
  v8(v7);
  v9 = sub_1ABA8C53C();
  v10(v9);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2EEF4()
{
  result = qword_1EB4DABA8;
  if (!qword_1EB4DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABA8);
  }

  return result;
}

unint64_t sub_1ABE2EF48()
{
  result = qword_1EB4DABB0;
  if (!qword_1EB4DABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABB0);
  }

  return result;
}

void PersonMatcherInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DABB8, &qword_1ABF69608);
  sub_1ABA7BB64();
  v34 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  sub_1ABAD219C(&qword_1EB4DABC0, &unk_1ABF69610);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E358();
  v10 = v3[3];
  v11 = v3[4];
  sub_1ABA80908(v3);
  v12 = sub_1ABE2EEF4();
  sub_1ABA90AC4(&type metadata for PersonMatcherInferenceInterface.Errors.InitError.CodingKeys, v13, v12);
  if (v0)
  {
    goto LABEL_10;
  }

  v32[1] = v8;
  v33 = v3;
  sub_1ABF24EA4();
  v14 = sub_1ABAD4EA4();
  if (v16 == v15 >> 1)
  {
    v34 = v14;
LABEL_9:
    v24 = sub_1ABF24B44();
    swift_allocError();
    v26 = v25;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v26 = &type metadata for PersonMatcherInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = sub_1ABA7F7CC();
    v28(v27);
    v3 = v33;
LABEL_10:
    v31 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v18 == v19)
  {
    __break(1u);
    return;
  }

  sub_1ABA8E438(v17);
  sub_1ABAD4E90();
  sub_1ABA97D50();
  v20 = v11 == v10 >> 1;
  v21 = v33;
  v22 = v34;
  if (!v20)
  {
    v34 = v1;
    goto LABEL_9;
  }

  sub_1ABE2EF48();
  sub_1ABA83BC4(&type metadata for PersonMatcherInferenceInterface.Errors.InitError.InvalidModelCodingKeys, v23);
  swift_unknownObjectRelease();
  (*(v22 + 8))(v11, v4);
  v29 = sub_1ABA81020();
  v30(v29);
  v31 = v21;
LABEL_11:
  sub_1ABA84B54(v31);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE2F2B8(uint64_t a1)
{
  v2 = sub_1ABE2F874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2F2F4(uint64_t a1)
{
  v2 = sub_1ABE2F874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE2F330(uint64_t a1)
{
  v2 = sub_1ABE2F8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE2F36C(uint64_t a1)
{
  v2 = sub_1ABE2F8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonMatcherInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4DABC8, &qword_1ABF69620);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABAD219C(&qword_1EB4DABD0, &qword_1ABF69628);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA80908(v1);
  v4 = sub_1ABE2F874();
  sub_1ABA8E46C(&type metadata for PersonMatcherInferenceInterface.Errors.RunError.CodingKeys, v5, v4);
  sub_1ABE2F8C8();
  sub_1ABAA5A1C(&type metadata for PersonMatcherInferenceInterface.Errors.RunError.InvalidStringInputCodingKeys, v6);
  v7 = sub_1ABA7F7CC();
  v8(v7);
  v9 = sub_1ABA8C53C();
  v10(v9);
  sub_1ABA7BC90();
}

void PersonMatcherInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DABE8, &qword_1ABF69630);
  sub_1ABA7BB64();
  v34 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  sub_1ABAD219C(&qword_1EB4DABF0, &qword_1ABF69638);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E358();
  v10 = v3[3];
  v11 = v3[4];
  sub_1ABA80908(v3);
  v12 = sub_1ABE2F874();
  sub_1ABA90AC4(&type metadata for PersonMatcherInferenceInterface.Errors.RunError.CodingKeys, v13, v12);
  if (v0)
  {
    goto LABEL_10;
  }

  v32[1] = v8;
  v33 = v3;
  sub_1ABF24EA4();
  v14 = sub_1ABAD4EA4();
  if (v16 == v15 >> 1)
  {
    v34 = v14;
LABEL_9:
    v24 = sub_1ABF24B44();
    swift_allocError();
    v26 = v25;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v26 = &type metadata for PersonMatcherInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = sub_1ABA7F7CC();
    v28(v27);
    v3 = v33;
LABEL_10:
    v31 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v18 == v19)
  {
    __break(1u);
    return;
  }

  sub_1ABA8E438(v17);
  sub_1ABAD4E90();
  sub_1ABA97D50();
  v20 = v11 == v10 >> 1;
  v21 = v33;
  v22 = v34;
  if (!v20)
  {
    v34 = v1;
    goto LABEL_9;
  }

  sub_1ABE2F8C8();
  sub_1ABA83BC4(&type metadata for PersonMatcherInferenceInterface.Errors.RunError.InvalidStringInputCodingKeys, v23);
  swift_unknownObjectRelease();
  (*(v22 + 8))(v11, v4);
  v29 = sub_1ABA81020();
  v30(v29);
  v31 = v21;
LABEL_11:
  sub_1ABA84B54(v31);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE2F874()
{
  result = qword_1EB4DABD8;
  if (!qword_1EB4DABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABD8);
  }

  return result;
}

unint64_t sub_1ABE2F8C8()
{
  result = qword_1EB4DABE0;
  if (!qword_1EB4DABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABE0);
  }

  return result;
}

unint64_t sub_1ABE2F920()
{
  result = qword_1EB4DABF8;
  if (!qword_1EB4DABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DABF8);
  }

  return result;
}

unint64_t sub_1ABE2F978()
{
  result = qword_1EB4DAC00;
  if (!qword_1EB4DAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC00);
  }

  return result;
}

unint64_t sub_1ABE2F9D0()
{
  result = qword_1EB4DAC08;
  if (!qword_1EB4DAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC08);
  }

  return result;
}

unint64_t sub_1ABE2FA28()
{
  result = qword_1EB4DAC10;
  if (!qword_1EB4DAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC10);
  }

  return result;
}

unint64_t sub_1ABE2FA80()
{
  result = qword_1EB4DAC18;
  if (!qword_1EB4DAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC18);
  }

  return result;
}

_BYTE *sub_1ABE2FB7C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonMatcherInferenceInterface.Input.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE2FD08()
{
  result = qword_1EB4DAC20;
  if (!qword_1EB4DAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC20);
  }

  return result;
}

unint64_t sub_1ABE2FD60()
{
  result = qword_1EB4DAC28;
  if (!qword_1EB4DAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC28);
  }

  return result;
}

unint64_t sub_1ABE2FDB8()
{
  result = qword_1EB4DAC30;
  if (!qword_1EB4DAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC30);
  }

  return result;
}

unint64_t sub_1ABE2FE10()
{
  result = qword_1EB4DAC38;
  if (!qword_1EB4DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC38);
  }

  return result;
}

unint64_t sub_1ABE2FE68()
{
  result = qword_1EB4DAC40;
  if (!qword_1EB4DAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC40);
  }

  return result;
}

unint64_t sub_1ABE2FEC0()
{
  result = qword_1EB4DAC48;
  if (!qword_1EB4DAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC48);
  }

  return result;
}

unint64_t sub_1ABE2FF18()
{
  result = qword_1EB4DAC50;
  if (!qword_1EB4DAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC50);
  }

  return result;
}

unint64_t sub_1ABE2FF70()
{
  result = qword_1EB4DAC58;
  if (!qword_1EB4DAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC58);
  }

  return result;
}

unint64_t sub_1ABE2FFC8()
{
  result = qword_1EB4DAC60;
  if (!qword_1EB4DAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC60);
  }

  return result;
}

unint64_t sub_1ABE30020()
{
  result = qword_1EB4DAC68;
  if (!qword_1EB4DAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC68);
  }

  return result;
}

unint64_t sub_1ABE30078()
{
  result = qword_1EB4DAC70;
  if (!qword_1EB4DAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC70);
  }

  return result;
}

unint64_t sub_1ABE300D0()
{
  result = qword_1EB4DAC78;
  if (!qword_1EB4DAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC78);
  }

  return result;
}

unint64_t sub_1ABE30128()
{
  result = qword_1EB4DAC80;
  if (!qword_1EB4DAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC80);
  }

  return result;
}

unint64_t sub_1ABE30180()
{
  result = qword_1EB4DAC88;
  if (!qword_1EB4DAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC88);
  }

  return result;
}

unint64_t sub_1ABE301D8()
{
  result = qword_1EB4DAC90;
  if (!qword_1EB4DAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC90);
  }

  return result;
}

unint64_t sub_1ABE30230()
{
  result = qword_1EB4DAC98;
  if (!qword_1EB4DAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAC98);
  }

  return result;
}

uint64_t sub_1ABE302B4(uint64_t a1)
{
  v2 = sub_1ABE30458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE302F0(uint64_t a1)
{
  v2 = sub_1ABE30458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonMatcherInferenceServiceDefinition.ConfigParameters.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DACA0, &qword_1ABF69F50);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE30458();
  sub_1ABF252E4();
  sub_1ABF24F34();
  v3 = sub_1ABA805B4();
  return v4(v3);
}

unint64_t sub_1ABE30458()
{
  result = qword_1EB4DACA8;
  if (!qword_1EB4DACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACA8);
  }

  return result;
}

uint64_t PersonMatcherInferenceServiceDefinition.ConfigParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DACB0, &qword_1ABF69F58);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE30458();
  sub_1ABF252C4();
  if (!v2)
  {
    v6 = sub_1ABF24E14();
    v8 = v7;
    v9 = sub_1ABA805B4();
    v10(v9);
    *a2 = v6;
    a2[1] = v8;
  }

  return sub_1ABA84B54(a1);
}

void PersonMatcherInferenceServiceDefinition.Runner.cost.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABE30650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1ABE3069C, 0, 0);
}

uint64_t sub_1ABE3069C()
{
  sub_1ABA7BC04();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v4 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

  v5 = [v4 init];
  v0[7] = v5;
  [v5 setComputeUnits_];
  [v5 setAllowBackgroundGPUCompute_];
  v6 = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1ABE307EC;
  v8 = v0[3];
  v9 = v0[2];

  return sub_1ABC20104(v9, v8, 0x614D6E6F73726570, 0xED00007265686374, v5);
}

uint64_t sub_1ABE307EC()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7D4E0();
  *v6 = v5;
  *(v8 + 72) = v7;
  *(v8 + 80) = v0;

  v9 = *(v2 + 56);
  if (v0)
  {

    v10 = sub_1ABE021DC;
  }

  else
  {

    v10 = sub_1ABE30944;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1ABE30944()
{
  v1 = v0[9];
  if (!v1)
  {
    v3 = v0[7];
    sub_1ABE2F9D0();
    swift_allocError();
    swift_willThrow();

    swift_defaultActor_destroy();

    sub_1ABA83C0C();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[5];
  *(v2 + 144) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABE02160, v2, 0);
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.run(input:context:)()
{
  sub_1ABA7BC04();
  v3 = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v5 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  *(v1 + 128) = v5;
  *(v1 + 136) = *(v5 - 8);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v3;
  *(v1 + 160) = v6;
  *(v1 + 168) = v7;
  *(v1 + 176) = *(v3 + 1);
  *(v1 + 192) = v3[3];

  return MEMORY[0x1EEE6DFA0](sub_1ABE30B98, v0, 0);
}

uint64_t sub_1ABE30B98()
{
  v1 = v0[15];
  v2 = v0[16];
  String.oneHotEncoding(charList:)(v0[23], v0[24], v1);
  if (sub_1ABA7E1E0(v1, 1, v2) == 1)
  {
    sub_1ABBE0A90(v0[15]);
    sub_1ABE2FA28();
    swift_allocError();
    swift_willThrow();

    sub_1ABA7BBE0();

    return v19();
  }

  else
  {
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[16];
    v6 = v0[17];
    v7 = v0[15];
    v8 = *(v6 + 32);
    v0[25] = v8;
    v0[26] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v7, v5);
    sub_1ABAD219C(&qword_1EB4DACB8, &qword_1ABF69F68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 32) = 0x315F7475706E69;
    *(inited + 40) = 0xE700000000000000;
    v10 = sub_1ABE315E8();
    (*(v6 + 16))(v3, v4, v5);
    sub_1ABA8FA9C();
    sub_1ABAB47C4(v11, v12, v13, v14);
    v15 = sub_1ABF24634();
    *(inited + 72) = v10;
    *(inited + 48) = v15;
    v16 = sub_1ABF239C4();
    v17 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v18 = sub_1ABDF9974(v16);
    v0[27] = v18;
    v21 = v18;
    v22 = swift_task_alloc();
    v0[28] = v22;
    *v22 = v0;
    v22[1] = sub_1ABE30E78;

    return sub_1ABDF7E7C(v21);
  }
}

uint64_t sub_1ABE30E78()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7D4E0();
  *v6 = v5;
  *(v8 + 232) = v7;
  *(v8 + 240) = v0;

  v9 = *(v2 + 216);
  v10 = *(v2 + 104);

  if (v0)
  {
    v11 = sub_1ABE311F8;
  }

  else
  {
    v11 = sub_1ABE30FBC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1ABE30FBC()
{
  v1 = v0[29];
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];

  v4 = v0[16];
  v5 = v0[14];
  if (!v3)
  {
    sub_1ABA7B9B4(v0[14], 1, 1, v0[16]);
    goto LABEL_7;
  }

  sub_1ABF24694();

  if (sub_1ABA7E1E0(v5, 1, v4) == 1)
  {
LABEL_7:
    sub_1ABBE0A90(v0[14]);
    return sub_1ABF24CD4();
  }

  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[14];
  v11 = v0[12];
  (*(v0[17] + 8))(v0[20], v9);
  swift_unknownObjectRelease();

  v7(v8, v10, v9);
  v7(v11, v8, v9);
  v12 = v11 + *(sub_1ABAD219C(&qword_1EB4DACC0, &unk_1ABF69F70) + 28);
  *v12 = 0;
  *(v12 + 8) = 1;

  sub_1ABA7BBE0();

  return v13();
}

uint64_t sub_1ABE311F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);

  sub_1ABA7BBE0();

  return v4();
}

uint64_t String.oneHotEncoding(charList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v37 = a5;
  v7 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  LODWORD(v50) = 0;
  v43 = sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
  v12 = swift_allocObject();
  v42 = xmmword_1ABF3BFC0;
  *(v12 + 16) = xmmword_1ABF3BFC0;
  *(v12 + 32) = 1;
  *(v12 + 40) = sub_1ABF23D44();
  sub_1ABA805B4();
  *(v12 + 48) = sub_1ABF23D44();
  sub_1ABA8FA9C();
  sub_1ABAB47C4(v13, &qword_1EB4D1AA8, &qword_1ABF661A0, v14);
  v44 = v11;
  v15 = v7;
  sub_1ABF23854();
  v16 = sub_1ABF23C84();
  v18 = 0;
  v19 = 0;
  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v16;
  v51 = v17;
  v52 = 0;
  v53 = v20;
  v21 = HIBYTE(a2) & 0xF;
  v39 = a1;
  v40 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v21;
LABEL_6:
  result = sub_1ABF23DE4();
  if (!v23)
  {

    if (v19)
    {
      v34 = v37;
      (*(v36 + 32))(v37, v44, v15);
      v35 = 0;
    }

    else
    {
      (*(v36 + 8))(v44, v15);
      v35 = 1;
      v34 = v37;
    }

    return sub_1ABA7B9B4(v34, v35, 1, v15);
  }

  if (__OFADD__(v18, 1))
  {
    goto LABEL_26;
  }

  v24 = result;
  v25 = v23;
  v41 = v18 + 1;
  v46 = v39;
  v47 = v40;
  v48 = 0;
  v49 = v38;

  for (i = 0; ; ++i)
  {
    result = sub_1ABF23DE4();
    if (!v27)
    {

      v18 = v41;
      goto LABEL_6;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v28 = result;
    v29 = v27;
    v30 = objc_autoreleasePoolPush();
    if (v24 == v28 && v25 == v29)
    {

LABEL_18:
      v33 = swift_allocObject();
      *(v33 + 16) = v42;
      *(v33 + 32) = 0;
      *(v33 + 40) = v18;
      *(v33 + 48) = i;
      v45 = 1065353216;
      sub_1ABF23844();
      v19 = 1;
      goto LABEL_19;
    }

    v32 = sub_1ABF25054();

    if (v32)
    {
      goto LABEL_18;
    }

LABEL_19:
    objc_autoreleasePoolPop(v30);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1ABE315E8()
{
  result = qword_1EB4DA268;
  if (!qword_1EB4DA268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DA268);
  }

  return result;
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonMatcherInferenceServiceDefinition.Runner.__deallocating_deinit()
{
  PersonMatcherInferenceServiceDefinition.Runner.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABE316D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABE3177C;

  return PersonMatcherInferenceServiceDefinition.Runner.run(input:context:)();
}

uint64_t sub_1ABE3177C()
{
  sub_1ABA7BBF8();
  v1 = *v0;
  sub_1ABA7D4E0();
  *v2 = v1;

  sub_1ABA7BBE0();

  return v3();
}

uint64_t static PersonMatcherInferenceServiceDefinition.buildRunner(config:context:)()
{
  sub_1ABA7BBF8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v0[2] = v4;
  v0[3] = v2;
  v0[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABE318D4, 0, 0);
}

uint64_t sub_1ABE318D4()
{
  sub_1ABA7BC04();
  type metadata accessor for PersonMatcherInferenceServiceDefinition.Runner();
  swift_allocObject();

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1ABE31998;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_1ABE30650(v3, v2, v4);
}

uint64_t sub_1ABE31998()
{
  sub_1ABA7BBF8();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABE31AB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABE31B50;

  return static PersonMatcherInferenceServiceDefinition.buildRunner(config:context:)();
}

uint64_t sub_1ABE31B50()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_1ABE31C78(uint64_t a1)
{
  *(a1 + 8) = sub_1ABE31CA8();
  result = sub_1ABE31CFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE31CA8()
{
  result = qword_1EB4DACC8;
  if (!qword_1EB4DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACC8);
  }

  return result;
}

unint64_t sub_1ABE31CFC()
{
  result = qword_1EB4DACD0;
  if (!qword_1EB4DACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACD0);
  }

  return result;
}

unint64_t sub_1ABE31D50(uint64_t a1)
{
  result = sub_1ABE31D78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE31D78()
{
  result = qword_1EB4DACD8;
  if (!qword_1EB4DACD8)
  {
    type metadata accessor for PersonMatcherInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACD8);
  }

  return result;
}

unint64_t sub_1ABE31E14()
{
  result = qword_1EB4DACE8;
  if (!qword_1EB4DACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACE8);
  }

  return result;
}

unint64_t sub_1ABE31E6C()
{
  result = qword_1EB4DACF0;
  if (!qword_1EB4DACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACF0);
  }

  return result;
}

_BYTE *sub_1ABE31EF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE31FA4()
{
  result = qword_1EB4DACF8;
  if (!qword_1EB4DACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DACF8);
  }

  return result;
}

unint64_t sub_1ABE31FFC()
{
  result = qword_1EB4DAD00;
  if (!qword_1EB4DAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD00);
  }

  return result;
}

unint64_t sub_1ABE32054()
{
  result = qword_1EB4DAD08;
  if (!qword_1EB4DAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD08);
  }

  return result;
}

uint64_t sub_1ABE320AC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A32C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE3401C(v6);
  *a1 = v2;
  return result;
}

uint64_t PersonRankingServiceError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000034;
  }

  result = sub_1ABF250D4();
  __break(1u);
  return result;
}

uint64_t sub_1ABE321A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1ABE321F8@<X0>(uint64_t a1@<X8>)
{
  result = PersonRankingServiceError.init(rawValue:)();
  *a1 = 0;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1ABE3222C(uint64_t a1)
{
  v2 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1ABE32268(uint64_t a1)
{
  v2 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1ABE322E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE35004();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id PersonRankingService.__allocating_init(config:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonRankingService.init(config:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonRankingService();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1ABE32418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABE324E8(char a1)
{
  if (a1)
  {
    return 7368564;
  }

  else
  {
    return 0x6574696D696C6E75;
  }
}

uint64_t sub_1ABE32524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE32418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE3254C(uint64_t a1)
{
  v2 = sub_1ABE32980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32588(uint64_t a1)
{
  v2 = sub_1ABE32980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE325C4(uint64_t a1)
{
  v2 = sub_1ABE329D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32600(uint64_t a1)
{
  v2 = sub_1ABE329D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3263C(uint64_t a1)
{
  v2 = sub_1ABE32A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE32678(uint64_t a1)
{
  v2 = sub_1ABE32A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonRankingService.RankingMode.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DAD18, &qword_1ABF6A250);
  sub_1ABA7BB64();
  v26 = v4;
  v27 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v25 = v22 - v6;
  sub_1ABAD219C(&qword_1EB4DAD20, &qword_1ABF6A258);
  sub_1ABA7BB64();
  v23 = v8;
  v24 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4DAD28, &qword_1ABF6A260);
  sub_1ABA7BB64();
  v14 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v22[1] = *v1;
  v18 = *(v1 + 8);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE32980();
  sub_1ABF252E4();
  if (v18 == 1)
  {
    v28 = 0;
    sub_1ABE32A28();
    sub_1ABF24EC4();
    (*(v23 + 8))(v11, v24);
  }

  else
  {
    v29 = 1;
    sub_1ABE329D4();
    v20 = v25;
    sub_1ABF24EC4();
    v21 = v27;
    sub_1ABF24F74();
    (*(v26 + 8))(v20, v21);
  }

  return (*(v14 + 8))(v17, v12);
}

unint64_t sub_1ABE32980()
{
  result = qword_1EB4DAD30;
  if (!qword_1EB4DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD30);
  }

  return result;
}

unint64_t sub_1ABE329D4()
{
  result = qword_1EB4DAD38;
  if (!qword_1EB4DAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD38);
  }

  return result;
}

unint64_t sub_1ABE32A28()
{
  result = qword_1EB4DAD40;
  if (!qword_1EB4DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD40);
  }

  return result;
}

uint64_t PersonRankingService.RankingMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v52 = sub_1ABAD219C(&qword_1EB4DAD48, &qword_1ABF6A268);
  sub_1ABA7BB64();
  v50 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4DAD50, &qword_1ABF6A270);
  sub_1ABA7BB64();
  v48 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4DAD58, &qword_1ABF6A278);
  sub_1ABA7BB64();
  v51 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE32980();
  v17 = v53;
  sub_1ABF252C4();
  if (v17)
  {
    goto LABEL_9;
  }

  v45 = v7;
  v46 = v11;
  v47 = a1;
  v18 = v52;
  v53 = v16;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  if (v21 == v22 >> 1)
  {
LABEL_8:
    v32 = sub_1ABF24B44();
    swift_allocError();
    v34 = v33;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v34 = &type metadata for PersonRankingService.RankingMode;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = sub_1ABA7F958();
    v36(v35, v12);
    a1 = v47;
LABEL_9:
    v37 = a1;
    return sub_1ABA84B54(v37);
  }

  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_1ABAD4E90();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v50;
    if (v28)
    {
      v54 = v23;
      if (v23)
      {
        v56 = 1;
        sub_1ABE329D4();
        v30 = v6;
        sub_1ABA939A8(&type metadata for PersonRankingService.RankingMode.TopCodingKeys, &v56);
        v31 = v49;
        v39 = sub_1ABF24E54();
        v40 = v51;
        v43 = v39;
        swift_unknownObjectRelease();
        (*(v29 + 8))(v30, v18);
        (*(v40 + 8))(v53, v12);
      }

      else
      {
        v55 = 0;
        sub_1ABE32A28();
        v38 = v46;
        sub_1ABA939A8(&type metadata for PersonRankingService.RankingMode.UnlimitedCodingKeys, &v55);
        v31 = v49;
        swift_unknownObjectRelease();
        (*(v48 + 8))(v38, v45);
        v41 = sub_1ABA7F958();
        v42(v41, v12);
        v43 = 0;
      }

      *v31 = v43;
      *(v31 + 8) = v54 ^ 1;
      v37 = v47;
      return sub_1ABA84B54(v37);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE32FB8(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  return sub_1ABE330AC(&v2);
}

uint64_t sub_1ABE330AC(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = *(a1 + 8);
  LOBYTE(__src[0]) = 1;
  v7 = type metadata accessor for ViewService();
  v8 = static ViewService.clientService.getter(v7);
  type metadata accessor for EntityResolutionRankingService();
  swift_allocObject();
  EntityResolutionRankingService.init(config:viewService:)(__src, v8);
  if (v2)
  {
    return v3;
  }

  sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityClass_records)
  {
    v10 = inited;
    HIDWORD(v58) = v6;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v68);
    v11 = v69;
    v12 = v70;
    v13 = v71;
    *(v10 + 32) = v68;
    *(v10 + 48) = v11;
    *(v10 + 56) = v12;
    *(v10 + 64) = v13;
    sub_1ABA8DEF4(v10, v14, v15, v16, v17, v18, v19, v20, v56, v57, v58, v5, SBYTE4(v5), v4, v59, v61, v63, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v66[0], v66[1], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
    v22 = v21;
    sub_1ABB3E374(0, 0, 0, 0, 16711680);
    v72 = 1;
    __src[0] = v22;
    memset(&__src[1], 0, 34);
    BYTE2(__src[5]) = -1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 2;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    memcpy(__dst, __src, 0x49uLL);
    sub_1ABBC84B4(0, __dst, v66);
    v23 = v66[0];
    sub_1ABB668FC();
    v24 = sub_1ABF239C4();
    v25 = sub_1ABAAB7C8(v23);
    v26 = 0;
    v62 = v23 & 0xC000000000000001;
    v64 = v23;
    v60 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25 == v26)
      {

        sub_1ABE3367C(v24);

        v41 = sub_1ABA81124();
        v3 = sub_1ABE33C90(v41, v42);
        sub_1ABB3E408(__src);

        return v3;
      }

      if (v62)
      {
        v27 = MEMORY[0x1AC5AA170](v26, v64);
      }

      else
      {
        if (v26 >= *(v60 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(v64 + 8 * v26 + 32);
      }

      if (__OFADD__(v26, 1))
      {
        break;
      }

      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v24;
      v30 = sub_1ABAF81A8();
      v32 = v24[2];
      v33 = (v31 & 1) == 0;
      v24 = (v32 + v33);
      if (__OFADD__(v32, v33))
      {
        goto LABEL_28;
      }

      v34 = v30;
      v35 = v31;
      sub_1ABAD219C(&qword_1EB4D5700, &qword_1ABF4AD08);
      if (sub_1ABF24C64())
      {
        v36 = sub_1ABAF81A8();
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_31;
        }

        v34 = v36;
      }

      v24 = __dst[0];
      if (v35)
      {
        *(*(__dst[0] + 56) + 8 * v34) = v29;
      }

      else
      {
        *(__dst[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
        *(v24[6] + 8 * v34) = v28;
        *(v24[7] + 8 * v34) = v29;

        v38 = v24[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_29;
        }

        v24[2] = v40;
      }

      ++v26;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    swift_once();
    v43 = sub_1ABF237F4();
    sub_1ABA7AA24(v43, qword_1EB4CE7C8);
    v44 = v24;
    v45 = sub_1ABF237D4();
    v46 = sub_1ABF24684();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v24;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v47;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_1ABA78000, v45, v46, "Error in fetching ranked entities: %@", v48, 0xCu);
      sub_1ABB24B18(v49);
      MEMORY[0x1AC5AB8B0](v49, -1, -1);
      v52 = v48;
      v24 = v47;
      MEMORY[0x1AC5AB8B0](v52, -1, -1);
    }

    sub_1ABB668FC();
    v3 = sub_1ABF239C4();
    sub_1ABE3367C(v3);

    if (v25)
    {

      sub_1ABB3E408(__src);
    }

    else
    {
      v53 = sub_1ABA81124();
      v3 = sub_1ABE33C90(v53, v54);
      sub_1ABB3E408(__src);
    }

    return v3;
  }

  __break(1u);
LABEL_31:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE3367C(uint64_t a1)
{
  v4 = type metadata accessor for ViewService();
  v5 = static ViewService.clientService.getter(v4);
  ViewService.entityImportanceSignalsView.getter(v27);

  if (!v1)
  {
    v24 = a1;
    v29[0] = v27[0];
    v29[1] = v27[1];
    v30 = v28;
    *&v27[0] = MEMORY[0x1E69E7CC0];
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAD219C(&qword_1EB4D3BB8, &qword_1ABF3F758);
    sub_1ABF22464();

    v8 = *(v26 + 16);
    if (v8)
    {
      v9 = (v26 + 56);
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *(v9 - 16);
        v11 = *(v9 - 15);
        v12 = *(v9 - 14);
        v13 = *(v9 - 1);
        v14 = *v9;
        v15 = 0.0;
        v25 = *(v9 - 3);
        if (*(v24 + 16))
        {
          v16 = sub_1ABAF81A8();
          if (v17)
          {
            v15 = *(*(v24 + 56) + 8 * v16);
          }
        }

        v18 = sub_1ABE3390C(v10, v11, v12, v15, v13, v14);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADC9A8();
          v2 = v22;
        }

        v19 = *(v2 + 16);
        v20 = v25;
        if (v19 >= *(v2 + 24) >> 1)
        {
          sub_1ABADC9A8();
          v2 = v23;
          v20 = v25;
        }

        v9 += 4;
        *(v2 + 16) = v19 + 1;
        v21 = v2 + 16 * v19;
        *(v21 + 32) = v20;
        *(v21 + 40) = v18;
        --v8;
      }

      while (v8);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABE35058(v29);
  }

  return v2;
}

double sub_1ABE3390C(char a1, char a2, char a3, double a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC20IntelligencePlatform20PersonRankingService_config);
  [v12 isFavoriteMultiplier];
  v13 = 1;
  if (v14 != 0.0 && (a1 & 1) != 0)
  {
    [v12 isFavoriteMultiplier];
    a4 = v15 + a4;
    v13 = 2;
  }

  [v12 emergencyContactMultiplier];
  if (v16 != 0.0 && (a2 & 1) != 0)
  {
    [v12 emergencyContactMultiplier];
    a4 = a4 + v17;
    ++v13;
  }

  [v12 iCloudFamilyMemberMultiplier];
  if (v18 != 0.0 && (a3 & 1) != 0)
  {
    [v12 iCloudFamilyMemberMultiplier];
    a4 = a4 + v19;
    ++v13;
  }

  [v12 relationshipTagMultiplier];
  if (v20 != 0.0 && a6 != 0)
  {
    v22 = sub_1ABAE28EC();
    v29 = sub_1ABA8FAB4(v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v27, v28, 0x726170646E617267);
    if (v29 & 1) != 0 || (v36 = sub_1ABA8FAB4(v29, MEMORY[0x1E69E6158], v30, v31, v32, v33, v34, v35, 0x72656E74726170), (v36) || (v43 = sub_1ABA8FAB4(v36, MEMORY[0x1E69E6158], v37, v38, v39, v40, v41, v42, 0xD000000000000010), (v43) || (v50 = sub_1ABA8FAB4(v43, MEMORY[0x1E69E6158], v44, v45, v46, v47, v48, v49, 0x646E65697266), (v50) || (v57 = sub_1ABA8FAB4(v50, MEMORY[0x1E69E6158], v51, v52, v53, v54, v55, v56, 0x746E65726170), (v57) || (v64 = sub_1ABA8FAB4(v57, MEMORY[0x1E69E6158], v58, v59, v60, v61, v62, v63, 0x796C696D6166), (v64) || (v71 = sub_1ABA8FAB4(v64, MEMORY[0x1E69E6158], v65, v66, v67, v68, v69, v70, 0x646C696863), (v71) || (v78 = sub_1ABA8FAB4(v71, MEMORY[0x1E69E6158], v72, v73, v74, v75, v76, v77, 0x676E696C626973), (v78) || (v85 = sub_1ABA8FAB4(v78, MEMORY[0x1E69E6158], v79, v80, v81, v82, v83, v84, 0x726574736973), (v85) || (v92 = sub_1ABA8FAB4(v85, MEMORY[0x1E69E6158], v86, v87, v88, v89, v90, v91, 0x726568746F7262), (v92) || (v99 = sub_1ABA8FAB4(v92, MEMORY[0x1E69E6158], v93, v94, v95, v96, v97, v98, 0x726568746F6DLL), (v99) || (v106 = sub_1ABA8FAB4(v99, MEMORY[0x1E69E6158], v100, v101, v102, v103, v104, v105, 0x726568746166), (v106) || (v113 = sub_1ABA8FAB4(v106, MEMORY[0x1E69E6158], v107, v108, v109, v110, v111, v112, 7237491), (v113) || (sub_1ABA8FAB4(v113, MEMORY[0x1E69E6158], v114, v115, v116, v117, v118, v119, 0x7265746867756164))
    {
      [v12 relationshipTagMultiplier];
      a4 = a4 + v120;
      ++v13;
    }
  }

  return a4 / v13;
}

void *sub_1ABE33C90(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v32[0] = a1;

  sub_1ABE320AC(v32);
  v5 = v2;
  if (v2)
  {

    __break(1u);
    return result;
  }

  v6 = v32[0];
  v7 = *(v32[0] + 16);
  if (v7)
  {
    v31 = v3;
    v33 = 0;
    v32[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDFFC(0, v7, 0);
    v8 = v32[0];
    v9 = *(v32[0] + 16);
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v32[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1ABADDFFC((v12 > 1), v9 + 1, 1);
        v8 = v32[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 8 * v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v7;
    }

    while (v7);

    v5 = v33;
    v3 = v31;
    if (v4)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      goto LABEL_19;
    }
  }

  v13 = sub_1ABD52C40(v3, v8);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ((v18 & 1) == 0)
  {
LABEL_11:
    sub_1ABB63444(v13, v15, v17, v19);
    v8 = v20;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v19 >> 1, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v22 != (v19 >> 1) - v17)
  {
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

LABEL_19:
  v23 = type metadata accessor for ViewService();
  v24 = static ViewService.clientService.getter(v23);
  v25 = v24;
  v26 = ViewService.siriPersonView.getter();
  if (v5)
  {
  }

  else
  {
    v27 = v26;
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();

    v28 = sub_1ABAE6998();
    v32[0] = v27;
    v32[1] = v28;
    SiriPersonView.fetchValues(entityIdentifier:)(v8);
    v25 = v30;
  }

  return v25;
}

id PersonRankingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonRankingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonRankingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABE3401C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4DADD0, qword_1ABF6A7B0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE34190(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABE34120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE34120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABE34190(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (*(v33 - 1) >= v31)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v8 = v79;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1ABE347A0((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABE34674(&v86, *a1, a3);
LABEL_89:
}

uint64_t sub_1ABE34674(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABE347A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABE347A0(char *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAE3050(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1ABAE3050(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t sub_1ABE34928()
{
  result = qword_1EB4DAD60;
  if (!qword_1EB4DAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD60);
  }

  return result;
}

unint64_t sub_1ABE34980()
{
  result = qword_1EB4DAD68;
  if (!qword_1EB4DAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD68);
  }

  return result;
}

unint64_t sub_1ABE349DC()
{
  result = qword_1EB4DAD70;
  if (!qword_1EB4DAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD70);
  }

  return result;
}

unint64_t sub_1ABE34A38()
{
  result = qword_1EB4DAD78;
  if (!qword_1EB4DAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonRankingService.RankingMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonRankingService.RankingMode.TopCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE34D04()
{
  result = qword_1EB4DAD80;
  if (!qword_1EB4DAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD80);
  }

  return result;
}

unint64_t sub_1ABE34D5C()
{
  result = qword_1EB4DAD88;
  if (!qword_1EB4DAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD88);
  }

  return result;
}

unint64_t sub_1ABE34DB4()
{
  result = qword_1EB4DAD90;
  if (!qword_1EB4DAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD90);
  }

  return result;
}

unint64_t sub_1ABE34E0C()
{
  result = qword_1EB4DAD98;
  if (!qword_1EB4DAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAD98);
  }

  return result;
}

unint64_t sub_1ABE34E64()
{
  result = qword_1EB4DADA0;
  if (!qword_1EB4DADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADA0);
  }

  return result;
}

unint64_t sub_1ABE34EBC()
{
  result = qword_1EB4DADA8;
  if (!qword_1EB4DADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADA8);
  }

  return result;
}

unint64_t sub_1ABE34F14()
{
  result = qword_1EB4DADB0;
  if (!qword_1EB4DADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADB0);
  }

  return result;
}

unint64_t sub_1ABE34F6C()
{
  result = qword_1EB4DADB8;
  if (!qword_1EB4DADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADB8);
  }

  return result;
}

unint64_t sub_1ABE34FC0()
{
  result = qword_1EB4DADC0;
  if (!qword_1EB4DADC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DADC0);
  }

  return result;
}

unint64_t sub_1ABE35004()
{
  result = qword_1EB4DADC8;
  if (!qword_1EB4DADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DADC8);
  }

  return result;
}

uint64_t sub_1ABE350AC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CEDE0);
  sub_1ABA7AA24(v0, qword_1EB4CEDE0);
  return sub_1ABF22CE4();
}

uint64_t sub_1ABE3527C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  v53 = a1;
  v47 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v47 - v6);
  if (qword_1EB4CEDD8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v8, qword_1EB4CEDE0);
  v63 = a2;
  v57 = sub_1ABF22D14();
  v58 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(&v55);
  v49 = "familyandfriends";
  sub_1ABF22D24();
  v61 = sub_1ABF22424();
  v62 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v59);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(&v55);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v59);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v9 = v54;
  a2 = v7;
  v10 = sub_1ABF22294();
  v11 = v9;
  v12 = *(v5 + 8);
  v5 += 8;
  result = v12(v7, v4);
  if (!v9)
  {
    v14 = sub_1ABAAB7C8(v10);
    v7 = 0;
    v52 = v10 & 0xC000000000000001;
    v53 = v14;
    v15 = MEMORY[0x1E69E7CC8];
    v51 = v10 & 0xFFFFFFFFFFFFFF8;
    v4 = v10;
    v48 = v10;
    while (1)
    {
      if (v53 == v7)
      {

        *v47 = v15;
        return result;
      }

      if (v52)
      {
        MEMORY[0x1AC5AA170](v7, v4);
      }

      else
      {
        if (v7 >= *(v51 + 16))
        {
          goto LABEL_28;
        }
      }

      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB32E40();
      if (v11)
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      sub_1ABB370C4(&v59);
      v54 = 0;
      if (v60)
      {
        v5 = sub_1ABA94FC8(v18, v19, v20, v21, v22, v23, v24, v25, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
        a2 = v26;

        if (a2)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v55 = v15;
          sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
          a2 = &v55;
          v4 = v48;
          sub_1ABF24C64();
          v15 = v55;

          sub_1ABF24C84();
        }
      }

      else
      {
        v50 = v59;
        swift_isUniquelyReferenced_nonNull_native();
        a2 = v15;
        v33 = sub_1ABA94FC8(v18, v19, v27, v28, v29, v30, v31, v32, v47, v48, v49, v50, v51, v52, v53, v54, v15, v56);
        if (__OFADD__(v15[2], (v34 & 1) == 0))
        {
          goto LABEL_29;
        }

        v4 = v33;
        v5 = v34;
        sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
        a2 = &v55;
        if (sub_1ABF24C64())
        {
          a2 = v55;
          v41 = sub_1ABA94FC8(v18, v19, v35, v36, v37, v38, v39, v40, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          if ((v5 & 1) != (v42 & 1))
          {
            goto LABEL_33;
          }

          v4 = v41;
        }

        if (v5)
        {

          v15 = v55;
          *(v55[7] + 8 * v4) = v50;
        }

        else
        {
          v15 = v55;
          v55[(v4 >> 6) + 8] |= 1 << v4;
          v43 = (v15[6] + 16 * v4);
          *v43 = v18;
          v43[1] = v19;
          *(v15[7] + 8 * v4) = v50;

          v44 = v15[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_30;
          }

          v15[2] = v46;
        }

        v4 = v48;
      }

      v11 = v54;
      v7 = (v7 + 1);
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t PHPersonIdentifierMapView.phPersonIdentifier(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v3;
  sub_1ABB2C288();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DA830, qword_1ABF67A78);
  v6 = v4;
  sub_1ABF22464();

  if (!v2)
  {
    v6 = sub_1ABB2BBF4(v8);
  }

  return v6;
}

uint64_t sub_1ABE3593C@<X0>(char *a1@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  v37 = a1;
  v31 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  isUniquelyReferenced_nonNull_native = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  if (qword_1EB4CEDD8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v8, qword_1EB4CEDE0);
  v40[6] = a2;
  v39[3] = sub_1ABF22D14();
  v39[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v39);
  sub_1ABF22D24();
  v40[3] = sub_1ABF22424();
  v40[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v40);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20, MEMORY[0x1E69E6508]);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v39);
  sub_1ABF22CA4();
  sub_1ABA84B54(v40);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v9 = v38;
  a2 = v7;
  v10 = sub_1ABF22294();
  v11 = *(isUniquelyReferenced_nonNull_native + 8);
  isUniquelyReferenced_nonNull_native += 8;
  v12 = v4;
  v4 = v9;
  result = v11(v7, v12);
  if (!v9)
  {
    v14 = sub_1ABAAB7C8(v10);
    v7 = 0;
    v35 = v10 & 0xC000000000000001;
    v36 = v14;
    v34 = v10 & 0xFFFFFFFFFFFFFF8;
    v15 = MEMORY[0x1E69E7CC8];
    v32 = v10;
    v33 = "familyandfriends";
    while (1)
    {
      if (v36 == v7)
      {

        *v31 = v15;
        return result;
      }

      if (v35)
      {
        MEMORY[0x1AC5AA170](v7, v10);
      }

      else
      {
        if (v7 >= *(v34 + 16))
        {
          goto LABEL_28;
        }
      }

      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB33F2C(25705, 0xE200000000000000);
      if (v4)
      {
        break;
      }

      v16 = v40[0];
      v17 = sub_1ABB36D74(0xD000000000000012, v33 | 0x8000000000000000);
      if (v18)
      {
        v19 = v18;
        v37 = v7;
        v38 = 0;
        v7 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39[0] = v15;
        a2 = v15;
        v20 = sub_1ABAF81A8();
        if (__OFADD__(*(v15 + 16), (v21 & 1) == 0))
        {
          goto LABEL_29;
        }

        v22 = v20;
        v4 = v21;
        sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
        a2 = v39;
        if (sub_1ABF24C64())
        {
          a2 = v39[0];
          v23 = sub_1ABAF81A8();
          if ((v4 & 1) != (v24 & 1))
          {
            goto LABEL_33;
          }

          v22 = v23;
        }

        v15 = v39[0];
        if (v4)
        {
          v25 = (*(v39[0] + 56) + 16 * v22);
          a2 = v25[1];
          *v25 = v7;
          v25[1] = v19;
        }

        else
        {
          *(v39[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          *(*(v15 + 48) + 8 * v22) = v16;
          v27 = (*(v15 + 56) + 16 * v22);
          *v27 = v7;
          v27[1] = v19;

          v28 = *(v15 + 16);
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_30;
          }

          *(v15 + 16) = v30;
        }

        v7 = v37;
        v4 = v38;
        v10 = v32;
      }

      else
      {
        a2 = v15;
        sub_1ABAF81A8();
        if (v26)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39[0] = v15;
          sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
          a2 = v39;
          v10 = v32;
          sub_1ABF24C64();
          v15 = v39[0];

          sub_1ABB668FC();
          sub_1ABF24C84();
        }
      }

      ++v7;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

double PriorityQueue.init(usingComparator:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;

  Heap.init(usingComparator:)(a1, a2, &v9);
  v7 = v10;
  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v7;
  return result;
}

void PriorityQueue.push(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Heap(0, *(a2 + 16), a3, a4);

  Heap.append(_:)();
}

uint64_t PriorityQueue.peek()()
{
  sub_1ABA7DF3C();
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF24544();
}

void PriorityQueue.pop()()
{
  v0 = sub_1ABA7DF3C();
  type metadata accessor for Heap(v0, v1, v2, v3);

  Heap.removeRoot()();
}

uint64_t static PriorityQueue<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PriorityQueue(0, a3, a3, a4);
  v4 = PriorityQueue.count.getter();
  if (v4 == PriorityQueue.count.getter())
  {
    sub_1ABA8FAD8();
    swift_getWitnessTable();
    v5 = sub_1ABF24004();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PriorityQueue.count.getter()
{
  v0 = sub_1ABA7DF3C();
  v4 = type metadata accessor for Heap(v0, v1, v2, v3);
  return j___s20IntelligencePlatform4HeapV19underestimatedCountSivg(v4);
}

void PriorityQueue.Iterator.next()()
{
  v0 = sub_1ABA7DF3C();
  type metadata accessor for PriorityQueue(v0, v1, v2, v3);

  PriorityQueue.pop()();
}

uint64_t PriorityQueue.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  return sub_1ABE36260(v5);
}

uint64_t sub_1ABE36260(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ABE36270@<X0>(void *a1@<X8>)
{
  PriorityQueue.makeIterator()(a1);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);

  return sub_1ABAC9398(v3, v2);
}

uint64_t PriorityQueue.description.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF92EC0);
  PriorityQueue.count.getter();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](2112041, 0xE300000000000000);

  sub_1ABE36260(v2);
  sub_1ABA8FAD8();
  swift_getWitnessTable();
  sub_1ABF24214();
  sub_1ABF241F4();
  swift_getWitnessTable();
  sub_1ABF25034();

  return 0;
}

uint64_t sub_1ABE36468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABE364A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABE364BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABE36518()
{
  *&__src[0] = 7370352;
  *(&__src[0] + 1) = 0xE300000000000000;
  *&__src[1] = &unk_1F208E698;
  *(&__src[1] + 1) = 111;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002FLL;
  *(&__src[3] + 1) = 0x80000001ABF92F00;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE365E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  if (!*(a6 + 32))
  {
    goto LABEL_41;
  }

  v10 = sub_1ABAE305C();

  if (!v10)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v11 = *(v10 + 16);

  v12 = sub_1ABE8AE5C(v11);
  if (!*(v12 + 16))
  {

LABEL_12:
    if (qword_1ED86E458 != -1)
    {
      sub_1ABA8F02C(&qword_1ED86E458);
    }

    v19 = sub_1ABF237F4();
    sub_1ABA7AA24(v19, qword_1ED86E460);
    v20 = sub_1ABF237D4();
    v21 = sub_1ABF24664();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Pvp operator has empty predicates", v22, 2u);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);
    }

    goto LABEL_40;
  }

  v13 = a2 + *(type metadata accessor for QueryContext(0) + 32);
  v14 = *(v13 + 88);
  v15 = *(v13 + 104);
  if (v14 >> 1 == 0xFFFFFFFF && (v15 & 0x1E) == 0)
  {
    v80 = 0;
    v23 = MEMORY[0x1E69E7CD0];
    v79 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(a6 + 32) && (v24 = sub_1ABAE305C()) != 0)
    {
      v25 = v24;
      swift_endAccess();
      swift_beginAccess();
      v26 = *(v25 + 16);
    }

    else
    {
      swift_endAccess();
      v26 = MEMORY[0x1E69E7CC0];
    }

    v27 = *(v26 + 16);
    v52 = v12;
    if (v27)
    {
      v28 = (v26 + 40);
      while (1)
      {
        v30 = *(v28 - 1);
        v29 = *v28;

        if (sub_1ABF23E64())
        {
          if (!v79)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v31 = v80;
          if (!v80)
          {
            v31 = v23;
          }

          v80 = v31;
        }

        sub_1ABB1840C(__dst, v30, v29);
LABEL_29:

        v28 += 2;
        if (!--v27)
        {

          v32 = v80;
          v33 = v79;
          goto LABEL_34;
        }
      }
    }

    v32 = 0;
    v33 = MEMORY[0x1E69E7CD0];
LABEL_34:
    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1ABF34060;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    v35 = sub_1ABE9059C(v34);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if (v35)
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C(&qword_1ED86E458);
      }

      v37 = sub_1ABF237F4();
      sub_1ABA7AA24(v37, qword_1ED86E460);
      v20 = sub_1ABF237D4();
      v38 = sub_1ABF24664();
      if (os_log_type_enabled(v20, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1ABA78000, v20, v38, "Pvp operator has empty terms for O arg", v39, 2u);
        MEMORY[0x1AC5AB8B0](v39, -1, -1);
      }

LABEL_40:

LABEL_41:
      v18 = 0;
      *(a1 + 10) = 0;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      *(a1 + 88) = xmmword_1ABF34940;
      a1[104] = 0;
      return v18 & 1;
    }

    LOBYTE(v70[0]) = 0;
    v70[1] = 0;
    LOBYTE(v71) = 0;
    v72 = v52;
    LOBYTE(v73) = 0;
    v74 = v32;
    LOBYTE(v75) = 0;
    v76 = 0;
    LOBYTE(v77) = 0;
    v78 = 0;
    v41 = v70[0];
    v42 = v71;
    v43 = v73;
    v44 = v75;
    v45 = 0uLL;
    v46 = v77;
    if (v33)
    {
      if (*(v33 + 16))
      {
        if (v32)
        {
          LOBYTE(v61[0]) = 0;
          v61[1] = 0;
          LOBYTE(v62) = 0;
          v63 = v52;
          LOBYTE(v64) = 0;
          v65 = 0;
          LOBYTE(v66) = 0;
          v67 = v33;
          LOBYTE(v68) = 0;
          v69 = 0;
          __src[0] = v70[0];
          *&__src[1] = v71;
          *(&__src[1] + 1) = v52;
          *&__src[2] = v73;
          *(&__src[2] + 1) = v32;
          __src[3] = v75;
          __src[4] = v77;
          *(&__src[5] + 1) = 0;
          BYTE8(__src[6]) = 32;
          v55[0] = v61[0];
          v55[1] = 0;
          v55[2] = v62;
          v55[3] = v52;
          v55[4] = v64;
          v55[5] = 0;
          v55[6] = v66;
          v55[7] = v33;
          v55[8] = v68;
          v55[9] = 0;
          v55[11] = 0;
          LOBYTE(v55[13]) = 32;
          v54 = 1;
          IndexQuery.TriplesIndexQuery.combine(query:combineType:)(__dst, v55, &v54);

          sub_1ABB420A4(v61);
          sub_1ABB420A4(v70);

          v41 = __dst[0];
          v47 = __dst[1];
          v42 = __dst[2];
          v48 = __dst[3];
          v43 = __dst[4];
          v32 = __dst[5];
          v44 = __dst[6];
          v33 = __dst[7];
          v46 = __dst[8];
          v36 = v59;
          v49 = v58 & 1;
          v50 = v60 & 0xE1;
          v45 = *&__dst[9];
        }

        else
        {

          v48 = v52;

          sub_1ABB420A4(v70);
          v45 = 0uLL;
          v41 = 0;
          v47 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = 0;
          v49 = 0;
          v50 = 32;
        }

        goto LABEL_50;
      }

      v51 = v70[0];

      v45 = 0uLL;
      v41 = v51;
      v47 = 0;
      v33 = 0;
    }

    else
    {
      v47 = 0;
    }

    v49 = 0;
    v50 = 32;
    v48 = v52;
LABEL_50:
    *a1 = v41;
    *(a1 + 1) = v47;
    *(a1 + 2) = v42;
    *(a1 + 3) = v48;
    *(a1 + 4) = v43;
    *(a1 + 5) = v32;
    *(a1 + 6) = v44;
    *(a1 + 7) = v33;
    *(a1 + 8) = v46;
    *(a1 + 72) = v45;
    *(a1 + 11) = v49;
    *(a1 + 12) = v36;
    v18 = 1;
    a1[104] = v50;
    return v18 & 1;
  }

  v17 = *(v13 + 96);
  memcpy(__dst, v13, sizeof(__dst));
  v58 = v14;
  v59 = v17;
  v60 = v15;
  memset(__src, 0, 24);
  *(&__src[1] + 1) = v12;
  *(&__src[5] + 1) = 0;
  memset(&__src[2], 0, 48);
  BYTE8(__src[6]) = 32;
  LOBYTE(v70[0]) = 0;
  sub_1ABE3A1C8();
  memcpy(v55, __src, 0x69uLL);
  sub_1ABAE4B6C(v55);
  if (!v6)
  {
    memcpy(a1, v53, 0x69uLL);
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_1ABE36CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABE713BC();
  v4 = sub_1ABE713BC();
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v24 = v4;
  v7 = (a3 + 32);
  v8 = v5 - 1;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = memcpy(__dst, v7, 0x58uLL);
    v10 = __dst[6];
    if (__dst[7])
    {
      v11 = __dst[7];
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    if (__dst[9])
    {
      v12 = __dst[8];
    }

    else
    {
      v12 = 0;
    }

    if (__dst[9])
    {
      v13 = __dst[9];
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v26[11] = v10;
    v26[12] = v11;
    MEMORY[0x1EEE9AC00](v9);
    sub_1ABB242A4(__dst, v26);

    v14 = sub_1ABB2F764();

    if (!v14)
    {
      sub_1ABB24250(__dst);

      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (!*(v24 + 16))
    {
      break;
    }

    v26[0] = v12;
    v26[1] = v13;
    MEMORY[0x1EEE9AC00](v15);
    v16 = sub_1ABB2F764();

    if (v16)
    {
      goto LABEL_20;
    }

    sub_1ABB24250(__dst);
    if (!v8)
    {
      goto LABEL_27;
    }

LABEL_25:
    --v8;
    v7 += 88;
  }

LABEL_20:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v17 = v25;
  }

  else
  {
    sub_1ABAD8758();
    v17 = v19;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_1ABAD8758();
    v17 = v20;
  }

  *(v17 + 16) = v18 + 1;
  v25 = v17;
  memcpy((v17 + 88 * v18 + 32), __dst, 0x58uLL);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_27:

  v6 = MEMORY[0x1E69E7CC0];
  v21 = v25;
LABEL_29:
  type metadata accessor for ResultGraph();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1ABF239C4();
  *(v22 + 24) = v6;
  LOBYTE(__dst[0]) = 0;
  sub_1ABE489A8(v21, __dst);
  return v21;
}

uint64_t sub_1ABE3701C()
{
  *&__src[0] = 1952802673;
  *(&__src[0] + 1) = 0xE400000000000000;
  *&__src[1] = &unk_1F208E6D8;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002BLL;
  *(&__src[3] + 1) = 0x80000001ABF92F50;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

void sub_1ABE370E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a3 + 64;
    while (1)
    {
      v6 = *(v5 + 48);
      v7 = *(v6 + 16);
      v8 = *(v4 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      v16 = v3;

      swift_bridgeObjectRetain_n();

      if (!swift_isUniquelyReferenced_nonNull_native() || (v9 = *(v4 + 24) >> 1, v9 < v8 + v7))
      {
        sub_1ABAD8758();
        v4 = v10;
        v9 = *(v10 + 24) >> 1;
      }

      if (*(v6 + 16))
      {
        if (v9 - *(v4 + 16) < v7)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v4 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_18;
          }

          *(v4 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v5 += 88;
      v3 = v16 - 1;
      if (v16 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    type metadata accessor for ResultGraph();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = sub_1ABF239C4();
    *(v14 + 24) = v15;
    v17 = 2;
    sub_1ABE489A8(v4, &v17);
  }
}

uint64_t sub_1ABE37324()
{
  v0 = sub_1ABE3701C();
  memcpy(v2, (v0 + 16), sizeof(v2));
  *(v0 + 16) = 0x746567706F727071;
  *(v0 + 24) = 0xE800000000000000;
  *(v0 + 32) = &unk_1F208E708;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000041;
  *(v0 + 72) = 0x80000001ABF92FB0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

void sub_1ABE373DC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  switch(*(a1 + 64))
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      *a2 = *(a1 + 64);
      break;
    case 2:
      sub_1ABAF2860();
      swift_allocError();
      *v2 = 0xD000000000000028;
      *(v2 + 8) = 0x80000001ABF93000;
      *(v2 + 16) = 2;
      swift_willThrow();
      break;
    default:
      *a2 = 6;
      break;
  }
}

uint64_t sub_1ABE37488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    swift_beginAccess();
    if (*(a6 + 32) && (v10 = sub_1ABAE305C()) != 0)
    {
      v11 = v10;
      swift_endAccess();
      swift_beginAccess();
      v12 = *(v11 + 16);
    }

    else
    {
      swift_endAccess();
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = sub_1ABE8AE5C(v12);
    swift_beginAccess();
    if (*(a6 + 32) && (v14 = sub_1ABAE305C()) != 0)
    {
      v15 = v14;
      swift_endAccess();
      swift_beginAccess();
      v16 = *(v15 + 16);
    }

    else
    {
      swift_endAccess();
      v16 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1ABE8AE5C(v16);
    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1ABF34060;
    *(v18 + 32) = v13;
    *(v18 + 40) = v17;
    v19 = sub_1ABE9059C(v18);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if ((v19 & 1) == 0)
    {
      v25 = a2 + *(type metadata accessor for QueryContext(0) + 32);
      v27 = *(v25 + 88);
      v28 = *(v25 + 104);
      v29 = 32;
      if (v27 >> 1 != 0xFFFFFFFF || (*(v25 + 104) & 0x1E) != 0)
      {
        v36 = *(v25 + 96);
        memcpy(__dst, v25, sizeof(__dst));
        v41 = v27;
        v42 = v36;
        v43 = v28;
        memset(__src, 0, 56);
        *(&__src[3] + 1) = v13;
        *&__src[4] = 0;
        *(&__src[4] + 1) = v17;
        *(&__src[5] + 1) = 0;
        BYTE8(__src[6]) = 32;
        v38[111] = 1;
        sub_1ABE3A1C8();
        if (v6)
        {
          memcpy(v38, __src, 0x69uLL);
          sub_1ABAE4B6C(v38);
          return v24 & 1;
        }

        memcpy(v38, __src, 0x69uLL);
        sub_1ABAE4B6C(v38);
        v32 = v44;
        v33 = v45;
        v34 = v46;
        v30 = v47;
        v13 = v48;
        v31 = v49;
        v26 = v50;
        v35 = v51;
        v29 = v52;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        *&v26 = v17;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
      }

      *a1 = v32;
      *(a1 + 16) = v33;
      *(a1 + 32) = v34;
      *(a1 + 48) = v30;
      *(a1 + 56) = v13;
      *(a1 + 64) = v31;
      *(a1 + 72) = v26;
      *(a1 + 88) = v35;
      v24 = 1;
      *(a1 + 104) = v29;
      return v24 & 1;
    }

    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED86E460);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1ABA78000, v21, v22, "Qpropget operator has all empty terms", v23, 2u);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }
  }

  v24 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v24 & 1;
}

uint64_t sub_1ABE37880()
{
  *&__src[0] = 0x7463656C657371;
  *(&__src[0] + 1) = 0xE700000000000000;
  *&__src[1] = &unk_1F208E748;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000002ELL;
  *(&__src[3] + 1) = 0x80000001ABF93060;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABA925A4(v4, &qword_1EB4D1B10, &unk_1ABF33FA0);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE37964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  if (sub_1ABE37A38(*a5))
  {
    return 0;
  }

  result = swift_beginAccess();
  if (*(v5 + 32))
  {
    sub_1ABA8FAF0();
    v7 = sub_1ABAE305C();
    if (v7)
    {
      v8 = v7;
      swift_endAccess();
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v8 + 24))
      {

        sub_1ABE37B6C(v9, 1);
      }
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE37A38(uint64_t a1)
{
  switch(*(a1 + 64))
  {
    case 2:

      v1 = 0;
      return v1 & 1;
    case 4:
      sub_1ABA7EB34();
      goto LABEL_6;
    case 5:
      sub_1ABA7C6F4();
      goto LABEL_6;
    case 7:
      sub_1ABA81BF4();
      goto LABEL_6;
    default:
LABEL_6:
      sub_1ABA8BE94();
      v2 = sub_1ABF25054();

      v1 = v2 ^ 1;
      return v1 & 1;
  }
}

uint64_t sub_1ABE37B6C(uint64_t a1, uint64_t a2)
{
  if (a2 > 24)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000049, 0x80000001ABF93130);
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);

    MEMORY[0x1AC5A9410](v16, v15);

    sub_1ABAF2860();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0xE000000000000000;
    *(v17 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    *(a1 + 64) = 2;
    result = swift_beginAccess();
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
        result = swift_beginAccess();
        if (*(v13 + 24))
        {

          sub_1ABE37B6C(v14, a2 + 1);
          if (v2)
          {
          }
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
        }

        v8 = *(v5 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1ABE37D7C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((sub_1ABE37A38(v1) & 1) == 0)
  {
    v17 = *(type metadata accessor for QueryContext(0) + 32);
    memcpy(v118, (v8 + v17), 0x69uLL);
    memcpy(v10, (v8 + v17), 0x69uLL);
    sub_1ABB52954(v118, __dst);
    goto LABEL_18;
  }

  sub_1ABA8FAF0();
  v11 = sub_1ABE719F4();
  if (v11)
  {
    v12 = v11;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v13 = *(v12 + 24);

    if (v13)
    {
      v116 = v13;
      sub_1ABA90B20();
      sub_1ABE1AB8C(v14, v15, v16);
      if (v0)
      {

        goto LABEL_18;
      }

      v80 = v10;
      v22 = v114;
      v86 = v13;
      v23 = v4;
      v24 = v115;
      sub_1ABA93E20(v113, v114);
      v82 = *(v24 + 64);

      v64 = v24;
      v78 = v6;
      v25 = v23;
      v82(v118, v8, v12, v6, v23, v86, v2, v22, v64);

      memcpy(__dst, v118, 0x69uLL);
      v26 = __dst[3];
      v27 = __dst[13];
      if (__dst[11] >> 1 == 0xFFFFFFFFLL && (__dst[13] & 0x1E) == 0)
      {

        memcpy(v80, __dst, 0x69uLL);
        sub_1ABA84B54(v113);
        goto LABEL_18;
      }

      v28 = v80;
      if ((__dst[13] & 0x10) != 0)
      {
        v29 = __dst[2];
        v81 = __dst[8];
        v83 = __dst[9];
        v76 = __dst[7];
        v119 = __dst[12];
        v85 = __dst[11];
        v75 = __dst[6];
        v30 = __dst[5];
        v79 = __dst[10];
        v31 = __dst[4];
        v32 = __dst[1];
        v33 = __dst[0];
        sub_1ABF24AB4();
        v110[0] = 0;
        v110[1] = 0xE000000000000000;
        MEMORY[0x1AC5A9410](0xD00000000000002ALL, 0x80000001ABF930E0);
        __src[0] = v33;
        __src[1] = v32;
        __src[2] = v29;
        __src[3] = v26;
        __src[4] = v31;
        __src[5] = v30;
        __src[6] = v75;
        __src[7] = v76;
        __src[8] = v81;
        __src[9] = v83;
        __src[10] = v79;
        __src[11] = v85;
        __src[12] = v119;
        LOBYTE(__src[13]) = v27;
        sub_1ABF24C54();
        sub_1ABA925A4(__dst, &qword_1EB4D3430, &unk_1ABF6B740);
        sub_1ABAF2860();
        swift_allocError();
        *v34 = 0;
        *(v34 + 8) = 0xE000000000000000;
        *(v34 + 16) = 2;
        swift_willThrow();

        sub_1ABA84B54(v113);
        goto LABEL_18;
      }

      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      __src[4] = __dst[4];
      __src[5] = __dst[5];
      __src[6] = __dst[6];
      __src[7] = __dst[7];
      __src[8] = __dst[8];
      __src[9] = __dst[9];
      __src[10] = __dst[10];
      __src[11] = __dst[11];
      __src[12] = __dst[12];
      LOBYTE(__src[13]) = __dst[13];
      sub_1ABE386F0();
      memcpy(v110, __src, 0x69uLL);
      sub_1ABE10E28(v110);
      v35 = sub_1ABE38C7C(v2, *(v8 + 8));
      if (*(v35 + 16))
      {
        sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1ABF34060;
        memcpy((v36 + 32), v111, 0x69uLL);
        v37 = sub_1ABE8AE5C(v35);
        v38 = 0;
        *(v36 + 144) = 0;
        *(v36 + 152) = v37;
        *(v36 + 248) = 32;
        *(v36 + 232) = 0;
        *(v36 + 160) = 0u;
        *(v36 + 176) = 0u;
        *(v36 + 192) = 0u;
        *(v36 + 208) = 0u;
        *&v39 = 0;
        v84 = 0u;
        *&v109[0] = 0;
        *(&v109[0] + 1) = v36;
        *(&v109[5] + 1) = 0;
        *(&v39 + 1) = v36;
        v77 = v39;
        BYTE8(v109[6]) = 0;
      }

      else
      {

        memcpy(v109, v111, 0x69uLL);
        v74 = v109[1];
        v77 = v109[0];
        v70 = v109[2];
        v71 = v109[3];
        v69 = v109[4];
        v73 = *&v109[6];
        v38 = BYTE8(v109[6]) & 0xE1;
        *&v40 = *&v109[5];
        *(&v40 + 1) = BYTE8(v109[5]) & 1;
        v84 = v40;
      }

      sub_1ABA90400();
      v41 = sub_1ABE719F4();
      if (v41)
      {
        v42 = v41;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v43 = *(v42 + 24);

        if (v43)
        {
          v108 = v43;
          v44 = *(v43 + 80);
          if (v44 == 2 || (v44 & 1) == 0)
          {
            HIDWORD(v68) = v38;
            sub_1ABA90B20();
            sub_1ABE1AB8C(v45, v46, v47);
            v48 = v106;
            v67 = v43;
            v49 = v107;
            sub_1ABA93E20(v105, v106);
            v65 = v49;
            (*(v49 + 64))(v104, v8, v42, v78, v25, v67, v2, v48);
            memcpy(v103, v104, 0x69uLL);
            v50 = v103[11];
            v51 = v103[12];
            v52 = v103[13];
            if (v103[11] >> 1 != 0xFFFFFFFFLL || (v103[13] & 0x1E) != 0)
            {
              v53 = v106;
              v54 = v107;
              sub_1ABA93E20(v105, v106);
              v55 = (*(v54 + 88))(&v102, v8, v67, v2, v53, v54);
              if (v102 && v102 != 1)
              {
                sub_1ABA7DF48(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, *(&v74 + 1), v77, *(&v77 + 1), v78, v80, v84);
                v63 = 4;
              }

              else
              {
                sub_1ABA7DF48(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, *(&v74 + 1), v77, *(&v77 + 1), v78, v80, v84);
                v63 = 1;
              }

              v92 = v63;
              memcpy(v88, v104, sizeof(v88));
              v89 = v50;
              v90 = v51;
              v91 = v52;
              sub_1ABE39F20();
              memcpy(v87, v93, 0x69uLL);
              sub_1ABAE4B6C(v87);

              sub_1ABA925A4(v103, &qword_1EB4D3430, &unk_1ABF6B740);
              v74 = v95;
              v77 = v94;
              v70 = v96;
              v71 = v97;
              v84 = v99;
              v69 = v98;
              v73 = v100;
              BYTE4(v68) = v101;
            }

            else
            {
            }

            sub_1ABA84B54(v105);
            LOBYTE(v38) = BYTE4(v68);
            v28 = v80;
            goto LABEL_28;
          }
        }
      }

LABEL_28:
      *v28 = v77;
      v28[1] = v74;
      v28[2] = v70;
      v28[3] = v71;
      v28[4] = v69;
      v28[5] = v84;
      *(v28 + 12) = v73;
      *(v28 + 104) = v38;
      sub_1ABA84B54(v113);
      goto LABEL_18;
    }
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v18 = sub_1ABF237F4();
  sub_1ABA7AA24(v18, qword_1ED86E460);
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24664();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1ABA78000, v19, v20, "Qselect operator has empty filter node", v21, 2u);
    MEMORY[0x1AC5AB8B0](v21, -1, -1);
  }

  *(v10 + 10) = 0;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  *(v10 + 88) = xmmword_1ABF34940;
  *(v10 + 104) = 0;
LABEL_18:
  sub_1ABA7BC90();
}

void sub_1ABE386F0()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = memcpy(v156, v1, 0x69uLL);
  v13 = v156[1];
  v14 = LOBYTE(v156[3]);
  v15 = v156[4];
  v16 = v156[5];
  switch(LOBYTE(v156[13]) >> 5)
  {
    case 1:
      v51 = v156[2];
      v52 = *(&v156[3] + 5) | (HIBYTE(v156[3]) << 16);
      v53 = (*(&v156[5] + 1) << 8) | ((*(&v156[5] + 5) | (HIBYTE(v156[5]) << 16)) << 40) | LOBYTE(v156[5]);
      v54 = *(&v156[3] + 1) << 8;
      *v4 = v156[0] & 1;
      *(v4 + 8) = v13;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v15 & 1;
      *(v4 + 40) = v53;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = v51 & 1;
      *(v4 + 72) = v54 | (v52 << 40) | v14;
      *(v4 + 88) = 0;
      v27 = 32;
      goto LABEL_14;
    case 2:
      LOBYTE(__dst[0]) = 1;
      v25 = v156[6];
      v26 = (*(&v156[4] + 1) << 8) | ((*(&v156[4] + 5) | (HIBYTE(v156[4]) << 16)) << 40) | LOBYTE(v156[4]);
      *v4 = v156[0] & 1;
      *(v4 + 8) = v13;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = v16 & 1;
      *(v4 + 48) = v25;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = v14 & 1;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = v26;
      v27 = 65;
LABEL_14:
      *(v4 + 104) = v27;

      goto LABEL_45;
    case 3:
    case 4:
      v17 = memcpy(v4, v2, 0x69uLL);
      sub_1ABA83C94(v17, v18, v19, v20, v21, v22, v23, v24, v105, v115, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      goto LABEL_45;
    case 5:
      if (LOBYTE(v156[0]) == 1)
      {
        v55 = 4;
      }

      else
      {
        v55 = LOBYTE(v156[0]);
      }

      v56 = *(v156[1] + 16);
      v57 = MEMORY[0x1E69E7CC0];
      if (!v56)
      {
        goto LABEL_39;
      }

      sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v55, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      v154 = v57;
      sub_1ABADDDDC(0, v56, 0);
      v58 = 0;
      v59 = (v13 + 32);
      while (2)
      {
        if (v58 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        memcpy(__dst, v59, 0x69uLL);
        memcpy(v139, v59, 0x69uLL);
        v60 = sub_1ABE10DCC(__dst, &v125);
        sub_1ABA81140(v60, v61, v62, v63, v64, v65, v66, v67, v109, v119, v125, v126, v127, v128, v129, v130);
        if (v0)
        {
          sub_1ABE10E28(v156);
          sub_1ABE10E28(__dst);
        }

        else
        {
          v68 = sub_1ABE10E28(__dst);
          sub_1ABA8ED3C(v68, v69, v70, v71, v72, v73, v74, v75, v110, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13]);
          v154 = v57;
          v77 = *(v57 + 16);
          v76 = *(v57 + 24);
          if (v77 >= v76 >> 1)
          {
            v78 = sub_1ABA7BBEC(v76);
            sub_1ABADDDDC(v78, v77 + 1, 1);
            v57 = v154;
          }

          *(v57 + 16) = v77 + 1;
          sub_1ABA7EBA4(v57 + 112 * v77, v111, v121);
          if (v56 - 1 != v58)
          {
            v59 += 112;
            ++v58;
            continue;
          }

          sub_1ABE10E28(v156);
          v55 = v109;
          v4 = v119;
LABEL_39:
          *v4 = v55;
          *(v4 + 8) = v57;
          *(v4 + 88) = 0;
          *(v4 + 104) = -96;
        }

        goto LABEL_45;
      }

    case 6:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF93110);
      memcpy(__dst, v156, 0x69uLL);
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x757320746F6E2027, 0xEF646574726F7070);
      sub_1ABAF2860();
      swift_allocError();
      *v79 = 0;
      *(v79 + 8) = 0xE000000000000000;
      *(v79 + 16) = 1;
      swift_willThrow();
      goto LABEL_45;
    default:
      v28 = *(v156[1] + 16);
      if ((v156[0] & 1) == 0)
      {
        if (v28)
        {
          sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
          v154 = MEMORY[0x1E69E7CC0];
          sub_1ABA9A6D0();
          v80 = 0;
          v81 = 32;
          v82 = v154;
          while (1)
          {
            if (v80 >= *(v13 + 16))
            {
              goto LABEL_48;
            }

            sub_1ABA97D70(__dst);
            sub_1ABA97D70(v139);
            v83 = sub_1ABE10DCC(__dst, &v125);
            sub_1ABA81140(v83, v84, v85, v86, v87, v88, v89, v90, v112, v122, v125, v126, v127, v128, v129, v130);
            if (v0)
            {
              break;
            }

            v91 = v13;
            v92 = v28;
            v93 = sub_1ABE10E28(__dst);
            sub_1ABA8ED3C(v93, v94, v95, v96, v97, v98, v99, v100, v113, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13]);
            v154 = v82;
            v102 = *(v82 + 16);
            v101 = *(v82 + 24);
            if (v102 >= v101 >> 1)
            {
              v104 = sub_1ABA7BBEC(v101);
              sub_1ABADDDDC(v104, v102 + 1, 1);
              v82 = v154;
            }

            ++v80;
            *(v82 + 16) = v102 + 1;
            sub_1ABA7EBA4(v82 + 112 * v102, v114, v124);
            v81 += 112;
            v28 = v92;
            v103 = v92 == v80;
            v13 = v91;
            if (v103)
            {
              v4 = v122;
              goto LABEL_43;
            }
          }

LABEL_36:
          sub_1ABE10E28(__dst);
        }

        else
        {
          sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v115, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
          v82 = MEMORY[0x1E69E7CC0];
LABEL_43:
          *v4 = 4;
          *(v4 + 8) = v82;
          *(v4 + 88) = 0;
          *(v4 + 104) = -96;
        }

        goto LABEL_45;
      }

      v29 = MEMORY[0x1E69E7CC0];
      if (!v28)
      {
        goto LABEL_42;
      }

      sub_1ABA83C94(v5, v6, v7, v8, v9, v10, v11, v12, v105, v4, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      v154 = v29;
      sub_1ABA9A6D0();
      v30 = 0;
      v31 = 32;
      while (v30 < *(v13 + 16))
      {
        sub_1ABA97D70(__dst);
        sub_1ABA97D70(v139);
        v32 = sub_1ABE10DCC(__dst, &v125);
        sub_1ABA81140(v32, v33, v34, v35, v36, v37, v38, v39, v106, v116, v125, v126, v127, v128, v129, v130);
        if (v0)
        {
          goto LABEL_36;
        }

        v40 = sub_1ABE10E28(__dst);
        sub_1ABA8ED3C(v40, v41, v42, v43, v44, v45, v46, v47, v107, v117, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0], v139[1], v139[2], v139[3], v139[4], v139[5], v139[6], v139[7], v139[8], v139[9], v139[10], v139[11], v139[12], v139[13]);
        v154 = v29;
        v49 = *(v29 + 16);
        v48 = *(v29 + 24);
        if (v49 >= v48 >> 1)
        {
          v50 = sub_1ABA7BBEC(v48);
          sub_1ABADDDDC(v50, v49 + 1, 1);
          v29 = v154;
        }

        *(v29 + 16) = v49 + 1;
        sub_1ABA7EBA4(v29 + 112 * v49, v108, v118);
        if (v28 - 1 == v30)
        {
          sub_1ABE10E28(v156);
          v4 = v116;
LABEL_42:
          *v4 = 1;
          *(v4 + 8) = v29;
          *(v4 + 88) = 0;
          *(v4 + 104) = 0;
LABEL_45:
          sub_1ABA7BC90();
          return;
        }

        v31 += 112;
        ++v30;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
  }
}

uint64_t sub_1ABE38C7C(uint64_t a1, uint64_t a2)
{
  sub_1ABA90400();
  result = sub_1ABE713BC();
  v14 = result;
  if (*(result + 16) && a2)
  {

    v4 = sub_1ABE491D0();
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v5, 0);
      v6 = v13;
      v7 = (v4 + 64);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v11 = *(v13 + 16);
        v10 = *(v13 + 24);

        if (v11 >= v10 >> 1)
        {
          sub_1ABADDBD4(v10 > 1, v11 + 1, 1);
        }

        *(v13 + 16) = v11 + 1;
        v12 = v13 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        v7 += 11;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABD7DA50(v6);

    return v14;
  }

  return result;
}

void sub_1ABE38DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v164 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context - 8);
  v157 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1ABE37A38(v28))
  {
    sub_1ABB51B74(v36, v34, v32, v30, v28, v164, v25);
LABEL_12:
    sub_1ABA7BC90();
    return;
  }

  v164 = v20;
  v155 = v32;
  v156 = v36;
  v161 = v25;
  sub_1ABA90400();
  v39 = sub_1ABE719F4();
  if (v39)
  {
    v40 = v156;
    v41 = v30;
    sub_1ABE39704(v156, v39, v28, v34, v155, v30, v161);

    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v40 = v156;
    v41 = v30;
  }

  sub_1ABA8FAF0();
  v42 = v28;
  v43 = sub_1ABE719F4();
  if (!v43 || (v42 = v43, sub_1ABA7EF0C(), swift_beginAccess(), v44 = *(v42 + 24), , , !v44))
  {
    sub_1ABA8A488();
    sub_1ABAF2860();
    swift_allocError();
    *v45 = 0xD00000000000001FLL;
    *(v45 + 8) = v42;
    *(v45 + 16) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  a10 = v44;
  if (sub_1ABE71D70())
  {

    goto LABEL_12;
  }

  *(v44 + 80) = 1;
  v46 = *(v40 + 8);
  v145 = v28;
  v146 = v21;
  v149 = v44;
  v150 = v41;
  if (v46)
  {
    v47 = sub_1ABE491D0();
  }

  else
  {
    v47 = 0;
  }

  v151 = type metadata accessor for ResultGraph();
  v48 = swift_allocObject();
  v49 = MEMORY[0x1E69E7CC0];
  *(v48 + 16) = sub_1ABF239C4();
  *(v48 + 24) = v49;

  v144 = v48;
  *(v40 + 8) = v48;
  v50 = sub_1ABF239C4();
  if (v47)
  {
    v51 = v50;
    v52 = *(v47 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    v152 = v47;
    v54 = v161;
    if (v52)
    {
      v154 = v47 + 32;

      v55 = 0;
      v56 = v52;
      v153 = v52;
      while (1)
      {
        if (v55 >= v56)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v158 = v55;
        memcpy(v168, (v154 + 88 * v55), 0x58uLL);
        v57 = v168[10];
        v58 = *(v168[10] + 16);
        if (v58)
        {
          break;
        }

LABEL_38:
        v55 = v158 + 1;
        if (v158 + 1 == v153)
        {

          goto LABEL_41;
        }

        v56 = *(v47 + 16);
      }

      sub_1ABB242A4(v168, v167);

      v59 = 0;
      v159 = v58 - 1;
      v160 = v57;
      v60 = 32;
      while (v59 < *(v57 + 16))
      {
        v163 = v59;
        v164 = v53;
        v162 = v60;
        memcpy(v167, (v57 + v60), 0x58uLL);
        v61 = v167[0];
        v62 = v167[1];
        sub_1ABB242A4(v168, v169);
        sub_1ABB242A4(v167, v169);
        swift_isUniquelyReferenced_nonNull_native();
        v166[0] = v51;
        v69 = sub_1ABA94FC8(v61, v62, v63, v64, v65, v66, v67, v68, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
        if (__OFADD__(v51[2], (v70 & 1) == 0))
        {
          goto LABEL_60;
        }

        v71 = v69;
        v72 = v70;
        sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
        if (sub_1ABF24C64())
        {
          v79 = sub_1ABA94FC8(v61, v62, v73, v74, v75, v76, v77, v78, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
          if ((v72 & 1) != (v80 & 1))
          {
            goto LABEL_73;
          }

          v71 = v79;
        }

        if (v72)
        {
          v51 = v166[0];
          v81 = (*(v166[0] + 56) + 88 * v71);
          memcpy(v169, v81, 0x58uLL);
          memcpy(v81, v168, 0x58uLL);
          sub_1ABB24250(v169);
        }

        else
        {
          v51 = v166[0];
          *(v166[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
          v82 = (v51[6] + 16 * v71);
          *v82 = v61;
          v82[1] = v62;
          memcpy((v51[7] + 88 * v71), v168, 0x58uLL);
          v83 = v51[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            __break(1u);
            goto LABEL_67;
          }

          v51[2] = v85;
        }

        v53 = v164;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v161;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v53 = v89;
        }

        v88 = *(v53 + 16);
        v87 = *(v53 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1ABA7BBEC(v87);
          sub_1ABAD8758();
          v53 = v90;
        }

        *(v53 + 16) = v88 + 1;
        memcpy((v53 + 88 * v88 + 32), v167, 0x58uLL);
        if (v159 == v163)
        {
          sub_1ABB24250(v168);

          v47 = v152;
          goto LABEL_38;
        }

        v60 = v162 + 88;
        v59 = v163 + 1;
        v57 = v160;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:

      v141 = v163;
      goto LABEL_63;
    }

LABEL_41:
    if (!v51[2])
    {

LABEL_65:

      goto LABEL_12;
    }

    v91 = swift_allocObject();
    v92 = MEMORY[0x1E69E7CC0];
    *(v91 + 16) = sub_1ABF239C4();
    *(v91 + 24) = v92;
    LOBYTE(v168[0]) = 0;
    sub_1ABE489A8(v53, v168);
    v93 = v157;
    sub_1ABE3CF94(v157);

    v143 = v91;
    *(v93 + 1) = v91;
    if (!__OFADD__(v54, 1))
    {
      v94 = v146;
      v95 = sub_1ABE177BC(v168, v93, &a10, v145, v54 + 1, v34, v155, v150);
      v146 = v94;
      if (v94)
      {

        v96 = v93;
LABEL_64:
        sub_1ABB529C4(v96);
        goto LABEL_65;
      }

      v97 = v95;
      memcpy(v167, v168, 0x69uLL);
      sub_1ABA925A4(v167, &qword_1EB4D3430, &unk_1ABF6B740);
      v142 = v97;
      v98 = sub_1ABE491D0();
      v99 = v98;
      v100 = *(v98 + 16);
      if (!v100)
      {

        v141 = MEMORY[0x1E69E7CC0];
LABEL_63:

        *(v145 + 80) = 1;
        LOBYTE(v169[0]) = 2;
        sub_1ABE489A8(v141, v169);

        v96 = v157;
        goto LABEL_64;
      }

      v101 = 0;
      v147 = v100 - 1;
      v163 = MEMORY[0x1E69E7CC0];
      v164 = v53;
      v102 = 32;
      v148 = v98;
      while (v101 < v100)
      {
        v159 = v101;
        v149 = v102;
        memcpy(v169, (v99 + v102), 0x58uLL);
        if (!v51[2])
        {
          goto LABEL_70;
        }

        v103 = v169[0];
        v104 = v169[1];
        sub_1ABB242A4(v169, v166);
        v111 = sub_1ABA94FC8(v103, v104, v105, v106, v107, v108, v109, v110, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
        if ((v112 & 1) == 0)
        {
          goto LABEL_71;
        }

        memcpy(v166, (v51[7] + 88 * v111), sizeof(v166));
        v113 = v166[0];
        v162 = v166[1];
        v114 = v166[3];
        v115 = v166[4];
        v117 = v166[5];
        v116 = v166[6];
        v118 = v166[7];
        v119 = v166[8];
        v158 = v166[9];
        v156 = v166[10];
        sub_1ABB242A4(v166, v165);
        if (!v162)
        {
          goto LABEL_71;
        }

        v160 = v113;
        v161 = v116;
        v166[0] = v113;
        v166[1] = v162;
        v150 = v169[2];
        v151 = v115;
        v166[2] = v169[2];
        v166[3] = v114;
        v120 = v114;
        v166[4] = v115;
        v166[5] = v117;
        v153 = v117;
        v154 = v119;
        v166[6] = v116;
        v166[7] = v118;
        v121 = v158;
        v166[8] = v119;
        v166[9] = v158;
        v122 = v156;
        v166[10] = v156;
        sub_1ABB242A4(v166, v165);
        sub_1ABB24250(v169);
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v118;
        v155 = v120;
        if (v123)
        {
          v125 = v163;
        }

        else
        {
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v125 = v138;
        }

        v127 = *(v125 + 16);
        v126 = *(v125 + 24);
        v128 = v127 + 1;
        v130 = v160;
        v129 = v161;
        v132 = v153;
        v131 = v154;
        v133 = v151;
        if (v127 >= v126 >> 1)
        {
          sub_1ABA7BBEC(v126);
          v163 = v139;
          sub_1ABAD8758();
          v128 = v163;
          v130 = v160;
          v129 = v161;
          v125 = v140;
        }

        *(v125 + 16) = v128;
        v163 = v125;
        v134 = (v125 + 88 * v127);
        v135 = v162;
        v134[4] = v130;
        v134[5] = v135;
        v136 = v150;
        v137 = v155;
        v134[6] = v150;
        v134[7] = v137;
        v134[8] = v133;
        v134[9] = v132;
        v134[10] = v129;
        v134[11] = v124;
        v134[12] = v131;
        v134[13] = v121;
        v134[14] = v122;
        v165[0] = v130;
        v165[1] = v135;
        v165[2] = v136;
        v165[3] = v137;
        v165[4] = v133;
        v165[5] = v132;
        v165[6] = v129;
        v165[7] = v124;
        v165[8] = v131;
        v165[9] = v121;
        v165[10] = v122;
        sub_1ABA925A4(v165, &qword_1EB4DADE0, &unk_1ABF6AA60);
        if (v147 == v159)
        {
          goto LABEL_61;
        }

        v99 = v148;
        v100 = *(v148 + 16);
        v102 = v149 + 88;
        v101 = v159 + 1;
      }

LABEL_68:
      __break(1u);
    }

    __break(1u);
LABEL_70:
    sub_1ABB242A4(v169, v166);
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  sub_1ABF25104();
  __break(1u);
}

uint64_t sub_1ABE39704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a3;
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a2 + 24))
  {
    v26 = *(a2 + 24);
    result = sub_1ABE71D70();
    if ((result & 1) == 0)
    {

      result = sub_1ABE3CF94(v15);
      if (__OFADD__(a7, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1ABE177BC(v25, v15, &v26, v23, a7 + 1, a4, a5, v22);
        if (v7)
        {
          sub_1ABB529C4(v15);
        }

        else
        {
          v21 = v17;
          memcpy(v24, v25, 0x69uLL);
          sub_1ABA925A4(v24, &qword_1EB4D3430, &unk_1ABF6B740);
          sub_1ABB529C4(v15);

          *(a1 + 8) = v21;
        }
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if (!*(*(a2 + 16) + 16))
    {
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](115, 0xE100000000000000);
      MEMORY[0x1AC5A9410](0xD00000000000002BLL, 0x80000001ABF930B0);
      sub_1ABD7EAA4(*(v23 + 64));
      v18 = v24[0];
      v19 = v24[1];
      sub_1ABAF2860();
      swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v19;
      *(v20 + 16) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1ABE39934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16) == 7370352 && *(a3 + 24) == 0xE300000000000000;
  if (!v4 && (sub_1ABF25054() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = sub_1ABE719F4();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (!*(v6 + 24))
  {

LABEL_10:
    v8 = 1;
    return sub_1ABE37A38(a2) & v8 & 1;
  }

  type metadata accessor for QueryNode();

  v7 = sub_1ABE71A88();

  v8 = v7 ^ 1;
  return sub_1ABE37A38(a2) & v8 & 1;
}

void sub_1ABE39A1C()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for ResultGraph();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = sub_1ABF239C4();
  *(v8 + 24) = v9;
  switch(*(v5 + 64))
  {
    case 1:
    case 8:
      sub_1ABA8A488();
      goto LABEL_7;
    case 2:

      goto LABEL_8;
    case 4:
      sub_1ABA7EB34();
      goto LABEL_7;
    case 5:
      sub_1ABA7C6F4();
      goto LABEL_7;
    case 7:
      sub_1ABA8A488();
      sub_1ABA81BF4();
      goto LABEL_7;
    default:
LABEL_7:
      sub_1ABA8BE94();
      v10 = sub_1ABF25054();

      if ((v10 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_8:
      sub_1ABA8FAF0();
      v11 = sub_1ABE719F4();
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v13 = *(v12 + 24);

      if (!v13)
      {
        goto LABEL_15;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);

      sub_1ABE19D84(&v31, v15, v14);

      if (v32)
      {
        sub_1ABA946C0(&v31, v35);
        v16 = v35[3];
        v17 = v35[4];
        sub_1ABA93E20(v35, v35[3]);
        (*(v17 + 80))(v7, v13, v3, v16, v17);

        if (v1)
        {

          sub_1ABA84B54(v35);
          goto LABEL_34;
        }

        sub_1ABA84B54(v35);
      }

      else
      {

        sub_1ABA925A4(&v31, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

LABEL_15:
      sub_1ABA90400();
      v18 = sub_1ABE719F4();
      v19 = *(v3 + 16);
      if (v19)
      {
        v30 = v7;
        v20 = (v3 + 32);
        v21 = v19 - 1;
        v22 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          memcpy(v35, v20, 0x58uLL);
          if (!v18)
          {
            goto LABEL_24;
          }

          v24 = v35[3];
          v23 = v35[4];
          sub_1ABA7EF0C();
          v25 = swift_beginAccess();
          v33 = v24;
          v34 = v23;
          MEMORY[0x1EEE9AC00](v25);
          sub_1ABB242A4(v35, &v31);

          LOBYTE(v24) = sub_1ABB2F764();

          if (v24)
          {
            break;
          }

          sub_1ABB24250(v35);

          if (!v21)
          {
LABEL_28:

            v7 = v30;
            goto LABEL_30;
          }

LABEL_27:
          --v21;
          v20 += 88;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAD8758();
          v22 = v28;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1ABA7BBEC(v26);
          sub_1ABAD8758();
          v22 = v29;
        }

        *(v22 + 16) = v27 + 1;
        memcpy((v22 + 88 * v27 + 32), v35, 0x58uLL);
LABEL_24:
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_30:
      if (*(v7 + 8) && !sub_1ABE47EF0())
      {
        LOBYTE(v35[0]) = 2;

        sub_1ABE489A8(v3, v35);
      }

      else
      {

        LOBYTE(v35[0]) = 2;
        sub_1ABE489A8(v3, v35);
      }

LABEL_34:
      sub_1ABA7BC90();
      return;
  }
}

void sub_1ABE39F20()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v55 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  memcpy(__dst, v6, 0x69uLL);
  memcpy(v54, v1, 0x69uLL);
  v7 = BYTE8(v54[6]);
  if ((BYTE8(v54[6]) & 0x10) != 0 || (v8 = BYTE8(__dst[6]), (BYTE8(__dst[6]) & 0x10) != 0))
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF93210);
    v13 = memcpy(v52, v54, 0x69uLL);
    sub_1ABA94D20(v13, v14, v15, v16, v17, v18, v19, v20, v30, v34, v36, v40, v42);
    MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF93250);
    v21 = memcpy(v52, __dst, 0x69uLL);
    sub_1ABA94D20(v21, v22, v23, v24, v25, v26, v27, v28, v33, v35, v39, v41, v45);
    sub_1ABB50F70();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v48 = v54[1];
    v50 = v54[3];
    v31 = v54[0];
    v37 = v54[5];
    v43 = v54[2];
    v46 = v54[4];
    v9 = *&v54[6];
    v10 = *&__dst[6];
    sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1ABF34740;
    *(v11 + 32) = v31;
    *(v11 + 48) = v48;
    *(v11 + 64) = v43;
    *(v11 + 80) = v50;
    *(v11 + 96) = v46;
    *(v11 + 112) = v37;
    *(v11 + 128) = v9;
    *(v11 + 136) = v7;
    v49 = __dst[2];
    v51 = __dst[0];
    v38 = __dst[3];
    v44 = __dst[1];
    v47 = __dst[4];
    v32 = __dst[5];
    sub_1ABE3A730(__dst, v52);
    sub_1ABE3A730(v54, v52);
    sub_1ABAD8FB0(1, 2, 1, v11);
    *(v12 + 16) = 2;
    *(v12 + 144) = v51;
    *(v12 + 160) = v44;
    *(v12 + 176) = v49;
    *(v12 + 192) = v38;
    *(v12 + 208) = v47;
    *(v12 + 224) = v32;
    *(v12 + 240) = v10;
    *(v12 + 248) = v8;
    *v3 = v5;
    *(v3 + 8) = v12;
    *(v3 + 88) = 0;
    *(v3 + 104) = -96;
  }

  sub_1ABA7BC90();
}

void sub_1ABE3A1C8()
{
  sub_1ABA7BCA8();
  v5 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v11 = *(v3 + 48);
  v10 = *(v3 + 56);
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  v15 = *(v3 + 80);
  v14 = *(v3 + 88);
  v16 = *(v3 + 96);
  v17 = *(v3 + 104);
  v19 = *v0;
  v18 = v0[1];
  v21 = v0[2];
  v20 = v0[3];
  v22 = v0[4];
  v106 = v0[5];
  v109 = v0[6];
  v112 = v0[7];
  v23 = v0[9];
  v115 = v0[8];
  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[12];
  v27 = *(v0 + 104);
  if ((v27 & 0x10) == 0)
  {
    v104 = v0[9];
    if ((v17 & 0x10) == 0)
    {
      v28 = v17;
      v29 = v2;
      v30 = *v1;
      v132 = *v0;
      v133 = v18;
      v134 = v21;
      v135 = v20;
      v136 = v22;
      v137 = v106;
      v138 = v109;
      v139 = v112;
      v140 = v115;
      v141 = v104;
      v142 = v25;
      v143 = v24;
      v144 = v26;
      v145 = v27;
      __src = v5;
      v119 = v4;
      v120 = v7;
      v121 = v6;
      v122 = v9;
      v123 = v8;
      v124 = v11;
      v125 = v10;
      v126 = v12;
      v127 = v13;
      v128 = v15;
      v129 = v14;
      v130 = v16;
      LOBYTE(v131) = v28;
      HIBYTE(v117) = v30;
      IndexQuery.TriplesIndexQuery.combine(query:combineType:)(&v146, &__src, &v117 + 7);
      v31 = v151;
      v32 = v153;
      v33 = v152 & 1;
      v34 = v154 & 0xE1;
      v35 = v147;
      *v29 = v146;
      *(v29 + 16) = v35;
      v36 = v149;
      *(v29 + 32) = v148;
      *(v29 + 48) = v36;
      *(v29 + 64) = v150;
      *(v29 + 80) = v31;
      *(v29 + 88) = v33;
      *(v29 + 96) = v32;
      *(v29 + 104) = v34;
LABEL_25:
      sub_1ABA7BC90();
      return;
    }

    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    v81 = v26;
    v101 = v7;
    v103 = v6;
    v99 = v4;
    v155 = v5;
    v94 = v14;
    v96 = v16;
    v91 = v13;
    v92 = v15;
    v88 = v10;
    v89 = v12;
    v85 = v8;
    v86 = v11;
    v83 = v9;
    v77 = v25;
    v79 = v24;
LABEL_7:
    sub_1ABF24AB4();
    v133 = *(&v146 + 1);
    v37 = MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF93210);
    sub_1ABA99694(v37, v38, v39, v40, v41, v42, v43, v44, v75, v77, v79, v81, v83, v85, v86, v88, v89, v91, v92, v94, v96, v99, v101, v103, v104, v106, v109, v112, v115, v117, __src, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v146);
    v45 = MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF93230);
    *&v146 = v155;
    *(&v146 + 1) = v100;
    v147 = v102;
    v148 = v84;
    v149 = v87;
    v150 = v90;
    v151 = v93;
    v152 = v95;
    v153 = v97;
    v154 = v17;
    sub_1ABA99694(v45, v46, v47, v48, v49, v50, v51, v52, v76, v78, v80, v82, v84, *(&v84 + 1), v87, *(&v87 + 1), v90, *(&v90 + 1), v93, v95, v97, v100, v102, *(&v102 + 1), v105, v107, v110, v113, v116, v117, __src, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    v53 = v133;
    sub_1ABB50F70();
    swift_allocError();
    *v54 = v132;
    *(v54 + 8) = v53;
    *(v54 + 16) = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v99 = v4;
  v101 = v7;
  v103 = v6;
  v155 = v5;
  if ((v17 & 0x10) == 0)
  {
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    v81 = v26;
    v83 = v9;
    v94 = v14;
    v96 = v16;
    v91 = v13;
    v92 = v15;
    v88 = v10;
    v89 = v12;
    v85 = v8;
    v86 = v11;
    v77 = v25;
    v79 = v24;
    v104 = v23;
    goto LABEL_7;
  }

  v98 = v2;
  v55 = v5 + 64;
  v56 = 1 << *(v5 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v5 + 64);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  v61 = 0;
  v108 = v59;
  v111 = v5 + 64;
  if (v58)
  {
LABEL_15:
    while (1)
    {
      v63 = __clz(__rbit64(v58)) | (v61 << 6);
      v64 = *(v5 + 48) + 24 * v63;
      v66 = *v64;
      v65 = *(v64 + 8);
      v67 = *(v64 + 16);
      v68 = *(*(v5 + 56) + 8 * v63);

      sub_1ABAC9398(v60, 0);
      swift_isUniquelyReferenced_nonNull_native();
      *&v146 = v19;
      v114 = v66;
      v69 = sub_1ABAF8474(v66);
      if (__OFADD__(*(v19 + 16), (v70 & 1) == 0))
      {
        break;
      }

      v71 = v69;
      v72 = v70;
      sub_1ABAD219C(&qword_1EB4D1F58, &unk_1ABF35140);
      v19 = v146;
      if (sub_1ABF24C64())
      {
        v73 = sub_1ABAF8474(v114);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_28;
        }

        v71 = v73;
      }

      if (v72)
      {
      }

      else
      {
        sub_1ABAFC468(v71, v114, v65, v67, MEMORY[0x1E69E7CD0], v146);
      }

      v59 = v108;
      v55 = v111;
      v58 &= v58 - 1;
      sub_1ABB7EBF0(v68);
      v60 = sub_1ABBF3790;
      v5 = v155;
      if (!v58)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v62 >= v59)
      {

        *v98 = v19;
        *(v98 + 8) = v99;
        *(v98 + 16) = v101;
        *(v98 + 24) = v103;
        *(v98 + 88) = 0;
        *(v98 + 104) = 16;
        sub_1ABB3F4DC(v99, v101, v103);
        sub_1ABAC9398(v60, 0);
        goto LABEL_25;
      }

      v58 = *(v55 + 8 * v62);
      ++v61;
      if (v58)
      {
        v61 = v62;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  sub_1ABF25104();
  __break(1u);
}

uint64_t IndexQuery.impl.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE3A730(v8, v7);
}

void *IndexQuery.impl.setter(const void *a1)
{
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  sub_1ABAE4B6C(&v7);
  return memcpy(v1, a1, 0x69uLL);
}

uint64_t sub_1ABE3A7D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001ABF931C0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001ABF931E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

unint64_t sub_1ABE3A8A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1ABE3A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3A7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE3A910(uint64_t a1)
{
  v2 = sub_1ABE3AE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3A94C(uint64_t a1)
{
  v2 = sub_1ABE3AE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3A988(uint64_t a1)
{
  v2 = sub_1ABE3AE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3A9C4(uint64_t a1)
{
  v2 = sub_1ABE3AE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE3AA00(uint64_t a1)
{
  v2 = sub_1ABE3AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3AA3C(uint64_t a1)
{
  v2 = sub_1ABE3AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.IndexQueryImpl.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DADE8, &qword_1ABF6AA70);
  sub_1ABA7BB64();
  v27 = v6;
  v28 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  v26 = sub_1ABAD219C(&qword_1EB4DADF0, &qword_1ABF6AA78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAD219C(&qword_1EB4DADF8, &qword_1ABF6AA80);
  sub_1ABA7BB64();
  v32 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA83634();
  v29 = *v0;
  v30 = v0[1];
  v11 = v0[3];
  v31 = v0[2];
  v25 = v0[4];
  v24 = v0[5];
  v23 = v0[6];
  v22 = v0[7];
  v21 = v0[8];
  v20 = v0[9];
  v19 = v0[10];
  v18 = v0[11];
  v17 = v0[12];
  v12 = *(v0 + 104);
  v13 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABE3AE18();
  sub_1ABF252E4();
  if ((v12 & 0x10) != 0)
  {
    LOBYTE(v33) = 1;
    sub_1ABE3AE6C();
    sub_1ABA97D88(&type metadata for IndexQuery.IndexQueryImpl.LiveGlobalKnowledgeIdSearchQueryCodingKeys, &v33);
    v33 = v29;
    v34 = v30;
    v35 = v31;
    LOWORD(v36) = v11;
    sub_1ABE3AEC0();
    v14 = v28;
    sub_1ABF24F84();
    v16 = *(v27 + 8);
    v15 = v2;
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_1ABE3AF14();
    sub_1ABA97D88(&type metadata for IndexQuery.IndexQueryImpl.TriplesIndexQueryCodingKeys, &v33);
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v36 = v11;
    v37 = v25;
    v38 = v24;
    v39 = v23;
    v40 = v22;
    v41 = v21;
    v42 = v20;
    v43 = v19;
    v44 = v18;
    v45 = v17;
    v46 = v12;
    sub_1ABE3AF68();
    v14 = v26;
    sub_1ABF24F84();
    v15 = sub_1ABA8150C();
  }

  v16(v15, v14);
  (*(v32 + 8))(v1, v13);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE3AE18()
{
  result = qword_1EB4D01A8;
  if (!qword_1EB4D01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01A8);
  }

  return result;
}

unint64_t sub_1ABE3AE6C()
{
  result = qword_1EB4DAE00;
  if (!qword_1EB4DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE00);
  }

  return result;
}

unint64_t sub_1ABE3AEC0()
{
  result = qword_1EB4DAE08;
  if (!qword_1EB4DAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE08);
  }

  return result;
}

unint64_t sub_1ABE3AF14()
{
  result = qword_1EB4D01C0;
  if (!qword_1EB4D01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01C0);
  }

  return result;
}

unint64_t sub_1ABE3AF68()
{
  result = qword_1EB4D01D8;
  if (!qword_1EB4D01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01D8);
  }

  return result;
}

void IndexQuery.IndexQueryImpl.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v55 = v3;
  sub_1ABAD219C(&qword_1EB4DAE10, &qword_1ABF6AA88);
  sub_1ABA7BB64();
  v52 = v5;
  v53 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1ABAD219C(&qword_1EB4DAE18, &qword_1ABF6AA90);
  sub_1ABA7BB64();
  v51 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  sub_1ABAD219C(&qword_1EB4DAE20, &qword_1ABF6AA98);
  sub_1ABA7BB64();
  v54 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE3AE18();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v49 = v7;
  v50 = v11;
  v65 = v2;
  v14 = v55;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v16 == v17 >> 1)
  {
LABEL_7:
    v22 = sub_1ABF24B44();
    swift_allocError();
    v24 = v23;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v24 = &type metadata for IndexQuery.IndexQueryImpl;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    swift_unknownObjectRelease();
    v25 = sub_1ABA7DF78();
    v26(v25);
    v2 = v65;
LABEL_8:
    sub_1ABA84B54(v2);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  if (v16 < (v17 >> 1))
  {
    v48 = *(v15 + v16);
    sub_1ABAD4E90();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    if (v19 == v21 >> 1)
    {
      if (v48)
      {
        LOBYTE(v56) = 1;
        sub_1ABE3AE6C();
        sub_1ABA8E48C(&type metadata for IndexQuery.IndexQueryImpl.LiveGlobalKnowledgeIdSearchQueryCodingKeys, &v56);
        v27 = v14;
        sub_1ABE3C124();
        v28 = v53;
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        v30 = sub_1ABA8150C();
        v31(v30, v28);
        v32 = sub_1ABA7BC4C();
        v33(v32);
        v38 = 0;
        v39 = v56;
        v40 = v57;
        *&v41 = v58;
        v42 = 16;
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_1ABE3AF14();
        sub_1ABA8E48C(&type metadata for IndexQuery.IndexQueryImpl.TriplesIndexQueryCodingKeys, &v56);
        v27 = v14;
        sub_1ABE3C178();
        v29 = v49;
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        v43 = sub_1ABA8150C();
        v44(v43, v29);
        v45 = sub_1ABA7DF78();
        v46(v45);
        v39 = v56;
        v40 = v57;
        v41 = v58;
        v35 = v59;
        v36 = v60;
        v37 = v61;
        v34 = v63;
        v38 = v62 & 1;
        v42 = v64 & 0xE1;
      }

      *v27 = v39;
      *(v27 + 8) = v40;
      *(v27 + 24) = v41;
      *(v27 + 40) = v35;
      *(v27 + 56) = v36;
      *(v27 + 72) = v37;
      *(v27 + 88) = v38;
      *(v27 + 96) = v34;
      *(v27 + 104) = v42;
      sub_1ABA84B54(v2);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t IndexQuery.TriplesIndexQuery.query.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE3C1CC(v8, v7);
}

unint64_t IndexQuery.TriplesIndexQuery.description.getter()
{
  sub_1ABF24AB4();

  v5 = 0xD000000000000015;
  v6 = 0x80000001ABF93180;
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
  memcpy(v2, v0, 0x69uLL);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v3, v4);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v5;
}

uint64_t *IndexQuery.TriplesIndexQuery.combine(query:combineType:)@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, unsigned __int8 *a3@<X1>)
{
  memcpy(__dst, __src, 0x69uLL);
  v6 = *a3;
  sub_1ABA7F968();
  memcpy(v7, v8, v9);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34060;
  sub_1ABA7F968();
  memcpy(v11, v12, v13);
  memcpy((v10 + 144), __src, 0x69uLL);
  *a1 = v6;
  a1[1] = v10;
  a1[11] = 0;
  *(a1 + 104) = 0;
  sub_1ABE3C1CC(v17, v15);
  return sub_1ABE3C1CC(__dst, v15);
}

void *IndexQuery.TriplesIndexQuery.join(joinCondition:incomingQuery:)@<X0>(unsigned __int8 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  memcpy(__dst, a2, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v5, v6, v7);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  memcpy((inited + 32), __src, 0x69uLL);
  sub_1ABE3C1CC(__dst, v12);
  sub_1ABE3C1CC(__src, v12);
  sub_1ABAD8FB0(1, 2, 1, inited);
  v10 = v9;
  *(v9 + 16) = 2;
  result = memcpy((v9 + 144), __dst, 0x69uLL);
  *a3 = v4;
  *(a3 + 8) = v10;
  *(a3 + 88) = 0;
  *(a3 + 104) = -96;
  return result;
}

uint64_t sub_1ABE3B8DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABE3B968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3B8DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE3B994(uint64_t a1)
{
  v2 = sub_1ABE3C228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3B9D0(uint64_t a1)
{
  v2 = sub_1ABE3C228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.TriplesIndexQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DAE38, &qword_1ABF6AAA0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA83634();
  sub_1ABA7F968();
  memcpy(v4, v5, v6);
  v7 = sub_1ABAA5A80();
  sub_1ABE3C1CC(v7, v8);
  v9 = sub_1ABE3C228();
  sub_1ABA9A6F0(&type metadata for IndexQuery.TriplesIndexQuery.CodingKeys, v10, v9);
  memcpy(v14, v15, sizeof(v14));
  v11 = sub_1ABE3C27C();
  sub_1ABA84378(v11, v12);
  sub_1ABA90B34();
  sub_1ABE3C2D0(&v13);
  (*v0)(v1, v2);
  sub_1ABA7BC90();
}

void IndexQuery.TriplesIndexQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DAE40, &qword_1ABF6AAA8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v2, v2[3]);
  v6 = sub_1ABE3C228();
  sub_1ABA8387C(&type metadata for IndexQuery.TriplesIndexQuery.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_1ABE3C324();
    sub_1ABA9040C(&type metadata for TriplesQuery, v9, v10, v11, v8);
    v12 = sub_1ABA7BC4C();
    v13(v12);
    memcpy(v4, v14, 0x69uLL);
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

unint64_t IndexQuery.description.getter()
{
  if ((*(v0 + 104) & 0x10) != 0)
  {
    return LiveGlobalKnowledge.IdSearchRequest.description.getter();
  }

  else
  {
    return IndexQuery.TriplesIndexQuery.description.getter();
  }
}

uint64_t sub_1ABE3BD00(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819307369 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABE3BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE3BD00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE3BDB8(uint64_t a1)
{
  v2 = sub_1ABE3C378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3BDF4(uint64_t a1)
{
  v2 = sub_1ABE3C378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IndexQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DAE50, &qword_1ABF6AAB0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA83634();
  sub_1ABA7F968();
  memcpy(v4, v5, v6);
  v7 = sub_1ABAA5A80();
  sub_1ABE3A730(v7, v8);
  v9 = sub_1ABE3C378();
  sub_1ABA9A6F0(&type metadata for IndexQuery.CodingKeys, v10, v9);
  memcpy(v14, v15, sizeof(v14));
  v11 = sub_1ABE3C3CC();
  sub_1ABA84378(v11, v12);
  sub_1ABA90B34();
  sub_1ABE3C420(&v13);
  (*v0)(v1, v2);
  sub_1ABA7BC90();
}

void IndexQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DAE58, &qword_1ABF6AAB8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v2, v2[3]);
  v6 = sub_1ABE3C378();
  sub_1ABA8387C(&type metadata for IndexQuery.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_1ABE3C450();
    sub_1ABA9040C(&type metadata for IndexQuery.IndexQueryImpl, v9, v10, v11, v8);
    v12 = sub_1ABA7BC4C();
    v13(v12);
    memcpy(v4, v14, 0x69uLL);
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t IndexQuery.CombineType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE3C124()
{
  result = qword_1EB4DAE28;
  if (!qword_1EB4DAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE28);
  }

  return result;
}

unint64_t sub_1ABE3C178()
{
  result = qword_1EB4DAE30;
  if (!qword_1EB4DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE30);
  }

  return result;
}

unint64_t sub_1ABE3C228()
{
  result = qword_1EB4D01F0;
  if (!qword_1EB4D01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01F0);
  }

  return result;
}

unint64_t sub_1ABE3C27C()
{
  result = qword_1EB4CFFF8;
  if (!qword_1EB4CFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFF8);
  }

  return result;
}