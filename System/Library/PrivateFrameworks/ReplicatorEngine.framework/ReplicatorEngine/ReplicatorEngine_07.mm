unint64_t sub_1DEEBC480()
{
  result = qword_1ECDE3EF0;
  if (!qword_1ECDE3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3EF0);
  }

  return result;
}

unint64_t sub_1DEEBC4D8()
{
  result = qword_1ECDE3EF8;
  if (!qword_1ECDE3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3EF8);
  }

  return result;
}

unint64_t sub_1DEEBC530()
{
  result = qword_1ECDE3F00;
  if (!qword_1ECDE3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3F00);
  }

  return result;
}

unint64_t sub_1DEEBC584(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DEF8E168();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DEEBC680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEEBC6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEEBC728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEBC790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEBC7F8(uint64_t a1)
{
  v3 = type metadata accessor for NetworkBrowser.Monitor(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v25 = v1;
  v33 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E48(0, v5, 0);
  v6 = v33;
  v32 = a1 + 64;
  result = sub_1DEF8DE18();
  v8 = result;
  v9 = 0;
  v26 = a1 + 72;
  v27 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    v30 = *(a1 + 36);
    v12 = v28;
    sub_1DEECF44C(*(a1 + 56) + *(v29 + 72) * v8, v28, type metadata accessor for NetworkBrowser.Monitor);
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (!v14)
    {
      v13 = 0;
    }

    v31 = v13;

    result = sub_1DEECF3EC(v12, type metadata accessor for NetworkBrowser.Monitor);
    v33 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1DEEC7E48((v15 > 1), v16 + 1, 1);
      v6 = v33;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 16 * v16;
    *(v17 + 32) = v31;
    *(v17 + 40) = v14;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v32 + 8 * v11);
    if ((v18 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v8 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (v26 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DEE2F804(v8, v30, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v8, v30, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v27)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DEEBCAE4()
{
  v1 = *(v0 + 8);
  sub_1DEF8E7A8();
  if (v1)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEBCB54(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E12CBF60](0);
  }

  MEMORY[0x1E12CBF60](1);

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEEBCBCC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DEF8E7A8();
  if (v2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEBCC38(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1DEF8E4E8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1DEEBCC7C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v4 + 56) = v10;
  *(v4 + 64) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = v10;
  *(v4 + 88) = v10;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 16) = v9;
  *(v4 + 24) = a3;
  *(v4 + 48) = v8;
  return v4;
}

void sub_1DEEBCD00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 56) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v37 = *(v0 + 56);

  v10 = 0;
  v33 = v9;
  v34 = v4;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v37 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v37 + 56) + 8 * v12);
    v17 = qword_1ECDE2E50;

    swift_unknownObjectRetain();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1DEF8D508();
    __swift_project_value_buffer(v18, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      buf = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *buf = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v21 = sub_1DEF8D988();
      v23 = v20;
      v24 = v15;
      v25 = v14;
      v26 = v1;
      v27 = sub_1DEE12A5C(v21, v22, v38);
      v9 = v33;

      *(buf + 4) = v27;
      v1 = v26;
      v14 = v25;
      v15 = v24;
      _os_log_impl(&dword_1DEE0F000, v19, v23, "Canceling persona browser: %{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E12CCD70](v36, -1, -1);
      v4 = v34;
      MEMORY[0x1E12CCD70](buf, -1, -1);
    }

    nw_browser_set_state_changed_handler(v16, 0);
    nw_browser_cancel(v16);
    swift_beginAccess();
    v28 = sub_1DEEAF684(v15, v14);
    v30 = v29;

    if (v30)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v1 + 56);
      *(v1 + 56) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEB8DF0();
      }

      swift_unknownObjectRelease();
      sub_1DEF76E5C(v28, v32);
      *(v1 + 56) = v32;
    }

    v8 &= v8 - 1;
    swift_endAccess();
    swift_unknownObjectRelease();
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

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEEBD088()
{
  sub_1DEEBCD00();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkBrowser.Monitor(uint64_t a1)
{
  result = qword_1ECDE41C8;
  if (!qword_1ECDE41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEEBD154(uint64_t a1)
{
  sub_1DEEBD210();
  if (v1 <= 0x3F)
  {
    sub_1DEEBD260();
    if (v2 <= 0x3F)
    {
      sub_1DEF8D378();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEEBD210()
{
  if (!qword_1ECDE2C80)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2C80);
    }
  }
}

unint64_t sub_1DEEBD260()
{
  result = qword_1ECDE41E0;
  if (!qword_1ECDE41E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECDE41E0);
  }

  return result;
}

uint64_t sub_1DEEBD2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEEBD300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DEEBD354(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DEEBD36C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DEEBD3A0()
{
  result = qword_1ECDE41F0;
  if (!qword_1ECDE41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE41F0);
  }

  return result;
}

uint64_t sub_1DEEBD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v88 = a5;
  v86 = a3;
  v89 = a1;
  v77 = sub_1DEF8D698();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1DEF8D6D8();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v70 - v14;
  v15 = type metadata accessor for NetworkBrowser.Monitor(0);
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1DEF8D3F8();
  v18 = *(v81 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  sub_1DEF8D3E8();
  v83 = v15;

  sub_1DEF8D348();
  *v17 = v89;
  *(v17 + 1) = a2;
  v78 = a2;
  *(v17 + 2) = v86;
  *(v17 + 3) = a4;
  *(v17 + 4) = a7;
  *(v17 + 5) = v88;
  *(v17 + 6) = a6;
  v17[*(v15 + 36)] = 0;
  v71 = a6;

  v85 = sub_1DEF8D398();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v18 + 16;
  v82 = *(v18 + 16);
  v28 = v22;
  v80 = v22;
  v29 = v22;
  v30 = v81;
  v82(v29, v25, v81);
  v31 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v86 = v18;
  (*(v18 + 32))(v32 + v31, v28, v30);
  v33 = objc_allocWithZone(MEMORY[0x1E698E778]);

  v34 = sub_1DEF8D918();

  v35 = sub_1DEF8D918();
  v96 = sub_1DEEC4E2C;
  v97 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = sub_1DEEC4EA0;
  v95 = &block_descriptor_3;
  v36 = _Block_copy(&aBlock);
  v37 = v33;
  v38 = v30;
  v39 = v83;
  v40 = [v37 initWithIdentifier:v34 forReason:v35 invalidationBlock:v36];

  _Block_release(v36);
  v41 = v25;
  v42 = v90;
  v43 = v17;

  v44 = v80;
  v45 = v38;
  v46 = v38;
  v70 = v27;
  v47 = v82;
  v82(v80, v41, v46);
  v85 = v43;
  v48 = v43;
  v49 = v84;
  sub_1DEECF44C(v48, v84, type metadata accessor for NetworkBrowser.Monitor);
  (*(v87 + 56))(v49, 0, 1, v39);
  swift_beginAccess();
  sub_1DEF33498(v49, v44);
  swift_endAccess();
  sub_1DEEBF570();
  swift_beginAccess();
  v50 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v98 = v42[10];
  v42[10] = 0x8000000000000000;
  sub_1DEECE724(v50, v41, isUniquelyReferenced_nonNull_native, &v98);
  v42[10] = v98;
  swift_endAccess();
  sub_1DEEBEA48();
  swift_beginAccess();
  v52 = v42[11];
  if (*(v52 + 16) && (v53 = sub_1DEE13224(v89, v78), (v54 & 1) != 0))
  {
    v55 = *(v52 + 56) + 40 * v53;
    v56 = *(v55 + 16);
    v98 = *v55;
    v99 = v56;
    v57 = *(v55 + 32);
    v100 = v98;
    v101 = v56;
    swift_endAccess();
    v89 = v41;
    v47(v79, v41, v45);
    swift_beginAccess();
    sub_1DEECE8F0(&v100, &aBlock);
    sub_1DEECE8F0(&v101, &aBlock);
    swift_unknownObjectRetain();
    v58 = sub_1DEEBFCD8(&aBlock);
    v60 = v59;
    if (!(*(v87 + 48))(v59, 1, v39))
    {
      *(v60 + *(v39 + 36)) = 1;
    }

    (v58)(&aBlock, 0);
    swift_endAccess();
    v87 = *(v86 + 8);
    (v87)(v79, v45);
    v90 = v42[3];
    v61 = swift_allocObject();
    v62 = v71;
    *(v61 + 16) = v88;
    *(v61 + 24) = v62;
    v63 = v99;
    *(v61 + 32) = v98;
    *(v61 + 48) = v63;
    *(v61 + 64) = v57;
    *(v61 + 72) = v50;
    v96 = sub_1DEECE94C;
    v97 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_1DEE3F0C0;
    v95 = &block_descriptor_16;
    v64 = _Block_copy(&aBlock);

    v65 = v50;
    sub_1DEECE8F0(&v100, v91);
    sub_1DEECE8F0(&v101, v91);
    swift_unknownObjectRetain();
    v66 = v72;
    sub_1DEF8D6B8();
    v91[0] = MEMORY[0x1E69E7CC0];
    sub_1DEE1B968(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v67 = v74;
    v68 = v77;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v66, v67, v64);
    _Block_release(v64);
    sub_1DEE46B54(&v100);
    sub_1DEE46B54(&v101);

    swift_unknownObjectRelease();
    (*(v76 + 8))(v67, v68);
    (*(v73 + 8))(v66, v75);
    sub_1DEECF3EC(v85, type metadata accessor for NetworkBrowser.Monitor);
    (v87)(v89, v45);
  }

  else
  {
    swift_endAccess();

    sub_1DEECF3EC(v85, type metadata accessor for NetworkBrowser.Monitor);
    return (*(v86 + 8))(v41, v45);
  }
}

uint64_t sub_1DEEBDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 24);
    v22[0] = v7;
    v22[1] = v15;
    v16 = result;
    (*(v12 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
    v17 = v4;
    v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v12 + 32))(v19 + v18, v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_1DEECF388;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_39;
    v20 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B968(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v21 = v22[0];
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v10, v21, v20);
    _Block_release(v20);
    (*(v5 + 8))(v21, v17);
    (*(v23 + 8))(v10, v24);
  }

  return result;
}

