uint64_t sub_1BC7E6A94(uint64_t a1)
{
  v2 = sub_1BC7E7EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6AD0(uint64_t a1)
{
  v2 = sub_1BC7E7EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6B0C(uint64_t a1)
{
  v2 = sub_1BC7B54A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6B48(uint64_t a1)
{
  v2 = sub_1BC7B54A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6B84(uint64_t a1)
{
  v2 = sub_1BC7E8090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6BC0(uint64_t a1)
{
  v2 = sub_1BC7E8090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6BFC(uint64_t a1)
{
  v2 = sub_1BC7E7D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6C38(uint64_t a1)
{
  v2 = sub_1BC7E7D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6C74(uint64_t a1)
{
  v2 = sub_1BC7BECB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6CB0(uint64_t a1)
{
  v2 = sub_1BC7BECB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6CEC(uint64_t a1)
{
  v2 = sub_1BC7E7B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6D28(uint64_t a1)
{
  v2 = sub_1BC7E7B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessageStoreQuery.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      OUTLINED_FUNCTION_25_3();
      v8 = 3;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_25_3();
      v8 = 4;
LABEL_18:
      MEMORY[0x1BFB2A020](v8);

      v9 = OUTLINED_FUNCTION_30();
      sub_1BC7DF8D4(v9, v10);
      goto LABEL_24;
    case 3uLL:
      OUTLINED_FUNCTION_25_3();
      v4 = 5;
      goto LABEL_14;
    case 4uLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](6);
      OUTLINED_FUNCTION_30();

      sub_1BC7DF894();
      return;
    case 5uLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](7);
      OUTLINED_FUNCTION_30();

      sub_1BC7DF854();
      return;
    case 6uLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](8);
      OUTLINED_FUNCTION_30();

      goto LABEL_29;
    case 7uLL:
      v7 = 9;
      goto LABEL_16;
    case 8uLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](10);
      OUTLINED_FUNCTION_30();

LABEL_29:
      sub_1BC7DFB68();
      return;
    case 9uLL:
      v7 = 11;
LABEL_16:
      MEMORY[0x1BFB2A020](v7);
      sub_1BC8F8C24();
      return;
    case 0xAuLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](13);
      OUTLINED_FUNCTION_30();

      sub_1BC7DF814();
      return;
    case 0xBuLL:
      OUTLINED_FUNCTION_25_3();
      MEMORY[0x1BFB2A020](14);
      MessageStoreQuery.hash(into:)(a1);
      return;
    case 0xCuLL:
      OUTLINED_FUNCTION_25_3();
      v6 = 15;
      goto LABEL_23;
    case 0xDuLL:
      OUTLINED_FUNCTION_25_3();
      v6 = 16;
LABEL_23:
      MEMORY[0x1BFB2A020](v6);

      v11 = OUTLINED_FUNCTION_30();
      sub_1BC7DF7B0(v11, v12);
      goto LABEL_24;
    case 0xEuLL:
      if (v2 == 0xE000000000000000)
      {
        v5 = 0;
      }

      else if (v2 == 0xE000000000000008)
      {
        v5 = 1;
      }

      else
      {
        v5 = 12;
      }

      MEMORY[0x1BFB2A020](v5);
      return;
    default:
      v4 = 2;
LABEL_14:
      MEMORY[0x1BFB2A020](v4);

      OUTLINED_FUNCTION_30();
      sub_1BC7DEC58();
LABEL_24:

      return;
  }
}

uint64_t MessageStoreQuery.hashValue.getter()
{
  v2[9] = *v0;
  sub_1BC8F8C04();
  MessageStoreQuery.hash(into:)(v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7E706C(uint64_t a1)
{
  v3[9] = *v1;
  sub_1BC8F8C04();
  MessageStoreQuery.hash(into:)(v3);
  return sub_1BC8F8C64();
}

void sub_1BC7E70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v29 = *v24;
  a12 = MEMORY[0x1E69E7CC0];
  v30 = sub_1BC7C0454(v27);
  for (i = 0; ; ++i)
  {
    if (v30 == i)
    {
      OUTLINED_FUNCTION_62();
      return;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1BFB29A00](i, v28);
    }

    else
    {
      if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v32 = *(v28 + 8 * i + 32);
    }

    v33 = v32;
    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    a11 = v29;
    if (sub_1BC7E71B0(&a10, v32))
    {
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1BC7E71B0(unint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - v6;
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *v2;
  switch(v12 >> 60)
  {
    case 1uLL:
      v40 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      v51 = (*(v9 + 16))(v11, a2 + v50, v8);
      MEMORY[0x1EEE9AC00](v51);
      v43 = &v69 - 4;
      *(&v69 - 2) = v11;

      v44 = sub_1BC7E8CA0;
      goto LABEL_27;
    case 2uLL:
      v40 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
      swift_beginAccess();
      v42 = (*(v9 + 16))(v11, a2 + v41, v8);
      MEMORY[0x1EEE9AC00](v42);
      v43 = &v69 - 4;
      *(&v69 - 2) = v11;

      v44 = sub_1BC7E8C64;
LABEL_27:
      v21 = sub_1BC7ECB3C(v44, v43, v40);

      (*(v9 + 8))(v11, v8);
      return v21 & 1;
    case 3uLL:
      v14 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
      v46 = swift_beginAccess();
      v47 = v45[1];
      v71 = *v45;
      v72 = v47;
      MEMORY[0x1EEE9AC00](v46);
      v18 = &v69 - 4;
      *(&v69 - 2) = &v71;

      v19 = sub_1BC7E8C84;
      goto LABEL_42;
    case 4uLL:
      v24 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v24 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (!v25)
      {
        goto LABEL_41;
      }

      v73 = MEMORY[0x1E69E7CC0];

      sub_1BC7AD404(0, v25, 0);
      v26 = 32;
      v14 = v73;
      v27 = "ingLastReindexTimeDelta";
      do
      {
        v28 = *(v24 + v26);
        v29 = 0xD000000000000017;
        v30 = "lservicesd.FaceTimeProvider";
        if (v28 != 1)
        {
          if (v28 != 2)
          {
            goto LABEL_47;
          }

          v29 = 0xD00000000000003BLL;
          v30 = v27;
        }

        v73 = v14;
        v32 = *(v14 + 16);
        v31 = *(v14 + 24);
        if (v32 >= v31 >> 1)
        {
          v70 = v27;
          sub_1BC7AD404(v31 > 1, v32 + 1, 1);
          v27 = v70;
          v14 = v73;
        }

        *(v14 + 16) = v32 + 1;
        v33 = v14 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30 | 0x8000000000000000;
        v26 += 8;
        --v25;
      }

      while (v25);

LABEL_41:
      v65 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
      v66 = swift_beginAccess();
      v67 = v65[1];
      v71 = *v65;
      v72 = v67;
      MEMORY[0x1EEE9AC00](v66);
      v18 = &v69 - 4;
      *(&v69 - 2) = &v71;

      v19 = sub_1BC7AFCBC;
LABEL_42:
      v21 = sub_1BC7AFC0C(v19, v18, v14);

      return v21 & 1;
    case 5uLL:
      v52 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      swift_beginAccess();
      v54 = sub_1BC7CF5BC(*(a2 + v53), v52);
      goto LABEL_40;
    case 6uLL:
      v60 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v61 = &OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      goto LABEL_39;
    case 7uLL:
      v48 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
      swift_beginAccess();
      v39 = v48 ^ *(a2 + v49);
      goto LABEL_25;
    case 8uLL:
      v60 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v61 = &OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
LABEL_39:
      v64 = *v61;
      swift_beginAccess();
      v54 = sub_1BC7CF5BC(*(a2 + v64), v60);
      goto LABEL_40;
    case 9uLL:
      v39 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
LABEL_25:
      v21 = v39 ^ 1;
      return v21 & 1;
    case 0xAuLL:
      v62 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v63 = a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
      swift_beginAccess();
      if (*(v63 + 4))
      {
        goto LABEL_37;
      }

      v54 = sub_1BC7E79B8(*v63, v62);
LABEL_40:
      v21 = v54;
      return v21 & 1;
    case 0xBuLL:
      v22 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *v2;
      v71 = v22;
      sub_1BC7A5AB4(v22);
      v23 = sub_1BC7E71B0(&v71, a2);
      sub_1BC7B0EFC(v22);
      v21 = v23 ^ 1;
      return v21 & 1;
    case 0xCuLL:
      v34 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *(v34 + 16);

      v28 = 0;
      while (2)
      {
        if (v35 == v28)
        {
          goto LABEL_33;
        }

        if (v28 < *(v34 + 16))
        {
          v36 = *(v34 + 8 * v28 + 32);
          v37 = v28 + 1;
          v73 = v13;
          v71 = v36;
          sub_1BC7A5AB4(v36);
          v38 = sub_1BC7E71B0(&v71, a2);
          sub_1BC7B0EFC(v36);
          v28 = v37;
          if ((v38 & 1) == 0)
          {
            goto LABEL_20;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_46;
    case 0xDuLL:
      v55 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *(v55 + 16);

      v28 = 0;
      break;
    case 0xEuLL:
      if (v12 == 0xE000000000000000)
      {
        goto LABEL_34;
      }

      if (v12 == 0xE000000000000008)
      {
        goto LABEL_37;
      }

      v20 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
      swift_beginAccess();
      sub_1BC7E8B8C(a2 + v20, v7);
      v21 = __swift_getEnumTagSinglePayload(v7, 1, v8) != 1;
      sub_1BC7E8BFC(v7);
      return v21 & 1;
    default:
      v14 = *(v12 + 16);
      v15 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
      v16 = swift_beginAccess();
      v17 = v15[1];
      v71 = *v15;
      v72 = v17;
      MEMORY[0x1EEE9AC00](v16);
      v18 = &v69 - 4;
      *(&v69 - 2) = &v71;

      v19 = sub_1BC7E8C84;
      goto LABEL_42;
  }

  while (1)
  {
    if (v56 == v28)
    {
LABEL_20:

LABEL_37:
      v21 = 0;
      return v21 & 1;
    }

    if (v28 >= *(v55 + 16))
    {
      break;
    }

    v57 = *(v55 + 8 * v28 + 32);
    v58 = v28 + 1;
    v73 = v13;
    v71 = v57;
    sub_1BC7A5AB4(v57);
    v59 = sub_1BC7E71B0(&v71, a2);
    sub_1BC7B0EFC(v57);
    v28 = v58;
    if (v59)
    {
LABEL_33:

LABEL_34:
      v21 = 1;
      return v21 & 1;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v71 = v28;
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

BOOL sub_1BC7E79B8(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

unint64_t sub_1BC7E79E4()
{
  result = qword_1EBCF5348;
  if (!qword_1EBCF5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5348);
  }

  return result;
}

unint64_t sub_1BC7E7A38()
{
  result = qword_1EDC1FF78;
  if (!qword_1EDC1FF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F80, &qword_1BC8FEB40);
    sub_1BC7B2348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF78);
  }

  return result;
}

unint64_t sub_1BC7E7ABC()
{
  result = qword_1EBCF5350;
  if (!qword_1EBCF5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5350);
  }

  return result;
}

unint64_t sub_1BC7E7B10()
{
  result = qword_1EBCF5358;
  if (!qword_1EBCF5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5358);
  }

  return result;
}

unint64_t sub_1BC7E7B64()
{
  result = qword_1EBCF5368;
  if (!qword_1EBCF5368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5360, &qword_1BC8FEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5368);
  }

  return result;
}

unint64_t sub_1BC7E7BE0()
{
  result = qword_1EBCF5370;
  if (!qword_1EBCF5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5370);
  }

  return result;
}

unint64_t sub_1BC7E7C34()
{
  result = qword_1EDC1FF68;
  if (!qword_1EDC1FF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    sub_1BC7B5C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF68);
  }

  return result;
}

unint64_t sub_1BC7E7CB8()
{
  result = qword_1EBCF5380;
  if (!qword_1EBCF5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5380);
  }

  return result;
}

unint64_t sub_1BC7E7D0C()
{
  result = qword_1EDC1DF28;
  if (!qword_1EDC1DF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    sub_1BC7BED0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF28);
  }

  return result;
}

unint64_t sub_1BC7E7D90()
{
  result = qword_1EBCF5390;
  if (!qword_1EBCF5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5390);
  }

  return result;
}

unint64_t sub_1BC7E7DE4()
{
  result = qword_1EBCF53A0;
  if (!qword_1EBCF53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5398, &qword_1BC8FEB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53A0);
  }

  return result;
}

unint64_t sub_1BC7E7E60()
{
  result = qword_1EDC1FF70;
  if (!qword_1EDC1FF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    sub_1BC7B566C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF70);
  }

  return result;
}

unint64_t sub_1BC7E7EE4()
{
  result = qword_1EBCF53B0;
  if (!qword_1EBCF53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53B0);
  }

  return result;
}

unint64_t sub_1BC7E7F38()
{
  result = qword_1EBCF53B8;
  if (!qword_1EBCF53B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53B8);
  }

  return result;
}

unint64_t sub_1BC7E7FB4()
{
  result = qword_1EBCF53C0;
  if (!qword_1EBCF53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53C0);
  }

  return result;
}

uint64_t sub_1BC7E8008(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
    sub_1BC7E85B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7E8090()
{
  result = qword_1EBCF53D0;
  if (!qword_1EBCF53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53D0);
  }

  return result;
}

unint64_t sub_1BC7E80E4()
{
  result = qword_1EBCF53D8;
  if (!qword_1EBCF53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53D8);
  }

  return result;
}

unint64_t sub_1BC7E8138()
{
  result = qword_1EBCF53E0;
  if (!qword_1EBCF53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53E0);
  }

  return result;
}

unint64_t sub_1BC7E818C()
{
  result = qword_1EBCF53E8;
  if (!qword_1EBCF53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53E8);
  }

  return result;
}

unint64_t sub_1BC7E81E0()
{
  result = qword_1EDC1DEF0;
  if (!qword_1EDC1DEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F80, &qword_1BC8FEB40);
    sub_1BC7B5D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEF0);
  }

  return result;
}

unint64_t sub_1BC7E8264()
{
  result = qword_1EBCF5480;
  if (!qword_1EBCF5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5360, &qword_1BC8FEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5480);
  }

  return result;
}

unint64_t sub_1BC7E82E0()
{
  result = qword_1EDC1DEE0;
  if (!qword_1EDC1DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    sub_1BC7C7198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEE0);
  }

  return result;
}

unint64_t sub_1BC7E8364()
{
  result = qword_1EDC1DF20;
  if (!qword_1EDC1DF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    sub_1BC7C70CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF20);
  }

  return result;
}

unint64_t sub_1BC7E83E8()
{
  result = qword_1EBCF5488;
  if (!qword_1EBCF5488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5398, &qword_1BC8FEB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5488);
  }

  return result;
}

unint64_t sub_1BC7E8464()
{
  result = qword_1EDC1DEE8;
  if (!qword_1EDC1DEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    sub_1BC7E84E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEE8);
  }

  return result;
}

unint64_t sub_1BC7E84E8()
{
  result = qword_1EDC1F278[0];
  if (!qword_1EDC1F278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1F278);
  }

  return result;
}

unint64_t sub_1BC7E853C()
{
  result = qword_1EBCF5490;
  if (!qword_1EBCF5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5490);
  }

  return result;
}

uint64_t sub_1BC7E85B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F7264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7E8600()
{
  result = qword_1EBCF54A0;
  if (!qword_1EBCF54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54A0);
  }

  return result;
}

unint64_t sub_1BC7E8668()
{
  result = qword_1EBCF54A8;
  if (!qword_1EBCF54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54A8);
  }

  return result;
}

unint64_t sub_1BC7E86C0()
{
  result = qword_1EBCF54B0;
  if (!qword_1EBCF54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54B0);
  }

  return result;
}

unint64_t sub_1BC7E8718()
{
  result = qword_1EBCF54B8;
  if (!qword_1EBCF54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54B8);
  }

  return result;
}

unint64_t sub_1BC7E8770()
{
  result = qword_1EBCF54C0;
  if (!qword_1EBCF54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54C0);
  }

  return result;
}

unint64_t sub_1BC7E87C8()
{
  result = qword_1EBCF54C8;
  if (!qword_1EBCF54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54C8);
  }

  return result;
}

unint64_t sub_1BC7E8820()
{
  result = qword_1EBCF54D0;
  if (!qword_1EBCF54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54D0);
  }

  return result;
}

unint64_t sub_1BC7E8878()
{
  result = qword_1EBCF54D8;
  if (!qword_1EBCF54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54D8);
  }

  return result;
}

unint64_t sub_1BC7E88D0()
{
  result = qword_1EBCF54E0;
  if (!qword_1EBCF54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54E0);
  }

  return result;
}

unint64_t sub_1BC7E8928()
{
  result = qword_1EBCF54E8;
  if (!qword_1EBCF54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54E8);
  }

  return result;
}

unint64_t sub_1BC7E8980()
{
  result = qword_1EBCF54F0;
  if (!qword_1EBCF54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54F0);
  }

  return result;
}

