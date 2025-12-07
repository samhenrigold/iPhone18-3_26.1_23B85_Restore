uint64_t sub_1BC7D40E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BC8F8C04();
  a4(v8, v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D4138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D3F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D4160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D408C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D4188(uint64_t a1)
{
  v2 = sub_1BC7D4334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D41C4(uint64_t a1)
{
  v2 = sub_1BC7D4334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessageStoreBadgeCounts.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_22();
  a18 = v23;
  a19 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DA0, &qword_1BC8FBDD0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_1();
  v34 = *(v19 + 16);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v31 = sub_1BC7D4334();
  OUTLINED_FUNCTION_18_0(&type metadata for MessageStoreBadgeCounts.CodingKeys, v32, v31);
  BYTE7(a10) = 0;
  OUTLINED_FUNCTION_9_2(v22, &a10 + 7);
  if (!v20)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_9_2(v33, &a10 + 6);
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_9_2(v34, &a10 + 5);
  }

  (*(v29 + 8))(v21, v27);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7D4334()
{
  result = qword_1EDC20508;
  if (!qword_1EDC20508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20508);
  }

  return result;
}

uint64_t MessageStoreBadgeCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB2A020](*v0);
  MEMORY[0x1BFB2A020](v1);
  return MEMORY[0x1BFB2A020](v2);
}

uint64_t MessageStoreBadgeCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

void MessageStoreBadgeCounts.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_22();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DA8, &qword_1BC8FBDD8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v26);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1BC7D4334();
  sub_1BC8F8C84();
  if (!v19)
  {
    BYTE7(a10) = 0;
    v27 = OUTLINED_FUNCTION_8_0(&a10 + 7);
    OUTLINED_FUNCTION_17_2();
    v28 = OUTLINED_FUNCTION_8_0(&a10 + 6);
    OUTLINED_FUNCTION_12_1();
    v29 = OUTLINED_FUNCTION_8_0(&a10 + 5);
    v30 = OUTLINED_FUNCTION_4_5();
    v31(v30);
    *v25 = v27;
    v25[1] = v28;
    v25[2] = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7D45B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v4);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D4620()
{
  result = qword_1EBCF4DB0;
  if (!qword_1EBCF4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DB0);
  }

  return result;
}

unint64_t sub_1BC7D4678()
{
  result = qword_1EBCF4DB8;
  if (!qword_1EBCF4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DB8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D471C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1BC7D4768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageStoreBadgeCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BadgeCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BadgeCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7D4A34()
{
  result = qword_1EBCF4DC0;
  if (!qword_1EBCF4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DC0);
  }

  return result;
}

unint64_t sub_1BC7D4A8C()
{
  result = qword_1EBCF4DC8;
  if (!qword_1EBCF4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DC8);
  }

  return result;
}

unint64_t sub_1BC7D4AE4()
{
  result = qword_1EDC204F8;
  if (!qword_1EDC204F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC204F8);
  }

  return result;
}

unint64_t sub_1BC7D4B3C()
{
  result = qword_1EDC20500;
  if (!qword_1EDC20500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20500);
  }

  return result;
}

unint64_t sub_1BC7D4B94()
{
  result = qword_1EDC203E8;
  if (!qword_1EDC203E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203E8);
  }

  return result;
}

unint64_t sub_1BC7D4BEC()
{
  result = qword_1EDC203F0;
  if (!qword_1EDC203F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203F0);
  }

  return result;
}

unint64_t sub_1BC7D4C40()
{
  result = qword_1EDC1F588;
  if (!qword_1EDC1F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F588);
  }

  return result;
}

uint64_t sub_1BC7D4C94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1BC7D4CEC()
{
  result = qword_1EDC203E0;
  if (!qword_1EDC203E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203E0);
  }

  return result;
}

void sub_1BC7D4D50(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 24);
  *a1 = *(v3 + 8);
  a1[1] = v4;
  a1[2] = *(v3 + 40);
  *(a1 + 41) = *(v3 + 49);

  os_unfair_lock_unlock(v3);
}

void sub_1BC7D4DB4(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
  os_unfair_lock_lock(v3);
  v4 = a1[1];
  *(v3 + 8) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 40) = a1[2];
  *(v3 + 49) = *(a1 + 41);

  os_unfair_lock_unlock(v3);
}

uint64_t BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (!a3)
  {
    [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
    v7 = a3;
    [v8 init];
    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = a3;
LABEL_6:
  swift_unknownObjectRetain();
  TUClarityEnabled();
  v9 = [objc_opt_self() tu_defaults];
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  sub_1BC7D4FB8(0xD000000000000012, 0x80000001BC90B6C0);
  sub_1BC7D4FB8(0xD000000000000015, 0x80000001BC90B6E0);
  v10 = swift_allocObject();
  sub_1BC7D502C();

  swift_unknownObjectRelease();
  return v10;
}

id sub_1BC7D4FB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F7BE4();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

void sub_1BC7D502C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v101 = v4;
  v112 = v5;
  LODWORD(v99) = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_0();
  v96 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_1(&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_1(&v89 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v22 = OUTLINED_FUNCTION_25(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1(&v89 - v27);
  v97 = type metadata accessor for AsyncSerialQueue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18_1(v30 - v29);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  OUTLINED_FUNCTION_0();
  v107 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_0();
  v100 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_1(&v89 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v38 = OUTLINED_FUNCTION_25(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_20_0();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v89 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  OUTLINED_FUNCTION_25(v45);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_1(&v89 - v47);
  v48 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_stateHandle;
  *v48 = 0;
  *(v48 + 8) = 1;
  if (!v14)
  {
    v14 = sub_1BC7D0410([v10 deviceType], v8);
  }

  v104 = v25;
  *(v1 + 16) = v14;
  *(v1 + 24) = v12;
  v49 = v12;
  v102 = v10;
  *(v1 + 32) = v10;
  *(v1 + 40) = v8;
  *(v1 + 48) = v99 & 1;
  v50 = v101;
  *(v1 + 56) = v112;
  *(v1 + 64) = v50;
  *(v1 + 72) = v3;
  v51 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v51);
  v111 = v8;
  v110 = v3;
  v93 = v44;
  v90 = v51;
  if (v3)
  {
    v89 = sub_1BC7D96C8();
  }

  else
  {
    v89 = 0;
  }

  v52 = v107;
  v53 = v106;
  v54 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x1E69E8650], v108);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  v56 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v55);
  v57 = (*(v52 + 16))(v100, v53, v54);
  MEMORY[0x1EEE9AC00](v57);
  *(&v89 - 2) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  v95 = v110;
  v101 = v49;
  v102 = v102;
  swift_unknownObjectRetain();
  v112 = v112;
  v99 = v50;
  v58 = v103;
  sub_1BC8F8014();
  v59 = v104;
  sub_1BC7D9558(v56, v104, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  if (__swift_getEnumTagSinglePayload(v59, 1, v55) == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10();
    (*(v60 + 32))(v105, v59, v55);
    v61 = v96;
    v62 = v92;
    v63 = v98;
    (*(v96 + 16))(v92, v58, v98);
    v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v65 = swift_allocObject();
    (*(v61 + 32))(v65 + v64, v62, v63);
    v66 = v93;
    sub_1BC7D9558(v93, v41, &qword_1EBCF63D0, &qword_1BC902140);
    v67 = v90;
    v68 = v58;
    if (__swift_getEnumTagSinglePayload(v41, 1, v90) == 1)
    {
      sub_1BC7C1744(v41, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10();
      (*(v69 + 8))(v41, v67);
    }

    v70 = v110;
    v71 = v95;
    v72 = swift_allocObject();
    *(v72 + 16) = &unk_1BC8FC3D8;
    *(v72 + 24) = v65;
    swift_unknownObjectRetain();
    if (v70 != 1)
    {
      v114 = 6;
      v115 = 0;
      v116 = v70;
      v117 = v89;
    }

    swift_task_create();

    (*(v61 + 8))(v68, v63);
    (*(v107 + 8))(v106, v108);
    sub_1BC7C1744(v66, &qword_1EBCF63D0, &qword_1BC902140);
    sub_1BC7C1744(v109, &qword_1EBCF4E78, &qword_1BC8FC3B8);
    v73 = v94;
    sub_1BC7D9034(v105, v94);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v97);
    sub_1BC7D964C(v73, v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue);
    v77 = v101;
    sub_1BC7D2BB4(v101, v113);
    v78 = v113[56];
    if (v113[56] == 2)
    {
      if (qword_1EBCF4740 != -1)
      {
        swift_once();
      }

      v118 = xmmword_1EBD06770;
      v119 = xmmword_1EBD06780;
      v120 = xmmword_1EBD06790;
      v121 = qword_1EBD067A0;
      v78 = byte_1EBD067A8;
    }

    else
    {
      v118 = *v113;
      v119 = *&v113[16];
      v120 = *&v113[32];
      v121 = *&v113[48];
    }

    *&v113[4] = v118;
    *&v113[20] = v119;
    *&v113[36] = v120;
    v79 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
    v80 = *&v113[16];
    *(v79 + 4) = *v113;
    *&v113[52] = v121;
    *v79 = 0;
    *(v79 + 20) = v80;
    *(v79 + 36) = *&v113[32];
    *(v79 + 48) = *&v113[44];
    *(v79 + 64) = v78;
    v81 = v71;
    if (!v70)
    {
      sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
      v81 = sub_1BC8F8284();
    }

    v82 = swift_allocObject();
    swift_weakInit();
    v83 = swift_allocObject();
    v84 = v119;
    *(v83 + 24) = v118;
    *(v83 + 16) = v82;
    *(v83 + 40) = v84;
    *(v83 + 56) = v120;
    *(v83 + 72) = v121;
    *(v83 + 80) = v78;
    *&v113[32] = sub_1BC7D96BC;
    *&v113[40] = v83;
    *v113 = MEMORY[0x1E69E9820];
    *&v113[8] = 1107296256;
    *&v113[16] = sub_1BC7D5FA0;
    *&v113[24] = &block_descriptor_40;
    v85 = _Block_copy(v113);
    v86 = v71;

    v87 = os_state_add_handler();

    swift_unknownObjectRelease();
    _Block_release(v85);

    v88 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_stateHandle;
    *v88 = v87;
    *(v88 + 8) = 0;
    OUTLINED_FUNCTION_24();
  }
}

char *sub_1BC7D5AAC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB0, &qword_1BC90A380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BC90B8C0;
  *(inited + 48) = sub_1BC8F7C94();
  *(inited + 56) = v4;
  v5 = sub_1BC8F7AD4();
  v6 = sub_1BC7D5EA8(0x6E614D6567646142, 0xEC00000072656761, v5);
  v8 = v7;
  v10 = v9;
  v13 = sub_1BC803830(v6, v11, v7, v9);

  sub_1BC7D4C94(v8, v10);

  return v13;
}

uint64_t sub_1BC7D5EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC8F6E44();
  swift_allocObject();
  sub_1BC8F6E34();
  sub_1BC8F6E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB8, &unk_1BC8FC3F0);
  sub_1BC7D9770();
  sub_1BC8F6E24();
  if (v3)
  {
  }

  return a1;
}

uint64_t sub_1BC7D5FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

Swift::Void __swiftcall BadgeManager.notifyBadgeCounts(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v38 = 0uLL;
  v39 = 0;
  v4 = *(v1 + 24);
  sub_1BC7D2BB4(v4, v34);
  if (v37 == 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(&v35 + 1);
    v7 = v36;
    v5 = v35;
    v38 = v35;
    v39 = v36;
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = (v3 + 40);
    do
    {
      v10 = *(v9 - 8);
      v12 = *v9;
      v9 += 2;
      v11 = v12;
      if (v10 == 4)
      {
        v13 = v11;
      }

      else
      {
        v13 = v5;
      }

      if (v10 == 5)
      {
        v13 = v5;
        v14 = v11;
      }

      else
      {
        v14 = v6;
      }

      if (v10 == 6)
      {
        v7 = v11;
      }

      else
      {
        v5 = v13;
        v6 = v14;
      }

      --v8;
    }

    while (v8);
    *(&v38 + 1) = v6;
    v39 = v7;
    *&v38 = v5;
  }

  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
  }

  v15 = sub_1BC8F7734();
  __swift_project_value_buffer(v15, qword_1EDC2B368);
  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_21_1();
    v19 = OUTLINED_FUNCTION_28();
    *&v32 = v19;
    *v18 = 136446210;
    v34[0] = v5;
    v34[1] = v6;
    v34[2] = v7;
    v20 = sub_1BC8F7C94();
    v22 = sub_1BC7A9A4C(v20, v21, &v32);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1BC7A3000, v16, v17, "Setting message store counts %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0();
  }

  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  swift_beginAccess();
  v32 = v38;
  v33 = v39;
  sub_1BC7D8EEC();
  v23 = sub_1BC8F6C94();
  v25 = v24;

  v26 = sub_1BC8F70C4();
  OUTLINED_FUNCTION_31_0();
  v27 = sub_1BC8F7BE4();
  [v4 setValue:v26 forKey:v27];

  v28 = sub_1BC8F7714();
  v29 = sub_1BC8F8204();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BC7A3000, v28, v29, "posting onMessageStoreBadgeUpdateNotification", v30, 2u);
    OUTLINED_FUNCTION_6();
  }

  v31 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1EDC1F5A8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterPostNotification(v31, qword_1EDC2B338, 0, 0, 1u);

  sub_1BC7D4C94(v23, v25);
  OUTLINED_FUNCTION_24();
}