void sub_1DEEBE208(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEEBE26C(a2, a1);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1DEEBE26C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v36 - v6;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF6010);
  v40 = *(v8 + 16);
  v41 = v8 + 16;
  v40(v12, a1, v7);
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = a1;
    v17 = v16;
    v37 = swift_slowAlloc();
    v43[0] = v37;
    *v17 = 136446210;
    sub_1DEE1B968(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = sub_1DEF8E2E8();
    v39 = v2;
    v20 = v19;
    (*(v8 + 8))(v12, v7);
    v21 = sub_1DEE12A5C(v18, v20, v43);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Invalidating browser monitor: %{public}s", v17, 0xCu);
    v22 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E12CCD70](v22, -1, -1);
    v23 = v17;
    a1 = v38;
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v24 = v44;
  v25 = v40;
  v40(v44, a1, v7);
  v26 = type metadata accessor for NetworkBrowser.Monitor(0);
  v27 = v42;
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  swift_beginAccess();
  sub_1DEF33498(v27, v24);
  swift_endAccess();
  swift_beginAccess();
  v28 = *(a2 + 80);
  if (*(v28 + 16) && (v29 = sub_1DEEAF350(a1), (v30 & 1) != 0))
  {
    v31 = *(v28 + 56);
    v32 = a1;
    v33 = *(v31 + 8 * v29);
    swift_endAccess();
    v34 = v33;
    a1 = v32;
    [v34 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  v25(v24, a1, v7);
  swift_beginAccess();
  sub_1DEF336B8(0, v24);
  swift_endAccess();
  sub_1DEEBE6B0();
  return sub_1DEEBEA48();
}

void sub_1DEEBE6B0()
{
  v1 = v0;
  os_unfair_lock_assert_owner((v0[2] + 16));
  swift_beginAccess();
  if (!*(v0[8] + 16))
  {
    swift_beginAccess();
    v2 = v0[7];
    v5 = *(v2 + 64);
    v4 = v2 + 64;
    v3 = v5;
    v6 = 1 << *(v0[7] + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    v37 = v0[7];

    v10 = 0;
    v33 = v9;
    v34 = v4;
    while (v8)
    {
LABEL_12:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v37 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v37 + 56) + 8 * v12);
      v17 = qword_1ECDE2E50;

      swift_unknownObjectRetain();
      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_1DEF8D508();
      __swift_project_value_buffer(v18, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v19, v20))
      {
        buf = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38[0] = v36;
        *buf = 136446210;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v21 = sub_1DEF8D988();
        v23 = v20;
        v24 = v15;
        v25 = v14;
        v26 = v1;
        v27 = sub_1DEE12A5C(v21, v22, v38);
        v9 = v33;

        *(buf + 4) = v27;
        v1 = v26;
        v14 = v25;
        v15 = v24;
        _os_log_impl(&dword_1DEE0F000, v19, v23, "Canceling browser: %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1E12CCD70](v36, -1, -1);
        v4 = v34;
        MEMORY[0x1E12CCD70](buf, -1, -1);
      }

      nw_browser_set_state_changed_handler(v16, 0);
      nw_browser_cancel(v16);
      swift_beginAccess();
      v28 = sub_1DEEAF684(v15, v14);
      v30 = v29;

      if (v30)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v1[7];
        v1[7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DEEB8DF0();
        }

        swift_unknownObjectRelease();
        sub_1DEF76E5C(v28, v32);
        v1[7] = v32;
      }

      v8 &= v8 - 1;
      swift_endAccess();
      swift_unknownObjectRelease();
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

        swift_beginAccess();
        v1[11] = MEMORY[0x1E69E7CC8];

        return;
      }

      v8 = *(v4 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEEBEA48()
{
  v1 = v0;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  MEMORY[0x1EEE9AC00](v109);
  v97 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v90 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v90 - v6;
  v108 = sub_1DEF8D378();
  v8 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v90 - v25;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  swift_beginAccess();
  v26 = *(v0 + 72);
  v91 = v13;
  v90 = v10;
  v93 = v20;
  if (v26)
  {

    sub_1DEEEB540();
  }

  *(v1 + 72) = 0;

  swift_beginAccess();
  v92 = v1;
  v27 = *(v1 + 64);

  v98 = v23;
  sub_1DEF8D2C8();
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v103 = (v8 + 16);
  v99 = (v8 + 8);
  v95 = (v8 + 32);
  v107 = v27;

  v33 = 0;
  v34 = v109;
  v104 = v32;
  v105 = v27 + 64;
  while (v31)
  {
    v35 = v33;
LABEL_13:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = v36 | (v35 << 6);
    v38 = v107;
    v39 = *(v107 + 48);
    v40 = sub_1DEF8D3F8();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v7, v39 + *(v41 + 72) * v37, v40);
    v42 = *(v38 + 56);
    v43 = type metadata accessor for NetworkBrowser.Monitor(0);
    sub_1DEECF44C(v42 + *(*(v43 - 8) + 72) * v37, &v7[*(v34 + 48)], type metadata accessor for NetworkBrowser.Monitor);
    v1 = v106;
    sub_1DEE17214(v7, v106, &unk_1ECDE4220, &unk_1DEF91DC0);
    v44 = v1 + *(v34 + 48);
    LOBYTE(v42) = *(v44 + *(v43 + 36));
    sub_1DEECF3EC(v44, type metadata accessor for NetworkBrowser.Monitor);
    v45 = *(v41 + 8);
    v45(v1, v40);
    if (v42)
    {
      sub_1DEE171B4(v7, &unk_1ECDE4220, &unk_1DEF91DC0);
      v33 = v35;
    }

    else
    {
      sub_1DEE17214(v7, v1, &unk_1ECDE4220, &unk_1DEF91DC0);
      v46 = v1 + *(v34 + 48);
      v47 = *v103;
      v48 = v46 + *(v43 + 32);
      v49 = v100;
      v102 = v45;
      v101 = v40;
      v50 = v108;
      v47(v100, v48, v108);
      sub_1DEECF3EC(v46, type metadata accessor for NetworkBrowser.Monitor);
      v51 = v97;
      sub_1DEE17214(v7, v97, &unk_1ECDE4220, &unk_1DEF91DC0);
      sub_1DEECF3EC(v51 + *(v109 + 48), type metadata accessor for NetworkBrowser.Monitor);
      v52 = v96;
      sub_1DEF8D2E8();
      v53 = *v99;
      (*v99)(v49, v50);
      v54 = v51;
      v55 = v101;
      v56 = v102;
      v102(v54, v101);
      v56(v1, v55);
      v57 = v98;
      LOBYTE(v56) = sub_1DEF8D308();
      sub_1DEE171B4(v7, &unk_1ECDE4220, &unk_1DEF91DC0);
      if (v56)
      {
        v58 = v108;
        v53(v57, v108);
        (*v95)(v57, v52, v58);
      }

      else
      {
        v53(v52, v108);
      }

      v33 = v35;
      v34 = v109;
    }

    v32 = v104;
    v28 = v105;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  v1 = v94;
  v7 = v108;
  (*v95)(v94, v98, v108);

  if (qword_1ECDE2E50 == -1)
  {
    goto LABEL_19;
  }

LABEL_31:
  swift_once();
LABEL_19:
  v59 = sub_1DEF8D508();
  __swift_project_value_buffer(v59, qword_1ECDF6010);
  v60 = *v103;
  v61 = v93;
  (*v103)(v93, v1, v7);
  v62 = sub_1DEF8D4D8();
  v63 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v110 = v65;
    *v64 = 136446210;
    sub_1DEE1B968(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v66 = sub_1DEF8E2E8();
    v68 = v67;
    v69 = v61;
    v70 = *v99;
    (*v99)(v69, v7);
    v71 = sub_1DEE12A5C(v66, v68, &v110);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_1DEE0F000, v62, v63, "Browser invalidation timer will fire at %{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1E12CCD70](v65, -1, -1);
    v72 = v64;
    v1 = v94;
    MEMORY[0x1E12CCD70](v72, -1, -1);
  }

  else
  {

    v73 = v61;
    v70 = *v99;
    (*v99)(v73, v7);
  }

  v74 = v100;
  sub_1DEF8D2C8();
  v75 = sub_1DEF8D308();
  v70(v74, v7);
  if ((v75 & 1) == 0)
  {
    return (v70)(v1, v7);
  }

  v76 = v91;
  sub_1DEF8D348();
  sub_1DEE1B968(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1DEF8D8F8())
  {
    v77 = v1;
  }

  else
  {
    v77 = v76;
  }

  v78 = v90;
  v60(v90, v77, v7);
  sub_1DEF8D2D8();
  v80 = v79;
  v81 = type metadata accessor for BasicTimer();
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v82 + 24) = v83;
  v111 = v81;
  v112 = &protocol witness table for BasicTimer;
  *&v110 = v82;
  type metadata accessor for KeepAliveTimer();
  v84 = swift_allocObject();
  *(v84 + 56) = 0;
  sub_1DEE2F1AC(&v110, v84 + 16);
  v85 = v92;
  *(v92 + 72) = v84;

  swift_beginAccess();
  if (*(v85 + 72))
  {
    swift_endAccess();
    v86 = *(v85 + 24);
    v87 = v1;
    v88 = swift_allocObject();
    swift_weakInit();

    sub_1DEEEB2E8(v86, sub_1DEECEA1C, v88, fmax(v80, 1.0));

    v70(v78, v7);
    v70(v76, v7);
    v70(v87, v7);
  }

  else
  {
    v70(v78, v7);
    v70(v76, v7);
    v70(v1, v7);
    return swift_endAccess();
  }
}

uint64_t sub_1DEEBF570()
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v69 - v3;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  swift_beginAccess();
  v69 = v0;
  v4 = *(v0 + 64);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v73 = v4;
  swift_bridgeObjectRetain_n();
  v10 = 0;
LABEL_4:
  if (v8)
  {
    v11 = v10;
    goto LABEL_10;
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

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = v73;
      v15 = v73[6];
      v16 = sub_1DEF8D3F8();
      v17 = *(v16 - 8);
      v18 = v70;
      (*(v17 + 16))(v70, &v15[*(v17 + 72) * v13], v16);
      v19 = v14[7];
      v20 = (type metadata accessor for NetworkBrowser.Monitor(0) - 8);
      v21 = v19 + *(*v20 + 72) * v13;
      v22 = v72;
      sub_1DEECF44C(v21, v18 + *(v72 + 48), type metadata accessor for NetworkBrowser.Monitor);
      v23 = v71;
      sub_1DEE1BA88(v18, v71, &unk_1ECDE4220, &unk_1DEF91DC0);
      v24 = v23 + *(v22 + 48);
      LOBYTE(v22) = *(v24 + v20[11]);
      sub_1DEECF3EC(v24, type metadata accessor for NetworkBrowser.Monitor);
      (*(v17 + 8))(v23, v16);
      if ((v22 & 1) == 0)
      {

        v25 = v69;

        v27 = sub_1DEEBC7F8(v26);

        v28 = sub_1DEEA3F04(v27);

        swift_beginAccess();

        v30 = sub_1DEE4FE4C(v29);
        if (*(v30 + 16) <= *(v28 + 16) >> 3)
        {
          aBlock = v28;
          sub_1DEEC8E90(v30);

          v31 = aBlock;
        }

        else
        {
          v31 = sub_1DEEC9F88(v30, v28);
        }

        v33 = 0;
        v34 = (v31 + 56);
        v35 = 1 << *(v31 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & *(v31 + 56);
        v38 = (v35 + 63) >> 6;
        v73 = &v77;
        v70 = (v31 + 56);
        v71 = v38;
        v72 = v31;
        while (2)
        {
          if (!v37)
          {
            while (1)
            {
              v40 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_40;
              }

              if (v40 >= v38)
              {
              }

              v37 = *&v34[8 * v40];
              ++v33;
              if (v37)
              {
                v33 = v40;
                break;
              }
            }
          }

          v41 = (*(v31 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v37)))));
          v43 = *v41;
          v42 = v41[1];
          if (v42)
          {
            v44 = *v41;
          }

          else
          {
            v44 = 0;
          }

          v45 = *(v25 + 32);
          v46 = *(v25 + 40);
          LOBYTE(aBlock) = *(v25 + 48);
          swift_bridgeObjectRetain_n();
          v47 = sub_1DEEF5F88(v45, v46, &aBlock, v44, v42);
          v48 = swift_allocObject();
          swift_weakInit();
          v49 = swift_allocObject();
          v49[2] = v48;
          v49[3] = v47;
          v49[4] = v43;
          v49[5] = v42;
          v49[6] = v44;
          v49[7] = v42;
          v79 = sub_1DEECEB94;
          v80 = v49;
          aBlock = MEMORY[0x1E69E9820];
          v76 = 1107296256;
          v77 = sub_1DEEC2E04;
          v78 = &block_descriptor_24;
          v50 = _Block_copy(&aBlock);
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();

          nw_browser_set_state_changed_handler(v47, v50);
          _Block_release(v50);
          v51 = swift_allocObject();
          swift_weakInit();
          v52 = swift_allocObject();
          v52[2] = v51;
          v52[3] = v47;
          v52[4] = v44;
          v52[5] = v42;
          v79 = sub_1DEECEBA4;
          v80 = v52;
          aBlock = MEMORY[0x1E69E9820];
          v76 = 1107296256;
          v77 = sub_1DEEC4D04;
          v78 = &block_descriptor_31;
          v53 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          nw_browser_set_browse_results_changed_handler(v47, v53);
          _Block_release(v53);
          nw_browser_set_queue(v47, *(v25 + 24));
          nw_browser_start(v47);
          swift_beginAccess();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = *(v25 + 56);
          v55 = v74;
          *(v25 + 56) = 0x8000000000000000;
          v56 = sub_1DEEAF684(v43, v42);
          v58 = v55[2];
          v59 = (v57 & 1) == 0;
          v60 = __OFADD__(v58, v59);
          v61 = v58 + v59;
          if (v60)
          {
            goto LABEL_41;
          }

          v62 = v57;
          if (v55[3] >= v61)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_33;
            }

            v68 = v56;
            sub_1DEEB8DF0();
            v56 = v68;
            v64 = v74;
            if (v62)
            {
              goto LABEL_18;
            }

LABEL_34:
            v64[(v56 >> 6) + 8] |= 1 << v56;
            v65 = (v64[6] + 16 * v56);
            *v65 = v43;
            v65[1] = v42;
            *(v64[7] + 8 * v56) = v47;
            v66 = v64[2];
            v60 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v60)
            {
              goto LABEL_42;
            }

            v64[2] = v67;
          }

          else
          {
            sub_1DEEB4064(v61, isUniquelyReferenced_nonNull_native);
            v56 = sub_1DEEAF684(v43, v42);
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_43;
            }