unint64_t sub_1BC7E89D8()
{
  result = qword_1EBCF54F8;
  if (!qword_1EBCF54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54F8);
  }

  return result;
}

unint64_t sub_1BC7E8A30()
{
  result = qword_1EBCF5500;
  if (!qword_1EBCF5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5500);
  }

  return result;
}

unint64_t sub_1BC7E8A88()
{
  result = qword_1EBCF5508;
  if (!qword_1EBCF5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5508);
  }

  return result;
}

unint64_t sub_1BC7E8AE0()
{
  result = qword_1EBCF5510;
  if (!qword_1EBCF5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5510);
  }

  return result;
}

unint64_t sub_1BC7E8B38()
{
  result = qword_1EBCF5518;
  if (!qword_1EBCF5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5518);
  }

  return result;
}

uint64_t sub_1BC7E8B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7E8BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageStoreProvider.identifierString.getter(uint64_t a1)
{
  result = 0xD000000000000017;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003BLL;
    }

    else
    {
      result = sub_1BC8F8B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t MessageStoreProvider.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001BC90BE40 == a2;
  if (v3 || (OUTLINED_FUNCTION_0_4(0xD000000000000017, 0x80000001BC90BE40) & 1) != 0)
  {
    goto LABEL_6;
  }

  v6 = sub_1BC8F7C24();
  if (v6 == a1 && v7 == a2)
  {

    goto LABEL_6;
  }

  v9 = OUTLINED_FUNCTION_0_4(v6, v7);

  if (v9)
  {
LABEL_6:

    return 1;
  }

  v10 = a1 == 0xD00000000000003BLL && 0x80000001BC90BE00 == a2;
  if (v10 || (OUTLINED_FUNCTION_0_4(0xD00000000000003BLL, 0x80000001BC90BE00) & 1) != 0)
  {
    goto LABEL_17;
  }

  v11 = sub_1BC8F7C24();
  if (v11 == a1 && v12 == a2)
  {

LABEL_17:

    return 2;
  }

  v14 = OUTLINED_FUNCTION_0_4(v11, v12);

  if (v14)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BC7E8EE8()
{
  result = qword_1EBCF5528;
  if (!qword_1EBCF5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5528);
  }

  return result;
}

unint64_t sub_1BC7E8F40()
{
  result = qword_1EBCF5530;
  if (!qword_1EBCF5530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5530);
  }

  return result;
}

uint64_t sub_1BC7E8FA4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  OUTLINED_FUNCTION_0_5();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_4();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v48 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_4();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1BC8F8144();
  if (!v24)
  {
    return sub_1BC8F7EA4();
  }

  v47 = v24;
  v51 = sub_1BC8F86C4();
  v38 = sub_1BC8F86D4();
  sub_1BC8F8674();
  result = sub_1BC8F8134();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1BC8F8184();
      (*v39)(v18);
      v27(v50, 0);
      v28 = v49;
      v44(v18, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_2_5();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_2_5();
      v30(v29);
      sub_1BC8F86B4();
      result = sub_1BC8F8154();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.deletionQuery.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BC8F7F24();
  WitnessTable = swift_getWitnessTable();
  result = sub_1BC8F8174();
  if (result)
  {
    v5 = 0xE000000000000008;
  }

  else
  {
    v6 = swift_allocObject();
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v8 = sub_1BC8F7264();
    v10 = sub_1BC7E8FA4(sub_1BC7E9694, KeyPath, v2, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    *(v6 + 16) = v10;
    v5 = v6 | 0x1000000000000000;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1BC7E9524(uint64_t a1, void **a2)
{
  v4 = sub_1BC8F7264();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x130))(v6);
}

void sub_1BC7E9634(id *a1, uint64_t a2)
{
  v2 = *a1;
  swift_getAtKeyPath();
}

uint8_t *sub_1BC7E96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BC8F6F44();
  v10 = sub_1BC7E98C4(a3);
  v21 = 0;
  v22[0] = 0;
  LOBYTE(a4) = sub_1BC7E9B3C(v9, a2, v10, 300, a4, v22, &v21, v5);

  v11 = v21;
  v12 = v22[0];
  if (a4)
  {
    if (v22[0])
    {
      v12 = sub_1BC8F7C24();
      v13 = v11;
    }

    else
    {
      v15 = qword_1EDC1E1F8;
      v16 = v21;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_1BC8F7734();
      __swift_project_value_buffer(v17, qword_1EDC2B2B0);
      v18 = sub_1BC8F7714();
      v19 = sub_1BC8F81E4();
      if (os_log_type_enabled(v18, v19))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        MEMORY[0x1BFB2AA50](v12, -1, -1);
      }

      sub_1BC7E9C38();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v14 = v21;
    v12 = v12;
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1BC7E98C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5540, &qword_1BC9003C0);
    v2 = sub_1BC8F8574();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:

    swift_dynamicCast();
    result = sub_1BC8F8524();
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *(v7 + 8 * v13);
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v7 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v5 &= v5 - 1;
    v19 = *(v2 + 48) + 40 * v14;
    *(v19 + 32) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1BC7E9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_1BC8F7A94();
  v12 = sub_1BC8F80E4();

  v13 = sub_1BC8F7A94();
  v14 = [a8 sendResourceAtURL:a1 metadata:v11 toDestinations:v12 priority:a4 options:v13 identifier:a6 error:a7];

  return v14;
}

unint64_t sub_1BC7E9C38()
{
  result = qword_1EBCF5538;
  if (!qword_1EBCF5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5538);
  }

  return result;
}

uint64_t sub_1BC7E9CDC()
{
  if (![v0 isTranscriptionAvailable])
  {
    return 4;
  }

  v1 = [v0 transcriptionState];

  return sub_1BC8C2198(v1);
}

