uint64_t dispatch thunk of ActionRequirementEvaluating.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C369B5C();
  v15 = (v11 + *v11);
  swift_task_alloc();
  sub_22C36CC90();
  *(v5 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_22C382AF4;

  return v15(a1, a2, a3, a4, a5);
}

void sub_22C5E6820(uint64_t a1)
{
  sub_22C5E6894();
  if (v1 <= 0x3F)
  {
    sub_22C9026DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C5E6894()
{
  if (!qword_27D9BEFE0)
  {
    sub_22C5E68DC(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BEFE0);
    }
  }
}

void sub_22C5E68DC(uint64_t a1)
{
  if (!qword_27D9BEFE8)
  {
    sub_22C5E6938();
    v1 = sub_22C90A8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BEFE8);
    }
  }
}

unint64_t sub_22C5E6938()
{
  result = qword_27D9BEFF0;
  if (!qword_27D9BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequirementStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C5E6AD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C5E6B88()
{
  result = qword_27D9BEFF8;
  if (!qword_27D9BEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFF8);
  }

  return result;
}

unint64_t sub_22C5E6BE0()
{
  result = qword_27D9BF000;
  if (!qword_27D9BF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF000);
  }

  return result;
}

unint64_t sub_22C5E6C38()
{
  result = qword_27D9BF008;
  if (!qword_27D9BF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF008);
  }

  return result;
}

unint64_t sub_22C5E6C90()
{
  result = qword_27D9BF010;
  if (!qword_27D9BF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF010);
  }

  return result;
}

unint64_t sub_22C5E6CE8()
{
  result = qword_27D9BF018;
  if (!qword_27D9BF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF018);
  }

  return result;
}

unint64_t sub_22C5E6D40()
{
  result = qword_27D9BF020;
  if (!qword_27D9BF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF020);
  }

  return result;
}

unint64_t sub_22C5E6D98()
{
  result = qword_27D9BF028;
  if (!qword_27D9BF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF028);
  }

  return result;
}

unint64_t sub_22C5E6DF0()
{
  result = qword_27D9BF030;
  if (!qword_27D9BF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF030);
  }

  return result;
}

unint64_t sub_22C5E6E48()
{
  result = qword_27D9BF038;
  if (!qword_27D9BF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF038);
  }

  return result;
}

unint64_t sub_22C5E6EA0()
{
  result = qword_27D9BF040;
  if (!qword_27D9BF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF040);
  }

  return result;
}

unint64_t sub_22C5E6EF8()
{
  result = qword_27D9BF048;
  if (!qword_27D9BF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF048);
  }

  return result;
}

unint64_t sub_22C5E6F50()
{
  result = qword_27D9BF050;
  if (!qword_27D9BF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF050);
  }

  return result;
}

unint64_t sub_22C5E6FA8()
{
  result = qword_27D9BF058;
  if (!qword_27D9BF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF058);
  }

  return result;
}

unint64_t sub_22C5E7000()
{
  result = qword_27D9BF060;
  if (!qword_27D9BF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF060);
  }

  return result;
}

unint64_t sub_22C5E7058()
{
  result = qword_27D9BF068;
  if (!qword_27D9BF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF068);
  }

  return result;
}

unint64_t sub_22C5E70B0()
{
  result = qword_27D9BF070;
  if (!qword_27D9BF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF070);
  }

  return result;
}

unint64_t sub_22C5E7104()
{
  result = qword_27D9BF0C0;
  if (!qword_27D9BF0C0)
  {
    sub_22C3AC1A0(&qword_27D9BF0B0, &unk_22C926980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF0C0);
  }

  return result;
}

uint64_t sub_22C5E7168()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C5E71BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C5E7218(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C5E7270(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C5E72C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C5E7594(uint64_t a1)
{

  return sub_22C90AEEC();
}

uint64_t sub_22C5E75B0(uint64_t a1)
{

  return sub_22C90AEEC();
}

uint64_t sub_22C5E784C()
{

  return sub_22C90AEDC();
}

uint64_t sub_22C5E78B8()
{

  return sub_22C5E7168();
}

void *sub_22C5E79F8()
{

  return memcpy((v0 - 232), (v0 - 160), 0x48uLL);
}

uint64_t sub_22C5E7A60(uint64_t a1, uint64_t a2)
{

  return sub_22C90B24C();
}

uint64_t sub_22C5E7A80(uint64_t a1)
{

  return sub_22C909F7C();
}

uint64_t sub_22C5E7B24@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;
}

uint64_t sub_22C5E7B6C()
{

  return sub_22C90AEDC();
}

double sub_22C5E7BF4@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 288) = a1;
  *(v2 - 320) = v1;

  swift_bridgeObjectRetain_n();
  return result;
}

uint64_t sub_22C5E7C1C()
{

  return sub_22C90B62C();
}

void *sub_22C5E7D00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_22C5E7D18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 360) = a1;
  *(v2 - 296) = v1;
}

uint64_t sub_22C5E7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C5E7D58(uint64_t a1, uint64_t a2)
{

  return sub_22C909FFC();
}

void sub_22C5E7D7C()
{

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C5E7E70(uint64_t a1, uint64_t a2)
{

  return sub_22C90B36C();
}

uint64_t sub_22C5E7E90(uint64_t a1)
{

  return sub_22C909F8C();
}

uint64_t sub_22C5E7EA8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C5E7270(v1, a1 + v2);
}

uint64_t sub_22C5E7EC0()
{

  return sub_22C5E7218(v0 + v2, v1);
}

uint64_t sub_22C5E7ED8()
{
}

void *sub_22C5E7EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_22C5E7F08(uint64_t a1)
{

  return sub_22C909FFC();
}

uint64_t AuthenticationRequirementEvaluator.__allocating_init(deviceState:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_22C36D1E4(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_22C5E9140(v7, v1, v3, v4);
  sub_22C36FF94(a1);
  return v9;
}

uint64_t AuthenticationRequirementEvaluator.init(deviceState:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v1 + 112);
  return v1;
}

uint64_t sub_22C5E8044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22C908EAC();
  v4[6] = v5;
  sub_22C3699B8(v5);
  v4[7] = v6;
  v4[8] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v4[9] = v7;
  sub_22C3699B8(v7);
  v4[10] = v8;
  v4[11] = sub_22C3699D4();
  v9 = sub_22C908F9C();
  v4[12] = v9;
  sub_22C3699B8(v9);
  v4[13] = v10;
  v4[14] = sub_22C3699D4();
  sub_22C3A5908(&qword_27D9BF180, &qword_22C921FF8);
  v4[15] = sub_22C3699D4();
  v11 = sub_22C9027AC();
  v4[16] = v11;
  sub_22C3699B8(v11);
  v4[17] = v12;
  v4[18] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C5E820C, v3, 0);
}

uint64_t sub_22C5E820C()
{
  v47 = v0;
  v1 = v0[5];
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    v9 = v0[4];
    sub_22C908E4C();
    sub_22C5E8608(v9, v5);
    v10 = *(v7 + 8);
    v10(v6, v8);
    if (sub_22C370B74(v5, 1, v4) == 1)
    {
      sub_22C36DD28(v0[15], &qword_27D9BF180, &qword_22C921FF8);
    }

    else
    {
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[6];
      v14 = v0[3];
      v45 = *(v0[17] + 32);
      v45(v0[18], v0[15], v0[16]);
      sub_22C903F8C();
      (*(v12 + 16))(v11, v14, v13);
      v15 = sub_22C9063CC();
      v16 = sub_22C90AAFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[14];
        v42 = v0[10];
        v43 = v0[9];
        v44 = v0[11];
        v19 = v0[7];
        v18 = v0[8];
        v39 = v0[12];
        v40 = v0[6];
        v20 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v20 = 136315138;
        v38 = v16;
        sub_22C908E4C();
        v21 = sub_22C908F8C();
        v23 = v22;
        v10(v17, v39);
        (*(v19 + 8))(v18, v40);
        v24 = sub_22C36F9F4(v21, v23, &v46);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_22C366000, v15, v38, "AuthenticationRequirementEvaluator: Authentication requirements not satisfied %s.", v20, 0xCu);
        sub_22C36FF94(v41);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v42 + 8))(v44, v43);
      }

      else
      {
        v26 = v0[10];
        v25 = v0[11];
        v28 = v0[8];
        v27 = v0[9];
        v29 = v0[6];
        v30 = v0[7];

        (*(v30 + 8))(v28, v29);
        (*(v26 + 8))(v25, v27);
      }

      v31 = v0[2];
      v45(v31, v0[18], v0[16]);
      v32 = *MEMORY[0x277D1CD10];
      sub_22C9027BC();
      sub_22C36985C();
      (*(v33 + 104))(v31, v32);
      v34 = *MEMORY[0x277D1CC20];
      sub_22C9026DC();
      sub_22C36985C();
      (*(v35 + 104))(v31, v34);
    }
  }

  type metadata accessor for RequirementStatus(0);
  swift_storeEnumTagMultiPayload();

  v36 = v0[1];

  return v36();
}

uint64_t sub_22C5E8608@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a1;
  v85 = a2;
  sub_22C90278C();
  sub_22C369824();
  v78 = v5;
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9063DC();
  sub_22C369824();
  v81 = v8;
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v83 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v73 = &v73 - v12;
  v13 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v73 - v14;
  sub_22C9089DC();
  sub_22C369824();
  v75 = v17;
  v76 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v74 = &v73 - v22;
  v23 = sub_22C908F9C();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v29 = (v27 - v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v73 - v34;
  v36 = *(v25 + 16);
  v84 = v3;
  v36(&v73 - v34, v3, v23);
  v37 = (*(v25 + 88))(v35, v23);
  if (v37 == *MEMORY[0x277D72688] || v37 == *MEMORY[0x277D72680])
  {
    goto LABEL_6;
  }

  v42 = *MEMORY[0x277D72670];
  if (v37 == *MEMORY[0x277D72678] || v37 == v42)
  {
    v44 = sub_22C9087DC();
    sub_22C3A5950(v44);

    v45 = sub_22C908A0C();
    if (sub_22C370B74(v15, 1, v45) == 1)
    {
      sub_22C36DD28(v15, &qword_27D9BA808, &qword_22C90C6E0);
LABEL_23:
      (*(v25 + 104))(v33, v42, v23);
      v70 = sub_22C3D4C48(v84, v33);
      (*(v25 + 8))(v33, v23);
      v71 = MEMORY[0x277D1CCF8];
      if ((v70 & 1) == 0)
      {
        v71 = MEMORY[0x277D1CCF0];
      }

      (*(v78 + 104))(v77, *v71, v79);
      v72 = v85;
      sub_22C90279C();
      v39 = sub_22C9027AC();
      v40 = v72;
      v41 = 0;
      return sub_22C36C640(v40, v41, 1, v39);
    }

    sub_22C9089EC();
    (*(*(v45 - 8) + 8))(v15, v45);
    v60 = v74;
    v59 = v75;
    v61 = v76;
    (*(v75 + 32))(v74, v20, v76);
    if ((sub_22C5E8E54() & 1) == 0)
    {
      (*(v59 + 8))(v60, v61);
      goto LABEL_23;
    }

    v62 = v73;
    sub_22C903F8C();
    v63 = sub_22C9063CC();
    v64 = sub_22C90AAFC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22C366000, v63, v64, "AuthenticationRequirementEvaluator: Authentication requirement was reported as satisfied by the client.", v65, 2u);
      sub_22C3699EC();
    }

    (*(v81 + 8))(v62, v82);
    (*(v59 + 8))(v60, v61);
LABEL_6:
    v39 = sub_22C9027AC();
    v40 = v85;
    v41 = 1;
    return sub_22C36C640(v40, v41, 1, v39);
  }

  v46 = v83;
  sub_22C903F8C();
  v36(v29, v84, v23);
  v47 = sub_22C9063CC();
  v48 = sub_22C90AADC();
  if (os_log_type_enabled(v47, v48))
  {
    v50 = swift_slowAlloc();
    v80 = v50;
    v84 = swift_slowAlloc();
    v86 = v84;
    *v50 = 136315138;
    v51 = sub_22C908F8C();
    v53 = v52;
    v54 = *(v25 + 8);
    v55 = sub_22C38BC04();
    v54(v55);
    v56 = sub_22C36F9F4(v51, v53, &v86);

    v57 = v80;
    *(v80 + 1) = v56;
    v58 = v54;
    _os_log_impl(&dword_22C366000, v47, v48, "AuthenticationRequirementEvaluator: Unexpected ToolAuthenticationPolicy type %s. Considering authentication requirement satisfied", v57, 0xCu);
    sub_22C36FF94(v84);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v81 + 8))(v83, v82);
  }

  else
  {

    v58 = *(v25 + 8);
    v66 = sub_22C38BC04();
    v58(v66);
    (*(v81 + 8))(v46, v82);
  }

  v67 = v85;
  v68 = sub_22C9027AC();
  sub_22C36C640(v67, 1, 1, v68);
  return (v58)(v35, v23);
}

uint64_t AuthenticationRequirementEvaluator.deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AuthenticationRequirementEvaluator.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C5E8DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return sub_22C5E8044(a1, a2, a3);
}

uint64_t sub_22C5E8E54()
{
  v1 = v0;
  v2 = sub_22C908CEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9078FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9089DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D1E730])
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    v15 = sub_22C908C8C();
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == *MEMORY[0x277D1E830])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v15 = sub_22C90783C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_22C5E9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  v6 = sub_22C36D548(&v9);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for AuthenticationRequirementEvaluator();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v9, v7 + 112);
  return v7;
}

uint64_t dispatch thunk of AuthenticationRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22C3B00E8;

  return v10(a1, a2, a3);
}

BOOL sub_22C5E935C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C90B66C();
  sub_22C372A60();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_22C90B4FC();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_22C5E9440(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v4);
    v5 = sub_22C90B66C();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