LABEL_33:
            v64 = v74;
            if ((v62 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_18:
            *(v64[7] + 8 * v56) = v47;

            swift_unknownObjectRelease();
          }

          v38 = v71;
          v31 = v72;
          v37 &= v37 - 1;
          v39 = v69;
          v34 = v70;
          *(v69 + 56) = v64;
          v25 = v39;
          swift_endAccess();
          swift_unknownObjectRelease();
          continue;
        }
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t (*sub_1DEEBFCD8(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1DEF8D3F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1DEECDF5C(v4, v9);
  return sub_1DEEBFDF0;
}

void sub_1DEEBFDF0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1DEEBFE68(void (*a1)(uint64_t *, uint64_t), uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v18 = a3[1];
  v19 = v6;
  v7 = *a3;
  v8 = *(a3 + 3);
  v9 = *(a3 + 4);
  v10 = *(a3 + 2);
  v12 = 0;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_1DEECE8F0(&v19, v11);
  sub_1DEECE8F0(&v18, v11);
  swift_unknownObjectRetain();
  a1(&v12, a4);
  sub_1DEECE9C0(v12, v13, *(&v13 + 1), v14, v15, v16, v17);
}

void sub_1DEEBFF0C(uint64_t a1)
{
  v1 = type metadata accessor for NetworkBrowser.Monitor(0);
  v57 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v48 - v5;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v48 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v62 = v6;
    v69 = MEMORY[0x1E69E7CC8];
    v70 = MEMORY[0x1E69E7CC8];
    v18 = *(Strong + 16);
    v19 = Strong;

    os_unfair_lock_lock(v18 + 4);
    v48 = v19;
    sub_1DEEC05D0(v19, &v69, &v70);
    os_unfair_lock_unlock(v18 + 4);

    v20 = *(v69 + 64);
    v63 = v69 + 64;
    v21 = 1 << *(v69 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v49 = (v21 + 63) >> 6;
    v50 = v7 + 16;
    v61 = (v7 + 32);
    v53 = v7;
    v58 = v69;
    v59 = (v7 + 8);

    v24 = 0;
    v54 = v3;
    v52 = v9;
    v51 = v14;
    while (v23)
    {
      v29 = v24;
      v30 = v62;
LABEL_17:
      v33 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v58;
      v36 = v53;
      (*(v53 + 16))(v55, *(v58 + 48) + *(v53 + 72) * v34, v30);
      v37 = v56;
      sub_1DEECF44C(*(v35 + 56) + *(v57 + 72) * v34, v56, type metadata accessor for NetworkBrowser.Monitor);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      v39 = *(v38 + 48);
      v14 = v51;
      (*(v36 + 32))();
      sub_1DEECF4B4(v37, &v14[v39], type metadata accessor for NetworkBrowser.Monitor);
      (*(*(v38 - 8) + 56))(v14, 0, 1, v38);
      v3 = v54;
      v9 = v52;
LABEL_18:
      v40 = v60;
      sub_1DEE1BA88(v14, v60, &qword_1ECDE4240, &qword_1DEF91DD0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {

        return;
      }

      sub_1DEECF4B4(v40 + *(v41 + 48), v3, type metadata accessor for NetworkBrowser.Monitor);
      v42 = v62;
      (*v61)(v9, v40, v62);
      v43 = v70;
      if (*(v70 + 16) && (v44 = sub_1DEEAF350(v9), (v45 & 1) != 0))
      {
        v25 = *(*(v43 + 56) + 8 * v44);
        v46 = *v59;
        swift_unknownObjectRetain();
        v46(v9, v42);
      }

      else
      {
        (*v59)(v9, v42);
        v25 = 0;
      }

      v26 = *(v3 + 5);
      sub_1DEECEA24();
      v27 = swift_allocError();
      *v28 = 1;
      v64 = v27;
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
      v68 = 1;
      v26(&v64, v25);
      swift_unknownObjectRelease();
      sub_1DEECE9C0(v64, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68);
      sub_1DEECF3EC(v3, type metadata accessor for NetworkBrowser.Monitor);
    }

    if (v49 <= v24 + 1)
    {
      v31 = v24 + 1;
    }

    else
    {
      v31 = v49;
    }

    v32 = v31 - 1;
    v30 = v62;
    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= v49)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        (*(*(v47 - 8) + 56))(v14, 1, 1, v47);
        v23 = 0;
        v24 = v32;
        goto LABEL_18;
      }

      v23 = *(v63 + 8 * v29);
      ++v24;
      if (v23)
      {
        v24 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEEC05D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v118 = a3;
  v124 = a2;
  v4 = type metadata accessor for NetworkBrowser.Monitor(0);
  v140 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v125 = &v114[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v114[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v114[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v114[-v12];
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v114[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v114[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v114[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v114[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v114[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v141 = &v114[-v31];
  v131 = sub_1DEF8D378();
  v32 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v126 = &v114[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v114[-v35];
  sub_1DEF8D348();
  swift_beginAccess();
  v128 = a1;
  v36 = *(a1 + 64);
  v37 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v122 = (v38 + 63) >> 6;
  v149 = (v14 + 16);
  v147 = (v14 + 32);
  v129 = (v32 + 8);
  v137 = v14;
  v144 = (v14 + 8);
  v119 = (v140 + 48);
  v136 = v36;

  v41 = v29;
  v42 = v13;
  v43 = 0;
  *&v44 = 136446466;
  v115 = v44;
  v142 = v4;
  v143 = v24;
  v133 = v42;
  v145 = v10;
  v146 = v41;
  v139 = v37;
  if (!v40)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v48 = v43;
LABEL_16:
      v53 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v54 = v53 | (v48 << 6);
      v55 = v136;
      v56 = v137;
      v50 = v133;
      (*(v137 + 16))(v134, *(v136 + 48) + *(v137 + 72) * v54, v133);
      v57 = v135;
      sub_1DEECF44C(*(v55 + 56) + *(v140 + 72) * v54, v135, type metadata accessor for NetworkBrowser.Monitor);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      v59 = *(v58 + 48);
      v51 = v146;
      (*(v56 + 32))();
      sub_1DEECF4B4(v57, v51 + v59, type metadata accessor for NetworkBrowser.Monitor);
      (*(*(v58 - 8) + 56))(v51, 0, 1, v58);
      v49 = v143;
      v47 = v141;
LABEL_17:
      sub_1DEE1BA88(v51, v47, &qword_1ECDE4240, &qword_1DEF91DD0);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      if ((*(*(v60 - 8) + 48))(v47, 1, v60) == 1)
      {

        sub_1DEEBE6B0();
        sub_1DEEBEA48();
        return (*v129)(v130, v131);
      }

      v61 = *(v60 + 48);
      v24 = v49;
      v42 = v50;
      (*v147)(v49, v47, v50);
      v62 = v47 + v61;
      v63 = v145;
      sub_1DEECF4B4(v62, v145, type metadata accessor for NetworkBrowser.Monitor);
      if (*(v63 + *(v142 + 36)))
      {
        sub_1DEECF3EC(v63, type metadata accessor for NetworkBrowser.Monitor);
        (*v144)(v49, v50);
        goto LABEL_43;
      }

      v64 = v63;
      v65 = v126;
      sub_1DEF8D2E8();
      v66 = sub_1DEF8D308();
      (*v129)(v65, v131);
      if (v66)
      {
        break;
      }

      sub_1DEECF3EC(v64, type metadata accessor for NetworkBrowser.Monitor);
      v24 = v49;
      (*v144)(v49, v50);
      v37 = v139;
      v41 = v146;
      if (!v40)
      {
        goto LABEL_6;
      }
    }

    v67 = v49;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v68 = sub_1DEF8D508();
    __swift_project_value_buffer(v68, qword_1ECDF6010);
    v69 = *v149;
    v70 = v120;
    (*v149)(v120, v67, v50);
    v71 = v121;
    sub_1DEECF44C(v145, v121, type metadata accessor for NetworkBrowser.Monitor);
    v72 = sub_1DEF8D4D8();
    v73 = sub_1DEF8DC98();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v148 = v117;
      *v74 = v115;
      sub_1DEE1B968(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v116 = v73;
      v75 = sub_1DEF8E2E8();
      v76 = v70;
      v77 = v71;
      v79 = v78;
      v138 = *v144;
      v138(v76, v42);
      v80 = sub_1DEE12A5C(v75, v79, &v148);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2082;
      v81 = *v77;
      v82 = v77[1];

      sub_1DEECF3EC(v77, type metadata accessor for NetworkBrowser.Monitor);
      v83 = sub_1DEE12A5C(v81, v82, &v148);

      *(v74 + 14) = v83;
      _os_log_impl(&dword_1DEE0F000, v72, v116, "Browser monitor %{public}s failed to find device: %{public}s", v74, 0x16u);
      v84 = v117;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v84, -1, -1);
      v85 = v74;
      v86 = v142;
      v67 = v143;
      MEMORY[0x1E12CCD70](v85, -1, -1);
    }

    else
    {

      sub_1DEECF3EC(v71, type metadata accessor for NetworkBrowser.Monitor);
      v138 = *v144;
      v138(v70, v42);
      v86 = v142;
    }

    v69(v127, v67, v42);
    swift_beginAccess();
    v87 = sub_1DEEBFCD8(&v148);
    v89 = v88;
    if (!(*v119)(v88, 1, v86))
    {
      *(v89 + *(v86 + 36)) = 1;
    }

    (v87)(&v148, 0);
    swift_endAccess();
    v138(v127, v42);
    v90 = v132;
    v69(v132, v67, v42);
    sub_1DEECF44C(v145, v125, type metadata accessor for NetworkBrowser.Monitor);
    v91 = v124;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = *v91;
    v93 = v148;
    *v91 = 0x8000000000000000;
    v94 = sub_1DEEAF350(v90);
    v96 = *(v93 + 16);
    v97 = (v95 & 1) == 0;
    v98 = __OFADD__(v96, v97);
    v99 = v96 + v97;
    if (v98)
    {
      goto LABEL_47;
    }

    v100 = v95;
    if (*(v93 + 24) >= v99)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v112 = v94;
        sub_1DEEB8F5C();
        v94 = v112;
      }
    }

    else
    {
      sub_1DEEB432C(v99, isUniquelyReferenced_nonNull_native);
      v94 = sub_1DEEAF350(v132);
      if ((v100 & 1) != (v101 & 1))
      {
        goto LABEL_49;
      }
    }

    v24 = v143;
    v102 = v148;
    if (v100)
    {
      sub_1DEECEA78(v125, v148[7] + *(v140 + 72) * v94);
      v138(v132, v42);
    }

    else
    {
      v148[(v94 >> 6) + 8] |= 1 << v94;
      v103 = v94;
      v104 = v132;
      v69((v102[6] + *(v137 + 72) * v94), v132, v42);
      sub_1DEECF4B4(v125, v102[7] + *(v140 + 72) * v103, type metadata accessor for NetworkBrowser.Monitor);
      v138(v104, v42);
      v105 = v102[2];
      v98 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v98)
      {
        goto LABEL_48;
      }

      v102[2] = v106;
      v24 = v143;
    }

    *v124 = v102;

    v69(v123, v24, v42);
    v107 = v128;
    swift_beginAccess();
    v108 = *(v107 + 80);
    if (*(v108 + 16) && (v109 = sub_1DEEAF350(v24), (v110 & 1) != 0))
    {
      v111 = *(*(v108 + 56) + 8 * v109);
      swift_unknownObjectRetain();
    }

    else
    {
      v111 = 0;
    }

    swift_endAccess();
    sub_1DEF336B8(v111, v123);
    sub_1DEECF3EC(v145, type metadata accessor for NetworkBrowser.Monitor);
    v138(v24, v42);
LABEL_43:
    v37 = v139;
    v41 = v146;
  }

  while (v40);
LABEL_6:
  if (v122 <= v43 + 1)
  {
    v45 = v43 + 1;
  }

  else
  {
    v45 = v122;
  }

  v46 = v45 - 1;
  v47 = v141;
  while (1)
  {
    v48 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v48 >= v122)
    {
      v49 = v24;
      v50 = v42;
      v51 = v41;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
      v40 = 0;
      v43 = v46;
      goto LABEL_17;
    }

    v40 = *(v37 + 8 * v48);
    ++v43;
    if (v40)
    {
      v43 = v48;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

void sub_1DEEC1488(int a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t (**a5)(uint64_t, uint64_t), uint64_t a6, void (**a7)(char *, uint64_t), void *a8)
{
  v111 = a5;
  LODWORD(v12) = a1;
  v13 = type metadata accessor for NetworkBrowser.Monitor(0);
  v115 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v106 - v16;
  v121 = sub_1DEF8D3F8();
  v117 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v116 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v106 - v24;
  v25 = sub_1DEF8D788();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v107 = Strong;
    v30 = *(Strong + 24);
    *v28 = v30;
    (*(v26 + 104))(v28, *MEMORY[0x1E69E8020], v25);
    v31 = v30;
    LOBYTE(v30) = sub_1DEF8D7B8();
    (*(v26 + 8))(v28, v25);
    if ((v30 & 1) == 0)
    {
      goto LABEL_49;
    }

    v110 = a6;
    if (qword_1ECDE2E50 != -1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v32 = sub_1DEF8D508();
      v33 = __swift_project_value_buffer(v32, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v119 = v33;
      v34 = sub_1DEF8D4D8();
      v35 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      v36 = os_log_type_enabled(v34, v35);
      v112 = v22;
      v22 = a7;
      v37 = a8;
      if (v36)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v122 = v39;
        *v38 = 136446210;
        v128 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v40 = sub_1DEF8D988();
        v42 = sub_1DEE12A5C(v40, v41, &v122);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_1DEE0F000, v34, v35, "%{public}s; Browser state changed", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1E12CCD70](v39, -1, -1);
        MEMORY[0x1E12CCD70](v38, -1, -1);
      }

      if (v12 > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        swift_unknownObjectRetain();
        v96 = sub_1DEF8D4D8();
        v97 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v122 = v99;
          *v98 = 136446210;
          v128 = a4;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
          v100 = sub_1DEF8D988();
          v102 = sub_1DEE12A5C(v100, v101, &v122);

          *(v98 + 4) = v102;
          _os_log_impl(&dword_1DEE0F000, v96, v97, "%{public}s; Browser state: ready", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v99);
          MEMORY[0x1E12CCD70](v99, -1, -1);
          MEMORY[0x1E12CCD70](v98, -1, -1);
        }

        goto LABEL_41;
      }

      if (v12 != 2)
      {
        goto LABEL_41;
      }

      swift_unknownObjectRetain();
      v43 = sub_1DEF8D4D8();
      v44 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v122 = v46;
        *v45 = 136446210;
        v128 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v47 = sub_1DEF8D988();
        v49 = sub_1DEE12A5C(v47, v48, &v122);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_1DEE0F000, v43, v44, "%{public}s; Browser state: failed", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1E12CCD70](v46, -1, -1);
        MEMORY[0x1E12CCD70](v45, -1, -1);
      }

      swift_unknownObjectRetain();
      v50 = sub_1DEF8D4D8();
      v51 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v122 = v53;
        *v52 = 136446210;
        v128 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v54 = sub_1DEF8D988();
        v56 = sub_1DEE12A5C(v54, v55, &v122);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_1DEE0F000, v50, v51, "Canceling browser: %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1E12CCD70](v53, -1, -1);
        MEMORY[0x1E12CCD70](v52, -1, -1);
      }

      a7 = v112;
      v57 = v110;
      nw_browser_set_state_changed_handler(a4, 0);
      nw_browser_cancel(a4);
      v58 = v107;
      swift_beginAccess();

      sub_1DEF333A0(0, v111, v57);
      swift_endAccess();
      v127 = MEMORY[0x1E69E7CC8];
      v128 = MEMORY[0x1E69E7CC8];
      v59 = *(v58 + 16);

      os_unfair_lock_lock(v59 + 4);
      sub_1DEEC22F0(v58, v22, v37, &v128, &v127);
      os_unfair_lock_unlock(v59 + 4);

      v60 = v127 + 64;
      v61 = 1 << *(v127 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v63 = v62 & *(v127 + 64);
      v64 = (v61 + 63) >> 6;
      v109 = v117 + 16;
      v119 = (v117 + 32);
      v111 = (v117 + 8);
      v110 = v127;

      a4 = 0;
      a8 = &unk_1ECDE4220;
      v12 = v116;
      v108 = v60;
      while (v63)
      {
        v69 = a4;
        v70 = v121;
LABEL_28:
        v73 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v74 = v73 | (v69 << 6);
        v75 = v110;
        v76 = v117;
        (*(v117 + 16))(v113, *(v110 + 48) + *(v117 + 72) * v74, v70);
        v77 = v114;
        sub_1DEECF44C(*(v75 + 56) + *(v115 + 72) * v74, v114, type metadata accessor for NetworkBrowser.Monitor);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        v79 = *(v78 + 48);
        a7 = v112;
        (*(v76 + 32))();
        sub_1DEECF4B4(v77, a7 + v79, type metadata accessor for NetworkBrowser.Monitor);
        (*(*(v78 - 8) + 56))(a7, 0, 1, v78);
        v12 = v116;
        v60 = v108;
LABEL_29:
        v80 = v118;
        sub_1DEE1BA88(a7, v118, &qword_1ECDE4240, &qword_1DEF91DD0);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
        {

          return;
        }

        sub_1DEECF4B4(v80 + *(v81 + 48), v120, type metadata accessor for NetworkBrowser.Monitor);
        v82 = v121;
        (*v119)(v12, v80, v121);
        v83 = v128;
        if (v128[2].isa && (v84 = sub_1DEEAF350(v12), (v85 & 1) != 0))
        {
          v65 = *(v83[7].isa + v84);
          v86 = *v111;
          swift_unknownObjectRetain();
          v86(v12, v82);
        }

        else
        {
          (*v111)(v12, v82);
          v65 = 0;
        }

        v22 = v120;
        v66 = *(v120 + 40);
        sub_1DEECEA24();
        v67 = swift_allocError();
        *v68 = 0;
        v122 = v67;
        v123 = 0u;
        v124 = 0u;
        v125 = 0;
        v126 = 1;
        v66(&v122, v65);
        swift_unknownObjectRelease();
        sub_1DEECE9C0(v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126);
        sub_1DEECF3EC(v22, type metadata accessor for NetworkBrowser.Monitor);
        a8 = &unk_1ECDE4220;
      }

      if (v64 <= &a4->isa + 1)
      {
        v71 = &a4->isa + 1;
      }

      else
      {
        v71 = v64;
      }

      v72 = (v71 - 1);
      v70 = v121;
      while (1)
      {
        v69 = (&a4->isa + 1);
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v69 >= v64)
        {
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          (*(*(v87 - 8) + 56))(a7, 1, 1, v87);
          v63 = 0;
          a4 = v72;
          goto LABEL_29;
        }

        v63 = *(v60 + 8 * v69);
        a4 = (a4 + 1);
        if (v63)
        {
          a4 = v69;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
    }

    if (v12 == 3)
    {
      swift_unknownObjectRetain();
      v88 = sub_1DEF8D4D8();
      v89 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v88, v89))
      {
LABEL_45:

        return;
      }

      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v122 = v91;
      *v90 = 136446210;
      v128 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v103 = sub_1DEF8D988();
      v105 = sub_1DEE12A5C(v103, v104, &v122);

      *(v90 + 4) = v105;
      v95 = "%{public}s; Browser state: cancelled";
    }

    else
    {
      if (v12 != 4)
      {
LABEL_41:

        return;
      }

      swift_unknownObjectRetain();
      v88 = sub_1DEF8D4D8();
      v89 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v88, v89))
      {
        goto LABEL_45;
      }

      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v122 = v91;
      *v90 = 136446210;
      v128 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v92 = sub_1DEF8D988();
      v94 = sub_1DEE12A5C(v92, v93, &v122);

      *(v90 + 4) = v94;
      v95 = "%{public}s; Browser state: waiting";
    }

    _os_log_impl(&dword_1DEE0F000, v88, v89, v95, v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x1E12CCD70](v91, -1, -1);
    MEMORY[0x1E12CCD70](v90, -1, -1);
    goto LABEL_45;
  }
}