void sub_1BC7E9D30(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = [v2 transcript];
  if (v14)
  {
    sub_1BC7DA3A8(v14, &v25);
LABEL_3:
    *a1 = v25;
    *(a1 + 8) = v26;
    return;
  }

  v15 = [v2 transcriptionURL];
  if (v15)
  {
    v16 = v15;
    sub_1BC8F6FB4();

    (*(v6 + 32))(v13, v10, v4);
    v17 = sub_1BC8F7054();
    v19 = v18;
    sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
    sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
    v20 = sub_1BC8F8214();
    if (v20)
    {
      sub_1BC7DA3A8(v20, &v25);
      sub_1BC7D4C94(v17, v19);
      v21 = OUTLINED_FUNCTION_7_2();
      v22(v21);
      goto LABEL_3;
    }

    v23 = OUTLINED_FUNCTION_7_2();
    v24(v23);
    sub_1BC7D4C94(v17, v19);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1BC7EA2F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 transcriptionURL];
  if (v3)
  {
    v4 = v3;
    sub_1BC8F6FB4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BC8F7014();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1BC7EA3D4(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

unint64_t sub_1BC7EA4AC(uint64_t a1)
{
  result = sub_1BC7EA4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC7EA4D4()
{
  result = qword_1EDC1DE70;
  if (!qword_1EDC1DE70)
  {
    sub_1BC7D9730(255, &qword_1EDC1DE78, 0x1E69E0698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DE70);
  }

  return result;
}

uint64_t sub_1BC7EA54C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  LODWORD(v5) = 0;
  v6 = 0;
  switch(v4)
  {
    case 0:
      v7 = (*(a2 + 32))(a1, a2);
      v6 = (v7 & 8) == 0;
      v5 = (v7 & 8) >> 2;
      break;
    case 1:
      return v5 | (v6 << 16);
    case 2:
      v6 = 0;
      LODWORD(v5) = 1;
      break;
    case 3:
      v6 = 0;
      LODWORD(v5) = 2;
      break;
    default:
      LODWORD(v5) = 0;
      v6 = 1;
      break;
  }

  return v5 | (v6 << 16);
}

unint64_t sub_1BC7EA618(void *a1, uint64_t a2)
{
  sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v97 = v5;
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v96 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BC8F7264();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_20_0();
  v101 = v8 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = (&v89 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v89 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_20_0();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89 - v20;
  v22 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  v99 = a2;
  sub_1BC7EB644(a2, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v103 = v24;
  v100 = v18;
  if (EnumTagSinglePayload == 1)
  {
    v33 = v14;
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v35 = OUTLINED_FUNCTION_3_3();
    v36 = v34;
    v14 = v33;
    v37(v35, v36);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      sub_1BC7E6180(v21, &qword_1EBCF5A20, &qword_1BC901BF0);
    }
  }

  else
  {
    (*(v24 + 32))(v31, v21, v22);
  }

  v91 = v28;
  v92 = v14;
  OUTLINED_FUNCTION_4_8();
  v38 = OUTLINED_FUNCTION_0_6();
  v39(v38);
  sub_1BC8F7254();
  sub_1BC8F7254();
  (*(v103 + 16))(v28, v31, v22);
  v40 = v100;
  __swift_storeEnumTagSinglePayload(v100, 1, 1, v22);
  OUTLINED_FUNCTION_4_8();
  v41 = OUTLINED_FUNCTION_0_6();
  v90 = v42(v41);
  v44 = v43;
  OUTLINED_FUNCTION_4_8();
  v45 = OUTLINED_FUNCTION_0_6();
  v46(v45);
  OUTLINED_FUNCTION_4_8();
  v47 = OUTLINED_FUNCTION_0_6();
  v49 = v48(v47);
  v51 = v50;
  v94 = v31;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = OUTLINED_FUNCTION_3_3();
  v54(v53, v52);
  v107 = v109;
  v108 = v110;
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = OUTLINED_FUNCTION_3_3();
  v58 = v57(v56, v55);
  v60 = v59;
  v106 = 3;
  v93 = v22;
  v61 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  result = (*(v62 + 144))(v61, v62);
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    if (v44)
    {
      v64 = v44;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    if (v44)
    {
      v65 = v90;
    }

    else
    {
      v65 = 0;
    }

    memset(v105, 0, sizeof(v105));
    v104 = 0;
    LOBYTE(v88) = 0;
    LOBYTE(v87) = 0;
    Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(v92, v102, v101, v91, v40, 1, v65, v64, 0xD000000000000017, 0x80000001BC90BE40, v87, v49, v51, &v107, v88, v58, v60, &v106, result, v105, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v67 = v66;
    OUTLINED_FUNCTION_5_4();
    v68 = *(v51 + 88);
    v69 = v67;
    LOWORD(v67) = v68(v61, v51);
    v70 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
    swift_beginAccess();
    *&v69[v70] = v67;
    OUTLINED_FUNCTION_5_4();
    v71 = OUTLINED_FUNCTION_6_7();
    LOBYTE(v67) = v72(v71);
    v73 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
    swift_beginAccess();
    v69[v73] = v67 & 1;
    OUTLINED_FUNCTION_5_4();
    v74 = v96;
    v75 = OUTLINED_FUNCTION_6_7();
    v76(v75);
    v77 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_8_9();
    v78 = v98;
    v79 = *(v97 + 40);
    v79(&v69[v77], v74, v98);
    swift_endAccess();
    OUTLINED_FUNCTION_5_4();
    v80 = OUTLINED_FUNCTION_6_7();
    v81(v80);
    v82 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
    OUTLINED_FUNCTION_8_9();
    v79(&v69[v82], v74, v78);
    swift_endAccess();
    v83 = a1[3];
    v84 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v83);
    v85 = sub_1BC7EA54C(v83, v84);
    sub_1BC7E6180(v99, &qword_1EBCF5A20, &qword_1BC901BF0);
    (*(v103 + 8))(v94, v93);
    if ((v85 & 0x10000) != 0)
    {
      LOWORD(v85) = 0;
    }

    v86 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
    swift_beginAccess();
    *&v69[v86] = v85;

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v69;
  }

  return result;
}

BOOL sub_1BC7EAD54(void *a1)
{
  v3 = MEMORY[0x1BFB2A220]();
  sub_1BC7EADAC(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_1BC7EADAC(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v90 = a3;
  v89 = sub_1BC8F71E4();
  v88 = *(v89 - 8);
  v5 = MEMORY[0x1EEE9AC00](v89);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v86 - v7;
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v86 - v13;
  v15 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v9 + 16))(v14, a1 + v15, v8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 128))(v16, v17);
  LOBYTE(v15) = sub_1BC8F7234();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v14, v8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v24 = *(v23 + 48);

  v25 = v24(v22, v23);
  if (v26)
  {
    if (v21 == v25 && v26 == v20)
    {

      goto LABEL_15;
    }

    v28 = sub_1BC8F8AA4();

    if (v28)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v29 = v19[1];
  v30 = *v19 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    goto LABEL_16;
  }

LABEL_15:
  v31 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  if (v32 != ((*(v34 + 16))(v33, v34) & 1))
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  v40 = sub_1BC7EA54C(v38, v39);
  v35 = 0;
  if ((v40 & 0x10000) != 0 || v37 != v40)
  {
    goto LABEL_17;
  }

  v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = a2[3];
  v44 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v43);
  if (v42 != (*(v44 + 88))(v43, v44))
  {
    goto LABEL_16;
  }

  v45 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  swift_beginAccess();
  v46 = v88;
  v47 = v86;
  v48 = v89;
  (*(v88 + 16))(v86, a1 + v45, v89);
  v49 = a2[3];
  v50 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v49);
  v51 = v87;
  (*(v50 + 40))(v49, v50);
  LOBYTE(v49) = sub_1BC8F71A4();
  v52 = *(v46 + 8);
  v52(v51, v48);
  v52(v47, v48);
  if ((v49 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BC865C3C();
  v53 = v92;
  v54 = v93;
  v55 = v94;
  v56 = a2[3];
  v57 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v56);
  (*(v57 + 104))(v91, v56, v57);
  v58 = v91[0];
  v59 = v91[1];
  v60 = v91[2];
  if (!v53)
  {
    if (!v91[0])
    {
      v63 = 0;
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (!v91[0])
  {
    sub_1BC7C52A8(v53, v54, v55);

LABEL_39:
    sub_1BC7C532C(v53, v54, v55);
    v64 = v58;
    v65 = v59;
    v66 = v60;
    goto LABEL_40;
  }

  if ((sub_1BC7DC654(v53, v91[0]) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v55)
  {
    sub_1BC7C52A8(v53, v54, 0);
    if (!v60)
    {
      v67 = v58;
      v68 = v59;
      v69 = 0;
      goto LABEL_44;
    }

LABEL_36:
    sub_1BC7C532C(v58, v59, v60);
LABEL_37:

    v64 = v53;
    v65 = v54;
    v66 = v55;
LABEL_40:
    sub_1BC7C532C(v64, v65, v66);
    goto LABEL_16;
  }

  if (!v60)
  {
LABEL_35:
    sub_1BC7C52A8(v53, v54, v55);
    goto LABEL_36;
  }

  if (v54 != v59 || v55 != v60)
  {
    v62 = sub_1BC8F8AA4();
    sub_1BC7C52A8(v53, v54, v55);
    sub_1BC7C532C(v58, v59, v60);
    if (v62)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  sub_1BC7C52A8(v53, v54, v55);
  v67 = v58;
  v68 = v54;
  v69 = v55;
LABEL_44:
  sub_1BC7C532C(v67, v68, v69);
LABEL_45:

  v63 = v53;
LABEL_46:
  sub_1BC7C532C(v63, v54, v55);
  v70 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  v73 = a2[3];
  v74 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v73);
  v75 = *(v74 + 136);

  v76 = v75(v73, v74);
  if (!v71)
  {
    if (!v77)
    {
      goto LABEL_57;
    }

LABEL_55:

    goto LABEL_16;
  }

  if (!v77)
  {
    goto LABEL_55;
  }

  if (v72 == v76 && v71 == v77)
  {
  }

  else
  {
    v79 = sub_1BC8F8AA4();

    if ((v79 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_57:
  v80 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 4);
  v83 = a2[3];
  v84 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v83);
  v85 = (*(v84 + 144))(v83, v84);
  if (!(v85 >> 31))
  {
    if ((v82 & 1) == 0)
    {
      v35 = v81 == v85;
      goto LABEL_17;
    }

LABEL_16:
    v35 = 0;
LABEL_17:
    *v90 = v35;
    return;
  }

  __break(1u);
}

uint64_t sub_1BC7EB5E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1BC8F7C24();

  return v4;
}

uint64_t sub_1BC7EB644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BC7EB6B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC8F7A74();
  OUTLINED_FUNCTION_0();
  *&v46 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC8F7A64();
  OUTLINED_FUNCTION_0();
  v45 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;

  v17 = sub_1BC7EBAF0(a1, a2);
  v19 = v18;
  sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1BC8F7A54();
  sub_1BC7EC5DC(v17, v19);
  sub_1BC7EC540(v17, v19, v8);
  v41 = v19;
  v42 = v17;
  sub_1BC7D4C94(v17, v19);
  sub_1BC8F7A44();
  (*(v46 + 8))(v8, v4);
  v20 = *(v45 + 16);
  v43 = v16;
  v20(v14, v16, v9);
  sub_1BC7EC634(&qword_1EDC210F0, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v44 = v9;
  sub_1BC8F7DA4();
  v21 = v47;
  v22 = v48;
  v23 = *(v47 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v48 == v23)
  {
LABEL_2:

    v47 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7ADBA4();
    v25 = sub_1BC8F7B74();
    v27 = v26;

    v28 = sub_1BC7C1DF4(10, v25, v27);
    MEMORY[0x1BFB290C0](v28);

    sub_1BC7D4C94(v42, v41);
    (*(v45 + 8))(v43, v44);
  }

  else
  {
    v46 = xmmword_1BC8FC230;
    v29 = v48;
    while ((v22 & 0x8000000000000000) == 0)
    {
      if (v29 >= *(v21 + 16))
      {
        goto LABEL_13;
      }

      v30 = *(v21 + 32 + v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      *(v31 + 56) = MEMORY[0x1E69E7508];
      *(v31 + 64) = MEMORY[0x1E69E7558];
      *(v31 + 32) = v30;
      v32 = sub_1BC8F7C44();
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F6F9C(0, *(v24 + 16) + 1, 1, v24);
        v24 = v38;
      }

      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1BC7F6F9C(v35 > 1, v36 + 1, 1, v24);
        v24 = v39;
      }

      ++v29;
      *(v24 + 16) = v36 + 1;
      v37 = v24 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      if (v23 == v29)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1BC7EBAF0(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5558, &qword_1BC900490);
  if (swift_dynamicCast())
  {
    sub_1BC7CF5EC(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1BC8F6DB4();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1BC7EC990(v40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1BC8F8634();
  }

  sub_1BC7EBFE8(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1BFB284B0](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_1BC7EC104(sub_1BC7ECA30, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BC8F7094();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_1BC7ECA4C(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1BC8F7D34();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1BC8F7D64();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1BC8F8634();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_1BC7ECA4C(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_1BC8F7D44();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1BC8F70B4();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1BC8F70B4();
    sub_1BC7ECAC8(v35, v36);
    goto LABEL_58;
  }

  sub_1BC7ECAC8(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_1BC7EC5DC(*&v40[0], *(&v40[0] + 1));

  sub_1BC7D4C94(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1BC7EBFE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BC8F7024();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1BC8F6D84();
      swift_allocObject();
      v8 = sub_1BC8F6D44();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BC8F7084();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BC7EC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BC7EC6C4(sub_1BC7ECB1C, v5, a1, a2);
}

uint64_t sub_1BC7EC104(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BC7D4C94(v7, v6);
      *v5 = xmmword_1BC900480;
      sub_1BC7D4C94(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1BC8F6D54() && __OFSUB__(v7, sub_1BC8F6D74()))
      {
        goto LABEL_24;
      }

      sub_1BC8F6D84();
      swift_allocObject();
      v14 = sub_1BC8F6D34();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1BC7EC728(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BC7D4C94(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1BC900480;
      sub_1BC7D4C94(0, 0xC000000000000000);
      sub_1BC8F7034();
      v7 = v17;
      v10 = sub_1BC7EC728(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1BC7D4C94(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1BC7EC4C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BC8F7024();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB28450]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB28470]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BC7EC540(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1BC7EC8B0(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1BC7EC7DC(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1BC7EC5DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1BC7EC634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC7EC67C(uint64_t result)
{
  if (result)
  {
    result = sub_1BC8F85B4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BC7EC6C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BC7EC728(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BC8F6D54();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BC8F6D74();
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

  v12 = sub_1BC8F6D64();
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

uint64_t sub_1BC7EC7DC(uint64_t a1, uint64_t a2)
{
  sub_1BC8F7A74();
  sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1BC8F7A34();
}

uint64_t sub_1BC7EC8B0(uint64_t a1, uint64_t a2)
{
  result = sub_1BC8F6D54();
  if (!result || (result = sub_1BC8F6D74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BC8F6D64();
      sub_1BC8F7A74();
      sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1BC8F7A34();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7EC990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5560, &qword_1BC900498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BC7EC9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1BC7EC0B0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_1BC7ECA4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BC8F7D74();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB29160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1BC7ECAC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BC7D4C94(result, a2);
  }

  return result;
}

uint64_t sub_1BC7ECADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC7EC67C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

BOOL sub_1BC7ECB3C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1BC7ECC08(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
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

void sub_1BC7ECCB0()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F6E04();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_4();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0_7();
  sub_1BC7C46D8(v12, v13, MEMORY[0x1E6968FC8]);
  if ((sub_1BC8F7BC4() & 1) == 0)
  {
    v43 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5588, &unk_1BC900648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FC230;
    v15 = *MEMORY[0x1E695DB00];
    *(inited + 32) = *MEMORY[0x1E695DB00];
    v16 = v15;
    sub_1BC8C14C8(inited);
    sub_1BC8F6F14();

    v21 = sub_1BC8F6DE4();
    v22 = *(v4 + 8);
    v23 = v1;
    v24 = v21;
    v22(v23, v2);
    if (v24)
    {
      v42 = v22;
      v25 = swift_initStackObject();
      OUTLINED_FUNCTION_13_6(v25);
      *(v26 + 32) = v16;
      v27 = v16;
      sub_1BC8C14C8(v22);
      sub_1BC8F6F14();

      v22 = v0;
      sub_1BC8F6DE4();
      v36 = OUTLINED_FUNCTION_28_2();
      v42(v36, v2);
      if (v0)
      {
        v37 = [v24 isEqual_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v17 = swift_initStackObject();
    OUTLINED_FUNCTION_13_6(v17);
    v18 = *MEMORY[0x1E695DA88];
    *(v19 + 32) = *MEMORY[0x1E695DA88];
    v20 = v18;
    sub_1BC8C14C8(v22);
    sub_1BC8F6F14();

    v28 = sub_1BC8F6DD4();
    v30 = v29;
    v31 = *(v4 + 8);
    v32 = OUTLINED_FUNCTION_44_1();
    v31(v32);
    if (v30)
    {
      v33 = swift_initStackObject();
      OUTLINED_FUNCTION_13_6(v33);
      *(v34 + 32) = v20;
      v35 = v20;
      sub_1BC8C14C8(v4 + 8);
      sub_1BC8F6F14();

      v38 = sub_1BC8F6DD4();
      v40 = v39;
      (v31)(v43, v2);
      if (v40)
      {
        if (v28 != v38 || v30 != v40)
        {
          sub_1BC8F8AA4();
        }
      }

      else
      {
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_24();
}

FaceTimeMessageStore::AssetHelperError_optional __swiftcall AssetHelperError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8804();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetHelperError.rawValue.getter()
{
  result = 0xD000000000000010;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7ED1D8@<X0>(unint64_t *a1@<X8>)
{
  result = AssetHelperError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BC7ED204()
{
  result = qword_1EBCF5568;
  if (!qword_1EBCF5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetHelperError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BC7ED3FC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_4();
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v10 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v10, qword_1EDC2B3A8);
  v11 = *(v3 + 16);
  v12 = OUTLINED_FUNCTION_45_2();
  v11(v12);
  (v11)(v7, v0, v1);
  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_11_2();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    v33 = swift_slowAlloc();
    *v15 = 136446466;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v16, v17, MEMORY[0x1E6968FE0]);
    v31 = v13;
    v18 = sub_1BC8F8A54();
    v32 = v0;
    v20 = v19;
    v21 = *(v3 + 8);
    v22 = OUTLINED_FUNCTION_44_1();
    v21(v22);
    v23 = sub_1BC7A9A4C(v18, v20, &v33);
    v0 = v32;

    *(v15 + 4) = v23;
    *(v15 + 12) = 2082;
    sub_1BC8F8A54();
    (v21)(v7, v1);
    v24 = OUTLINED_FUNCTION_40();
    v27 = sub_1BC7A9A4C(v24, v25, v26);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1BC7A3000, v31, (v3 + 16), "MessageStore: Asked to check if %{public}s is in sandbox directory: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v21 = *(v3 + 8);
    (v21)(v7, v1);
    v28 = OUTLINED_FUNCTION_44_1();
    v21(v28);
  }

  v29 = sub_1BC8F6F04();
  v30 = sub_1BC8F6F04();
  sub_1BC87310C(v30, v29);

  (v21)(v0, v1);
  OUTLINED_FUNCTION_24();
}

void sub_1BC7ED740(void *a1@<X0>, uint64_t a2@<X8>)
{
  v173[1] = *MEMORY[0x1E69E9840];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v171 = v7;
  v172 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v165 = (v8 - v9);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_4();
  v160 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_4();
  v159 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_4();
  v167 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_4();
  v164 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_4();
  v162 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_4();
  v161 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  v163 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v156 - v26;
  sub_1BC8F6EE4();
  v29 = v28;
  v30 = MEMORY[0x1BFB2A220]();
  OUTLINED_FUNCTION_45_2();
  sub_1BC7C1A54(v31, v29, v32);
  if (v2)
  {
    objc_autoreleasePoolPop(v30);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v30);
    v170 = a1;
    sub_1BC7ECCB0();
    v168 = a2;
    if (v33)
    {
      v34 = v172;
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v35 = sub_1BC8F7734();
      __swift_project_value_buffer(v35, qword_1EDC2B3A8);
      v36 = v171;
      v37 = *(v171 + 2);
      v37(v3, v170, v34);
      v38 = v165;
      v39 = OUTLINED_FUNCTION_27_0();
      (v37)(v39);
      v40 = sub_1BC8F7714();
      v41 = sub_1BC8F8204();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_11_2();
        v42 = swift_slowAlloc();
        v166 = 0;
        v43 = v42;
        OUTLINED_FUNCTION_18();
        v170 = swift_slowAlloc();
        v173[0] = v170;
        *v43 = 136446466;
        OUTLINED_FUNCTION_0_7();
        sub_1BC7C46D8(v44, v45, MEMORY[0x1E6968FE0]);
        sub_1BC8F8A54();
        LODWORD(v167) = v41;
        v47 = v46;
        v169 = v27;
        v48 = *(v171 + 1);
        v48(v3, v172);
        v49 = OUTLINED_FUNCTION_10_8();
        v51 = sub_1BC7A9A4C(v49, v47, v50);

        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v36 = v171;
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_24_4();
        v48(v38, v172);
        v27 = v169;
        v34 = v172;
        sub_1BC7A9A4C(v47, v38, v173);
        OUTLINED_FUNCTION_16_3();

        *(v43 + 14) = v47;
        _os_log_impl(&dword_1BC7A3000, v40, v167, "MessageStore: Not copying incoming message file since source and destination are the same! Source: %{public}s, Destination: %{public}s", v43, 0x16u);
        OUTLINED_FUNCTION_41_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v80 = *(v36 + 1);
        v80(v38, v34);
        v80(v3, v34);
      }

      goto LABEL_28;
    }

    v165 = objc_opt_self();
    v52 = [v165 defaultManager];
    v169 = v27;
    sub_1BC8F6FC4();
    v53 = sub_1BC8F7BE4();

    v54 = [v52 fileExistsAtPath_];

    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v34 = v172;
    v56 = v170;
    v166 = 0;
    if (v54)
    {
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v57 = sub_1BC8F7734();
      v58 = __swift_project_value_buffer(v57, qword_1EDC2B3A8);
      v59 = v171;
      v60 = v171 + 16;
      v61 = v163;
      v157 = *(v171 + 2);
      v157(v163, v169, v34);
      v158 = v58;
      v62 = sub_1BC8F7714();
      v63 = sub_1BC8F8204();
      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_9();
        v64 = swift_slowAlloc();
        v156[1] = v60;
        v65 = v61;
        v66 = v64;
        OUTLINED_FUNCTION_8_2();
        v67 = swift_slowAlloc();
        v173[0] = v67;
        *v66 = 136446210;
        OUTLINED_FUNCTION_0_7();
        sub_1BC7C46D8(v68, v69, MEMORY[0x1E6968FE0]);
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_37_3();
        v70 = *(v59 + 1);
        v70(v65, v172);
        v71 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v71, v34, v72);
        OUTLINED_FUNCTION_23_2();
        *(v66 + 4) = v65;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v73, v74, v75, v76, v77, v78);
        __swift_destroy_boxed_opaque_existential_1(v67);
        v79 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v79);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v70 = *(v59 + 1);
        v70(v61, v34);
      }

      v81 = [v165 defaultManager];
      sub_1BC8F6FC4();
      v82 = sub_1BC8F7BE4();

      v56 = v170;
      sub_1BC8F6FC4();
      v83 = sub_1BC8F7BE4();

      v84 = [v81 contentsEqualAtPath:v82 andPath:v83];

      p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
      if (v84)
      {
        v167 = v70;
        v85 = v161;
        v86 = v157;
        v157(v161, v56, v34);
        v87 = v162;
        v27 = v169;
        v86(v162, v169, v34);
        v88 = sub_1BC8F7714();
        sub_1BC8F8204();
        OUTLINED_FUNCTION_30_3();
        if (!os_log_type_enabled(v88, v89))
        {

          v36 = v171;
          v151 = v167;
          (v167)(v87, v34);
          v152 = OUTLINED_FUNCTION_12_5();
          v151(v152);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_11_2();
        v90 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v170 = swift_slowAlloc();
        v173[0] = v170;
        *v90 = 136446466;
        OUTLINED_FUNCTION_0_7();
        v34 = sub_1BC7C46D8(v91, v92, MEMORY[0x1E6968FE0]);
        v93 = v85;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_38_3();
        v94 = v85;
        v36 = v171;
        v95 = v167;
        (v167)(v94, v172);
        v96 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v96, v56, v97);
        OUTLINED_FUNCTION_28_2();

        *(v90 + 4) = v93;
        *(v90 + 12) = 2082;
        v98 = v162;
        v99 = v162;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_37_3();
        v95(v98, v172);
        v100 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v100, v34, v101);
        OUTLINED_FUNCTION_23_2();
        *(v90 + 14) = v99;
        v102 = "%{public}s and %{public}s have the same contents!";
        v103 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        _os_log_impl(&dword_1BC7A3000, v88, v103, v102, v90, 0x16u);
        OUTLINED_FUNCTION_41_4();
        swift_arrayDestroy();
        v27 = v169;
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        v104 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v104);

LABEL_28:
        (*(v36 + 4))(v168, v27, v34);
        return;
      }
    }

    if (p_cache[229] != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v105 = sub_1BC8F7734();
    v106 = __swift_project_value_buffer(v105, qword_1EDC2B3A8);
    v36 = v171;
    v107 = v171 + 16;
    v108 = *(v171 + 2);
    v109 = v164;
    v108(v164, v56, v34);
    v110 = v167;
    v111 = v169;
    v161 = v108;
    v162 = v107;
    v108(v167, v169, v34);
    v163 = v106;
    v112 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_30_3();
    if (os_log_type_enabled(v112, v113))
    {
      OUTLINED_FUNCTION_11_2();
      v114 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v158 = swift_slowAlloc();
      v173[0] = v158;
      *v114 = 136446466;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v115, v116, MEMORY[0x1E6968FE0]);
      OUTLINED_FUNCTION_47_2();
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_37_3();
      v117 = *(v171 + 1);
      v117(v109, v172);
      v118 = OUTLINED_FUNCTION_10_8();
      sub_1BC7A9A4C(v118, v34, v119);
      OUTLINED_FUNCTION_23_2();
      *(v114 + 4) = v109;
      *(v114 + 12) = 2082;
      v120 = v167;
      OUTLINED_FUNCTION_47_2();
      sub_1BC8F8A54();
      v122 = v121;
      v117(v120, v34);
      v36 = v171;
      v123 = OUTLINED_FUNCTION_10_8();
      v125 = sub_1BC7A9A4C(v123, v122, v124);
      v111 = v169;

      *(v114 + 14) = v125;
      _os_log_impl(&dword_1BC7A3000, v112, v108, "MessageStore: Copying incoming message file from %{public}s to %{public}s", v114, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v56 = v170;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v126 = v110;
      v117 = *(v36 + 1);
      v117(v126, v34);
      v117(v109, v34);
    }

    v127 = v166;
    sub_1BC7EE4C8(v56, 1);
    if (!v127)
    {
      sub_1BC7EE4C8(v111, 0);
      v171 = v117;
      v128 = [v165 defaultManager];
      v129 = v56;
      v130 = v111;
      v131 = sub_1BC8F6F44();
      v132 = sub_1BC8F6F44();
      v173[0] = 0;
      v133 = [v128 copyItemAtURL:v131 toURL:v132 error:v173];

      v134 = v173[0];
      if (v133)
      {
        v166 = 0;
        v135 = v159;
        v136 = OUTLINED_FUNCTION_44_1();
        v137 = v161;
        (v161)(v136);
        v138 = v160;
        v137(v160, v130, v34);
        v139 = v134;
        v88 = sub_1BC8F7714();
        v140 = sub_1BC8F8204();
        if (!os_log_type_enabled(v88, v140))
        {
          v27 = v130;

          v154 = v171;
          v171(v138, v34);
          v155 = OUTLINED_FUNCTION_45_2();
          v154(v155);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_11_2();
        v141 = v138;
        v90 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v170 = swift_slowAlloc();
        v173[0] = v170;
        *v90 = 136446466;
        OUTLINED_FUNCTION_0_7();
        v34 = sub_1BC7C46D8(v142, v143, MEMORY[0x1E6968FE0]);
        LODWORD(v167) = v140;
        v144 = v135;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_38_3();
        v145 = v135;
        v146 = v171;
        v171(v145, v172);
        v147 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v147, v130, v148);
        OUTLINED_FUNCTION_28_2();

        *(v90 + 4) = v144;
        *(v90 + 12) = 2082;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_37_3();
        v146(v141, v172);
        v149 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v149, v34, v150);
        OUTLINED_FUNCTION_23_2();
        *(v90 + 14) = v141;
        v102 = "MessageStore: Copied incoming message file from %{public}s to %{public}s";
        v103 = v167;
        goto LABEL_17;
      }

      v153 = v173[0];
      OUTLINED_FUNCTION_16_3();
      sub_1BC8F6EA4();

      swift_willThrow();
      v111 = v130;
      v117 = v171;
    }

    v117(v111, v34);
  }
}

void sub_1BC7EE4C8(uint64_t a1, int a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35[-v8];
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F7734();
  v11 = __swift_project_value_buffer(v10, qword_1EDC2B3A8);
  v38 = *(v5 + 16);
  v39 = v5 + 16;
  v38(v9, a1, v4);
  v41 = v11;
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F81D4();
  v14 = os_log_type_enabled(v12, v13);
  v43 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v15 = 136315650;
    *(v15 + 4) = sub_1BC7A9A4C(0xD000000000000022, 0x80000001BC90BE80, &v44);
    *(v15 + 12) = 1026;
    *(v15 + 14) = a2 & 1;
    *(v15 + 18) = 2082;
    sub_1BC7C46D8(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v16 = sub_1BC8F8A54();
    v36 = v13;
    v17 = a2;
    v19 = v18;
    v40 = *(v43 + 8);
    v40(v9, v4);
    v20 = sub_1BC7A9A4C(v16, v19, &v44);
    a2 = v17;

    *(v15 + 20) = v20;
    _os_log_impl(&dword_1BC7A3000, v12, v36, "%s shouldExist: %{BOOL,public}d file: %{public}s", v15, 0x1Cu);
    v21 = v37;
    swift_arrayDestroy();
    MEMORY[0x1BFB2AA50](v21, -1, -1);
    MEMORY[0x1BFB2AA50](v15, -1, -1);
  }

  else
  {

    v40 = *(v5 + 8);
    v40(v9, v4);
  }

  v22 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v23 = sub_1BC8F7BE4();

  v24 = [v22 fileExistsAtPath_];

  if ((v24 ^ a2))
  {
    v38(v42, a1, v4);
    v25 = sub_1BC8F7714();
    v26 = sub_1BC8F81E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315906;
      *(v27 + 4) = sub_1BC7A9A4C(0xD000000000000022, 0x80000001BC90BE80, &v44);
      *(v27 + 12) = 1026;
      *(v27 + 14) = a2 & 1;
      *(v27 + 18) = 1026;
      *(v27 + 20) = v24;
      *(v27 + 24) = 2082;
      sub_1BC7C46D8(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v29 = v42;
      v30 = sub_1BC8F8A54();
      v32 = v31;
      v40(v29, v4);
      v33 = sub_1BC7A9A4C(v30, v32, &v44);

      *(v27 + 26) = v33;
      _os_log_impl(&dword_1BC7A3000, v25, v26, "%s shouldExist: %{BOOL,public}d doesExist: %{BOOL,public}d file: %{public}s", v27, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1BFB2AA50](v28, -1, -1);
      MEMORY[0x1BFB2AA50](v27, -1, -1);
    }

    else
    {

      v40(v42, v4);
    }

    sub_1BC7F17E4();
    swift_allocError();
    *v34 = (a2 & 1) == 0;
    swift_willThrow();
  }
}

void sub_1BC7EEA50(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v3 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v3);
    v5 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v6 + 72);
    do
    {
      sub_1BC7EEAE4();
      v5 += v7;
      --v1;
    }

    while (v1);
  }
}

void sub_1BC7EEAE4()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v95[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v86 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v89 = v7 - v8;
  OUTLINED_FUNCTION_17_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v82 - v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_4();
  sub_1BC7C1C54(v1);
  v94 = objc_opt_self();
  v14 = [v94 defaultManager];
  v15 = sub_1BC8F6F44();
  v95[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v95];

  v17 = v95[0];
  if (v16)
  {
    v90 = v4;
    sub_1BC8F7E54();
    v18 = v17;

    MEMORY[0x1EEE9AC00](v19);
    v82[-2] = v3;
    sub_1BC7F1F38();
    v21 = v20;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v22 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v22, qword_1EDC2B3A8);

    v88 = v16;
    v23 = sub_1BC8F7714();
    v24 = sub_1BC8F8204();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_9();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v26 = swift_slowAlloc();
      v95[0] = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x1BFB29280](v21, v90);
      v29 = v0;
      v30 = sub_1BC7A9A4C(v27, v28, v95);

      *(v25 + 4) = v30;
      v0 = v29;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v31, v32, v33, v34, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v38 = v86;
    v39 = v89;
    v40 = *(v21 + 16);
    if (v40)
    {
      v82[1] = v21;
      v83 = v1;
      v41 = *(v86 + 16);
      v42 = v21 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v91 = *(v86 + 72);
      v92 = v41;
      v93 = (v86 + 8);
      *&v37 = 136446210;
      v85 = v37;
      v43 = v90;
      v86 += 16;
      v84 = v0;
      do
      {
        v44 = v92;
        (v92)(v0, v42, v43);
        v45 = [v94 defaultManager];
        v46 = sub_1BC8F6F44();
        v95[0] = 0;
        v47 = [v45 removeItemAtURL:v46 error:v95];

        if (v47)
        {
          v48 = *v93;
          v49 = v95[0];
          v48(v0, v43);
        }

        else
        {
          v50 = v95[0];
          v51 = sub_1BC8F6EA4();

          v90 = v51;
          swift_willThrow();
          v52 = OUTLINED_FUNCTION_48_1();
          v44(v52);
          v53 = sub_1BC8F7714();
          v54 = v0;
          v55 = sub_1BC8F81E4();
          if (os_log_type_enabled(v53, v55))
          {
            OUTLINED_FUNCTION_9();
            v56 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v87 = swift_slowAlloc();
            v95[0] = v87;
            *v56 = v85;
            OUTLINED_FUNCTION_0_7();
            sub_1BC7C46D8(&qword_1EDC20610, v57, MEMORY[0x1E6968FE0]);
            sub_1BC8F8A54();
            v59 = v58;
            v48 = *v93;
            (*v93)(v89, v43);
            v60 = OUTLINED_FUNCTION_10_8();
            v62 = sub_1BC7A9A4C(v60, v59, v61);

            *(v56 + 4) = v62;
            _os_log_impl(&dword_1BC7A3000, v53, v55, "MessageStore: Failed to delete file at URL %{public}s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            v39 = v89;
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();

            v0 = v84;
            v48(v84, v43);
          }

          else
          {

            v48 = *v93;
            (*v93)(v39, v43);
            v48(v54, v43);
            v0 = v54;
          }
        }

        v42 += v91;
        --v40;
      }

      while (v40);

      v1 = v83;
    }

    else
    {

      v48 = *(v38 + 8);
      v43 = v90;
    }

    v48(v1, v43);
  }

  else
  {
    v63 = v95[0];
    v64 = sub_1BC8F6EA4();

    swift_willThrow();
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v65 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v65, qword_1EDC2B3A8);
    v66 = v86;
    v67 = v4;
    (*(v86 + 16))(v12, v1, v4);
    v68 = v64;
    v69 = sub_1BC8F7714();
    v70 = sub_1BC8F81E4();

    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_11_2();
      v71 = swift_slowAlloc();
      v93 = OUTLINED_FUNCTION_32_3();
      OUTLINED_FUNCTION_8_2();
      v94 = swift_slowAlloc();
      v95[0] = v94;
      *v71 = 136446466;
      sub_1BC8F6FC4();
      v83 = v1;
      v73 = v72;
      v74 = *(v66 + 8);
      v74(v12, v67);
      v75 = OUTLINED_FUNCTION_10_8();
      v77 = sub_1BC7A9A4C(v75, v73, v76);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2114;
      v78 = v64;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 14) = v79;
      v80 = v93;
      *v93 = v79;
      _os_log_impl(&dword_1BC7A3000, v69, v70, "MessageStore: Encountered an error while enumerating files for deletion %{public}s: %{public}@", v71, 0x16u);
      sub_1BC7F1790(v80, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      v74(v83, v67);
    }

    else
    {

      v81 = *(v66 + 8);
      v81(v12, v67);
      v81(v1, v67);
    }
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7EF2F0(uint64_t a1)
{
  v1 = sub_1BC8F6F24();
  v3 = v2;
  v4 = sub_1BC8F7204();
  v6 = sub_1BC8731C0(v4, v5, v1, v3);

  return v6 & 1;
}

void sub_1BC7EF368()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v70 = v4;
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65[-v7];
  v9 = sub_1BC8F6E04();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5588, &unk_1BC900648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  v16 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v17 = v16;
  sub_1BC8C14C8(inited);
  sub_1BC8F6F14();
  v18 = v8;
  v69 = v11;

  v19 = sub_1BC8F6DF4();
  if (v20)
  {
    v21 = v70;
    v22 = v71;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v23 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v23, qword_1EDC2B3A8);
    v24 = v0;
    (*(v21 + 16))(v0, v2, v22);
    v25 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_30_3();
    v27 = v9;
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_9();
      v28 = v14;
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v30 = swift_slowAlloc();
      v72 = v30;
      *v29 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v31, v32, MEMORY[0x1E6968FE0]);
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_39_2();
      v33(v24, v34);
      v35 = sub_1BC7A9A4C(v24, v22, &v72);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1BC7A3000, v25, v2, "MessageStore: Failed to get asset size for url: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v36 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v36);

      (*(v69 + 8))(v28, v27);
    }

    else
    {

      (*(v21 + 8))(v24, v22);
      (*(v69 + 8))(v14, v9);
    }

LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  v37 = v19;
  v38 = v70;
  v39 = v71;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v40 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v40, qword_1EDC2B3A8);
  v41 = OUTLINED_FUNCTION_46_1();
  v42(v41);
  v43 = sub_1BC8F7714();
  v44 = sub_1BC8F8204();
  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_11_2();
    v45 = swift_slowAlloc();
    v68 = v9;
    v46 = v18;
    v47 = v45;
    OUTLINED_FUNCTION_18();
    v67 = swift_slowAlloc();
    v72 = v67;
    *v47 = 136446466;
    v48 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    v66 = v44;
    v49 = v48;
    v50 = [v48 stringFromByteCount_];

    sub_1BC8F7C24();
    OUTLINED_FUNCTION_38_3();

    v51 = OUTLINED_FUNCTION_19_5();
    sub_1BC7A9A4C(v51, v52, v53);
    OUTLINED_FUNCTION_28_2();

    *(v47 + 4) = v49;
    *(v47 + 12) = 2082;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v54, v55, MEMORY[0x1E6968FE0]);
    sub_1BC8F8A54();
    OUTLINED_FUNCTION_38_3();
    (*(v38 + 8))(v46, v39);
    v56 = OUTLINED_FUNCTION_19_5();
    v59 = sub_1BC7A9A4C(v56, v57, v58);

    *(v47 + 14) = v59;
    _os_log_impl(&dword_1BC7A3000, v43, v66, "MessageStore: Got %{public}s for url: %{public}s", v47, 0x16u);
    OUTLINED_FUNCTION_41_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    (*(v69 + 8))(v14, v68);
  }

  else
  {

    v60 = OUTLINED_FUNCTION_48_1();
    v61(v60);
    v62 = OUTLINED_FUNCTION_27_0();
    v64(v62, v63);
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BC7EFADC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1BC8F7014();
  v2[6] = v3;
  OUTLINED_FUNCTION_26(v3);
  v2[7] = v4;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7EFBC4, 0, 0);
}

uint64_t sub_1BC7EFBC4()
{
  v74 = v0;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = sub_1BC8F7734();
  v0[13] = __swift_project_value_buffer(v3, qword_1EDC2B3A8);
  v0[14] = *(v1 + 16);
  v0[15] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_40();
  v70 = v5;
  v5(v4);
  v6 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v73[0] = v9;
    *v8 = 136446210;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v10, v11, MEMORY[0x1E6968FE0]);
    v12 = sub_1BC8F8A54();
    v14 = v13;
    v15 = OUTLINED_FUNCTION_12_5();
    v17 = v16;
    v16(v15);
    v18 = sub_1BC7A9A4C(v12, v14, v73);

    *(v8 + 4) = v18;
    _os_log_impl(&dword_1BC7A3000, v6, v2, "MOV to AMR conversion started for %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v19 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v19);
  }

  else
  {

    v20 = OUTLINED_FUNCTION_12_5();
    v17 = v21;
    v21(v20);
  }

  v0[16] = v17;
  sub_1BC7D9730(0, &qword_1EDC1DEA8, 0x1E6988168);
  v22 = OUTLINED_FUNCTION_40();
  v70(v22);
  v23 = sub_1BC7F0BB8();
  v0[17] = v23;
  v24 = sub_1BC8F7C24();
  v26 = v25;
  objc_allocWithZone(MEMORY[0x1E6987E60]);
  v27 = v23;
  v28 = sub_1BC7F15F0(v27, v24, v26);
  v0[18] = v28;
  if (v28)
  {
    v29 = v28;
    v30 = [v28 supportedFileTypes];
    type metadata accessor for AVFileType(0);
    OUTLINED_FUNCTION_12_5();
    v31 = sub_1BC8F7E54();

    v32 = *MEMORY[0x1E6987468];
    v0[19] = *MEMORY[0x1E6987468];
    v0[2] = v32;
    v33 = swift_task_alloc();
    *(v33 + 16) = v0 + 2;
    v34 = sub_1BC7ECC08(sub_1BC7F19EC, v33, v31);

    if (v34)
    {

      v35 = sub_1BC8F7714();
      v36 = sub_1BC8F8204();

      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_9();
        v37 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v38 = swift_slowAlloc();
        v73[0] = v38;
        *v37 = 136446210;
        v39 = OUTLINED_FUNCTION_45_2();
        MEMORY[0x1BFB29280](v39);

        v40 = OUTLINED_FUNCTION_48_1();
        v43 = sub_1BC7A9A4C(v40, v41, v42);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_1BC7A3000, v35, v36, "Supported file types: %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v44 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v44);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5580, &qword_1BC900640);
      v63 = sub_1BC8F7404();
      v0[20] = v63;
      v64 = swift_task_alloc();
      v0[21] = v64;
      *v64 = v0;
      v64[1] = sub_1BC7F02E8;

      return MEMORY[0x1EEE68140](v0 + 3, v63, 0, 0);
    }

    v50 = OUTLINED_FUNCTION_12_5();
    v70(v50);
    v51 = sub_1BC8F7714();
    v52 = sub_1BC8F81E4();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_9();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v72 = swift_slowAlloc();
      v73[0] = v72;
      *v53 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v54, v55, MEMORY[0x1E6968FE0]);
      v56 = v27;
      v57 = sub_1BC8F8A54();
      v71 = v52;
      v59 = v58;
      v60 = OUTLINED_FUNCTION_19_5();
      v17(v60);
      v61 = v57;
      v27 = v56;
      v62 = sub_1BC7A9A4C(v61, v59, v73);

      *(v53 + 4) = v62;
      _os_log_impl(&dword_1BC7A3000, v51, v71, "AVFoundation doesn't support exporting this file as a .amr file. Input file: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v65 = OUTLINED_FUNCTION_19_5();
      v17(v65);
    }

    sub_1BC7F17E4();
    v66 = swift_allocError();
    OUTLINED_FUNCTION_51_0(v66, v67);
  }

  else
  {
    v45 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_35_3();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1BC7A3000, v45, v24, "Failed to setup export session for .mov to .amr conversion!", v47, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    sub_1BC7F17E4();
    v48 = swift_allocError();
    OUTLINED_FUNCTION_51_0(v48, v49);
  }

  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v68();
}

uint64_t sub_1BC7F02E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1BC7F08B8;
  }

  else
  {
    v2 = sub_1BC7F041C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC7F041C()
{
  v1 = v0[18];
  sub_1BC7F1944(v0[3], v1);
  v2 = v1;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_32_3();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Set exportSession properties %{public}@", v6, 0xCu);
    sub_1BC7F1790(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1BC7F059C;
  v10 = v0[19];
  v11 = v0[5];

  return MEMORY[0x1EEE68110](v11, v10, 0, 0);
}

uint64_t sub_1BC7F059C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1BC7F0950;
  }

  else
  {
    v2 = sub_1BC7F06B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC7F06B0()
{
  (*(v1 + 112))(*(v1 + 80), *(v1 + 40), *(v1 + 48));
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = *(v1 + 80);
  v8 = *(v1 + 48);
  if (v4)
  {
    OUTLINED_FUNCTION_9();
    v18 = v9;
    v19 = v5;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v20 = swift_slowAlloc();
    *v10 = 136446210;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v11, v12, MEMORY[0x1E6968FE0]);
    sub_1BC8F8A54();
    v6(v7, v8);
    v13 = OUTLINED_FUNCTION_48_1();
    sub_1BC7A9A4C(v13, v14, v15);
    OUTLINED_FUNCTION_28_2();

    *(v10 + 4) = v7;
    _os_log_impl(&dword_1BC7A3000, v2, v0, "MOV to AMR conversion finished for %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v6(v7, v8);
  }

  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_1BC7F08B8()
{
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC7F0950()
{
  v29 = v0;
  v1 = *(v0 + 192);
  (*(v0 + 112))(*(v0 + 64), *(v0 + 32), *(v0 + 48));
  v2 = v1;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F81E4();

  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 192);
    OUTLINED_FUNCTION_11_2();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v5 = 136446466;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v8, v9, MEMORY[0x1E6968FE0]);
    v10 = sub_1BC8F8A54();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_19_5();
    v14(v13);
    v15 = sub_1BC7A9A4C(v10, v12, &v28);

    *(v5 + 4) = v15;
    *(v5 + 12) = 2114;
    v16 = v27;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v17;
    *v6 = v17;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Conversion failed for %{public}s with error %{public}@", v5, 0x16u);
    sub_1BC7F1790(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v18);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v19 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v19);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v20);
  }

  else
  {
    v21 = *(v0 + 128);

    v22 = OUTLINED_FUNCTION_40();
    v21(v22);
  }

  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  swift_willThrow();

  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v25();
}

id sub_1BC7F0BB8()
{
  OUTLINED_FUNCTION_16_3();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1BC8F6F44();
  v3 = [v1 initWithURL:v2 options:0];

  sub_1BC8F7014();
  OUTLINED_FUNCTION_42();
  (*(v4 + 8))(v0);
  return v3;
}

void sub_1BC7F0C48(char *a1, void *a2)
{
  v3 = *a1;
  LOBYTE(v20[0]) = *a1;
  MessageKey.rawValue.getter();
  v4 = sub_1BC8F7BE4();

  v5 = [a2 valueForKey_];

  if (v5)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    sub_1BC7F0E58(v19, v20);
    swift_dynamicCast();
    OUTLINED_FUNCTION_50_0();
    sub_1BC7F0E68();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_50_0();
      sub_1BC7D4C94(v7, v8);
    }

    else
    {
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v9 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v9, qword_1EDC2B3A8);
      v10 = sub_1BC8F7714();
      v11 = sub_1BC8F81E4();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_9();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v13 = swift_slowAlloc();
        *&v20[0] = v13;
        *v12 = 136446210;
        LOBYTE(v19[0]) = v3;
        sub_1BC7F173C();
        v14 = sub_1BC8F8A54();
        v16 = sub_1BC7A9A4C(v14, v15, v20);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1BC7A3000, v10, v11, "MessageStore: Failed to convert the CoreData attribute %{public}s to a local file.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v17 = OUTLINED_FUNCTION_50_0();
      sub_1BC7D4C94(v17, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_1BC7F0E58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1BC7F0E68()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  if ((sub_1BC7C2EFC() & 1) == 0)
  {
    v42 = v7;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v15 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B3A8);
    v39 = *(v10 + 16);
    v39(v14, v3, v8);
    v41 = v7;
    v16 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_30_3();
    v18 = os_log_type_enabled(v16, v17);
    v40 = v10;
    if (v18)
    {
      OUTLINED_FUNCTION_9();
      v19 = swift_slowAlloc();
      v37 = v5;
      v20 = v19;
      OUTLINED_FUNCTION_8_2();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v20 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v21, v22, MEMORY[0x1E6968FE0]);
      sub_1BC8F8A54();
      v38 = v0;
      v24 = v23;
      v25 = OUTLINED_FUNCTION_36_5();
      v26(v25);
      v27 = OUTLINED_FUNCTION_10_8();
      v29 = sub_1BC7A9A4C(v27, v24, v28);

      *(v20 + 4) = v29;
      _os_log_impl(&dword_1BC7A3000, v16, v1, "MessageStore: File at %{public}s doesn't exist! Attempting to copy it from the data.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v30 = OUTLINED_FUNCTION_36_5();
      v31(v30);
    }

    sub_1BC8F70F4();
    if ((sub_1BC7C2EFC() & 1) == 0)
    {
      v32 = sub_1BC8F7714();
      v33 = sub_1BC8F81E4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1BC7A3000, v32, v33, "MessageStore: Failed to convert fileData to a local file.", v34, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }
    }
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7F13F0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1BC7EC5DC(a1, a2);
  v5 = sub_1BC7F165C(a1, a2);
  [v5 setRequiresSecureCoding_];
  sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
  sub_1BC8F7C24();
  v6 = sub_1BC8F8364();

  return v6;
}

id sub_1BC7F15F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BC8F7BE4();

  v6 = [v3 initWithAsset:a1 presetName:v5];

  return v6;
}

id sub_1BC7F165C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BC8F70C4();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  sub_1BC7D4C94(a1, a2);
  return v7;
}

unint64_t sub_1BC7F173C()
{
  result = qword_1EDC1F9C8;
  if (!qword_1EDC1F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9C8);
  }

  return result;
}

uint64_t sub_1BC7F1790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1BC7F17E4()
{
  result = qword_1EBCF5578;
  if (!qword_1EBCF5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5578);
  }

  return result;
}

uint64_t sub_1BC7F1838(uint64_t a1, uint64_t a2)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_3_9();
  sub_1BC7C46D8(v2, v3, MEMORY[0x1E69695C8]);
  return sub_1BC8F7BC4() & 1;
}

uint64_t sub_1BC7F18B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC8F7C24();
  v4 = v3;
  if (v2 == sub_1BC8F7C24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();
  }

  return v7 & 1;
}