Swift::Void __swiftcall BadgeManager.startObservingForStoreBadgeCountUpdate()()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  OUTLINED_FUNCTION_31_0();
  v2 = sub_1BC8F7BE4();
  CFNotificationCenterAddObserver(v1, v0, sub_1BC7D6CD8, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
  }

  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B368);
  oslog = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, oslog, v4, "Added observer for store badge count updates", v5, 2u);
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1BC7D662C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC8F78B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC8F78E4();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = qword_1EDC1FFD0;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1BC8F7734();
    __swift_project_value_buffer(v13, qword_1EDC2B368);
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F8204();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Handling message store badge count update", v16, 2u);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    v17 = *(a2 + 72);
    if (v17)
    {
      aBlock[4] = sub_1BC7D939C;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BC80CE70;
      aBlock[3] = &block_descriptor_23;
      v18 = _Block_copy(aBlock);
      v19 = v17;

      sub_1BC8F78D4();
      v20[1] = MEMORY[0x1E69E7CC0];
      sub_1BC7D93BC();
      v20[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
      sub_1BC7D9414();
      sub_1BC8F84C4();
      MEMORY[0x1BFB296A0](0, v11, v6, v18);
      _Block_release(v18);

      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v11, v20[0]);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall BadgeManager.mergeBadgeCountData(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_29_0();
  v4 = v1;
  v6 = v5;
  v7 = sub_1BC8F78F4();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = (v12 - v11);
  v14 = *(v4 + 72);
  if (!v14)
  {
    goto LABEL_12;
  }

  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v7);
  v15 = v14;
  v16 = sub_1BC8F7904();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v18(v13, v7);
  if (v16)
  {
    v19 = &v32;
    sub_1BC7D3B88(*(v4 + 24), &v32);
    if (v34 == 1)
    {
      if (qword_1EBCF4750 != -1)
      {
        swift_once();
      }

      v19 = &qword_1EBD067B0;
      v3 = qword_1EBD067B8;
      v2 = qword_1EBD067C0;
    }

    else
    {
      v3 = *(&v32 + 1);
      v2 = v33;
    }

    v17 = *v19;
    if (qword_1EDC1FFD0 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
LABEL_9:
  v20 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v20, qword_1EDC2B368);
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F8204();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_21_1();
    v30 = OUTLINED_FUNCTION_28();
    v31 = v30;
    *&v32 = v17;
    *v23 = 136446210;
    *(&v32 + 1) = v3;
    v33 = v2;
    v24 = sub_1BC8F7C94();
    v26 = v17;
    v27 = v2;
    v28 = sub_1BC7A9A4C(v24, v25, &v31);

    *(v23 + 4) = v28;
    v2 = v27;
    v17 = v26;
    _os_log_impl(&dword_1BC7A3000, v21, v22, "Found counts that need to be merged %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD0, &unk_1BC8FC250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 5;
  *(inited + 40) = v3;
  *(inited + 48) = 6;
  *(inited + 56) = v2;
  *(inited + 64) = 4;
  *(inited + 72) = v17;
  *(inited + 80) = 3;
  sub_1BC7D4D50(&v32);
  *(inited + 88) = v34;
  sub_1BC7D4D50(&v32);
  BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(inited, v6 & 1, v35);

  swift_setDeallocating();
LABEL_12:
  OUTLINED_FUNCTION_24();
}

void sub_1BC7D6CD8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1BC7D662C(a1, a2);
}

Swift::Void __swiftcall BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(Swift::OpaquePointer _, Swift::Bool shouldForceUpdate, Swift::Bool_optional isAmbiguous)
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v63 = v7;
  v62 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  OUTLINED_FUNCTION_0();
  v60 = v10;
  v61 = v9;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = sub_1BC8F78F4();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  OUTLINED_FUNCTION_25(v21);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v25 = type metadata accessor for AsyncSerialQueue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v64 = v28 - v27;
  v29 = *(v4 + 72);
  if (v29)
  {
    sub_1BC7D9558(v4 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue, v24, &qword_1EBCF4DE0, &qword_1BC8FC260);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      sub_1BC7C1744(v24, &qword_1EBCF4DE0, &qword_1BC8FC260);
      goto LABEL_16;
    }

    v30 = v64;
    sub_1BC7D9034(v24, v64);
    *v20 = v29;
    (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v14);
    v31 = v29;
    v32 = sub_1BC8F7904();
    (*(v16 + 8))(v20, v14);
    if (v32)
    {
      v32 = &unk_1EDC1F000;
      if (v6 == 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_36_1();
      if (BYTE8(v69[1]) == (v6 & 1))
      {
        goto LABEL_12;
      }

      if (qword_1EDC1FFD0 == -1)
      {
LABEL_8:
        v33 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v33, qword_1EDC2B368);
        v34 = sub_1BC8F7714();
        v35 = sub_1BC8F8204();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_21_1();
          v59 = v36;
          v37 = OUTLINED_FUNCTION_28();
          v67.i64[0] = v37;
          *v36 = 136446210;
          v38 = v6 & 1;
          v77[0].i8[0] = v6 & 1;
          v39 = sub_1BC8F7C94();
          v41 = sub_1BC7A9A4C(v39, v40, v67.i64);
          v30 = v64;

          v42 = v59;
          *(v59 + 1) = v41;
          _os_log_impl(&dword_1BC7A3000, v34, v35, "updating isAmbiguous to %{public}s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v32 = 0x1EDC1F000;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_9_0();
        }

        else
        {

          v38 = v6 & 1;
        }

        sub_1BC7D4D50(v65);
        v66 = v38;
        sub_1BC7D4DB4(v65);
LABEL_12:
        OUTLINED_FUNCTION_36_1();
        sub_1BC7D2B10(v67.i64, v62, v77);
        sub_1BC7D4DB4(v77);
        if (v63)
        {
LABEL_13:
          sub_1BC7D4D50(v77);
          sub_1BC7D28B0(*(v4 + 16), &v67);
          v43 = swift_allocObject();
          *(v43 + 16) = v4;
          v44 = v68;
          *(v43 + 24) = v67;
          *(v43 + 40) = v44;
          *(v43 + 56) = v69[0];
          *(v43 + 65) = *(v69 + 9);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_1BC8FC270;
          *(v45 + 24) = v43;
          v77[0].i64[0] = &unk_1BC8FC280;
          v77[0].i64[1] = v45;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
          sub_1BC8F7FD4();

          (*(v60 + 8))(v13, v61);
          goto LABEL_14;
        }

        sub_1BC7D2BB4(*(v4 + 24), &v67);
        v73 = v67;
        v74 = v68;
        v75 = v69[0];
        v76 = *&v69[1];
        v47 = BYTE8(v69[1]);
        OUTLINED_FUNCTION_36_1();
        v70[0] = v73;
        v70[1] = v74;
        v70[2] = v75;
        v71 = v76;
        v72 = v47;
        if (BYTE8(v69[1]) == 2)
        {
          if (v47 != 2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v77[0] = v67;
          v77[1] = v68;
          v78[0] = v69[0];
          *(v78 + 9) = *(v69 + 9);
          if (v47 == 2 || (static BadgeCounts.== infix(_:_:)(v77, v70) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (*(v32 + 4048) != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
        }

        v48 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v48, qword_1EDC2B368);

        v49 = sub_1BC8F7714();
        v50 = sub_1BC8F8204();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v77[0].i64[0] = swift_slowAlloc();
          *v51 = 136446466;
          if (v47 == 2)
          {
            v52 = 0xE300000000000000;
            v53 = 7104878;
          }

          else
          {
            v67 = v73;
            v68 = v74;
            v69[0] = v75;
            *&v69[1] = v76;
            BYTE8(v69[1]) = v47;
            v53 = sub_1BC8F7C94();
            v52 = v54;
          }

          v55 = sub_1BC7A9A4C(v53, v52, v77[0].i64);

          *(v51 + 4) = v55;
          *(v51 + 12) = 2080;
          OUTLINED_FUNCTION_36_1();
          v56 = sub_1BC8F7C94();
          v58 = sub_1BC7A9A4C(v56, v57, v77[0].i64);

          *(v51 + 14) = v58;
          _os_log_impl(&dword_1BC7A3000, v49, v50, "returning since counts have not changed, oldCounts: %{public}s, counts: %s", v51, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();

          v46 = v64;
          goto LABEL_15;
        }

LABEL_14:
        v46 = v30;
LABEL_15:
        sub_1BC7D912C(v46);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
    goto LABEL_8;
  }

LABEL_16:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7D7468(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC7D7488, 0, 0);
}

uint64_t sub_1BC7D7488()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 248);
  if (*(*(v0 + 240) + 48) == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = v1[2];
    *(v0 + 185) = *(v1 + 41);
    *(v0 + 160) = v3;
    *(v0 + 176) = v4;
    *(v0 + 144) = v2;
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_1BC7D75CC;

    return sub_1BC7D7AF0(v0 + 144);
  }

  else
  {
    v7 = *v1;
    v8 = v1[1];
    v9 = v1[2];
    *(v0 + 57) = *(v1 + 41);
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    *(v0 + 16) = v7;
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_1BC7D7A08;

    return sub_1BC7D818C(v0 + 16);
  }
}

uint64_t sub_1BC7D75CC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC7D76B4()
{
  v13 = v0;
  v1 = *(v0 + 240);
  sub_1BC7D4D50(v11);
  v2 = *(v1 + 24);
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  v3 = v11[1];
  *(v0 + 80) = v11[0];
  *(v0 + 96) = v3;
  *(v0 + 112) = v12[0];
  *(v0 + 121) = *(v12 + 9);
  sub_1BC7D9330();
  v4 = sub_1BC8F6C94();
  v6 = v5;

  v7 = sub_1BC8F70C4();
  OUTLINED_FUNCTION_31_0();
  v8 = sub_1BC8F7BE4();
  [v2 setValue:v7 forKey:v8];

  sub_1BC7D4C94(v4, v6);
  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_1BC7D7A08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC7D7AF0(uint64_t a1)
{
  *(v2 + 208) = v1;
  *(v2 + 216) = *a1;
  *(v2 + 232) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BC7D7B20, 0, 0);
}

uint64_t sub_1BC7D7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v15 = v13[27];
  v14 = v13[28];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v13[29];
    v12 = v17 + v18;
    v13[30] = v17 + v18;
    if (!__OFADD__(v17, v18))
    {
      if (qword_1EDC1FFD0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
LABEL_4:
  v19 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v19, qword_1EDC2B368);
  v20 = sub_1BC8F7714();
  v21 = sub_1BC8F8204();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21_1();
    *v22 = 134349056;
    *(v22 + 4) = v12;
    OUTLINED_FUNCTION_35_0(&dword_1BC7A3000, v23, v24, "Setting Assistive Access Calls badge count to %{public}ld");
    OUTLINED_FUNCTION_6();
  }

  v25 = v13[26];

  v26 = *(v25 + 56);
  v13[2] = v13;
  v13[3] = sub_1BC7D7CC8;
  v27 = swift_continuation_init();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v13[31] = v28;
  OUTLINED_FUNCTION_7_0(v28);
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v13[21] = v29;
  v13[22] = v27;
  [v26 setBadgeCount:v12 withCompletionHandler:v13 + 18];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7CC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D7DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v13 = v12[30];
  v14 = v12[31];
  v15 = *(v12[26] + 64);
  v12[10] = v12;
  v12[11] = sub_1BC7D7FF0;
  swift_continuation_init();
  v12[25] = v14;
  v12[18] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v17;
  v12[22] = v16;
  [v15 setBadgeCount:v13 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v13 = v12[32];
  swift_willThrow();
  sub_1BC7D8BE8(v13, "Failed to write FaceTime badge count to notification center %{public}s");

  v14 = v12[30];
  v15 = v12[31];
  v16 = *(v12[26] + 64);
  v12[10] = v12;
  v12[11] = sub_1BC7D7FF0;
  v17 = swift_continuation_init();
  v12[25] = v15;
  v12[18] = MEMORY[0x1E69E9820];
  v12[19] = 1107296256;
  v12[20] = sub_1BC890F2C;
  v12[21] = &block_descriptor_14;
  v12[22] = v17;
  [v16 setBadgeCount:v14 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7FF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 112);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D8110()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 264);
  swift_willThrow();
  sub_1BC7D8BE8(v1, "Failed to write Phone app badge count to notification center %{public}s");

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC7D818C(uint64_t a1)
{
  *(v2 + 208) = v1;
  v3 = *(a1 + 16);
  *(v2 + 216) = *a1;
  *(v2 + 232) = v3;
  *(v2 + 248) = *(a1 + 32);
  *(v2 + 264) = *(a1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1BC7D81C8, 0, 0);
}

uint64_t sub_1BC7D81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v15 = v13[27];
  v14 = v13[28];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13[32];
  v16 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v13[33];
  v12 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v13[29];
  v21 = v13[30];
  v16 = __OFADD__(v22, v21);
  v23 = v22 + v21;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v13[31];
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ([*(v13[26] + 40) LVMEverywhere])
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  v13[34] = v25 + v26;
  if (!__OFADD__(v25, v26))
  {
    v13[35] = sub_1BC7D89B8(v13[26], v25 + v26);
    v13[36] = v27;
    if (qword_1EDC1FFD0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
LABEL_11:
  v28 = sub_1BC8F7734();
  v13[37] = __swift_project_value_buffer(v28, qword_1EDC2B368);
  v29 = sub_1BC8F7714();
  v30 = sub_1BC8F8204();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_21_1();
    *v31 = 134349056;
    *(v31 + 4) = v12;
    OUTLINED_FUNCTION_35_0(&dword_1BC7A3000, v32, v33, "Setting FaceTime badge count to %{public}ld");
    OUTLINED_FUNCTION_6();
  }

  v34 = v13[26];

  v35 = *(v34 + 56);
  v13[2] = v13;
  v13[3] = sub_1BC7D83DC;
  v36 = swift_continuation_init();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v13[38] = v37;
  OUTLINED_FUNCTION_7_0(v37);
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v13[21] = v38;
  v13[22] = v36;
  [v35 setBadgeCount:v12 withCompletionHandler:v13 + 18];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1BC7D83DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D84DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = v12;

  v13 = sub_1BC8F7714();
  v14 = sub_1BC8F8204();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_14_1(v15, 3.9124e-34);
    sub_1BC7D4D50(v30);
    *(v15 + 24) = v31;

    OUTLINED_FUNCTION_33_1(&dword_1BC7A3000, v16, v17, "Setting MobilePhone badge string to %{public}ld. count: %{public}ld, isAmbiguous: %{BOOL,public}d");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v18 = *(v12[26] + 64);
  if (v12[36])
  {
    v19 = sub_1BC8F7BE4();
  }

  else
  {
    v19 = 0;
  }

  v12[40] = v19;
  v12[10] = v12;
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v21;
  v12[22] = v20;
  [v18 setBadgeString:v19 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BC7D863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = v12;
  v13 = v12[39];
  swift_willThrow();
  sub_1BC7D8BE8(v13, "Failed to write FaceTime badge counts to notification center %{public}s");

  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_14_1(v16, 3.9124e-34);
    sub_1BC7D4D50(v31);
    *(v16 + 24) = v32;

    OUTLINED_FUNCTION_33_1(&dword_1BC7A3000, v17, v18, "Setting MobilePhone badge string to %{public}ld. count: %{public}ld, isAmbiguous: %{BOOL,public}d");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v19 = *(v12[26] + 64);
  if (v12[36])
  {
    v20 = sub_1BC8F7BE4();
  }

  else
  {
    v20 = 0;
  }

  v12[40] = v20;
  v12[10] = v12;
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v22;
  v12[22] = v21;
  [v19 setBadgeString:v20 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1BC7D87C0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 112);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D88C0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC7D8924()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  swift_willThrow();

  sub_1BC7D8BE8(v1, "Failed to write Phone app badge string to notification center %{public}s");

  OUTLINED_FUNCTION_27();

  return v3();
}

id sub_1BC7D89B8(uint64_t a1, uint64_t a2)
{
  sub_1BC7D4D50(v11);
  if (v12 == 1)
  {
    if (a2 < 1)
    {
      return sub_1BC7D8B4C(0xD000000000000019, 0x80000001BC90B7F0);
    }

    sub_1BC7D8B4C(0xD00000000000001FLL, 0x80000001BC90B810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E6530];
    *(v3 + 16) = xmmword_1BC8FC230;
    v5 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = a2;
    v6 = sub_1BC8F7BF4();
  }

  else
  {
    if (a2 < 1)
    {
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E6530];
    *(v7 + 16) = xmmword_1BC8FC230;
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a2;
    v6 = sub_1BC8F7BF4();
  }

  return v6;
}

id sub_1BC7D8B4C(uint64_t a1, uint64_t a2)
{
  result = TUBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_1BC8F6DC4();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BC7D8BE8(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
  }

  v6 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v6, qword_1EDC2B368);
  v7 = v5;
  v29[0] = sub_1BC8F7714();
  v8 = sub_1BC8F81E4();

  if (os_log_type_enabled(v29[0], v8))
  {
    v9 = OUTLINED_FUNCTION_21_1();
    v10 = OUTLINED_FUNCTION_28();
    v30 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = v29[1];
    v12 = v29[2];
    v13 = sub_1BC8F83F4();
    OUTLINED_FUNCTION_0();
    v15 = v14;
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1EEE9AC00](v16);
    v18 = v29 - v17;
    OUTLINED_FUNCTION_10();
    (*(v19 + 16))(v18, v11, v12);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v12);
    v23 = sub_1BC8073F0(v18, v12);
    v25 = v24;
    (*(v15 + 8))(v18, v13);
    v26 = sub_1BC7A9A4C(v23, v25, &v30);

    *(v9 + 4) = v26;
    _os_log_impl(&dword_1BC7A3000, v29[0], v8, v3, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    OUTLINED_FUNCTION_24();
  }

  else
  {
    OUTLINED_FUNCTION_24();
  }
}

id *BadgeManager.deinit()
{

  swift_unknownObjectRelease();
  sub_1BC7C1744(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue, &qword_1EBCF4DE0, &qword_1BC8FC260);
  return v0;
}

uint64_t BadgeManager.__deallocating_deinit()
{
  BadgeManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1BC7D8EEC()
{
  result = qword_1EDC1F598;
  if (!qword_1EDC1F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F598);
  }

  return result;
}

char *sub_1BC7D8F40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E68, &qword_1BC8FC3A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BC7D9034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7D9098()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0168;

  return sub_1BC7D7468(v2, v0 + 24);
}