uint64_t sub_1DEEC22F0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v130 = a2;
  v9 = type metadata accessor for NetworkBrowser.Monitor(0);
  v123 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v108 - v14;
  v15 = sub_1DEF8D3F8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v108 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v108 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v108 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v118 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v108 - v30;
  v115 = a1;
  swift_beginAccess();

  v32 = v134;
  v33 = sub_1DEECF0F8(v31, v130, a3);
  v108 = v32;

  v34 = 0;
  v36 = v33 + 8;
  v35 = v33[8];
  v111 = v33;
  v37 = *(v33 + 32);
  v38 = v20;
  v39 = 1 << v37;
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v35;
  v42 = (v39 + 63) >> 6;
  v134 = (v16 + 16);
  v122 = (v16 + 32);
  v114 = (v123 + 48);
  v120 = v16;
  v130 = (v16 + 8);
  v116 = a4;
  v121 = v9;
  v126 = v38;
  v113 = v36;
  v112 = v42;
  v119 = a5;
  while (v41)
  {
    v44 = v34;
LABEL_16:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v44 << 6);
    v50 = v111;
    v51 = v120;
    v52 = v109;
    (*(v120 + 16))(v109, v111[6] + *(v120 + 72) * v49, v15);
    v53 = v110;
    sub_1DEECF44C(v50[7] + *(v123 + 72) * v49, v110, type metadata accessor for NetworkBrowser.Monitor);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    v55 = *(v54 + 48);
    v56 = *(v51 + 32);
    v57 = v118;
    v56(v118, v52, v15);
    v58 = v53;
    v47 = v57;
    sub_1DEECF4B4(v58, &v57[v55], type metadata accessor for NetworkBrowser.Monitor);
    (*(*(v54 - 8) + 56))(v57, 0, 1, v54);
    v9 = v121;