void sub_1BC7F1944(uint64_t a1, void *a2)
{
  sub_1BC7D9730(0, &qword_1EDC1DE58, 0x1E6987FE0);
  v3 = sub_1BC8F7E34();

  [a2 setMetadata_];
}

unint64_t sub_1BC7F1A2C()
{
  result = qword_1EBCF5590;
  if (!qword_1EBCF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5590);
  }

  return result;
}

void sub_1BC7F1A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404(0, v1, 0);
    v3 = v30;
    v6 = sub_1BC83053C();
    v7 = 0;
    v29 = v2 + 56;
    v24 = v2 + 64;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v28 = v5;
        v26 = v7;
        v27 = v4;
        v9 = Person.description.getter();
        v11 = v10;
        v13 = *(v3 + 16);
        v12 = *(v3 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1BC7AD404(v12 > 1, v13 + 1, 1);
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_30;
        }

        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v6 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v29 + 8 * v8);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v3;
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1BC7FBED8(v6, v27, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1BC7FBED8(v6, v27, 0);
LABEL_19:
          v3 = v18;
        }

        v7 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v15;
        if (v15 < 0)
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
  }
}

void sub_1BC7F1D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404(0, v1, 0);
    v5 = sub_1BC83053C();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 32 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1BC7AD404(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1BC7FBED8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1BC7FBED8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
  }
}