uint64_t sub_1BC7D912C(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BadgeManager(uint64_t a1)
{
  result = qword_1EBCF4E10;
  if (!qword_1EBCF4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC7D91DC(uint64_t a1)
{
  sub_1BC7D92D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BC7D92D8(uint64_t a1)
{
  if (!qword_1EBCF4E20)
  {
    type metadata accessor for AsyncSerialQueue(255);
    v1 = sub_1BC8F83F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCF4E20);
    }
  }
}

unint64_t sub_1BC7D9330()
{
  result = qword_1EDC1F258;
  if (!qword_1EDC1F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F258);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BC7D93BC()
{
  result = qword_1EDC206B0;
  if (!qword_1EDC206B0)
  {
    sub_1BC8F78B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206B0);
  }

  return result;
}

unint64_t sub_1BC7D9414()
{
  result = qword_1EDC20690;
  if (!qword_1EDC20690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20690);
  }

  return result;
}

uint64_t sub_1BC7D9480()
{
  OUTLINED_FUNCTION_32();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_25(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v2[1] = sub_1BC7B0248;

  return sub_1BC8E42F8();
}

uint64_t sub_1BC7D9558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC7D95B8()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t sub_1BC7D964C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7D96C8()
{
  result = qword_1EBCF4EA0;
  if (!qword_1EBCF4EA0)
  {
    sub_1BC7D9730(255, &qword_1EBCF4EA8, 0x1E69E9620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EA0);
  }

  return result;
}

uint64_t sub_1BC7D9730(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BC7D9770()
{
  result = qword_1EBCF4EC0;
  if (!qword_1EBCF4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4EB8, &unk_1BC8FC3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7D98F0()
{
  result = qword_1EBCF4ED0;
  if (!qword_1EBCF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4ED0);
  }

  return result;
}

uint64_t Transcript.text.getter()
{
  if (v0[2])
  {
    v1 = v0[1];
  }

  else
  {
    v2 = *v0;
    v3 = *(*v0 + 16);
    if (v3)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_1BC7AD404(0, v3, 0);
      v4 = (v2 + 48);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;
        v8 = *(v11 + 16);
        v7 = *(v11 + 24);

        if (v8 >= v7 >> 1)
        {
          sub_1BC7AD404(v7 > 1, v8 + 1, 1);
        }

        *(v11 + 16) = v8 + 1;
        v9 = v11 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = v5;
        v4 += 8;
        --v3;
      }

      while (v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7ADBA4();
    v1 = sub_1BC8F7B74();
  }

  return v1;
}

FaceTimeMessageStore::Transcript __swiftcall Transcript.init(utterances:)(Swift::OpaquePointer utterances)
{
  v1[1]._rawValue = 0;
  v1[2]._rawValue = 0;
  v1->_rawValue = utterances._rawValue;
  result.utterances = utterances;
  return result;
}

void sub_1BC7D9A8C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v93 = a2;
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32_0();
  v14 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  OUTLINED_FUNCTION_0();
  v94 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  v97 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_0();
  v106 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v91 - v29;
  v92 = a1;
  v31 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v123 = MEMORY[0x1E69E7CC0];
    v98 = v32;
    v99 = v31;
    sub_1BC7DD9A4(0, v32, 0);
    OUTLINED_FUNCTION_25_1();
    v35 = v99;
    v95 = v99 + v36;
    v113 = v22;
    v100 = v30;
    v110 = v12;
    v111 = v4;
    v108 = v14;
    v109 = v8;
    v107 = v2;
    v96 = v24;
    while (v34 < *(v35 + 16))
    {
      v104 = v34;
      v105 = v33;
      sub_1BC7DFA68(v95 + *(v24 + 72) * v34, v30, type metadata accessor for FaceTimeMessageStore_Utterance);
      v37 = v106;
      sub_1BC7DFA68(v30, v106, type metadata accessor for FaceTimeMessageStore_Utterance);
      v38 = *(v37 + 24);
      v39 = *(v38 + 16);
      if (v39)
      {
        v117 = MEMORY[0x1E69E7CC0];
        sub_1BC7DD9C4(0, v39, 0);
        v40 = v117;
        OUTLINED_FUNCTION_25_1();
        v42 = v38 + v41;
        v112 = *(v43 + 72);
        do
        {
          sub_1BC7DFA68(v42, v22, type metadata accessor for FaceTimeMessageStore_Caption);
          sub_1BC7DFA68(v22, v19, type metadata accessor for FaceTimeMessageStore_Caption);
          v44 = *v19;
          v45 = *(v14 + 24);
          sub_1BC7DF4F8(v45 + v19, v2);
          v46 = v111;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v111);
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_8_6();
            sub_1BC7DFAC4(v19, v48);
            sub_1BC7DFAC4(v22, v45);
            sub_1BC7C1744(v2, &qword_1EBCF4F08, &qword_1BC9090E0);
            v49 = 0uLL;
          }

          else
          {
            sub_1BC7C1744(v2, &qword_1EBCF4F08, &qword_1BC9090E0);
            v50 = v110;
            sub_1BC7DF4F8(v45 + v19, v110);
            OUTLINED_FUNCTION_43(v50, 1, v46);
            if (v51)
            {
              v52 = v109;
              *v109 = 0;
              sub_1BC8F7424();
              OUTLINED_FUNCTION_8_6();
              sub_1BC7DFAC4(v19, v53);
              v54 = OUTLINED_FUNCTION_29();
              sub_1BC7DFAC4(v54, v55);
              v57 = v52;
              OUTLINED_FUNCTION_43(v50, 1, v46);
              if (!v51)
              {
                sub_1BC7C1744(v110, &qword_1EBCF4F08, &qword_1BC9090E0);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_6();
              sub_1BC7DFAC4(v19, v56);
              sub_1BC7DFAC4(v22, v45);
              v57 = v109;
              sub_1BC7DF568(v50, v109);
            }

            v58 = *v57;
            OUTLINED_FUNCTION_6_4();
            sub_1BC7DFAC4(v57, v59);
            *&v60 = v58;
            *(&v60 + 1) = SHIDWORD(v58);
            v49 = v60;
            v2 = v107;
            v14 = v108;
          }

          v117 = v40;
          v62 = *(v40 + 16);
          v61 = *(v40 + 24);
          if (v62 >= v61 >> 1)
          {
            v64 = OUTLINED_FUNCTION_37(v61);
            v103 = v65;
            sub_1BC7DD9C4(v64, v62 + 1, 1);
            v49 = v103;
            v40 = v117;
          }

          *(v40 + 16) = v62 + 1;
          v63 = v40 + 32 * v62;
          *(v63 + 32) = v49;
          *(v63 + 48) = EnumTagSinglePayload == 1;
          *(v63 + 56) = v44;
          v22 = v113;
          v42 += v112;
          --v39;
        }

        while (v39);
        OUTLINED_FUNCTION_9_4();
        sub_1BC7DFAC4(v100, v66);
      }

      else
      {
        OUTLINED_FUNCTION_9_4();
        sub_1BC7DFAC4(v30, v67);
        v40 = MEMORY[0x1E69E7CC0];
      }

      v68 = v106;
      v69 = *(v106 + 16);
      *&v103 = *(v106 + 8);
      v70 = v97[9];
      v71 = v106 + v97[8];
      LODWORD(v112) = *v71;
      v118 = *(v71 + 4);
      v101 = *(v106 + v70);
      v122 = *(v106 + v70 + 8);
      v72 = (v106 + v97[10]);
      v102 = *v72;
      v73 = *(v72 + 8);

      OUTLINED_FUNCTION_9_4();
      sub_1BC7DFAC4(v68, v74);
      v121 = v73;
      v75 = v122;
      v116[0] = v117;
      *(v116 + 3) = *(&v117 + 3);
      v114 = v119;
      v33 = v105;
      v77 = *(v105 + 16);
      v76 = *(v105 + 24);
      v115 = v120;
      v78 = v118;
      v123 = v105;
      if (v77 >= v76 >> 1)
      {
        v82 = OUTLINED_FUNCTION_37(v76);
        LODWORD(v105) = v83;
        sub_1BC7DD9A4(v82, v77 + 1, 1);
        v75 = v105;
        v33 = v123;
      }

      v34 = v104 + 1;
      *(v33 + 16) = v77 + 1;
      v79 = v33 + (v77 << 6);
      v80 = v103;
      *(v79 + 32) = v40;
      *(v79 + 40) = v80;
      v81 = v101;
      *(v79 + 48) = v69;
      *(v79 + 56) = v81;
      *(v79 + 64) = v75;
      LODWORD(v81) = *(v116 + 3);
      *(v79 + 65) = v116[0];
      *(v79 + 68) = v81;
      *(v79 + 72) = v102;
      *(v79 + 80) = v73;
      LOBYTE(v81) = v115;
      *(v79 + 81) = v114;
      *(v79 + 83) = v81;
      *(v79 + 84) = v112;
      *(v79 + 88) = v78;
      v22 = v113;
      v24 = v96;
      v30 = v100;
      v35 = v99;
      if (v34 == v98)
      {
        v84 = v33;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v85 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
    v86 = v92;
    v87 = (v92 + *(v85 + 24));
    v88 = v87[1];
    if (v88)
    {
      v89 = *v87;
    }

    else
    {
      v89 = 0;
    }

    sub_1BC7DFAC4(v86, type metadata accessor for FaceTimeMessageStore_Transcript);
    v90 = v93;
    *v93 = v84;
    v90[1] = v89;
    v90[2] = v88;
  }
}

uint64_t sub_1BC7DA1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7C0454(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_11:
    v17 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
    v18 = sub_1BC8F7E34();

    v19 = [v17 combinedStringFromCaptions_];

    v20 = sub_1BC8F7C24();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F30, &qword_1BC8FC6D8);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BC8FC230;
    *(result + 32) = v5;
    *(result + 40) = v20;
    *(result + 84) = 0;
    *(result + 88) = 1;
    *(result + 48) = v22;
    *(result + 56) = 0;
    *(result + 64) = 1;
    *(result + 72) = 0;
    *(result + 80) = 1;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = result;
    return result;
  }

  v6 = v4;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1BC7DD9C4(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v8 = 0;
    v5 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB29A00](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      [v9 confidence];
      v12 = v11;

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = OUTLINED_FUNCTION_37(v13);
        sub_1BC7DD9C4(v16, v14 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v14 + 1;
      v15 = v24 + 32 * v14;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = 1;
      *(v15 + 56) = v12;
    }

    while (v6 != v8);
    a2 = v23;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BC7DA3A8(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 segments];
  sub_1BC7D9730(0, &qword_1EBCF4FA8, 0x1E69E06B8);
  v5 = sub_1BC8F7E54();

  v6 = sub_1BC7C0454(v5);
  if (v6)
  {
    v7 = v6;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BC7DD9A4(0, v6 & ~(v6 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v35 = v2;
      v36 = a2;
      v8 = 0;
      v9 = v40;
      v10 = v7 - 1;
      while (1)
      {
        v11 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB29A00](v8, v5) : *(v5 + 8 * v8 + 32);
        v12 = v11;
        if (v8 == 0xFFFFFFFFLL)
        {
          break;
        }

        [v11 confidence];
        v14 = v13;
        v15 = [v12 substringRange];
        v17 = v16;
        v18 = [v12 substring];
        v19 = sub_1BC8F7C24();
        v21 = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F28, &qword_1BC8FC6D0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BC8FC230;
        *(v22 + 32) = v15;
        *(v22 + 40) = v17;
        *(v22 + 48) = 0;
        *(v22 + 56) = v14;
        [v12 timestamp];
        v24 = v23;
        [v12 duration];
        v26 = v25;

        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = OUTLINED_FUNCTION_37(v27);
          sub_1BC7DD9A4(v30, v28 + 1, 1);
        }

        *(v40 + 16) = v28 + 1;
        v29 = v40 + (v28 << 6);
        *(v29 + 32) = v22;
        *(v29 + 40) = v19;
        *(v29 + 48) = v21;
        *(v29 + 56) = v24;
        *(v29 + 64) = 0;
        *(v29 + 65) = *v39;
        *(v29 + 68) = *&v39[3];
        *(v29 + 72) = v26;
        *(v29 + 80) = 0;
        *(v29 + 81) = v37;
        *(v29 + 83) = v38;
        *(v29 + 84) = v8 + 1;
        *(v29 + 88) = 0;
        if (v10 == v8)
        {

          v2 = v35;
          a2 = v36;
          goto LABEL_14;
        }

        ++v8;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v31 = [v2 transcriptionString];
    v32 = sub_1BC8F7C24();
    v34 = v33;

    *a2 = v9;
    a2[1] = v32;
    a2[2] = v34;
  }
}

id sub_1BC7DA680()
{
  v1 = *v0;
  Transcript.text.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1BC8F8684();
    v3 = 0;
    v35 = v1 + 32;
    do
    {
      v4 = (v35 + (v3 << 6));
      v5 = *v4;
      v6 = v4[3];
      v7 = *(v4 + 32);
      v8 = v4[5];
      v9 = *(v4 + 48);
      v10 = [objc_allocWithZone(MEMORY[0x1E697B9E0]) init];
      OUTLINED_FUNCTION_40();
      result = sub_1BC8F7BE4();
      v12 = result;
      v13 = *(*&v5 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = (*&v5 + 48);
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        v17 = *(*&v5 + 16);
        do
        {
          if ((*v15 & 1) == 0)
          {
            v19 = *(v15 - 2);
            v18 = *(v15 - 1);
            if (v19 < v16)
            {
              v16 = *(v15 - 2);
            }

            v20 = __OFADD__(v19, v18);
            v21 = v19 + v18;
            if (v20)
            {
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              return result;
            }

            if (__OFADD__(v16, v14))
            {
              goto LABEL_26;
            }

            if (v16 + v14 < v21)
            {
              v14 = v21 - v16;
              if (__OFSUB__(v21, v16))
              {
                goto LABEL_27;
              }
            }
          }

          v15 += 32;
          --v17;
        }

        while (v17);
        v22 = 0.0;
        if (v7)
        {
          v6 = 0.0;
        }

        v23 = (*&v5 + 56);
        v24 = *(*&v5 + 16);
        do
        {
          v25 = *v23;
          v23 += 4;
          v22 = v22 + v25;
          --v24;
        }

        while (v24);
      }

      else
      {
        v14 = 0;
        v22 = 0.0;
        if (v7)
        {
          v6 = 0.0;
        }

        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v8 = 0.0;
      }

      ++v3;
      v26 = v22 / v13;
      v27 = sub_1BC8F7E34();
      sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
      v28 = sub_1BC8F7E34();
      *&v29 = v26;
      [v10 _initWithSubstring_range_timestamp_duration_confidence_alternativeSubstrings_alternativeConfidences_phoneSequence_ipaPhoneSequence_voiceAnalytics_];

      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    while (v3 != v2);
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E697B9D8]) init];
  sub_1BC7D9730(0, &qword_1EDC1DDB8, 0x1E697B9E0);
  v31 = sub_1BC8F7E34();

  v32 = sub_1BC8F7BE4();

  v33 = [v30 _initWithSegments_formattedString_speakingRate_averagePauseDuration_];

  v34 = [objc_allocWithZone(MEMORY[0x1E69E06B0]) initWithTranscription_];
  return v34;
}

void sub_1BC7DA9A8()
{
  v1 = *v0;
  v23 = *(*v0 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v2 = 0;
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v3 = v1 + 32 + (v2 << 6);
      v4 = *v3;
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      if (*(v3 + 32))
      {

        v7 = 0;
        if (v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = *(v3 + 24);
        v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v7 = [v10 initWithDouble_];
        if (v6)
        {
LABEL_8:
          v8 = 0;
          goto LABEL_9;
        }
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
LABEL_9:
      if (*(v4 + 16))
      {
        v11 = (v4 + 56);
        v12 = 0.0;
        v13 = *(v4 + 16);
        do
        {
          v14 = *v11;
          v11 += 4;
          v12 = v12 + v14;
          --v13;
        }

        while (v13);
      }

      objc_allocWithZone(MEMORY[0x1E69D8AD8]);
      v15 = v8;

      v16 = v7;
      v17 = OUTLINED_FUNCTION_40();
      v20 = sub_1BC7DD55C(v17, v18, v7, v8, v19);

      v21 = v20;
      MEMORY[0x1BFB29230]();
      v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
      {
        OUTLINED_FUNCTION_37(v22);
        sub_1BC8F7E94();
      }

      ++v2;
      OUTLINED_FUNCTION_45_1();
      sub_1BC8F7ED4();
    }

    while (v2 != v23);
  }
}

double sub_1BC7DABBC()
{
  v1 = 0;
  v2 = *(*v0 + 16);
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *(*v0 + 32 + (v1 << 6));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 56);
      v7 = 0.0;
      v8 = v5;
      do
      {
        v9 = *v6;
        v6 += 4;
        v7 = v7 + v9;
        --v8;
      }

      while (v8);
    }

    else
    {
      v7 = 0.0;
    }

    ++v1;
    v3 = v3 + v7 / v5;
  }

  return v3 / v2;
}