void sub_22C5E94F0()
{
  sub_22C36BA7C();
  sub_22C382808();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C36C064();
  if (v2)
  {
    v3 = *(v0 + 40);
    sub_22C373650();
    v6 = sub_22C5EB4F8(v4, v5);
    sub_22C38732C(v6);
    sub_22C378024();
    do
    {
      sub_22C5EB53C();
      if (!v7)
      {
        break;
      }

      v8 = sub_22C36A0C0();
      v9(v8);
      sub_22C373650();
      v11 = sub_22C5EB4F8(&qword_28142FA78, v10);
      sub_22C5EB574(v11);
      v12 = sub_22C5EB560();
      v13(v12);
    }

    while ((v3 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E9614()
{
  sub_22C36BA7C();
  sub_22C382808();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C36C064();
  if (v2)
  {
    v3 = *(v0 + 40);
    sub_22C371A94();
    v6 = sub_22C5EB4F8(v4, v5);
    sub_22C38732C(v6);
    sub_22C378024();
    do
    {
      sub_22C5EB53C();
      if (!v7)
      {
        break;
      }

      v8 = sub_22C36A0C0();
      v9(v8);
      sub_22C371A94();
      v11 = sub_22C5EB4F8(&qword_27D9BAA28, v10);
      sub_22C5EB574(v11);
      v12 = sub_22C5EB560();
      v13(v12);
    }

    while ((v3 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E9738()
{
  sub_22C36BA7C();
  sub_22C382808();
  sub_22C90969C();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C36C064();
  if (v2)
  {
    v3 = *(v0 + 40);
    sub_22C37F3A8();
    v6 = sub_22C5EB4F8(v4, v5);
    sub_22C38732C(v6);
    sub_22C378024();
    do
    {
      sub_22C5EB53C();
      if (!v7)
      {
        break;
      }

      v8 = sub_22C36A0C0();
      v9(v8);
      sub_22C37F3A8();
      v11 = sub_22C5EB4F8(&qword_27D9BF198, v10);
      sub_22C5EB574(v11);
      v12 = sub_22C5EB560();
      v13(v12);
    }

    while ((v3 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E985C()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  if (*(v1 + 16))
  {
    v3 = *(v1 + 40);
    v4 = sub_22C50B118(&qword_27D9BF0C0, &qword_27D9BF0B0, &unk_22C926980);
    sub_22C38732C(v4);
    v5 = v1 + 56;
    sub_22C372A60();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(v5 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v10 = sub_22C36A0C0();
      v11(v10);
      v12 = sub_22C50B118(&qword_27D9BF188, &qword_27D9BF0B0, &unk_22C926980);
      sub_22C5EB574(v12);
      v13 = sub_22C5EB560();
      v14(v13);
      v6 = v9 + 1;
    }

    while ((v3 & 1) == 0);
  }

  sub_22C36CC48();
}

void sub_22C5E99F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  if (*(v30 + 16))
  {
    v31 = v30;
    sub_22C90A11C();
    sub_22C90B62C();
    sub_22C909FFC();
    v32 = sub_22C90B66C();

    sub_22C372A60();
    v34 = ~v33;
    while (((1 << (v32 & v34)) & *(v31 + 56 + (((v32 & v34) >> 3) & 0xFFFFFFFFFFFFFF8))) != 0)
    {
      v35 = sub_22C90A11C();
      v37 = v36;
      if (v35 == sub_22C90A11C() && v37 == v38)
      {

        break;
      }

      v40 = sub_22C90B4FC();

      v32 = (v32 & v34) + 1;
      if (v40)
      {
        break;
      }
    }
  }

  sub_22C38C3F0();
}

uint64_t CarBluetoothRequirementEvaluator.init()@<X0>(void *a1@<X8>)
{
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437570;
}

uint64_t CarBluetoothRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22C90363C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v4[9] = swift_task_alloc();
  v6 = sub_22C903B1C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[12] = v7;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_22C5E9CE8, 0, 0);
}

uint64_t sub_22C5E9CE8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v1[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907EAC();
  if (sub_22C370B74(v3, 1, v2) == 1)
  {
    sub_22C5EA10C(v1[9]);

LABEL_10:
    type metadata accessor for RequirementStatus(0);
    sub_22C37FDE8();
    goto LABEL_11;
  }

  (*(v1[11] + 32))(v1[12], v1[9], v1[10]);

  v4 = sub_22C903A1C();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    (*(v1[11] + 8))(v1[12], v1[10]);
    goto LABEL_10;
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];
  (*(v6 + 104))(v5, *MEMORY[0x277D1EBF0], v7);
  v8 = sub_22C90362C();
  (*(v6 + 8))(v5, v7);
  if (v8)
  {
    goto LABEL_6;
  }

  if (sub_22C908E7C() == 0xD000000000000033 && 0x800000022C92E9B0 == v20)
  {
  }

  else
  {
    v22 = sub_22C90B4FC();

    if ((v22 & 1) == 0)
    {
LABEL_6:
      v9 = v1[13];
      v10 = sub_22C908E7C();
      LOBYTE(v9) = sub_22C5E935C(v10, v11, v9);

      if ((v9 & 1) != 0 && sub_22C5EB7E4())
      {
        v13 = v1[11];
        v12 = v1[12];
        v14 = v1[10];
        v15 = v1[3];
        sub_22C5EA97C();
        v17 = v16;
        (*(v13 + 8))(v12, v14);
        *v15 = v17;
        type metadata accessor for RequirementStatus(0);
        goto LABEL_11;
      }
    }
  }

  v23 = v1[3];
  (*(v1[11] + 8))(v1[12], v1[10]);
  v24 = *MEMORY[0x277D1CD08];
  sub_22C9027BC();
  sub_22C369A9C();
  (*(v25 + 104))(v23, v24);
  v26 = *MEMORY[0x277D1CC20];
  sub_22C9026DC();
  sub_22C369A9C();
  (*(v27 + 104))(v23, v26);
  type metadata accessor for RequirementStatus(0);
  sub_22C37FDE8();
LABEL_11:
  swift_storeEnumTagMultiPayload();

  v18 = v1[1];

  return v18();
}

uint64_t sub_22C5EA05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return CarBluetoothRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t sub_22C5EA10C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22C5EA174()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C908D4C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C36A0E0();
  v7 = MEMORY[0x28223BE20](v6);
  sub_22C381B20(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (sub_22C3A5908(&qword_27D9BF1A0, &unk_22C922110), v15 = sub_22C36D928(), *(v3 + 16)))
  {
    sub_22C370868();
    while (v16 < *(v3 + 16))
    {
      v17 = sub_22C377590(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      sub_22C383220();
      v20 = sub_22C5EB4F8(&qword_27D9BF1A8, v19);
      sub_22C36ED74(v20);
      sub_22C386A8C();
      while (1)
      {
        sub_22C37029C();
        if (v22)
        {
          break;
        }

        v23 = sub_22C375A48();
        (v3)(v23);
        sub_22C383220();
        v25 = sub_22C5EB4F8(&qword_27D9BF1B0, v24);
        sub_22C37BE94(v25);
        v26 = sub_22C5EB71C();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = sub_22C385708(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      sub_22C5EB6C4();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_22C36CC48();
  }
}

void sub_22C5EA364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C5EB744();
  if (v31 && (sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100), v32 = sub_22C36D928(), v33 = v32, (v34 = *(v30 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v30 + 16))
    {
      v37 = (v30 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_22C90B62C();

      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C386A8C();
      v42 = ~v41;
      while (1)
      {
        v43 = v40 & v42;
        v44 = (v40 & v42) >> 6;
        v45 = *(v36 + 8 * v44);
        v46 = 1 << (v40 & v42);
        if ((v46 & v45) == 0)
        {
          break;
        }

        v47 = (*(v33 + 48) + 16 * v43);
        v48 = *v47 == v39 && v47[1] == v38;
        if (v48 || (sub_22C90B4FC() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v43 + 1;
      }

      *(v36 + 8 * v44) = v46 | v45;
      v49 = (*(v33 + 48) + 16 * v43);
      *v49 = v39;
      v49[1] = v38;
      sub_22C380578();
      if (v51)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v50;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C38C3F0();
  }
}

void sub_22C5EA4C4()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C36A0E0();
  v7 = MEMORY[0x28223BE20](v6);
  sub_22C381B20(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20), v15 = sub_22C36D928(), *(v3 + 16)))
  {
    sub_22C370868();
    while (v16 < *(v3 + 16))
    {
      v17 = sub_22C377590(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      sub_22C373650();
      v20 = sub_22C5EB4F8(&qword_28142FA80, v19);
      sub_22C36ED74(v20);
      sub_22C386A8C();
      while (1)
      {
        sub_22C37029C();
        if (v22)
        {
          break;
        }

        v23 = sub_22C375A48();
        (v3)(v23);
        sub_22C373650();
        v25 = sub_22C5EB4F8(&qword_28142FA78, v24);
        sub_22C37BE94(v25);
        v26 = sub_22C5EB71C();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = sub_22C385708(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      sub_22C5EB6C4();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_22C36CC48();
  }
}

void sub_22C5EA6B4()
{
  sub_22C5EB744();
  if (v1 && (sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0), v2 = sub_22C36D928(), v3 = v2, (v31 = *(v0 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v29 = v0;
    v30 = v0 + 32;
    while (v4 < *(v0 + 16))
    {
      v6 = (v30 + 24 * v4);
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v6 + 16);
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v7 >> 14);
      v32 = v8;
      v10 = v8 >> 14;
      MEMORY[0x2318B8B30](v10);
      MEMORY[0x2318B8B10](v9);
      sub_22C90B66C();
      sub_22C386A8C();
      v12 = ~v11;
      v14 = v13 & ~v11;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      v18 = *(v3 + 48);
      if (((1 << v14) & v16) != 0)
      {
        while (1)
        {
          v19 = (v18 + 24 * v14);
          v20 = *v19;
          v21 = v19[1];
          v22 = *(v19 + 16);
          v23 = v21 >> 14;
          v24 = v7 >> 14 == v20 >> 14 && v23 == v10;
          if (v24 && v22 == v9)
          {
            break;
          }

          v14 = (v14 + 1) & v12;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if ((v16 & (1 << v14)) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        *(v5 + 8 * v15) = v16 | v17;
        v26 = v18 + 24 * v14;
        *v26 = v7;
        *(v26 + 8) = v32;
        *(v26 + 16) = v9;
        sub_22C380578();
        if (v28)
        {
          goto LABEL_19;
        }

        *(v3 + 16) = v27;
      }

      ++v4;
      v0 = v29;
      if (v4 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_22C5EA85C()
{
  sub_22C3744F8();
  sub_22C5EB744();
  if (v1 && (sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0), v2 = sub_22C36D928(), v3 = v2, (v4 = *(v0 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v0 + 16))
    {
      v7 = *(v0 + 32 + v5++);
      sub_22C90B62C();
      MEMORY[0x2318B8B10](v7);
      v8 = sub_22C90B66C();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + v10) == v7)
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + v10) = v7;
      sub_22C380578();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v14;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_22C38C3F0();
  }
}

void sub_22C5EA97C()
{
  sub_22C5EB744();
  if (!v1 || (sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8), v2 = sub_22C36D928(), v3 = v2, (v4 = *(v0 + 16)) == 0))
  {
LABEL_8:

    return;
  }

  v5 = v2 + 56;
  while (1)
  {
    sub_22C90B62C();
    MEMORY[0x2318B8B10](0);
    v6 = sub_22C90B66C() & ~(-1 << *(v3 + 32));
    v7 = v6 >> 6;
    v8 = *(v5 + 8 * (v6 >> 6));
    v9 = 1 << v6;
    if ((v9 & v8) == 0)
    {
      break;
    }

LABEL_7:
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  *(v5 + 8 * v7) = v9 | v8;
  sub_22C380578();
  if (!v11)
  {
    *(v3 + 16) = v10;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C5EAA78()
{
  sub_22C36BA7C();
  v7 = v6;
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C5EB750(v9);
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C5EB764(v11);
  v12 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v13);
  sub_22C37EC88();
  if (v0 && (sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80), sub_22C36D928(), sub_22C5EB730(), v14))
  {
    sub_22C374D9C();
    while (v15 < *(v7 + 16))
    {
      sub_22C5EB694();
      sub_22C5EB5EC();
      sub_22C5EB6F0();
      while (1)
      {
        v45 = v16;
        if (!v5)
        {
          v2 = v44;
          while (1)
          {
            v17 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              break;
            }

            if (v17 >= v42)
            {
              v34 = sub_22C375F34();
              sub_22C36C640(v44, 1, 1, v34);
              v5 = 0;
              goto LABEL_13;
            }

            v5 = *(v43 + 8 * v17);
            ++v1;
            if (v5)
            {
              v1 = v17;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_27;
        }

LABEL_12:
        v18 = sub_22C5EB598();
        v19(v18);
        v20 = sub_22C3767CC();
        v21(v20);
        sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v22 = sub_22C5EB648();
        v23(v22);
        v24 = sub_22C3799D0();
        v25(v24);
        sub_22C388334();
LABEL_13:
        sub_22C5EB49C(v2, v4, &qword_27D9BF108, &unk_22C921F70);
        v26 = sub_22C375F34();
        if (sub_22C370B74(v4, 1, v26) == 1)
        {
          break;
        }

        v27 = sub_22C37F8EC();
        v28(v27);
        v29 = sub_22C5EB674();
        v30(v29);
        memcpy(v46, v47, sizeof(v46));
        sub_22C5EB4F8(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v31(v3, v2);
        sub_22C38A9D0();
        sub_22C5EB4F8(&qword_27D9BAA90, v32);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v33(&qword_27D9BF110, v7);
        v16 = sub_22C90B66C() ^ v45;
      }

      sub_22C5EB704();

      MEMORY[0x2318B8B10](v45);
      sub_22C90B66C();
      sub_22C372A60();
      sub_22C5EB6DC();
      while (1)
      {
        sub_22C386290();
        if (v36)
        {
          break;
        }

        sub_22C74B664();
        v1 = v37;

        if (v1)
        {
          sub_22C5EB704();

          goto LABEL_23;
        }
      }

      sub_22C37BB80(v35);
      if (v39)
      {
        goto LABEL_28;
      }

      *(v41 + 16) = v38;
LABEL_23:
      sub_22C37B33C();
      v7 = *(v40 - 256);
      if (v36)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_25:

    sub_22C36CC48();
  }
}

void sub_22C5EAED8()
{
  sub_22C36BA7C();
  v7 = v6;
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C5EB750(v9);
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C5EB764(v11);
  v12 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v13);
  sub_22C37EC88();
  if (v0 && (sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60), sub_22C36D928(), sub_22C5EB730(), v14))
  {
    sub_22C374D9C();
    while (v15 < *(v7 + 16))
    {
      sub_22C5EB694();
      sub_22C5EB5EC();
      sub_22C5EB6F0();
      while (1)
      {
        v46 = v16;
        if (!v5)
        {
          v2 = v45;
          while (1)
          {
            v17 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              break;
            }

            if (v17 >= v43)
            {
              v35 = sub_22C375F34();
              sub_22C36C640(v45, 1, 1, v35);
              v5 = 0;
              goto LABEL_13;
            }

            v5 = *(v44 + 8 * v17);
            ++v1;
            if (v5)
            {
              v1 = v17;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_27;
        }

LABEL_12:
        v18 = sub_22C5EB598();
        v19(v18);
        v20 = sub_22C3767CC();
        v21(v20);
        sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
        v22 = sub_22C5EB648();
        v23(v22);
        v24 = sub_22C3799D0();
        v25(v24);
        sub_22C388334();
LABEL_13:
        sub_22C5EB49C(v2, v4, &qword_27D9BF0F0, &qword_22C921F58);
        v26 = sub_22C375F34();
        if (sub_22C370B74(v4, 1, v26) == 1)
        {
          break;
        }

        v27 = sub_22C37F8EC();
        v28(v27);
        v29 = sub_22C5EB674();
        v30(v29);
        memcpy(v47, v48, sizeof(v47));
        sub_22C371A94();
        sub_22C5EB4F8(&qword_2814357B0, v31);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v32(v3, v2);
        sub_22C38A9D0();
        sub_22C5EB4F8(&qword_27D9BAA90, v33);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v34(&qword_27D9BF100, v7);
        v16 = sub_22C90B66C() ^ v46;
      }

      sub_22C5EB704();

      MEMORY[0x2318B8B10](v46);
      sub_22C90B66C();
      sub_22C372A60();
      sub_22C5EB6DC();
      while (1)
      {
        sub_22C386290();
        if (v37)
        {
          break;
        }

        sub_22C74B9DC();
        v1 = v38;

        if (v1)
        {
          sub_22C5EB704();

          goto LABEL_23;
        }
      }

      sub_22C37BB80(v36);
      if (v40)
      {
        goto LABEL_28;
      }

      *(v42 + 16) = v39;
LABEL_23:
      sub_22C37B33C();
      v7 = *(v41 - 256);
      if (v37)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_25:

    sub_22C36CC48();
  }
}

void sub_22C5EB328(uint64_t a1)
{
  if (*(a1 + 16) && (sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10), v2 = sub_22C36D928(), v3 = v2, (v27 = *(a1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v26 = a1 + 32;
    while (v4 < *(a1 + 16))
    {
      v6 = *(v26 + 8 * v4++);
      sub_22C90B62C();

      sub_22C7E6754();
      sub_22C90B66C();
      sub_22C386A8C();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_22C5DB210(v14, v6, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
        v22 = v21;

        if (v22)
        {

          goto LABEL_12;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v6;
      sub_22C380578();
      if (v24)
      {
        goto LABEL_15;
      }

      *(v3 + 16) = v23;
LABEL_12:
      if (v4 == v27)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_22C5EB49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C369A9C();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C5EB4F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C5EB574(uint64_t a1)
{

  return sub_22C90A0BC();
}

double sub_22C5EB5EC()
{
  *(v2 - 296) = v0 + 64;
  *(v2 - 376) = ((v1 << *(v0 + 32)) + 63) >> 6;
  *(v2 - 280) = v0;

  swift_bridgeObjectRetain_n();
  return result;
}

uint64_t sub_22C5EB694()
{
  *(v1 - 384) = v0 + 1;

  return sub_22C90B62C();
}

uint64_t CarPlayRequirementEvaluator.init()@<X0>(void *a1@<X8>)
{
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437570;
}

BOOL sub_22C5EB7E4()
{
  v0 = sub_22C908D6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(0);
  v5 = 0;
  if (!v4)
  {
    v6 = sub_22C908DEC();
    v7 = (*(v1 + 104))(v3, *MEMORY[0x277D72168], v0);
    MEMORY[0x28223BE20](v7);
    *&v10[-16] = v3;
    v8 = sub_22C5EC62C(sub_22C50AFAC, &v10[-32], v6);

    (*(v1 + 8))(v3, v0);
    return !v8;
  }

  return v5;
}

uint64_t CarPlayRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22C90363C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v4[9] = swift_task_alloc();
  v6 = sub_22C903B1C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[12] = v7;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_22C5EBAA4, 0, 0);
}

uint64_t sub_22C5EBAA4(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v1[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EAC();
  if (sub_22C370B74(v3, 1, v2) == 1)
  {
    sub_22C5EA10C(v1[9]);

    goto LABEL_8;
  }

  (*(v1[11] + 32))(v1[12], v1[9], v1[10]);

  if ((sub_22C903A7C() & 1) == 0)
  {
    (*(v1[11] + 8))(v1[12], v1[10]);
    goto LABEL_8;
  }

  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[6];
  (*(v5 + 104))(v4, *MEMORY[0x277D1EBF0], v6);
  v7 = sub_22C90362C();
  (*(v5 + 8))(v4, v6);
  if (v7)
  {
    goto LABEL_5;
  }

  if (sub_22C908E7C() == 0xD000000000000033 && 0x800000022C92E9B0 == v17)
  {
  }

  else
  {
    v19 = sub_22C90B4FC();

    if ((v19 & 1) == 0)
    {
LABEL_5:
      v9 = v1[12];
      v8 = v1[13];
      v10 = v1[10];
      v11 = v1[11];
      v12 = sub_22C908E7C();
      LOBYTE(v8) = sub_22C5E935C(v12, v13, v8);

      (*(v11 + 8))(v9, v10);
      if (v8)
      {
        goto LABEL_8;
      }

      v14 = v1[3];
      goto LABEL_19;
    }
  }

  v14 = v1[3];
  (*(v1[11] + 8))(v1[12], v1[10]);
LABEL_19:
  v20 = *MEMORY[0x277D1CCE0];
  sub_22C9027BC();
  sub_22C369A9C();
  (*(v21 + 104))(v14, v20);
  v22 = *MEMORY[0x277D1CC20];
  sub_22C9026DC();
  sub_22C369A9C();
  (*(v23 + 104))(v14, v22);
LABEL_8:
  type metadata accessor for RequirementStatus(0);
  swift_storeEnumTagMultiPayload();

  v15 = v1[1];

  return v15();
}

uint64_t sub_22C5EBDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return CarPlayRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t ToolKitDeviceUnlockStateProvider.isDeviceUnlocked.getter()
{
  v0 = sub_22C9096CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277D72FC0];
  v5 = sub_22C9096AC();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D72FC8], v0);
  LOBYTE(v4) = sub_22C9096BC();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

_BYTE *storeEnumTagSinglePayload for ToolKitDeviceUnlockStateProvider(_BYTE *result, int a2, int a3)
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

BOOL sub_22C5EC08C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_22C5EC16C()
{
  sub_22C371AAC();
  v27 = v3;
  v26 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - v5;
  v6 = v2 + 64;
  sub_22C5EDB70();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v28 = v2;

  v13 = 0;
  while (v9)
  {
    v29 = v0;
LABEL_8:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(v28 + 56);
    v17 = (*(v28 + 48) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    sub_22C901FAC();
    sub_22C36985C();
    v21 = v16 + *(v20 + 72) * v15;
    v22 = v25;
    (*(v20 + 16))(&v25[*(v26 + 48)], v21);
    *v22 = v18;
    v22[1] = v19;

    v23 = v29;
    v24 = v27(v22);
    v0 = v23;
    result = sub_22C36DD28(v22, &qword_27D9BAA30, &unk_22C911F70);
    if (v23)
    {
      goto LABEL_12;
    }

    v9 &= v9 - 1;
    if (v24)
    {
      v1 = 1;
LABEL_12:

      return v1 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v1 = 0;
      goto LABEL_12;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v29 = v0;
      v13 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5EC338()
{
  sub_22C371AAC();
  v26 = v3;
  v27 = sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2 + 64;
  sub_22C5EDB70();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v24[2] = v13 + 16;
  v25 = v13;
  v24[1] = v13 + 8;
  v28 = v2;

  v15 = 0;
  while (v10)
  {
    v16 = v27;
LABEL_9:
    (*(v25 + 16))(v6, *(v28 + 56) + *(v25 + 72) * (__clz(__rbit64(v10)) | (v15 << 6)), v16);
    v18 = v26(v6);
    if (v0)
    {
      v22 = sub_22C388838();
      v23(v22);

      return v1 & 1;
    }

    v19 = v18;
    v10 &= v10 - 1;
    v20 = sub_22C388838();
    result = v21(v20);
    if (v19)
    {
      v1 = 1;
LABEL_13:

      return v1 & 1;
    }
  }

  v16 = v27;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      v1 = 0;
      goto LABEL_13;
    }

    v10 = *(v7 + 8 * v17);
    ++v15;
    if (v10)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22C5EC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22C371AAC();
  v8 = v7;
  v9 = 0;
  v11 = *(v10 + 16);
  do
  {
    v12 = v9;
    if (v11 == v9)
    {
      break;
    }

    v13 = *(a4(0) - 8);
    v14 = v8(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    if (v4)
    {
      break;
    }

    v9 = v12 + 1;
  }

  while ((v14 & 1) == 0);
  return v11 != v12;
}

BOOL sub_22C5EC828(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

Swift::Bool __swiftcall ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(Swift::Bool willRunOpensIntent)
{
  v2 = v1;
  v3 = willRunOpensIntent;
  v4 = sub_22C908D6C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C908FCC();
  sub_22C369824();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  sub_22C908E9C();
  sub_22C908FAC();
  v46 = sub_22C5EDAF0(&qword_27D9BF1B8, MEMORY[0x277D726D0], MEMORY[0x277D726D8]);
  v18 = sub_22C90AE0C();
  v21 = *(v11 + 8);
  v19 = v11 + 8;
  v20 = v21;
  v21(v15, v9);
  v21(v17, v9);
  if ((v18 & 1) != 0 || (v39 = v20, v40 = v19, v41 = v3, v22 = sub_22C908DEC(), v23 = *MEMORY[0x277D72120], v24 = v47, v42 = *(v6 + 104), v25 = v42(v47, v23, v4), v43 = v2, v45 = v4, MEMORY[0x28223BE20](v25), sub_22C372A70(), v27 = sub_22C5EC74C(sub_22C5ED7D4, v26, v22, MEMORY[0x277D721A0]), , v28 = v45, v29 = *(v6 + 8), v44 = v6 + 8, v29(v24, v45), v27))
  {
    v30 = 1;
  }

  else
  {
    v38 = v29;
    v32 = sub_22C908DEC();
    v33 = v47;
    v34 = v42(v47, *MEMORY[0x277D72158], v28);
    MEMORY[0x28223BE20](v34);
    sub_22C372A70();
    v30 = sub_22C5EC74C(sub_22C5EDB54, v35, v32, MEMORY[0x277D721A0]);

    v38(v33, v28);
    if ((v30 & 1) == 0 && v41)
    {
      sub_22C908E9C();
      sub_22C908FBC();
      v30 = sub_22C90AE0C();
      v36 = v39;
      v39(v15, v9);
      v36(v17, v9);
    }
  }

  return v30 & 1;
}

uint64_t ResponseModeRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_22C90687C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = sub_22C3A5908(&qword_27D9BF1C0, &qword_22C9221F8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v3[12] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5ECE40, 0, 0);
}

uint64_t sub_22C5ECE40(uint64_t a1)
{
  v2 = v1[12];
  v1[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EAC();

  v3 = sub_22C903B1C();
  v4 = sub_22C36C080(v2);
  v5 = v1[17];
  v6 = v1[12];
  if (v4 == 1)
  {
    v7 = v1[6];
    sub_22C36DD28(v1[12], &qword_27D9BD760, &qword_22C922200);
    sub_22C36C640(v5, 1, 1, v7);
  }

  else
  {
    StructuredContext.SiriRequestContext.mode.getter(v1[17]);
    (*(*(v3 - 8) + 8))(v6, v3);
  }

  v8 = v1[16];
  v9 = v1[11];
  v10 = v1[9];
  v11 = v1[6];
  v12 = *(v1[7] + 104);
  v12(v8, *MEMORY[0x277D1DC30], v11);
  sub_22C5EDB90();
  v13 = *(v10 + 48);
  v14 = sub_22C36BA00();
  sub_22C5ED828(v14, v15);
  sub_22C5ED828(v8, v9 + v13);
  if (sub_22C370B74(v9, 1, v11) == 1)
  {
    sub_22C36DD28(v1[16], &qword_27D9BF1C8, &unk_22C922208);
    if (sub_22C36C080(v9 + v13) == 1)
    {
      v16 = v1[11];
LABEL_13:
      sub_22C36DD28(v16, &qword_27D9BF1C8, &unk_22C922208);
LABEL_18:
      v33 = 0;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  sub_22C5ED828(v1[11], v1[15]);
  v17 = sub_22C36C080(v9 + v13);
  v18 = v1[15];
  v19 = v1[16];
  if (v17 == 1)
  {
    sub_22C36DD28(v1[16], &qword_27D9BF1C8, &unk_22C922208);
    v20 = sub_22C36BA00();
    v21(v20);
LABEL_9:
    sub_22C36DD28(v1[11], &qword_27D9BF1C0, &qword_22C9221F8);
    goto LABEL_10;
  }

  v58 = v1[11];
  v59 = v10;
  v34 = v1[7];
  v35 = v1[8];
  v36 = v1[6];
  (*(v34 + 32))(v35, v9 + v13, v36);
  sub_22C373668();
  v39 = sub_22C5EDAF0(v37, v38, MEMORY[0x277D1DC40]);
  v57 = sub_22C38BC18(v39);
  v40 = *(v34 + 8);
  v40(v35, v36);
  sub_22C36DD28(v19, &qword_27D9BF1C8, &unk_22C922208);
  v40(v18, v36);
  v10 = v59;
  sub_22C36DD28(v58, &qword_27D9BF1C8, &unk_22C922208);
  if (v57)
  {
    goto LABEL_18;
  }

LABEL_10:
  v22 = v1[14];
  v23 = v1[10];
  v24 = v1[6];
  v12(v22, *MEMORY[0x277D1DC20], v24);
  sub_22C5EDB90();
  v25 = *(v10 + 48);
  v26 = sub_22C36BA00();
  sub_22C5ED828(v26, v27);
  sub_22C5ED828(v22, v23 + v25);
  if (sub_22C370B74(v23, 1, v24) == 1)
  {
    sub_22C36DD28(v1[14], &qword_27D9BF1C8, &unk_22C922208);
    if (sub_22C36C080(v23 + v25) == 1)
    {
      v16 = v1[10];
      goto LABEL_13;
    }

LABEL_16:
    sub_22C36DD28(v1[10], &qword_27D9BF1C0, &qword_22C9221F8);
    v33 = 1;
    goto LABEL_20;
  }

  sub_22C5ED828(v1[10], v1[13]);
  v28 = sub_22C36C080(v23 + v25);
  v29 = v1[13];
  v30 = v1[14];
  if (v28 == 1)
  {
    sub_22C36DD28(v1[14], &qword_27D9BF1C8, &unk_22C922208);
    v31 = sub_22C36BA00();
    v32(v31);
    goto LABEL_16;
  }

  v41 = v1[10];
  v43 = v1[7];
  v42 = v1[8];
  v44 = v1[6];
  (*(v43 + 32))(v42, v23 + v25, v44);
  sub_22C373668();
  v47 = sub_22C5EDAF0(v45, v46, MEMORY[0x277D1DC40]);
  v48 = sub_22C38BC18(v47);
  v49 = *(v43 + 8);
  v49(v42, v44);
  sub_22C36DD28(v30, &qword_27D9BF1C8, &unk_22C922208);
  v49(v29, v44);
  sub_22C36DD28(v41, &qword_27D9BF1C8, &unk_22C922208);
  v33 = v48 ^ 1;
LABEL_20:
  v50 = ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(v33 & 1);
  v51 = v1[17];
  v52 = v1[3];
  if (v50)
  {
    sub_22C36DD28(v1[17], &qword_27D9BF1C8, &unk_22C922208);
  }

  else
  {
    sub_22C5EA97C();
    v54 = v53;
    sub_22C36DD28(v51, &qword_27D9BF1C8, &unk_22C922208);
    *v52 = v54;
  }

  type metadata accessor for RequirementStatus(0);
  swift_storeEnumTagMultiPayload();

  v55 = v1[1];

  return v55();
}

uint64_t sub_22C5ED424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return ResponseModeRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t sub_22C5ED4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C90B4FC() & 1;
  }
}

uint64_t sub_22C5ED518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_22C5EDAF0(a4, a5, a6);
  return sub_22C90A0BC() & 1;
}

uint64_t sub_22C5ED828(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5ED9B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90A11C();
  v4 = v3;
  if (v2 == sub_22C90A11C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22C90B4FC();
  }

  return v7 & 1;
}

_BYTE *storeEnumTagSinglePayload for ResponseModeRequirementEvaluator(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C5EDAF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C5EDB90()
{

  return sub_22C36C640(v0, 0, 1, v1);
}

void sub_22C5EDC28(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v66 = a3;
  v53 = a5;
  v56 = a1;
  v57 = a2;
  v6 = sub_22C3A5908(a1, a2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v64 = sub_22C90957C();
  sub_22C369824();
  v58 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v63 = v12 - v11;
  v13 = sub_22C90969C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C36993C();
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = sub_22C90941C();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  MEMORY[0x2318B6CE0]();
  v27 = v13;
  v28 = sub_22C9093FC();
  (*(v22 + 8))(v26, v20);
  v29 = v28 + 56;
  sub_22C373680();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v68 = v15 + 88;
  v67 = *MEMORY[0x277D72FA0];
  v60 = (v15 + 96);
  v61 = (v15 + 8);
  v36 = v58++;
  v59 = (v36 + 4);
  v54 = v15;
  v55 = v19;
  v62 = v28;
  while (v33)
  {
    v37 = v30;
LABEL_7:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    (*(v15 + 16))(v19, *(v28 + 48) + *(v15 + 72) * (v38 | (v37 << 6)), v27);
    v39 = sub_22C36BC58();
    v40(v39);
    v41 = (*(v15 + 88))(v5, v27);
    if (v41 == v67)
    {
      v42 = v27;
      (*v60)(v5, v27);
      v43 = sub_22C3A5908(&qword_27D9BF208, &qword_22C927740);
      v44 = v63;
      v45 = v64;
      (*v59)(v63, v5 + *(v43 + 48), v64);
      sub_22C90966C();
      sub_22C36985C();
      v47 = (*(v46 + 8))(v5);
      v65(v47);
      (*v58)(v44, v45);
      v48 = v66(0);
      if (sub_22C370B74(v8, 1, v48) != 1)
      {

        (*(*(v48 - 8) + 32))(v53, v8, v48);
        v50 = sub_22C38BC3C();
LABEL_12:
        sub_22C36C640(v50, v51, v52, v49);
        return;
      }

      sub_22C36DD28(v8, v56, v57);
      v30 = v37;
      v27 = v42;
      v15 = v54;
      v19 = v55;
      v28 = v62;
    }

    else
    {
      (*v61)(v5, v27);
      v30 = v37;
    }
  }

  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v49 = v66(0);
      v50 = v53;
      v51 = 1;
      v52 = 1;
      goto LABEL_12;
    }

    v33 = *(v29 + 8 * v37);
    ++v30;
    if (v33)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void ParameterDefinition.comparisonSeachPredicateTemplates.getter()
{
  v41 = sub_22C90957C();
  v0 = *(v41 - 8);
  MEMORY[0x28223BE20](v41 - 8);
  sub_22C369838();
  v51 = v2 - v1;
  v3 = sub_22C90969C();
  sub_22C369824();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = sub_22C90941C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  MEMORY[0x2318B6CE0]();
  v19 = v3;
  v20 = sub_22C9093FC();
  (*(v14 + 8))(v18, v12);
  v21 = v20 + 56;
  sub_22C373680();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v49 = v5 + 32;
  v50 = v5 + 16;
  v48 = v5 + 88;
  v47 = *MEMORY[0x277D72FA0];
  v43 = (v5 + 96);
  v44 = (v5 + 8);
  v42 = (v0 + 32);
  v45 = v0 + 8;
  v46 = v20;
  v40 = v5;
  while (v25)
  {
    v28 = v22;
    v29 = v51;
LABEL_8:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    (*(v5 + 16))(v11, *(v20 + 48) + *(v5 + 72) * (v30 | (v28 << 6)), v19);
    (*(v5 + 32))(v9, v11, v19);
    v31 = (*(v5 + 88))(v9, v19);
    if (v31 == v47)
    {
      (*v43)(v9, v19);
      v32 = sub_22C3A5908(&qword_27D9BF208, &qword_22C927740);
      (*v42)(v29, &v9[*(v32 + 48)], v41);
      sub_22C90966C();
      sub_22C36985C();
      v34 = v9;
      (*(v33 + 8))(v9);
      v35 = *(sub_22C90954C() + 16);

      if (v35)
      {
        sub_22C90954C();

        v38 = sub_22C371ABC();
        v39(v38);
        return;
      }

      v36 = sub_22C371ABC();
      v37(v36);
      v22 = v28;
      v9 = v34;
      v5 = v40;
      v20 = v46;
    }

    else
    {
      (*v44)(v9, v19);
      v22 = v28;
    }
  }

  v29 = v51;
  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return;
    }

    v25 = *(v21 + 8 * v28);
    ++v22;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22C5EE4F4(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_22C90969C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = sub_22C90941C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  MEMORY[0x2318B6CE0]();
  v16 = sub_22C9093FC();
  (*(v11 + 8))(v15, v9);
  sub_22C373680();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v41 = v4 + 32;
  v42 = v4 + 16;
  v40 = v4 + 88;
  v39 = *MEMORY[0x277D72E78];
  if ((v19 & v18) != 0)
  {
    while (1)
    {
      v23 = v17;
LABEL_6:
      (*(v4 + 16))(v8, *(v16 + 48) + *(v4 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v2);
      (*(v4 + 32))(v1, v8, v2);
      v24 = sub_22C36BC58();
      v26 = v25(v24);
      if (v26 == v39)
      {
        break;
      }

      v20 &= v20 - 1;
      v27 = sub_22C36BC58();
      v28(v27);
      v17 = v23;
      if (!v20)
      {
        goto LABEL_3;
      }
    }

    v33 = sub_22C36BC58();
    v34(v33);
    v35 = sub_22C90967C();
    sub_22C36985C();
    (*(v36 + 32))(v38, v1, v35);
    v30 = sub_22C38BC3C();
LABEL_10:
    sub_22C36C640(v30, v31, v32, v29);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        v29 = sub_22C90967C();
        v30 = v38;
        v31 = 1;
        v32 = 1;
        goto LABEL_10;
      }

      v20 = *(v16 + 56 + 8 * v23);
      ++v17;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

char *sub_22C5EE7DC()
{
  v1 = sub_22C9063DC();
  v2 = *(v1 - 8);
  v135 = v1;
  v136 = v2;
  MEMORY[0x28223BE20](v1);
  v137 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C369930();
  MEMORY[0x28223BE20](v4);
  v134 = &v122 - v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  v133 = &v122 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v132 = &v122 - v9;
  sub_22C369930();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v122 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v122 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v122 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v122 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v122 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v122 - v29;
  v31 = *(v0 + 16);
  v32 = v138;
  v33 = sub_22C5EF3C0(v31, 9, 50, 15);
  v138 = v32;
  if (v32)
  {
    goto LABEL_2;
  }

  v129 = v13;
  v130 = v0;
  v35 = v137;
  v127 = v19;
  v128 = v16;
  v125 = v25;
  v126 = v22;
  v123 = v30;
  v124 = v28;
  v131 = v33;

  if (!v131)
  {
    v39 = v35;
    sub_22C903FAC();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AADC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_22C36D240();
      sub_22C36D944(v42);
      sub_22C372A84();
    }

    sub_22C5F04EC();
    v44 = v39;
    goto LABEL_10;
  }

  v36 = v130;
  v31 = *(v130 + 32);
  v37 = v138;
  v38 = sub_22C5EFA80(v31, 1000, 8);
  if (!v37)
  {
    v45 = v38;

    if (!v45)
    {
      v47 = v134;
      sub_22C903FAC();
      v48 = sub_22C9063CC();
      v49 = sub_22C90AADC();
      if (sub_22C369E90(v49))
      {
        v50 = sub_22C36D240();
        sub_22C36D944(v50);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v44 = v47;
      goto LABEL_10;
    }

    v46 = v36[5];
    v53 = sub_22C5EFA80(v46, 1000, 2);

    if (!v53)
    {
      v55 = v133;
      sub_22C903FAC();
      v56 = sub_22C9063CC();
      v57 = sub_22C90AADC();
      if (sub_22C369E90(v57))
      {
        v58 = sub_22C36D240();
        sub_22C36D944(v58);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v44 = v55;
      goto LABEL_10;
    }

    v54 = v36[6];
    v61 = sub_22C5EFA80(v54, 1000, 7);

    if (!v61)
    {
      v63 = v132;
      sub_22C903FAC();
      v64 = sub_22C9063CC();
      v65 = sub_22C90AADC();
      if (sub_22C369E90(v65))
      {
        v66 = sub_22C36D240();
        sub_22C36D944(v66);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v44 = v63;
      goto LABEL_10;
    }

    v62 = v36[7];
    v69 = sub_22C5EFA80(v62, 10, 3);
    v137 = v53;

    if (!v69)
    {
      v74 = v129;
      sub_22C903FAC();
      v75 = sub_22C9063CC();
      v76 = sub_22C90AADC();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v135;
      v79 = v136;
      if (v77)
      {
        v80 = sub_22C36D240();
        *v80 = 0;
        sub_22C3699EC();
      }

      (*(v79 + 8))(v74, v78);
      return 0;
    }

    v70 = v36[8];
    v71 = sub_22C5EFA80(v70, 50, 2);
    v72 = v135;
    v73 = v136;
    v81 = v71;

    v134 = v81;
    if (v81)
    {
      v82 = *(v130 + 72);
      v88 = sub_22C5EFA80(v82, 50, 15);
      v89 = v69;

      if (!v88)
      {
        sub_22C903FAC();
        v91 = sub_22C9063CC();
        v92 = sub_22C90AADC();
        if (sub_22C369E90(v92))
        {
          v93 = sub_22C36D240();
          sub_22C36D944(v93);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v44 = v127;
        goto LABEL_10;
      }

      v90 = *(v130 + 80);
      v133 = sub_22C5F0048(v90, 4);

      if (!v133)
      {
        sub_22C903FAC();
        v96 = sub_22C9063CC();
        v97 = sub_22C90AADC();
        if (sub_22C369E90(v97))
        {
          v98 = sub_22C36D240();
          sub_22C36D944(v98);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v44 = v126;
LABEL_10:
        v43(v44, v135);
        return 0;
      }

      v101 = sub_22C36C098(*(v130 + 88));

      if (!v101)
      {
        sub_22C903FAC();
        v102 = sub_22C9063CC();
        v103 = sub_22C90AADC();
        if (sub_22C369E90(v103))
        {
          v104 = sub_22C36D240();
          sub_22C36D944(v104);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v44 = v125;
        goto LABEL_10;
      }

      v107 = sub_22C36C098(*(v130 + 96));

      if (!v107)
      {
        sub_22C903FAC();
        v109 = sub_22C9063CC();
        v110 = sub_22C90AADC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = sub_22C36D240();
          *v111 = 0;
          sub_22C3699EC();
        }

        sub_22C5F04EC();
        v44 = v124;
        goto LABEL_10;
      }

      v108 = sub_22C36C098(*(v130 + 104));
      v138 = 0;
      v112 = v108;

      if (v112)
      {
        v136 = *(v130 + 24);
        v113 = *(v130 + 112);
        type metadata accessor for PlanResolutionModelInput();
        swift_allocObject();
        *(&v121 + 1) = v112;
        *(&v120 + 1) = v101;
        *&v121 = v107;
        *&v120 = v133;
        v114 = v136;
        v13 = sub_22C8FDB98(v131, v136, v45, v137, v61, v89, v134, v88, v120, v121, v113);
        v115 = v114;
        v116 = v113;
        return v13;
      }

      sub_22C903FAC();
      v117 = sub_22C9063CC();
      v118 = sub_22C90AADC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = sub_22C36D240();
        *v119 = 0;
        sub_22C3699EC();
      }

      (v136)[1](v123, v135);
    }

    else
    {
      v83 = v69;
      v138 = 0;
      v84 = v128;
      sub_22C903FAC();
      v85 = sub_22C9063CC();
      v86 = sub_22C90AADC();
      if (sub_22C369E90(v86))
      {
        v87 = sub_22C36D240();
        *v87 = 0;
        sub_22C3699EC();
      }

      (*(v73 + 8))(v84, v72);
    }

    return 0;
  }

LABEL_2:
  return v13;
}

id sub_22C5EF3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22C9063DC();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = v59 - v13;
  v14 = [a1 shape];
  v15 = sub_22C3D3108();
  sub_22C90A5EC();

  v16 = sub_22C36E2B8();

  if (v16 == 3)
  {
    v17 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v18 = swift_allocObject();
    v70 = xmmword_22C922270;
    *(v18 + 16) = xmmword_22C922270;
    *(v18 + 32) = sub_22C90A91C();
    *(v18 + 40) = sub_22C90A91C();
    *(v18 + 48) = sub_22C90A91C();
    v19 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    result = sub_22C5F2214(v18, 65568);
    if (!v4)
    {
      v24 = result;
      v63 = a2;
      v59[1] = 0;
      v60 = a4;
      v25 = sub_22C90ABEC();
      [v24 fillWithNumber_];

      v65 = a1;
      v26 = [a1 shape];
      v27 = sub_22C90A5EC();

      sub_22C633A2C();
      v71 = v17;
      v64 = v24;
      if ((v27 & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }

      v28 = *(v27 + 32);
LABEL_9:
      v29 = v28;
      v30 = v68;
      v31 = v63;

      v32 = [(objc_class *)v29 integerValue];

      if (v32 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = v32;
      }

      v62 = v33;
      v34 = [v65 shape];
      v35 = sub_22C90A5EC();

      sub_22C633A2C();
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x2318B8460](1, v35);
      }

      else
      {
        v36 = *(v35 + 40);
      }

      v37 = v36;

      v38 = [v37 integerValue];

      if (v38 >= a3)
      {
        v39 = a3;
      }

      else
      {
        v39 = v38;
      }

      v66 = v39;
      v40 = [v65 shape];
      v41 = sub_22C90A5EC();

      sub_22C633A2C();
      v42 = v61;
      if ((v41 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x2318B8460](2, v41);
      }

      else
      {
        v43 = *(v41 + 48);
      }

      v44 = v43;

      v45 = [v44 integerValue];

      v46 = v60;
      if (v45 >= v60)
      {
        v47 = v60;
      }

      else
      {
        v47 = v45;
      }

      sub_22C903FAC();
      v27 = sub_22C9063CC();
      v48 = sub_22C90AABC();
      if (os_log_type_enabled(v27, v48))
      {
        v49 = v47;
        v50 = swift_slowAlloc();
        *v50 = 134218496;
        *(v50 + 4) = v63;
        *(v50 + 12) = 2048;
        *(v50 + 14) = a3;
        *(v50 + 22) = 2048;
        *(v50 + 24) = v46;
        _os_log_impl(&dword_22C366000, v27, v48, "3d reshaping with %ld,%ld,%ld", v50, 0x20u);
        v51 = v50;
        v47 = v49;
        MEMORY[0x2318B9880](v51, -1, -1);
      }

      v63 = v15;

      result = (*(v30 + 8))(v42, v69);
      if (v62 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v62)
        {
          return v64;
        }

        if ((v66 & 0x8000000000000000) == 0)
        {
          v67 = v47;
          v68 = 0;
          while (1)
          {
            if (v66)
            {
              if (v47 < 0)
              {
                __break(1u);
LABEL_38:
                v28 = MEMORY[0x2318B8460](0, v27);
                goto LABEL_9;
              }

              for (i = 0; i != v66; ++i)
              {
                v15 = v64;
                v53 = v65;
                if (v47)
                {
                  v54 = 0;
                  do
                  {
                    v69 = v54 + 1;
                    a3 = swift_allocObject();
                    *(a3 + 16) = v70;
                    *(a3 + 32) = sub_22C90A91C();
                    *(a3 + 40) = sub_22C90A91C();
                    *(a3 + 48) = sub_22C90A91C();
                    v55 = swift_allocObject();
                    *(v55 + 16) = v70;
                    *(v55 + 32) = sub_22C90A91C();
                    *(v55 + 40) = sub_22C90A91C();
                    *(v55 + 48) = sub_22C90A91C();
                    v56 = sub_22C90A5DC();

                    v57 = [v53 0x1FB4DDAF8];

                    v58 = sub_22C90A5DC();
                    v27 = &off_278729000;

                    [v15 setObject:v57 forKeyedSubscript:v58];

                    v47 = v67;
                    v54 = v69;
                  }

                  while (v47 != v69);
                }
              }
            }

            if (++v68 == v62)
            {
              return v64;
            }
          }
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_22C903FAC();
    v21 = sub_22C9063CC();
    v22 = sub_22C90AADC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22C366000, v21, v22, "PlanResolutionModelInput#reshape3dMultiArray: Input array is not 3 dimentional", v23, 2u);
      MEMORY[0x2318B9880](v23, -1, -1);
    }

    (*(v68 + 8))(v12, v69);
    return 0;
  }

  return result;
}

id sub_22C5EFA80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9063DC();
  i = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v51 - v11;
  v12 = [a1 shape];
  v13 = sub_22C3D3108();
  sub_22C90A5EC();

  v14 = sub_22C36E2B8();

  if (v14 == 2)
  {
    v15 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v16 = swift_allocObject();
    v58 = xmmword_22C922280;
    *(v16 + 16) = xmmword_22C922280;
    *(v16 + 32) = sub_22C90A91C();
    *(v16 + 40) = sub_22C90A91C();
    v17 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    result = sub_22C5F2214(v16, 65568);
    if (v3)
    {
      return result;
    }

    v22 = a3;
    v52 = v7;
    v55 = v13;
    v23 = result;
    v24 = sub_22C90ABEC();
    v56 = v23;
    [v23 fillWithNumber_];

    v57 = a1;
    v25 = [a1 shape];
    v26 = sub_22C90A5EC();

    sub_22C633A2C();
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x2318B8460](0, v26);
    }

    else
    {
      v27 = *(v26 + 32);
    }

    v28 = v27;

    v29 = [v28 integerValue];

    if (v29 >= a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = v29;
    }

    v54 = v30;
    v31 = [v57 shape];
    v32 = sub_22C90A5EC();

    sub_22C633A2C();
    v51[1] = 0;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x2318B8460](1, v32);
    }

    else
    {
      v33 = *(v32 + 40);
    }

    v34 = v33;
    v35 = v53;

    v36 = [v34 integerValue];

    if (v36 >= a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = v36;
    }

    sub_22C903FAC();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AABC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = a2;
      *(v40 + 12) = 2048;
      *(v40 + 14) = v22;
      _os_log_impl(&dword_22C366000, v38, v39, "2d reshaping with %ld,%ld", v40, 0x16u);
      MEMORY[0x2318B9880](v40, -1, -1);
    }

    v53 = v15;

    result = (*(i + 8))(v35, v52);
    if (v54 < 0)
    {
      __break(1u);
    }

    else
    {
      if (!v54)
      {
        return v56;
      }

      if ((v37 & 0x8000000000000000) == 0)
      {
        for (i = 0; i != v54; ++i)
        {
          if (v37)
          {
            v41 = 0;
            do
            {
              v42 = v37;
              v43 = v41 + 1;
              v44 = swift_allocObject();
              *(v44 + 16) = v58;
              *(v44 + 32) = sub_22C90A91C();
              *(v44 + 40) = sub_22C90A91C();
              v45 = swift_allocObject();
              *(v45 + 16) = v58;
              *(v45 + 32) = sub_22C90A91C();
              *(v45 + 40) = sub_22C90A91C();
              v46 = sub_22C90A5DC();

              v47 = [v57 0x1FB4DDAF8];

              v48 = sub_22C90A5DC();
              v49 = v56;

              [v49 setObject:v47 forKeyedSubscript:v48];

              v41 = v43;
              v50 = v42 == v43;
              v37 = v42;
            }

            while (!v50);
          }
        }

        return v56;
      }
    }

    __break(1u);
    return result;
  }

  sub_22C903FAC();
  v19 = sub_22C9063CC();
  v20 = sub_22C90AADC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22C366000, v19, v20, "PlanResolutionModelInput#reshape2dMultiArray: Input array is not 2 dimentional", v21, 2u);
    MEMORY[0x2318B9880](v21, -1, -1);
  }

  (*(i + 8))(v10, v7);
  return 0;
}

void *sub_22C5F0048(void *a1, uint64_t a2)
{
  v5 = sub_22C9063DC();
  v44 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v42 = a1;
  v11 = [a1 shape];
  sub_22C3D3108();
  sub_22C90A5EC();

  v12 = sub_22C36E2B8();

  if (v12 != 1)
  {
    sub_22C903FAC();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AADC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "PlanResolutionModelInput#reshape1dMultiArray: Input array is not 1 dimentional", v18, 2u);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    (*(v44 + 8))(v8, v5);
    return 0;
  }

  v41 = v5;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v13 = swift_allocObject();
  v43 = xmmword_22C922290;
  *(v13 + 16) = xmmword_22C922290;
  *(v13 + 32) = sub_22C90A91C();
  v14 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v15 = sub_22C5F2214(v13, 65568);
  if (v2)
  {
    return v5;
  }

  v5 = v15;
  v19 = sub_22C90ABEC();
  [v5 fillWithNumber_];

  v20 = v42;
  v21 = [v42 shape];
  v22 = sub_22C90A5EC();

  sub_22C633A2C();
  v40[1] = 0;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2318B8460](0, v22);
  }

  else
  {
    v23 = *(v22 + 32);
  }

  v24 = v23;

  v25 = [v24 integerValue];

  if (v25 >= a2)
  {
    v26 = a2;
  }

  else
  {
    v26 = v25;
  }

  sub_22C903FAC();
  v27 = sub_22C9063CC();
  v28 = sub_22C90AABC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = a2;
    _os_log_impl(&dword_22C366000, v27, v28, "1d reshaping with %ld", v29, 0xCu);
    v30 = v29;
    v20 = v42;
    MEMORY[0x2318B9880](v30, -1, -1);
  }

  result = (*(v44 + 8))(v10, v41);
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
      v32 = v20;
      v33 = 0;
      do
      {
        v34 = v33 + 1;
        v35 = swift_allocObject();
        *(v35 + 16) = v43;
        *(v35 + 32) = sub_22C90A91C();
        v36 = swift_allocObject();
        *(v36 + 16) = v43;
        *(v36 + 32) = sub_22C90A91C();
        v37 = sub_22C90A5DC();

        v38 = [v32 objectForKeyedSubscript_];

        v39 = sub_22C90A5DC();

        [v5 setObject:v38 forKeyedSubscript:v39];

        v33 = v34;
      }

      while (v26 != v34);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5F04F8(uint64_t a1)
{
  sub_22C9063DC();
  sub_22C369824();
  v99 = v3;
  v100 = v4;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v98 = (v5 - v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v97 = &v93 - v12;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v96 = v13;
  v14 = [*(a1 + 32) shape];
  sub_22C3D3108();
  v15 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2318B8460](0, v15);
  }

  else
  {
    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 integerValue];

  v19 = *(a1 + 16);
  sub_22C5F0BAC(v19);
  if (v1)
  {
    v21 = v98;

    sub_22C903FAC();
    v22 = v1;
    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();

    if (os_log_type_enabled(v23, v24))
    {
      sub_22C37FE78();
      v25 = swift_slowAlloc();
      sub_22C37080C();
      v26 = swift_slowAlloc();
      sub_22C370220();
      v27 = swift_slowAlloc();
      v101 = v27;
      *v25 = 136315394;
      sub_22C36A0FC();
      *(v25 + 4) = sub_22C37A21C(v28, v29, v30);
      *(v25 + 12) = 2112;
      v31 = v1;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v32;
      *v26 = v32;
      _os_log_impl(&dword_22C366000, v23, v24, "[%s]: Error creating new deflated ModelOutput: %@", v25, 0x16u);
      sub_22C5AB9D0(v26);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C36FF94(v27);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v33 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v33);
    }

    else
    {
    }

    sub_22C36D950();
    v49 = v21;
LABEL_17:
    v48(v49, v99);
    return 0;
  }

  v94 = v18;
  v95 = v20;

  if (!v95)
  {
    sub_22C903FAC();
    v51 = sub_22C9063CC();
    v52 = sub_22C90AADC();
    if (sub_22C369E90(v52))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v53 = swift_slowAlloc();
      v101 = v53;
      LODWORD(off_278729000) = 136315138;
      sub_22C36A0FC();
      *(&off_278729000 + 4) = sub_22C37A21C(v54, v55, v56);
      sub_22C3729C4(&dword_22C366000, v57, v58, "[%s]: Unable to deflate rankings");
      sub_22C36FF94(v53);
      v59 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v59);
      v60 = sub_22C36D66C();
      MEMORY[0x2318B9880](v60);
    }

    sub_22C36D950();
    v49 = v10;
    goto LABEL_17;
  }

  v34 = [*(a1 + 16) shape];
  v35 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x2318B8460](0, v35);
  }

  else
  {
    v36 = *(v35 + 32);
  }

  v37 = v36;
  v38 = v98;

  v39 = [v37 integerValue];

  if (v39 >= 50)
  {
    v39 = 50;
  }

  v40 = [*(a1 + 16) &selRef_webSocketTaskWithURL_ + 3];
  v41 = sub_22C90A5EC();

  sub_22C633A2C();
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x2318B8460](2, v41);
  }

  else
  {
    v42 = *(v41 + 48);
  }

  v43 = v42;

  v44 = [v43 integerValue];

  sub_22C5F147C(v39, v44, 50, 15, 4);
  v46 = v45;
  if (!v45)
  {
    v61 = v97;
    sub_22C903FAC();
    v62 = sub_22C9063CC();
    v63 = sub_22C90AADC();
    if (sub_22C369E90(v63))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v64 = swift_slowAlloc();
      v101 = v64;
      *v38 = 136315138;
      sub_22C36A0FC();
      *(v38 + 4) = sub_22C37A21C(v65, v66, v67);
      sub_22C3729C4(&dword_22C366000, v68, v69, "[%s]: Unable to deflate diagnostics");
      sub_22C36FF94(v64);
      v70 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v70);
      v71 = sub_22C36D66C();
      MEMORY[0x2318B9880](v71);
    }

    sub_22C36D950();
    v49 = v61;
    goto LABEL_17;
  }

  v47 = sub_22C5F1C18(v94);
  v72 = v47;
  if (!v47)
  {
    v83 = v96;
    sub_22C903FAC();
    v84 = sub_22C9063CC();
    v85 = sub_22C90AADC();
    if (sub_22C369E90(v85))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v86 = swift_slowAlloc();
      v101 = v86;
      *v38 = 136315138;
      sub_22C36A0FC();
      *(v38 + 4) = sub_22C37A21C(v87, v88, v89);
      sub_22C3729C4(&dword_22C366000, v90, v91, "[%s]: Unable to deflate anonymized history");
      sub_22C36FF94(v86);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v92 = sub_22C36D66C();
      MEMORY[0x2318B9880](v92);
    }

    sub_22C36D950();
    v49 = v83;
    goto LABEL_17;
  }

  sub_22C8FDC98();
  v74 = v73;
  sub_22C8FDCAC();
  v76 = v75;
  sub_22C8FDD3C();
  v78 = v77;
  sub_22C8FDD60();
  v80 = v79;
  sub_22C8FDEB0();
  v82 = v81;
  type metadata accessor for PlanResolutionModelOutput();
  swift_allocObject();
  return sub_22C8FE0E8(v74, v76, v78, v80, v95, v46, v72, v82);
}

void sub_22C5F0BAC(void *a1)
{
  v75 = sub_22C9063DC();
  sub_22C369824();
  v77 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v78 = v8;
  sub_22C8FDDF0();
  v9 = &off_278729000;
  v74 = v10;
  v11 = [v10 shape];
  v12 = sub_22C3D3108();
  v13 = sub_22C90A5EC();

  v14 = v13 & 0xC000000000000001;
  sub_22C5F2370();
  sub_22C633A2C();
  v70 = v6;
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  v15 = *(v13 + 32);
  while (1)
  {
    sub_22C38A9E8();
    v16 = sub_22C5F23A0();

    v17 = [v74 *(v9 + 3520)];
    v18 = sub_22C90A5EC();

    sub_22C37F3C0();
    if (v14)
    {
      MEMORY[0x2318B8460](1, v18);
    }

    else
    {
      v19 = *(v18 + 40);
    }

    sub_22C38A9E8();
    v71 = sub_22C5F23A0();

    v20 = [v74 *(v9 + 3520)];
    v21 = sub_22C90A5EC();

    v22 = v21 & 0xC000000000000001;
    sub_22C633A2C();
    if ((v21 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318B8460](2, v21);
    }

    else
    {
      v23 = *(v21 + 48);
    }

    sub_22C38A9E8();
    v68 = sub_22C5F23A0();

    v24 = [a1 *(v9 + 3520)];
    v25 = sub_22C90A5EC();

    sub_22C37F3C0();
    if (v22)
    {
      MEMORY[0x2318B8460](1, v25);
    }

    else
    {
      v26 = *(v25 + 40);
    }

    sub_22C38A9E8();
    v14 = sub_22C5F23A0();

    v27 = [a1 *(v9 + 3520)];
    v76 = v12;
    v28 = sub_22C90A5EC();

    sub_22C633A2C();
    v73 = a1;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2318B8460](2, v28);
    }

    else
    {
      v29 = *(v28 + 48);
    }

    v30 = v29;
    v31 = v16;

    v9 = sub_22C5F23A0();

    sub_22C903FAC();
    v32 = sub_22C9063CC();
    v33 = sub_22C90AABC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      sub_22C370220();
      v35 = swift_slowAlloc();
      v79 = v35;
      *v34 = 136316674;
      *(v34 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C933050, &v79);
      *(v34 + 12) = 2048;
      *(v34 + 14) = v31;
      *(v34 + 22) = 2048;
      *(v34 + 24) = v71;
      *(v34 + 32) = 2048;
      *(v34 + 34) = v68;
      *(v34 + 42) = 2048;
      *(v34 + 44) = v31;
      *(v34 + 52) = 2048;
      *(v34 + 54) = v14;
      *(v34 + 62) = 2048;
      *(v34 + 64) = v9;
      _os_log_impl(&dword_22C366000, v32, v33, "[%s]: Source:%ldx%ldx%ld, Target:%ldx%ldx%ld", v34, 0x48u);
      sub_22C36FF94(v35);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v36 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v36);
    }

    v69 = *(v77 + 8);
    v69(v78, v75);
    v11 = v74;
    sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v37 = swift_allocObject();
    v78 = 3;
    *(v37 + 16) = xmmword_22C922270;
    *(v37 + 32) = sub_22C90A91C();
    *(v37 + 40) = sub_22C90A91C();
    *(v37 + 48) = sub_22C90A91C();
    v38 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v39 = sub_22C5F2214(v37, 65568);
    a1 = v72;
    if (v72)
    {
      break;
    }

    v52 = v39;
    v70 = 0;
    v53 = sub_22C90ABEC();
    [v52 fillWithNumber_];

    v54 = v71;
    if (v14 < v71)
    {
      v54 = v14;
    }

    if (v54 < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v72 = v14;
    v77 = v9;
    v12 = v52;
    if (v54)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v55 = 0;
      v75 = v54;
      do
      {
        a1 = v76;
        if (v9)
        {
          v56 = 0;
          do
          {
            v14 = v56 + 1;
            v57 = sub_22C5F2354();
            sub_22C38884C(v57);
            v57[2].n128_u64[0] = sub_22C90A91C();
            v57[2].n128_u64[1] = sub_22C90A91C();
            v57[3].n128_u64[0] = sub_22C90A91C();
            v58 = sub_22C5F2354();
            sub_22C38884C(v58);
            v58[2].n128_u64[0] = sub_22C90A91C();
            v58[2].n128_u64[1] = sub_22C90A91C();
            v58[3].n128_u64[0] = sub_22C90A91C();
            v59 = sub_22C90A5DC();

            v60 = [v74 objectForKeyedSubscript_];

            v61 = sub_22C90A5DC();

            [v12 setObject:v60 forKeyedSubscript:v61];

            v9 = v77;
            v56 = v14;
          }

          while (v77 != v14);
        }

        ++v55;
      }

      while (v55 != v75);
    }

    if (!v72)
    {
LABEL_34:

      return;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v13 = 0;
    while (!__OFADD__(v13, 1))
    {
      v75 = v13 + 1;
      a1 = v73;
      if (v9)
      {
        v62 = 0;
        do
        {
          v14 = v62 + 1;
          v63 = sub_22C5F2354();
          sub_22C38884C(v63);
          v63[2].n128_u64[0] = sub_22C90A91C();
          v63[2].n128_u64[1] = sub_22C90A91C();
          v63[3].n128_u64[0] = sub_22C90A91C();
          v64 = sub_22C5F2354();
          sub_22C38884C(v64);
          v64[2].n128_u64[0] = sub_22C90A91C();
          v64[2].n128_u64[1] = sub_22C90A91C();
          v64[3].n128_u64[0] = sub_22C90A91C();
          v65 = sub_22C90A5DC();

          v66 = [v73 objectForKeyedSubscript_];

          v67 = sub_22C90A5DC();

          [v12 setObject:v66 forKeyedSubscript:v67];

          v9 = v77;
          v62 = v14;
        }

        while (v77 != v14);
      }

      v11 = v74;
      ++v13;
      if (v75 == v72)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    MEMORY[0x2318B8460](0, v13);
  }

  sub_22C903FAC();
  v40 = v72;
  v41 = sub_22C9063CC();
  v42 = sub_22C90AADC();

  if (os_log_type_enabled(v41, v42))
  {
    sub_22C37FE78();
    v43 = swift_slowAlloc();
    sub_22C37080C();
    v44 = swift_slowAlloc();
    sub_22C370220();
    v45 = swift_slowAlloc();
    v79 = v45;
    *v43 = 136315394;
    sub_22C36A0FC();
    *(v43 + 4) = sub_22C36F9F4(0xD00000000000002DLL, v46, v47);
    *(v43 + 12) = 2112;
    v48 = v72;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 14) = v49;
    *v44 = v49;
    _os_log_impl(&dword_22C366000, v41, v42, "[%s]: Error creating new deflated MLMultiArray: %@", v43, 0x16u);
    sub_22C5AB9D0(v44);
    v50 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v50);
    sub_22C36FF94(v45);
    v51 = sub_22C36D66C();
    MEMORY[0x2318B9880](v51);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v69(v70, v75);
}

void sub_22C5F147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = sub_22C9063DC();
  sub_22C369824();
  v62 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v56 = v13;
  sub_22C8FDE04();
  v15 = v14;
  v16 = [v14 shape];
  sub_22C3D3108();
  v17 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  for (i = *(v17 + 32); ; i = MEMORY[0x2318B8460](0, v17))
  {
    v19 = i;

    v20 = [(objc_class *)v19 integerValue];

    v21 = a5 * a1;
    if ((a5 * a1) >> 64 != (a5 * a1) >> 63)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    v22 = v21 * a2;
    if ((v21 * a2) >> 64 != (v21 * a2) >> 63)
    {
      goto LABEL_45;
    }

    v57 = v11;
    v23 = a3;
    v54 = a5;
    a3 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22C922290;
    *(v24 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v25 = v22;
    v26 = [v15 dataType];
    v27 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v28 = sub_22C5F2214(v24, v26);
    v29 = sub_22C90ABEC();
    [v28 fillWithNumber_];

    v52 = a1 * a2;
    if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
    {
      goto LABEL_46;
    }

    v51 = v23 * a4;
    if ((v23 * a4) >> 64 != (v23 * a4) >> 63)
    {
      goto LABEL_47;
    }

    a5 = v56;
    sub_22C903FAC();
    v17 = sub_22C9063CC();
    v30 = sub_22C90AABC();
    if (os_log_type_enabled(v17, v30))
    {
      sub_22C370220();
      swift_slowAlloc();
      sub_22C3735E4();
      v64 = swift_slowAlloc();
      *v56 = 136315650;
      v31 = sub_22C5F237C("deflateModelOutputDiagnostics(numberOfTuples:numberOfAmbiguityDimentions:numberOfStaticTuplesSize:numberOfStaticDimentions:numberOfModelDiagnostics:)");
      sub_22C387350(v31);
      *(v56 + 24) = v25;
      _os_log_impl(&dword_22C366000, v17, v30, "[%s]: Source:%ld, Target:%ld", v56, 0x20u);
      sub_22C36FF94(v64);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v32 = sub_22C36D66C();
      MEMORY[0x2318B9880](v32);
    }

    v11 = v59;
    (*(v62 + 8))(v56, v59);
    if (v20 < v25)
    {
      break;
    }

    if (v54 < 0)
    {
      goto LABEL_49;
    }

    v43 = v15;
    if (!v54)
    {
LABEL_34:

      return;
    }

    if (a1 < 0)
    {
      goto LABEL_50;
    }

    v53 = 0;
    while (!a1)
    {
LABEL_33:
      if (++v53 == v54)
      {
        goto LABEL_34;
      }
    }

    if (a2 < 0)
    {
      goto LABEL_48;
    }

    v44 = 0;
    v58 = v51 * v53;
    LODWORD(v59) = (v51 * v53) >> 64 != (v51 * v53) >> 63;
    v55 = v52 * v53;
    LODWORD(v56) = (v52 * v53) >> 64 != (v52 * v53) >> 63;
    while (1)
    {
      v62 = v44;
      if (a2)
      {
        break;
      }

LABEL_32:
      v44 = v62 + 1;
      if (v62 + 1 == a1)
      {
        goto LABEL_33;
      }
    }

    if ((v51 * v53) >> 64 != (v51 * v53) >> 63)
    {
      goto LABEL_37;
    }

    v45 = a4 * v44;
    if ((a4 * v44) >> 64 != (a4 * v44) >> 63)
    {
      goto LABEL_38;
    }

    v46 = v58 + v45;
    if (__OFADD__(v58, v45))
    {
      goto LABEL_39;
    }

    if ((v52 * v53) >> 64 != (v52 * v53) >> 63)
    {
      goto LABEL_40;
    }

    v47 = a2 * v44;
    if ((a2 * v44) >> 64 != (a2 * v44) >> 63)
    {
      goto LABEL_41;
    }

    v15 = (v55 + v47);
    if (!__OFADD__(v55, v47))
    {
      v11 = 0;
      while (1)
      {
        v17 = v46 + v11;
        if (__OFADD__(v46, v11))
        {
          break;
        }

        if (__OFADD__(v15, v11))
        {
          goto LABEL_36;
        }

        ++v11;
        a5 = swift_allocObject();
        *(a5 + 16) = xmmword_22C922290;
        *(a5 + 32) = sub_22C90A91C();
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_22C922290;
        *(v48 + 32) = sub_22C90A91C();
        v49 = sub_22C90A5DC();

        v50 = [v43 objectForKeyedSubscript_];

        v17 = sub_22C90A5DC();

        [v28 setObject:v50 forKeyedSubscript:v17];

        if (a2 == v11)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    ;
  }

  sub_22C90AF5C();
  MEMORY[0x2318B7850](91, 0xE100000000000000);
  MEMORY[0x2318B7850](0xD000000000000095, 0x800000022C932FB0);
  MEMORY[0x2318B7850](0xD000000000000042, 0x800000022C932F60);
  sub_22C5F2300();
  v33 = swift_allocError();
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  swift_willThrow();

  sub_22C903FAC();
  v35 = v33;
  v36 = sub_22C9063CC();
  v37 = sub_22C90AADC();

  if (os_log_type_enabled(v36, v37))
  {
    sub_22C37FE78();
    v38 = swift_slowAlloc();
    sub_22C37080C();
    v39 = swift_slowAlloc();
    sub_22C370220();
    v65 = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_22C5F237C("deflateModelOutputDiagnostics(numberOfTuples:numberOfAmbiguityDimentions:numberOfStaticTuplesSize:numberOfStaticDimentions:numberOfModelDiagnostics:)");
    *(v38 + 12) = 2112;
    v40 = v33;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v41;
    *v39 = v41;
    _os_log_impl(&dword_22C366000, v36, v37, "[%s]: Error creating new deflated MLMultiArray: %@", v38, 0x16u);
    sub_22C5AB9D0(v39);
    v42 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v42);
    sub_22C36FF94(v65);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  (*(v62 + 8))(v57, v59);
}

id sub_22C5F1C18(uint64_t a1)
{
  v54 = sub_22C9063DC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v49 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v9 = v8;
  sub_22C8FDE20();
  v52 = v10;
  v11 = [v10 shape];
  sub_22C3D3108();
  v12 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2318B8460](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 integerValue];

  v16 = [v52 shape];
  v17 = sub_22C90A5EC();

  sub_22C633A2C();
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2318B8460](1, v17);
  }

  else
  {
    v18 = *(v17 + 40);
  }

  v19 = v18;

  v20 = [v19 integerValue];

  if (v15 < a1)
  {
    a1 = v15;
  }

  sub_22C903FAC();
  v21 = sub_22C9063CC();
  v22 = sub_22C90AABC();
  v53 = v20;
  if (os_log_type_enabled(v21, v22))
  {
    swift_slowAlloc();
    sub_22C3735E4();
    v23 = swift_slowAlloc();
    v55 = v23;
    *v20 = 136316162;
    v24 = sub_22C36F9F4(0xD00000000000002ELL, 0x800000022C932F30, &v55);
    sub_22C387350(v24);
    *(v20 + 24) = v20;
    *(v20 + 32) = v25;
    *(v20 + 34) = a1;
    *(v20 + 42) = v25;
    *(v20 + 44) = v20;
    _os_log_impl(&dword_22C366000, v21, v22, "[%s]: Source:%ldx%ld, Target:%ldx%ld", v20, 0x34u);
    sub_22C36FF94(v23);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v26 = *(v3 + 8);
  v26(v9, v54);
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22C922280;
  *(v27 + 32) = sub_22C90A91C();
  *(v27 + 40) = sub_22C90A91C();
  v28 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_22C5F2214(v27, 65568);
  if (v50)
  {

    sub_22C903FAC();
    v30 = v50;
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();

    if (os_log_type_enabled(v31, v32))
    {
      sub_22C37FE78();
      v33 = swift_slowAlloc();
      sub_22C37080C();
      swift_slowAlloc();
      sub_22C3735E4();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v33 = 136315394;
      sub_22C36A0FC();
      *(v33 + 4) = sub_22C36F9F4(0xD00000000000002ELL, v35, v36);
      *(v33 + 12) = 2112;
      v37 = v50;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v38;
      *v20 = v38;
      _os_log_impl(&dword_22C366000, v31, v32, "[%s]: Error creating new deflated MLMultiArray: %@", v33, 0x16u);
      sub_22C5AB9D0(v20);
      v39 = sub_22C36D66C();
      MEMORY[0x2318B9880](v39);
      sub_22C36FF94(v34);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    v26(v49, v54);
    return 0;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = result;
    if (!a1)
    {
LABEL_20:

      return v40;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v51 = a1;
      do
      {
        if (v20)
        {
          v42 = 0;
          do
          {
            v43 = v42 + 1;
            v44 = swift_allocObject();
            sub_22C38884C(v44);
            v44[2].n128_u64[0] = sub_22C90A91C();
            v44[2].n128_u64[1] = sub_22C90A91C();
            v45 = swift_allocObject();
            sub_22C38884C(v45);
            v45[2].n128_u64[0] = sub_22C90A91C();
            v45[2].n128_u64[1] = sub_22C90A91C();
            v46 = sub_22C90A5DC();

            v47 = [v52 objectForKeyedSubscript_];

            v48 = sub_22C90A5DC();
            v20 = v53;

            [v40 setObject:v47 forKeyedSubscript:v48];

            v42 = v43;
          }

          while (v53 != v43);
        }

        ++v41;
      }

      while (v41 != v51);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

id sub_22C5F2214(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_22C3D3108();
  v4 = sub_22C90A5DC();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22C90030C();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_22C5F2300()
{
  result = qword_27D9BF218;
  if (!qword_27D9BF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF218);
  }

  return result;
}

uint64_t sub_22C5F2354()
{

  return swift_allocObject();
}

unint64_t sub_22C5F237C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000095, (a1 - 32) | 0x8000000000000000, (v1 - 104));
}

id sub_22C5F23A0()
{

  return [v0 (v1 + 120)];
}

uint64_t StructuredSearchQueryKeys.rawValue.getter()
{
  result = 0x6E6F697473657571;
  switch(*v0)
  {
    case 1:
      v2 = 0x686372616573;
      goto LABEL_11;
    case 2:
      result = 0x64726F5F74726F73;
      break;
    case 3:
      v2 = 0x6E7275746572;
LABEL_11:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x656D616E5F676174;
      break;
    case 7:
      result = 0x6C6F635F67616C66;
      break;
    case 8:
      result = 0x645F656372756F73;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x6E6F73726570;
      break;
    case 0xD:
      result = 0x7265646E6573;
      break;
    case 0xE:
      result = 0x7265766965636572;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5F2580(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if ((v16 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 0;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 1;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

IntelligenceFlowPlannerRuntime::StructuredSearchQueryKeys_optional __swiftcall StructuredSearchQueryKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22C5F2750()
{
  result = qword_27D9BF220;
  if (!qword_27D9BF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF220);
  }

  return result;
}

uint64_t sub_22C5F27C8@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredSearchQueryKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C5F27F4()
{
  result = qword_27D9BF228;
  if (!qword_27D9BF228)
  {
    sub_22C3AC1A0(&qword_27D9BF230, &qword_22C922360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredSearchQueryKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredSearchQueryKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

BOOL sub_22C5F29CC(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x2318B57A0]();
  v10 = v2;
  v11 = a2;
  if (sub_22C5F2580(sub_22C5F34C4, &v9, a1))
  {
    v6 = *(a1 + 16);
    v7 = *(v5 + 16);

    return v6 == v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22C5F2A5C(uint64_t a1)
{
  v2 = MEMORY[0x2318B57A0]();
  v5 = sub_22C71B430(v2, a1, v3, v4);

  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  v6 = sub_22C90098C();
  sub_22C369824();
  v8 = v7;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C90F800;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277D36E40], v6);
  if (v5)
  {
    sub_22C36BA00();
    sub_22C46EC84();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22C5F2BA4()
{
  v0 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v32 - v1;
  v3 = sub_22C90654C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_22C901FAC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = MEMORY[0x2318B57A0]();
  sub_22C6053E0(v20, v12);

  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    v21 = &qword_27D9BC030;
    v22 = &unk_22C911CC0;
    v23 = v12;
LABEL_5:
    sub_22C3770B0(v23, v21, v22);
    return 0;
  }

  (*(v15 + 32))(v19, v12, v13);
  sub_22C646D68();
  v24 = sub_22C9070DC();
  if (sub_22C370B74(v2, 1, v24) == 1)
  {
    (*(v15 + 8))(v19, v13);
    v21 = &qword_27D9BAA18;
    v22 = &qword_22C911C40;
    v23 = v2;
    goto LABEL_5;
  }

  sub_22C90702C();
  (*(v15 + 8))(v19, v13);
  (*(*(v24 - 8) + 8))(v2, v24);
  if ((*(v5 + 88))(v9, v3) == *MEMORY[0x277D1DAA8])
  {
    (*(v5 + 96))(v9, v3);
    sub_22C906F2C();
    v26 = sub_22C36BA00();
    if (v27(v26) == *MEMORY[0x277D1DEF8])
    {
      v28 = sub_22C36BA00();
      v29(v28);
      return *v9;
    }

    v30 = sub_22C36BA00();
    v31(v30);
  }

  else
  {
    (*(v5 + 8))(v9, v3);
  }

  return 0;
}

BOOL sub_22C5F2F8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v3 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_22C90654C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - v12;
  v13 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_22C901FAC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2318B57A0](v18);
  sub_22C6053E0(v21, v15);

  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    sub_22C3770B0(v15, &qword_27D9BC030, &unk_22C911CC0);
    return 0;
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_22C646D68();
  v22 = sub_22C9070DC();
  if (sub_22C370B74(v5, 1, v22) == 1)
  {
    sub_22C3770B0(v5, &qword_27D9BAA18, &qword_22C911C40);
    (*(v17 + 8))(v20, v16);
    return 0;
  }

  sub_22C90702C();
  (*(*(v22 - 8) + 8))(v5, v22);
  v25 = v35;
  v24 = v36;
  v26 = v33;
  (*(v35 + 32))(v33, v11, v36);
  v27 = v34;
  (*(v25 + 16))(v34, v26, v24);
  if ((*(v25 + 88))(v27, v24) == *MEMORY[0x277D1DAA8])
  {
    (*(v25 + 96))(v27, v24);
    v28 = sub_22C906F2C();
    v29 = *(v28 - 8);
    if ((*(v29 + 88))(v27, v28) == *MEMORY[0x277D1DEE8])
    {
      (*(v29 + 96))(v27, v28);
      v30 = *(*v27 + 16);

      (*(v25 + 8))(v26, v24);
      (*(v17 + 8))(v20, v16);
      return v30 == 1;
    }

    (*(v25 + 8))(v26, v24);
    (*(v17 + 8))(v20, v16);
    (*(v29 + 8))(v27, v28);
  }

  else
  {
    v31 = *(v25 + 8);
    v31(v26, v24);
    (*(v17 + 8))(v20, v16);
    v31(v27, v24);
  }

  return 1;
}

BOOL sub_22C5F34E4(uint64_t a1)
{
  sub_22C900A9C();
  sub_22C369824();
  v40 = v3;
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v39 = v5 - v4;
  sub_22C900ACC();
  sub_22C369824();
  v42 = v7;
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C90098C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = MEMORY[0x2318B57A0]();
  v21 = sub_22C71B430(v18, a1, v19, v20);

  if (!v21)
  {

    v21 = MEMORY[0x277D84F90];
  }

  v22 = (*(v13 + 104))(v17, *MEMORY[0x277D36E38], v11);
  MEMORY[0x28223BE20](v22);
  sub_22C369920();
  *(v23 - 16) = v17;
  v25 = sub_22C5EC56C(sub_22C5F3904, v24, v21);

  v26 = (*(v13 + 8))(v17, v11);
  if (v25)
  {
    return 1;
  }

  MEMORY[0x2318B57A0](v26);
  v27 = sub_22C71B624();

  if (!v27)
  {

    v27 = MEMORY[0x277D84F90];
  }

  v28 = (*(v42 + 104))(v10, *MEMORY[0x277D36EC8], v43);
  MEMORY[0x28223BE20](v28);
  sub_22C369920();
  *(v29 - 16) = v10;
  v31 = sub_22C5EC53C(sub_22C5F3924, v30, v27);

  v32 = (*(v42 + 8))(v10, v43);
  if (v31)
  {
    return 1;
  }

  else
  {
    MEMORY[0x2318B57A0](v32);
    v34 = sub_22C71B818();

    if (!v34)
    {

      v34 = MEMORY[0x277D84F90];
    }

    v35 = (*(v40 + 104))(v39, *MEMORY[0x277D36EA0], v41);
    MEMORY[0x28223BE20](v35);
    sub_22C369920();
    *(v36 - 16) = v39;
    v33 = sub_22C5EC50C(sub_22C5F3944, v37, v34);

    (*(v40 + 8))(v39, v41);
  }

  return v33;
}

uint64_t sub_22C5F3964@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v97 = a3;
  v98 = a4;
  v111 = a1;
  v112 = a2;
  v101 = a6;
  v92 = sub_22C901FAC();
  sub_22C369824();
  v91 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C3698F8(v8);
  v88 = sub_22C9093BC();
  sub_22C369824();
  v87 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v89 = v11;
  v12 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = (&v84 - v13);
  sub_22C36BA0C();
  v103 = sub_22C90941C();
  sub_22C369824();
  v95 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v99 = v19;
  v20 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  MEMORY[0x28223BE20](v20 - 8);
  v102 = &v84 - v21;
  sub_22C36BA0C();
  v22 = sub_22C90981C();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v106 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v100 = v31;
  result = sub_22C908DCC();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v109 = v24 + 8;
  v110 = v24 + 16;
  v107 = (v24 + 32);
  v108 = MEMORY[0x277D84F90];
  v113 = v22;
  while (1)
  {
    if (v35 == v34)
    {

      v52 = v102;
      sub_22C58B39C(v108, v102);

      if (sub_22C370B74(v52, 1, v22) == 1)
      {
        v53 = &qword_27D9BC0C0;
        v54 = &unk_22C911FA0;
        v55 = v52;
      }

      else
      {
        v59 = v100;
        v60 = (*v107)(v100, v52, v22);
        v114[0] = 0;
        v61 = v93;
        MEMORY[0x2318B6CE0](v60);
        v62 = v99;
        sub_22C5F417C(v114, v99);
        v63 = v95;
        v64 = *(v95 + 8);
        v64(v61, v103);
        v65 = v94;
        v66 = v22;
        v67 = v97;
        v68 = v98;
        v69 = v104;
        sub_22C5F45E0(v62, v96, v94);
        v104 = v69;
        if (v69)
        {
          v64(v62, v103);
          sub_22C374E38();
          return v70(v59, v66);
        }

        v112 = v64;
        v71 = v103;
        if (sub_22C370B74(v65, 1, v103) != 1)
        {
          v73 = v85;
          (*(v63 + 32))(v85, v65, v71);
          (*(v87 + 16))(v89, v67, v88);
          if (v114[0] == 1)
          {
            v74 = v63;
            v75 = swift_allocBox();
            (*(v74 + 16))(v76, v73, v71);
            v77 = v86;
            *v86 = v75;
            (*(v74 + 104))(v77, *MEMORY[0x277D72AB0], v71);
          }

          else
          {
            (*(v63 + 16))(v86, v73, v71);
          }

          v78 = v100;
          (*(v91 + 16))(v90, v68, v92);
          v79 = v101;
          sub_22C907CBC();
          v80 = v103;
          v81 = v112;
          v112(v73, v103);
          v81(v99, v80);
          sub_22C374E38();
          v82(v78, v113);
          v83 = type metadata accessor for StepResolution(0);
          swift_storeEnumTagMultiPayload();
          v57 = v79;
          v58 = 0;
          v56 = v83;
          return sub_22C36C640(v57, v58, 1, v56);
        }

        v112(v62, v71);
        sub_22C374E38();
        v72(v100, v113);
        v53 = &qword_27D9BC028;
        v54 = &unk_22C9134B0;
        v55 = v65;
      }

      sub_22C36DD28(v55, v53, v54);
      v56 = type metadata accessor for StepResolution(0);
      v57 = v101;
      v58 = 1;
      return sub_22C36C640(v57, v58, 1, v56);
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v36 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v37 = *(v24 + 72);
    (*(v24 + 16))(v30, v33 + v36 + v37 * v34, v22);
    if (sub_22C9097DC() == v111 && v38 == v112)
    {

LABEL_11:
      v42 = *v107;
      (*v107)(v106, v30, v113);
      v43 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v43;
      v105 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_22C377BA0();
        sub_22C3B6FA0(v45, v46, v47);
        v43 = v115;
      }

      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v108 = v49 + 1;
        sub_22C3B6FA0(v48 > 1, v49 + 1, 1);
        v50 = v108;
        v43 = v115;
      }

      ++v34;
      *(v43 + 16) = v50;
      v108 = v43;
      v51 = v43 + v36 + v49 * v37;
      v22 = v113;
      result = v105(v51, v106, v113);
    }

    else
    {
      v40 = sub_22C90B4FC();

      if (v40)
      {
        goto LABEL_11;
      }

      sub_22C374E38();
      v22 = v113;
      result = v41(v30, v113);
      ++v34;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5F417C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  sub_22C9063DC();
  sub_22C369824();
  v51 = v4;
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v6 = v5;
  sub_22C36BA0C();
  v7 = sub_22C90941C();
  sub_22C369824();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v46 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = *(v9 + 16);
  sub_22C37EBD0();
  v17();
  v18 = sub_22C372280();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D72AD0])
  {
LABEL_2:
    v21 = sub_22C372280();
    v22(v21);
    sub_22C37EBD0();
    return (v17)();
  }

  v53 = a2;
  if (v20 == *MEMORY[0x277D72AB0])
  {
    v24 = sub_22C372280();
    v25(v24);
    v26 = swift_projectBox();
    (v17)(v16, v26, v7);
    v27 = v54;
    *v54 = 1;
    v28 = v53;
LABEL_7:
    sub_22C5F417C(v27, v28);
    v32 = sub_22C36FCCC();
    v33(v32);
  }

  if (v20 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D72AD8] || v20 == *MEMORY[0x277D72AB8])
  {
    goto LABEL_2;
  }

  if (v20 == *MEMORY[0x277D72AE0])
  {
LABEL_6:
    v29 = sub_22C372280();
    v30(v29);
    v31 = swift_projectBox();
    (v17)(v16, v31, v7);
    v28 = v53;
    v27 = v54;
    goto LABEL_7;
  }

  sub_22C903F8C();
  sub_22C37EBD0();
  v17();
  v54 = v6;
  v35 = sub_22C9063CC();
  v50 = sub_22C90AADC();
  if (os_log_type_enabled(v35, v50))
  {
    v36 = swift_slowAlloc();
    v48 = v36;
    v49 = swift_slowAlloc();
    v55 = v49;
    *v36 = 136315138;
    (v17)(v16, v13, v7);
    sub_22C36FCCC();
    v46 = sub_22C90A1AC();
    v47 = v35;
    v38 = v37;
    v39 = sub_22C387368();
    v16(v39);
    v40 = sub_22C36F9F4(v46, v38, &v55);

    v42 = v47;
    v41 = v48;
    *(v48 + 1) = v40;
    v43 = v49;
    sub_22C36FF94(v49);
    MEMORY[0x2318B9880](v43, -1, -1);
    MEMORY[0x2318B9880](v41, -1, -1);
  }

  else
  {

    v44 = sub_22C387368();
    v16(v44);
  }

  (*(v51 + 8))(v54, v52);
  sub_22C37EBD0();
  v17();
  v45 = sub_22C372280();
  return (v16)(v45);
}

uint64_t sub_22C5F45E0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v130 = a2;
  v132 = a3;
  v4 = sub_22C90952C();
  v139 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v133 = &v115[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C9063DC();
  v124 = *(v6 - 8);
  v125 = v6;
  MEMORY[0x28223BE20](v6);
  v126 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = sub_22C90430C();
  v136 = *(v143 - 1);
  v8 = MEMORY[0x28223BE20](v143);
  v134 = &v115[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v115[-v10];
  v140 = sub_22C9094EC();
  v142 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v13 = &v115[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  MEMORY[0x28223BE20](v14);
  v16 = &v115[-v15];
  v17 = sub_22C90941C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v18 + 16);
  v141 = a1;
  v123 = v18 + 16;
  v122 = v21;
  v21(v20, a1, v17);
  v22 = (*(v18 + 88))(v20, v17);
  v23 = *MEMORY[0x277D72AB8];
  v24 = MEMORY[0x277D72D50];
  v137 = v17;
  v135 = v4;
  v127 = v18;
  if (v22 != v23)
  {
    (*(v18 + 8))(v20, v17);
    v28 = *v24;
    v39 = v139;
    goto LABEL_8;
  }

  v118 = v22;
  (*(v18 + 96))(v20, v17);
  v25 = swift_projectBox();
  sub_22C4802FC(v25, v16);
  v129 = v14;

  v26 = v139;
  v27 = (*(v139 + 88))(v16, v4);
  v28 = *v24;
  if (v27 != v28)
  {
    (*(v26 + 8))(v16, v4);

    v39 = v26;
    goto LABEL_8;
  }

  v29 = v17;
  v128 = v27;
  (*(v26 + 96))(v16, v4);
  v30 = swift_projectBox();
  v31 = v142;
  v32 = v140;
  (*(v142 + 16))(v13, v30, v140);
  v33 = (*(v31 + 88))(v13, v32);
  v34 = *MEMORY[0x277D72CC0];
  (*(v31 + 8))(v13, v32);

  if (v33 != v34)
  {
    v39 = v139;
    v28 = v128;
LABEL_8:
    sub_22C9093DC();
    v40 = v140;
    v41 = swift_allocBox();
    v42 = *MEMORY[0x277D72CD8];
    v43 = *(v142 + 104);
    v142 += 104;
    v143 = v43;
    v43(v44, v42, v40);
    v45 = v133;
    *v133 = v41;
    v46 = *(v39 + 104);
    v128 = v28;
    v47 = v28;
    v48 = v135;
    v46(v45, v47, v135);
    sub_22C5E94F0();
    LOBYTE(v41) = v49;

    (*(v39 + 8))(v45, v48);
    if (v41)
    {
      v50 = v138;
      result = sub_22C5F6894(v130);
      if (!v50)
      {
        if (result)
        {
          v51 = swift_allocBox();
          v53 = v52;
          v54 = v140;
          v55 = swift_allocBox();
          v143(v56, v42, v54);
          *v53 = v55;
          v46(v53, v128, v48);
          v57 = v132;
          *v132 = v51;
          v58 = v137;
          (*(v127 + 104))(v57, *MEMORY[0x277D72AD0], v137);
          v59 = v57;
          v60 = 0;
          v61 = v58;
        }

        else
        {
          v59 = v132;
          v60 = 1;
          v61 = v137;
        }

        return sub_22C36C640(v59, v60, 1, v61);
      }
    }

    else
    {
      v62 = v132;
      v63 = 1;
      v64 = v137;
      return sub_22C36C640(v62, v63, 1, v64);
    }

    return result;
  }

  v35 = v141;
  v36 = sub_22C5F55CC();
  v37 = v138;
  result = sub_22C5F5A9C(v130);
  if (v37)
  {
  }

  if (!result)
  {
    sub_22C36C640(v132, 1, 1, v29);
  }

  v116 = v33;
  v130 = v36;
  v138 = 0;
  v65 = 0;
  v133 = *(result + 16);
  v120 = v136 + 16;
  v119 = (v136 + 32);
  v117 = (v136 + 8);
  v66 = MEMORY[0x277D84F90];
  for (i = result; ; result = i)
  {
    v67 = v65;
    v68 = v129;
LABEL_21:
    if (v67 == v133)
    {
      break;
    }

    if (v67 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v69 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v70 = *(v136 + 72);
    v65 = (v67 + 1);
    (*(v136 + 16))(v11, result + v69 + v70 * v67, v143);
    v71 = v130 + v69;
    v72 = *(v130 + 2) + 1;
    do
    {
      if (!--v72)
      {
        (*v117)(v11, v143);
        v67 = v65;
        v35 = v141;
        v68 = v129;
        result = i;
        goto LABEL_21;
      }

      v73 = &v71[v70];
      v74 = sub_22C9042DC();
      v71 = v73;
    }

    while ((v74 & 1) == 0);
    v75 = *v119;
    (*v119)(v134, v11, v143);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C3B6BF8(0, *(v66 + 16) + 1, 1);
      v66 = v144;
    }

    v78 = *(v66 + 16);
    v77 = *(v66 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_22C3B6BF8(v77 > 1, v78 + 1, 1);
      v66 = v144;
    }

    *(v66 + 16) = v78 + 1;
    v75(v66 + v69 + v78 * v70, v134, v143);
    v29 = v137;
    v35 = v141;
  }

  if (*(v66 + 16))
  {

    v79 = swift_allocBox();
    v81 = v80;
    v82 = *(v68 + 48);
    v83 = v140;
    v84 = swift_allocBox();
    (*(v142 + 104))(v85, v116, v83);
    *v81 = v84;
    (*(v139 + 104))(v81, v128, v135);
    sub_22C3A5908(&qword_27D9BF238, &unk_22C925C80);
    v86 = sub_22C90969C();
    v87 = *(v86 - 8);
    v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_22C90F800;
    *(v89 + v88) = v66;
    (*(v87 + 104))(v89 + v88, *MEMORY[0x277D72E68], v86);
    *(v81 + v82) = v89;
    v90 = v132;
    *v132 = v79;
    (*(v127 + 104))(v90, v118, v29);
    v62 = v90;
    v63 = 0;
    v64 = v29;
    return sub_22C36C640(v62, v63, 1, v64);
  }

  v91 = result;

  v92 = v126;
  sub_22C903F8C();
  v93 = v130;

  v94 = sub_22C9063CC();
  v95 = sub_22C90AADC();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v144 = v142;
    *v96 = 136315394;
    v97 = v143;
    v98 = MEMORY[0x2318B7AD0](v93, v143);
    v100 = v99;

    v101 = sub_22C36F9F4(v98, v100, &v144);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2080;
    v102 = MEMORY[0x2318B7AD0](v91, v97);
    v104 = v103;

    v105 = sub_22C36F9F4(v102, v104, &v144);
    v106 = v141;

    *(v96 + 14) = v105;
    _os_log_impl(&dword_22C366000, v94, v95, "Unable to find appropriate type. Acceptable types: %s, available types: %s", v96, 0x16u);
    v107 = v142;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v107, -1, -1);
    MEMORY[0x2318B9880](v96, -1, -1);

    v108 = v106;
    (*(v124 + 8))(v126, v125);
    v109 = v131;
    v110 = v122;
  }

  else
  {

    (*(v124 + 8))(v92, v125);
    v109 = v131;
    v110 = v122;
    v108 = v35;
  }

  type metadata accessor for InterpreterError(0);
  sub_22C5F8844();
  swift_allocError();
  v112 = v111;
  v113 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
  v110(v112, v108, v29);
  v114 = sub_22C9093BC();
  (*(*(v114 - 8) + 16))(v112 + v113, v109, v114);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_22C5F52EC(void (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for InterpreterError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v25 = v4;
  sub_22C36BA0C();
  v5 = sub_22C901FAC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C90941C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  sub_22C5F417C(&v28, v17 - v16);
  sub_22C901F4C();
  v19 = sub_22C36FCCC();
  sub_22C5F45E0(v19, a1, v20);
  if (v27)
  {
    (*(v7 + 8))(v11, v5);
    v21 = *(v14 + 8);
    v21(v18, v12);
    v22 = v27;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {

        v23 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
        sub_22C9093BC();
        sub_22C36985C();
        (*(v24 + 8))(v25 + v23);
        v21(v25, v12);

        sub_22C36C640(a2, 1, 1, v12);
        return;
      }

      sub_22C5F889C(v25);
    }
  }

  else
  {
    (*(v7 + 8))(v11, v5);
    (*(v14 + 8))(v18, v12);
  }
}

uint64_t sub_22C5F55CC()
{
  v1 = v0;
  v2 = sub_22C90969C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - v7;
  v8 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v1, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D72AB8])
  {
    (*(v12 + 8))(v14, v11);
    return MEMORY[0x277D84F90];
  }

  (*(v12 + 96))(v14, v11);
  v15 = swift_projectBox();
  sub_22C4802FC(v15, v10);
  v16 = *&v10[*(v8 + 48)];
  v17 = sub_22C90952C();
  (*(*(v17 - 8) + 8))(v10, v17);

  v18 = *(v16 + 16);
  if (!v18)
  {

    return MEMORY[0x277D84F90];
  }

  v20 = *(v3 + 16);
  v19 = v3 + 16;
  v21 = *(v19 + 64);
  v38 = v16;
  v22 = (v16 + ((v21 + 32) & ~v21));
  v40 = *(v19 + 56);
  v42 = (v19 + 72);
  v43 = v20;
  v41 = *MEMORY[0x277D72E68];
  v23 = (v19 - 8);
  v44 = v19;
  v39 = (v19 + 80);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v45;
    v26 = v43;
    v43(v45, v22, v2);
    v26(v6, v25, v2);
    v27 = (*v42)(v6, v2);
    v28 = *v23;
    if (v27 == v41)
    {
      v28(v25, v2);
      result = (*v39)(v6, v2);
      v30 = *v6;
    }

    else
    {
      v28(v6, v2);
      result = (v28)(v25, v2);
      v30 = MEMORY[0x277D84F90];
    }

    v31 = *(v30 + 16);
    v32 = *(v24 + 16);
    if (__OFADD__(v32, v31))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > *(v24 + 24) >> 1)
    {
      sub_22C5921DC();
      v24 = v33;
    }

    if (*(v30 + 16))
    {
      v34 = (*(v24 + 24) >> 1) - *(v24 + 16);
      result = sub_22C90430C();
      if (v34 < v31)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v35 = *(v24 + 16);
        v36 = __OFADD__(v35, v31);
        v37 = v35 + v31;
        if (v36)
        {
          goto LABEL_26;
        }

        *(v24 + 16) = v37;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_24;
      }
    }

    v22 += v40;
    if (!--v18)
    {

      return v24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22C5F5A9C(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v176 = a1;
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22C3698F8(&v143 - v3);
  v150 = sub_22C90906C();
  sub_22C369824();
  v148 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v168 = sub_22C90941C();
  sub_22C369824();
  v171 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v167 = v9;
  sub_22C36BA0C();
  v166 = sub_22C90963C();
  sub_22C369824();
  v145 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v170 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v165 = v14;
  sub_22C36BA0C();
  v164 = sub_22C90965C();
  sub_22C369824();
  v169 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  v18 = MEMORY[0x28223BE20](v17);
  v163 = &v143 - v19;
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  sub_22C3698F8(v20);
  v154 = sub_22C90919C();
  sub_22C369824();
  v153 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v23);
  sub_22C9093BC();
  sub_22C369824();
  v157 = v25;
  v158 = v24;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  v159 = v26;
  sub_22C36BA0C();
  sub_22C90947C();
  sub_22C369824();
  v161 = v28;
  v162 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v31 = (v30 - v29);
  sub_22C90077C();
  sub_22C369824();
  v174 = v32;
  v175 = v33;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v36 = v35 - v34;
  v173 = sub_22C908A8C();
  sub_22C369824();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v42 = v41 - v40;
  v172 = sub_22C90952C();
  sub_22C369824();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  v48 = v47 - v46;
  v49 = sub_22C9095CC();
  sub_22C369824();
  v156 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v54 = v53 - v52;
  v155 = v1;
  sub_22C90935C();
  v55 = sub_22C908B2C();
  MEMORY[0x2318B6010](v55);
  v160 = v31;
  v56 = v177;
  sub_22C908B1C();
  v177 = v56;
  if (v56)
  {
    (*(v175 + 8))(v36, v174);
    (*(v38 + 8))(v42, v173);
    (*(v44 + 8))(v48, v172);
    return v54;
  }

  v57 = v159;
  v143 = v54;
  v144 = v49;
  (*(v175 + 8))(v36, v174);
  (*(v38 + 8))(v42, v173);
  (*(v44 + 8))(v48, v172);
  v59 = v160;
  v58 = v161;
  v60 = v162;
  if ((*(v161 + 88))(v160, v162) != *MEMORY[0x277D72B68])
  {
    v75 = *(v58 + 8);
    v76 = v59;
    v77 = v60;
LABEL_8:
    v75(v76, v77);
    return 0;
  }

  (*(v58 + 96))(v59, v60);
  v61 = v143;
  (*(v156 + 32))(v143, v59, v144);
  v62 = v158;
  (*(v157 + 16))(v57, v155, v158);
  v63 = sub_22C36A10C();
  v65 = v64(v63);
  if (v65 == *MEMORY[0x277D72A38])
  {
    v66 = sub_22C36A10C();
    v67(v66);
    v68 = swift_projectBox();
    v69 = v152;
    (*(v153 + 16))(v152, v68, v154);
    sub_22C5F7618(v69, v61);
    v54 = v70;
    v71 = sub_22C3728B8();
    v72(v71);
    v73 = sub_22C37186C();
    v74(v73);
LABEL_6:

    return v54;
  }

  if (v65 == *MEMORY[0x277D729E0])
  {
    v79 = sub_22C36A10C();
    v80(v79);
    v175 = *v57;
    v81 = swift_projectBox();
    (*(v148 + 16))(v149, v81, v150);
    v82 = v62;
    v54 = sub_22C90905C();
    v83 = v151;
    sub_22C58B008(v54, v151);

    if (sub_22C370B74(v83, 1, v82) != 1)
    {
      v116 = v177;
      v117 = sub_22C5F5A9C(v176);
      v177 = v116;
      if (v116)
      {
        v118 = sub_22C3728B8();
        v119(v118);
        v120 = sub_22C37186C();
        v121(v120);
        (*(v157 + 8))(v83, v158);

        return v54;
      }

      v54 = v117;
      v139 = sub_22C3728B8();
      v140(v139);
      v141 = sub_22C37186C();
      v142(v141);
      (*(v157 + 8))(v83, v158);
      goto LABEL_6;
    }

    v84 = sub_22C3728B8();
    v85(v84);
    v86 = sub_22C37186C();
    v87(v86);
    sub_22C36DD28(v83, &qword_27D9BB908, &qword_22C910960);

    return 0;
  }

  if (v65 != *MEMORY[0x277D729F8])
  {
    v122 = sub_22C37186C();
    v123(v122);
    v76 = sub_22C36A10C();
    goto LABEL_8;
  }

  v88 = sub_22C36A10C();
  v89(v88);
  result = sub_22C9095BC();
  v90 = 0;
  v173 = *(result + 16);
  v91 = v169;
  v175 = v169 + 16;
  LODWORD(v162) = *MEMORY[0x277D72E08];
  v160 = (v145 + 8);
  v161 = v145 + 104;
  v174 = (v169 + 8);
  v157 = v169 + 32;
  v158 = MEMORY[0x277D84F90];
  v92 = v164;
  v93 = v170;
  v94 = v171;
  v95 = v146;
  v172 = result;
  while (v173 != v90)
  {
    if (v90 >= *(result + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v159 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v96 = *(v91 + 72);
    (*(v91 + 16))(v95, result + v159 + v96 * v90, v92);
    v97 = v165;
    v98 = v95;
    sub_22C90964C();
    v99 = v93;
    v100 = v93;
    v101 = v166;
    (*v161)(v99, v162, v166);
    LODWORD(v176) = sub_22C90962C();
    v102 = *v160;
    (*v160)(v100, v101);
    v102(v97, v101);
    if (v176)
    {
      v105 = v96;
      v106 = v159;
      v176 = *v157;
      v176(v147, v98, v92);
      v107 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = v107;
      if (isUniquelyReferenced_nonNull_native)
      {
        v95 = v98;
      }

      else
      {
        v109 = sub_22C377BA0();
        sub_22C3B6C70(v109, v110, v111);
        v95 = v146;
        v107 = v178;
      }

      v93 = v170;
      v94 = v171;
      v91 = v169;
      v112 = v107;
      v113 = *(v107 + 16);
      v114 = *(v112 + 24);
      if (v113 >= v114 >> 1)
      {
        sub_22C3B6C70(v114 > 1, v113 + 1, 1);
        v95 = v146;
        v112 = v178;
      }

      ++v90;
      *(v112 + 16) = v113 + 1;
      v158 = v112;
      v115 = v112 + v106 + v113 * v105;
      v92 = v164;
      (v176)(v115);
      result = v172;
    }

    else
    {
      v103 = sub_22C36FCCC();
      v104(v103);
      ++v90;
      v93 = v170;
      v94 = v171;
      v91 = v169;
      v95 = v98;
      result = v172;
    }
  }

  v124 = *(v158 + 16);
  if (v124)
  {
    v125 = v158 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v173 = *(v91 + 72);
    v176 = *(v91 + 16);
    v126 = (v94 + 8);
    v54 = MEMORY[0x277D84F90];
    v128 = v167;
    v127 = v168;
    v129 = v163;
    while (1)
    {
      v130 = v164;
      v176(v129, v125, v164);
      sub_22C90961C();
      v131 = sub_22C5F55CC();
      (*v126)(v128, v127);
      result = (*v174)(v129, v130);
      v132 = *(v131 + 16);
      v133 = *(v54 + 16);
      if (__OFADD__(v133, v132))
      {
        goto LABEL_47;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v133 + v132 > *(v54 + 24) >> 1)
      {
        sub_22C5921DC();
        v54 = v134;
      }

      v128 = v167;
      v127 = v168;
      if (*(v131 + 16))
      {
        v135 = (*(v54 + 24) >> 1) - *(v54 + 16);
        result = sub_22C90430C();
        if (v135 < v132)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        v128 = v167;
        v127 = v168;
        v129 = v163;
        if (v132)
        {
          v136 = *(v54 + 16);
          v137 = __OFADD__(v136, v132);
          v138 = v136 + v132;
          if (v137)
          {
            goto LABEL_50;
          }

          *(v54 + 16) = v138;
        }
      }

      else
      {

        v129 = v163;
        if (v132)
        {
          goto LABEL_48;
        }
      }

      v125 += v173;
      if (!--v124)
      {

        goto LABEL_45;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_45:
  (*(v156 + 8))(v143, v144);
  return v54;
}

uint64_t sub_22C5F6894(uint64_t a1)
{
  v103 = a1;
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v78 - v3;
  v82 = sub_22C90906C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22C90941C();
  v86 = *(v96 - 8);
  v5 = MEMORY[0x28223BE20](v96);
  v95 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v109 = &v78 - v7;
  v98 = sub_22C90963C();
  v85 = *(v98 - 8);
  v8 = MEMORY[0x28223BE20](v98);
  v97 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v78 - v10;
  v90 = sub_22C90965C();
  v105 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v106 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22C9093BC();
  v88 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90947C();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22C90077C();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22C908A8C();
  v19 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22C90952C();
  v104 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C9095CC();
  v89 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  sub_22C90935C();
  v28 = sub_22C908B2C();
  MEMORY[0x2318B6010](v28);
  v92 = v15;
  v30 = v102;
  v29 = v103;
  sub_22C908B1C();
  v102 = v30;
  if (v30)
  {
    (*(v100 + 8))(v18, v101);
    (*(v19 + 8))(v21, v99);
    (*(v104 + 8))(v23, v108);
    return v29 & 1;
  }

  v78 = v27;
  v80 = v26;
  v79 = v24;
  v31 = v90;
  (*(v100 + 8))(v18, v101);
  (*(v19 + 8))(v21, v99);
  (*(v104 + 8))(v23, v108);
  v33 = v92;
  v32 = v93;
  v34 = v94;
  if ((*(v93 + 88))(v92, v94) != *MEMORY[0x277D72B68])
  {
    (*(v32 + 8))(v33, v34);
    goto LABEL_15;
  }

  (*(v32 + 96))(v33, v34);
  v35 = v79;
  (*(v89 + 32))(v80, v33, v79);
  v36 = v88;
  v37 = v87;
  v38 = v91;
  (*(v88 + 16))(v87, v78, v91);
  v39 = (*(v36 + 88))(v37, v38);
  v41 = v97;
  v40 = v98;
  v43 = v106;
  v42 = v107;
  if (v39 != *MEMORY[0x277D72A38])
  {
    if (v39 == *MEMORY[0x277D729E0])
    {
      v66 = v88;
      v67 = v91;
      (*(v88 + 96))(v87, v91);
      v68 = swift_projectBox();
      v69 = v81;
      v70 = v84;
      v71 = v82;
      (*(v81 + 16))(v84, v68, v82);
      v72 = sub_22C90905C();
      v73 = v83;
      sub_22C58B008(v72, v83);

      if (sub_22C370B74(v73, 1, v67) != 1)
      {
        v74 = v102;
        v29 = v73;
        v75 = sub_22C5F6894(v103);
        v76 = v89;
        v77 = v80;
        if (!v74)
        {
          v29 = v75;
        }

        (*(v69 + 8))(v84, v71);
        (*(v76 + 8))(v77, v79);
        (*(v66 + 8))(v73, v91);

        return v29 & 1;
      }

      (*(v69 + 8))(v70, v71);
      (*(v89 + 8))(v80, v79);
      sub_22C36DD28(v73, &qword_27D9BB908, &qword_22C910960);

      goto LABEL_15;
    }

    v38 = v91;
    v36 = v88;
    v37 = v87;
    if (v39 != *MEMORY[0x277D729F8])
    {
      (*(v89 + 8))(v80, v35);
      (*(v36 + 8))(v37, v38);
      goto LABEL_15;
    }
  }

  (*(v36 + 8))(v37, v38);
  result = sub_22C9095BC();
  v103 = result;
  v45 = v105;
  v101 = *(result + 16);
  if (!v101)
  {
LABEL_13:

    (*(v89 + 8))(v80, v79);
LABEL_15:
    v29 = 0;
    return v29 & 1;
  }

  v46 = 0;
  v100 = v103 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v99 = v105 + 16;
  LODWORD(v94) = *MEMORY[0x277D72E08];
  v92 = (v85 + 8);
  v93 = v85 + 104;
  v91 = (v105 + 8);
  LODWORD(v88) = *MEMORY[0x277D72CD8];
  LODWORD(v87) = *MEMORY[0x277D72D50];
  v104 += 104;
  LODWORD(v85) = *MEMORY[0x277D72AD0];
  v84 = (v86 + 13);
  ++v86;
  while (v46 < *(v103 + 16))
  {
    (*(v45 + 16))(v43, v100 + *(v45 + 72) * v46, v31);
    sub_22C90964C();
    (*v93)(v41, v94, v40);
    v47 = sub_22C90962C();
    v48 = v43;
    v49 = v31;
    v50 = v42;
    v51 = *v92;
    (*v92)(v41, v40);
    v51(v50, v40);
    if (v47)
    {
      sub_22C90961C();
      v52 = v108;
      v53 = swift_allocBox();
      v55 = v54;
      v56 = sub_22C9094EC();
      v57 = swift_allocBox();
      v58 = *(*(v56 - 8) + 104);
      v59 = v56;
      v60 = v95;
      v58(v61, v88, v59);
      *v55 = v57;
      v62 = v55;
      v63 = v96;
      v41 = v97;
      (*v104)(v62, v87, v52);
      *v60 = v53;
      (*v84)(v60, v85, v63);
      LOBYTE(v53) = sub_22C90940C();
      v64 = *v86;
      (*v86)(v60, v63);
      v65 = v63;
      v40 = v98;
      v64(v109, v65);
      result = (*v91)(v48, v49);
      v31 = v49;
      if (v53)
      {
        (*(v89 + 8))(v80, v79);

        v29 = 1;
        return v29 & 1;
      }
    }

    else
    {
      result = (*v91)(v48, v49);
      v31 = v49;
    }

    ++v46;
    v43 = v106;
    v42 = v107;
    v45 = v105;
    if (v101 == v46)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22C5F7618(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v3 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v93 - v4;
  v5 = sub_22C90430C();
  v110 = *(v5 - 8);
  v111 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22C9063DC();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v93 - v9;
  v114 = sub_22C90941C();
  v99 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22C90952C();
  v103 = *(v104 - 8);
  v11 = MEMORY[0x28223BE20](v104);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v93 - v14;
  MEMORY[0x28223BE20](v13);
  v100 = &v93 - v15;
  v122 = sub_22C90963C();
  v16 = *(v122 - 8);
  v17 = MEMORY[0x28223BE20](v122);
  v121 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v93 - v19;
  v20 = sub_22C90965C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v112 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - v26;
  v105 = a2;
  v28 = sub_22C9095BC();
  v29 = 0;
  v124 = *(v28 + 16);
  v126 = v21 + 16;
  v119 = *MEMORY[0x277D72E08];
  v117 = (v16 + 8);
  v118 = (v16 + 104);
  v125 = (v21 + 8);
  v123 = v21;
  v106 = (v21 + 32);
  v108 = MEMORY[0x277D84F90];
  v116 = v28;
  while (v124 != v29)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v115 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v30 = *(v123 + 72);
    (*(v123 + 16))(v27, v28 + v115 + v30 * v29, v20);
    v31 = v120;
    sub_22C90964C();
    v32 = v27;
    v33 = v121;
    v34 = v122;
    (*v118)(v121, v119, v122);
    v35 = sub_22C90962C();
    v36 = v20;
    v37 = *v117;
    (*v117)(v33, v34);
    v37(v31, v34);
    if (v35)
    {
      v38 = v30;
      v39 = v115;
      v40 = *v106;
      (*v106)(v107, v32, v36);
      v41 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = v41;
      v20 = v36;
      v27 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6C70(0, *(v41 + 16) + 1, 1);
        v41 = v127;
      }

      v28 = v116;
      v43 = v38;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22C3B6C70(v44 > 1, v45 + 1, 1);
        v41 = v127;
      }

      ++v29;
      *(v41 + 16) = v45 + 1;
      v108 = v41;
      v40((v41 + v39 + v45 * v43), v107, v20);
    }

    else
    {
      (*v125)(v32, v36);
      ++v29;
      v20 = v36;
      v27 = v32;
      v28 = v116;
    }
  }

  v46 = *(v108 + 16);
  if (!v46)
  {
LABEL_24:

    v62 = v100;
    sub_22C90959C();
    v63 = v101;
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v101);
    v64 = v103;
    v65 = *(v103 + 8);
    v66 = v62;
    v67 = v104;
    v65(v66, v104);
    v68 = swift_allocObject();
    v68[2] = 0xD000000000000028;
    v68[3] = 0x800000022C92EB40;
    v68[4] = 0xD000000000000015;
    v68[5] = 0x800000022C92EBD0;
    v69 = v102;
    *v102 = v68;
    (*(v64 + 104))(v69, *MEMORY[0x277D72D28], v67);
    LOBYTE(v64) = sub_22C90950C();
    v65(v69, v67);
    v65(v63, v67);
    if (v64)
    {
      v70 = sub_22C90914C();
      v71 = v97;
      sub_22C6053C8(v70, v97);

      v72 = sub_22C9093BC();
      if (sub_22C370B74(v71, 1, v72) == 1)
      {
        sub_22C36DD28(v71, &qword_27D9BB908, &qword_22C910960);
      }

      else
      {
        v73 = sub_22C5F82F4();
        (*(*(v72 - 8) + 8))(v71, v72);
        if (v73)
        {

          v74 = v93;
          sub_22C903F8C();

          v75 = sub_22C9063CC();
          v76 = sub_22C90AAFC();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v127 = v78;
            *v77 = 136315138;
            v79 = MEMORY[0x2318B7AD0](v73, MEMORY[0x277D837D0]);
            v81 = sub_22C36F9F4(v79, v80, &v127);

            *(v77 + 4) = v81;
            _os_log_impl(&dword_22C366000, v75, v76, "Retrieved available export identifiers for spotlight entity: %s", v77, 0xCu);
            sub_22C36FF94(v78);
            MEMORY[0x2318B9880](v78, -1, -1);
            MEMORY[0x2318B9880](v77, -1, -1);
          }

          (*(v94 + 8))(v74, v95);
          v82 = 0;
          v83 = *(v73 + 16);
          v84 = (v110 + 32);
          v85 = v73 + 40;
          v86 = MEMORY[0x277D84F90];
          v126 = v73 + 40;
LABEL_31:
          v87 = v85 + 16 * v82;
          while (v83 != v82)
          {
            if (v82 >= *(v73 + 16))
            {
              goto LABEL_48;
            }

            v88 = v109;
            sub_22C90431C();
            if (sub_22C370B74(v88, 1, v111) != 1)
            {
              v89 = *v84;
              (*v84)(v96, v88, v111);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C5921DC();
                v86 = v91;
              }

              v90 = *(v86 + 16);
              if (v90 >= *(v86 + 24) >> 1)
              {
                sub_22C5921DC();
                v86 = v92;
              }

              ++v82;
              *(v86 + 16) = v90 + 1;
              v89((v86 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v90), v96, v111);
              v85 = v126;
              goto LABEL_31;
            }

            sub_22C36DD28(v88, &qword_27D9BB638, &unk_22C9150C0);
            v87 += 16;
            ++v82;
          }
        }
      }
    }

    return;
  }

  v124 = v20;
  v47 = v108 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v48 = *(v123 + 72);
  v49 = *(v123 + 16);
  v50 = (v99 + 8);
  v51 = MEMORY[0x277D84F90];
  while (1)
  {
    v52 = v112;
    v53 = v124;
    v49(v112, v47, v124);
    v54 = v113;
    sub_22C90961C();
    v55 = sub_22C5F55CC();
    (*v50)(v54, v114);
    (*v125)(v52, v53);
    v56 = *(v55 + 16);
    v57 = *(v51 + 16);
    if (__OFADD__(v57, v56))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v57 + v56 > *(v51 + 24) >> 1)
    {
      sub_22C5921DC();
      v51 = v58;
    }

    if (*(v55 + 16))
    {
      if ((*(v51 + 24) >> 1) - *(v51 + 16) < v56)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v56)
      {
        v59 = *(v51 + 16);
        v60 = __OFADD__(v59, v56);
        v61 = v59 + v56;
        if (v60)
        {
          goto LABEL_47;
        }

        *(v51 + 16) = v61;
      }
    }

    else
    {

      if (v56)
      {
        goto LABEL_45;
      }
    }

    v47 += v48;
    if (!--v46)
    {
      goto LABEL_24;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_22C5F82F4()
{
  v1 = v0;
  v45 = sub_22C90931C();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_22C9093BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_22C90906C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v5 + 16);
  v59 = v5 + 16;
  v58(v13, v1, v4);
  v57 = *(v5 + 88);
  if (v57(v13, v4) == *MEMORY[0x277D729E0])
  {
    v18 = *(v5 + 96);
    v53 = v5 + 96;
    v54 = v5 + 88;
    v52 = v18;
    v18(v13, v4);
    v19 = swift_projectBox();
    v42 = v15;
    (*(v15 + 16))(v17, v19, v14);

    v20 = sub_22C90905C();
    v21 = *(v20 + 16);
    v22 = v17;
    if (v21)
    {
      v40 = v17;
      v41 = v14;
      v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v39 = v20;
      v24 = v20 + v23;
      v56 = *(v5 + 72);
      v25 = (v5 + 32);
      v55 = *MEMORY[0x277D72A58];
      v50 = (v47 + 16);
      v51 = (v5 + 8);
      v49 = (v47 + 88);
      v48 = *MEMORY[0x277D729B8];
      v43 = (v47 + 96);
      v44 = (v47 + 8);
      v26 = MEMORY[0x277D84F90];
      v27 = v45;
      do
      {
        v58(v11, v24, v4);
        (*v25)(v8, v11, v4);
        v28 = v57(v8, v4);
        if (v28 == v55)
        {
          v52(v8, v4);
          v29 = swift_projectBox();
          (*v50)(v3, v29, v27);
          v30 = (*v49)(v3, v27);
          if (v30 == v48)
          {
            (*v43)(v3, v27);
            v31 = *v3;
            v46 = v3[1];
            v47 = v31;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C590270(0, *(v26 + 16) + 1, 1, v26);
              v26 = v36;
            }

            v33 = *(v26 + 16);
            v32 = *(v26 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_22C590270(v32 > 1, v33 + 1, 1, v26);
              v26 = v37;
            }

            *(v26 + 16) = v33 + 1;
            v34 = v26 + 16 * v33;
            v35 = v46;
            *(v34 + 32) = v47;
            *(v34 + 40) = v35;
            v27 = v45;
          }

          else
          {
            (*v44)(v3, v27);
          }
        }

        else
        {
          (*v51)(v8, v4);
        }

        v24 += v56;
        --v21;
      }

      while (v21);

      v22 = v40;
      v14 = v41;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    (*(v42 + 8))(v22, v14);
  }

  else
  {
    (*(v5 + 8))(v13, v4);
    return 0;
  }

  return v26;
}

unint64_t sub_22C5F8844()
{
  result = qword_27D9BAA40;
  if (!qword_27D9BAA40)
  {
    type metadata accessor for InterpreterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA40);
  }

  return result;
}

uint64_t sub_22C5F889C(uint64_t a1)
{
  v2 = type metadata accessor for InterpreterError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C5F88F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v26 = a1;
  sub_22C9063DC();
  sub_22C369824();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v25[-v12];
  sub_22C5F8D4C();
  sub_22C909F0C();
  (*(v8 + 16))(v13, v3, v6);
  JointResolution.CandidateIdentifier.init(typedValue:)(v13, &v31);
  v15 = v31;
  v14 = v32;

  v31 = v15;
  v32 = v14;
  MEMORY[0x28223BE20](v16);
  *&v25[-16] = &v31;
  sub_22C5EC08C(sub_22C3AC11C, &v25[-32], v26);

  swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_22C36AD90();
  sub_22C62E2C4(5, v18, v17);
  v19 = v31;
  if ((v29 & 0x100000000) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_22C36AD90();
    sub_22C62E2C4(6, v21, v20);
    v19 = v31;
  }

  if ((v30 & 0x100000000) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_22C36AD90();
    sub_22C62E2C4(7, v23, v22);
    return v31;
  }

  return v19;
}

unint64_t sub_22C5F8D4C()
{
  result = qword_2814345C8;
  if (!qword_2814345C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814345C8);
  }

  return result;
}

uint64_t sub_22C5F8DA0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v185 = a2;
  v3 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v192 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v201 = v7;
  sub_22C36BA0C();
  v200 = sub_22C90399C();
  sub_22C369824();
  v169 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v207 = v10;
  v11 = sub_22C3A5908(&qword_27D9BF250, &qword_22C922418);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v199 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v166 - v15;
  v204 = sub_22C903B9C();
  sub_22C369824();
  v193 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  v198 = v19;
  sub_22C36BA0C();
  v173 = sub_22C90434C();
  sub_22C369824();
  v172 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698A8();
  v171 = v22;
  sub_22C36BA0C();
  v206 = sub_22C9081CC();
  sub_22C369824();
  v203 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  v205 = v25;
  sub_22C36BA0C();
  v197 = sub_22C9039FC();
  sub_22C369824();
  v170 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  v196 = v28;
  v29 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v30 = sub_22C369914(v29);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v166 - v33;
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v191 = v35;
  v36 = sub_22C3A5908(&qword_27D9BF258, &qword_22C922420);
  v37 = sub_22C369914(v36);
  MEMORY[0x28223BE20](v37);
  v187 = &v166 - v38;
  sub_22C36BA0C();
  v177 = sub_22C903ADC();
  sub_22C369824();
  v168 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v167 = v41;
  v42 = sub_22C3A5908(&qword_27D9BF260, &qword_22C922428);
  v43 = sub_22C369914(v42);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  v175 = v46;
  v47 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v48 = sub_22C369914(v47);
  MEMORY[0x28223BE20](v48);
  v186 = &v166 - v49;
  sub_22C36BA0C();
  v194 = sub_22C903B1C();
  sub_22C369824();
  v188 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  v53 = v52;
  sub_22C36BA0C();
  v180 = sub_22C9063DC();
  sub_22C369824();
  v179 = v54;
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  v58 = &v166 - v57;
  v184 = sub_22C90096C();
  sub_22C369824();
  v183 = v59;
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  v63 = &v166 - v62;
  sub_22C90095C();
  v208 = sub_22C9087DC();
  v64 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v195 = sub_22C3AC13C();
  v65 = sub_22C907E5C();

  v189 = v34;
  v190 = v63;
  v202 = a1;
  if (v65)
  {
    [v65 coordinate];
    sub_22C90093C();
    [v65 coordinate];
    sub_22C90094C();
  }

  else
  {
    sub_22C903F8C();
    v66 = sub_22C9063CC();
    v67 = sub_22C90AADC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_22C366000, v66, v67, "Not setting location in SearchContext due to missing placemark context", v68, 2u);
      sub_22C3699EC();
    }

    (*(v179 + 8))(v58, v180);
  }

  v69 = v187;
  v208 = sub_22C9087DC();
  v70 = v186;
  v71 = v64;
  sub_22C907EAC();
  v72 = v194;
  sub_22C36D0A8(v70, 1, v194);
  if (!v79)
  {
    (*(v188 + 32))(v53, v70, v72);

    sub_22C903A1C();
    sub_22C36C0B4();
    if (!v79)
    {
      sub_22C5FAFF4(v80);
      sub_22C90086C();
    }

    sub_22C903A3C();
    sub_22C36C0B4();
    v78 = v191;
    v82 = v175;
    if (!v79)
    {
      sub_22C5FAFF4(v81);
      sub_22C90087C();
    }

    sub_22C903AAC();
    sub_22C36C0B4();
    if (!v79)
    {
      sub_22C5FAFF4(v83);
      sub_22C90091C();
    }

    sub_22C903A8C();
    sub_22C36C0B4();
    if (!v79)
    {
      sub_22C5FAFF4(v84);
      sub_22C9008FC();
    }

    sub_22C903A9C();
    sub_22C36C0B4();
    if (!v79)
    {
      sub_22C5FAFF4(v85);
      sub_22C90090C();
    }

    sub_22C903A6C();
    v86 = sub_22C903B0C();
    v87 = sub_22C36CCF8();
    sub_22C36D0A8(v87, v88, v86);
    if (v79)
    {
      sub_22C376B84(v82, &qword_27D9BF260, &qword_22C922428);
    }

    else
    {
      v89 = sub_22C903ABC();
      sub_22C36BBA8();
      (*(v90 + 8))(v91, v86);
      if (v89 != 2)
      {
        sub_22C9008DC();
      }
    }

    v92 = v176;
    sub_22C903A6C();
    v93 = sub_22C36CCF8();
    sub_22C36D0A8(v93, v94, v86);
    if (v79)
    {
      sub_22C376B84(v92, &qword_27D9BF260, &qword_22C922428);
      sub_22C36C640(v69, 1, 1, v177);
      v95 = v178;
    }

    else
    {
      sub_22C903AEC();
      sub_22C36BBA8();
      (*(v96 + 8))(v92, v86);
      v97 = v177;
      sub_22C36D0A8(v69, 1, v177);
      v95 = v178;
      if (!v98)
      {
        v187 = v71;
        v99 = v168;
        v100 = v167;
        (*(v168 + 32))(v167, v69, v97);
        sub_22C903ACC();
        sub_22C90092C();
        (*(v99 + 8))(v100, v97);
LABEL_32:
        sub_22C903A5C();
        if (v101)
        {
          sub_22C9008AC();
        }

        sub_22C903A2C();
        if (v102)
        {
          sub_22C9008CC();
        }

        sub_22C903A6C();
        v103 = sub_22C36CCF8();
        sub_22C36D0A8(v103, v104, v86);
        if (v79)
        {
          sub_22C376B84(v95, &qword_27D9BF260, &qword_22C922428);
        }

        else
        {
          sub_22C903AFC();
          v106 = v105;
          sub_22C36BBA8();
          (*(v107 + 8))(v108, v86);
          if (v106)
          {
            sub_22C9008BC();
          }
        }

        sub_22C903A0C();
        sub_22C36C0B4();
        if (!v79)
        {
          v109 = sub_22C90085C();
        }

        MEMORY[0x2318B0F20](v109);
        sub_22C90088C();
        (*(v188 + 8))(v53, v194);
        v77 = v189;
        goto LABEL_44;
      }
    }

    sub_22C376B84(v69, &qword_27D9BF258, &qword_22C922420);
    goto LABEL_32;
  }

  sub_22C376B84(v70, &qword_27D9BD760, &qword_22C922200);

  v73 = v174;
  sub_22C903F8C();
  v74 = sub_22C9063CC();
  v75 = sub_22C90AADC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22C366000, v74, v75, "Not setting Siri request info in SearchContext due to missing Siri request context", v76, 2u);
    sub_22C3699EC();
  }

  (*(v179 + 8))(v73, v180);
  v77 = v189;
  v78 = v191;
LABEL_44:
  v208 = sub_22C9087DC();
  sub_22C907EEC();

  sub_22C5FA1AC(v78, v77, &qword_27D9BD798, &unk_22C919070);
  v110 = sub_22C9079FC();
  v111 = sub_22C36D0A8(v77, 1, v110);
  v202 = v16;
  if (v79)
  {
    sub_22C376B84(v77, &qword_27D9BD798, &unk_22C919070);
LABEL_62:
    v132 = v190;
    sub_22C9008EC();
    v133 = v181;
    sub_22C5FA1AC(v78, v181, &qword_27D9BD798, &unk_22C919070);
    v134 = sub_22C36CCF8();
    sub_22C36D0A8(v134, v135, v110);
    if (v79)
    {
      sub_22C376B84(v133, &qword_27D9BD798, &unk_22C919070);
      v136 = v185;
    }

    else
    {
      v137 = v133;
      v138 = sub_22C9079EC();
      sub_22C36BBA8();
      (*(v139 + 8))(v137, v110);
      v140 = *(v138 + 16);
      if (v140)
      {
        v196 = *(v203 + 16);
        sub_22C372AA0();
        v189 = v138;
        v142 = v138 + v141;
        v194 = (v169 + 8);
        v144 = (v143 - 8);
        v197 = (v193 + 32);
        v145 = MEMORY[0x277D84F90];
        v203 = v143;
        v195 = *(v143 + 56);
        do
        {
          v196(v205, v142, v206);
          sub_22C9081AC();
          v146 = v201;
          sub_22C9038EC();
          v147 = sub_22C903BCC();
          sub_22C36D0A8(v146, 1, v147);
          if (v79)
          {
            v152 = v199;
            v153 = v204;
            sub_22C36C640(v199, 1, 1, v204);
          }

          else
          {
            v148 = v192;
            sub_22C5FA1AC(v146, v192, &qword_27D9BF248, &qword_22C926400);
            v149 = v199;
            sub_22C903BAC();
            sub_22C36BBA8();
            v151 = v148;
            v152 = v149;
            v16 = v202;
            (*(v150 + 8))(v151, v147);
            v153 = v204;
          }

          sub_22C376B84(v146, &qword_27D9BF248, &qword_22C926400);
          (*v194)(v207, v200);
          sub_22C5FA210(v152, v16);
          (*v144)(v205, v206);
          sub_22C36D0A8(v16, 1, v153);
          if (v79)
          {
            sub_22C376B84(v16, &qword_27D9BF250, &qword_22C922418);
          }

          else
          {
            v154 = *v197;
            (*v197)(v198, v16, v153);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22C593F94();
              v145 = v157;
            }

            v156 = *(v145 + 16);
            if (v156 >= *(v145 + 24) >> 1)
            {
              sub_22C593F94();
              v145 = v158;
            }

            *(v145 + 16) = v156 + 1;
            v154(v145 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v156, v198, v204);
            v16 = v202;
          }

          v142 += v195;
          --v140;
        }

        while (v140);

        v136 = v185;
        v132 = v190;
      }

      else
      {

        v136 = v185;
      }

      v159 = v171;
      sub_22C90433C();
      sub_22C90432C();
      sub_22C9043BC();
      swift_allocObject();
      sub_22C9043AC();
      sub_22C90438C();

      sub_22C807CDC(v160);
      sub_22C90089C();

      (*(v172 + 8))(v159, v173);
      v78 = v191;
    }

    sub_22C90919C();
    v161 = swift_allocBox();
    v162 = v183;
    v163 = v184;
    (*(v183 + 16))(v182, v132, v184);
    sub_22C5FA154();
    sub_22C90916C();
    sub_22C376B84(v78, &qword_27D9BD798, &unk_22C919070);
    (*(v162 + 8))(v132, v163);
    *v136 = v161;
    v164 = *MEMORY[0x277D72A38];
    sub_22C9093BC();
    sub_22C36BBA8();
    return (*(v165 + 104))(v136, v164);
  }

  v112 = MEMORY[0x2318B4EB0](v111);
  sub_22C36BBA8();
  (*(v113 + 8))(v77, v110);
  v114 = *(v112 + 16);
  if (!v114)
  {

    v16 = v202;
    goto LABEL_62;
  }

  v194 = v110;
  v195 = *(v170 + 16);
  sub_22C372AA0();
  v189 = v112;
  v116 = v112 + v115;
  v118 = *(v117 + 56);
  v119 = (v117 - 8);
  v120 = MEMORY[0x277D84F90];
  while (1)
  {
    v121 = v196;
    v122 = v197;
    (v195)(v196, v116, v197);
    v123 = sub_22C5FA280();
    result = (*v119)(v121, v122);
    v125 = *(v123 + 16);
    v126 = *(v120 + 16);
    if (__OFADD__(v126, v125))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v126 + v125 > *(v120 + 24) >> 1)
    {
      sub_22C59405C();
      v120 = v127;
    }

    if (*(v123 + 16))
    {
      v128 = (*(v120 + 24) >> 1) - *(v120 + 16);
      result = sub_22C900A4C();
      if (v128 < v125)
      {
        goto LABEL_85;
      }

      swift_arrayInitWithCopy();

      if (v125)
      {
        v129 = *(v120 + 16);
        v130 = __OFADD__(v129, v125);
        v131 = v129 + v125;
        if (v130)
        {
          goto LABEL_86;
        }

        *(v120 + 16) = v131;
      }
    }

    else
    {

      if (v125)
      {
        goto LABEL_84;
      }
    }

    v116 += v118;
    if (!--v114)
    {

      v78 = v191;
      v16 = v202;
      v110 = v194;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

unint64_t sub_22C5FA154()
{
  result = qword_27D9BF268;
  if (!qword_27D9BF268)
  {
    sub_22C90096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF268);
  }

  return result;
}

uint64_t sub_22C5FA1AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C36BBA8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C5FA210(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF250, &qword_22C922418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5FA280()
{
  sub_22C9063DC();
  sub_22C369824();
  v71 = v1;
  v72 = v0;
  MEMORY[0x28223BE20](v0);
  sub_22C3698E4();
  v76 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C36BA64();
  v70 = v4;
  sub_22C36BA0C();
  sub_22C90361C();
  sub_22C369824();
  v78 = v5;
  v79 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22C900A4C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  v17 = v66 - v16;
  v18 = sub_22C9093BC();
  sub_22C369824();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v66 - v25;
  sub_22C9039CC();
  sub_22C36D0A8(v17, 1, v18);
  if (v27)
  {
    sub_22C376B84(v17, &qword_27D9BB908, &qword_22C910960);
    v28 = v76;
    sub_22C903F8C();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AAFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22C366000, v29, v30, "Skipping SpanMatchedEntity since there's no attached TypedValue", v31, 2u);
      sub_22C3699EC();
    }

    (*(v71 + 8))(v28, v72);
    return MEMORY[0x277D84F90];
  }

  (*(v20 + 32))(v26, v17, v18);
  v32 = sub_22C5FA9B0();
  v73 = v34;
  v74 = v32;
  v75 = v35;
  v76 = v33;
  if (!v33)
  {
    v48 = v70;
    sub_22C903F8C();
    v49 = *(v20 + 16);
    v69 = v26;
    v49(v24, v26, v18);
    v50 = sub_22C9063CC();
    v51 = v18;
    v52 = sub_22C90AAFC();
    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v68 = v51;
      v54 = v53;
      v55 = v20;
      v56 = swift_slowAlloc();
      v80 = v56;
      *v54 = 136315138;
      v57 = sub_22C90938C();
      v59 = v58;
      v60 = *(v55 + 8);
      v61 = v24;
      v62 = v68;
      v60(v61, v68);
      v63 = sub_22C36F9F4(v57, v59, &v80);

      *(v54 + 4) = v63;
      _os_log_impl(&dword_22C366000, v50, v52, "Skipping SpanMatchedEntity since the typedValue is not an entity: %s", v54, 0xCu);
      sub_22C36FF94(v56);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v71 + 8))(v70, v72);
      v60(v69, v62);
    }

    else
    {

      v64 = *(v20 + 8);
      v64(v24, v51);
      (*(v71 + 8))(v48, v72);
      v64(v69, v51);
    }

    return MEMORY[0x277D84F90];
  }

  v36 = v20;
  v37 = sub_22C9039DC();
  v38 = *(v37 + 16);
  if (!v38)
  {

    (*(v36 + 8))(v26, v18);
    return MEMORY[0x277D84F90];
  }

  v67 = v36;
  v68 = v18;
  v69 = v26;
  v80 = MEMORY[0x277D84F90];
  sub_22C3B7640(0, v38, 0);
  v39 = v80;
  sub_22C372AA0();
  v66[1] = v37;
  v41 = v37 + v40;
  v71 = *(v42 + 56);
  v72 = v43;
  v79 = v42;
  v44 = (v42 - 8);
  v70 = v10 + 32;
  do
  {
    v45 = v78;
    v72(v8, v41, v78);
    sub_22C900A3C();

    sub_22C900A2C();

    sub_22C9009CC();
    sub_22C90356C();
    sub_22C9009BC();
    sub_22C9035BC();
    sub_22C900A0C();
    sub_22C90358C();
    sub_22C9009DC();
    sub_22C9035DC();
    sub_22C9009FC();
    sub_22C90359C();
    sub_22C9009EC();
    sub_22C90360C();
    sub_22C900A1C();
    (*v44)(v8, v45);
    v80 = v39;
    v47 = *(v39 + 16);
    v46 = *(v39 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_22C3B7640(v46 > 1, v47 + 1, 1);
      v39 = v80;
    }

    *(v39 + 16) = v47 + 1;
    (*(v10 + 32))(v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v47, v13, v77);
    v41 += v71;
    --v38;
  }

  while (v38);
  (*(v67 + 8))(v69, v68);

  return v39;
}