void sub_1BC7F1F38()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v30 = v3;
  v31 = v4;
  v33 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v27 = (v8 - v9);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = 0;
  v32 = *(v2 + 16);
  v29 = v6 + 16;
  v14 = (v6 + 8);
  v26 = (v6 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v32 == v13)
    {

LABEL_15:
      OUTLINED_FUNCTION_23();
      return;
    }

    if (v13 >= *(v2 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    v17 = v2;
    (*(v6 + 16))(v12, v2 + v15 + v16 * v13, v33);
    v18 = v30(v12);
    if (v0)
    {
      (*v14)(v12, v33);

      goto LABEL_15;
    }

    if (v18)
    {
      v25 = *v26;
      v25(v27, v12, v33);
      v19 = v28;
      v34 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v19;
      }

      else
      {
        sub_1BC7DDA24(0, *(v19 + 16) + 1, 1);
        v20 = v34;
      }

      v2 = v17;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v24 = v22;
        sub_1BC7DDA24(v21 > 1, v22 + 1, 1);
        v23 = v28;
        v22 = v24;
        v2 = v17;
        v20 = v34;
      }

      ++v13;
      *(v20 + 16) = v23;
      v28 = v20;
      v25(v20 + v15 + v22 * v16, v27, v33);
    }

    else
    {
      (*v14)(v12, v33);
      ++v13;
    }
  }

  __break(1u);
}