uint64_t static Transcript.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1BC7DC654(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v4 && v3 == v5)
        {
          return 1;
        }

        OUTLINED_FUNCTION_41_1();
        if (sub_1BC8F8AA4())
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BC7DACAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *v3;
      v6 = *(v4 - 8);
      v7 = *v4;
      if (*(v3 - 1))
      {
        if (v5 != v7)
        {
          v6 = 0;
        }

        if (v6 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v6)
        {
          return result;
        }

        v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
        if (!v9 || v5 != v7)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_24_0();
}

uint64_t sub_1BC7DAD3C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BC8F8504())
  {
    if (a2 >> 62)
    {
      result = sub_1BC8F8504();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1BC7D9730(0, &qword_1EBCF4FB0, 0x1E695CD58);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1BFB29A00](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1BFB29A00](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1BC8F83A4();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1BC7DAF10()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v67 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v66 = v8 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v70 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_0();
  v76 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  v68 = (v14 - v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - v22;
  v24 = *(v3 + 16);
  if (v24 == *(v1 + 16) && v24 && v3 != v1)
  {
    v58 = v1 + 32;
    v59 = v3 + 32;
    v25 = 0;
    v63 = (v5 + 32);
    v64 = (v5 + 8);
    v65 = v21;
    v57 = v24;
    while (v25 != v24)
    {
      v26 = (v59 + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (v58 + 16 * v25);
      v30 = *v29;
      v31 = v29[1];

      sub_1BC7F5C04(v27, v30);
      if ((v32 & 1) == 0 || (v33 = *(v28 + 16), v33 != *(v31 + 16)))
      {
LABEL_27:

        goto LABEL_28;
      }

      v60 = v25;
      v61 = v27;
      v62 = v30;
      if (v33 && v28 != v31)
      {
        v34 = v33;
        v35 = 0;
        OUTLINED_FUNCTION_25_1();
        v73 = v31 + v36;
        v74 = v28 + v36;
        v71 = v28;
        v72 = v31;
        while (v35 < *(v28 + 16))
        {
          v37 = *(v76 + 72) * v35;
          OUTLINED_FUNCTION_3_6();
          sub_1BC7DFA68(v74 + v37, v23, v38);
          if (v35 >= *(v31 + 16))
          {
            goto LABEL_30;
          }

          sub_1BC7DFA68(v73 + v37, v20, type metadata accessor for HistoryItem);
          v39 = *(v75 + 48);
          sub_1BC7DFA68(v23, v11, type metadata accessor for HistoryItem);
          sub_1BC7DFA68(v20, &v11[v39], type metadata accessor for HistoryItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_3_6();
            v40 = v68;
            sub_1BC7DFA68(v11, v68, v41);
            v42 = *v40;
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              OUTLINED_FUNCTION_5_1();
              sub_1BC7DFAC4(v20, v55);
              sub_1BC7DFAC4(v23, v42);
              goto LABEL_26;
            }

            v43 = *&v11[v39];
            sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
            v44 = sub_1BC8F83A4();

            OUTLINED_FUNCTION_5_1();
            sub_1BC7DFAC4(v20, v45);
            sub_1BC7DFAC4(v23, v42);
            if ((v44 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            OUTLINED_FUNCTION_3_6();
            v46 = v65;
            sub_1BC7DFA68(v11, v65, v47);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1BC7DFAC4(v20, type metadata accessor for HistoryItem);
              sub_1BC7DFAC4(v23, type metadata accessor for HistoryItem);
              (*v64)(v46, v67);
LABEL_26:
              sub_1BC7C1744(v11, &qword_1EBCF4FC8, &qword_1BC9083B0);
              goto LABEL_27;
            }

            v48 = &v11[v39];
            v49 = v66;
            v50 = v67;
            (*v63)(v66, v48, v67);
            v51 = OUTLINED_FUNCTION_29();
            v69 = MEMORY[0x1BFB28700](v51);
            v52 = *v64;
            (*v64)(v49, v50);
            sub_1BC7DFAC4(v20, type metadata accessor for HistoryItem);
            sub_1BC7DFAC4(v23, type metadata accessor for HistoryItem);
            v52(v46, v50);
            if ((v69 & 1) == 0)
            {
LABEL_23:
              OUTLINED_FUNCTION_1_5();
              sub_1BC7DFAC4(v11, v54);
              goto LABEL_27;
            }
          }

          ++v35;
          OUTLINED_FUNCTION_1_5();
          sub_1BC7DFAC4(v11, v53);
          v28 = v71;
          v31 = v72;
          if (v34 == v35)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_20:
      v25 = v60 + 1;

      v24 = v57;
      if (v25 == v57)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7DB4D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BC8F8AA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1BC7DB564()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v56 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v54 = v9 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_2();
  v60 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_1();
  v55 = (v12 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v21 = *(v4 + 16);
  if (v21 != *(v2 + 16) || !v21 || v4 == v2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_36_2();
  v23 = v4 + v22;
  v24 = v2 + v22;
  v50 = (v6 + 32);
  v51 = v18;
  v52 = (v6 + 8);
  v53 = v25;
  v27 = *(v26 + 72);
  v58 = v20;
  while (1)
  {
    sub_1BC7DFA68(v23, v20, type metadata accessor for HistoryItem);
    sub_1BC7DFA68(v24, v18, type metadata accessor for HistoryItem);
    v28 = *(v59 + 48);
    sub_1BC7DFA68(v20, v0, type metadata accessor for HistoryItem);
    sub_1BC7DFA68(v18, v0 + v28, type metadata accessor for HistoryItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_3_6();
    v35 = v53;
    sub_1BC7DFA68(v0, v53, v36);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v52)(v35, v56);
      goto LABEL_15;
    }

    v37 = v54;
    v38 = v56;
    (*v50)(v54, v0 + v28, v56);
    v57 = MEMORY[0x1BFB28700](v35, v37);
    v39 = *v52;
    v40 = v37;
    v18 = v51;
    (*v52)(v40, v38);
    v41 = v38;
    v20 = v58;
    v39(v35, v41);
    OUTLINED_FUNCTION_1_5();
    sub_1BC7DFAC4(v0, v42);
    if ((v57 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    OUTLINED_FUNCTION_5_1();
    sub_1BC7DFAC4(v18, v43);
    v44 = OUTLINED_FUNCTION_45_1();
    sub_1BC7DFAC4(v44, v45);
    v24 += v27;
    v23 += v27;
    if (!--v21)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_3_6();
  v29 = v55;
  sub_1BC7DFA68(v0, v55, v30);
  v31 = *v29;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *(v0 + v28);
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v33 = sub_1BC8F83A4();

    v20 = v58;
    OUTLINED_FUNCTION_1_5();
    sub_1BC7DFAC4(v0, v34);
    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_15:
  sub_1BC7C1744(v0, &qword_1EBCF4FC8, &qword_1BC9083B0);
LABEL_16:
  OUTLINED_FUNCTION_5_1();
  sub_1BC7DFAC4(v18, v46);
  v47 = OUTLINED_FUNCTION_45_1();
  sub_1BC7DFAC4(v47, v48);
LABEL_17:
  OUTLINED_FUNCTION_24();
}

void sub_1BC7DB990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (2)
    {
      v5 = *v4;
      switch(*v3)
      {
        case 1:
          if (v5 == 1)
          {
            goto LABEL_19;
          }

          break;
        case 2:
          if (v5 == 2)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v7 = OUTLINED_FUNCTION_29();
            v9 = sub_1BC7F59BC(v7, v8);
            goto LABEL_20;
          }

          break;
        case 3:
          if (v5 == 3)
          {
            goto LABEL_19;
          }

          break;
        case 4:
          if (v5 == 4 && *(v4 - 1) == 0)
          {

            goto LABEL_21;
          }

          break;
        default:
          if (!*v4)
          {
LABEL_19:
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            OUTLINED_FUNCTION_29();
            sub_1BC7DAF10();
LABEL_20:
            v10 = v9;
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if (v10)
            {
LABEL_21:
              v3 += 16;
              v4 += 16;
              if (--v2)
              {
                continue;
              }
            }
          }

          break;
      }

      break;
    }
  }
}

void sub_1BC7DBADC()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v91 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v87 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v79 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0();
  v93 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32_0();
  v92 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34_1();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v79 - v26;
  v27 = *(v5 + 16);
  if (v27 == *(v3 + 16) && v27 && v5 != v3)
  {
    v84 = v14;
    OUTLINED_FUNCTION_36_2();
    v30 = v5 + v29;
    v81 = v27;
    v82 = v3 + v29;
    v32 = *(v31 + 72);
    v79 = v32;
    v80 = v5 + v29;
    while (1)
    {
      v33 = v28;
      v34 = v32 * v28;
      v35 = v94;
      sub_1BC7DFA68(v30 + v32 * v28, v94, type metadata accessor for FaceTimeMessageStore_Utterance);
      v83 = v33;
      if (v33 == v27)
      {
        break;
      }

      sub_1BC7DFA68(v82 + v34, v24, type metadata accessor for FaceTimeMessageStore_Utterance);
      v36 = v84;
      if (*v35 != *v24)
      {
        goto LABEL_53;
      }

      v37 = *(v35 + 8) == *(v24 + 8) && *(v35 + 16) == *(v24 + 16);
      if (!v37 && (sub_1BC8F8AA4() & 1) == 0)
      {
        goto LABEL_53;
      }

      v38 = *(v35 + 24);
      v89 = *(v24 + 24);
      v90 = v38;
      v39 = *(v38 + 16);
      v40 = *(v89 + 16);
      v88 = v39;
      if (v39 != v40)
      {
        goto LABEL_53;
      }

      if (v88 && v90 != v89)
      {
        v41 = 0;
        OUTLINED_FUNCTION_25_1();
        v86 = v90 + v42;
        v85 = v89 + v42;
        while (v41 < *(v90 + 16))
        {
          v43 = *(v93 + 72) * v41;
          OUTLINED_FUNCTION_19_2();
          sub_1BC7DFA68(v86 + v43, v1, v44);
          if (v41 >= *(v89 + 16))
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_19_2();
          sub_1BC7DFA68(v85 + v43, v19, v45);
          if (*v1 != *v19)
          {
            goto LABEL_52;
          }

          v46 = *(v36 + 24);
          v47 = *(v12 + 48);
          sub_1BC7DF4F8(v1 + v46, v0);
          sub_1BC7DF4F8(v19 + v46, v0 + v47);
          v48 = v91;
          OUTLINED_FUNCTION_43(v0, 1, v91);
          if (v37)
          {
            v49 = OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_43(v49, v50, v48);
            if (!v37)
            {
              goto LABEL_50;
            }

            sub_1BC7C1744(v0, &qword_1EBCF4F08, &qword_1BC9090E0);
          }

          else
          {
            sub_1BC7DF4F8(v0, v11);
            v51 = OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_43(v51, v52, v48);
            if (v53)
            {
              OUTLINED_FUNCTION_6_4();
              sub_1BC7DFAC4(v11, v77);
LABEL_50:
              v75 = &qword_1EBCF4F10;
              v76 = &unk_1BC8FC6C0;
              goto LABEL_51;
            }

            v54 = v0 + v47;
            v47 = v87;
            sub_1BC7DF568(v54, v87);
            if (*v11 != *v47 || v11[1] != *(v47 + 4))
            {
              OUTLINED_FUNCTION_15_2();
              sub_1BC7DFAC4(v47, v74);
              sub_1BC7DFAC4(v11, v36);
              v75 = &qword_1EBCF4F08;
              v76 = &qword_1BC9090E0;
LABEL_51:
              sub_1BC7C1744(v0, v75, v76);
LABEL_52:
              OUTLINED_FUNCTION_16_1();
              sub_1BC7DFAC4(v19, v78);
              sub_1BC7DFAC4(v1, v36);
              v35 = v94;
              goto LABEL_53;
            }

            sub_1BC8F7434();
            OUTLINED_FUNCTION_2_2();
            sub_1BC7DFB1C(&qword_1EBCF4F18, v55, MEMORY[0x1E69AAC10]);
            sub_1BC8F7BC4();
            OUTLINED_FUNCTION_17_3();
            v57 = v56;
            v36 = v84;
            sub_1BC7DFAC4(v47, v56);
            sub_1BC7DFAC4(v11, v57);
            sub_1BC7C1744(v0, &qword_1EBCF4F08, &qword_1BC9090E0);
            if ((v47 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          sub_1BC8F7434();
          OUTLINED_FUNCTION_2_2();
          sub_1BC7DFB1C(&qword_1EBCF4F18, v58, MEMORY[0x1E69AAC10]);
          sub_1BC8F7BC4();
          OUTLINED_FUNCTION_18_2();
          v60 = v59;
          sub_1BC7DFAC4(v19, v59);
          sub_1BC7DFAC4(v1, v60);
          v35 = v94;
          if ((v47 & 1) == 0)
          {
            goto LABEL_53;
          }

          if (v88 == ++v41)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        break;
      }

LABEL_30:
      v61 = *(v92 + 32);
      v62 = (v35 + v61);
      v63 = *(v35 + v61 + 4);
      v64 = (v24 + v61);
      v65 = *(v24 + v61 + 4);
      if (v63)
      {
        if (!v65)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*v62 != *v64)
        {
          LOBYTE(v65) = 1;
        }

        if (v65)
        {
LABEL_53:
          sub_1BC7DFAC4(v24, type metadata accessor for FaceTimeMessageStore_Utterance);
          sub_1BC7DFAC4(v35, type metadata accessor for FaceTimeMessageStore_Utterance);
          goto LABEL_54;
        }
      }

      OUTLINED_FUNCTION_46();
      if (v67)
      {
        if (!v66)
        {
          goto LABEL_53;
        }
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v68)
        {
          goto LABEL_53;
        }
      }

      OUTLINED_FUNCTION_46();
      if (v70)
      {
        if (!v69)
        {
          goto LABEL_53;
        }
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v71)
        {
          goto LABEL_53;
        }
      }

      sub_1BC8F7434();
      OUTLINED_FUNCTION_2_2();
      sub_1BC7DFB1C(&qword_1EBCF4F18, v72, MEMORY[0x1E69AAC10]);
      v73 = sub_1BC8F7BC4();
      sub_1BC7DFAC4(v24, type metadata accessor for FaceTimeMessageStore_Utterance);
      sub_1BC7DFAC4(v35, type metadata accessor for FaceTimeMessageStore_Utterance);
      if (v73)
      {
        v28 = v83 + 1;
        v30 = v80;
        v27 = v81;
        v32 = v79;
        if (v83 + 1 != v81)
        {
          continue;
        }
      }

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC7DC204()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v47 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v49 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_1();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v44 - v17);
  v19 = *(v5 + 16);
  if (v19 == *(v3 + 16) && v19 && v5 != v3)
  {
    OUTLINED_FUNCTION_36_2();
    v21 = v5 + v20;
    v22 = v3 + v20;
    v24 = *(v23 + 72);
    v45 = v15;
    v46 = v24;
    while (1)
    {
      sub_1BC7DFA68(v21, v18, type metadata accessor for FaceTimeMessageStore_Caption);
      sub_1BC7DFA68(v22, v15, type metadata accessor for FaceTimeMessageStore_Caption);
      if (*v18 != *v15)
      {
        break;
      }

      v25 = *(v49 + 24);
      v26 = *(v48 + 48);
      sub_1BC7DF4F8(v18 + v25, v1);
      sub_1BC7DF4F8(v15 + v25, v1 + v26);
      OUTLINED_FUNCTION_43(v1, 1, v6);
      if (v31)
      {
        v27 = OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_43(v27, v28, v6);
        if (!v31)
        {
          goto LABEL_21;
        }

        sub_1BC7C1744(v1, &qword_1EBCF4F08, &qword_1BC9090E0);
      }

      else
      {
        sub_1BC7DF4F8(v1, v0);
        v29 = OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_43(v29, v30, v6);
        if (v31)
        {
          OUTLINED_FUNCTION_6_4();
          sub_1BC7DFAC4(v0, v42);
LABEL_21:
          v40 = &qword_1EBCF4F10;
          v41 = &unk_1BC8FC6C0;
LABEL_22:
          sub_1BC7C1744(v1, v40, v41);
          break;
        }

        v32 = v1 + v26;
        v26 = v47;
        sub_1BC7DF568(v32, v47);
        if (*v0 != *v26 || v0[1] != *(v26 + 4))
        {
          OUTLINED_FUNCTION_15_2();
          sub_1BC7DFAC4(v26, v39);
          sub_1BC7DFAC4(v0, v19);
          v40 = &qword_1EBCF4F08;
          v41 = &qword_1BC9090E0;
          goto LABEL_22;
        }

        sub_1BC8F7434();
        OUTLINED_FUNCTION_2_2();
        sub_1BC7DFB1C(&qword_1EBCF4F18, v33, MEMORY[0x1E69AAC10]);
        sub_1BC8F7BC4();
        OUTLINED_FUNCTION_17_3();
        v35 = v34;
        v15 = v45;
        sub_1BC7DFAC4(v26, v34);
        sub_1BC7DFAC4(v0, v35);
        sub_1BC7C1744(v1, &qword_1EBCF4F08, &qword_1BC9090E0);
        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      sub_1BC8F7434();
      OUTLINED_FUNCTION_2_2();
      sub_1BC7DFB1C(&qword_1EBCF4F18, v36, MEMORY[0x1E69AAC10]);
      sub_1BC8F7BC4();
      OUTLINED_FUNCTION_18_2();
      v38 = v37;
      sub_1BC7DFAC4(v15, v37);
      sub_1BC7DFAC4(v18, v38);
      if (v26)
      {
        v22 += v46;
        v21 += v46;
        v19 = (v19 - 1);
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_16_1();
    sub_1BC7DFAC4(v15, v43);
    sub_1BC7DFAC4(v18, v19);
  }

LABEL_24:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7DC654(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + (v3 << 6));
    v7 = *v6;
    v8 = (v5 + (v3 << 6));
    v9 = *v8;
    v10 = *(*v6 + 16);
    if (v10 != *(*v8 + 16))
    {
      return 0;
    }

    result = *(v6 + 1);
    v11 = v6[3];
    v12 = *(v6 + 32);
    v13 = v6[5];
    v14 = *(v6 + 48);
    v15 = *(v6 + 13);
    v16 = *(v6 + 56);
    v17 = *(v8 + 1);
    v18 = *(v8 + 2);
    v19 = v8[3];
    v20 = *(v8 + 32);
    v21 = v8[5];
    v22 = *(v8 + 48);
    v23 = *(v8 + 13);
    if (v10)
    {
      v24 = v7 == v9;
    }

    else
    {
      v24 = 1;
    }

    v25 = *(v8 + 56);
    if (!v24)
    {
      v26 = (v7 + 56);
      v27 = (v9 + 56);
      while (v10)
      {
        v28 = *v26;
        v29 = *v27;
        if (*(v26 - 1))
        {
          if (v28 == v29)
          {
            v30 = *(v27 - 8);
          }

          else
          {
            v30 = 0;
          }

          if (v30 != 1)
          {
            return 0;
          }
        }

        else
        {
          v31 = 0;
          if (*(v27 - 1))
          {
            return v31;
          }

          v32 = *(v26 - 3) == *(v27 - 3) && *(v26 - 2) == *(v27 - 2);
          if (!v32 || v28 != v29)
          {
            return v31;
          }
        }

        v26 += 4;
        v27 += 4;
        if (!--v10)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (result != v17 || *(v6 + 2) != v18)
    {
      v42 = v20;
      v43 = *(v6 + 32);
      v35 = *(v6 + 13);
      v36 = v22;
      v37 = *(v6 + 48);
      v38 = v4;
      result = sub_1BC8F8AA4();
      v15 = v35;
      v4 = v38;
      v14 = v37;
      v22 = v36;
      v20 = v42;
      v12 = v43;
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (v11 == v19)
      {
        v39 = v20;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    if (v14)
    {
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == v21)
      {
        v40 = v22;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        return 0;
      }
    }

    if (v16)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v15 == v23)
      {
        v41 = v25;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    ++v3;
    v31 = 1;
    if (v3 == v2)
    {
      return v31;
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7DC858()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    OUTLINED_FUNCTION_25_1();
    v16 = v3 + v15;
    v17 = v1 + v15;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = (v18 - 8);
    v29 = *(v18 + 56);
    v30 = v19;
    while (1)
    {
      v21 = v30;
      v30(v13, v16, v4);
      if (!v14)
      {
        break;
      }

      v22 = v18;
      v21(v10, v17, v4);
      OUTLINED_FUNCTION_20_1();
      sub_1BC7DFB1C(&unk_1EDC205F0, v23, MEMORY[0x1E69695C8]);
      OUTLINED_FUNCTION_45_1();
      v24 = sub_1BC8F7BC4();
      v25 = *v20;
      v26 = OUTLINED_FUNCTION_29();
      v25(v26);
      v27 = OUTLINED_FUNCTION_41_1();
      v25(v27);
      if (v24)
      {
        v17 += v29;
        v16 += v29;
        v28 = v14-- == 1;
        v18 = v22;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7DCA28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCA7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCAD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_1BC7A5AB4(v5);
        sub_1BC7A5AB4(v7);
        v8 = static MessageStoreQuery.== infix(_:_:)(&v11, &v10);
        sub_1BC7B0EFC(v10);
        sub_1BC7B0EFC(v11);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1BC7DCBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = 7827308;
      v6 = 0xE300000000000000;
      switch(*v3)
      {
        case 1:
          v6 = 0xE600000000000000;
          v5 = 0x6D756964656DLL;
          break;
        case 2:
          v6 = 0xE400000000000000;
          v5 = 1751607656;
          break;
        case 3:
          v5 = 7823730;
          break;
        default:
          break;
      }

      v7 = 7827308;
      v8 = 0xE300000000000000;
      switch(*v4)
      {
        case 1:
          v8 = 0xE600000000000000;
          v7 = 0x6D756964656DLL;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v7 = 1751607656;
          break;
        case 3:
          v7 = 7823730;
          break;
        default:
          break;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1BC8F8AA4();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BC7DCD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xED00007478655464)
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

uint64_t sub_1BC7DCE34(char a1)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a1 & 1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7DCE7C(char a1)
{
  if (a1)
  {
    return 0x657474616D726F66;
  }

  else
  {
    return 0x636E617265747475;
  }
}

uint64_t sub_1BC7DCECC(uint64_t a1)
{
  v2 = *v1;
  sub_1BC8F8C04();
  sub_1BC7CF594(v4, v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7DCF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DCD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7DCF40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7DCE2C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7DCF68(uint64_t a1)
{
  v2 = sub_1BC7DD8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7DCFA4(uint64_t a1)
{
  v2 = sub_1BC7DD8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Transcript.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE0, &qword_1BC8FC488);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7DD8FC();

  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
  sub_1BC7DF1F4(&qword_1EDC1DED0, sub_1BC7DD950);
  sub_1BC8F89F4();

  if (!v1)
  {
    sub_1BC8F8944();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Transcript.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BC7DF040();
  if (!v2)
  {
    return sub_1BC8F8C24();
  }

  sub_1BC8F8C24();

  return sub_1BC8F7CD4();
}

uint64_t Transcript.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BC8F8C04();
  sub_1BC7DF040();
  sub_1BC8F8C24();
  if (v1)
  {
    sub_1BC8F7CD4();
  }

  return sub_1BC8F8C64();
}

void Transcript.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EF0, &qword_1BC8FC498);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7DD8FC();
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
    sub_1BC7DF1F4(&qword_1EDC1FF58, sub_1BC7DF268);
    sub_1BC8F88F4();
    v6 = sub_1BC8F8834();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_35();
    v10(v9);
    *a2 = v11;
    a2[1] = v6;
    a2[2] = v8;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1BC7DD508(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_1BC8F8C04();
  Transcript.hash(into:)(v3);
  return sub_1BC8F8C64();
}

id sub_1BC7DD55C(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v9 = sub_1BC8F7BE4();

  v10 = [v5 initWithConfidence:v9 text:a3 utteranceStartTimestamp:a4 utteranceDuration:a5];

  return v10;
}

char *sub_1BC7DD5E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1BC7DD61C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1BC7DD644(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

unint64_t sub_1BC7DD67C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result + 8 * a2;
  if (a3 >= result)
  {
    v4 = v3 >= a3;
    v5 = v3 == a3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v5 || !v4)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (a3 != result)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BC7DD6C8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1BC7DD7B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1BC7DD7EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

void sub_1BC7DD82C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_41_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_41_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_1BC7DD8FC()
{
  result = qword_1EDC20B20;
  if (!qword_1EDC20B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B20);
  }

  return result;
}

unint64_t sub_1BC7DD950()
{
  result = qword_1EDC1DF58;
  if (!qword_1EDC1DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF58);
  }

  return result;
}

char *sub_1BC7DD9A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DDEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DD9C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DDFC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BC7DDA7C()
{
  OUTLINED_FUNCTION_26_1();
  sub_1BC7DE100();
  *v0 = v1;
}

char *sub_1BC7DDB1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DE374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DDB3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DE47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BC7DDD24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DE57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BC7DDD44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DE67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DDE5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC7DEA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DDEBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F30, &qword_1BC8FC6D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC7DDFC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F28, &qword_1BC8FC6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

void sub_1BC7DE100()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_13_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_27_1();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    sub_1BC7DD82C(v8 + v23, v15, v20 + v23, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DE2A0()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_13_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_27_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FA0, &qword_1BC8FC750);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

char *sub_1BC7DE374(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC7DE47C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F20, &unk_1BC900AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1BC7DE57C(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FD0, &qword_1BC8FC770);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1BC7DD67C(a4 + 32, v8, (v10 + 4));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BC7DE67C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F90, &qword_1BC8FC738);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BC7DD6C8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1BC7DE848()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_13_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_27_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC0, &unk_1BC8FC760);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_38_0(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BC7DE920()
{
  OUTLINED_FUNCTION_42_0();
  if (v4)
  {
    OUTLINED_FUNCTION_13_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_27_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
    swift_arrayInitWithCopy();
  }
}

char *sub_1BC7DEA38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FB8, &qword_1BC8FC758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BC7DEB40(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_1();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_27_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v13 != a4 || &a4[v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 8 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_41_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    swift_arrayInitWithCopy();
  }
}

void sub_1BC7DEC58()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_40();
      sub_1BC8F7CD4();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DECBC()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *v2;
      if (*(v2 - 8) == 1)
      {
        sub_1BC8F8C24();
      }

      else
      {
        v5 = *(v2 - 3);
        v4 = *(v2 - 2);
        sub_1BC8F8C24();
        MEMORY[0x1BFB2A020](v5);
        MEMORY[0x1BFB2A020](v4);
      }

      if (v3 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v3;
      }

      MEMORY[0x1BFB2A060](*&v6);
      v2 += 4;
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DED54()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      v3 = OUTLINED_FUNCTION_40();
      sub_1BC7FB4B0(v3, v4);
      OUTLINED_FUNCTION_39_1();
      sub_1BC7DEDCC();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DEDCC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_0();
  v17 = *(v2 + 16);
  MEMORY[0x1BFB2A020](v17);
  if (v17)
  {
    OUTLINED_FUNCTION_25_1();
    v19 = v2 + v18;
    v20 = *(v11 + 72);
    v25 = (v5 + 8);
    v26 = (v5 + 32);
    do
    {
      sub_1BC7DFA68(v19, v0, type metadata accessor for HistoryItem);
      sub_1BC7DFA68(v0, v15, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v20;
        v22 = *v15;
        MEMORY[0x1BFB2A020](1);
        sub_1BC8F83B4();
        OUTLINED_FUNCTION_1_5();
        sub_1BC7DFAC4(v0, v23);

        v20 = v21;
      }

      else
      {
        (*v26)(v9, v15, v3);
        MEMORY[0x1BFB2A020](0);
        sub_1BC7DFB1C(&qword_1EBCF5018, MEMORY[0x1E69934D0], MEMORY[0x1E69934E0]);
        sub_1BC8F7B64();
        (*v25)(v9, v3);
        OUTLINED_FUNCTION_1_5();
        sub_1BC7DFAC4(v0, v24);
      }

      v19 += v20;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DF040()
{
  OUTLINED_FUNCTION_10_5();
  v15 = v0;
  if (v0)
  {
    v2 = 0;
    v14 = v1 + 32;
    do
    {
      v3 = (v14 + (v2 << 6));
      v4 = *v3;
      v5 = *(v3 + 32);
      v16 = v3[3];
      v17 = v3[5];
      v18 = *(v3 + 48);
      v19 = *(v3 + 56);
      MEMORY[0x1BFB2A020](*(*v3 + 16));
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = (v4 + 56);
        do
        {
          v8 = *v7;
          if (*(v7 - 8) == 1)
          {
            sub_1BC8F8C24();
          }

          else
          {
            v10 = *(v7 - 3);
            v9 = *(v7 - 2);
            sub_1BC8F8C24();
            MEMORY[0x1BFB2A020](v10);
            MEMORY[0x1BFB2A020](v9);
          }

          if (v8 == 0.0)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = v8;
          }

          MEMORY[0x1BFB2A060](*&v11);
          v7 += 4;
          --v6;
        }

        while (v6);
      }

      sub_1BC8F7CD4();
      if (v5)
      {
        sub_1BC8F8C24();
      }

      else
      {
        sub_1BC8F8C24();
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }

        MEMORY[0x1BFB2A060](v12);
      }

      if (v18)
      {
        sub_1BC8F8C24();
        if (v19)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1BC8F8C24();
        if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }

        MEMORY[0x1BFB2A060](v13);
        if (v19)
        {
LABEL_25:
          sub_1BC8F8C24();
          goto LABEL_26;
        }
      }

      sub_1BC8F8C24();
      sub_1BC8F8C44();
LABEL_26:

      ++v2;
    }

    while (v2 != v15);
  }
}

uint64_t sub_1BC7DF1F4(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
    a2();
    OUTLINED_FUNCTION_39_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7DF268()
{
  result = qword_1EDC1FF90;
  if (!qword_1EDC1FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF90);
  }

  return result;
}

unint64_t sub_1BC7DF2C0()
{
  result = qword_1EBCF4EF8;
  if (!qword_1EBCF4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transcript.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7DF3F4()
{
  result = qword_1EBCF4F00;
  if (!qword_1EBCF4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4F00);
  }

  return result;
}

unint64_t sub_1BC7DF44C()
{
  result = qword_1EDC20B10;
  if (!qword_1EDC20B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B10);
  }

  return result;
}

unint64_t sub_1BC7DF4A4()
{
  result = qword_1EDC20B18;
  if (!qword_1EDC20B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B18);
  }

  return result;
}

uint64_t sub_1BC7DF4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7DF568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BC7DF5CC()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = (v3 + 16 * v2);
      v5 = *v4;
      switch(*(v4 + 8))
      {
        case 1:
          MEMORY[0x1BFB2A020](1);
          MEMORY[0x1BFB2A020](*(v5 + 16));
          v16 = *(v5 + 16);
          if (v16)
          {

            v17 = v5 + 40;
            do
            {

              v18 = OUTLINED_FUNCTION_39_1();
              sub_1BC7FB4B0(v18, v19);
              sub_1BC7DEDCC();

              v17 += 16;
              --v16;
            }

            while (v16);
            break;
          }

          goto LABEL_18;
        case 2:
          MEMORY[0x1BFB2A020](2);

          v10 = OUTLINED_FUNCTION_40();
          sub_1BC7FB338(v10, v11);
          break;
        case 3:
          MEMORY[0x1BFB2A020](3);
          MEMORY[0x1BFB2A020](*(v5 + 16));
          v12 = *(v5 + 16);
          if (!v12)
          {
            goto LABEL_18;
          }

          v13 = v5 + 40;
          do
          {

            v14 = OUTLINED_FUNCTION_39_1();
            sub_1BC7FB4B0(v14, v15);
            sub_1BC7DEDCC();

            v13 += 16;
            --v12;
          }

          while (v12);
          break;
        case 4:
          MEMORY[0x1BFB2A020](4);
          goto LABEL_18;
        default:
          MEMORY[0x1BFB2A020](0);
          MEMORY[0x1BFB2A020](*(v5 + 16));
          v6 = *(v5 + 16);
          if (!v6)
          {
            goto LABEL_18;
          }

          v7 = v5 + 40;
          do
          {

            v8 = OUTLINED_FUNCTION_39_1();
            sub_1BC7FB4B0(v8, v9);
            sub_1BC7DEDCC();

            v7 += 16;
            --v6;
          }

          while (v6);
          break;
      }

LABEL_18:
      ++v2;
    }

    while (v2 != v0);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DF7B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48();
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1BC7A5AB4(v6);
      MessageStoreQuery.hash(into:)(v2);
      sub_1BC7B0EFC(v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1BC7DF814()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1BC8F8C44();
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DF854()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 2;
      sub_1BC8F8C34();
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DF894()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1BFB2A020](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1BC7DF8D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48();
  if (v2)
  {
    v4 = *(sub_1BC8F7264() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_20_1();
    sub_1BC7DFB1C(v7, v8, MEMORY[0x1E69695B8]);
    do
    {
      sub_1BC8F7B64();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DF9B0()
{
  OUTLINED_FUNCTION_10_5();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1BC8F7CD4();

      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1BC7DFA68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_29();
  v5(v4);
  return a2;
}

uint64_t sub_1BC7DFAC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7DFB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC7DFBD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_37_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7DFC34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465646461 && a2 == 0xE500000000000000)
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

uint64_t sub_1BC7DFCBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657461647075 && a2 == 0xE700000000000000)
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

void sub_1BC7DFD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  v21 = v20;
  v23 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v32 - v30;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v21();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  sub_1BC7C08E4();
  sub_1BC8F89F4();
  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_23();
}

void sub_1BC7DFE94()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_37_1(v4, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_0();
  v14 = v10;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    v12 = sub_1BC7C082C();
    OUTLINED_FUNCTION_2_3(v12, v13);
    (*(v14 + 8))(v1, v9);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7DFFD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x55646574656C6564 && a2 == 0xEC00000073444955)
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

void sub_1BC7E0070()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5210, &qword_1BC8FE2A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E37D8();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
  sub_1BC7E38E0();
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v1 = OUTLINED_FUNCTION_8_7();
  v2(v1);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0180()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51F8, &qword_1BC8FE290);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_10_6(v0);
  v3 = sub_1BC7E37D8();
  OUTLINED_FUNCTION_12_3(&type metadata for DidDeleteMessageUUIDs.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
    v5 = sub_1BC7E382C();
    OUTLINED_FUNCTION_2_3(v5, v6);
    v7 = OUTLINED_FUNCTION_8_7();
    v8(v7);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0290(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xEB000000006F666ELL)
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

void sub_1BC7E032C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51F0, &qword_1BC8FE288);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E3784();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  type metadata accessor for AccountInfo();
  OUTLINED_FUNCTION_14_2();
  sub_1BC7E2760(v1, v2, &protocol conformance descriptor for AccountInfo);
  OUTLINED_FUNCTION_9_5();
  sub_1BC8F89F4();
  v3 = OUTLINED_FUNCTION_38_1();
  v4(v3);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0454()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51E8, &qword_1BC8FE280);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_10_6(v0);
  v3 = sub_1BC7E3784();
  OUTLINED_FUNCTION_12_3(&type metadata for AccountInfoDidChange.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for AccountInfo();
    OUTLINED_FUNCTION_14_2();
    v7 = sub_1BC7E2760(v5, v6, &protocol conformance descriptor for AccountInfo);
    OUTLINED_FUNCTION_2_3(v7, v8);
    v9 = OUTLINED_FUNCTION_8_7();
    v10(v9);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0578(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7165526863746566 && a2 == 0xEC00000074736575)
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

uint64_t sub_1BC7E05F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

void sub_1BC7E0684()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50D8, &qword_1BC8FD380);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2CAC();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  type metadata accessor for Message(0);
  OUTLINED_FUNCTION_15_3();
  sub_1BC7E2760(v1, v2, &protocol conformance descriptor for Message);
  OUTLINED_FUNCTION_9_5();
  sub_1BC8F89F4();
  v3 = OUTLINED_FUNCTION_38_1();
  v4(v3);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E07AC()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50C8, &qword_1BC8FD378);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_10_6(v0);
  v3 = sub_1BC7E2CAC();
  OUTLINED_FUNCTION_12_3(&type metadata for SaveMessage.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for Message(0);
    OUTLINED_FUNCTION_15_3();
    v7 = sub_1BC7E2760(v5, v6, &protocol conformance descriptor for Message);
    OUTLINED_FUNCTION_2_3(v7, v8);
    v9 = OUTLINED_FUNCTION_8_7();
    v10(v9);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E08D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x555564726F636572 && a2 == 0xEA00000000004449)
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

void sub_1BC7E096C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50C0, &qword_1BC8FD370);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2C58();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_1_6();
  sub_1BC7E2760(v1, v2, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v3 = OUTLINED_FUNCTION_8_7();
  v4(v3);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v13 = v12;
  v14 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v25 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30_2(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50B0, &qword_1BC8FD368);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_24_2();
  v20 = type metadata accessor for SaveMessageToPhotoLibrary(v19);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_25_2(v13, v13[3]);
  sub_1BC7E2C58();
  OUTLINED_FUNCTION_23_0();
  sub_1BC8F8C84();
  if (!v10)
  {
    OUTLINED_FUNCTION_1_6();
    sub_1BC7E2760(v21, v22, MEMORY[0x1E69695D0]);
    sub_1BC8F88F4();
    v23 = OUTLINED_FUNCTION_29_1();
    v24(v23);
    (*(v25 + 32))(v11, a10, v14);
    OUTLINED_FUNCTION_32_1();
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E0C9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
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

void sub_1BC7E0D2C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50A0, &qword_1BC8FD358);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2A9C();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5098, &qword_1BC8FD350);
  sub_1BC7E2BA4();
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v1 = OUTLINED_FUNCTION_8_7();
  v2(v1);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0E3C()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5090, &qword_1BC8FD348);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_10_6(v0);
  v3 = sub_1BC7E2A9C();
  OUTLINED_FUNCTION_12_3(&type metadata for UpdateMessages.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5098, &qword_1BC8FD350);
    v5 = sub_1BC7E2AF0();
    OUTLINED_FUNCTION_2_3(v5, v6);
    v7 = OUTLINED_FUNCTION_8_7();
    v8(v7);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0F4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
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

uint64_t sub_1BC7E0FC0()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

void sub_1BC7E1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5088, &qword_1BC8FD340);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v28 = *v20;
  OUTLINED_FUNCTION_25_2(v23, v23[3]);
  sub_1BC7A5AB4(v28);
  sub_1BC7E2A48();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  sub_1BC7B2348();
  sub_1BC8F89F4();
  sub_1BC7B0EFC(v28);
  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_23();
}

void sub_1BC7E1140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5078, &qword_1BC8FD338);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v13, v13[3]);
  sub_1BC7E2A48();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (!v10)
  {
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E1278(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275636341736177 && a2 == 0xEB00000000657461)
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

uint64_t sub_1BC7E134C(char a1)
{
  if (a1)
  {
    return 0x7275636341736177;
  }

  else
  {
    return 0x555564726F636572;
  }
}

void sub_1BC7E1390()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5070, &qword_1BC8FD330);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-v5];
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2934();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  v9[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_1_6();
  sub_1BC7E2760(v7, v8, MEMORY[0x1E69695B0]);
  sub_1BC8F89F4();
  if (!v0)
  {
    type metadata accessor for ReportTranscriptAccuracy(0);
    v9[14] = 1;
    sub_1BC8F89B4();
  }

  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v25 = v24;
  v43 = v26;
  v45 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v44 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5060, &qword_1BC8FD328);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_39_0();
  v33 = type metadata accessor for ReportTranscriptAccuracy(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_25_2(v25, v25[3]);
  sub_1BC7E2934();
  sub_1BC8F8C84();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    sub_1BC7E2760(v38, v39, MEMORY[0x1E69695D0]);
    sub_1BC8F88F4();
    (*(v44 + 32))(v37, v31, v45);
    v40 = sub_1BC8F88B4();
    v41 = OUTLINED_FUNCTION_22_2();
    v42(v41);
    *(v37 + *(v33 + 20)) = v40 & 1;
    sub_1BC7E2988(v37, v43);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1BC7E29EC(v37);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E17D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFC34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1800(uint64_t a1)
{
  v2 = sub_1BC7E39E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E183C(uint64_t a1)
{
  v2 = sub_1BC7E39E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1878(void *a1@<X8>)
{
  sub_1BC7DFE94();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E191C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFCBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1948(uint64_t a1)
{
  v2 = sub_1BC7E3994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1984(uint64_t a1)
{
  v2 = sub_1BC7E3994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E19C0(void *a1@<X8>)
{
  sub_1BC7DFE94();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFFD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1A90(uint64_t a1)
{
  v2 = sub_1BC7E37D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1ACC(uint64_t a1)
{
  v2 = sub_1BC7E37D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1B08(void *a1@<X8>)
{
  sub_1BC7E0180();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0290(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1B80(uint64_t a1)
{
  v2 = sub_1BC7E3784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1BBC(uint64_t a1)
{
  v2 = sub_1BC7E3784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1BF8(void *a1@<X8>)
{
  sub_1BC7E0454();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1C40(uint64_t a1)
{
  v2 = sub_1BC7E3730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1C7C(uint64_t a1)
{
  v2 = sub_1BC7E3730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1CFC(uint64_t a1)
{
  v2 = sub_1BC7E36DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1D38(uint64_t a1)
{
  v2 = sub_1BC7E36DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1DB8(uint64_t a1)
{
  v2 = sub_1BC7ADF20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1DF4(uint64_t a1)
{
  v2 = sub_1BC7ADF20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1E30(uint64_t a1)
{
  v2 = sub_1BC7B1ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1E6C(uint64_t a1)
{
  v2 = sub_1BC7B1ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1EA8(uint64_t a1)
{
  v2 = sub_1BC7E2D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1EE4(uint64_t a1)
{
  v2 = sub_1BC7E2D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1F64(uint64_t a1)
{
  v2 = sub_1BC7E2D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1FA0(uint64_t a1)
{
  v2 = sub_1BC7E2D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2020(uint64_t a1)
{
  v2 = sub_1BC7AF4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E205C(uint64_t a1)
{
  v2 = sub_1BC7AF4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E209C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E05F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E20C8(uint64_t a1)
{
  v2 = sub_1BC7E2CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E2104(uint64_t a1)
{
  v2 = sub_1BC7E2CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E2140(void *a1@<X8>)
{
  sub_1BC7E07AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E08D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E21B8(uint64_t a1)
{
  v2 = sub_1BC7E2C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E21F4(uint64_t a1)
{
  v2 = sub_1BC7E2C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0C9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E2290(uint64_t a1)
{
  v2 = sub_1BC7E2A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E22CC(uint64_t a1)
{
  v2 = sub_1BC7E2A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E2308(void *a1@<X8>)
{
  sub_1BC7E0E3C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E2350(uint64_t a1)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7E2394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0F4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E23C0(uint64_t a1)
{
  v2 = sub_1BC7E2A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E23FC(uint64_t a1)
{
  v2 = sub_1BC7E2A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E1278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7E2498(uint64_t a1)
{
  v2 = sub_1BC7E2934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E24D4(uint64_t a1)
{
  v2 = sub_1BC7E2934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2540(uint64_t a1)
{
  v2 = sub_1BC7E28E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E257C(uint64_t a1)
{
  v2 = sub_1BC7E28E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC7E2600()
{
  result = qword_1EDC209B8;
  if (!qword_1EDC209B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209B8);
  }

  return result;
}

unint64_t sub_1BC7E2658()
{
  result = qword_1EDC209C0;
  if (!qword_1EDC209C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209C0);
  }

  return result;
}

uint64_t sub_1BC7E2760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC7E28E0()
{
  result = qword_1EBCF5058;
  if (!qword_1EBCF5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5058);
  }

  return result;
}

unint64_t sub_1BC7E2934()
{
  result = qword_1EBCF5068;
  if (!qword_1EBCF5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5068);
  }

  return result;
}

uint64_t sub_1BC7E2988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportTranscriptAccuracy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7E29EC(uint64_t a1)
{
  v2 = type metadata accessor for ReportTranscriptAccuracy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC7E2A48()
{
  result = qword_1EBCF5080;
  if (!qword_1EBCF5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5080);
  }

  return result;
}

unint64_t sub_1BC7E2A9C()
{
  result = qword_1EDC202D0;
  if (!qword_1EDC202D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202D0);
  }

  return result;
}

unint64_t sub_1BC7E2AF0()
{
  result = qword_1EDC1DF10;
  if (!qword_1EDC1DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5098, &qword_1BC8FD350);
    sub_1BC7E2760(&qword_1EDC1F9B8, type metadata accessor for MessageUpdate, &protocol conformance descriptor for MessageUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF10);
  }

  return result;
}

unint64_t sub_1BC7E2BA4()
{
  result = qword_1EDC1DF18;
  if (!qword_1EDC1DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5098, &qword_1BC8FD350);
    sub_1BC7E2760(&qword_1EDC20528, type metadata accessor for MessageUpdate, &protocol conformance descriptor for MessageUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF18);
  }

  return result;
}

unint64_t sub_1BC7E2C58()
{
  result = qword_1EBCF50B8;
  if (!qword_1EBCF50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50B8);
  }

  return result;
}

unint64_t sub_1BC7E2CAC()
{
  result = qword_1EBCF50D0;
  if (!qword_1EBCF50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50D0);
  }

  return result;
}

unint64_t sub_1BC7E2D00()
{
  result = qword_1EBCF50E8;
  if (!qword_1EBCF50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50E8);
  }

  return result;
}

unint64_t sub_1BC7E2D54()
{
  result = qword_1EBCF50F8;
  if (!qword_1EBCF50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportTranscriptAccuracy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7E2EF8()
{
  result = qword_1EBCF5120;
  if (!qword_1EBCF5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5120);
  }

  return result;
}

unint64_t sub_1BC7E2F50()
{
  result = qword_1EBCF5128;
  if (!qword_1EBCF5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5128);
  }

  return result;
}

unint64_t sub_1BC7E2FA8()
{
  result = qword_1EBCF5130;
  if (!qword_1EBCF5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5130);
  }

  return result;
}

unint64_t sub_1BC7E3000()
{
  result = qword_1EBCF5138;
  if (!qword_1EBCF5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5138);
  }

  return result;
}

unint64_t sub_1BC7E3058()
{
  result = qword_1EBCF5140;
  if (!qword_1EBCF5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5140);
  }

  return result;
}

unint64_t sub_1BC7E30B0()
{
  result = qword_1EBCF5148;
  if (!qword_1EBCF5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5148);
  }

  return result;
}

unint64_t sub_1BC7E3108()
{
  result = qword_1EBCF5150;
  if (!qword_1EBCF5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5150);
  }

  return result;
}

unint64_t sub_1BC7E3160()
{
  result = qword_1EBCF5158;
  if (!qword_1EBCF5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5158);
  }

  return result;
}

unint64_t sub_1BC7E31B8()
{
  result = qword_1EBCF5160;
  if (!qword_1EBCF5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5160);
  }

  return result;
}

unint64_t sub_1BC7E3210()
{
  result = qword_1EBCF5168;
  if (!qword_1EBCF5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5168);
  }

  return result;
}

unint64_t sub_1BC7E3268()
{
  result = qword_1EBCF5170;
  if (!qword_1EBCF5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5170);
  }

  return result;
}

unint64_t sub_1BC7E32C0()
{
  result = qword_1EBCF5178;
  if (!qword_1EBCF5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5178);
  }

  return result;
}

unint64_t sub_1BC7E3318()
{
  result = qword_1EBCF5180;
  if (!qword_1EBCF5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5180);
  }

  return result;
}

unint64_t sub_1BC7E3370()
{
  result = qword_1EBCF5188;
  if (!qword_1EBCF5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5188);
  }

  return result;
}

unint64_t sub_1BC7E33C8()
{
  result = qword_1EBCF5190;
  if (!qword_1EBCF5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5190);
  }

  return result;
}

unint64_t sub_1BC7E3420()
{
  result = qword_1EDC202C0;
  if (!qword_1EDC202C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202C0);
  }

  return result;
}

unint64_t sub_1BC7E3478()
{
  result = qword_1EDC202C8;
  if (!qword_1EDC202C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202C8);
  }

  return result;
}

unint64_t sub_1BC7E34D0()
{
  result = qword_1EBCF5198;
  if (!qword_1EBCF5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5198);
  }

  return result;
}

unint64_t sub_1BC7E3528()
{
  result = qword_1EBCF51A0;
  if (!qword_1EBCF51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51A0);
  }

  return result;
}

unint64_t sub_1BC7E3580()
{
  result = qword_1EBCF51A8;
  if (!qword_1EBCF51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51A8);
  }

  return result;
}

unint64_t sub_1BC7E35D8()
{
  result = qword_1EBCF51B0;
  if (!qword_1EBCF51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51B0);
  }

  return result;
}

unint64_t sub_1BC7E3630()
{
  result = qword_1EBCF51B8;
  if (!qword_1EBCF51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51B8);
  }

  return result;
}

unint64_t sub_1BC7E3688()
{
  result = qword_1EBCF51C0;
  if (!qword_1EBCF51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51C0);
  }

  return result;
}

unint64_t sub_1BC7E36DC()
{
  result = qword_1EBCF51D0;
  if (!qword_1EBCF51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51D0);
  }

  return result;
}

unint64_t sub_1BC7E3730()
{
  result = qword_1EBCF51E0;
  if (!qword_1EBCF51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51E0);
  }

  return result;
}

unint64_t sub_1BC7E3784()
{
  result = qword_1EDC208B8;
  if (!qword_1EDC208B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208B8);
  }

  return result;
}

unint64_t sub_1BC7E37D8()
{
  result = qword_1EDC1FA30;
  if (!qword_1EDC1FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA30);
  }

  return result;
}

unint64_t sub_1BC7E382C()
{
  result = qword_1EBCF5208;
  if (!qword_1EBCF5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5200, &qword_1BC8FE298);
    sub_1BC7E2760(&unk_1EDC20FB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5208);
  }

  return result;
}

unint64_t sub_1BC7E38E0()
{
  result = qword_1EDC1DEB8;
  if (!qword_1EDC1DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5200, &qword_1BC8FE298);
    sub_1BC7E2760(&unk_1EDC20FC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEB8);
  }

  return result;
}

unint64_t sub_1BC7E3994()
{
  result = qword_1EDC20920;
  if (!qword_1EDC20920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20920);
  }

  return result;
}

unint64_t sub_1BC7E39E8()
{
  result = qword_1EDC20A00;
  if (!qword_1EDC20A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20A00);
  }

  return result;
}

unint64_t sub_1BC7E3AA0()
{
  result = qword_1EBCF5238;
  if (!qword_1EBCF5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5238);
  }

  return result;
}

unint64_t sub_1BC7E3AF8()
{
  result = qword_1EBCF5240;
  if (!qword_1EBCF5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5240);
  }

  return result;
}

unint64_t sub_1BC7E3B50()
{
  result = qword_1EBCF5248;
  if (!qword_1EBCF5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5248);
  }

  return result;
}

unint64_t sub_1BC7E3BA8()
{
  result = qword_1EBCF5250;
  if (!qword_1EBCF5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5250);
  }

  return result;
}

unint64_t sub_1BC7E3C00()
{
  result = qword_1EDC209F0;
  if (!qword_1EDC209F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209F0);
  }

  return result;
}

unint64_t sub_1BC7E3C58()
{
  result = qword_1EDC209F8;
  if (!qword_1EDC209F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209F8);
  }

  return result;
}

unint64_t sub_1BC7E3CB0()
{
  result = qword_1EDC20910;
  if (!qword_1EDC20910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20910);
  }

  return result;
}

unint64_t sub_1BC7E3D08()
{
  result = qword_1EDC20918;
  if (!qword_1EDC20918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20918);
  }

  return result;
}

unint64_t sub_1BC7E3D60()
{
  result = qword_1EDC1FA20;
  if (!qword_1EDC1FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA20);
  }

  return result;
}