uint64_t sub_22C5FA9B0()
{
  v1 = v0;
  v2 = sub_22C90910C();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90952C();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v39 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v50 = (&v39 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_22C9093BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = sub_22C90919C();
  v48 = *(v21 - 8);
  v49 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v15 + 16);
  v47 = v1;
  v46(v20, v1, v14);
  v24 = *(v15 + 88);
  if (v24(v20, v14) != *MEMORY[0x277D72A38])
  {
    (*(v15 + 8))(v20, v14);
    v29 = v51;
    goto LABEL_6;
  }

  v40 = v24;
  v41 = v2;
  (*(v15 + 96))(v20, v14);
  v25 = swift_projectBox();
  (*(v48 + 16))(v23, v25, v49);

  sub_22C9090AC();
  v26 = v50;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v50);
  v27 = v52;
  v28 = v13;
  v29 = v51;
  v39 = *(v52 + 8);
  v39(v28, v51);
  if ((*(v27 + 88))(v26, v29) != *MEMORY[0x277D72D28])
  {
    (*(v48 + 8))(v23, v49);
    v39(v50, v29);
    v24 = v40;
    v2 = v41;
LABEL_6:
    v46(v18, v47, v14);
    if (v24(v18, v14) == *MEMORY[0x277D729F8])
    {
      (*(v15 + 96))(v18, v14);
      v31 = swift_projectBox();
      v33 = v44;
      v32 = v45;
      (*(v45 + 16))(v44, v31, v2);

      v34 = v42;
      sub_22C9090AC();
      v35 = v43;
      TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v43);
      v36 = v52;
      v37 = *(v52 + 8);
      v37(v34, v29);
      if ((*(v36 + 88))(v35, v29) == *MEMORY[0x277D72D28])
      {
        (*(v36 + 96))(v35, v29);

        v30 = sub_22C90908C();
        (*(v32 + 8))(v33, v2);
        return v30;
      }

      (*(v32 + 8))(v33, v2);
      v37(v35, v29);
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }

    return 0;
  }

  (*(v52 + 96))(v50, v29);

  v30 = sub_22C90908C();
  (*(v48 + 8))(v23, v49);
  return v30;
}