LABEL_17:
    v59 = v47;
    v60 = v117;
    sub_1DEE1BA88(v59, v117, &qword_1ECDE4240, &qword_1DEF91DD0);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
    }

    v62 = *(v61 + 48);
    v63 = v131;
    (*v122)(v131, v60, v15);
    sub_1DEECF4B4(v60 + v62, v132, type metadata accessor for NetworkBrowser.Monitor);
    v128 = *v134;
    v128(v125, v63, v15);
    v64 = v115;
    swift_beginAccess();
    v65 = sub_1DEEBFCD8(v133);
    v67 = v66;
    if (!(*v114)(v66, 1, v9))
    {
      *(v67 + *(v9 + 36)) = 1;
    }

    (v65)(v133, 0);
    v68 = v116;
    v69 = v119;
    swift_endAccess();
    v129 = *v130;
    v129(v125, v15);
    v70 = v131;
    v71 = v128;
    v128(v126, v131, v15);
    swift_beginAccess();
    v72 = *(v64 + 80);
    v73 = v70;
    if (*(v72 + 16) && (v74 = sub_1DEEAF350(v70), (v75 & 1) != 0))
    {
      v76 = *(*(v72 + 56) + 8 * v74);
      swift_endAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133[0] = *v68;
      ObjectType = swift_getObjectType();
      v79 = v76;
      v80 = v126;
      sub_1DEF41AB8(v79, v126, isUniquelyReferenced_nonNull_native, v133, ObjectType);
      v129(v80, v15);
      *v68 = v133[0];
    }

    else
    {
      swift_endAccess();
      v81 = v126;
      v82 = sub_1DEEAF350(v126);
      if (v83)
      {
        v84 = v82;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v86 = *v68;
        v133[0] = *v68;
        if ((v85 & 1) == 0)
        {
          sub_1DEEB9288();
          v86 = v133[0];
        }

        v87 = v129;
        v129((*(v86 + 48) + *(v120 + 72) * v84), v15);
        swift_unknownObjectRelease();
        sub_1DEF7695C(v84, v86);
        v87(v126, v15);
        *v68 = v86;
        v69 = v119;
      }

      else
      {
        v129(v81, v15);
      }

      v71 = v128;
    }

    v88 = v127;
    v71(v127, v73, v15);
    sub_1DEECF44C(v132, v124, type metadata accessor for NetworkBrowser.Monitor);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = *v69;
    v90 = v133[0];
    v91 = v69;
    *v69 = 0x8000000000000000;
    v93 = sub_1DEEAF350(v88);
    v94 = *(v90 + 16);
    v95 = (v92 & 1) == 0;
    v96 = v94 + v95;
    if (__OFADD__(v94, v95))
    {
      goto LABEL_43;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if (v89)
      {
        v100 = v133[0];
        if (v92)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DEEB8F5C();
        v100 = v133[0];
        if (v97)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DEEB432C(v96, v89);
      v98 = sub_1DEEAF350(v127);
      if ((v97 & 1) != (v99 & 1))
      {
        goto LABEL_45;
      }

      v93 = v98;
      v100 = v133[0];
      if (v97)
      {
LABEL_4:
        sub_1DEECEA78(v124, v100[7] + *(v123 + 72) * v93);
        v43 = v129;
        v129(v127, v15);
        sub_1DEECF3EC(v132, type metadata accessor for NetworkBrowser.Monitor);
        v43(v131, v15);
        goto LABEL_5;
      }
    }

    v100[(v93 >> 6) + 8] |= 1 << v93;
    v101 = v127;
    v71(v100[6] + *(v120 + 72) * v93, v127, v15);
    sub_1DEECF4B4(v124, v100[7] + *(v123 + 72) * v93, type metadata accessor for NetworkBrowser.Monitor);
    v102 = v129;
    v129(v101, v15);
    sub_1DEECF3EC(v132, type metadata accessor for NetworkBrowser.Monitor);
    v102(v131, v15);
    v103 = v100[2];
    v104 = __OFADD__(v103, 1);
    v105 = v103 + 1;
    if (v104)
    {
      goto LABEL_44;
    }

    v100[2] = v105;
LABEL_5:
    *v91 = v100;

    v9 = v121;
    v36 = v113;
    v42 = v112;
  }

  if (v42 <= v34 + 1)
  {
    v45 = v34 + 1;
  }

  else
  {
    v45 = v42;
  }

  v46 = v45 - 1;
  v47 = v118;
  while (1)
  {
    v44 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v44 >= v42)
    {
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v106 - 8) + 56))(v47, 1, 1, v106);
      v41 = 0;
      v34 = v46;
      goto LABEL_17;
    }

    v41 = v36[v44];
    ++v34;
    if (v41)
    {
      v34 = v44;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEC2E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEEC2E74(unint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, void (**a5)(NSObject *, uint64_t, unint64_t), void *a6, uint8_t *a7)
{
  v140 = a6;
  v154 = a5;
  v10 = type metadata accessor for NetworkBrowser.Monitor(0);
  v150 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D3F8();
  v151 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v148 = v133 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v153 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = v133 - v20;
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v26 = result;
  v27 = *(result + 24);
  *v24 = v27;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v28 = v27;
  LOBYTE(v27) = sub_1DEF8D7B8();
  (*(v22 + 8))(v24, v21);
  if ((v27 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (qword_1ECDE2E50 != -1)
  {
LABEL_62:
    swift_once();
  }

  v29 = sub_1DEF8D508();
  __swift_project_value_buffer(v29, qword_1ECDF6010);
  v30 = v154;
  swift_unknownObjectRetain();
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v33 = os_log_type_enabled(v31, v32);
  v147 = v12;
  v146 = v14;
  v139 = a7;
  if (v33)
  {
    v34 = a1;
    v35 = swift_slowAlloc();
    v36 = a2;
    v37 = swift_slowAlloc();
    v156 = v37;
    *v35 = 136446210;
    v165[0] = v30;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v38 = sub_1DEF8D988();
    v40 = sub_1DEE12A5C(v38, v39, &v156);
    v30 = v154;

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "%{public}s; Browse results changed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v41 = v37;
    a2 = v36;
    MEMORY[0x1E12CCD70](v41, -1, -1);
    v42 = v35;
    a1 = v34;
    MEMORY[0x1E12CCD70](v42, -1, -1);
  }

  if (!(a1 | a2))
  {
  }

  swift_unknownObjectRetain();
  v43 = swift_unknownObjectRetain();
  changes = nw_browse_result_get_changes(v43, a2);
  if ((changes & 2) != 0)
  {
    swift_unknownObjectRetain();
    v45 = sub_1DEF8D4D8();
    v54 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v45, v54))
    {
      goto LABEL_17;
    }

    v55 = swift_slowAlloc();
    v145 = changes;
    changes = a1;
    v56 = v55;
    v57 = a2;
    v58 = swift_slowAlloc();
    v156 = v58;
    *v56 = 136446210;
    v165[0] = v30;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v59 = sub_1DEF8D988();
    v61 = v26;
    v62 = sub_1DEE12A5C(v59, v60, &v156);

    *(v56 + 4) = v62;
    v26 = v61;
    _os_log_impl(&dword_1DEE0F000, v45, v54, "%{public}s; Browser added device", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v63 = v58;
    a2 = v57;
    MEMORY[0x1E12CCD70](v63, -1, -1);
    v64 = v56;
    a1 = changes;
    LOBYTE(changes) = v145;
    goto LABEL_16;
  }

  swift_unknownObjectRetain();
  v45 = sub_1DEF8D4D8();
  v46 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v47 = os_log_type_enabled(v45, v46);
  if ((changes & 4) != 0)
  {
    if (!v47)
    {
      goto LABEL_17;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v134 = a1;
    v67 = v66;
    v156 = v66;
    *v65 = 136446210;
    v165[0] = v154;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v68 = sub_1DEF8D988();
    v70 = a2;
    v71 = sub_1DEE12A5C(v68, v69, &v156);

    *(v65 + 4) = v71;
    a2 = v70;
    _os_log_impl(&dword_1DEE0F000, v45, v46, "%{public}s; Browser removed device", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v72 = v67;
    a1 = v134;
    MEMORY[0x1E12CCD70](v72, -1, -1);
    v64 = v65;
LABEL_16:
    MEMORY[0x1E12CCD70](v64, -1, -1);
LABEL_17:

    if (!(a2 | a1))
    {
      v73 = v154;
      swift_unknownObjectRetain();
      v74 = sub_1DEF8D4D8();
      v75 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v156 = v77;
        *v76 = 136446210;
        v165[0] = v73;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v78 = sub_1DEF8D988();
        v80 = sub_1DEE12A5C(v78, v79, &v156);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1DEE0F000, v74, v75, "%{public}s; No usable endpoint found in browser results", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1E12CCD70](v77, -1, -1);
        MEMORY[0x1E12CCD70](v76, -1, -1);
      }
    }

    if (a2)
    {
      v81 = a2;
    }

    else
    {
      v81 = a1;
    }

    a7 = nw_browse_result_copy_endpoint(v81);
    if (nw_endpoint_get_device_id())
    {
      v82 = sub_1DEF8D9E8();
      v84 = v83;
      if (nw_endpoint_get_device_name())
      {
        v133[1] = a2;
        v85 = changes & 2;
        v86 = sub_1DEF8D9E8();
        v88 = v87;
        *&v166 = v82;
        *(&v166 + 1) = v84;
        v167 = v86;
        v168 = v87;
        v169 = a7;
        LOBYTE(v165[0]) = v85 == 0;
        v165[1] = v82;
        v165[2] = v84;
        v165[3] = v86;
        v165[4] = v87;
        v165[5] = a7;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain_n();
        v89 = sub_1DEF8D4D8();
        v90 = v82;
        v91 = sub_1DEF8DCB8();

        v92 = os_log_type_enabled(v89, v91);
        v134 = a1;
        v145 = a7;
        v144 = v84;
        v142 = v90;
        v143 = v88;
        v141 = v86;
        if (v92)
        {
          a7 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v154 = v85;
          v94 = v86;
          v95 = v88;
          v96 = v93;
          v156 = v93;
          *a7 = 136446466;
          v97 = sub_1DEE12A5C(v90, v84, &v156);

          *(a7 + 4) = v97;
          *(a7 + 6) = 2082;
          v98 = v94;
          v85 = v154;
          a1 = sub_1DEE12A5C(v98, v95, &v156);

          *(a7 + 14) = a1;
          _os_log_impl(&dword_1DEE0F000, v89, v91, "Browser found device with ID: %{public}s; name: %{public}s", a7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v96, -1, -1);
          MEMORY[0x1E12CCD70](a7, -1, -1);
        }

        else
        {
        }

        v103 = v139;
        v163 = MEMORY[0x1E69E7CC8];
        v164 = MEMORY[0x1E69E7CC8];
        v104 = *(v26 + 16);

        os_unfair_lock_lock(v104 + 4);
        v133[0] = v26;
        sub_1DEEC3FEC(v165, v26, &v166, v140, v103, &v164, &v163);
        os_unfair_lock_unlock(v104 + 4);

        v14 = (v164 + 64);
        v105 = 1 << *(v164 + 32);
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        isa = v106 & *(v164 + 64);
        v135 = (v105 + 63) >> 6;
        v137 = v151 + 16;
        v154 = (v151 + 32);
        v140 = ((v85 >> 1) ^ 1);
        v139 = (v151 + 8);
        v138 = v164;

        v12 = 0;
        a2 = v147;
        v136 = v14;
        while (1)
        {
          if (!isa)
          {
            if (v135 <= v12 + 1)
            {
              v110 = v12 + 1;
            }

            else
            {
              v110 = v135;
            }

            v111 = v110 - 1;
            while (1)
            {
              v109 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v109 >= v135)
              {
                a1 = a2;
                v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
                v132 = v153;
                (*(*(v131 - 8) + 56))(v153, 1, 1, v131);
                isa = 0;
                v12 = v111;
                v122 = v132;
                goto LABEL_54;
              }

              isa = v14[v109].isa;
              ++v12;
              if (isa)
              {
                v12 = v109;
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v109 = v12;
LABEL_53:
          v112 = __clz(__rbit64(isa));
          isa &= isa - 1;
          v113 = v112 | (v109 << 6);
          v114 = v138;
          v115 = v151;
          v116 = v148;
          (*(v151 + 16))(v148, *(v138 + 48) + *(v151 + 72) * v113, a2);
          v117 = v149;
          sub_1DEECF44C(*(v114 + 56) + *(v150 + 72) * v113, v149, type metadata accessor for NetworkBrowser.Monitor);
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          v119 = a2;
          v120 = *(v118 + 48);
          v121 = *(v115 + 32);
          v122 = v153;
          a1 = v119;
          v121(v153, v116);
          sub_1DEECF4B4(v117, &v122[v120], type metadata accessor for NetworkBrowser.Monitor);
          (*(*(v118 - 8) + 56))(v122, 0, 1, v118);
          v14 = v136;
LABEL_54:
          v123 = v122;
          v124 = v152;
          sub_1DEE1BA88(v123, v152, &qword_1ECDE4240, &qword_1DEF91DD0);
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            sub_1DEE171B4(v165, &qword_1ECDE4258, &unk_1DEF91DE8);
            swift_unknownObjectRelease();
          }

          v126 = v124 + *(v125 + 48);
          v26 = *(v126 + 40);

          sub_1DEECF3EC(v126, type metadata accessor for NetworkBrowser.Monitor);
          v156 = v140;
          v157 = v142;
          v158 = v144;
          v159 = v141;
          v160 = v143;
          v161 = v145;
          v162 = 0;
          a7 = v146;
          (*v154)(v146, v124, a1);
          v127 = v163;
          if (!*(v163 + 16))
          {
            break;
          }

          sub_1DEE17214(v165, v155, &qword_1ECDE4258, &unk_1DEF91DE8);
          v128 = sub_1DEEAF350(a7);
          if ((v129 & 1) == 0)
          {
            goto LABEL_41;
          }

          v108 = *(*(v127 + 56) + 8 * v128);
          v130 = *v139;
          swift_unknownObjectRetain();
          v130(a7, a1);
LABEL_42:
          (v26)(&v156, v108);

          swift_unknownObjectRelease();
          sub_1DEECE9C0(v156, v157, v158, v159, v160, v161, v162);
          a2 = v147;
        }

        sub_1DEE17214(v165, v155, &qword_1ECDE4258, &unk_1DEF91DE8);
LABEL_41:
        (*v139)(a7, a1);
        v108 = 0;
        goto LABEL_42;
      }

      v99 = sub_1DEF8D4D8();
      v100 = sub_1DEF8DC98();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        v102 = "Browser found Remote device with no name";
        goto LABEL_34;
      }
    }

    else
    {
      v99 = sub_1DEF8D4D8();
      v100 = sub_1DEF8DC98();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        v102 = "Browser found remote device with no ID";
LABEL_34:
        _os_log_impl(&dword_1DEE0F000, v99, v100, v102, v101, 2u);
        MEMORY[0x1E12CCD70](v101, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (v47)
  {
    v48 = v30;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v156 = v50;
    *v49 = 136446210;
    v165[0] = v48;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v51 = sub_1DEF8D988();
    v53 = sub_1DEE12A5C(v51, v52, &v156);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1DEE0F000, v45, v46, "%{public}s; Browser found an uninteresting change", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12CCD70](v50, -1, -1);
    MEMORY[0x1E12CCD70](v49, -1, -1);
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEEC3FEC(char *a1, uint64_t a2, __int128 *a3, uint64_t a4, void (**a5)(char *, char *, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v111 = a7;
  v135 = a5;
  v133 = a4;
  v131 = type metadata accessor for NetworkBrowser.Monitor(0);
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v117 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v141 = (&v110 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v110 - v15;
  v16 = sub_1DEF8D3F8();
  v126 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v110 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v110 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v128 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v110 - v30;
  v32 = *a1;
  v33 = *(a1 + 1);
  v34 = *(a1 + 2);
  v113 = a6;
  if (v32)
  {
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    swift_beginAccess();

    sub_1DEF33890(v139, v33, v34);
  }

  else
  {
    v35 = *a3;
    v137 = a3[1];
    v138 = v35;
    swift_beginAccess();

    sub_1DEECE8F0(&v138, v136);
    sub_1DEECE8F0(&v137, v136);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = *(a2 + 88);
    *(a2 + 88) = 0x8000000000000000;
    sub_1DEF3F128(a3, v33, v34, isUniquelyReferenced_nonNull_native);

    *(a2 + 88) = v136[0];
  }

  swift_endAccess();
  v37 = a3;
  swift_beginAccess();
  v116 = a2;
  v38 = v135;

  v40 = v134;
  v41 = sub_1DEECF0F8(v39, v133, v38);
  v110 = v40;

  v42 = 0;
  v44 = v41 + 8;
  v43 = v41[8];
  v121 = v41;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v114 = (v45 + 63) >> 6;
  v134 = (v126 + 32);
  v135 = (v126 + 16);
  v112 = (v129 + 48);
  v132 = (v126 + 8);
  v115 = v37;
  v133 = v16;
  v127 = v24;
  v48 = v128;
  v125 = v31;
  v124 = v44;
  while (v47)
  {
    v49 = v42;
LABEL_19:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v121;
    v55 = v126;
    v56 = v119;
    (*(v126 + 16))(v119, v121[6] + *(v126 + 72) * v53, v16);
    v57 = v16;
    v58 = v120;
    sub_1DEECF44C(v54[7] + *(v129 + 72) * v53, v120, type metadata accessor for NetworkBrowser.Monitor);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    v60 = *(v59 + 48);
    v61 = *(v55 + 32);
    v48 = v128;
    v61(v128, v56, v57);
    sub_1DEECF4B4(v58, v48 + v60, type metadata accessor for NetworkBrowser.Monitor);
    (*(*(v59 - 8) + 56))(v48, 0, 1, v59);
    v24 = v127;
    v31 = v125;
LABEL_20:
    sub_1DEE1BA88(v48, v31, &qword_1ECDE4240, &qword_1DEF91DD0);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    if ((*(*(v62 - 8) + 48))(v31, 1, v62) == 1)
    {
    }

    v63 = *(v62 + 48);
    v16 = v133;
    (*v134)(v24, v31, v133);
    v64 = &v31[v63];
    v65 = v141;
    sub_1DEECF4B4(v64, v141, type metadata accessor for NetworkBrowser.Monitor);
    if (*(v65 + *(v131 + 36)) & 1) == 0 && (*v141 == *v115 && v141[1] == *(v115 + 1) || (sub_1DEF8E4E8()))
    {
      v130 = *v135;
      v130(v118, v24, v16);
      swift_beginAccess();
      v66 = sub_1DEEBFCD8(v136);
      v67 = v131;
      v69 = v68;
      if (!(*v112)(v68, 1, v131))
      {
        *(v69 + *(v67 + 36)) = 1;
      }

      (v66)(v136, 0);
      swift_endAccess();
      v70 = *v132;
      (*v132)(v118, v16);
      v71 = v123;
      v130(v123, v24, v16);
      sub_1DEECF44C(v141, v117, type metadata accessor for NetworkBrowser.Monitor);
      v72 = v113;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v136[0] = *v72;
      v74 = v136[0];
      v75 = v72;
      *v72 = 0x8000000000000000;
      v77 = sub_1DEEAF350(v71);
      v78 = *(v74 + 16);
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        goto LABEL_50;
      }

      v81 = v76;
      if (*(v74 + 24) >= v80)
      {
        if ((v73 & 1) == 0)
        {
          sub_1DEEB8F5C();
        }
      }

      else
      {
        sub_1DEEB432C(v80, v73);
        v82 = sub_1DEEAF350(v123);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_52;
        }

        v77 = v82;
      }

      v85 = v133;
      v86 = v136[0];
      if (v81)
      {
        sub_1DEECEA78(v117, *(v136[0] + 56) + *(v129 + 72) * v77);
        v70(v123, v85);
      }

      else
      {
        *(v136[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
        v87 = v123;
        v130((v86[6] + *(v126 + 72) * v77), v123, v85);
        sub_1DEECF4B4(v117, v86[7] + *(v129 + 72) * v77, type metadata accessor for NetworkBrowser.Monitor);
        v70(v87, v85);
        v88 = v86[2];
        v89 = __OFADD__(v88, 1);
        v90 = v88 + 1;
        if (v89)
        {
          goto LABEL_51;
        }

        v86[2] = v90;
      }

      *v75 = v86;

      v24 = v127;
      v130(v122, v127, v85);
      v91 = v116;
      swift_beginAccess();
      v92 = *(v91 + 80);
      v93 = v111;
      if (*(v92 + 16) && (v94 = sub_1DEEAF350(v24), (v95 & 1) != 0))
      {
        v96 = *(*(v92 + 56) + 8 * v94);
        swift_endAccess();
        swift_unknownObjectRetain();
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = *v93;
        ObjectType = swift_getObjectType();
        v99 = v122;
        sub_1DEF41AB8(v96, v122, v97, v136, ObjectType);
        v100 = v99;
        v101 = v133;
        v70(v100, v133);
        *v93 = v136[0];
        v16 = v101;
      }

      else
      {
        swift_endAccess();
        v102 = v122;
        v103 = sub_1DEEAF350(v122);
        if (v104)
        {
          v105 = v103;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v107 = *v93;
          v136[0] = *v93;
          if ((v106 & 1) == 0)
          {
            sub_1DEEB9288();
            v107 = v136[0];
          }

          v108 = v133;
          v70((*(v107 + 48) + *(v126 + 72) * v105), v133);
          swift_unknownObjectRelease();
          sub_1DEF7695C(v105, v107);
          v70(v122, v108);
          *v93 = v107;
          v16 = v108;
        }

        else
        {
          v16 = v133;
          v70(v102, v133);
        }

        v31 = v125;
      }

      v70(v24, v16);
      v48 = v128;
    }

    else
    {
      (*v132)(v24, v16);
    }

    sub_1DEECF3EC(v141, type metadata accessor for NetworkBrowser.Monitor);
    v44 = v124;
  }

  if (v114 <= v42 + 1)
  {
    v50 = v42 + 1;
  }

  else
  {
    v50 = v114;
  }

  v51 = v50 - 1;
  while (1)
  {
    v49 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v49 >= v114)
    {
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v84 - 8) + 56))(v48, 1, 1, v84);
      v47 = 0;
      v42 = v51;
      goto LABEL_20;
    }

    v47 = v44[v49];
    ++v42;
    if (v47)
    {
      v42 = v49;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEC4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_1DEEC4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(*v7 + 16);
  os_unfair_lock_lock(v15 + 4);
  sub_1DEEBD3F4(a1, a2, a3, a4, a5, a6, a7);

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_1DEEC4E2C(uint64_t a1)
{
  v3 = *(sub_1DEF8D3F8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1DEEBDE68(a1, v4, v5);
}

void sub_1DEEC4EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1DEEC4F08(void *a1, uint64_t a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  sub_1DEF8E7F8();
  result = sub_1DEF8DE48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DEEC4FB8(void *a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEECF44C(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v10, type metadata accessor for Record.ID.Ownership);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x1E12CBF60](1);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v5 + 8))(v7, v4);
  }

  sub_1DEF8E7F8();
  result = sub_1DEF8DE48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DEEC524C(uint64_t a1, uint64_t a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v4 = type metadata accessor for PairingRelationship(0);
  DeviceDescriptor.hash(into:)(v9);
  sub_1DEF8D378();
  sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DEF8D8C8();
  sub_1DEF8D8C8();
  v5 = *(a1 + *(v4 + 32) + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 2;
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v6 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (v5 == 1)
    {
      v6 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v6);
      goto LABEL_12;
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  sub_1DEF8D8C8();
  sub_1DEF8E7F8();
  v7 = sub_1DEF8DE48();
  *(a2 + 56 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  result = sub_1DEECF4B4(a1, *(a2 + 48) + *(*(v4 - 8) + 72) * v7, type metadata accessor for PairingRelationship);
  ++*(a2 + 16);
  return result;
}

void sub_1DEEC54A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1DEEC5600()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  v6 = *v0;
  v7 = sub_1DEF8DED8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1DEEC584C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DEEC59A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8DED8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1DEEC5AE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1DEEC5C38()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  v6 = *v0;
  v7 = sub_1DEF8DED8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1DEECF44C(*(v6 + 48) + v21, v5, type metadata accessor for PairingRelationship);
        result = sub_1DEECF4B4(v5, *(v8 + 48) + v21, type metadata accessor for PairingRelationship);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void sub_1DEEC5E44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 40);
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = v22;
        *(v23 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t *sub_1DEEC5FC4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DEECEBB0(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1DEEC6068(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PairingRelationship(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v43 - v11;
  v54 = sub_1DEF8D3F8();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  result = sub_1DEF8E148();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v13;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_1DEECF44C(v31, v47, type metadata accessor for PairingRelationship);
    v33 = *(v28 + 32);
    v13 = v22;
    v33(v22, v29, v21);
    sub_1DEECF4B4(v32, v55, type metadata accessor for PairingRelationship);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DEF8D8B8();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v13, v54);
    result = sub_1DEECF4B4(v55, *(v17 + 56) + v37 * v50, type metadata accessor for PairingRelationship);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v13;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC64F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
  result = sub_1DEF8E148();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v10 &= v10 - 1;
LABEL_16:

    result = sub_1DEF41EC0();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v12 = v11;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v13 = a1[v11];
    ++v12;
    if (v13)
    {
      v10 = (v13 - 1) & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC663C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  result = sub_1DEF8E148();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v38 = v8;
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 32 * v16);
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v22 = (*(v4 + 56) + 48 * v16);
    v23 = v22[1];
    v24 = v22[3];
    v43 = v22[2];
    v44 = *v22;
    v41 = v22[5];
    v42 = v22[4];
    v25 = v9;
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v9 = v25;
    v26 = -1 << *(v25 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v25 + 48) + 32 * v29);
    *v34 = v18;
    v34[1] = v19;
    v34[2] = v21;
    v34[3] = v20;
    v35 = (*(v25 + 56) + 48 * v29);
    *v35 = v44;
    v35[1] = v23;
    v35[2] = v43;
    v35[3] = v24;
    v35[4] = v42;
    v35[5] = v41;
    ++*(v25 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
    v10 = v40;
    v8 = v38;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC6904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4120, &qword_1DEF91C40);
  result = sub_1DEF8E148();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(v17 + 8 * v16);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    *(*(v9 + 56) + 8 * v23) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1DEEC6B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1DEF8D3F8();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = v27 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
  result = sub_1DEF8E148();
  v28 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v27[1] = v8 + 32;
  v27[2] = v8 + 16;
  v15 = v31;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v32 = (v13 - 1) & v13;
LABEL_16:
    v19 = a4;
    v20 = *(a4 + 56) + *(v8 + 72) * (v16 | (v14 << 6));
    v21 = v29;
    (*(v8 + 16))(v29, v20, v15);
    v22 = v8;
    v23 = *(v8 + 32);
    v24 = v30;
    v23(v30, v21, v15);

    result = sub_1DEF40088(v25, v24, v28);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    v8 = v22;
    v13 = v32;
    if (!a3)
    {
      return v28;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v32 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC6DAC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ZoneVersion(0);
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  result = sub_1DEF8E148();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v35;
  v34 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v36;
    v38 = *(v37 + 72);
    sub_1DEECF44C(v22 + v38 * v21, v36, type metadata accessor for ZoneVersion);
    sub_1DEECF4B4(v24, v17, type metadata accessor for ZoneVersion);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      v17 = v35;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v17 = v35;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v23;
    result = sub_1DEECF4B4(v17, *(v13 + 56) + v28 * v38, type metadata accessor for ZoneVersion);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC70F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkBrowser.Monitor(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v43 - v11;
  v54 = sub_1DEF8D3F8();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  result = sub_1DEF8E148();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v13;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_1DEECF44C(v31, v47, type metadata accessor for NetworkBrowser.Monitor);
    v33 = *(v28 + 32);
    v13 = v22;
    v33(v22, v29, v21);
    sub_1DEECF4B4(v32, v55, type metadata accessor for NetworkBrowser.Monitor);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DEF8D8B8();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v13, v54);
    result = sub_1DEECF4B4(v55, *(v17 + 56) + v37 * v50, type metadata accessor for NetworkBrowser.Monitor);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v13;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC7584(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SessionManager.Session(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v43 - v11;
  v54 = sub_1DEF8D3F8();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  result = sub_1DEF8E148();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v13;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_1DEECF44C(v31, v47, type metadata accessor for SessionManager.Session);
    v33 = *(v28 + 32);
    v13 = v22;
    v33(v22, v29, v21);
    sub_1DEECF4B4(v32, v55, type metadata accessor for SessionManager.Session);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DEF8D8B8();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v13, v54);
    result = sub_1DEECF4B4(v55, *(v17 + 56) + v37 * v50, type metadata accessor for SessionManager.Session);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v13;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC7A14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  result = sub_1DEF8E148();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_1DEECF44C(v22 + v43 * v21, v40, type metadata accessor for NetworkMessenger.ExpiringConnection);
    sub_1DEECF4B4(v26, v17, type metadata accessor for NetworkMessenger.ExpiringConnection);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_1DEECF4B4(v17, *(v13 + 56) + v30 * v43, type metadata accessor for NetworkMessenger.ExpiringConnection);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1DEEC7D60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1DEEC7DA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE4290, &qword_1DEF95B60, type metadata accessor for PairingRelationship);
  *v3 = result;
  return result;
}

char *sub_1DEEC7DE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC7F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC82A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC83B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC84D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7E68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC8A00(a1, a2, a3, *v3, &qword_1ECDE4320, &qword_1DEF91E88, &qword_1ECDE4328, &qword_1DEF91E90);
  *v3 = result;
  return result;
}

void *sub_1DEEC7EA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE42C8, &unk_1DEF91E30, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

char *sub_1DEEC7EEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC87C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7F0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC88CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7F2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEEC8A00(a1, a2, a3, *v3, &qword_1ECDE4308, &qword_1DEF91E78, &qword_1ECDE4310, &qword_1DEF91E80);
  *v3 = result;
  return result;
}

char *sub_1DEEC7F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D8, &unk_1DEF91E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC80B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4EC0, &unk_1DEF91EA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DEEC82A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DEEC83B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4360, &qword_1DEF91760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DEEC84D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4270, &unk_1DEF91DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC85E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DEEC87C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4280, &qword_1DEF91E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC88CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B0, &qword_1DEF91E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B8, &qword_1DEF91E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC8A00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_1DEEC8B48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1DEECB43C(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1DEE171B4(v5, &unk_1ECDE3E80, &unk_1DEF90970);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1DEEC8D64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1DEECB6E4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1DEEC8E90(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        v14 = sub_1DEECB820(v12, v13);
        sub_1DEEA889C(v14, v15);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1DEEC8FB4(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v66 - v9);
  v11 = sub_1DEF8D3F8();
  MEMORY[0x1EEE9AC00](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_1DEE171B4(v30, &unk_1ECDE3E80, &unk_1DEF90970);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = sub_1DEF8D8B8();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = sub_1DEF8D908();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_1DEE171B4(v24, &unk_1ECDE3E80, &unk_1DEF90970);
        a2 = sub_1DEECCCE8(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_1DEF8D8B8();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_1DEF8D908();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_1DEF8D908();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1DEECBBE4(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x1E12CCD70](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_1DEE2774C(v59);
  return a2;
}

uint64_t sub_1DEEC9A18(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v23 = sub_1DEF8E7F8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1DEECD010(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1DEF8E7A8();

            sub_1DEF8D9B8();
            v41 = sub_1DEF8E7F8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1DEF8E4E8() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1DEECC0B8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1E12CCD70](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1DEE2774C(v13);
    return v5;
  }

  result = MEMORY[0x1E12CCD70](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1DEEC9F88(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v73 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  v58 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v63 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = (a2 + 56);

  v15 = 0;
  v65 = v4;
  v66 = v7;
  v64 = v13;
  while (1)
  {
    if (!v10)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_65;
        }

        if (v17 >= v11)
        {
          v31 = v5;
          goto LABEL_62;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v15 = v17;
    }

    v18 = *(v5 + 48);
    v67 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
    v21 = *v19;
    v20 = v19[1];
    sub_1DEF8E7A8();
    if (v20)
    {
      MEMORY[0x1E12CBF60](1);

      sub_1DEF8D9B8();
    }

    else
    {
      MEMORY[0x1E12CBF60](0);
    }

    v10 &= v10 - 1;
    v22 = sub_1DEF8E7F8();
    v23 = -1 << *(v4 + 32);
    v7 = v22 & ~v23;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if (((1 << v7) & v12[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v64;
    v4 = v65;
    v7 = v66;
    v15 = v67;
  }

  v24 = v4;
  v25 = ~v23;
  v3 = *(v24 + 48);
  while (1)
  {
    v26 = (v3 + 16 * v7);
    v27 = v26[1];
    if (!v27)
    {
      break;
    }

    if (v20)
    {
      v28 = *v26 == v21 && v27 == v20;
      if (v28 || (v22 = sub_1DEF8E4E8(), (v22 & 1) != 0))
      {
        v3 = v64;
        v29 = v66;
        v70 = v63;
        v71 = v67;
        v72 = v10;
        v68 = v64;
        v69 = v66;
        v30 = v67;

        goto LABEL_31;
      }
    }

LABEL_19:
    v7 = (v7 + 1) & v25;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if ((v12[v7 >> 6] & (1 << v7)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v20)
  {
    goto LABEL_19;
  }

  v3 = v64;
  v29 = v66;
  v30 = v67;
  v70 = v63;
  v71 = v67;
  v72 = v10;
  v68 = v64;
  v69 = v66;
LABEL_31:
  v4 = v65;
  v32 = *(v65 + 32);
  v59 = ((1 << v32) + 63) >> 6;
  v14 = 8 * v59;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v60 = &v57;
    MEMORY[0x1EEE9AC00](v22);
    v7 = &v57 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v12, v33);
    v34 = *(v7 + 8 * v2) & ~v5;
    v35 = *(v4 + 16);
    v62 = v7;
    *(v7 + 8 * v2) = v34;
    v36 = v35 - 1;
LABEL_33:
    v61 = v36;
LABEL_35:
    while (2)
    {
      if (v10)
      {
LABEL_41:
        v39 = *(v3 + 48);
        v67 = v30;
        v40 = (v39 + ((v30 << 10) | (16 * __clz(__rbit64(v10)))));
        v42 = *v40;
        v41 = v40[1];
        sub_1DEF8E7A8();
        if (v41)
        {
          MEMORY[0x1E12CBF60](1);

          sub_1DEF8D9B8();
        }

        else
        {
          MEMORY[0x1E12CBF60](0);
        }

        v10 &= v10 - 1;
        v43 = sub_1DEF8E7F8();
        v44 = -1 << *(v4 + 32);
        v7 = v43 & ~v44;
        v5 = v7 >> 6;
        v2 = 1 << v7;
        if (((1 << v7) & v12[v7 >> 6]) == 0)
        {
LABEL_34:

          v3 = v64;
          v4 = v65;
          v29 = v66;
          v30 = v67;
          continue;
        }

        v45 = ~v44;
        v46 = *(v4 + 48);
        while (1)
        {
          v47 = (v46 + 16 * v7);
          v48 = v47[1];
          if (v48)
          {
            if (v41)
            {
              v49 = *v47 == v42 && v48 == v41;
              if (v49 || (sub_1DEF8E4E8() & 1) != 0)
              {

LABEL_56:
                v50 = v62[v5];
                v62[v5] = v50 & ~v2;
                v3 = v64;
                v4 = v65;
                v29 = v66;
                v30 = v67;
                if ((v50 & v2) != 0)
                {
                  v36 = v61 - 1;
                  if (__OFSUB__(v61, 1))
                  {
                    __break(1u);
                  }

                  if (v61 == 1)
                  {

                    v4 = MEMORY[0x1E69E7CD0];
                    goto LABEL_61;
                  }

                  goto LABEL_33;
                }

                goto LABEL_35;
              }
            }
          }

          else if (!v41)
          {
            goto LABEL_56;
          }

          v7 = (v7 + 1) & v45;
          v5 = v7 >> 6;
          v2 = 1 << v7;
          if ((v12[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      break;
    }

    v37 = v30;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v11)
      {
        v4 = sub_1DEECD234(v62, v59, v61, v4);
        goto LABEL_61;
      }

      v10 = *(v29 + 8 * v38);
      ++v37;
      if (v10)
      {
        v30 = v38;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v52 = v14;

    v53 = v4;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v29 = v66;
    v30 = v67;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v12, v52);
  v55 = v58;
  v56 = sub_1DEECC2F0(v54, v59, v53, v7, &v68);

  if (v55)
  {

    result = MEMORY[0x1E12CCD70](v54, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1E12CCD70](v54, -1, -1);
    v3 = v68;
    v63 = v70;
    v4 = v56;
LABEL_61:
    v31 = v3;
LABEL_62:
    sub_1DEE2774C(v31);
    return v4;
  }

  return result;
}

uint64_t sub_1DEECA55C(uint64_t a1, uint64_t a2)
{
  v113[2] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for PairingRelationship(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v88[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v88[-v13];
  if (*(a2 + 16))
  {
    v95 = v12;
    v113[0] = a1;
    v15 = *(a1 + 16);
    v96 = a1;

    v97 = v15;
    if (v15)
    {
      v16 = 0;
      v101 = v96 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      v110 = (a2 + 56);
      v111 = v17;
      v104 = a2;
      do
      {
        v18 = v16 + 1;
        v113[1] = v16 + 1;
        sub_1DEECF44C(v101 + v111 * v16, v14, type metadata accessor for PairingRelationship);
        sub_1DEF8E7A8();
        v19 = sub_1DEF8D3F8();
        v20 = sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v99 = v19;
        v98 = v20;
        sub_1DEF8D8C8();
        v21 = v4[5];
        DeviceDescriptor.hash(into:)(v112);
        v22 = v4[6];
        v23 = sub_1DEF8D378();
        v24 = sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        v108 = v22;
        sub_1DEF8D8C8();
        v107 = v4[7];
        sub_1DEF8D8C8();
        v105 = &v14[v4[8]];
        v106 = v18;
        v25 = v105[1];
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v26 = 2;
          }

          else
          {
            if (v25 != 3)
            {
LABEL_12:
              MEMORY[0x1E12CBF60](3);
              a2 = v104;
              sub_1DEF8D9B8();
              goto LABEL_16;
            }

            v26 = 4;
          }
        }

        else if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_12;
          }

          v26 = 1;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x1E12CBF60](v26);
LABEL_16:
        v103 = v4[9];
        v100 = v23;
        v102 = v24;
        sub_1DEF8D8C8();
        v27 = sub_1DEF8E7F8();
        v28 = -1 << *(a2 + 32);
        v29 = v27 & ~v28;
        v30 = v29 >> 6;
        v31 = 1 << v29;
        if (((1 << v29) & *(v110 + (v29 >> 6))) != 0)
        {
          v32 = ~v28;
          do
          {
            sub_1DEECF44C(*(a2 + 48) + v29 * v111, v10, type metadata accessor for PairingRelationship);
            if ((sub_1DEF8D3A8() & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v10[v4[5]], &v14[v21]) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
            {
              goto LABEL_44;
            }

            v33 = &v10[v4[8]];
            v34 = *v33;
            v35 = v33[1];
            v36 = *v105;
            v37 = v105[1];
            if (v35 > 1)
            {
              if (v35 == 2)
              {
                if (v37 != 2)
                {
                  v42 = *v33;
                  v43 = *v105;
                  sub_1DEE4F8C0(*v105, v105[1]);
                  v35 = 2;
                  goto LABEL_43;
                }

                v44 = *v105;
                sub_1DEE4F8D4(v34, 2uLL);
                v39 = v44;
                v40 = 2;
                goto LABEL_48;
              }

              if (v35 == 3)
              {
                if (v37 != 3)
                {
                  v42 = *v33;
                  v43 = *v105;
                  sub_1DEE4F8C0(*v105, v105[1]);
                  v35 = 3;
                  goto LABEL_43;
                }

                v41 = *v105;
                sub_1DEE4F8D4(v34, 3uLL);
                v39 = v41;
                v40 = 3;
                goto LABEL_48;
              }
            }

            else
            {
              if (!v35)
              {
                if (v37)
                {
                  v42 = *v33;
                  v43 = *v105;
                  sub_1DEE4F8C0(*v105, v105[1]);
                  v35 = 0;
                  goto LABEL_43;
                }

                v46 = *v105;
                sub_1DEE4F8D4(v34, 0);
                v39 = v46;
                v40 = 0;
                goto LABEL_48;
              }

              if (v35 == 1)
              {
                if (v37 != 1)
                {
                  v42 = *v33;
                  v43 = *v105;
                  sub_1DEE4F8C0(*v105, v105[1]);
                  v35 = 1;
                  goto LABEL_43;
                }

                v38 = *v105;
                sub_1DEE4F8D4(v34, 1uLL);
                v39 = v38;
                v40 = 1;
                goto LABEL_48;
              }
            }

            if (v37 < 4)
            {
              v42 = *v33;
              v43 = *v105;
              sub_1DEE4F8C0(*v105, v105[1]);
              sub_1DEE4F8C0(v42, v35);
LABEL_43:
              sub_1DEE4F8D4(v42, v35);
              sub_1DEE4F8D4(v43, v37);
              a2 = v104;
LABEL_44:
              sub_1DEECF3EC(v10, type metadata accessor for PairingRelationship);
              goto LABEL_45;
            }

            if (v34 == v36 && v35 == v37)
            {
              v45 = *v33;
              sub_1DEE4F8C0(v34, v35);
              sub_1DEE4F8C0(v45, v35);
              sub_1DEE4F8D4(v45, v35);
              v39 = v45;
              v40 = v35;
LABEL_48:
              sub_1DEE4F8D4(v39, v40);
              a2 = v104;
              goto LABEL_49;
            }

            v93 = *v33;
            v94 = v36;
            LODWORD(v92) = sub_1DEF8E4E8();
            sub_1DEE4F8C0(v94, v37);
            sub_1DEE4F8C0(v93, v35);
            sub_1DEE4F8D4(v93, v35);
            sub_1DEE4F8D4(v94, v37);
            a2 = v104;
            if ((v92 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_49:
            v47 = sub_1DEF8D338();
            sub_1DEECF3EC(v10, type metadata accessor for PairingRelationship);
            if (v47)
            {
              v48 = sub_1DEECF3EC(v14, type metadata accessor for PairingRelationship);
              v49 = *(a2 + 32);
              v50 = ((1 << v49) + 63) >> 6;
              v51 = 8 * v50;
              if ((v49 & 0x3Fu) > 0xD)
              {
                goto LABEL_119;
              }

              while (1)
              {
                v90 = v50;
                v91 = v88;
                MEMORY[0x1EEE9AC00](v48);
                v53 = &v88[-((v52 + 15) & 0x3FFFFFFFFFFFFFF0)];
                memcpy(v53, v110, v52);
                v54 = *(a2 + 16);
                v55 = *&v53[8 * v30] & ~v31;
                v92 = v53;
                *&v53[8 * v30] = v55;
                v93 = v54 - 1;
                v56 = v96;
                v30 = v106;
                v97 = *(v96 + 16);
                v57 = v95;
                if (v106 == v97)
                {
                  goto LABEL_58;
                }

                v50 = 1;
                v29 = v109;
                v31 = v100;
LABEL_61:
                if (v30 < *(v56 + 16))
                {
                  break;
                }

                __break(1u);
LABEL_119:
                v83 = v51;

                v84 = v83;
                if (!swift_stdlib_isStackAllocationSafe())
                {
                  v85 = swift_slowAlloc();
                  memcpy(v85, v110, v84);
                  sub_1DEECC53C(v85, v50, a2, v29, v113);
                  v87 = v86;

                  MEMORY[0x1E12CCD70](v85, -1, -1);
                  a2 = v87;
                  goto LABEL_59;
                }
              }

              sub_1DEECF44C(v101 + v30 * v111, v29, type metadata accessor for PairingRelationship);
              sub_1DEF8E7A8();
              sub_1DEF8D8C8();
              v59 = v4[5];
              DeviceDescriptor.hash(into:)(v112);
              v108 = v4[6];
              sub_1DEF8D8C8();
              v107 = v4[7];
              sub_1DEF8D8C8();
              v105 = &v109[v4[8]];
              v106 = v30;
              v60 = v105[1];
              if (v60 > 1)
              {
                if (v60 == 2)
                {
                  v61 = 2;
                }

                else
                {
                  if (v60 != 3)
                  {
                    goto LABEL_69;
                  }

                  v61 = 4;
                }
              }

              else
              {
                if (v60)
                {
                  if (v60 == 1)
                  {
                    v61 = 1;
                    goto LABEL_72;
                  }

LABEL_69:
                  MEMORY[0x1E12CBF60](3);
                  a2 = v104;
                  sub_1DEF8D9B8();
LABEL_73:
                  v103 = v4[9];
                  sub_1DEF8D8C8();
                  v62 = sub_1DEF8E7F8();
                  v63 = -1 << *(a2 + 32);
                  v64 = v62 & ~v63;
                  v65 = v64 >> 6;
                  v66 = 1 << v64;
                  if (((1 << v64) & *(v110 + (v64 >> 6))) == 0)
                  {
LABEL_110:
                    v29 = v109;
                    sub_1DEECF3EC(v109, type metadata accessor for PairingRelationship);
                    v56 = v96;
                    goto LABEL_111;
                  }

                  v67 = ~v63;
                  while (2)
                  {
                    sub_1DEECF44C(*(a2 + 48) + v64 * v111, v57, type metadata accessor for PairingRelationship);
                    v68 = v109;
                    if ((sub_1DEF8D3A8() & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(v57 + v4[5], &v68[v59]) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
                    {
                      goto LABEL_101;
                    }

                    v69 = (v57 + v4[8]);
                    v70 = *v69;
                    v71 = v69[1];
                    v72 = *v105;
                    v73 = v105[1];
                    if (v71 > 1)
                    {
                      if (v71 == 2)
                      {
                        if (v73 != 2)
                        {
                          v77 = *v69;
                          sub_1DEE4F8C0(*v105, v105[1]);
                          v71 = 2;
                          goto LABEL_100;
                        }

                        sub_1DEE4F8D4(v70, 2uLL);
                        v74 = v72;
                        v75 = 2;
                      }

                      else
                      {
                        if (v71 != 3)
                        {
                          goto LABEL_88;
                        }

                        if (v73 != 3)
                        {
                          v77 = *v69;
                          sub_1DEE4F8C0(*v105, v105[1]);
                          v71 = 3;
                          goto LABEL_100;
                        }

                        sub_1DEE4F8D4(v70, 3uLL);
                        v74 = v72;
                        v75 = 3;
                      }
                    }

                    else
                    {
                      if (v71)
                      {
                        if (v71 == 1)
                        {
                          if (v73 == 1)
                          {
                            sub_1DEE4F8D4(v70, 1uLL);
                            v74 = v72;
                            v75 = 1;
                            break;
                          }

                          v77 = *v69;
                          sub_1DEE4F8C0(*v105, v105[1]);
                          v71 = 1;
LABEL_100:
                          sub_1DEE4F8D4(v77, v71);
                          sub_1DEE4F8D4(v72, v73);
                          a2 = v104;
                          v57 = v95;
LABEL_101:
                          sub_1DEECF3EC(v57, type metadata accessor for PairingRelationship);
LABEL_102:
                          v64 = (v64 + 1) & v67;
                          v65 = v64 >> 6;
                          v66 = 1 << v64;
                          if ((*(v110 + (v64 >> 6)) & (1 << v64)) == 0)
                          {
                            goto LABEL_110;
                          }

                          continue;
                        }

LABEL_88:
                        if (v73 < 4)
                        {
                          v76 = *v69;
                          sub_1DEE4F8C0(*v105, v105[1]);
                          v77 = v76;
                          sub_1DEE4F8C0(v76, v71);
                          goto LABEL_100;
                        }

                        if (v70 == v72 && v71 == v73)
                        {
                          v78 = *v69;
                          sub_1DEE4F8C0(v70, v71);
                          sub_1DEE4F8C0(v78, v71);
                          sub_1DEE4F8D4(v78, v71);
                          v74 = v78;
                          v75 = v71;
                          break;
                        }

                        v94 = *v69;
                        v89 = sub_1DEF8E4E8();
                        sub_1DEE4F8C0(v72, v73);
                        sub_1DEE4F8C0(v94, v71);
                        sub_1DEE4F8D4(v94, v71);
                        sub_1DEE4F8D4(v72, v73);
                        a2 = v104;
                        v57 = v95;
                        if ((v89 & 1) == 0)
                        {
                          goto LABEL_101;
                        }

LABEL_106:
                        v79 = sub_1DEF8D338();
                        sub_1DEECF3EC(v57, type metadata accessor for PairingRelationship);
                        if (v79)
                        {
                          v29 = v109;
                          sub_1DEECF3EC(v109, type metadata accessor for PairingRelationship);
                          v81 = v92[v65];
                          v92[v65] = v81 & ~v66;
                          v56 = v96;
                          if ((v81 & v66) != 0)
                          {
                            v82 = v93 - 1;
                            v80 = v106;
                            v31 = v100;
                            if (__OFSUB__(v93, 1))
                            {
                              __break(1u);
                            }

                            --v93;
                            if (!v82)
                            {

                              a2 = MEMORY[0x1E69E7CD0];
                              goto LABEL_59;
                            }

LABEL_112:
                            v30 = v80 + 1;
                            if (v30 == v97)
                            {
LABEL_58:
                              a2 = sub_1DEECD474(v92, v90, v93, a2);
                              goto LABEL_59;
                            }

                            goto LABEL_61;
                          }

LABEL_111:
                          v80 = v106;
                          v31 = v100;
                          goto LABEL_112;
                        }

                        goto LABEL_102;
                      }

                      if (v73)
                      {
                        v77 = *v69;
                        sub_1DEE4F8C0(*v105, v105[1]);
                        v71 = 0;
                        goto LABEL_100;
                      }

                      sub_1DEE4F8D4(v70, 0);
                      v74 = v72;
                      v75 = 0;
                    }

                    break;
                  }

                  sub_1DEE4F8D4(v74, v75);
                  a2 = v104;
                  v57 = v95;
                  goto LABEL_106;
                }

                v61 = 0;
              }

LABEL_72:
              MEMORY[0x1E12CBF60](v61);
              goto LABEL_73;
            }

LABEL_45:
            v29 = (v29 + 1) & v32;
            v30 = v29 >> 6;
            v31 = 1 << v29;
          }

          while ((*(v110 + (v29 >> 6)) & (1 << v29)) != 0);
        }

        sub_1DEECF3EC(v14, type metadata accessor for PairingRelationship);
        v16 = v106;
      }

      while (v106 != v97);
    }

LABEL_59:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return a2;
}

uint64_t sub_1DEECB43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1DEF8D8B8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1DEF8D908();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DEEC5600();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1DEECD63C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1DEECB6E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v6 = sub_1DEF8E7F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC54A4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DEECD944(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1DEECB820(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v6 = sub_1DEF8E7F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_7:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v13 = *v11 == a1 && v12 == a2;
  if (!v13 && (sub_1DEF8E4E8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC5AE0();
    v15 = v18;
  }

  v16 = *(*(v15 + 48) + 16 * v8);
  sub_1DEECDB08(v8);
  result = v16;
  *v2 = v18;
  return result;
}

uint64_t sub_1DEECB998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_1DEF8E7A8();
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v41 = *a1;
  sub_1DEF8D9B8();
  v36 = v6;
  v40 = v7;
  sub_1DEF8E7C8();
  if (v7)
  {
    sub_1DEF8D9B8();
  }

  v8 = *(a1 + 32);
  v10 = a1[5];
  v9 = a1[6];
  v39 = v8;
  MEMORY[0x1E12CBF90]();
  v38 = v10;
  MEMORY[0x1E12CBF90](v10);
  v37 = v9;
  MEMORY[0x1E12CBF90](v9);
  result = sub_1DEF8E7F8();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = result & ~v13;
  v16 = v40;
  v15 = v41;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_27:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v17 = ~v13;
  v18 = *(v4 + 48);
  while (1)
  {
    v21 = v18 + 56 * v14;
    result = *v21;
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v24 = *(v21 + 32);
    v26 = *(v21 + 40);
    v25 = *(v21 + 48);
    if (*v21 != v15 || *(v21 + 8) != v5)
    {
      result = sub_1DEF8E4E8();
      v16 = v40;
      v15 = v41;
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v22)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = (v14 + 1) & v17;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  if (v23 != v36 || v22 != v16)
  {
    result = sub_1DEF8E4E8();
    v16 = v40;
    v15 = v41;
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if (v24 != v39 || v26 != v38 || v25 != v37)
  {
    goto LABEL_13;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v34;
  v42 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC5E44();
    v30 = v42;
  }

  v31 = *(v30 + 48) + 56 * v14;
  v32 = *(v31 + 8);
  v33 = *(v31 + 32);
  *a2 = *v31;
  *(a2 + 8) = v32;
  *(a2 + 16) = *(v31 + 16);
  *(a2 + 32) = v33;
  *(a2 + 40) = *(v31 + 40);
  result = sub_1DEECDCF0(v14);
  *v34 = v42;
  return result;
}

void sub_1DEECBBE4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1DEF8D3F8();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1DEE171B4(v11, &unk_1ECDE3E80, &unk_1DEF90970);
          v45 = v61;

          sub_1DEECCCE8(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = sub_1DEF8D8B8();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = sub_1DEF8D908();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_1DEECC0B8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1DEECD010(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        v19 = sub_1DEF8E7F8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1DEF8E4E8() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1DEECC2F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = a3;
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
LABEL_2:
  v30 = v8;
LABEL_4:
  while (2)
  {
    v10 = a5[3];
    v11 = a5[4];
    if (v11)
    {
      v12 = a5[3];
LABEL_10:
      v15 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v15;
      v16 = v15[1];
      a5[3] = v12;
      a5[4] = (v11 - 1) & v11;
      sub_1DEF8E7A8();
      if (v16)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
      {
LABEL_3:

        v6 = a3;
        continue;
      }

      v22 = ~v18;
      v23 = *(v6 + 48);
      while (1)
      {
        v24 = (v23 + 16 * v19);
        v25 = v24[1];
        if (v25)
        {
          if (v16)
          {
            v26 = *v24 == v17 && v25 == v16;
            if (v26 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
            {

LABEL_25:
              v27 = v31[v20];
              v31[v20] = v27 & ~v21;
              v6 = a3;
              if ((v27 & v21) != 0)
              {
                v8 = v30 - 1;
                if (__OFSUB__(v30, 1))
                {
LABEL_34:
                  __break(1u);
                  return result;
                }

                if (v30 == 1)
                {
                  return MEMORY[0x1E69E7CD0];
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_25;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v9 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v13 = (a5[2] + 64) >> 6;
  v14 = a5[3];
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v12 >= v13)
    {
      break;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v14;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (v13 <= v10 + 1)
  {
    v28 = v10 + 1;
  }

  else
  {
    v28 = (a5[2] + 64) >> 6;
  }

  a5[3] = v28 - 1;
  a5[4] = 0;

  return sub_1DEECD234(v31, a2, v30, v6);
}

void sub_1DEECC53C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v69 = type metadata accessor for PairingRelationship(0);
  v60 = *(v69 - 1);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v51[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51[-v14];
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v54 = a1;
  *(a1 + v17) = v18;
  v55 = v16 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    sub_1DEECD474(v54, v53, v55, a3);
    return;
  }

  v67 = a3 + 56;
  v58 = a5;
  while (2)
  {
    if (v20 >= v21)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v22 = v59;
    v23 = *(v60 + 72);
    sub_1DEECF44C(v19 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v23 * v20, v59, type metadata accessor for PairingRelationship);
    a5[1] = v20 + 1;
    sub_1DEECF4B4(v22, v15, type metadata accessor for PairingRelationship);
    sub_1DEF8E7A8();
    sub_1DEF8D3F8();
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    v24 = v69;
    v66 = v69[5];
    DeviceDescriptor.hash(into:)(v68);
    v25 = v24[6];
    sub_1DEF8D378();
    sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    v65 = v25;
    sub_1DEF8D8C8();
    v64 = v24[7];
    sub_1DEF8D8C8();
    v63 = &v15[v24[8]];
    v26 = v63[1];
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = 2;
        goto LABEL_15;
      }

      if (v26 == 3)
      {
        v27 = 4;
        goto LABEL_15;
      }
    }

    else
    {
      if (!v26)
      {
        v27 = 0;
        goto LABEL_15;
      }

      if (v26 == 1)
      {
        v27 = 1;
LABEL_15:
        MEMORY[0x1E12CBF60](v27);
        goto LABEL_16;
      }
    }

    MEMORY[0x1E12CBF60](3);
    sub_1DEF8D9B8();
LABEL_16:
    v61 = v69[9];
    sub_1DEF8D8C8();
    v28 = sub_1DEF8E7F8();
    v29 = a3;
    v30 = -1 << *(a3 + 32);
    v31 = v28 & ~v30;
    v32 = v31 >> 6;
    v33 = 1 << v31;
    if (((1 << v31) & *(v67 + 8 * (v31 >> 6))) == 0)
    {
LABEL_53:
      sub_1DEECF3EC(v15, type metadata accessor for PairingRelationship);
LABEL_54:
      a3 = v29;
      a5 = v58;
      goto LABEL_55;
    }

    v34 = ~v30;
    while (1)
    {
      sub_1DEECF44C(*(v29 + 48) + v31 * v23, v10, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v10[v69[5]], &v15[v66]) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_44;
      }

      v35 = &v10[v69[8]];
      v36 = *v35;
      v37 = v35[1];
      v39 = *v63;
      v38 = v63[1];
      if (v37 > 1)
      {
        if (v37 == 2)
        {
          if (v38 == 2)
          {
            v46 = *v63;
            sub_1DEE4F8D4(v36, 2uLL);
            v41 = v46;
            v42 = 2;
            goto LABEL_48;
          }

          v62 = v36;
          v44 = v39;
          v45 = v38;
          sub_1DEE4F8C0(v39, v38);
          v37 = 2;
          goto LABEL_43;
        }

        if (v37 == 3)
        {
          if (v38 == 3)
          {
            v43 = *v63;
            sub_1DEE4F8D4(v36, 3uLL);
            v41 = v43;
            v42 = 3;
            goto LABEL_48;
          }

          v62 = v36;
          v44 = v39;
          v45 = v38;
          sub_1DEE4F8C0(v39, v38);
          v37 = 3;
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      if (!v37)
      {
        break;
      }

      if (v37 == 1)
      {
        if (v38 == 1)
        {
          v40 = *v63;
          sub_1DEE4F8D4(v36, 1uLL);
          v41 = v40;
          v42 = 1;
          goto LABEL_48;
        }

        v62 = v36;
        v44 = v39;
        v45 = v38;
        sub_1DEE4F8C0(v39, v38);
        v37 = 1;
        goto LABEL_43;
      }

LABEL_31:
      v62 = v36;
      if (v38 < 4)
      {
        v44 = v39;
        v45 = v38;
        sub_1DEE4F8C0(v39, v38);
        sub_1DEE4F8C0(v62, v37);
LABEL_43:
        sub_1DEE4F8D4(v62, v37);
        sub_1DEE4F8D4(v44, v45);
        goto LABEL_44;
      }

      if (v36 == v39 && v37 == v38)
      {
        sub_1DEE4F8C0(v36, v37);
        sub_1DEE4F8C0(v62, v37);
        sub_1DEE4F8D4(v62, v37);
        v41 = v62;
        v42 = v37;
        goto LABEL_48;
      }

      v56 = v38;
      v57 = v39;
      v52 = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v57, v56);
      sub_1DEE4F8C0(v62, v37);
      sub_1DEE4F8D4(v62, v37);
      sub_1DEE4F8D4(v57, v56);
      if (v52)
      {
        goto LABEL_49;
      }

LABEL_44:
      sub_1DEECF3EC(v10, type metadata accessor for PairingRelationship);
LABEL_45:
      v31 = (v31 + 1) & v34;
      v32 = v31 >> 6;
      v33 = 1 << v31;
      if ((*(v67 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
      {
        goto LABEL_53;
      }
    }

    if (v38)
    {
      v62 = v36;
      v44 = v39;
      v45 = v38;
      sub_1DEE4F8C0(v39, v38);
      v37 = 0;
      goto LABEL_43;
    }

    v47 = *v63;
    sub_1DEE4F8D4(v36, 0);
    v41 = v47;
    v42 = 0;
LABEL_48:
    sub_1DEE4F8D4(v41, v42);
LABEL_49:
    v48 = sub_1DEF8D338();
    sub_1DEECF3EC(v10, type metadata accessor for PairingRelationship);
    if ((v48 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_1DEECF3EC(v15, type metadata accessor for PairingRelationship);
    v49 = v54[v32];
    v54[v32] = v49 & ~v33;
    if ((v49 & v33) == 0)
    {
      goto LABEL_54;
    }

    v50 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      goto LABEL_62;
    }

    a3 = v29;
    a5 = v58;
    --v55;
    if (v50)
    {
LABEL_55:
      v19 = *a5;
      v20 = a5[1];
      v21 = *(*a5 + 16);
      if (v20 == v21)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }
}

uint64_t sub_1DEECCCE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1DEF8D3F8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  result = sub_1DEF8DF08();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DEF8D8B8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DF08();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD234(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DF08();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1DEF8E7A8();
    if (v17)
    {
      MEMORY[0x1E12CBF60](1);

      sub_1DEF8D9B8();
    }

    else
    {
      MEMORY[0x1E12CBF60](0);
    }

    result = sub_1DEF8E7F8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD474(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DF08();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    sub_1DEECF44C(*(a4 + 48) + *(v9 + 72) * (v16 | (v15 << 6)), v11, type metadata accessor for PairingRelationship);
    result = sub_1DEEC524C(v11, v12);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DEECD63C(int64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1DEF8DE28();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v23 = sub_1DEF8D8B8();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}