unint64_t sub_1BC7E3DB8()
{
  result = qword_1EDC1FA28;
  if (!qword_1EDC1FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA28);
  }

  return result;
}

unint64_t sub_1BC7E3E10()
{
  result = qword_1EDC208A8;
  if (!qword_1EDC208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208A8);
  }

  return result;
}

unint64_t sub_1BC7E3E68()
{
  result = qword_1EDC208B0;
  if (!qword_1EDC208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208B0);
  }

  return result;
}

unint64_t sub_1BC7E3EC0()
{
  result = qword_1EBCF5258;
  if (!qword_1EBCF5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5258);
  }

  return result;
}

unint64_t sub_1BC7E3F18()
{
  result = qword_1EBCF5260;
  if (!qword_1EBCF5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5260);
  }

  return result;
}

unint64_t sub_1BC7E3F70()
{
  result = qword_1EBCF5268;
  if (!qword_1EBCF5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5268);
  }

  return result;
}

unint64_t sub_1BC7E3FC8()
{
  result = qword_1EBCF5270;
  if (!qword_1EBCF5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5270);
  }

  return result;
}

FaceTimeMessageStore::SpotlightReindexingReason sub_1BC7E4118@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SpotlightReindexingReason.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BC7E4158@<X0>(uint64_t *a1@<X8>)
{
  result = SpotlightReindexingReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v5 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v4);
    if (!v5)
    {
      v5 = [objc_opt_self() standardUserDefaults];
    }

    v2 = v5;
  }

  v6 = a1;
  v7 = sub_1BC8F7BE4();
  v8 = [v2 objectForKey_];

  if (!v8)
  {
    memset(v22, 0, sizeof(v22));
    sub_1BC7E6180(v22, &unk_1EBCF5E50, &qword_1BC8FE850);
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v16 = sub_1BC8F7734();
    __swift_project_value_buffer(v16, qword_1EDC2B3C0);
    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F8204();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "No spotlight index version found";
    goto LABEL_19;
  }

  sub_1BC8F8474();
  swift_unknownObjectRelease();
  sub_1BC7E6180(v22, &unk_1EBCF5E50, &qword_1BC8FE850);
  v9 = sub_1BC8F7BE4();
  v10 = [v2 integerForKey_];

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v11 = sub_1BC8F7734();
  __swift_project_value_buffer(v11, qword_1EDC2B3C0);
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 8;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "Current spotlight index version for voicemails: %ld expected index version: %ld", v14, 0x16u);
    OUTLINED_FUNCTION_6();
  }

  if (v10 != 8)
  {
    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F8204();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_20:

      v15 = 1;
      goto LABEL_21;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Spotlight Index versions mismatch";
LABEL_19:
    _os_log_impl(&dword_1BC7A3000, v17, v18, v20, v19, 2u);
    OUTLINED_FUNCTION_6();
    goto LABEL_20;
  }

  v15 = 0;