uint64_t sub_22C5FB000(uint64_t a1)
{
  v3 = sub_22C90941C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (v33 - v7);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v33[1] = v1;
  v46 = MEMORY[0x277D84F90];
  sub_22C3B6FE8(0, v9, 0);
  v10 = v46;
  result = sub_22C57D74C();
  v14 = result;
  v15 = 0;
  v45 = a1 + 56;
  v38 = v4 + 8;
  v39 = v4 + 16;
  v36 = a1;
  v37 = v4 + 32;
  v34 = a1 + 64;
  v35 = v9;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v14 < 1 << *(a1 + 32))
    {
      v16 = v14 >> 6;
      if ((*(v45 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_26;
      }

      LODWORD(v44) = v13;
      v41 = v15;
      v42 = v12;
      v17 = *(a1 + 48);
      v43 = *(v4 + 72);
      v18 = v40;
      (*(v4 + 16))(v40, v17 + v43 * v14, v3);
      sub_22C5FB67C(v8);
      (*(v4 + 8))(v18, v3);
      v46 = v10;
      v19 = v3;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      v22 = v10;
      if (v21 >= v20 >> 1)
      {
        sub_22C3B6FE8(v20 > 1, v21 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v21 + 1;
      result = (*(v4 + 32))(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v21 * v43, v8, v19);
      if (v44)
      {
        goto LABEL_30;
      }

      v3 = v19;
      v10 = v22;
      a1 = v36;
      v23 = 1 << *(v36 + 32);
      if (v14 >= v23)
      {
        goto LABEL_27;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v14)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v36 + 36) != v42)
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v14 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v26 = v35;
      }

      else
      {
        v44 = v10;
        v27 = v4;
        v28 = v16 << 6;
        v29 = v16 + 1;
        v30 = (v34 + 8 * v16);
        v26 = v35;
        while (v29 < (v23 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_22C3A5038(v14, v42, 0);
            v23 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_22C3A5038(v14, v42, 0);
LABEL_19:
        v4 = v27;
        v10 = v44;
      }

      v15 = v41 + 1;
      if (v41 + 1 == v26)
      {
        return v10;
      }

      v13 = 0;
      v12 = *(a1 + 36);
      v14 = v23;
      if (v23 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22C5FB388@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C90941C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_22C5FBAA4(v7))
  {
    (*(v4 + 32))(a1, v7, v2);
    v8 = 0;
  }

  else
  {
    (*(v4 + 8))(v7, v2);
    v8 = 1;
  }

  return sub_22C36C640(a1, v8, 1, v2);
}

uint64_t sub_22C5FB484()
{
  v1 = sub_22C90941C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C378048();
  MEMORY[0x28223BE20](v5);
  v6 = *(v3 + 16);
  v6(&v23 - v7, v0, v1);
  v8 = sub_22C36A724();
  v10 = v9(v8);
  if (v10 != *MEMORY[0x277D72AD0])
  {
    if (v10 == *MEMORY[0x277D72AB0])
    {
      v14 = sub_22C36A724();
      v15(v14);
      v13 = 1;
      return v13 & 1;
    }

    if (v10 == *MEMORY[0x277D72AE8] || (v10 != *MEMORY[0x277D72AD8] ? (v22 = v10 == *MEMORY[0x277D72AB8]) : (v22 = 1), !v22 && v10 == *MEMORY[0x277D72AE0]))
    {
      v16 = sub_22C36A724();
      v17(v16);
      swift_projectBox();
      v18 = sub_22C36A118();
      (v6)(v18);
      v13 = sub_22C5FB484();
      v19 = sub_22C36BBCC();
      v20(v19);

      return v13 & 1;
    }
  }

  v11 = sub_22C36A724();
  v12(v11);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_22C5FB67C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C90941C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C378048();
  MEMORY[0x28223BE20](v7);
  v9 = &v55[-v8];
  v10 = *(v5 + 16);
  v10(&v55[-v8], v1, v3);
  v11 = sub_22C36A724();
  v13 = v12(v11);
  v14 = *MEMORY[0x277D72AD0];
  if (v13 == v14)
  {
    v15 = sub_22C36A724();
    v16(v15);
    return v10(a1, v1, v3);
  }

  v18 = v13;
  if (v13 == *MEMORY[0x277D72AB0])
  {
    v19 = sub_22C36ADA4();
    v20(v19);
    swift_projectBox();
    v21 = sub_22C36A118();
    (v10)(v21);
    v22 = swift_allocBox();
    sub_22C5FB67C(v23);
    v24 = sub_22C36BBCC();
    v25(v24);
    *a1 = v22;
LABEL_7:
    (*(v5 + 104))(a1, v18, v3);
  }

  if (v13 == *MEMORY[0x277D72AE8])
  {
    v26 = sub_22C36ADA4();
    v27(v26);
    v28 = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
    swift_projectBox();
    v29 = sub_22C36A118();
    (v10)(v29);
    v30 = swift_allocBox();
    v32 = v31;
    v33 = *(v28 + 48);
    sub_22C5FB67C(v31);
    v34 = sub_22C36BBCC();
    v35(v34);
    v36 = sub_22C9093BC();
    sub_22C36C640(v32 + v33, 1, 1, v36);
    *a1 = v30;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x277D72AD8])
  {
    v37 = sub_22C36ADA4();
    v38(v37);
    v39 = *(*v9 + 16);
    v40 = swift_allocObject();
    sub_22C5FB000(v39);
    sub_22C3ADD60();
    *(v40 + 16) = v41;
    *a1 = v40;
    (*(v5 + 104))(a1, v18, v3);
  }

  else if (v13 == *MEMORY[0x277D72AB8])
  {
    v42 = sub_22C36ADA4();
    v43(v42);
    v44 = swift_projectBox();
    v45 = sub_22C90952C();
    v46 = swift_allocBox();
    (*(*(v45 - 8) + 16))(v47, v44, v45);
    *a1 = v46;
    (*(v5 + 104))(a1, v14, v3);
  }

  else
  {
    if (v13 != *MEMORY[0x277D72AE0])
    {
      v10(a1, v1, v3);
      v53 = sub_22C36A724();
      return v54(v53);
    }

    v48 = sub_22C36ADA4();
    v49(v48);
    swift_projectBox();
    v50 = sub_22C36A118();
    (v10)(v50);
    sub_22C5FB67C(a1);
    v51 = sub_22C36BBCC();
    v52(v51);
  }
}

uint64_t sub_22C5FBAA4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_22C90941C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (v34 - v14);
  v16 = *(v8 + 16);
  v16(v34 - v14, v2, v7);
  v17 = (*(v8 + 88))(v15, v7);
  if (v17 != *MEMORY[0x277D72AD0])
  {
    v35 = a1;
    if (v17 == *MEMORY[0x277D72AB0])
    {
      (*(v8 + 96))(v15, v7);
      v19 = swift_projectBox();
      v16(v35, v19, v7);

      v18 = 1;
      return v18 & 1;
    }

    if (v17 == *MEMORY[0x277D72AE8])
    {
      (*(v8 + 96))(v15, v7);
      v34[1] = *v15;
      v20 = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
      v21 = swift_projectBox();
      v22 = *(v20 + 48);
      v16(v13, v21, v7);
      sub_22C531200(v21 + v22, v6);
      v23 = v36;
      v18 = sub_22C5FBAA4(v36);
      (*(v8 + 8))(v13, v7);
      v24 = swift_allocBox();
      v26 = v25;
      v27 = *(v20 + 48);
      (*(v8 + 32))(v25, v23, v7);
      sub_22C5FBF34(v6, v26 + v27);
      *v35 = v24;
      (*(v8 + 104))();
    }

    else
    {
      v29 = v17 == *MEMORY[0x277D72AD8] || v17 == *MEMORY[0x277D72AB8];
      a1 = v35;
      if (v29)
      {
        goto LABEL_2;
      }

      if (v17 != *MEMORY[0x277D72AE0])
      {
        v16(v35, v2, v7);
        (*(v8 + 8))(v15, v7);
        goto LABEL_3;
      }

      (*(v8 + 96))(v15, v7);
      v30 = swift_projectBox();
      v16(v13, v30, v7);
      v31 = v36;
      v18 = sub_22C5FBAA4(v36);
      (*(v8 + 8))(v13, v7);
      v32 = swift_allocBox();
      (*(v8 + 32))(v33, v31, v7);
      *v35 = v32;
      (*(v8 + 104))();
    }

    return v18 & 1;
  }

LABEL_2:
  (*(v8 + 8))(v15, v7);
  v16(a1, v2, v7);
LABEL_3:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22C5FBF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5FBFA4(uint64_t a1)
{
  sub_22C9069BC();
  sub_22C383238();
  sub_22C601CF4(v1, v2, MEMORY[0x277D1DCF8]);

  return sub_22C909F8C();
}

uint64_t sub_22C5FC01C()
{
  sub_22C90B62C();
  sub_22C9069BC();
  sub_22C383238();
  sub_22C601CF4(v0, v1, MEMORY[0x277D1DCF8]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C5FC09C(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C9069BC();
  sub_22C601CF4(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

void *sub_22C5FC124(void *a1)
{
  v2 = v1;
  v49 = a1;
  v44 = sub_22C90634C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v43 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = sub_22C90636C();
  sub_22C369824();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v42 = *(v12 + 8);
  v42(v16, v10);
  v19 = sub_22C90635C();
  v20 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v21 = swift_slowAlloc();
    v41 = v2;
    v22 = v21;
    *v21 = 0;
    v23 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v19, v20, v23, "ActionResolver.init", "", v22, 2u);
    v2 = v41;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v24 = v44;
  (*(v4 + 16))(v43, v9, v44);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C37EF1C();
  v25 = sub_22C90639C();
  (*(v4 + 8))(v9, v24);
  v42(v18, v10);
  v26 = type metadata accessor for JointResolver();
  v27 = v45;
  v28 = sub_22C7500B8();
  if (v27)
  {
    sub_22C600BDC(v25, "ActionResolver.init");

    sub_22C36FF94(v49);
    type metadata accessor for ActionResolver();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v47 = v26;
    v48 = &off_283FBF928;
    *&v46 = v28;
    sub_22C36C730(&v46, (v2 + 7));
    type metadata accessor for JointResolverFeaturizer();
    swift_allocObject();
    v2[12] = sub_22C7550A4();
    v29 = v2;
    v30 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v31 = swift_allocObject();
    v32 = sub_22C73D0DC(v30, 0xD000000000000021, 0x800000022C933280, v31);
    v33 = [objc_opt_self() useConfirmationPrompts];
    v47 = &type metadata for GenerativeAssistantToolsRiskProvider;
    v48 = &off_283FBE918;
    LOBYTE(v46) = v33;
    type metadata accessor for JointResolverTrialConfigProvider();
    v34 = swift_allocObject();
    v35 = sub_22C36D1E4(&v46, &type metadata for GenerativeAssistantToolsRiskProvider);
    v36 = sub_22C601F4C(v32, *v35, v34);
    sub_22C36FF94(&v46);
    v29[13] = v36;
    v37 = type metadata accessor for DeviceContextClient();
    v38 = swift_allocObject();
    sub_22C9043BC();
    swift_allocObject();
    *(v38 + 16) = sub_22C9043AC();
    v29[17] = v37;
    v29[18] = &off_283FBED08;
    v2 = v29;
    v29[14] = v38;
    v39 = v49;
    sub_22C378A4C(v49, (v29 + 2));
    type metadata accessor for JointResolverTokenDistanceProvider();
    v29[19] = swift_allocObject();
    sub_22C600BDC(v25, "ActionResolver.init");

    sub_22C36FF94(v39);
  }

  return v2;
}

uint64_t sub_22C5FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 360) = v46;
  *(v9 + 368) = v8;
  *(v9 + 344) = v44;
  *(v9 + 352) = v45;
  *(v9 + 328) = v42;
  *(v9 + 336) = v43;
  *(v9 + 312) = v40;
  *(v9 + 320) = v41;
  *(v9 + 73) = v39;
  *(v9 + 296) = a8;
  *(v9 + 304) = v38;
  *(v9 + 280) = a6;
  *(v9 + 288) = a7;
  *(v9 + 264) = a4;
  *(v9 + 272) = a5;
  *(v9 + 248) = a1;
  *(v9 + 256) = a3;
  *(v9 + 376) = *v8;
  v10 = _s10ModelInputVMa(0);
  *(v9 + 384) = v10;
  sub_22C369914(v10);
  *(v9 + 392) = sub_22C3699D4();
  v11 = sub_22C90769C();
  *(v9 + 400) = v11;
  sub_22C3699B8(v11);
  *(v9 + 408) = v12;
  *(v9 + 416) = sub_22C3699D4();
  v13 = sub_22C9063DC();
  *(v9 + 424) = v13;
  sub_22C3699B8(v13);
  *(v9 + 432) = v14;
  *(v9 + 440) = sub_22C36D0D4();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v15);
  *(v9 + 480) = sub_22C36D0D4();
  *(v9 + 488) = swift_task_alloc();
  v16 = type metadata accessor for JointResolution.DeviceContext(0);
  *(v9 + 496) = v16;
  sub_22C369914(v16);
  *(v9 + 504) = sub_22C3699D4();
  v17 = sub_22C90063C();
  *(v9 + 512) = v17;
  sub_22C3699B8(v17);
  *(v9 + 520) = v18;
  *(v9 + 528) = sub_22C3699D4();
  v19 = _s14TypedCandidateVMa(0);
  *(v9 + 536) = v19;
  sub_22C3699B8(v19);
  *(v9 + 544) = v20;
  *(v9 + 552) = sub_22C36D0D4();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  v21 = sub_22C9093BC();
  *(v9 + 576) = v21;
  sub_22C3699B8(v21);
  *(v9 + 584) = v22;
  *(v9 + 592) = sub_22C36D0D4();
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  v23 = sub_22C908C5C();
  *(v9 + 624) = v23;
  sub_22C3699B8(v23);
  *(v9 + 632) = v24;
  *(v9 + 640) = sub_22C36D0D4();
  *(v9 + 648) = swift_task_alloc();
  v25 = _s5TupleVMa(0);
  *(v9 + 656) = v25;
  sub_22C369914(v25);
  *(v9 + 664) = sub_22C3699D4();
  v26 = sub_22C3A5908(&qword_27D9BF2C8, &unk_22C922520);
  sub_22C369914(v26);
  *(v9 + 672) = sub_22C36D0D4();
  *(v9 + 680) = swift_task_alloc();
  v27 = sub_22C9069BC();
  *(v9 + 688) = v27;
  sub_22C3699B8(v27);
  *(v9 + 696) = v28;
  *(v9 + 704) = sub_22C36D0D4();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  v29 = sub_22C90634C();
  *(v9 + 744) = v29;
  sub_22C3699B8(v29);
  *(v9 + 752) = v30;
  *(v9 + 760) = sub_22C36D0D4();
  *(v9 + 768) = swift_task_alloc();
  v31 = sub_22C90636C();
  *(v9 + 776) = v31;
  sub_22C3699B8(v31);
  *(v9 + 784) = v32;
  *(v9 + 792) = sub_22C36D0D4();
  *(v9 + 800) = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

void sub_22C5FCAD0(uint64_t a1)
{
  v197 = v1;
  v2 = v1[99];
  v3 = v1[98];
  v4 = v1[97];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v190 = *(v3 + 8);
  v190(v2, v4);
  v5 = sub_22C90635C();
  v6 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v5, v6, v8, "ActionResolver.run", "", v7, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v1[100];
  v10 = v1[97];
  v11 = v1[96];
  v12 = v1[95];
  v13 = v1[94];
  v14 = v1[93];

  (*(v13 + 16))(v12, v11, v14);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C3707B4();
  v161 = sub_22C90639C();
  v1[101] = v161;
  (*(v13 + 8))(v11, v14);
  v190(v9, v10);

  v16 = sub_22C807E08(v15);
  v1[102] = v16;
  v17 = *(v16 + 16);
  v1[103] = v17;
  v18 = v1;
  v191 = v1;
  v168 = v16;
  if (v17)
  {
    v19 = v1[87];
    v187 = v18[32];
    v20 = sub_22C3708A4(MEMORY[0x277D84F90]);
    sub_22C3B78C4(v20);
    v21 = v193;
    v19 += 16;
    sub_22C36BA94();
    v23 = v16 + v22;
    v180 = *(v19 + 56);
    v183 = v24;
    v25 = (v19 - 8);
    v26 = v16 + v22;
    v27 = v17;
    v177 = (v19 - 8);
    while (1)
    {
      v183(v18[92], v26, v18[86]);
      if (!*(v187 + 16))
      {
        break;
      }

      sub_22C628D18();
      v25 = v177;
      v28 = *v177;
      if ((v29 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_22C37EC9C();
      v32 = *(v30 + v31 + 1);
LABEL_10:
      v28(v18[92], v18[86]);
      v33 = v21;
      v193 = v21;
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22C369AB0(v34);
        sub_22C38C40C();
        sub_22C3B78C4(v36);
        v25 = v177;
        v33 = v193;
      }

      *(v33 + 16) = v35 + 1;
      v21 = v33;
      *(v33 + v35 + 32) = v32;
      v26 += v180;
      --v27;
      v18 = v191;
      if (!v27)
      {
        v37 = sub_22C3708A4(MEMORY[0x277D84F90]);
        sub_22C3B7880(v37);
        v38 = v193;
        v39 = v23;
        v40 = v17;
        do
        {
          v183(v18[91], v39, v18[86]);
          if (*(v187 + 16))
          {
            sub_22C628D18();
            if (v41)
            {
              sub_22C37EC9C();
              v44 = *(v42 + v43 + 2);
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v44 = 0;
          }

          v28(v18[91], v18[86]);
          v193 = v38;
          v46 = *(v38 + 16);
          v45 = *(v38 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_22C369AB0(v45);
            sub_22C38C40C();
            sub_22C3B7880(v47);
            v38 = v193;
          }

          *(v38 + 16) = v46 + 1;
          *(v38 + v46 + 32) = v44;
          v39 += v180;
          --v40;
          v18 = v191;
        }

        while (v40);
        v48 = v38;
        v49 = sub_22C3708A4(MEMORY[0x277D84F90]);
        sub_22C3B783C(v49);
        v50 = v193;
        do
        {
          v183(v191[90], v23, v191[86]);
          if (*(v187 + 16))
          {
            sub_22C628D18();
            if (v51)
            {
              sub_22C37EC9C();
              v54 = *(v52 + v53);
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            v54 = 0;
          }

          v28(v191[90], v191[86]);
          v193 = v50;
          v56 = *(v50 + 16);
          v55 = *(v50 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_22C369AB0(v55);
            sub_22C38C40C();
            sub_22C3B783C(v57);
            v50 = v193;
          }

          *(v50 + 16) = v56 + 1;
          *(v50 + v56 + 32) = v54;
          v23 += v180;
          --v17;
        }

        while (v17);
        v16 = v168;
        v58 = MEMORY[0x277D84F90];
        goto LABEL_33;
      }
    }

    v28 = *v25;
LABEL_9:
    v32 = 12;
    goto LABEL_10;
  }

  v50 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
LABEL_33:
  v163 = v48;
  v164 = v21;
  v18[106] = v21;
  v18[105] = v48;
  v162 = v50;
  v18[104] = v50;
  v59 = v18[87];
  v170 = v18[82];
  v60 = v18[79];
  v61 = v18[73];
  v167 = v18[68];
  v186 = v18[67];
  sub_22C600F28(v18[43]);
  v171 = v62;
  v176 = (v61 + 8);
  v178 = (v61 + 16);
  v166 = v60;
  v165 = (v60 + 8);
  v169 = (v59 + 8);

  v63 = v58;
LABEL_34:
  v18[107] = v63;
  v64 = v18[85];
  v65 = v18[84];
  sub_22C80F1D0();
  sub_22C601D3C(v65, v64);
  v66 = sub_22C3A5908(&qword_27D9BF2D0, &unk_22C927B50);
  v67 = sub_22C37EF1C();
  if (sub_22C370B74(v67, v68, v66) == 1)
  {

    v125 = *(v63 + 16);
    v126 = MEMORY[0x277D84F90];
    if (v125)
    {
      v192 = MEMORY[0x277D84F90];

      v127 = sub_22C372264();
      sub_22C3B781C(v127, v128, v129);
      v130 = 0;
      v131 = v192;
      v172 = v125;
      v174 = v63 + 32;
      v185 = v63;
      while (v130 < *(v63 + 16))
      {
        v132 = *(v174 + 8 * v130);
        v133 = *(v132 + 16);
        if (v133)
        {
          v179 = v131;
          v193 = v126;

          sub_22C3B794C(0, v133, 0);
          v134 = v193;
          sub_22C36BA94();
          v136 = v132 + v135;
          v182 = *(v137 + 72);
          do
          {
            v138 = v18[70];
            sub_22C60227C();
            sub_22C601DAC(v136, v138, v139);
            v140 = (v138 + *(v186 + 20));
            v141 = *v140;
            v142 = v140[1];
            v143 = v140[3];
            v189 = v140[2];
            v144 = v140[4];

            sub_22C37369C();
            sub_22C601E24(v138, v145);
            v193 = v134;
            v147 = *(v134 + 16);
            v146 = *(v134 + 24);
            if (v147 >= v146 >> 1)
            {
              v149 = sub_22C369AB0(v146);
              sub_22C3B794C(v149, v147 + 1, 1);
              v134 = v193;
            }

            *(v134 + 16) = v147 + 1;
            v148 = (v134 + 40 * v147);
            v148[4] = v141;
            v148[5] = v142;
            v18 = v191;
            v148[6] = v189;
            v148[7] = v143;
            v148[8] = v144;
            v136 += v182;
            --v133;
          }

          while (v133);

          v126 = MEMORY[0x277D84F90];
          v125 = v172;
          v131 = v179;
        }

        else
        {
          v134 = v126;
        }

        v151 = *(v131 + 16);
        v150 = *(v131 + 24);
        v63 = v185;
        if (v151 >= v150 >> 1)
        {
          sub_22C369AB0(v150);
          sub_22C379FA0();
          sub_22C3B781C(v152, v153, v154);
        }

        ++v130;
        *(v131 + 16) = v151 + 1;
        *(v131 + 8 * v151 + 32) = v134;
        if (v130 == v125)
        {

          goto LABEL_70;
        }
      }

LABEL_76:
      __break(1u);
    }

    else
    {
      v131 = MEMORY[0x277D84F90];
LABEL_70:
      sub_22C90052C();

      v18[108] = sub_22C74C164(v131, v164, v163, v162);
      v18[109] = v155;
      v18[110] = v156;
      v18[111] = v157;
      sub_22C374168((v18[46] + 112), *(v18[46] + 136));
      v158 = swift_task_alloc();
      v18[112] = v158;
      *v158 = v18;
      v158[1] = sub_22C5FDAF0;
      v159 = v18[34];
      v160 = v18[35];

      sub_22C740278((v18 + 2), 0xD00000000000001DLL, 0x800000022C9331D0, v159, v160);
    }
  }

  else
  {
    v69 = v18[85];
    v70 = *v69;
    sub_22C601E7C(v69 + *(v66 + 48), v18[83], _s5TupleVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C594F00();
      v63 = v112;
    }

    v72 = *(v63 + 16);
    v71 = *(v63 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_22C369AB0(v71);
      sub_22C594F00();
      v63 = v113;
    }

    v73 = 0;
    *(v63 + 16) = v72 + 1;
    v181 = v63 + 32;
    v184 = v63;
    *(v63 + 32 + 8 * v72) = MEMORY[0x277D84F90];
    v173 = *(v16 + 16);
    v188 = v70;
    while (1)
    {
      if (v173 == v73)
      {
        v18 = v191;
        sub_22C37F3E0();
        sub_22C601E24(v110, v111);
        goto LABEL_34;
      }

      if (v73 >= *(v16 + 16))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v74 = v191[83];
      sub_22C36BA94();
      (*(v75 + 16))();
      v76 = *(v74 + *(v170 + 24));
      if (!*(v76 + 16))
      {
        break;
      }

      sub_22C628D18();
      if ((v78 & 1) == 0)
      {
        break;
      }

      v175 = v73;
      v79 = v191[81];
      v80 = v191[77];
      v81 = v191[76];
      v82 = v191[75];
      v83 = v191[72];
      v84 = v191[45];
      (*(v166 + 16))(v191[80], *(v76 + 56) + *(v166 + 72) * v77, v191[78]);
      v85 = sub_22C36ECB4();
      v86(v85);
      sub_22C90774C();
      v87 = sub_22C760C08(v79, v84);
      v88 = *v178;
      (*v178)(v81, v80, v83);
      LOBYTE(v193) = 1;
      v89 = sub_22C5F88F8(v171, 0x100000000, v87 | ((HIDWORD(v87) & 1) << 32));
      v88(v82, v81, v83);
      JointResolution.CandidateIdentifier.init(typedValue:)(v82, &v193);
      v90 = *v176;
      v91 = sub_22C36ECB4();
      v90(v91);
      v92 = v193;
      v93 = v194;
      v94 = v195;
      v95 = v196;
      v96 = v191[71];
      v88(v96, v191[77], v191[72]);
      v97 = (v96 + *(v186 + 20));
      *v97 = v92;
      v97[1] = v93;
      v97[2] = v94;
      v97[3] = v95;
      v97[4] = v89;
      if ((v188 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v188 >= *(v184 + 16))
      {
        goto LABEL_75;
      }

      v98 = *(v181 + 8 * v188);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v181 + 8 * v188) = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C594E38();
        v98 = v108;
        *(v181 + 8 * v188) = v108;
      }

      v101 = *(v98 + 16);
      v100 = *(v98 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_22C369AB0(v100);
        sub_22C594E38();
        *(v181 + 8 * v188) = v109;
      }

      v102 = v191[89];
      v103 = v191[86];
      v104 = v191[81];
      v105 = v191[78];
      v106 = v191[71];
      (v90)(v191[77], v191[72]);
      (*v165)(v104, v105);
      (*v169)(v102, v103);
      v107 = *(v181 + 8 * v188);
      *(v107 + 16) = v101 + 1;
      sub_22C601E7C(v106, v107 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v101, _s14TypedCandidateVMa);
      v73 = v175 + 1;
      v16 = v168;
      v63 = v184;
    }

    v114 = v191[89];
    v115 = v191[86];
    v116 = v191[83];

    v193 = sub_22C9069AC();
    v194 = v117;
    MEMORY[0x2318B7850](14906, 0xE200000000000000);
    v191[23] = sub_22C90697C();
    *(v191 + 192) = v118 & 1;
    sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
    v119 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v119);

    MEMORY[0x2318B7850](32, 0xE100000000000000);

    MEMORY[0x2318B7850](0xD000000000000019, 0x800000022C9331F0);

    v120 = v193;
    v121 = v194;
    sub_22C5F2300();
    swift_allocError();
    *v122 = v120;
    v122[1] = v121;
    swift_willThrow();
    (*v169)(v114, v115);
    sub_22C37F3E0();
    sub_22C601E24(v116, v123);

    sub_22C600BDC(v161, "ActionResolver.run");

    sub_22C371AD0();
    sub_22C36D95C();

    sub_22C369A24();

    v124();
  }
}