uint64_t sub_1BC7F21D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v5 = type metadata accessor for HistoryItem(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v12)
    {

      return v25;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_1BC7FB138(a3 + v14 + v15 * v12, v11);
    v16 = v26(v11);
    if (v3)
    {
      sub_1BC7FB19C(v11);
      v21 = v25;

      return v21;
    }

    if (v16)
    {
      sub_1BC7FBC68(v11, v24);
      v17 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BC7DDA7C();
        v17 = v28;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        v25 = v19 + 1;
        v23 = v19;
        sub_1BC7DDA7C();
        v20 = v25;
        v19 = v23;
        v17 = v28;
      }

      ++v12;
      *(v17 + 16) = v20;
      v25 = v17;
      result = sub_1BC7FBC68(v24, v17 + v14 + v19 * v15);
    }

    else
    {
      result = sub_1BC7FB19C(v11);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC7F2404(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1BC7F2488(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_25(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

void ParticipantKey.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BC7F1D00(a1);
  v4 = v3;

  v5 = v4;

  sub_1BC7F8024(&v5);

  *a2 = v5;
}

uint64_t ParticipantKey.description.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  sub_1BC7ADBA4();
  sub_1BC8F7B74();

  return OUTLINED_FUNCTION_40();
}

uint64_t sub_1BC7F2648(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7F26D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7F2648(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7F2704(uint64_t a1)
{
  v2 = sub_1BC7F8090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7F2740(uint64_t a1)
{
  v2 = sub_1BC7F8090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParticipantKey.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5598, &qword_1BC900658);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1BC7F8090();

  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  sub_1BC7FB0D0(&qword_1EBCF53B8);
  sub_1BC8F89F4();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_23();
}

void ParticipantKey.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  MEMORY[0x1BFB2A020](v3);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1BC8F7CD4();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t ParticipantKey.hashValue.getter()
{
  sub_1BC8F8C04();
  sub_1BC7DEC58();
  return sub_1BC8F8C64();
}

void ParticipantKey.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55A8, &qword_1BC900660);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = OUTLINED_FUNCTION_73();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_1BC7F8090();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7FB0D0(&qword_1EBCF5490);
    sub_1BC8F88F4();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7F2B68(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC7DEC58();
  return sub_1BC8F8C64();
}

void GroupedHistoryItem.init(people:items:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v7 = a2;

    sub_1BC7F80FC(&v7);

    v6 = v7;
    *a3 = a1;
    a3[1] = v6;
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

void GroupedHistoryItem.key.getter(uint64_t *a1@<X8>)
{
  sub_1BC7F1D00(*v1);
  v4 = v3;

  sub_1BC7F8024(&v4);

  *a1 = v4;
}

void GroupedHistoryItem.mostRecentItem.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v3 + 16))
  {
    v4 = type metadata accessor for HistoryItem(0);
    OUTLINED_FUNCTION_25(v4);
    OUTLINED_FUNCTION_25_1();

    sub_1BC7FB138(v3 + v5, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t GroupedHistoryItem.coalescedItems.getter()
{
  v1 = *(v0 + 8);

  v2 = sub_1BC7F2E34(1, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1BC8F8AD4();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    sub_1BC7F7E5C(v2, v4, v6, v8);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    return v10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v10;
}

int64_t sub_1BC7F2E34(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BC830538();
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_1BC7F2488(result, v3, a2, type metadata accessor for HistoryItem);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC7F2EE0(unint64_t result, uint64_t a2, unint64_t a3)
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
    result = sub_1BC8F7CF4();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1BC8F7D94();

      return OUTLINED_FUNCTION_40();
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7F3018()
{
  OUTLINED_FUNCTION_29_0();
  v27[0] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  v15 = type metadata accessor for HistoryItem(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = v27 - v20;
  v22 = *(v0 + 8);
  if (*(v22 + 16))
  {
    sub_1BC7FB138(v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v27 - v20);
    sub_1BC7FB138(v21, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BC7FB19C(v21);
      v23 = *v18;
      v24 = *v3;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      (v27[0])(0);
      OUTLINED_FUNCTION_4_1();
      (*(v25 + 16))(v7, &v23[v24]);
    }

    else
    {
      v26 = (*(v10 + 32))(v14, v18, v8);
      v5(v26);
      (*(v10 + 8))(v14, v8);
      sub_1BC7FB19C(v21);
    }

    OUTLINED_FUNCTION_24();
  }

  else
  {
    __break(1u);
  }
}

void GroupedHistoryItem.filtered(matching:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];

  v9 = sub_1BC7F21D4(a1, a2, v7);
  if (*(v9 + 16))
  {
    v11 = v9;

    sub_1BC7F80FC(&v11);

    v10 = v11;
    *a3 = v8;
    a3[1] = v10;
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1BC7F3314(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(*(*v4 + 16), v7))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BC7FAA54();
  v5 = *v4;
  v9 = (*(*v4 + 24) >> 1) - *(*v4 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_10;
    }

    v10 = *(v5 + 16);
    v11 = __OFADD__(v10, v7);
    v12 = v10 + v7;
    if (!v11)
    {
      *(v5 + 16) = v12;
LABEL_10:
      swift_unknownObjectRelease();
      if (v7 != v9)
      {
LABEL_11:
        *v4 = v5;
        return;
      }

LABEL_15:
      sub_1BC7FBE10(0, 0);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BC7F3440(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FA9FC();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3540(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAA54();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3640(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_6(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1BC7FAADC(v4, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3744()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81_1();
  MEMORY[0x1EEE9AC00](v15);
  v18 = v52 - v17;
  v19 = *(v4 + 16);
  v20 = *(*v0 + 16);
  if (__OFADD__(v20, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v64 = v16;
  v65 = v11;
  sub_1BC7FAADC(v20 + v19, 1, sub_1BC7F74F0);
  v1 = *v0;
  v11 = *(v7 + 72);
  v21 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  v63 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  sub_1BC8B1EE4(&v66);
  if (v22 < v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v22)
  {
    v25 = v1[2];
    v26 = __OFADD__(v25, v22);
    v27 = v25 + v22;
    if (v26)
    {
      __break(1u);
      goto LABEL_14;
    }

    v1[2] = v27;
  }

  if (v22 != v21)
  {
    sub_1BC7CAD38(v66);
LABEL_8:
    *v0 = v1;
    OUTLINED_FUNCTION_24();
    return;
  }

LABEL_11:
  v19 = v1[2];
  v23 = v67;
  v57 = v66;
  v24 = v68;
  v21 = v69;
  v55 = v67;
  v52[1] = v68;
  if (v70)
  {
    v28 = (v70 - 1) & v70;
    v29 = __clz(__rbit64(v70)) | (v69 << 6);
    v54 = (v68 + 64) >> 6;
LABEL_19:
    (*(v7 + 16))(v18, *(v57 + 48) + v29 * v11, v5);
    v32 = 0;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v18, v32, 1, v5);
    v56 = (v7 + 16);
    v52[2] = v7 + 8;
    v53 = (v7 + 32);
    v33 = v19;
    v58 = v2;
    v61 = v18;
    while (2)
    {
      v34 = v64;
      sub_1BC7FBDA0(v18, v64);
      if (__swift_getEnumTagSinglePayload(v34, 1, v5) != 1)
      {
        sub_1BC7C1744(v34, &qword_1EBCF56B8, &unk_1BC900B80);
        v35 = v1[3];
        v60 = v35 >> 1;
        if ((v35 >> 1) < v33 + 1)
        {
          v1 = sub_1BC7F74F0((v35 > 1), v33 + 1, 1, v1);
          v60 = v1[3] >> 1;
        }

        v62 = v33;
        v59 = v1 + v63;
        v36 = v53;
        while (1)
        {
          v37 = OUTLINED_FUNCTION_44_2();
          sub_1BC7FBDA0(v37, v38);
          if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
          {
            break;
          }

          v39 = *v36;
          v40 = v65;
          v41 = OUTLINED_FUNCTION_44_2();
          v39(v41);
          v42 = v5;
          v43 = v62;
          if (v62 >= v60)
          {
            v48 = OUTLINED_FUNCTION_44_2();
            v49(v48);
            v5 = v42;
            v2 = v58;
            v18 = v61;
            goto LABEL_39;
          }

          sub_1BC7C1744(v61, &qword_1EBCF56B8, &unk_1BC900B80);
          (v39)(&v59[v43 * v11], v40, v42);
          v5 = v42;
          if (!v28)
          {
            v18 = v61;
            v45 = v62;
            v2 = v58;
            while (1)
            {
              v44 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              if (v44 >= v54)
              {
                v28 = 0;
                v47 = 1;
                goto LABEL_35;
              }

              v28 = *(v55 + 8 * v44);
              ++v21;
              if (v28)
              {
                v21 = v44;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v44 = v21;
          v18 = v61;
          v45 = v62;
          v2 = v58;
LABEL_34:
          v46 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          (*v56)(v18, *(v57 + 48) + (v46 | (v44 << 6)) * v11, v5);
          v47 = 0;
LABEL_35:
          v62 = v45 + 1;
          __swift_storeEnumTagSinglePayload(v18, v47, 1, v5);
        }

        sub_1BC7C1744(v2, &qword_1EBCF56B8, &unk_1BC900B80);
LABEL_39:
        v33 = v62;
        v1[2] = v62;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1BC7C1744(v18, &qword_1EBCF56B8, &unk_1BC900B80);
    sub_1BC7CAD38(v57);
    v50 = OUTLINED_FUNCTION_62_0();
    sub_1BC7C1744(v50, v51, &unk_1BC900B80);
    goto LABEL_8;
  }

LABEL_14:
  v54 = (v24 + 64) >> 6;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= ((v24 + 64) >> 6))
    {
      v28 = 0;
      v32 = 1;
      goto LABEL_20;
    }

    v31 = *(v23 + 8 * v30);
    ++v21;
    if (v31)
    {
      v28 = (v31 - 1) & v31;
      v29 = __clz(__rbit64(v31)) | (v30 << 6);
      v21 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1BC7F3C50(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAADC(v4, 1, sub_1BC7F7600);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3D28()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v7 = type metadata accessor for HistoryItem(0);
  v8 = OUTLINED_FUNCTION_26(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v26 = v11 - v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v14 = 0;
  v15 = v0[1];
  v24 = *v0;
  v16 = *(v15 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  while (v16 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = *(v10 + 72);
    sub_1BC7FB138(v15 + v17 + v18 * v14, v1);
    if (v5(v1))
    {
      sub_1BC7FB19C(v1);
      ++v14;
    }

    else
    {
      sub_1BC7FBC68(v1, v26);
      v19 = v27;
      v29 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7DDA7C();
        v19 = v29;
      }

      v20 = *(v19 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v19 + 24) >> 1)
      {
        v28 = v20 + 1;
        v23 = *(v19 + 16);
        sub_1BC7DDA7C();
        v21 = v28;
        v20 = v23;
        v19 = v29;
      }

      ++v14;
      *(v19 + 16) = v21;
      v27 = v19;
      sub_1BC7FBC68(v26, v19 + v17 + v20 * v18);
    }
  }

  if (*(v27 + 16))
  {
    v29 = v27;

    sub_1BC7F80FC(&v29);

    v22 = v29;
    *v25 = v24;
    v25[1] = v22;
  }

  else
  {

    *v25 = 0;
    v25[1] = 0;
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7F3F64()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v62 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v61 = v9;
  OUTLINED_FUNCTION_19_6();
  v68 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v67 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v19);
  v22 = v56 - v21;
  v23 = *v0;
  v24 = v0[1];
  v25 = *(v3 + 16);
  if (v25)
  {
    v56[1] = v23;
    v57 = v5;
    v66 = v7;
    v26 = v20;

    v28 = sub_1BC7F4638(v27, sub_1BC7F4444, 0);
    v56[0] = 0;
    OUTLINED_FUNCTION_25_1();
    v30 = v3 + v29;
    v31 = *(v26 + 72);
    v59 = (v66 + 1);
    v60 = (v66 + 4);
    v65 = v31;
    v66 = (v32 + 16);
    v58 = v32;
    v63 = v1;
    v64 = (v32 + 8);
    do
    {
      sub_1BC7FB138(v30, v22);
      sub_1BC7FB138(v22, v1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v1;
        v34 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v66)(v13, &v33[v34], v68);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_18_4();
        v34 = v62;
        v36(v35, v1, v62);
        sub_1BC8F7314();
        v37 = OUTLINED_FUNCTION_18_4();
        v38(v37, v34);
      }

      sub_1BC7FB138(v22, v17);
      swift_isUniquelyReferenced_nonNull_native();
      v69 = v28;
      v39 = sub_1BC83C928();
      if (__OFADD__(*(v28 + 16), (v40 & 1) == 0))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        sub_1BC8F8B44();
        __break(1u);
        goto LABEL_23;
      }

      v34 = v39;
      v17 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5688, &unk_1BC900B48);
      if (sub_1BC8F8734())
      {
        v41 = sub_1BC83C928();
        if ((v17 & 1) != (v42 & 1))
        {
          goto LABEL_22;
        }

        v34 = v41;
      }

      v28 = v69;
      if (v17)
      {
        v43 = OUTLINED_FUNCTION_40_3();
        sub_1BC7FBCCC(v43, v44);
        (*v64)(v13, v68);
        sub_1BC7FB19C(v22);
      }

      else
      {
        *(v69 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v45 = v58;
        v46 = v68;
        (*(v58 + 16))(*(v28 + 48) + *(v58 + 72) * v34, v13, v68);
        v47 = OUTLINED_FUNCTION_40_3();
        sub_1BC7FBC68(v47, v48);
        (*(v45 + 8))(v13, v46);
        sub_1BC7FB19C(v22);
        v49 = *(v28 + 16);
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_21;
        }

        *(v28 + 16) = v51;
      }

      v30 += v34;
      --v25;
      v1 = v63;
    }

    while (v25);

    v69 = sub_1BC899A10(v52);

    v34 = v56[0];
    sub_1BC7F80FC(&v69);
    if (!v34)
    {

      v53 = v69;

      GroupedHistoryItem.init(people:items:)(v54, v53, v57);

      OUTLINED_FUNCTION_24();
      return;
    }

LABEL_23:

    __break(1u);
  }

  else
  {
    *v5 = v23;
    v5[1] = v24;

    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7F4444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7324();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC7FB138(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    v13 = sub_1BC8F7264();
    (*(*(v13 - 8) + 16))(a2, &v11[v12], v13);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BC8F7314();
    (*(v5 + 8))(v7, v4);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
  return sub_1BC7FB138(a1, a2 + *(v14 + 48));
}

uint64_t sub_1BC7F4638(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5690, &qword_1BC900B58);
    v7 = sub_1BC8F87D4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  sub_1BC7FAB54(a1, a2, a3, 1, &v10);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

void sub_1BC7F46E8()
{
  OUTLINED_FUNCTION_22();
  v39 = v2;
  v37 = v3;
  v4 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v38 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - v12);
  v14 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  sub_1BC7FB138(v37, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v13;
    v37 = v4;
    v23 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v24 = &v22[v23];
    v4 = v37;
    (*(v16 + 16))(v0, v24, v14);

    v25 = v38;
  }

  else
  {
    v37 = v14;
    v26 = v38;
    v27 = OUTLINED_FUNCTION_20_5();
    v28(v27);
    sub_1BC8F7304();
    v29 = OUTLINED_FUNCTION_31_3();
    v30(v29);
    v25 = v26;
    v14 = v37;
  }

  sub_1BC7FB138(v39, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v1;
    v32 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v16 + 16))(v20, &v31[v32], v14);
  }

  else
  {
    (*(v25 + 32))(v9, v1, v4);
    sub_1BC8F7304();
    v33 = OUTLINED_FUNCTION_31_3();
    v34(v33);
  }

  sub_1BC8F7184();
  v35 = *(v16 + 8);
  v35(v20, v14);
  v35(v0, v14);
  OUTLINED_FUNCTION_23();
}

void GroupedHistoryItem.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v61 = *MEMORY[0x1E69E9840];
  v3 = sub_1BC8F7C64();
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_19_6();
  v5 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v54 = v9;
  v10 = OUTLINED_FUNCTION_19_6();
  v11 = type metadata accessor for HistoryItem(v10);
  v12 = OUTLINED_FUNCTION_26(v11);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v16 = *v0;
  v17 = *(v0 + 8);
  sub_1BC8F6CB4();
  swift_allocObject();
  v18 = sub_1BC8F6CA4();
  v55 = v16;
  sub_1BC7F1A94(v16);
  if (!*(v17 + 16))
  {
    goto LABEL_14;
  }

  v20 = v19;
  v52 = v7;
  v53 = v5;
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  sub_1BC7FB138(v17 + v21, v2);
  v22 = sub_1BC7F501C(v2, v18);
  sub_1BC7FB19C(v2);
  v57 = v14;
  v50 = v18;
  v51 = v22;
  v59 = v16;
  v60 = v17;
  v49 = v17;
  v23 = GroupedHistoryItem.coalescedItems.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v48 = v20;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1BC7DD9E4(0, v24, 0);
    v25 = 0;
    v26 = v58;
    v56 = v23 + v21;
    while (v25 < *(v23 + 16))
    {
      v27 = v26;
      sub_1BC7FB138(v56 + *(v57 + 72) * v25, v1);
      v28 = sub_1BC7F501C(v1, v18);
      v29 = v23;
      sub_1BC7FB19C(v1);
      v26 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1BC7DD9E4(v30 > 1, v31 + 1, 1);
        v18 = v50;
        v26 = v27;
      }

      ++v25;
      *(v26 + 16) = v31 + 1;
      *(v26 + 8 * v31 + 32) = v28;
      v23 = v29;
      if (v24 == v25)
      {
        v32 = v26;

        v20 = v48;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 0x4449657571696E75;
  *(inited + 40) = 0xE800000000000000;
  v59 = v55;
  v60 = v49;
  GroupedHistoryItem.uniqueID.getter();
  v34 = sub_1BC8F7204();
  v36 = v35;
  (*(v52 + 8))(v54, v53);
  v37 = MEMORY[0x1E69E6158];
  *(inited + 48) = v34;
  *(inited + 56) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = 0x656C706F6570;
  *(inited + 88) = 0xE600000000000000;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *(inited + 96) = v20;
  *(inited + 120) = v38;
  strcpy((inited + 128), "mostRecentItem");
  *(inited + 143) = -18;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  *(inited + 144) = v51;
  *(inited + 168) = v39;
  strcpy((inited + 176), "coalescedItems");
  *(inited + 191) = -18;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B8, &qword_1BC900668);
  *(inited + 192) = v32;

  sub_1BC8F7AD4();
  v40 = objc_opt_self();
  v41 = sub_1BC8F7A94();
  v59 = 0;
  v42 = [v40 dataWithJSONObject:v41 options:1 error:&v59];

  v43 = v59;
  if (v42)
  {
    sub_1BC8F70D4();

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_69();
    v43 = sub_1BC8F7C34();
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_69();
      sub_1BC7D4C94(v45, v46);

      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
  }

  v47 = v43;
  sub_1BC8F6EA4();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BC7F501C(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F7324();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BC8F6C74();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  sub_1BC7FB138(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v11;
    *&v37 = *v11;
    type metadata accessor for Message(0);
    sub_1BC7FBE94(&unk_1EDC20DF8);
    v14 = sub_1BC8F6C94();
    if (v2)
    {

      return a2;
    }

    v18 = v14;
    v19 = v15;

    a2 = 0xE700000000000000;
    v20 = 0x6567617373654DLL;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1BC7FBE94(&unk_1EBCF56C8);
    v16 = sub_1BC8F6C94();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      return a2;
    }

    v18 = v16;
    v19 = v17;
    (*(v6 + 8))(v8, v5);
    a2 = 0xEA00000000006C6CLL;
    v20 = 0x6143746E65636552;
  }

  v21 = objc_opt_self();
  v22 = sub_1BC8F70C4();
  *&v37 = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:&v37];

  if (v23)
  {
    v24 = v37;
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
    if (swift_dynamicCast())
    {
      v25 = *&v36[0];
      *(&v38 + 1) = MEMORY[0x1E69E6158];
      *&v37 = v20;
      *(&v37 + 1) = a2;
      sub_1BC7F0E58(&v37, v36);
      swift_isUniquelyReferenced_nonNull_native();
      v35 = v25;
      sub_1BC83D5F8(v36, 0x4979726F74736968, 0xEF657079546D6574);
      a2 = v35;
      v26 = sub_1BC803CBC(0x6E61725477656E5FLL, 0xEE00747069726373);
      if (v27)
      {
        v28 = v26;
        swift_isUniquelyReferenced_nonNull_native();
        *&v36[0] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
        sub_1BC8F8734();
        a2 = *&v36[0];

        sub_1BC7F0E58((*(a2 + 56) + 32 * v28), &v37);
        sub_1BC8F8754();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      sub_1BC7C1744(&v37, &unk_1EBCF5E50, &qword_1BC8FE850);
      v30 = sub_1BC803CBC(0x656373656C616F63, 0xEE00736C6C614364);
      if (v31)
      {
        v32 = v30;
        swift_isUniquelyReferenced_nonNull_native();
        *&v36[0] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
        sub_1BC8F8734();
        a2 = *&v36[0];

        sub_1BC7F0E58((*(a2 + 56) + 32 * v32), &v37);
        sub_1BC8F8754();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      sub_1BC7C1744(&v37, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    else
    {

      a2 = sub_1BC8F7AD4();
    }

    sub_1BC7D4C94(v18, v19);
  }

  else
  {
    v29 = v37;

    sub_1BC8F6EA4();

    swift_willThrow();
    sub_1BC7D4C94(v18, v19);
  }

  return a2;
}

void static GroupedHistoryItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1BC7F5C04(*a1, *a2);
  if (v2)
  {

    sub_1BC7DB564();
  }
}

void sub_1BC7F56A4()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_4();
  v43 = v10;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if (v4 == v2 || *(v4 + 16) != *(v2 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v14 = 0;
    v15 = *(v4 + 56);
    v33 = v4 + 56;
    v16 = 1 << *(v4 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = (v16 + 63) >> 6;
    v39 = v7 + 32;
    v41 = v2 + 56;
    v42 = v7 + 16;
    v19 = (v7 + 8);
    v34 = v18;
    v35 = &v32 - v12;
    v36 = v7;
    v37 = v4;
    if ((v17 & v15) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_82_0();
        v38 = v21;
LABEL_13:
        v24 = *(v4 + 48);
        v40 = *(v7 + 72);
        v25 = *(v7 + 16);
        v25(v13, v24 + v40 * (v20 | (v14 << 6)), v5);
        (*(v7 + 32))(v43, v13, v5);
        OUTLINED_FUNCTION_21_6();
        sub_1BC7FBE94(&unk_1EBCF5678);
        v26 = sub_1BC8F7B54();
        v27 = v2;
        v28 = ~(-1 << *(v2 + 32));
        do
        {
          v29 = v26 & v28;
          if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
          {
            (*v19)(v43, v5);
            goto LABEL_20;
          }

          v25(v0, *(v27 + 48) + v29 * v40, v5);
          OUTLINED_FUNCTION_21_6();
          sub_1BC7FBE94(&unk_1EBCF6510);
          v30 = sub_1BC8F7BC4();
          v31 = *v19;
          (*v19)(v0, v5);
          v26 = v29 + 1;
        }

        while ((v30 & 1) == 0);
        v31(v43, v5);
        v2 = v27;
        v7 = v36;
        v4 = v37;
        v18 = v34;
        v13 = v35;
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_20;
      }

      ++v22;
      if (*(v33 + 8 * v14))
      {
        OUTLINED_FUNCTION_24_5();
        v38 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BC7F59BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = (v5 + 63) >> 6;
  v30 = a2 + 56;
  v26 = result;
  if ((v6 & *(result + 56)) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_82_0();
    v28 = v10;
LABEL_13:
    v13 = *(*(v8 + 48) + 8 * (v9 | (v3 << 6)));
    sub_1BC8F8C04();
    v14 = *(v13 + 16);
    MEMORY[0x1BFB2A020](v14);
    if (v14)
    {

      v15 = v13 + 40;
      do
      {

        sub_1BC8F7CD4();

        v15 += 16;
        --v14;
      }

      while (v14);
    }

    else
    {
    }

    v16 = sub_1BC8F8C64();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v29 = ~v17;
    v19 = *(v13 + 16);
    v20 = *(v2 + 48);
    while (1)
    {
      v21 = *(v20 + 8 * v18);
      if (*(v21 + 16) == v19)
      {
        break;
      }

LABEL_31:
      v18 = (v18 + 1) & v29;
      if (((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v19 && v21 != v13)
    {
      v22 = (v21 + 40);
      v23 = (v13 + 40);
      v24 = v19;
      do
      {
        v25 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
        if (!v25 && (sub_1BC8F8AA4() & 1) == 0)
        {
          goto LABEL_31;
        }

        v22 += 2;
        v23 += 2;
      }

      while (--v24);
    }

    result = v26;
    v2 = a2;
  }

  while (v28);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    ++v11;
    if (*(v4 + 8 * v3))
    {
      OUTLINED_FUNCTION_24_5();
      v28 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7F5C04(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v4 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;
      v9 = a2 + 56;
      v52 = a2 + 56;
      v46 = v8;
      v47 = a1 + 56;
      if (v7)
      {
LABEL_7:
        v10 = __clz(__rbit64(v7));
        v43 = (v7 - 1) & v7;
LABEL_13:
        v44 = v3;
        v45 = a1;
        v14 = (*(a1 + 48) + 32 * (v10 | (v3 << 6)));
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v56 = *v14;
        v57 = v15;
        v58 = v17;
        v59 = v18;
        sub_1BC8F8C04();

        v54 = v17;

        Person.hash(into:)(v55);
        v19 = sub_1BC8F8C64();
        v20 = -1 << *(v2 + 32);
        v21 = v19 & ~v20;
        if ((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          if ((v54 & 0x8000000000000000) != 0)
          {
            v23 = v54;
          }

          else
          {
            v23 = v54 & 0xFFFFFFFFFFFFFF8;
          }

          v24 = (v54 & 0xFFFFFFFFFFFFFF8) + 32;
          v25 = v54 >> 62;
          if (v54 >> 62)
          {
            v24 = v23;
          }

          v48 = v24;
          v50 = v16;
          v51 = v15;
          v49 = v22;
          do
          {
            v26 = (*(v2 + 48) + 32 * v21);
            v27 = v26[2];
            v28 = *v26 == v16 && v26[1] == v15;
            if (!v28 && (sub_1BC8F8AA4() & 1) == 0)
            {
              goto LABEL_53;
            }

            if (v27 >> 62)
            {
              v29 = sub_1BC8F8504();
              if (v25)
              {
LABEL_56:
                v30 = sub_1BC8F8504();
                goto LABEL_28;
              }
            }

            else
            {
              v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v25)
              {
                goto LABEL_56;
              }
            }

            v30 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
            if (v29 == v30)
            {
              if (v29)
              {
                v31 = v27 & 0xFFFFFFFFFFFFFF8;
                v32 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
                if (v27 < 0)
                {
                  v31 = v27;
                }

                if (v27 >> 62)
                {
                  v32 = v31;
                }

                if (v32 != v48)
                {
                  if (v29 < 0)
                  {
                    goto LABEL_66;
                  }

                  sub_1BC7FBE50();

                  v33 = 4;
                  while (1)
                  {
                    v34 = v33 - 4;
                    v35 = v33 - 3;
                    if (__OFADD__(v33 - 4, 1))
                    {
                      break;
                    }

                    if ((v27 & 0xC000000000000001) != 0)
                    {
                      v36 = MEMORY[0x1BFB29A00](v33 - 4, v27);
                    }

                    else
                    {
                      if (v34 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_63;
                      }

                      v36 = *(v27 + 8 * v33);
                    }

                    v37 = v36;
                    if ((v54 & 0xC000000000000001) != 0)
                    {
                      v38 = MEMORY[0x1BFB29A00](v33 - 4, v54);
                    }

                    else
                    {
                      if (v34 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_64;
                      }

                      v38 = *(v54 + 8 * v33);
                    }

                    v39 = v38;
                    v40 = sub_1BC8F83A4();

                    if ((v40 & 1) == 0)
                    {

                      v9 = v52;
                      v2 = a2;
                      v16 = v50;
                      v15 = v51;
                      v25 = v54 >> 62;
                      v22 = v49;
                      goto LABEL_53;
                    }

                    ++v33;
                    if (v35 == v29)
                    {
                      goto LABEL_50;
                    }
                  }

                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }
              }

LABEL_50:
              sub_1BC7F56A4();
              v42 = v41;

              v9 = v52;
              v2 = a2;
              v16 = v50;
              v15 = v51;
              v25 = v54 >> 62;
              v22 = v49;
              if (v42)
              {

                v3 = v44;
                a1 = v45;
                v8 = v46;
                v4 = v47;
                v7 = v43;
                if (v43)
                {
                  goto LABEL_7;
                }

                goto LABEL_8;
              }
            }

LABEL_53:
            v21 = (v21 + 1) & v22;
          }

          while (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        }
      }

      else
      {
LABEL_8:
        v11 = v3;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            return;
          }

          ++v11;
          if (*(v4 + 8 * v12))
          {
            OUTLINED_FUNCTION_24_5();
            v43 = v13;
            goto LABEL_13;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BC7F6044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC7F6104(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656C706F6570;
  }
}

uint64_t sub_1BC7F613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7F6044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7F6164(uint64_t a1)
{
  v2 = sub_1BC7FB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7F61A0(uint64_t a1)
{
  v2 = sub_1BC7FB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GroupedHistoryItem.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55C0, &unk_1BC900670);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_1BC7FB1F8();

  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
  v4 = sub_1BC7FB618(&unk_1EBCF55D0);
  OUTLINED_FUNCTION_41_5(v4);

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    v5 = sub_1BC7FB2A0(&unk_1EBCF55E8);
    OUTLINED_FUNCTION_41_5(v5);
  }

  v6 = OUTLINED_FUNCTION_62_0();
  v7(v6);
  OUTLINED_FUNCTION_23();
}

void GroupedHistoryItem.hash(into:)(void *a1)
{
  sub_1BC7FB4B0(a1, *v1);

  sub_1BC7DEDCC();
}

uint64_t GroupedHistoryItem.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC7FB4B0(__src, v1);
  sub_1BC7DEDCC();
  return sub_1BC8F8C64();
}

void GroupedHistoryItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55F8, &qword_1BC900688);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_73();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1BC7FB1F8();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
    v18 = sub_1BC7FB618(&unk_1EBCF5600);
    OUTLINED_FUNCTION_33_6(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    v19 = sub_1BC7FB2A0(&unk_1EBCF5610);
    OUTLINED_FUNCTION_33_6(v19);
    v20 = OUTLINED_FUNCTION_44_2();
    v21(v20);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7F66B0(uint64_t a1)
{
  v4 = *v1;
  sub_1BC8F8C04();
  GroupedHistoryItem.hash(into:)(v3);
  return sub_1BC8F8C64();
}

void Array<A>.mergingSortedValues(_:)()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v85 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v84 = v9;
  v10 = OUTLINED_FUNCTION_19_6();
  v92 = type metadata accessor for HistoryItem(v10);
  OUTLINED_FUNCTION_0();
  v87 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_4();
  v86 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47();
  v90 = v17;
  OUTLINED_FUNCTION_19_6();
  v18 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v25 = *(v3 + 16);
  v26 = *(v5 + 16);
  if (__OFADD__(v25, v26))
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    sub_1BC7F742C();
    v27 = v7;
    v28 = 0;
    v29 = 0;
    v93 = v30;
    v96 = v30;
    v83 = v27 + 32;
    v82 = v27 + 8;
    v81 = (v20 + 16);
    v75 = v5;
    v31 = v5 + 32;
    v78 = (v20 + 8);
    v74 = v3;
    v32 = v3 + 32;
    v33 = 0;
    v79 = v0;
    v34 = v90;
    v76 = v25;
    v73 = v31;
    v72 = v3 + 32;
LABEL_3:
    v88 = v28;
    v89 = v31 + 16 * v28;
    v35 = v32 + 16 * v29;
    v77 = v29;
    while (v33 < v25)
    {
      if (v28 >= v26)
      {
        v64 = sub_1BC7F2404(v29, v25, v74);
        sub_1BC7F3314(v64, v65, v66, v67);
        break;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v36 = *(v35 + 8);
      if (!*(v36 + 16))
      {
        goto LABEL_27;
      }

      v91 = v33;
      *&v95 = v35;
      v37 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      sub_1BC7FB138(v36 + v37, v34);
      v38 = OUTLINED_FUNCTION_20_5();
      sub_1BC7FB138(v38, v39);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7FB19C(v34);
        v40 = *v0;
        v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v81)(v24, &v40[v41], v18);
      }

      else
      {
        OUTLINED_FUNCTION_9_7();
        v42 = OUTLINED_FUNCTION_20_5();
        v43(v42);

        sub_1BC8F7304();
        OUTLINED_FUNCTION_8_10();
        v44 = OUTLINED_FUNCTION_20_5();
        v45(v44);
        v25 = v76;
        sub_1BC7FB19C(v34);
      }

      v46 = *(v89 + 8);
      v47 = v86;
      if (!*(v46 + 16))
      {
        goto LABEL_28;
      }

      sub_1BC7FB138(v46 + v37, v86);
      v48 = v80;
      sub_1BC7FB138(v47, v80);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7FB19C(v47);
        v49 = *v48;
        v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v81)(v1, &v49[v50], v18);
      }

      else
      {
        OUTLINED_FUNCTION_9_7();
        v51 = OUTLINED_FUNCTION_40();
        v52(v51);

        sub_1BC8F7304();
        OUTLINED_FUNCTION_8_10();
        v53 = OUTLINED_FUNCTION_40();
        v54(v53);
        sub_1BC7FB19C(v47);
      }

      v28 = sub_1BC8F7184();
      v55 = *v78;
      (*v78)(v1, v18);
      v55(v24, v18);
      v56 = *(v93 + 16);
      v34 = *(v93 + 24);
      v0 = (v34 >> 1);
      if ((v28 & 1) == 0)
      {
        v95 = *v89;

        if (v0 <= v56)
        {
          sub_1BC7F742C();
          v93 = v63;
        }

        OUTLINED_FUNCTION_30_4();
        *(v61 + 32) = v95;
        v96 = v62;
        ++v28;
        v29 = v33;
        v31 = v73;
        v32 = v72;
        goto LABEL_3;
      }

      v94 = *v95;

      if (v0 <= v56)
      {
        sub_1BC7F742C();
        v93 = v60;
      }

      OUTLINED_FUNCTION_30_4();
      *(v57 + 32) = v94;
      v96 = v58;
      v33 = v59 + 1;
      v35 = v95 + 16;
      v29 = v77;
    }

    if (v28 < v26)
    {
      v68 = sub_1BC7F2404(v28, v26, v75);
      sub_1BC7F3314(v68, v69, v70, v71);
    }

    OUTLINED_FUNCTION_24();
  }
}

void Array<A>.binarySearchIndex(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = a3 + 32;
    v7 = *(a3 + 16);
    while (1)
    {
      v8 = v5 + v7;
      if (__OFADD__(v5, v7))
      {
        break;
      }

      v9 = v8 / 2;
      if (v8 < -1 || v9 >= v3)
      {
        goto LABEL_16;
      }

      v12 = *(v6 + 16 * v9);

      v11 = a1(&v12);

      if (v11)
      {
        v7 = v9;
      }

      else
      {
        v5 = v9 + 1;
      }

      if (v5 >= v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_1BC7F6FCC()
{
  OUTLINED_FUNCTION_42_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_2();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5668, &qword_1BC900B18);
      v8 = OUTLINED_FUNCTION_67(v7);
      _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_26_3();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD5E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v8 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BC7F7088()
{
  OUTLINED_FUNCTION_42_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_2();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FA0, &qword_1BC8FC750);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD61C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_57_0();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BC7F7144()
{
  OUTLINED_FUNCTION_60_1();
  if (v2)
  {
    OUTLINED_FUNCTION_59_0();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_36_6();
  sub_1BC7F7908(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_72_0();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v12 = OUTLINED_FUNCTION_54_0(v11);
    sub_1BC7DD664(v12, v13, v14);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void sub_1BC7F726C()
{
  OUTLINED_FUNCTION_60_1();
  if (v2)
  {
    OUTLINED_FUNCTION_59_0();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_35_4();
  sub_1BC7F7908(v6, v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_72_0();
  type metadata accessor for HistoryItem(v11);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_54_0(v12);
    sub_1BC7DD604(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void sub_1BC7F7334()
{
  OUTLINED_FUNCTION_42_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_2();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5670, &unk_1BC900B20);
      v8 = OUTLINED_FUNCTION_67(v7);
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v2;
      v8[3] = 2 * ((v9 - 32) / 32);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD7B4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_57_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BC7F742C()
{
  OUTLINED_FUNCTION_80_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v13 = OUTLINED_FUNCTION_67(v12);
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_26_3();
      v13[2] = v10;
      v13[3] = v14;
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v13 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_83();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1BC7F74F0(void *result, uint64_t a2, char a3, uint64_t a4)
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
  v10 = sub_1BC7F7908(v9, a2, &qword_1EBCF56B0, &unk_1BC9083A0, MEMORY[0x1E6993530]);
  v11 = *(sub_1BC8F73D4() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BC7DD7D4(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BC7F7600()
{
  OUTLINED_FUNCTION_42_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_2();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD7EC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
    OUTLINED_FUNCTION_57_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BC7F76E8()
{
  OUTLINED_FUNCTION_60_1();
  if (v3)
  {
    OUTLINED_FUNCTION_59_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1BC7F7908(*(v0 + 16), v4, &qword_1EBCF5660, &qword_1BC900B10, MEMORY[0x1E6968160]);
  OUTLINED_FUNCTION_72_0();
  sub_1BC8F6D24();
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_54_0(v7);
    sub_1BC7DD814(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void *sub_1BC7F7810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = OUTLINED_FUNCTION_67(v6);
  _swift_stdlib_malloc_size(v7);
  OUTLINED_FUNCTION_26_3();
  v7[2] = a1;
  v7[3] = v8;
  return v7;
}

void *sub_1BC7F7898(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v5 = OUTLINED_FUNCTION_67(v4);
  _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_58_0();
  v5[2] = a1;
  v5[3] = (2 * v6) | 1;
  return v5;
}

void *sub_1BC7F7908(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_26(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7F79FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HistoryItem(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC8F7264();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5690, &qword_1BC900B58);
  v43 = v4;
  result = sub_1BC8F87C4();
  v12 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v38 = v2;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = (v8 + 16);
  v40 = v8;
  v44 = (v8 + 32);
  v19 = result + 64;
  v41 = v10;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_1BC8D83A8(0, (v37 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 48);
    v45 = *(v8 + 72);
    v25 = v24 + v45 * v23;
    if (v43)
    {
      (*v44)(v46, v25, v7);
      v26 = *(v10 + 56);
      v27 = *(v42 + 72);
      sub_1BC7FBC68(v26 + v27 * v23, v47);
    }

    else
    {
      (*v39)(v46, v25, v7);
      v28 = *(v10 + 56);
      v27 = *(v42 + 72);
      sub_1BC7FB138(v28 + v27 * v23, v47);
    }

    sub_1BC7FBE94(&unk_1EDC20600);
    result = sub_1BC8F7B54();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    (*v44)((*(v12 + 48) + v45 * v32), v46, v7);
    result = sub_1BC7FBC68(v47, *(v12 + 56) + v27 * v32);
    ++*(v12 + 16);
    v8 = v40;
    v10 = v41;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v19 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1BC7F7E5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_1BC7F7908(v5, 0, &qword_1EBCF4F58, &qword_1BC8FC700, type metadata accessor for HistoryItem);
    if (v4 != a3)
    {
      type metadata accessor for HistoryItem(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void *sub_1BC7F7F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BC7F7810(*(a1 + 16), 0, &qword_1EBCF4FC0, &unk_1BC8FC760);
  sub_1BC8B1C2C(&v8, (v3 + 4), v1, a1);
  v5 = v4;

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_35_1();
  sub_1BC7CAD38(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BC7F8024(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC070();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1BC7F81A0(v5);
  *a1 = v2;
}

unint64_t sub_1BC7F8090()
{
  result = qword_1EBCF55A0;
  if (!qword_1EBCF55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55A0);
  }

  return result;
}

void sub_1BC7F80FC(uint64_t *a1)
{
  v2 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_25(v2);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC088();
    v3 = v4;
  }

  sub_1BC7F8294();
  *a1 = v3;
}

void sub_1BC7F81A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BC8F8A44();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC7F88DC(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BC7F8814(0, v2, 1, a1);
  }
}

void sub_1BC7F8294()
{
  OUTLINED_FUNCTION_22();
  v62 = v0;
  v3 = v2;
  v78 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v75 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_4();
  v77 = v6;
  OUTLINED_FUNCTION_19_6();
  v7 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v74 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_47();
  v84 = v14;
  v15 = OUTLINED_FUNCTION_19_6();
  v16 = type metadata accessor for HistoryItem(v15);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_0();
  v69 = v20 - v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_56_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v61 - v25);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v79 = v27;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_47();
  v81 = v29;
  v30 = v3[1];
  if (sub_1BC8F8A44() >= v30)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30 >= 2)
      {
        v76 = v12;
        v80 = v7;
        v32 = *v3;
        v33 = *(v18 + 72);
        v71 = v75 + 1;
        v72 = (v75 + 4);
        v70 = (v74 + 2);
        v34 = (v74 + 1);
        v67 = -v33;
        v68 = v32;
        v35 = -1;
        v36 = 1;
        v74 = v26;
        v75 = v1;
        v37 = v79;
        v73 = v33;
        v63 = v30;
        do
        {
          v65 = v36;
          v66 = v35;
          v38 = v35;
          v64 = v32;
          do
          {
            v39 = v81;
            sub_1BC7FB138(v32 + v33, v81);
            v40 = OUTLINED_FUNCTION_69();
            sub_1BC7FB138(v40, v41);
            sub_1BC7FB138(v39, v26);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v42 = *v26;
              v43 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
              OUTLINED_FUNCTION_13();
              swift_beginAccess();
              (*v70)(v84, &v42[v43], v80);
            }

            else
            {
              v44 = v26;
              v45 = v78;
              (*v72)(v77, v44, v78);
              sub_1BC8F7304();
              v46 = OUTLINED_FUNCTION_18_4();
              v47(v46, v45);
            }

            sub_1BC7FB138(v37, v1);
            v48 = v16;
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v49 = *v1;
              v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
              OUTLINED_FUNCTION_13();
              swift_beginAccess();
              v51 = v76;
              v52 = v80;
              (*v70)(v76, &v49[v50], v80);
            }

            else
            {
              v53 = v78;
              (*v72)(v77, v1, v78);
              v51 = v76;
              sub_1BC8F7304();
              v54 = OUTLINED_FUNCTION_18_4();
              v55(v54, v53);
              v52 = v80;
            }

            v56 = sub_1BC8F7184();
            v57 = *v34;
            (*v34)(v51, v52);
            v57(v84, v52);
            v37 = v79;
            sub_1BC7FB19C(v79);
            sub_1BC7FB19C(v81);
            v16 = v48;
            v26 = v74;
            v1 = v75;
            v33 = v73;
            if ((v56 & 1) == 0)
            {
              break;
            }

            if (!v68)
            {
              goto LABEL_26;
            }

            v58 = v69;
            sub_1BC7FBC68(v32 + v73, v69);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BC7FBC68(v58, v32);
            v32 += v67;
          }

          while (!__CFADD__(v38++, 1));
          v36 = v65 + 1;
          v32 = v64 + v33;
          v35 = v66 - 1;
        }

        while (v65 + 1 != v63);
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (v30 >= -1)
    {
      if (v30 <= 1)
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        OUTLINED_FUNCTION_31_3();
        v31 = sub_1BC8F7EB4();
        *(v31 + 16) = v30 / 2;
      }

      OUTLINED_FUNCTION_25_1();
      v82 = v31 + v60;
      v83 = v30 / 2;
      sub_1BC7F8DE4();
      *(v31 + 16) = 0;

LABEL_23:
      OUTLINED_FUNCTION_23();
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BC7F8814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1BC8F8AA4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC7F88DC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1BC8F8AA4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1BC8F8AA4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1BC8F8AA4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F6FCC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1BC7F6FCC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1BC7F9DA8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1BC7F9C7C(&v91, *a1, a3);
LABEL_102:
}

void sub_1BC7F8DE4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75();
  v208 = v1;
  v3 = v2;
  v207 = v4;
  v235 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_4();
  v234 = v8;
  OUTLINED_FUNCTION_19_6();
  v9 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_4();
  v240 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_4();
  v233 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_47();
  v220 = v18;
  v19 = OUTLINED_FUNCTION_19_6();
  v20 = type metadata accessor for HistoryItem(v19);
  OUTLINED_FUNCTION_0();
  v217 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_4();
  v241 = v27;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_4();
  v239 = v29;
  OUTLINED_FUNCTION_17_0();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = (&v203 - v32);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_81_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_47();
  v218 = v3;
  v40 = v3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_116:
    if (!*v207)
    {
      goto LABEL_158;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_118;
    }

    goto LABEL_152;
  }

  v41 = 0;
  v232 = v6 + 32;
  v231 = v6 + 8;
  v230 = v11 + 16;
  v229 = (v11 + 8);
  v42 = MEMORY[0x1E69E7CC0];
  v236 = v20;
  v237 = v9;
  v43 = v233;
  v221 = v33;
  v215 = v39;
  v205 = v38;
  while (1)
  {
    v44 = v41++;
    v212 = v44;
    if (v41 < v40)
    {
      v224 = v40;
      v206 = v42;
      v45 = v44;
      v46 = v38;
      OUTLINED_FUNCTION_48_2();
      v48 = *v47;
      v42 = *(v217 + 72);
      v238 = *v47 + v42 * v41;
      sub_1BC7FB138(v238, v46);
      v49 = v204;
      sub_1BC7FB138(v48 + v42 * v45, v204);
      OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_74();
      sub_1BC7F46E8();
      LODWORD(v216) = v50;
      OUTLINED_FUNCTION_75();
      if (v0)
      {
        sub_1BC7FB19C(v49);
        sub_1BC7FB19C(v46);
LABEL_126:

        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_23();
        return;
      }

      sub_1BC7FB19C(v49);
      sub_1BC7FB19C(v46);
      v51 = v45 + 2;
      v52 = v48 + v42 * (v45 + 2);
      v53 = v215;
      v225 = v42;
      v54 = v224;
      v55 = v238;
      while (1)
      {
        v56 = v51;
        if (v41 + 1 >= v54)
        {
          break;
        }

        v222 = v41;
        v57 = v219;
        sub_1BC7FB138(v52, v219);
        v238 = v55;
        sub_1BC7FB138(v55, v223);
        sub_1BC7FB138(v57, v53);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v58 = *v53;
          v59 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_8_10();
          v42 = v237;
          v60(v220, &v58[v59], v237);
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v61 = v234;
          v62 = OUTLINED_FUNCTION_20_5();
          v63 = v235;
          v64(v62);
          sub_1BC8F7304();
          OUTLINED_FUNCTION_9_7();
          v65 = v61;
          v33 = v221;
          v66(v65, v63);
          v42 = v237;
        }

        sub_1BC7FB138(v223, v33);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v68 = v222;
        if (EnumCaseMultiPayload == 1)
        {
          v69 = *v33;
          v70 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_8_10();
          v71(v43, &v69[v70], v42);
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v72(v234, v33, v235);
          sub_1BC8F7304();
          OUTLINED_FUNCTION_9_7();
          v73 = OUTLINED_FUNCTION_20_5();
          v74(v73);
        }

        v75 = v220;
        OUTLINED_FUNCTION_31_3();
        v76 = sub_1BC8F7184() & 1;
        v77 = *v229;
        (*v229)(v43, v42);
        v77(v75, v42);
        sub_1BC7FB19C(v223);
        sub_1BC7FB19C(v219);
        v52 += v225;
        v55 = v238 + v225;
        v41 = v68 + 1;
        v51 = v56 + 1;
        v78 = (v216 & 1) == v76;
        v33 = v221;
        v53 = v215;
        v54 = v224;
        if (!v78)
        {
          goto LABEL_17;
        }
      }

      v41 = v54;
LABEL_17:
      if (v216)
      {
        OUTLINED_FUNCTION_78_0();
        if (v41 < v80)
        {
          goto LABEL_151;
        }

        if (v80 >= v41)
        {
          OUTLINED_FUNCTION_76_0();
        }

        else
        {
          if (v79 >= v56)
          {
            v82 = v56;
          }

          else
          {
            v82 = v79;
          }

          v83 = v81 * (v82 - 1);
          v84 = v81 * v82;
          v42 = v41;
          v85 = v80 * v81;
          v222 = v42;
          v86 = v80;
          do
          {
            if (v86 != --v42)
            {
              OUTLINED_FUNCTION_48_2();
              v88 = *v87;
              if (!*v87)
              {
                goto LABEL_156;
              }

              sub_1BC7FBC68(v88 + v85, v211);
              v89 = v85 < v83 || v88 + v85 >= (v88 + v84);
              if (v89)
              {
                OUTLINED_FUNCTION_77_0();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v85 != v83)
              {
                OUTLINED_FUNCTION_77_0();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BC7FBC68(v211, v88 + v83);
              OUTLINED_FUNCTION_78_0();
              v81 = v225;
            }

            ++v86;
            v83 -= v81;
            v84 -= v81;
            v85 += v81;
          }

          while (v86 < v42);
          OUTLINED_FUNCTION_76_0();
          v41 = v222;
        }
      }

      else
      {
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_78_0();
      }
    }

    OUTLINED_FUNCTION_48_2();
    v93 = *(v92 + 8);
    if (v41 < v93)
    {
      if (__OFSUB__(v41, v91))
      {
        goto LABEL_148;
      }

      if (v41 - v91 < v90)
      {
        break;
      }
    }

LABEL_63:
    if (v41 < v91)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BC7F6FCC();
      v42 = v184;
    }

    v130 = *(v42 + 16);
    v131 = v130 + 1;
    if (v130 >= *(v42 + 24) >> 1)
    {
      sub_1BC7F6FCC();
      v42 = v185;
    }

    *(v42 + 16) = v131;
    v132 = v42 + 32;
    v133 = (v42 + 32 + 16 * v130);
    *v133 = v212;
    v133[1] = v41;
    v238 = *v207;
    if (!v238)
    {
      goto LABEL_157;
    }

    if (v130)
    {
      while (1)
      {
        v134 = v131 - 1;
        v135 = (v132 + 16 * (v131 - 1));
        v136 = (v42 + 16 * v131);
        if (v131 >= 4)
        {
          break;
        }

        if (v131 == 3)
        {
          v137 = *(v42 + 32);
          v138 = *(v42 + 40);
          v147 = __OFSUB__(v138, v137);
          v139 = v138 - v137;
          v140 = v147;
LABEL_83:
          if (v140)
          {
            goto LABEL_134;
          }

          v152 = *v136;
          v151 = v136[1];
          v153 = __OFSUB__(v151, v152);
          v154 = v151 - v152;
          v155 = v153;
          if (v153)
          {
            goto LABEL_137;
          }

          v156 = v135[1];
          v157 = v156 - *v135;
          if (__OFSUB__(v156, *v135))
          {
            goto LABEL_140;
          }

          if (__OFADD__(v154, v157))
          {
            goto LABEL_142;
          }

          if (v154 + v157 >= v139)
          {
            if (v139 < v157)
            {
              v134 = v131 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v131 < 2)
        {
          goto LABEL_136;
        }

        v159 = *v136;
        v158 = v136[1];
        v147 = __OFSUB__(v158, v159);
        v154 = v158 - v159;
        v155 = v147;
LABEL_98:
        if (v155)
        {
          goto LABEL_139;
        }

        v161 = *v135;
        v160 = v135[1];
        v147 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v147)
        {
          goto LABEL_141;
        }

        if (v162 < v154)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v134 - 1 >= v131)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*v218)
        {
          goto LABEL_154;
        }

        v166 = v41;
        v167 = v42;
        v168 = (v132 + 16 * (v134 - 1));
        v169 = *v168;
        v170 = v132;
        v171 = v134;
        v172 = v132 + 16 * v134;
        v173 = *(v172 + 8);
        OUTLINED_FUNCTION_42_2(*v218);
        OUTLINED_FUNCTION_74();
        sub_1BC7F9F4C(v174, v175, v176, v177, v178, v179, v180, v181, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
        OUTLINED_FUNCTION_75();
        if (v0)
        {
          goto LABEL_126;
        }

        if (v173 < v169)
        {
          goto LABEL_129;
        }

        v182 = *(v167 + 16);
        if (v171 > v182)
        {
          goto LABEL_130;
        }

        *v168 = v169;
        v168[1] = v173;
        if (v171 >= v182)
        {
          goto LABEL_131;
        }

        v131 = v182 - 1;
        sub_1BC8D950C((v172 + 16), v182 - 1 - v171, v172);
        v42 = v167;
        *(v167 + 16) = v182 - 1;
        v33 = v221;
        v41 = v166;
        v132 = v170;
        v43 = v233;
        if (v182 <= 2)
        {
          goto LABEL_112;
        }
      }

      v141 = v132 + 16 * v131;
      v142 = *(v141 - 64);
      v143 = *(v141 - 56);
      v147 = __OFSUB__(v143, v142);
      v144 = v143 - v142;
      if (v147)
      {
        goto LABEL_132;
      }

      v146 = *(v141 - 48);
      v145 = *(v141 - 40);
      v147 = __OFSUB__(v145, v146);
      v139 = v145 - v146;
      v140 = v147;
      if (v147)
      {
        goto LABEL_133;
      }

      v148 = v136[1];
      v149 = v148 - *v136;
      if (__OFSUB__(v148, *v136))
      {
        goto LABEL_135;
      }

      v147 = __OFADD__(v139, v149);
      v150 = v139 + v149;
      if (v147)
      {
        goto LABEL_138;
      }

      if (v150 >= v144)
      {
        v164 = *v135;
        v163 = v135[1];
        v147 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v147)
        {
          goto LABEL_146;
        }

        if (v139 < v165)
        {
          v134 = v131 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    OUTLINED_FUNCTION_48_2();
    v40 = *(v183 + 8);
    v38 = v205;
    if (v41 >= v40)
    {
      goto LABEL_116;
    }
  }

  v94 = v91 + v90;
  if (__OFADD__(v91, v90))
  {
    goto LABEL_149;
  }

  if (v94 >= v93)
  {
    v94 = v93;
  }

  if (v94 < v91)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    v42 = sub_1BC8D94F4();
LABEL_118:
    v186 = (v42 + 16);
    for (i = *(v42 + 16); i >= 2; *v186 = i)
    {
      OUTLINED_FUNCTION_48_2();
      v189 = *v188;
      if (!v189)
      {
        goto LABEL_155;
      }

      v190 = (v42 + 16 * i);
      v191 = *v190;
      v192 = &v186[2 * i];
      v193 = *(v192 + 1);
      OUTLINED_FUNCTION_42_2(v189);
      OUTLINED_FUNCTION_74();
      sub_1BC7F9F4C(v194, v195, v196, v197, v198, v199, v200, v201, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
      OUTLINED_FUNCTION_75();
      if (v0)
      {
        break;
      }

      if (v193 < v191)
      {
        goto LABEL_143;
      }

      if (i - 2 >= *v186)
      {
        goto LABEL_144;
      }

      *v190 = v191;
      v190[1] = v193;
      v202 = *v186 - i;
      if (*v186 < i)
      {
        goto LABEL_145;
      }

      i = *v186 - 1;
      sub_1BC8D950C(v192 + 16, v202, v192);
    }

    goto LABEL_126;
  }

  if (v41 == v94)
  {
    goto LABEL_63;
  }

  v206 = v42;
  OUTLINED_FUNCTION_48_2();
  v96 = *v95;
  v97 = *(v217 + 72);
  v98 = *v95 + v97 * (v41 - 1);
  v224 = -v97;
  v100 = v99 - v41;
  v225 = v96;
  v209 = v97;
  v42 = v96 + v41 * v97;
  v101 = v203;
  v210 = v102;
LABEL_48:
  v222 = v41;
  v213 = v42;
  v214 = v100;
  v103 = v100;
  v216 = v98;
  while (1)
  {
    v238 = v103;
    v104 = v239;
    sub_1BC7FB138(v42, v239);
    sub_1BC7FB138(v98, v241);
    v105 = v104;
    v106 = v227;
    sub_1BC7FB138(v105, v227);
    OUTLINED_FUNCTION_73();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v107 = *v106;
      v108 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      OUTLINED_FUNCTION_8_10();
      v109(v240, &v107[v108], v237);
    }

    else
    {
      OUTLINED_FUNCTION_79_0();
      v110 = OUTLINED_FUNCTION_31_3();
      v111(v110);
      sub_1BC8F7304();
      OUTLINED_FUNCTION_9_7();
      v112 = OUTLINED_FUNCTION_20_5();
      v113(v112);
    }

    v114 = v228;
    sub_1BC7FB138(v241, v228);
    OUTLINED_FUNCTION_73();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v115 = *v114;
      v116 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      OUTLINED_FUNCTION_8_10();
      v117 = v101;
      v118 = v237;
      v119(v101, &v115[v116], v237);
    }

    else
    {
      OUTLINED_FUNCTION_79_0();
      v120 = OUTLINED_FUNCTION_31_3();
      v121(v120);
      sub_1BC8F7304();
      OUTLINED_FUNCTION_9_7();
      v122 = OUTLINED_FUNCTION_20_5();
      v123(v122);
      v117 = v101;
      v118 = v237;
    }

    v124 = v240;
    v125 = sub_1BC8F7184();
    v126 = *v229;
    v101 = v117;
    v127 = OUTLINED_FUNCTION_62_0();
    (v126)(v127);
    v126(v124, v118);
    sub_1BC7FB19C(v241);
    sub_1BC7FB19C(v239);
    if ((v125 & 1) == 0)
    {
      v43 = v233;
LABEL_61:
      v41 = v222 + 1;
      v98 = v216 + v209;
      v100 = v214 - 1;
      v42 = v213 + v209;
      if (v222 + 1 == v210)
      {
        v41 = v210;
        OUTLINED_FUNCTION_76_0();
        v33 = v221;
        OUTLINED_FUNCTION_78_0();
        goto LABEL_63;
      }

      goto LABEL_48;
    }

    v43 = v233;
    v128 = v238;
    if (!v225)
    {
      break;
    }

    v129 = v226;
    sub_1BC7FBC68(v42, v226);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BC7FBC68(v129, v98);
    v98 += v224;
    v42 += v224;
    v89 = __CFADD__(v128, 1);
    v103 = v128 + 1;
    if (v89)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
}