LABEL_21:

  return v15;
}

void static SpotlightIndexManagerUtilities.voicemailsDeferredReindexingReason(defaults:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v6);
    if (!v7)
    {
      v7 = [objc_opt_self() standardUserDefaults];
    }

    v4 = v7;
  }

  v8 = a1;
  v9 = sub_1BC8F7BE4();
  v10 = [v4 integerForKey_];

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v11 = sub_1BC8F7734();
  __swift_project_value_buffer(v11, qword_1EDC2B3C0);
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "voicemailsDeferredReindexingReason: %ld", v14, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  *a2 = v10;
}

uint64_t static SpotlightIndexManagerUtilities.setVoicemailsNeedsDeferredReindexing(for:defaults:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for AnalyticsSender();
  v4 = swift_allocObject();
  type metadata accessor for AnalyticsManager();
  swift_allocObject();
  v5 = sub_1BC8EBC08(v4, 1);
  v7 = v3;
  sub_1BC7E46FC(v5, &v7, a2);
}

void sub_1BC7E46FC(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v8 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v7);
    if (!v8)
    {
      v8 = [objc_opt_self() standardUserDefaults];
    }

    v18 = v8;
  }

  v9 = a3;
  v10 = sub_1BC8F7BE4();
  v11 = [v18 integerForKey_];

  if ((v5 & ~v11) != 0)
  {
    v12 = v11 | v5;
    v13 = sub_1BC8F7BE4();
    [v18 setInteger:v12 forKey:v13];

    v19 = v5;
    sub_1BC7E4904(a1, &v19, 0);
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v14 = sub_1BC8F7734();
    __swift_project_value_buffer(v14, qword_1EDC2B3C0);
    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F8204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v5;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v12;
      _os_log_impl(&dword_1BC7A3000, v15, v16, "Voicemails updated deferredSpotlightReindexingReason for reason: %ld finalReason: %ld", v17, 0x16u);
      OUTLINED_FUNCTION_6();
    }
  }
}

void sub_1BC7E4904(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_1BC8F72D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC8F6DA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v57 - v13;
  v15 = sub_1BC8F71E4();
  isa = v15[-1].isa;
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  if (a1)
  {
    v59 = v18;
    v60 = v10;
    v61 = v9;
    v62 = v7;
    v63 = v6;
    v64 = v57 - v17;
    v19 = *a2;
    v68 = v15;
    if (a3)
    {

      v20 = a3;
    }

    else
    {
      v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

      v27 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v26);
      if (!v27)
      {
        v27 = [objc_opt_self() standardUserDefaults];
      }

      v20 = v27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5298, &qword_1BC8FEA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FE840;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x80000001BC90BD50;
    v29 = sub_1BC7E613C();
    v30 = a3;
    *(inited + 48) = sub_1BC8F8384();
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = 0x80000001BC90BD70;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 80) = 0xD000000000000027;
    v58 = 0x80000001BC90BDD0;
    *(inited + 88) = 0x80000001BC90BDD0;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v57[2] = v29;
    v31 = sub_1BC8F7AD4();
    v32 = sub_1BC8F7BE4();
    v33 = [v20 objectForKey_];

    if (v33)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
    }

    v34 = v68;
    v71[0] = v69;
    v71[1] = v70;
    if (*(&v70 + 1))
    {
      v35 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v35 ^ 1u, 1, v34);
      if (__swift_getEnumTagSinglePayload(v14, 1, v34) != 1)
      {
        v57[0] = v20;
        v57[1] = a1;
        v36 = isa;
        v37 = v64;
        (*(isa + 4))(v64, v14, v34);
        v38 = v66;
        sub_1BC8F72B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A0, &qword_1BC8FEA70);
        v39 = sub_1BC8F72C4();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1BC8FC230;
        (*(v40 + 104))(v42 + v41, *MEMORY[0x1E6969A58], v39);
        sub_1BC8C12CC();
        v43 = v59;
        sub_1BC8F71D4();
        v44 = v65;
        sub_1BC8F72A4();

        v45 = *(v36 + 1);
        v45(v43, v34);
        (*(v62 + 8))(v38, v63);
        v46 = sub_1BC8F6D94();
        LOBYTE(v39) = v47;
        (*(v60 + 8))(v44, v61);
        if (v39)
        {
          v45(v37, v34);
        }

        else
        {
          v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          if (!v48)
          {
            v53 = sub_1BC803CBC(0xD000000000000027, v58);
            if (v54)
            {
              v55 = v53;
              swift_isUniquelyReferenced_nonNull_native();
              *&v71[0] = v31;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A8, &qword_1BC8FEA78);
              sub_1BC8F8734();
              v31 = *&v71[0];

              v56 = *(*(v31 + 56) + 8 * v55);
              sub_1BC8F8754();
            }

            v20 = v57[0];
            v45(v64, v34);
            goto LABEL_26;
          }

          v49 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v71[0] = v31;
          sub_1BC83D5E4(v49, 0xD000000000000027, v58, isUniquelyReferenced_nonNull_native);
          v45(v64, v34);
          v31 = *&v71[0];
        }

        v20 = v57[0];
LABEL_26:
        sub_1BC7E5BAC(v31);
        v52 = v51;

        sub_1BC8EB8A8(8, v52);

        return;
      }
    }

    else
    {
      sub_1BC7E6180(v71, &unk_1EBCF5E50, &qword_1BC8FE850);
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v34);
    }

    sub_1BC7E6180(v14, &unk_1EBCF5D80, &qword_1BC8FEA60);
    goto LABEL_26;
  }

  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v21 = sub_1BC8F7734();
  __swift_project_value_buffer(v21, qword_1EDC2B3C0);
  v68 = sub_1BC8F7714();
  v22 = sub_1BC8F81E4();
  if (os_log_type_enabled(v68, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1BC7A3000, v68, v22, "Unable to report reindexing finished because analytics manager was nil", v23, 2u);
    MEMORY[0x1BFB2AA50](v23, -1, -1);
  }

  v24 = v68;
}

void sub_1BC7E5254(NSObject *a1, uint64_t *a2, void *a3, double a4)
{
  v8 = sub_1BC8F72D4();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_4();
  v71 = v12;
  v13 = sub_1BC8F6DA4();
  OUTLINED_FUNCTION_0();
  v72 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_4();
  v70 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v65 - v18;
  v20 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  if (a1)
  {
    v66 = v13;
    v67 = v10;
    v68 = v8;
    v69 = &v65 - v27;
    v28 = *a2;
    v74 = a1;
    if (a3)
    {

      v29 = a3;
    }

    else
    {
      v34 = objc_allocWithZone(MEMORY[0x1E695E000]);

      v36 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v35);
      if (!v36)
      {
        v36 = [objc_opt_self() standardUserDefaults];
      }

      v29 = v36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5298, &qword_1BC8FEA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FE840;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x80000001BC90BD50;
    v38 = sub_1BC7E613C();
    v39 = a3;
    v73 = v38;
    *(inited + 48) = sub_1BC8F8384();
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = 0x80000001BC90BD70;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 80) = 0xD00000000000001ALL;
    *(inited + 88) = 0x80000001BC90BD90;
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a4 > -9.22337204e18)
    {
      if (a4 < 9.22337204e18)
      {
        *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v40 = sub_1BC8F7AD4();
        v41 = sub_1BC8F7BE4();
        v42 = [v29 objectForKey_];

        if (v42)
        {
          sub_1BC8F8474();
          swift_unknownObjectRelease();
        }

        else
        {
          v76 = 0u;
          v75 = 0u;
        }

        v77[0] = v75;
        v77[1] = v76;
        if (*(&v76 + 1))
        {
          v43 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v19, v43 ^ 1u, 1, v20);
          if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
          {
            v65 = v29;
            v44 = v69;
            (*(v22 + 32))(v69, v19, v20);
            v45 = v71;
            sub_1BC8F72B4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A0, &qword_1BC8FEA70);
            v46 = sub_1BC8F72C4();
            OUTLINED_FUNCTION_0();
            v48 = v47;
            v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1BC8FC230;
            (*(v48 + 104))(v50 + v49, *MEMORY[0x1E6969A58], v46);
            sub_1BC8C12CC();
            sub_1BC8F71D4();
            v51 = v70;
            v52 = v44;
            sub_1BC8F72A4();

            v53 = *(v22 + 8);
            v53(v26, v20);
            (*(v67 + 8))(v45, v68);
            v54 = sub_1BC8F6D94();
            LOBYTE(v46) = v55;
            (*(v72 + 8))(v51, v66);
            if (v46)
            {
              v53(v52, v20);
            }

            else
            {
              v56 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
              if (!v56)
              {
                v61 = sub_1BC803CBC(0xD000000000000027, 0x80000001BC90BDD0);
                v29 = v65;
                if (v62)
                {
                  v63 = v61;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v77[0] = v40;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A8, &qword_1BC8FEA78);
                  v29 = v65;
                  sub_1BC8F8734();
                  v40 = *&v77[0];

                  v64 = *(*(v40 + 56) + 8 * v63);
                  sub_1BC8F8754();
                }

                v53(v69, v20);
                goto LABEL_28;
              }

              v57 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v77[0] = v40;
              sub_1BC83D5E4(v57, 0xD000000000000027, 0x80000001BC90BDD0, isUniquelyReferenced_nonNull_native);
              v53(v69, v20);
              v40 = *&v77[0];
            }

            v29 = v65;
LABEL_28:
            sub_1BC7E5BAC(v40);
            v60 = v59;

            sub_1BC8EB8A8(9, v60);

            return;
          }
        }

        else
        {
          sub_1BC7E6180(v77, &unk_1EBCF5E50, &qword_1BC8FE850);
          __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
        }

        sub_1BC7E6180(v19, &unk_1EBCF5D80, &qword_1BC8FEA60);
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EDC20730 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v30 = sub_1BC8F7734();
  __swift_project_value_buffer(v30, qword_1EDC2B3C0);
  v74 = sub_1BC8F7714();
  v31 = sub_1BC8F81E4();
  if (os_log_type_enabled(v74, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1BC7A3000, v74, v31, "Unable to report reindexing finished because analytics manager was nil", v32, 2u);
    OUTLINED_FUNCTION_6();
  }

  v33 = v74;
}

void sub_1BC7E5BAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52B0, &unk_1BC8FEA80);
    v2 = sub_1BC8F87D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1BC803CBC(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t static SpotlightIndexManagerUtilities.lastFourDigits(from:)()
{
  v0 = sub_1BC8F8A54();
  v2 = v1;
  if (sub_1BC8F7CE4() >= 5)
  {
    v3 = sub_1BC8F7D04();
    v4 = sub_1BC7E5E98(v3, v0, v2);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v0 = MEMORY[0x1BFB290C0](v4, v6, v8, v10);
  }

  return v0;
}

unint64_t sub_1BC7E5E98(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BC8F7D94();
  }

  __break(1u);
  return result;
}

id sub_1BC7E5EE4(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_1BC8F7BE4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithSuiteName_];

  return v5;
}

unint64_t sub_1BC7E5F4C()
{
  result = qword_1EBCF5278;
  if (!qword_1EBCF5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5278);
  }

  return result;
}

unint64_t sub_1BC7E5FA4()
{
  result = qword_1EBCF5280;
  if (!qword_1EBCF5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5280);
  }

  return result;
}

unint64_t sub_1BC7E5FFC()
{
  result = qword_1EBCF5288;
  if (!qword_1EBCF5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5288);
  }

  return result;
}

unint64_t sub_1BC7E6054()
{
  result = qword_1EBCF5290;
  if (!qword_1EBCF5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageFetchOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessageFetchOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1BC7E613C()
{
  result = qword_1EDC210D0;
  if (!qword_1EDC210D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC210D0);
  }

  return result;
}

uint64_t sub_1BC7E6180(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t static MessageStoreQuery.|| infix(_:_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v8 = OUTLINED_FUNCTION_55(v7);
  *(v8 + 16) = xmmword_1BC8FEAA0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v6 + 16) = v8;
  *a3 = v6 | 0xD000000000000000;
  sub_1BC7A5AB4(v4);

  return sub_1BC7A5AB4(v5);
}

unint64_t static MessageStoreQuery.! prefix(_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_21_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4 | 0xB000000000000000;

  return sub_1BC7A5AB4(v3);
}

uint64_t sub_1BC7E645C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1BC7E64CC(uint64_t a1)
{
  v2 = sub_1BC7E818C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6508(uint64_t a1)
{
  v2 = sub_1BC7E818C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6544(uint64_t a1)
{
  v2 = sub_1BC7B4AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6580(uint64_t a1)
{
  v2 = sub_1BC7B4AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E65BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7E6454();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7E65E4(uint64_t a1)
{
  v2 = sub_1BC7B4380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6620(uint64_t a1)
{
  v2 = sub_1BC7B4380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E665C(uint64_t a1)
{
  v2 = sub_1BC7E7FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6698(uint64_t a1)
{
  v2 = sub_1BC7E7FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E66D4(uint64_t a1)
{
  v2 = sub_1BC7E80E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6710(uint64_t a1)
{
  v2 = sub_1BC7E80E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E674C(uint64_t a1)
{
  v2 = sub_1BC7B43D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6788(uint64_t a1)
{
  v2 = sub_1BC7B43D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E67C4(uint64_t a1)
{
  v2 = sub_1BC7E7BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6800(uint64_t a1)
{
  v2 = sub_1BC7E7BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E683C(uint64_t a1)
{
  v2 = sub_1BC7E7CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6878(uint64_t a1)
{
  v2 = sub_1BC7E7CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E68B4(uint64_t a1)
{
  v2 = sub_1BC7B5BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E68F0(uint64_t a1)
{
  v2 = sub_1BC7B5BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E692C(uint64_t a1)
{
  v2 = sub_1BC7E8138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6968(uint64_t a1)
{
  v2 = sub_1BC7E8138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E69A4(uint64_t a1)
{
  v2 = sub_1BC7E7ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E69E0(uint64_t a1)
{
  v2 = sub_1BC7E7ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6A1C(uint64_t a1)
{
  v2 = sub_1BC7E79E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6A58(uint64_t a1)
{
  v2 = sub_1BC7E79E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}