unint64_t sub_1A5D3BEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F58, &qword_1A60333A8);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1A5B0E2A4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A5D3BFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F38, &qword_1A6033308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5D3C010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F38, &qword_1A6033308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5D3C080()
{
  result = qword_1EB1F5F48;
  if (!qword_1EB1F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F48);
  }

  return result;
}

uint64_t sub_1A5D3C158()
{
  v1 = *(v0 + 40);

  v3 = sub_1A5FD352C();
  MEMORY[0x1AC554600](46, 0xE100000000000000);
  MEMORY[0x1AC554600](*(v1 + 24), *(v1 + 32));

  return v3;
}

uint64_t sub_1A5D3C294(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t sub_1A5D3C30C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1A5D3C38C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1A5D3C408(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1A5D3C4D0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1A5D3C5A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_1A5D3C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  sub_1A5D3C668(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t sub_1A5D3C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5;
  *(v5 + 17) = 0;
  v11 = v5 + 17;
  *(v5 + 24) = 0;
  v74 = (v5 + 24);
  *(v5 + 32) = 0;
  v73 = (v5 + 32);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  v12 = (v5 + 64);
  if ((a3 != 0) == (a4 == 0))
  {
    sub_1A5B16774();
    swift_allocError();
    v19 = v18;

    sub_1A5D286A4(0xD00000000000003FLL, 0x80000001A605BFF0, v19);
    swift_willThrow();

LABEL_9:

    v21 = 0;
LABEL_13:

    if (v21)
    {
    }

    type metadata accessor for E5RTExecutionContext();
    swift_deallocPartialClassInstance();
    return v7;
  }

  v13 = v6;
  v70 = (v5 + 48);
  if (!a2)
  {

LABEL_7:
    v20 = (*(*a1 + 408))(v17);
    if (v13)
    {

      goto LABEL_9;
    }

    v16 = v20;
    goto LABEL_11;
  }

  v14 = *(*a2 + 120);

  v16 = v14(v15);

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_11:
  swift_beginAccess();
  *(v7 + 24) = a3;

  swift_beginAccess();
  *(v7 + 32) = a4;

  *(v7 + 40) = a1;
  swift_beginAccess();
  *(v7 + 48) = v16;
  swift_beginAccess();

  v22 = e5rt_execution_stream_create();
  swift_endAccess();
  if (v22)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000028, 0x80000001A605BE60, v22, v23);
    swift_willThrow();

    v21 = 1;
    goto LABEL_13;
  }

  *(v7 + 16) = a5 & 1;
  if (a3)
  {
    v25 = a4 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  swift_beginAccess();
  *(v7 + 17) = v26;
  sub_1A5FD46AC();

  if (*(v7 + 17))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v7 + 17))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v27, v28);

  sub_1A5BF63A0(2, 0xD00000000000002DLL, 0x80000001A605BE90);

  if (*(v7 + 17) != 1)
  {
    goto LABEL_59;
  }

  v71 = v7;
  type metadata accessor for E5RTExecutionBoundPorts();
  v29 = swift_allocObject();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F60, &unk_1A60333B0);
  *(v29 + 16) = MEMORY[0x1AC554430](8, MEMORY[0x1E69E6158]);
  swift_beginAccess();
  *v12 = v29;

  if (!*v74)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v72 = v13;
  v30 = *(**v74 + 144);

  v32 = v30(v31);
  v34 = v33;

  result = v32;
  v68 = *(v32 + 16);
  if (v34 != v68)
  {
    v35 = (v32 + 16 * v34 + 40);
    v67 = v34;
    while ((v67 & 0x8000000000000000) == 0)
    {
      if (v34 >= *(result + 16))
      {
        goto LABEL_71;
      }

      v36 = *v74;
      if (!*v74)
      {
        goto LABEL_75;
      }

      v37 = *v12;
      if (!*v12)
      {
        goto LABEL_74;
      }

      v38 = result;
      v39 = *(v35 - 1);
      v40 = *v35;

      sub_1A5D3D188(v39, v40, v36, v37);
      if (v72)
      {

        v7 = v71;
        goto LABEL_59;
      }

      ++v34;

      v35 += 2;
      result = v38;
      v7 = v71;
      if (v68 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = v71;
LABEL_41:

  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x1AC554430](8, MEMORY[0x1E69E6158], v66, MEMORY[0x1E69E6168]);
  swift_beginAccess();
  *(v11 + 55) = v41;

  if (!*v73)
  {
    goto LABEL_79;
  }

  v42 = *(**v73 + 144);

  v44 = v42(v43);
  v46 = v45;

  result = v44;
  v75 = *(v44 + 16);
  if (v46 != v75)
  {
    v47 = (v44 + 16 * v46 + 40);
    v48 = v46;
    while ((v46 & 0x8000000000000000) == 0)
    {
      if (v48 >= *(result + 16))
      {
        goto LABEL_73;
      }

      v49 = *v73;
      if (!*v73)
      {
        goto LABEL_77;
      }

      v50 = *(v11 + 55);
      if (!v50)
      {
        goto LABEL_76;
      }

      v51 = v7;
      v52 = v46;
      v53 = result;
      v54 = *(v47 - 1);
      v55 = *v47;

      sub_1A5D3D4C0(v54, v55, v49, v50);
      if (v72)
      {

        v7 = v51;
        goto LABEL_59;
      }

      ++v48;

      v47 += 2;
      result = v53;
      v46 = v52;
      v7 = v51;
      if (v75 == v48)
      {
        goto LABEL_50;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_50:

  if (*v11 != 1)
  {
    goto LABEL_59;
  }

  result = *(v11 + 39);
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (*v70)
  {
    v56 = e5rt_execution_stream_encode_operation();
    if (v56)
    {
      v57 = v56;
      v58 = "uration:): self.isPrebound = ";
      sub_1A5B16774();
      swift_allocError();
      v60 = v59;
      v61 = 0xD000000000000032;
    }

    else
    {
      sub_1A5FD46AC();

      if (a5)
      {
        v62 = 1702195828;
      }

      else
      {
        v62 = 0x65736C6166;
      }

      if (a5)
      {
        v63 = 0xE400000000000000;
      }

      else
      {
        v63 = 0xE500000000000000;
      }

      MEMORY[0x1AC554600](v62, v63);

      sub_1A5BF63A0(2, 0xD000000000000043, 0x80000001A605BF00);

      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A605BF50);
      MEMORY[0x1AC554600](0xD00000000000003ALL, 0x80000001A605BF70);
      sub_1A5BF63A0(2, 0, 0xE000000000000000);

      v64 = e5rt_execution_stream_prewire_in_use_allocations();
      if (!v64)
      {
        goto LABEL_59;
      }

      v57 = v64;
      v58 = "prewire_in_use_allocations";
      sub_1A5B16774();
      swift_allocError();
      v60 = v65;
      v61 = 0xD00000000000003CLL;
    }

    sub_1A5D2879C(v61, v58 | 0x8000000000000000, v57, v60);
    swift_willThrow();

LABEL_59:

    return v7;
  }

LABEL_81:
  __break(1u);
  return result;
}

void *sub_1A5D3D0BC()
{
  swift_beginAccess();
  e5rt_execution_stream_operation_release();
  *(v0 + 48) = 0;
  swift_endAccess();
  swift_beginAccess();
  e5rt_execution_stream_release();
  *(v0 + 56) = 0;
  swift_endAccess();

  return v0;
}

uint64_t sub_1A5D3D154()
{
  sub_1A5D3D0BC();

  return swift_deallocClassInstance();
}

void *sub_1A5D3D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*v4 + 248))();
  sub_1A5FD3D8C();
  v5 = e5rt_execution_stream_operation_retain_input_port();

  if (v5)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD00000000000003DLL, 0x80000001A605BD40, v5, v6);
    return swift_willThrow();
  }

  else
  {
    result = 0;
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_1A5D3D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*v4 + 248))();
  sub_1A5FD3D8C();
  v5 = e5rt_execution_stream_operation_retain_output_port();

  if (v5)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD00000000000003ELL, 0x80000001A605BDF0, v5, v6);
    swift_willThrow();
  }

  else
  {
    sub_1A5BF63A0(2, 0xD00000000000003CLL, 0x80000001A605C840);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_1A5D3D82C()
{
  result = (*(*v0 + 464))();
  if (!v1)
  {
    (*(*v0 + 272))(result);
    result = e5rt_execution_stream_execute_sync();
    if (result)
    {
      v3 = result;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD00000000000002ELL, 0x80000001A605C030, v3, v4);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A5D3D910(void (*a1)(void, uint64_t *), uint64_t a2)
{
  v5 = (*(*v2 + 464))();
  result = (*(*v2 + 224))(v5);
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v8[5] = v7;
    v9 = *(*v2 + 272);

    v9(v10);
    aBlock[4] = sub_1A5D42668;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A5D3DB48;
    aBlock[3] = &block_descriptor_6;
    v11 = _Block_copy(aBlock);

    v12 = e5rt_execution_stream_submit_async();
    _Block_release(v11);
    if (v12)
    {
      sub_1A5D42560(v12, 0xD000000000000022, 0x80000001A605C090, a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D3DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_1A5D3DBB8(uint64_t a1)
{
  v3 = v1;
  v101 = sub_1A5FD3ADC();
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v86[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_1A5FD3A9C();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v7 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v86[-v12];
  v13 = sub_1A5FD3ACC();
  v107 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86[-v17];
  sub_1A5BF63A0(2, 0xD000000000000015, 0x80000001A605C0C0);
  type metadata accessor for E5RTExecutionBoundPorts();
  v19 = swift_allocObject();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F60, &unk_1A60333B0);
  *(v19 + 16) = MEMORY[0x1AC554430](8, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6168]);
  v21.n128_f64[0] = sub_1A5BF63A0(2, 0xD00000000000002DLL, 0x80000001A605C0E0);
  v22 = (*(*v3 + 480))(a1, v19, v21);
  v23 = v22;
  if (v2)
  {

    return v23;
  }

  v97 = v10;
  v98 = v7;
  v100 = v15;
  v89 = 0;
  v90 = v22;
  sub_1A5BF63A0(2, 0xD000000000000033, 0x80000001A605C110);
  v24 = sub_1A5C3A734();
  v25 = v107;
  v26 = *(v107 + 16);
  v94 = v24;
  v95 = (v107 + 16);
  v93 = v26;
  (v26)(v18);
  v27 = sub_1A5C3A658();
  v28 = *v27;
  v92 = v27;
  v29 = *(v27 + 16);
  swift_retain_n();
  v30 = v105;
  sub_1A5FD3A8C();
  v96 = v18;
  v31 = sub_1A5FD3AAC();
  v32 = sub_1A5FD43AC();
  result = sub_1A5FD452C();
  v91 = v19;
  v99 = v13;
  if ((result & 1) == 0)
  {
    v34 = v25;

    v36 = v100;
    v38 = v97;
    goto LABEL_13;
  }

  v88 = v31;
  v87 = v32;
  if (v29)
  {
    if (!(v28 >> 32))
    {
      if ((v28 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v34 = v25;
      v36 = v100;
      if (v28 >> 16 > 0x10)
      {
        goto LABEL_35;
      }

      v35 = v3;

      v37 = &v108;
      goto LABEL_12;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v25;
  v35 = v3;

  if (!v28)
  {
    __break(1u);
    goto LABEL_32;
  }

  v36 = v100;
  v37 = v28;
LABEL_12:
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v108 = v40;
  *v39 = 136315394;
  v41 = (*(*v35 + 152))();
  v43 = sub_1A5B4D654(v41, v42, &v108);

  *(v39 + 4) = v43;
  *(v39 + 12) = 2080;
  type metadata accessor for E5RTExecutionContext();
  v44 = sub_1A5B39728(v35);
  v46 = sub_1A5B4D654(v44, v45, &v108);

  *(v39 + 14) = v46;
  v47 = v105;
  v48 = sub_1A5FD3A7C();
  v49 = v88;
  _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v88, v87, v48, v37, "E5RTExecutionContext (%s, %s", v39, 0x16u);
  swift_arrayDestroy();
  v50 = v40;
  v30 = v47;
  MEMORY[0x1AC558440](v50, -1, -1);
  MEMORY[0x1AC558440](v39, -1, -1);

  v38 = v97;
  v3 = v35;
LABEL_13:
  v51 = v104;
  v52 = v106;
  (*(v104 + 16))(v38, v30, v106);
  sub_1A5FD3B0C();
  swift_allocObject();
  v53 = sub_1A5FD3AFC();
  v54 = *(v51 + 8);
  v54(v30, v52);
  v57 = *(v34 + 8);
  v56 = v34 + 8;
  v55 = v57;
  v58 = v99;
  v59 = (v57)(v96, v99);
  (*(*v3 + 272))(v59);
  LODWORD(v104) = e5rt_execution_stream_execute_sync();
  (v93)(v36, v94, v58);
  v97 = *v92;
  v60 = *(v92 + 16);
  swift_retain_n();
  v61 = sub_1A5FD3AAC();
  v62 = v98;
  v105 = v53;
  v63 = v61;
  sub_1A5FD3AEC();
  LODWORD(v96) = sub_1A5FD439C();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    v54(v62, v106);
    v55(v100, v99);
LABEL_26:
    sub_1A5BF63A0(2, 0xD000000000000038, 0x80000001A605C150);
    v23 = v90;
    v83 = v104;
    if (v104)
    {
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD00000000000002ELL, 0x80000001A605C030, v83, v84);
      swift_willThrow();
    }

    else
    {
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_1A5FD46AC();

      v108 = 0xD00000000000001FLL;
      v109 = 0x80000001A605C190;
      v110 = v23;
      type metadata accessor for NamedObjects();
      sub_1A5D428DC(&qword_1EB1F2DD8, &unk_1A6032808);
      v85 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v85);

      sub_1A5BF63A0(2, v108, v109);
    }

    return v23;
  }

  v93 = v63;
  v94 = v54;
  v95 = v55;
  v107 = v56;
  if ((v60 & 1) == 0)
  {
    v64 = v3;

    v66 = v102;
    v65 = v103;
    v67 = v97;
    if (v97)
    {
      v68 = v101;
LABEL_22:

      sub_1A5FD3B1C();

      v69 = v67;
      if ((*(v65 + 88))(v66, v68) == *MEMORY[0x1E69E93E8])
      {
        v70 = 0;
        v71 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v66, v68);
        v71 = "E5RTExecutionContext (%s, %s";
        v70 = 2;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v108 = v73;
      *v72 = v70;
      *(v72 + 1) = v70;
      *(v72 + 2) = 2080;
      v74 = (*(*v64 + 152))();
      v76 = sub_1A5B4D654(v74, v75, &v108);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      type metadata accessor for E5RTExecutionContext();
      v77 = sub_1A5B39728(v64);
      v79 = sub_1A5B4D654(v77, v78, &v108);

      *(v72 + 14) = v79;
      v80 = v98;
      v81 = sub_1A5FD3A7C();
      v82 = v93;
      _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v93, v96, v81, v69, v71, v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC558440](v73, -1, -1);
      MEMORY[0x1AC558440](v72, -1, -1);

      v94(v80, v106);
      v95(v100, v99);
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v66 = v102;
  v65 = v103;
  if (v97 >> 32)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v64 = v3;
  v68 = v101;
  if ((v97 & 0xFFFFF800) != 0xD800)
  {
    if (v97 >> 16 <= 0x10)
    {

      v67 = &v108;
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A5D3E670(uint64_t a1, void (*a2)(void, uint64_t *), uint64_t a3, __n128 a4)
{
  type metadata accessor for E5RTExecutionBoundPorts();
  v8 = swift_allocObject();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F60, &unk_1A60333B0);
  *(v8 + 16) = MEMORY[0x1AC554430](8, MEMORY[0x1E69E6158], v9, MEMORY[0x1E69E6168]);
  v10 = (*(*v4 + 480))(a1, v8);
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v10;
  v12 = *(*v4 + 272);

  v12(v13);
  v17[4] = sub_1A5D42784;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A5D3DB48;
  v17[3] = &block_descriptor_10_0;
  v14 = _Block_copy(v17);

  v15 = e5rt_execution_stream_submit_async();
  _Block_release(v14);
  if (v15)
  {
    sub_1A5D42560(v15, 0xD000000000000022, 0x80000001A605C090, a2);
  }
}

uint64_t sub_1A5D3E964()
{
  result = (*(*v0 + 176))();
  if ((result & 1) == 0)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(0xD000000000000027, 0x80000001A605C1B0, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A5D3E9F8()
{
  result = (*(*v0 + 176))();
  if (result)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(0xD00000000000002BLL, 0x80000001A605C1E0, v2);
    return swift_willThrow();
  }

  return result;
}

const char *sub_1A5D3EA8C(const char *a1, uint64_t a2)
{
  v3 = v2;
  v199 = a2;
  v203 = a1;
  v4 = sub_1A5FD3A9C();
  isa = v4[-1].isa;
  MEMORY[0x1EEE9AC00](v4);
  v188 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v198 = &v169 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v202 = (&v169 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v169 - v12;
  v14 = sub_1A5FD3ACC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v187 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v197 = (&v169 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v169 - v20);
  v22 = sub_1A5C3A734();
  v204 = v15;
  v23 = v15[2].isa;
  v195 = v22;
  v200 = v14;
  v196 = v15 + 2;
  v194 = v23;
  (v23)(v21);
  v24 = sub_1A5C3A634();
  v25 = *v24;
  v26 = *(v24 + 16);
  swift_retain_n();
  sub_1A5FD3A8C();
  v27 = sub_1A5FD3AAC();
  LODWORD(v193) = sub_1A5FD43AC();
  v28 = sub_1A5FD452C();
  v206 = v3;
  if ((v28 & 1) == 0)
  {

    goto LABEL_13;
  }

  v201 = isa;
  if (v26)
  {
    v29 = HIDWORD(v25);
    if (!HIDWORD(v25))
    {
      v31 = v25 & 0xFFFFF800;
      if (v31 == 55296)
      {
        __break(1u);
        goto LABEL_121;
      }

      v29 = v25 >> 16;
      if (v25 >> 16 <= 0x10)
      {
        if (v25 <= 0x7F)
        {
          v32 = v25 + 1;
          goto LABEL_11;
        }

        goto LABEL_114;
      }

      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (v25)
  {
    v30 = v4;
    goto LABEL_12;
  }

  while (2)
  {
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v61 = (v25 & 0x3F) << 8;
    if (v25 < 0x800)
    {
      v32 = (v25 >> 6) + v61 + 33217;
      goto LABEL_11;
    }

    while (1)
    {
      v166 = (v61 | (v25 >> 6) & 0x3F) << 8;
      if (v29)
      {
        v32 = (v25 >> 18) + ((v166 | (v25 >> 12) & 0x3F) << 8) - 2122219023;
      }

      else
      {
        v32 = (v25 >> 12) + v166 + 8487393;
      }

      v3 = v206;
LABEL_11:
      v30 = v4;
      v212 = (v32 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v32) & 0x18)));

      v25 = &v212;
LABEL_12:
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v212 = v34;
      *v33 = 136315394;
      v35 = (*(*v3 + 152))();
      v37 = sub_1A5B4D654(v35, v36, &v212);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      type metadata accessor for E5RTExecutionContext();
      v38 = sub_1A5B39728(v206);
      v40 = sub_1A5B4D654(v38, v39, &v212);

      *(v33 + 14) = v40;
      v3 = v206;
      v41 = sub_1A5FD3A7C();
      _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v27, v193, v41, v25, "E5RTExecutionContext (%s, %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC558440](v34, -1, -1);
      MEMORY[0x1AC558440](v33, -1, -1);

      v4 = v30;
      isa = v201;
LABEL_13:
      v42 = *(isa + 2);
      v193 = isa + 16;
      v192 = v42;
      v42(v202, v13, v4);
      v191 = sub_1A5FD3B0C();
      swift_allocObject();
      v27 = sub_1A5FD3AFC();
      v43 = *(isa + 1);
      v201 = isa + 8;
      v190 = v43;
      v43(v13, v4);
      v44 = v204[1].isa;
      v45 = v21;
      v21 = v200;
      ++v204;
      v189 = v44;
      v44(v45, v200);
      v46 = sub_1A5BF63A0(2, 0xD000000000000033, 0x80000001A605C210);
      v47 = *(*v3 + 176);
      v48 = *v3 + 176;
      if ((v47(v46) & 1) == 0)
      {
        (*(*v3 + 272))();
        v49 = e5rt_execution_stream_reset();
        if (v49)
        {
          v50 = v49;
          v51 = "undIOPorts:): start";
          sub_1A5B16774();
          swift_allocError();
          v53 = v52;
          v54 = 0xD000000000000027;
LABEL_16:
          sub_1A5D2879C(v54, v51 | 0x8000000000000000, v50, v53);
          swift_willThrow();
          goto LABEL_104;
        }
      }

      v184 = v48;
      v181 = v47;
      v185 = *(v3 + 40);
      v194(v197, v195, v21);
      v55 = sub_1A5C3A64C();
      v25 = *v55;
      v56 = *(v55 + 16);
      swift_retain_n();
      sub_1A5FD3A8C();
      v13 = sub_1A5FD3AAC();
      v57 = sub_1A5FD43AC();
      v58 = sub_1A5FD452C();
      v186 = v27;
      if ((v58 & 1) == 0)
      {
        goto LABEL_21;
      }

      if ((v56 & 1) == 0)
      {
        break;
      }

      v60 = HIDWORD(v25);
      if (HIDWORD(v25))
      {
        __break(1u);
        goto LABEL_117;
      }

      v29 = v25 & 0xFFFFF800;
      v61 = 55296;
      if (v29 != 55296)
      {
        v60 = v25 >> 16;
        if (v25 >> 16 <= 0x10)
        {
          v56 = v4;
          if (v25 <= 0x7F)
          {
            v62 = v25 + 1;
LABEL_27:
            v212 = (v62 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v62) & 0x18)));

            v25 = &v212;
            goto LABEL_28;
          }

LABEL_118:
          v163 = (v25 & 0x3F) << 8;
          if (v25 >= 0x800)
          {
            v167 = (v163 | (v25 >> 6) & 0x3F) << 8;
            if (v60)
            {
              v62 = (v25 >> 18) + ((v167 | (v25 >> 12) & 0x3F) << 8) - 2122219023;
            }

            else
            {
              v62 = (v25 >> 12) + v167 + 8487393;
            }

            v3 = v206;
          }

          else
          {
            v62 = (v25 >> 6) + v163 + 33217;
          }

          goto LABEL_27;
        }

LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

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
    }

    v56 = v4;

    if (!v25)
    {
      __break(1u);
LABEL_21:

      v59 = v198;
      goto LABEL_29;
    }

LABEL_28:
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v212 = v64;
    *v63 = 136315394;
    v65 = (*(*v3 + 152))();
    v67 = sub_1A5B4D654(v65, v66, &v212);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    type metadata accessor for E5RTExecutionContext();
    v68 = sub_1A5B39728(v206);
    v70 = sub_1A5B4D654(v68, v69, &v212);

    *(v63 + 14) = v70;
    v3 = v206;
    v59 = v198;
    v71 = sub_1A5FD3A7C();
    _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v13, v57, v71, v25, "E5RTExecutionContext (%s, %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC558440](v64, -1, -1);
    MEMORY[0x1AC558440](v63, -1, -1);

    v4 = v56;
    v21 = v200;
LABEL_29:
    v192(v202, v59, v4);
    swift_allocObject();
    v72 = sub_1A5FD3AFC();
    v190(v59, v4);
    v73 = v189(v197, v21);
    v74 = (*v3 + 224);
    v183 = *v74;
    v182 = v74;
    if ((v183)(v73))
    {
      v197 = v4;

      sub_1A5BF63A0(2, 0xD000000000000054, 0x80000001A605C640);
      v27 = v186;
    }

    else
    {
      v169 = v72;
      v212 = 0;
      v213 = 0xE000000000000000;
      sub_1A5FD46AC();
      v198 = "tream_reset call failed";
      MEMORY[0x1AC554600](0xD00000000000002CLL, 0x80000001A605C280);
      MEMORY[0x1AC554600](0xD00000000000003CLL, 0x80000001A605C2B0);
      sub_1A5BF63A0(2, v212, v213);

      v25 = (*(*v185 + 168))(v78);
      v212 = 0;
      v213 = 0xE000000000000000;
      sub_1A5FD46AC();

      v212 = 0xD000000000000046;
      v213 = 0x80000001A605C2F0;
      v79 = MEMORY[0x1AC554750](v25, MEMORY[0x1E69E6158]);
      v3 = v80;
      MEMORY[0x1AC554600](v79);

      sub_1A5BF63A0(2, v212, v213);

      v81 = *(v25 + 16);
      v82 = type metadata accessor for NamedObjects();
      v29 = v81 >> 32;
      v27 = v186;
      if (v81 >> 32)
      {
        goto LABEL_110;
      }

      v83 = v82;
      v84 = v205;
      v85 = sub_1A5D2AC24(v81);
      if (v84)
      {

        v50 = v169;
        v3 = v206;
        sub_1A5D40B7C(v169, v206, sub_1A5C3A64C);

        goto LABEL_104;
      }

      v197 = v4;
      v215 = v85;
      v212 = 0;
      v213 = 0xE000000000000000;
      v13 = v85;

      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000002CLL, v198 | 0x8000000000000000);
      MEMORY[0x1AC554600](0xD000000000000032, 0x80000001A605C340);
      v210 = v81;
      v130 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v130);

      v178 = "tNames: capacity: ";
      v177 = 0xD000000000000011;
      MEMORY[0x1AC554600]();
      v210 = v13;
      v131 = sub_1A5D428DC(&qword_1EB1F2DD8, &unk_1A6032808);
      v179 = v83;
      v176 = v131;
      v132 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v132);

      v180 = v13;

      sub_1A5BF63A0(2, v212, v213);

      v174 = *(v25 + 16);
      if (v174)
      {
        v4 = 0;
        v175 = "; outputObjects: ";
        v172 = "tNames: outputName: ";
        v171 = "ndOutput for name: ";
        v170 = "; boundIOPorts: ";
        v27 = (v25 + 40);
        v3 = v206;
        v173 = v25;
        while (1)
        {
          v29 = *(v25 + 16);
          if (v4 >= v29)
          {
            break;
          }

          v133 = v27[-1].isa;
          v13 = v27->isa;
          v212 = 0;
          v213 = 0xE000000000000000;

          sub_1A5FD46AC();
          MEMORY[0x1AC554600](0xD00000000000002CLL, v198 | 0x8000000000000000);
          MEMORY[0x1AC554600](0xD000000000000034, v175 | 0x8000000000000000);
          MEMORY[0x1AC554600](v133, v13);
          sub_1A5BF63A0(2, v212, v213);

          (*(*v185 + 320))(v133, v13);
          sub_1A5B180A0(&v212, &v210);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC0, &qword_1A60333C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F68, qword_1A60333C8);
          swift_dynamicCast();
          v134 = v208;
          v135 = v209;
          __swift_project_boxed_opaque_existential_1(&v207, v208);
          (*(v135 + 24))(&v215, v134, v135);
          v205 = v27;
          v136 = v4;
          __swift_destroy_boxed_opaque_existential_1(&v207);
          v210 = 0;
          v211 = 0xE000000000000000;
          sub_1A5FD46AC();
          MEMORY[0x1AC554600](0xD00000000000002CLL, v198 | 0x8000000000000000);
          MEMORY[0x1AC554600](0xD000000000000023, v172 | 0x8000000000000000);
          MEMORY[0x1AC554600](v133, v13);
          MEMORY[0x1AC554600](v177, v178 | 0x8000000000000000);
          v137 = v215;
          v207 = v215;
          v138 = sub_1A5FD4ACC();
          MEMORY[0x1AC554600](v138);

          MEMORY[0x1AC554600](0xD000000000000010, v171 | 0x8000000000000000);
          v139 = v199;
          v207 = v199;
          type metadata accessor for E5RTExecutionBoundPorts();
          sub_1A5FD481C();
          MEMORY[0x1AC554600](0xD000000000000014, v170 | 0x8000000000000000);
          __swift_project_boxed_opaque_existential_1(&v212, v214);
          sub_1A5FD4AEC();
          sub_1A5BF63A0(2, v210, v211);

          v180 = v137;
          v3 = v206;
          sub_1A5D3D4C0(v133, v13, v137, v139);
          v4 = (&v136->isa + 1);

          __swift_destroy_boxed_opaque_existential_1(&v212);
          v27 = v205 + 2;
          v21 = v200;
          v25 = v173;
          if (v174 == v4)
          {
            goto LABEL_87;
          }
        }

LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
        continue;
      }

      v3 = v206;
LABEL_87:
      v205 = 0;

      v147 = *(*v3 + 232);

      v147(v148);

      v27 = v186;
      v72 = v169;
    }

    break;
  }

  sub_1A5D40B7C(v72, v3, sub_1A5C3A64C);

  v194(v187, v195, v21);
  v75 = sub_1A5C3A640();
  v25 = *v75;
  v76 = *(v75 + 16);
  swift_retain_n();
  sub_1A5FD3A8C();
  v4 = sub_1A5FD3AAC();
  LOBYTE(isa) = sub_1A5FD43AC();
  if (sub_1A5FD452C())
  {
    if ((v76 & 1) == 0)
    {

      if (v25)
      {
        v77 = v188;
        goto LABEL_45;
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v31 = HIDWORD(v25);
    if (HIDWORD(v25))
    {
      goto LABEL_122;
    }

    v29 = v25 & 0xFFFFF800;
    v61 = 55296;
    if (v29 != 55296)
    {
      v31 = v25 >> 16;
      v77 = v188;
      if (v25 >> 16 <= 0x10)
      {
        if (v25 <= 0x7F)
        {
          v86 = v25 + 1;
          goto LABEL_44;
        }

LABEL_124:
        v144 = (v25 & 0x3F) << 8;
        if (v25 >= 0x800)
        {
          goto LABEL_142;
        }

        v164 = (v25 >> 6) + v144;
        v165 = 33217;
LABEL_126:
        v86 = v164 + v165;
        goto LABEL_127;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    goto LABEL_129;
  }

  v77 = v188;
  while (1)
  {
    v95 = v77;
    v96 = v77;
    v97 = v197;
    v192(v202, v95, v197);
    swift_allocObject();
    v4 = sub_1A5FD3AFC();
    v190(v96, v97);
    v98 = v189(v187, v21);
    v99 = *(*v3 + 200);
    v21 = (*v3 + 200);
    if ((v99)(v98))
    {
      break;
    }

    v202 = v21;
    v198 = v99;
    v204 = v4;
    v212 = 0;
    v213 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000002CLL, 0x80000001A605C280);
    MEMORY[0x1AC554600](0xD00000000000003ALL, 0x80000001A605C450);
    sub_1A5BF63A0(2, v212, v213);

    v116 = (*(*v203 + 144))(v115);
    v118 = v116;
    v21 = *(v116 + 16);
    if (v117 != v21)
    {
      v119 = v117;
      v25 = 0x80000001A605C490;
      v29 = v116 + 16 * v117;
      v27 = (v29 + 40);
      v4 = v117;
      while (1)
      {
        if ((v119 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v29 = *(v118 + 16);
        if (v4 >= v29)
        {
          goto LABEL_107;
        }

        v120 = v27[-1].isa;
        v13 = v27->isa;
        v212 = 0;
        v213 = 0xE000000000000000;

        sub_1A5FD46AC();

        v212 = 0xD00000000000004ELL;
        v213 = 0x80000001A605C490;
        MEMORY[0x1AC554600](v120, v13);
        sub_1A5BF63A0(2, v212, v213);

        v121 = v120;
        v122 = v205;
        v3 = v206;
        v50 = v206;
        sub_1A5D3D188(v121, v13, v203, v199);
        v205 = v122;
        if (v122)
        {
          break;
        }

        v4 = (v4 + 1);
        v27 += 2;
        if (v21 == v4)
        {
          goto LABEL_66;
        }
      }

      sub_1A5D40B7C(v204, v3, sub_1A5C3A640);

LABEL_103:
      v27 = v186;
      goto LABEL_104;
    }

LABEL_66:

    v123 = *(*v3 + 208);

    v123(v124);
    v27 = v186;
    v21 = v202;
LABEL_67:
    sub_1A5D40B7C(v204, v3, sub_1A5C3A640);

    isa = v181;
    if ((v181)(v125))
    {
      goto LABEL_97;
    }

    if ((v198)() && (v126 = , (v183)(v126)))
    {

      v127 = 1;
    }

    else
    {
      v127 = 0;
    }

    v141 = swift_beginAccess();
    *(v3 + 17) = v127;
    if (((isa)(v141) & 1) == 0)
    {
      goto LABEL_97;
    }

    v142 = (*v3 + 272);
    v4 = *v142;
    LODWORD(v25) = v142;
    v143 = (*v142)();
    if (v143)
    {
      LOBYTE(isa) = v143;
      if ((*(*v3 + 248))())
      {
        v145 = e5rt_execution_stream_encode_operation();
        if (v145)
        {
          v50 = v145;
          v51 = "uration:): self.isPrebound = ";
          sub_1A5B16774();
          swift_allocError();
          v53 = v146;
          v54 = 0xD000000000000032;
          goto LABEL_16;
        }

        v210 = 0;
        v211 = 0xE000000000000000;
        sub_1A5FD46AC();

        v210 = 0xD000000000000056;
        v211 = 0x80000001A605C4E0;
        v149 = *(v3 + 16);
        if (*(v3 + 16))
        {
          v150 = 1702195828;
        }

        else
        {
          v150 = 0x65736C6166;
        }

        if (*(v3 + 16))
        {
          v151 = 0xE400000000000000;
        }

        else
        {
          v151 = 0xE500000000000000;
        }

        MEMORY[0x1AC554600](v150, v151);
        v3 = v206;

        sub_1A5BF63A0(2, v210, v211);

        if (v149 == 1)
        {
          v210 = 0;
          v211 = 0xE000000000000000;
          sub_1A5FD46AC();
          v3 = v206;
          MEMORY[0x1AC554600](0xD00000000000002CLL, 0x80000001A605C280);
          MEMORY[0x1AC554600](0xD00000000000003ALL, 0x80000001A605BF70);
          sub_1A5BF63A0(2, v210, v211);

          (v4)(v152);
          v153 = e5rt_execution_stream_prewire_in_use_allocations();
          if (v153)
          {
            v50 = v153;
            v51 = "prewire_in_use_allocations";
            sub_1A5B16774();
            swift_allocError();
            v53 = v154;
            v54 = 0xD00000000000003CLL;
            goto LABEL_16;
          }
        }

LABEL_97:
        v155 = v183();
        if (v155)
        {
          v50 = v155;
          sub_1A5D40B7C(v27, v3, sub_1A5C3A634);

          return v50;
        }

        goto LABEL_133;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_142:
    v168 = (v144 | (v25 >> 6) & 0x3F) << 8;
    if (v31)
    {
      v164 = (v25 >> 18) + ((v168 | (v25 >> 12) & 0x3F) << 8);
      v165 = -2122219023;
      goto LABEL_126;
    }

    v86 = (v25 >> 12) + v168 + 8487393;
LABEL_127:
    v3 = v206;
    v77 = v188;
LABEL_44:
    v212 = (v86 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v86) & 0x18)));

    v25 = &v212;
LABEL_45:
    v13 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v212 = v87;
    *v13 = 136315394;
    v88 = (*(*v3 + 152))();
    v90 = sub_1A5B4D654(v88, v89, &v212);

    *(v13 + 4) = v90;
    *(v13 + 6) = 2080;
    type metadata accessor for E5RTExecutionContext();
    v91 = sub_1A5B39728(v206);
    v93 = sub_1A5B4D654(v91, v92, &v212);

    *(v13 + 14) = v93;
    v3 = v206;
    v94 = sub_1A5FD3A7C();
    _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v4, isa, v94, v25, "E5RTExecutionContext (%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC558440](v87, -1, -1);
    MEMORY[0x1AC558440](v13, -1, -1);

    v21 = v200;
  }

  v100 = sub_1A5BF63A0(2, 0xD000000000000052, 0x80000001A605C540);
  v101 = (v99)(v100);
  if (!v101)
  {
    goto LABEL_130;
  }

  v102 = (*(*v101 + 88))(v101);

  v50 = v203;
  if (v102 != (*(*v203 + 88))(v103))
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(0xD00000000000001FLL, 0x80000001A605C5A0, v128);
    swift_willThrow();
    v129 = v4;
    v3 = v206;
    goto LABEL_78;
  }

  v3 = v206;
  v104 = v99();
  if (!v104)
  {
    goto LABEL_132;
  }

  v105 = (*(*v104 + 96))(v104);

  v50 = (*(*v203 + 96))(v106);
  if (sub_1A5B73F70(v105, v50))
  {
    v204 = v4;
    v200 = *(v105 + 16);
    if (v200)
    {
      v4 = 0;
      v3 = v105 + 40;
      v201 = v50;
      v202 = v105;
      while (1)
      {
        v29 = *(v105 + 16);
        if (v4 >= v29)
        {
          goto LABEL_109;
        }

        v27 = *(v3 - 8);
        v13 = *v3;

        v25 = v99;
        v108 = v21;
        v109 = (v99)(v107);
        if (!v109)
        {
          goto LABEL_131;
        }

        v110 = v205;
        v111 = (*(*v109 + 152))(v27, v13);
        if (v110)
        {
          break;
        }

        v112 = v111;

        if (!v112)
        {

          v212 = 0;
          v213 = 0xE000000000000000;
          sub_1A5FD46AC();

          v212 = 0xD000000000000024;
          v213 = 0x80000001A605C5E0;
          MEMORY[0x1AC554600](v27, v13);

          v156 = v212;
          v157 = v213;
          sub_1A5B16774();
          swift_allocError();
          sub_1A5D2869C(v156, v157, v158);

          swift_willThrow();
          goto LABEL_102;
        }

        v210 = v112;
        v113 = (*(*v203 + 152))(v27, v13);
        if (!v113)
        {

          v212 = 0;
          v213 = 0xE000000000000000;
          sub_1A5FD46AC();

          v212 = 0xD000000000000024;
          v213 = 0x80000001A605C610;
          MEMORY[0x1AC554600](v27, v13);

          v159 = v212;
          v160 = v213;
          sub_1A5B16774();
          swift_allocError();
          sub_1A5D2869C(v159, v160, v161);

          swift_willThrow();

          goto LABEL_102;
        }

        sub_1A5B3AD28(&v210);
        v205 = 0;
        v4 = (v4 + 1);
        v114 = v210;

        v3 += 16;
        v27 = v186;
        v99 = v25;
        v21 = v108;
        v105 = v202;
        if (v200 == v4)
        {
          goto LABEL_59;
        }
      }

LABEL_102:
      v50 = v204;
      v3 = v206;
      sub_1A5D40B7C(v204, v206, sub_1A5C3A640);

      goto LABEL_103;
    }

LABEL_59:
    v198 = v99;

    v3 = v206;
    goto LABEL_67;
  }

  sub_1A5B16774();
  swift_allocError();
  sub_1A5D2869C(0xD00000000000001FLL, 0x80000001A605C5C0, v140);
  swift_willThrow();
  v129 = v4;
LABEL_78:
  sub_1A5D40B7C(v129, v3, sub_1A5C3A640);

LABEL_104:
  sub_1A5D40B7C(v27, v3, sub_1A5C3A634);

  return v50;
}

uint64_t sub_1A5D40B7C(const char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v49 = a1;
  v5 = sub_1A5FD3ADC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5FD3A9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5FD3ACC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5C3A734();
  v16 = (*(v12 + 16))(v14, v15, v11);
  v17 = a3(v16);
  v48 = *v17;
  v18 = *(v17 + 16);
  v19 = a2;
  swift_retain_n();
  v20 = sub_1A5FD3AAC();
  sub_1A5FD3AEC();
  v44 = sub_1A5FD439C();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v41 = v20;
  v42 = v8;
  v43 = v7;
  if (v18)
  {
    if (!(v48 >> 32))
    {
      if ((v48 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v26 = v46;
      v25 = v47;
      v27 = v45;
      if (v48 >> 16 <= 0x10)
      {
        v23 = v11;
        v22 = v19;
        v24 = v10;

        v48 = &v50;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v19;

  if (!v48)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v11;
  v24 = v10;
  v26 = v46;
  v25 = v47;
  v27 = v45;
LABEL_10:

  sub_1A5FD3B1C();

  v28 = v12;
  if ((*(v26 + 88))(v27, v25) == *MEMORY[0x1E69E93E8])
  {
    v29 = 0;
    v49 = "[Error] Interval already ended";
  }

  else
  {
    (*(v26 + 8))(v27, v25);
    v49 = "E5RTExecutionContext (%s, %s";
    v29 = 2;
  }

  v30 = v14;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v50 = v32;
  *v31 = v29;
  *(v31 + 1) = v29;
  *(v31 + 2) = 2080;
  v33 = (*(*v22 + 152))();
  v35 = sub_1A5B4D654(v33, v34, &v50);

  *(v31 + 4) = v35;
  *(v31 + 12) = 2080;
  type metadata accessor for E5RTExecutionContext();
  v36 = sub_1A5B39728(v22);
  v38 = sub_1A5B4D654(v36, v37, &v50);

  *(v31 + 14) = v38;
  v39 = sub_1A5FD3A7C();
  v40 = v41;
  _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v41, v44, v39, v48, v49, v31, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1AC558440](v32, -1, -1);
  MEMORY[0x1AC558440](v31, -1, -1);

  (*(v42 + 8))(v24, v43);
  return (*(v28 + 8))(v30, v23);
}

void *sub_1A5D4105C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5D33E1C(*(v1 + 16), 0);
  v4 = sub_1A5D354B4(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_1A5B2E3F4(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1A5D4112C(unsigned int a1)
{
  v2 = swift_allocObject();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F60, &unk_1A60333B0);
  *(v2 + 16) = MEMORY[0x1AC554430](a1, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  return v2;
}

uint64_t sub_1A5D4119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (, sub_1A5B0E2A4(a2, a3), v8 = v7, , (v8 & 1) != 0))
  {
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0x203A656D614ELL, 0xE600000000000000);
    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A605C6A0);
    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0x79646165726C6120, 0xEF73747369786520);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0, 0xE000000000000000, v9);

    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_1A5D419E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v12;
    return swift_endAccess();
  }
}

uint64_t sub_1A5D4136C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_1A5B0E2A4(a1, a2);
    if (v7)
    {
      a2 = *(*(v5 + 56) + 8 * v6);

      result = *a2;
      if (*a2)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x203A656D614ELL, 0xE600000000000000);
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A605C6A0);
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605C6C0);
  sub_1A5B16774();
  swift_allocError();
  sub_1A5D286A4(0, 0xE000000000000000, v9);

  return swift_willThrow();
}

void sub_1A5D414E0()
{
  swift_beginAccess();
  v1 = v0[2];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = (*(v1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];
    v12 = *(*v0 + 152);

    v12(v10, v11);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1A5D41618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1A5B0E2A4(a1, a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2[2];
  v13 = v3[2];
  v3[2] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A5D41B48();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_1A5CC1F7C(v8, v10);
  v3[2] = v10;
  swift_endAccess();
  return (*(*v3 + 160))(v11);
}

void *sub_1A5D41710(void *result)
{
  if (*result)
  {
    v1 = result;
    result = e5rt_io_port_release();
    *v1 = 0;
  }

  return result;
}

uint64_t sub_1A5D41744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F70, &qword_1A60334D8);
  v34 = v4;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A5D419E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A5B0E2A4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A5D41744(v16, a4 & 1);
      result = sub_1A5B0E2A4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A5FD4B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A5D41B48();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_1A5D41B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F70, &qword_1A60334D8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

uint64_t sub_1A5D41CB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    type metadata accessor for NamedObjects();
    sub_1A5D428DC(&qword_1EB1F5CE0, &unk_1A60327E0);

    v10 = sub_1A5FD3D0C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (a4)
  {
    goto LABEL_11;
  }

  if (a2)
  {
    if (a5)
    {
      type metadata accessor for NamedObjects();
      sub_1A5D428DC(&qword_1EB1F5CE0, &unk_1A60327E0);

      v11 = sub_1A5FD3D0C();

      if (v11)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  if (a5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = a3 ^ a6 ^ 1;
  return v12 & 1;
}

uint64_t sub_1A5D41E44(uint64_t a1, uint64_t a2)
{
  result = e5rt_buffer_object_create_from_iosurface();
  if (result)
  {
    v3 = result;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000034, 0x80000001A605C9D0, v3, v4);
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D41F84(uint64_t a1, uint64_t a2)
{
  result = e5rt_surface_object_create_from_iosurface();
  if (result)
  {
    v3 = result;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000035, 0x80000001A605CA40, v3, v4);
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A5D420C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A5BF63A0(2, 0xD00000000000001ELL, 0x80000001A605C950);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605C930);
  MEMORY[0x1AC554600](0xD00000000000002FLL, 0x80000001A605C970);
  MEMORY[0x1AC554600](a1, a2);
  sub_1A5BF63A0(2, 0, 0xE000000000000000);

  v8 = (*(*a3 + 200))(a1, a2);
  if (!v4)
  {
    v9 = v8;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605C930);
    MEMORY[0x1AC554600](0xD00000000000002ELL, 0x80000001A605C9A0);
    MEMORY[0x1AC554600](a1, a2);
    MEMORY[0x1AC554600](0x636166727573203BLL, 0xEB00000000203A65);
    type metadata accessor for IOSurfaceRef(0);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, 0, 0xE000000000000000);

    v10 = e5rt_buffer_object_create_from_iosurface();
    if (v10)
    {
      v11 = v10;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD000000000000034, 0x80000001A605C9D0, v11, v12);
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A5D423D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*a3 + 200))(a1, a2);
  if (!v4)
  {
    v6 = v5;
    v7 = e5rt_surface_object_create_from_iosurface();
    if (v7)
    {
      v8 = v7;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD000000000000035, 0x80000001A605CA40, v8, v9);
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1A5D42560(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *))
{
  v14 = a2;
  v15 = a3;

  MEMORY[0x1AC554600](0x6166206C6C616320, 0xEC00000064656C69);
  sub_1A5D2879C(v14, v15, a1, &v14);

  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  sub_1A5D28680(v14, v15, v16, v17);
  a4(0, &v14);
  sub_1A5D4270C(v6, v7, v8, v9);
  v10 = v14;
  v11 = v15;
  v12 = v16 | (v17 << 32);

  return sub_1A5D42728(v10, v11, v12);
}

void sub_1A5D42668(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 24);
  if (a3)
  {

    sub_1A5D42560(11, 0xD00000000000001ELL, 0x80000001A605C820, v4);
  }

  else
  {
    v5 = *(v3 + 40);
    v6[0] = 0;
    v6[1] = 0;
    v8 = -1;
    v7 = 0;
    v4(v5, v6);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1A5D4270C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0x14u && a4 != 11)
  {
  }

  return result;
}

double sub_1A5D42728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_1A5D4270C(a1, a2, a3, BYTE4(a3));
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1A5D42784(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 24);
  if (a3)
  {

    sub_1A5D42560(11, 0xD00000000000001ELL, 0x80000001A605C820, v4);
  }

  else
  {
    v5 = *(v3 + 40);
    if (v5)
    {
      v6[0] = 0;
      v6[1] = 0;
      v7 = 0;
      v8 = -1;
      v4(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A5D42818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A5D42874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A5D428DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NamedObjects();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5D42928()
{
  sub_1A5FD46AC();

  sub_1A5FD353C();
  sub_1A5D43060(&unk_1EB1F2E28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v0 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605CAB0);
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  return 0x203A6C7275;
}

uint64_t sub_1A5D42A40@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A5FD353C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  if ((sub_1A5FD349C() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (sub_1A5FD34AC() != 7104877 || v12 != 0xE300000000000000)
  {
    v13 = sub_1A5FD4B0C();

    if (v13)
    {
      goto LABEL_6;
    }

LABEL_13:
    v24 = *(type metadata accessor for E5RTProgramLibrary(0) + 240);
    result = v24(a1);
    if (v2)
    {
      return result;
    }

    if ((result & 1) == 0)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1A5FD46AC();

      v34 = 0x203A6C7255;
      v35 = 0xE500000000000000;
      sub_1A5D43060(&unk_1EB1F2E28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v26 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v26);

      MEMORY[0x1AC554600](0xD000000000000025, 0x80000001A605CAD0);
      v27 = v34;
      v28 = v35;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(v27, v28, v29);

      return swift_willThrow();
    }

    (*(v6 + 16))(v8, a1, v5);
    a2[3] = type metadata accessor for E5RTProgramLibraryBundleModelSource(0);
    a2[4] = sub_1A5D43060(&qword_1EB1F5F78, type metadata accessor for E5RTProgramLibraryBundleModelSource, &unk_1A6033500);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    if ((v24(v8) & 1) == 0)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1A5FD46AC();

      v34 = 0x203A6C7255;
      v35 = 0xE500000000000000;
      sub_1A5D43060(&unk_1EB1F2E28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v30 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v30);

      MEMORY[0x1AC554600](0xD000000000000025, 0x80000001A605CAD0);
      v31 = v34;
      v32 = v35;
      sub_1A5B16774();
      v21 = swift_allocError();
      sub_1A5D286A4(v31, v32, v33);

      swift_willThrow();
      result = (*(v6 + 8))(v8, v5);
LABEL_23:
      if (!v21)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_0(a2);
    }

    result = (*(v6 + 32))(boxed_opaque_existential_1, v8, v5);
    goto LABEL_20;
  }

LABEL_6:
  (*(v6 + 16))(v11, a1, v5);
  a2[3] = type metadata accessor for E5RTMILModelSource(0);
  a2[4] = sub_1A5D43060(&qword_1EB1F5F80, type metadata accessor for E5RTMILModelSource, &unk_1A60335FC);
  v14 = __swift_allocate_boxed_opaque_existential_1(a2);
  if ((sub_1A5FD349C() & 1) == 0)
  {
LABEL_12:
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1A5FD46AC();

    v34 = 0x203A6C7255;
    v35 = 0xE500000000000000;
    sub_1A5D43060(&unk_1EB1F2E28, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v18 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v18);

    MEMORY[0x1AC554600](0xD000000000000025, 0x80000001A605CAD0);
    v19 = v34;
    v20 = v35;
    sub_1A5B16774();
    v21 = swift_allocError();
    sub_1A5D286A4(v19, v20, v22);

    swift_willThrow();
    result = (*(v6 + 8))(v11, v5);
    goto LABEL_23;
  }

  if (sub_1A5FD34AC() == 7104877 && v15 == 0xE300000000000000)
  {
  }

  else
  {
    v17 = sub_1A5FD4B0C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = (*(v6 + 32))(v14, v11, v5);
LABEL_20:
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a2);
  }

  return result;
}

uint64_t sub_1A5D43060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A5D430D8(uint64_t a1)
{
  v2 = sub_1A5D43150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D43114(uint64_t a1)
{
  v2 = sub_1A5D43150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A5D43150()
{
  result = qword_1EB27E8F0;
  if (!qword_1EB27E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27E8F0);
  }

  return result;
}

uint64_t sub_1A5D431A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1A5FD353C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5FA0, &qword_1A60334E8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for E5RTProgramLibraryBundleModelSource(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D43150();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1A5D43060(&qword_1EB1F5FA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1A5FD497C();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1A5D43CF8(v11, v13, type metadata accessor for E5RTProgramLibraryBundleModelSource);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1A5D434F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A5D4357C(uint64_t a1)
{
  v2 = sub_1A5D435F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D435B8(uint64_t a1)
{
  v2 = sub_1A5D435F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A5D435F4()
{
  result = qword_1EB27E8F8[0];
  if (!qword_1EB27E8F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27E8F8);
  }

  return result;
}

uint64_t sub_1A5D43648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1A5FD353C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5FB8, &qword_1A60334F8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for E5RTMILModelSource(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D435F4();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1A5D43060(&qword_1EB1F5FA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1A5FD497C();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1A5D43CF8(v11, v13, type metadata accessor for E5RTMILModelSource);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D438E8(__n128 a1)
{
  if ((sub_1A5FD349C() & 1) == 0)
  {
    return 0;
  }

  if (sub_1A5FD34AC() == 7104877 && v1 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_1A5FD4B0C();

    return v3 & 1;
  }
}

uint64_t sub_1A5D439DC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1A5FD4CDC();
  sub_1A5FD353C();
  sub_1A5D43060(&qword_1EB1F5F90, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1A5FD4A5C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A5D43B60()
{
  sub_1A5FD4C1C();
  sub_1A5FD353C();
  sub_1A5D43060(&qword_1EB1F5F98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

double sub_1A5D43BEC(uint64_t a1)
{
  sub_1A5FD353C();
  sub_1A5D43060(&qword_1EB1F5F98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  sub_1A5FD3CBC();
  return result;
}

uint64_t sub_1A5D43C74(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD353C();
  sub_1A5D43060(&qword_1EB1F5F98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D43CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5D43D60(void *a1)
{
  a1[1] = sub_1A5D43060(&qword_1EB1F5FC0, type metadata accessor for E5RTProgramLibraryBundleModelSource, &unk_1A60335D4);
  a1[2] = sub_1A5D43060(&qword_1EB1F5FC8, type metadata accessor for E5RTProgramLibraryBundleModelSource, &unk_1A603351C);
  a1[3] = sub_1A5D43060(&qword_1EB1F5FD0, type metadata accessor for E5RTProgramLibraryBundleModelSource, &unk_1A6033544);
  result = sub_1A5D43060(&qword_1EB1F5FD8, type metadata accessor for E5RTProgramLibraryBundleModelSource, &unk_1A603356C);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5D43E7C(void *a1)
{
  a1[1] = sub_1A5D43060(&qword_1EB1F5FE8, type metadata accessor for E5RTMILModelSource, &unk_1A60336D0);
  a1[2] = sub_1A5D43060(&qword_1EB1F5FF0, type metadata accessor for E5RTMILModelSource, &unk_1A6033618);
  a1[3] = sub_1A5D43060(&qword_1EB1F5FF8, type metadata accessor for E5RTMILModelSource, &unk_1A6033640);
  result = sub_1A5D43060(&qword_1EB1F6000, type metadata accessor for E5RTMILModelSource, &unk_1A6033668);
  a1[4] = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5FD353C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5FD353C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A5D440F4(uint64_t a1)
{
  result = sub_1A5FD353C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A5D44184()
{
  result = qword_1EB27F020[0];
  if (!qword_1EB27F020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27F020);
  }

  return result;
}

unint64_t sub_1A5D441DC()
{
  result = qword_1EB27F230[0];
  if (!qword_1EB27F230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27F230);
  }

  return result;
}

unint64_t sub_1A5D44234()
{
  result = qword_1EB27F340;
  if (!qword_1EB27F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27F340);
  }

  return result;
}

unint64_t sub_1A5D4428C()
{
  result = qword_1EB27F348[0];
  if (!qword_1EB27F348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27F348);
  }

  return result;
}

unint64_t sub_1A5D442E4()
{
  result = qword_1EB27F3D0;
  if (!qword_1EB27F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27F3D0);
  }

  return result;
}

unint64_t sub_1A5D4433C()
{
  result = qword_1EB27F3D8[0];
  if (!qword_1EB27F3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27F3D8);
  }

  return result;
}

uint64_t sub_1A5D443B0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F466C65786970;
    v6 = 0x6965486C65786970;
    if (a1 != 2)
    {
      v6 = 0x7265507365747962;
    }

    if (a1)
    {
      v5 = 0x6469576C65786970;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6570616873;
    v2 = 0x73656469727473;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701667182;
    if (a1 != 4)
    {
      v3 = 0x6570795461746164;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A5D444EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D44C34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D44520(uint64_t a1)
{
  v2 = sub_1A5D45350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4455C(uint64_t a1)
{
  v2 = sub_1A5D45350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D44598(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6010, &qword_1A60339A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D45350();
  sub_1A5FD4CDC();
  LOBYTE(v11) = 0;
  sub_1A5FD4A8C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1A5FD4A8C();
    LOBYTE(v11) = 2;
    sub_1A5FD4A8C();
    LOBYTE(v11) = 3;
    sub_1A5FD4A8C();
    LOBYTE(v11) = 4;
    sub_1A5FD4A1C();
    v11 = v3[4];
    HIBYTE(v10) = 5;
    sub_1A5D382D4();
    sub_1A5FD4A5C();
    v11 = v3[6];
    HIBYTE(v10) = 6;
    sub_1A5D38328();
    sub_1A5FD4A5C();
    v11 = v3[7];
    HIBYTE(v10) = 7;
    sub_1A5D2E510();
    sub_1A5FD4A5C();
    LOBYTE(v11) = 8;
    sub_1A5FD4A8C();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1A5D44878(uint64_t a1)
{
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD3DBC();
  sub_1A5D38464();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  sub_1A5D384B8();
  sub_1A5FD3CBC();
  sub_1A5D2E564();
  sub_1A5FD3CBC();
  return result;
}

uint64_t sub_1A5D4496C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A5D449A4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  a1[3] = &type metadata for TensorShape;
  a1[4] = sub_1A5D37590();
  *a1 = v3;
}

uint64_t sub_1A5D449F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = &type metadata for TensorStrides;
  a1[4] = sub_1A5D2E380();
  *a1 = v3;
}

double sub_1A5D44A4C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1A5D44F30(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1A5D44AA8()
{
  sub_1A5FD4C1C();
  sub_1A5D44878(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D44AEC(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5D44878(v2);
  return sub_1A5FD4C6C();
}

BOOL sub_1A5D44B28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1A5D453A4(v7, v8);
}

uint64_t sub_1A5D44B74(uint64_t a1)
{
  v2 = sub_1A5D3C080();

  return sub_1A5D488F8(a1, v2);
}

double sub_1A5D44BB0@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, ValueMetadata *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  sub_1A5D454F4(a2, a3, a4, a5, a6, v11);
  if (!v6)
  {
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

double sub_1A5D44BF4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, unsigned int a7@<W5>)
{
  sub_1A5D45660(a2, a3, a4, a5, a6, a7, v11);
  v8 = v11[1];
  *a1 = v11[0];
  a1[1] = v8;
  result = *&v12;
  v10 = v13;
  a1[2] = v12;
  a1[3] = v10;
  return result;
}

uint64_t sub_1A5D44C34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265507365747962 && a2 == 0xEB00000000776F52 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73656469727473 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A605B480 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_1A5D44F30(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6050, &qword_1A6033C80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D45350();
  sub_1A5FD4CCC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1A5FD49AC();
    LOBYTE(v31) = 1;
    v10 = sub_1A5FD49AC();
    LOBYTE(v31) = 2;
    v40 = sub_1A5FD49AC();
    LOBYTE(v31) = 3;
    v26 = sub_1A5FD49AC();
    LOBYTE(v31) = 4;
    *&v25 = sub_1A5FD493C();
    *(&v25 + 1) = v11;
    LOBYTE(v27) = 5;
    sub_1A5D38A78();
    sub_1A5FD497C();
    v24 = v31;
    LOBYTE(v27) = 6;
    sub_1A5D38ACC();
    sub_1A5FD497C();
    v23 = v31;
    LOBYTE(v27) = 7;
    sub_1A5D2E4BC();
    sub_1A5FD497C();
    v12 = v31;
    v41 = 8;
    v13 = sub_1A5FD49AC();
    v22[1] = 0;
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *&v27 = __PAIR64__(v10, v9);
    v15 = v40;
    v16 = v26;
    *(&v27 + 1) = __PAIR64__(v26, v40);
    v17 = v25;
    v18 = v12;
    v22[0] = v12;
    v19 = *(&v25 + 1);
    v28 = v25;
    *&v29 = v24;
    DWORD2(v29) = v14;
    *&v30 = v23;
    *(&v30 + 1) = v18;
    sub_1A5D45C24(&v27, &v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = __PAIR64__(v10, v9);
    v32 = v15;
    v33 = v16;
    v34 = v17;
    v35 = v19;
    v36 = v24;
    v37 = v14;
    v38 = v23;
    v39 = v22[0];
    sub_1A5C51490(&v31);
    v20 = v28;
    *a2 = v27;
    a2[1] = v20;
    v21 = v30;
    a2[2] = v29;
    a2[3] = v21;
  }
}

unint64_t sub_1A5D45350()
{
  result = qword_1EB27F460[0];
  if (!qword_1EB27F460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27F460);
  }

  return result;
}

BOOL sub_1A5D453A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v2 = a1, v3 = a2, v4 = sub_1A5FD4B0C(), a2 = v3, v5 = v4, a1 = v2, (v5 & 1) != 0))
  {
    v6 = a1;
    v7 = a2;
    sub_1A5D38A24();
    sub_1A5FD3EBC();
    sub_1A5FD3EBC();
    if (v10 == v9 && (sub_1A5D2D714(*(v6 + 48), *(v7 + 48)) & 1) != 0 && (sub_1A5D2D714(*(v6 + 56), *(v7 + 56)) & 1) != 0)
    {
      return *(v6 + 40) == *(v7 + 40);
    }
  }

  return 0;
}

void sub_1A5D454F4(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a1;
  v12 = sub_1A5D2E3D4();
  sub_1A5D3038C(a3, a5, a4, &type metadata for TensorShape, v12);
  v13 = v25;
  v14 = sub_1A5D46C50(a3);
  if (v6)
  {
  }

  else
  {
    v15 = v14;
    v29 = &type metadata for TensorShape;
    v30 = sub_1A5D37590();

    v16 = sub_1A5D2DC34();
    v17 = sub_1A5D46E60(v15, a4);
    if (((v17 * a5) & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *&v21 = __PAIR64__(a4, a3);
      *(&v21 + 1) = __PAIR64__(v17, a5);
      *&v22 = v34;
      *(&v22 + 1) = a2;
      *&v23 = v15;
      DWORD2(v23) = v17 * a5;
      *&v24 = v25;
      *(&v24 + 1) = v16;
      v25 = __PAIR64__(a4, a3);
      v26 = a5;
      v27 = v17;
      v28 = v34;
      v29 = a2;
      v30 = v15;
      v31 = v17 * a5;
      v32 = v13;
      v33 = v16;
      sub_1A5D45C24(&v21, v20);
      sub_1A5C51490(&v25);
      v18 = v22;
      *a6 = v21;
      a6[1] = v18;
      v19 = v24;
      a6[2] = v23;
      a6[3] = v19;
    }
  }
}

uint64_t sub_1A5D45660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, _OWORD *a7@<X8>)
{
  result = sub_1A5D46E2C(a3);
  if (*(a4 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v17 = *(a4 + 40);
    v16 = *(a4 + 44);
    result = sub_1A5D46E60(a3, v16);
    if (v17)
    {
      *&v21 = __PAIR64__(v16, v15);
      DWORD2(v21) = v17;
      HIDWORD(v21) = a6 / v17;
      *&v22 = a1;
      *(&v22 + 1) = a2;
      *&v23 = a3;
      DWORD2(v23) = a6;
      *&v24 = a4;
      *(&v24 + 1) = a5;
      v25[0] = v15;
      v25[1] = v16;
      v25[2] = v17;
      v25[3] = a6 / v17;
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a6;
      v30 = a4;
      v31 = a5;
      sub_1A5D45C24(&v21, v20);
      result = sub_1A5C51490(v25);
      v18 = v22;
      *a7 = v21;
      a7[1] = v18;
      v19 = v24;
      a7[2] = v23;
      a7[3] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5D45754(uint64_t a1)
{
  result = sub_1A5D3C080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D4577C(void *a1)
{
  a1[1] = sub_1A5D457BC();
  a1[2] = sub_1A5D45810();
  a1[3] = sub_1A5D45864();
  result = sub_1A5D458B8();
  a1[4] = result;
  return result;
}

unint64_t sub_1A5D457BC()
{
  result = qword_1EB1F6018;
  if (!qword_1EB1F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6018);
  }

  return result;
}

unint64_t sub_1A5D45810()
{
  result = qword_1EB1F6020;
  if (!qword_1EB1F6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6020);
  }

  return result;
}

unint64_t sub_1A5D45864()
{
  result = qword_1EB1F6028;
  if (!qword_1EB1F6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6028);
  }

  return result;
}

unint64_t sub_1A5D458B8()
{
  result = qword_1EB1F6030;
  if (!qword_1EB1F6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6030);
  }

  return result;
}

unint64_t sub_1A5D4590C(uint64_t a1)
{
  result = sub_1A5C513F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D45938()
{
  result = qword_1EB1F6038;
  if (!qword_1EB1F6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6038);
  }

  return result;
}

unint64_t sub_1A5D4598C(uint64_t a1)
{
  *(a1 + 8) = sub_1A5D459BC();
  result = sub_1A5D45A10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5D459BC()
{
  result = qword_1EB1F6040;
  if (!qword_1EB1F6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6040);
  }

  return result;
}

unint64_t sub_1A5D45A10()
{
  result = qword_1EB1F6048;
  if (!qword_1EB1F6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6048);
  }

  return result;
}

uint64_t sub_1A5D45A64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5D45AAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1A5D45B20()
{
  result = qword_1EB27FA70[0];
  if (!qword_1EB27FA70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27FA70);
  }

  return result;
}

unint64_t sub_1A5D45B78()
{
  result = qword_1EB27FB80;
  if (!qword_1EB27FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27FB80);
  }

  return result;
}

unint64_t sub_1A5D45BD0()
{
  result = qword_1EB27FB88[0];
  if (!qword_1EB27FB88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27FB88);
  }

  return result;
}

void sub_1A5D45C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5FD450C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v22 = a1;
  v23 = a2;
  v9 = sub_1A5FD3D2C();
  v10 = [v8 initWithString_];

  v11 = *MEMORY[0x1E696A028];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  v13 = sub_1A5FD451C();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if ((v13 & 0x100000000) != 0 || (sub_1A5FD44DC(), !v15) || (, v12(v7, v11, v4), v16 = sub_1A5FD451C(), v14(v7, v4), v21 = v16, (v16 & 0x100000000) != 0) || (sub_1A5FD44DC(), !v17) || (, v12(v7, v11, v4), v18 = sub_1A5FD451C(), v14(v7, v4), (v18 & 0x100000000) != 0))
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1A5FD46AC();

    v24 = 0xD000000000000018;
    v25 = 0x80000001A605CB00;
    MEMORY[0x1AC554600](v22, v23);

    sub_1A5BF63A0(2, v24, v25);

    v19 = 1;
    goto LABEL_9;
  }

  if (((v21 | v13 | v18) & 0x80000000) == 0)
  {
    v19 = 0;
LABEL_9:
    LOBYTE(v24) = v19;
    return;
  }

  __break(1u);
}

uint64_t sub_1A5D45F3C(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6058, &qword_1A6033C88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D460E4();
  sub_1A5FD4CDC();
  v13 = 0;
  sub_1A5FD4A8C();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = 1;
  sub_1A5FD4A8C();
  v11 = 2;
  sub_1A5FD4A8C();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A5D460E4()
{
  result = qword_1EB27FC10[0];
  if (!qword_1EB27FC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27FC10);
  }

  return result;
}

uint64_t sub_1A5D46138()
{
  v3 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](46, 0xE100000000000000);
  v0 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](46, 0xE100000000000000);
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  return v3;
}

uint64_t sub_1A5D46210(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v5 = HIDWORD(a1) == HIDWORD(a3) && a2 < a4;
  v6 = HIDWORD(a1) < HIDWORD(a3) || v5;
  if (a1 != a3)
  {
    v6 = 0;
  }

  if (a1 >= a3)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A5D4625C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D46904(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D46284(uint64_t a1)
{
  v2 = sub_1A5D460E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D462C0(uint64_t a1)
{
  v2 = sub_1A5D460E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A5D462FC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1A5D465B8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1A5D46350()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D463BC()
{
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C4C();
}

uint64_t sub_1A5D46404(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D4649C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v3 == v4 && a1[2] < a2[2];
  v7 = v3 < v4 || v6;
  if (*a1 == *a2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1A5D464E0(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 != *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 != v3 || a2[2] >= a1[2];
  return v4 >= v3 && v6;
}

BOOL sub_1A5D46524(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v3 != v4 || a1[2] >= a2[2];
  return v3 >= v4 && v6;
}

uint64_t sub_1A5D46568(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 == v3 && a2[2] < a1[2];
  v7 = v4 < v3 || v6;
  if (*a2 == *a1)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A5D465B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6068, &qword_1A6033F00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D460E4();
  sub_1A5FD4CCC();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = 0;
  v7 = sub_1A5FD49AC();
  v12 = 1;
  v8 = sub_1A5FD49AC();
  v11 = 2;
  sub_1A5FD49AC();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_1A5D46788()
{
  result = qword_1EB1F6060;
  if (!qword_1EB1F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6060);
  }

  return result;
}

unint64_t sub_1A5D46800()
{
  result = qword_1EB280020[0];
  if (!qword_1EB280020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280020);
  }

  return result;
}

unint64_t sub_1A5D46858()
{
  result = qword_1EB280130;
  if (!qword_1EB280130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB280130);
  }

  return result;
}

unint64_t sub_1A5D468B0()
{
  result = qword_1EB280138[0];
  if (!qword_1EB280138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280138);
  }

  return result;
}

uint64_t sub_1A5D46904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7263696DLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t sub_1A5D46A68(uint64_t a1)
{
  if (a1 > 131103)
  {
    if (a1 <= 196639)
    {
      if (a1 == 131104)
      {
        return 0x6E49726F736E6554;
      }

      if (a1 != 196616)
      {
        return 0xD000000000000011;
      }
    }

    else if (a1 != 196640)
    {
      if (a1 == 983048)
      {
        return 0xD000000000000012;
      }

      if (a1 == 983072)
      {
        return 0xD000000000000018;
      }

      return 0xD000000000000011;
    }

    return 0x4955726F736E6554;
  }

  if (a1 > 65567)
  {
    if (a1 != 65568 && a1 != 65600)
    {
      if (a1 == 131080)
      {
        return 0x6E49726F736E6554;
      }

      return 0xD000000000000011;
    }

    return 0x6C46726F736E6554;
  }

  if (!a1)
  {
    return 0x6B6E752E666C6553;
  }

  if (a1 == 65552)
  {
    return 0x6C46726F736E6554;
  }

  return 0xD000000000000011;
}

uint64_t sub_1A5D46C50(int a1)
{
  if (a1 > 1278226487)
  {
    if (a1 > 1380401728)
    {
      if (a1 != 1380401729)
      {
        if (a1 == 1647719521 || a1 == 1815491698)
        {
          return 65600;
        }

        goto LABEL_19;
      }

      return 196640;
    }

    if (a1 != 1278226488)
    {
      if (a1 == 1278226534)
      {
        return 983072;
      }

      goto LABEL_19;
    }

    return 983048;
  }

  if (a1 > 39)
  {
    if (a1 != 40)
    {
      if (a1 != 1094862674 && a1 != 1111970369)
      {
        goto LABEL_19;
      }

      return 196640;
    }

    return 983048;
  }

  if (a1 == 8)
  {
    return 983048;
  }

  if (a1 == 32)
  {
    return 196640;
  }

LABEL_19:
  sub_1A5FD46AC();

  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  sub_1A5B16774();
  swift_allocError();
  sub_1A5D286A4(0xD00000000000001BLL, 0x80000001A605CB60, v3);

  swift_willThrow();
  return v4;
}

uint64_t sub_1A5D46E2C(uint64_t a1)
{
  if (a1 == 196616)
  {
    v1 = 1278226488;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 983048)
  {
    v1 = 8;
  }

  if (a1 == 983072)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1A5D46E60(int a1, unsigned int a2)
{
  if ((*&a1 & 0xF0000) == 0)
  {
    return 0;
  }

  result = (a1 >> 3) * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D46F38()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555450](v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D46FAC(uint64_t a1)
{
  v2 = *v1;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555450](v2);
  return sub_1A5FD4C6C();
}

BOOL sub_1A5D47034(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A5D47064@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A5D47090@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1A5D4717C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A5D472D8(a1);

  *a2 = v3;
}

unint64_t sub_1A5D471C0()
{
  result = qword_1EB1F6070;
  if (!qword_1EB1F6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6070);
  }

  return result;
}

unint64_t sub_1A5D4721C()
{
  result = qword_1EB1F6078;
  if (!qword_1EB1F6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6078);
  }

  return result;
}

unint64_t sub_1A5D47274()
{
  result = qword_1EB1F6080;
  if (!qword_1EB1F6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6080);
  }

  return result;
}

uint64_t sub_1A5D472D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1A5D4734C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A5D4738C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1A5D473F4()
{
  swift_beginAccess();
  e5rt_execution_stream_operation_release();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1A5D47444()
{
  v1 = (*(*v0 + 88))();
  (*(*v0 + 96))(0);
  return v1;
}

void sub_1A5D474EC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657A6973 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A5D47570(uint64_t a1)
{
  v2 = sub_1A5D47768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D475AC(uint64_t a1)
{
  v2 = sub_1A5D47768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D475E8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6088, &qword_1A6034210);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D47768();
  sub_1A5FD4CDC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20, &qword_1A60328F8);
  sub_1A5D2E760(&qword_1EB1F5D28, MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
  sub_1A5FD4A5C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A5D47768()
{
  result = qword_1EB280640[0];
  if (!qword_1EB280640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280640);
  }

  return result;
}

void *sub_1A5D477C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A5D47878(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A5D4780C(uint64_t a1)
{
  v2 = sub_1A5D37590();

  return sub_1A5D301AC(a1, v2);
}

char *sub_1A5D47848@<X0>(char **a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, int a5@<W3>)
{
  result = sub_1A5D47A20(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

void *sub_1A5D47878(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F60A0, &qword_1A6034478);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D47768();
  sub_1A5FD4CCC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20, &qword_1A60328F8);
    sub_1A5D2E760(&qword_1EB1F5D78, MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
    sub_1A5FD497C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

char *sub_1A5D47A20(int a1, int a2, int a3, int a4)
{
  v8 = sub_1A5D2DF18(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    v8 = sub_1A5D2DF18((v9 > 1), v10 + 1, 1, v8);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
  }

  *(v8 + 2) = v12;
  *&v8[4 * v10 + 32] = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    v8 = sub_1A5D2DF18((v9 > 1), v10 + 2, 1, v8);
  }

  *(v8 + 2) = v13;
  *&v8[4 * v12 + 32] = a2;
  v14 = *(v8 + 3);
  v15 = v10 + 3;
  if ((v10 + 3) > (v14 >> 1))
  {
    v8 = sub_1A5D2DF18((v14 > 1), v10 + 3, 1, v8);
  }

  *(v8 + 2) = v15;
  *&v8[4 * v13 + 32] = a3;
  v16 = *(v8 + 3);
  if ((v10 + 4) > (v16 >> 1))
  {
    v8 = sub_1A5D2DF18((v16 > 1), v10 + 4, 1, v8);
  }

  *(v8 + 2) = v10 + 4;
  *&v8[4 * v15 + 32] = a4;
  return v8;
}

unint64_t sub_1A5D47B64(void *a1)
{
  a1[1] = sub_1A5D47BA4();
  a1[2] = sub_1A5D38ACC();
  a1[3] = sub_1A5D38328();
  result = sub_1A5D384B8();
  a1[4] = result;
  return result;
}

unint64_t sub_1A5D47BA4()
{
  result = qword_1EB1F6090;
  if (!qword_1EB1F6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6090);
  }

  return result;
}

unint64_t sub_1A5D47BFC()
{
  result = qword_1EB1F6098;
  if (!qword_1EB1F6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6098);
  }

  return result;
}

unint64_t sub_1A5D47C50(uint64_t a1)
{
  result = sub_1A5D37590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D47C9C()
{
  result = qword_1EB280AD0[0];
  if (!qword_1EB280AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280AD0);
  }

  return result;
}

unint64_t sub_1A5D47CF4()
{
  result = qword_1EB280BE0;
  if (!qword_1EB280BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB280BE0);
  }

  return result;
}

unint64_t sub_1A5D47D4C()
{
  result = qword_1EB280BE8[0];
  if (!qword_1EB280BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280BE8);
  }

  return result;
}

uint64_t EspressoTensorShape.batchNumber.getter()
{
  if (*(*v0 + 16))
  {
    return *(*v0 + 32);
  }

  __break(1u);
  return result;
}

uint64_t EspressoTensorShape.channels.getter()
{
  if (*(*v0 + 16) >= 2uLL)
  {
    return *(*v0 + 36);
  }

  __break(1u);
  return result;
}

uint64_t EspressoTensorShape.height.getter()
{
  if (*(*v0 + 16) >= 3uLL)
  {
    return *(*v0 + 40);
  }

  __break(1u);
  return result;
}

uint64_t EspressoTensorShape.width.getter()
{
  if (*(*v0 + 16) >= 4uLL)
  {
    return *(*v0 + 44);
  }

  __break(1u);
  return result;
}

uint64_t static EspressoTensorShape.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D47EC4(uint64_t a1)
{
  v2 = sub_1A5D480D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D47F00(uint64_t a1)
{
  v2 = sub_1A5D480D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EspressoTensorShape.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F60A8, &unk_1A6034480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D480D4();

  sub_1A5FD4CDC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20, &qword_1A60328F8);
  sub_1A5D2E760(&qword_1EB1F5D28, MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
  sub_1A5FD4A5C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A5D480D4()
{
  result = qword_1EB280C70[0];
  if (!qword_1EB280C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB280C70);
  }

  return result;
}

uint64_t EspressoTensorShape.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1AC555420](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1A5FD4C4C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t EspressoTensorShape.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 4;
      sub_1A5FD4C4C();
      --v2;
    }

    while (v2);
  }

  return sub_1A5FD4C6C();
}

uint64_t EspressoTensorShape.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F60B0, &qword_1A6034490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D480D4();
  sub_1A5FD4CCC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20, &qword_1A60328F8);
    sub_1A5D2E760(&qword_1EB1F5D78, MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D483C4(uint64_t a1)
{
  v2 = sub_1A5D48778();

  return sub_1A5D301AC(a1, v2);
}

char *sub_1A5D48400@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char **a5@<X8>)
{
  v10 = MEMORY[0x1E69E7CC0];
  *a5 = MEMORY[0x1E69E7CC0];
  result = sub_1A5D2DF18(0, 1, 1, v10);
  v12 = result;
  *a5 = result;
  v14 = *(result + 2);
  v13 = *(result + 3);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    result = sub_1A5D2DF18((v13 > 1), v14 + 1, 1, result);
    v12 = result;
    v13 = *(result + 3);
    v15 = v13 >> 1;
  }

  *(v12 + 2) = v16;
  *&v12[4 * v14 + 32] = a1;
  *a5 = v12;
  v17 = v14 + 2;
  if (v15 < (v14 + 2))
  {
    result = sub_1A5D2DF18((v13 > 1), v14 + 2, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v17;
  *&v12[4 * v16 + 32] = a2;
  *a5 = v12;
  v18 = *(v12 + 3);
  v19 = v14 + 3;
  if ((v14 + 3) > (v18 >> 1))
  {
    result = sub_1A5D2DF18((v18 > 1), v14 + 3, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v19;
  *&v12[4 * v17 + 32] = a3;
  *a5 = v12;
  v20 = *(v12 + 3);
  if ((v14 + 4) > (v20 >> 1))
  {
    result = sub_1A5D2DF18((v20 > 1), v14 + 4, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v14 + 4;
  *&v12[4 * v19 + 32] = a4;
  *a5 = v12;
  return result;
}

unint64_t sub_1A5D48568(void *a1)
{
  a1[1] = sub_1A5D485A8();
  a1[2] = sub_1A5D485FC();
  a1[3] = sub_1A5D48650();
  result = sub_1A5D486A4();
  a1[4] = result;
  return result;
}

unint64_t sub_1A5D485A8()
{
  result = qword_1EB1F60B8;
  if (!qword_1EB1F60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60B8);
  }

  return result;
}

unint64_t sub_1A5D485FC()
{
  result = qword_1EB1F60C0;
  if (!qword_1EB1F60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60C0);
  }

  return result;
}

unint64_t sub_1A5D48650()
{
  result = qword_1EB1F60C8;
  if (!qword_1EB1F60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60C8);
  }

  return result;
}

unint64_t sub_1A5D486A4()
{
  result = qword_1EB1F60D0;
  if (!qword_1EB1F60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60D0);
  }

  return result;
}

unint64_t sub_1A5D486FC()
{
  result = qword_1EB1F60D8;
  if (!qword_1EB1F60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60D8);
  }

  return result;
}

unint64_t sub_1A5D48750(uint64_t a1)
{
  result = sub_1A5D48778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D48778()
{
  result = qword_1EB1F60E0;
  if (!qword_1EB1F60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60E0);
  }

  return result;
}

unint64_t sub_1A5D487F0()
{
  result = qword_1EB281100[0];
  if (!qword_1EB281100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB281100);
  }

  return result;
}

unint64_t sub_1A5D48848()
{
  result = qword_1EB281210;
  if (!qword_1EB281210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB281210);
  }

  return result;
}

unint64_t sub_1A5D488A0()
{
  result = qword_1EB281218[0];
  if (!qword_1EB281218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB281218);
  }

  return result;
}

uint64_t sub_1A5D488F8(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1A5FD46AC();
  v10 = 0;
  v11 = 0xE000000000000000;
  MEMORY[0x1AC554600](0x203A656D616ELL, 0xE600000000000000);
  v4 = (*(a2 + 40))(a1, a2);
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x795461746164203BLL, 0xEC000000203A6570);
  v8[0] = (*(a2 + 48))(a1, a2);
  sub_1A5D48B64();
  v5 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0x3A6570616873203BLL, 0xE900000000000020);
  (*(a2 + 56))(v8, a1, a2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1A5FD4AEC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1AC554600](0x656469727473203BLL, 0xEB00000000203A73);
  (*(a2 + 64))(v8, a1, a2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1A5FD4AEC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605CBB0);
  LODWORD(v8[0]) = (*(a2 + 72))(a1, a2);
  v6 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v6);

  return v10;
}

unint64_t sub_1A5D48B64()
{
  result = qword_1EB1F60E8;
  if (!qword_1EB1F60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60E8);
  }

  return result;
}

void sub_1A5D48BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*(a2 + 8) + 8);
  v46 = *(v5 + 56);
  v46(&v53, a1, v5);
  v6 = v55;
  v7 = v56;
  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v8 = (*(v7 + 40))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v9 = 0;
  if (v8)
  {
    v10 = v8;
    v45 = *(v5 + 64);
    v11 = 8;
    while (1)
    {
      v47 = v10;
      v57 = v9;
      v46(&v53, a1, v5);
      v12 = v55;
      v13 = v56;
      __swift_project_boxed_opaque_existential_1(&v53, v55);
      v14 = (*(v13 + 48))(v12, v13);
      if ((v11 - 8) >= *(v14 + 16))
      {
        break;
      }

      v15 = v3;
      v16 = *(v14 + 4 * v11);

      v17 = v15;
      v45(&v49, a1, v5);
      v18 = v51;
      v19 = v52;
      __swift_project_boxed_opaque_existential_1(&v49, v51);
      v20 = (*(v19 + 48))(v18, v19);
      if ((v11 - 8) >= *(v20 + 16))
      {
        goto LABEL_11;
      }

      v21 = *(v20 + 4 * v11);

      v22 = v21 * v16;
      if ((v22 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(&v49);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      v9 = v57;
      if (v22 > v57)
      {
        v9 = v22;
      }

      ++v11;
      v10 = v47 - 1;
      v3 = v17;
      if (v47 == 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1A5FD46AC();
    v49 = v53;
    v50 = v54;
    MEMORY[0x1AC554600](0xD00000000000002CLL, 0x80000001A605CBD0);
    MEMORY[0x1AC554600](0xD00000000000003FLL, 0x80000001A605CC00);
    LODWORD(v53) = v9;
    v23 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v23);

    MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605CC40);
    v46(&v53, a1, v5);
    v24 = a1;
    v25 = v55;
    v26 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    v58 = (*(v26 + 56))(v25, v26);
    v27 = MEMORY[0x1E69E7668];
    v28 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v28);

    __swift_destroy_boxed_opaque_existential_1(&v53);
    MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605CC60);
    LODWORD(v53) = (*(v5 + 72))(v24, v5);
    v29 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v29);

    MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A605CC80);
    v48 = *(v5 + 48);
    v30 = v48(v24, v5);
    LODWORD(v53) = sub_1A5D46C48(v30);
    v31 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v31);

    sub_1A5BF63A0(2, v49, v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CB0, &qword_1A6032580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A600FCE0;
    v33 = *MEMORY[0x1E696D130];
    *(inited + 32) = *MEMORY[0x1E696D130];
    *(inited + 40) = v9;
    v34 = v5;
    v35 = *MEMORY[0x1E696CF58];
    *(inited + 64) = v27;
    *(inited + 72) = v35;
    v36 = v33;
    v37 = v35;
    v46(&v53, v24, v34);
    v39 = v55;
    v38 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    *(inited + 80) = (*(v38 + 56))(v39, v38);
    v40 = *MEMORY[0x1E696CE50];
    v41 = MEMORY[0x1E69E7668];
    *(inited + 104) = MEMORY[0x1E69E7668];
    *(inited + 112) = v40;
    v42 = v40;
    v43 = v48(v24, v34);
    v44 = sub_1A5D46C48(v43);
    *(inited + 144) = v41;
    *(inited + 120) = v44;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    sub_1A5D28E44(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CB8, &qword_1A6032588);
    swift_arrayDestroy();
  }
}

void sub_1A5D49104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  if (!v3)
  {
    type metadata accessor for CFString(0);
    sub_1A5D49284(&qword_1EB1EF360, type metadata accessor for CFString, &unk_1A600F508);
    v6 = sub_1A5FD3BDC();
    v7 = IOSurfaceCreate(v6);

    if (v7)
    {

      v8 = (*(*(*(a3 + 8) + 8) + 40))(a2);
      v10 = v9;
      v11 = type metadata accessor for NamedObjects();
      v12 = sub_1A5D49284(&qword_1EB1F2E48, type metadata accessor for NamedObjects, &unk_1A6032734);
      sub_1A5D2F728(v7, v8, v10, v11, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A5D49284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A5D492CC()
{
  result = qword_1EB1F60F0;
  if (!qword_1EB1F60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F60F0);
  }

  return result;
}

uint64_t sub_1A5D49320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5;
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F60F8, qword_1A60347B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D494C0();
  sub_1A5FD4CDC();
  v18 = 0;
  sub_1A5FD4A1C();
  if (!v5)
  {
    v14 = v13;
    v15 = v16;
    v17 = 1;
    sub_1A5D49514();
    sub_1A5FD4A5C();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1A5D494C0()
{
  result = qword_1EB2812A0[0];
  if (!qword_1EB2812A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2812A0);
  }

  return result;
}

unint64_t sub_1A5D49514()
{
  result = qword_1EB1F6100;
  if (!qword_1EB1F6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6100);
  }

  return result;
}

uint64_t sub_1A5D49568(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();

  strcpy(v6, "identifier: ");
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  sub_1A5D30870();
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  return v6[0];
}

uint64_t sub_1A5D49658()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1A5D49698(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5D4977C(uint64_t a1)
{
  v2 = sub_1A5D494C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D497B8(uint64_t a1)
{
  v2 = sub_1A5D494C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D497F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1A5D49A50(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1A5D49850()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5D492CC();
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

double sub_1A5D498D0(uint64_t a1)
{
  sub_1A5FD3DBC();
  sub_1A5D492CC();
  sub_1A5FD3CBC();
  return result;
}

uint64_t sub_1A5D49934(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5D492CC();
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

BOOL sub_1A5D499C0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1A5FD4B0C() & 1) == 0)
  {
    return 0;
  }

  return sub_1A5D45F2C(v2, v3, v4, v5);
}

uint64_t sub_1A5D49A50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6110, &qword_1A60349F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D494C0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1A5FD493C();
    v9[15] = 1;
    sub_1A5D49E68();
    sub_1A5FD497C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1A5D49C4C()
{
  result = qword_1EB1F6108;
  if (!qword_1EB1F6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6108);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D49CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5D49CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A5D49D64()
{
  result = qword_1EB281630[0];
  if (!qword_1EB281630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB281630);
  }

  return result;
}

unint64_t sub_1A5D49DBC()
{
  result = qword_1EB281740;
  if (!qword_1EB281740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB281740);
  }

  return result;
}

unint64_t sub_1A5D49E14()
{
  result = qword_1EB281748[0];
  if (!qword_1EB281748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB281748);
  }

  return result;
}

unint64_t sub_1A5D49E68()
{
  result = qword_1EB1F6118;
  if (!qword_1EB1F6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6118);
  }

  return result;
}

uint64_t sub_1A5D49EBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = *(a2 + 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, v5);
  v24[0] = *sub_1A5D46A5C();
  v21[0] = v7;
  sub_1A5D471C0();
  if (sub_1A5FD3D0C() & 1) != 0 || (v24[0] = *sub_1A5D46A50(), v21[0] = v7, (sub_1A5FD3D0C()))
  {
    v8 = *(v5 + 56);
    v8(v24, a1, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6120, &qword_1A6034A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6128, &qword_1A6034A08);
    swift_dynamicCast();
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1A5D303BC(v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    if (v3)
    {
      return result;
    }

    v8(v24, a1, v5);
    v12 = v25;
    v13 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    LODWORD(v12) = (*(v13 + 56))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v8(v24, a1, v5);
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v16 = (*(v15 + 56))(v14, v15);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    if (v12 == v16)
    {
      v17 = v27;
      *(v27 + 32) = 0;
      *v17 = 0u;
      v17[1] = 0u;
      return result;
    }

    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(0xD000000000000017, 0x80000001A605CCC0, v20);
  }

  else
  {
    sub_1A5FD46AC();

    v24[0] = 0xD000000000000012;
    v24[1] = 0x80000001A605CCA0;
    v21[0] = v6(a1, v5);
    sub_1A5D48B64();
    v18 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v18);

    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000012, 0x80000001A605CCA0, v19);
  }

  return swift_willThrow();
}

uint64_t sub_1A5D4A21C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A5FD3C5C();
  sub_1A5FD456C();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_1A5D4B354((v3 + v4), a1);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_1A5D4A328(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, __n128)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v73 = a6;
  v79 = a5;
  v86 = a7;
  v11 = *(*a4 + 80);
  v12 = sub_1A5FD456C();
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v72 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v65[0] = v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v83 = v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v65 - v21;
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x66287463656A626FLL, 0xEE00293A5F3A726FLL);
  MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A605CDF0);
  v85 = a2;
  MEMORY[0x1AC554600](a2, a3);
  MEMORY[0x1AC554600](0x203A3024203BLL, 0xE600000000000000);
  v71 = a1;
  v89 = *a1;
  v23 = sub_1A5FD3C5C();
  swift_getWitnessTable();
  sub_1A5FD4AEC();
  MEMORY[0x1AC554600](0x707974203024203BLL, 0xEB00000000203A65);
  v69 = v23;
  v24 = sub_1A5FD4D0C();
  MEMORY[0x1AC554600](v24);

  sub_1A5BF63A0(2, v87, v88);

  v87 = a2;
  v88 = a3;

  v25 = v86;
  sub_1A5FD3C8C();

  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x66287463656A626FLL, 0xEE00293A5F3A726FLL);
  MEMORY[0x1AC554600](0xD00000000000001CLL, 0x80000001A605CE10);
  v26 = v81;
  v28 = v81 + 16;
  v27 = *(v81 + 16);
  (v27)(v22, v25, v12);
  v70 = v22;
  v29 = v26;
  v30 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v30);

  v67 = ":  start: inserting object: ";
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605CE30);
  v84 = a3;
  MEMORY[0x1AC554600](v85, a3);
  v31 = MEMORY[0x1AC554600](8251, 0xE200000000000000);
  v32 = *(*a4 + 144);
  v33 = *a4 + 144;
  v68 = a4;
  v66 = v32;
  v65[1] = v33;
  v34 = v32(v31);
  MEMORY[0x1AC554600](v34);
  v35 = v27;

  sub_1A5BF63A0(2, v87, v88);

  v36 = v83;
  v37 = v86;
  v77 = v28;
  v35(v83);
  v74 = *(v11 - 8);
  v38 = *(v74 + 48);
  v80 = v11;
  v39 = v11;
  v40 = v38;
  LODWORD(v25) = v38(v36, 1, v39);
  v41 = v36;
  v42 = v12;
  v83 = *(v29 + 8);
  (v83)(v41, v12);
  v75 = v40;
  v76 = v35;
  if (v25 == 1)
  {
    v43 = v79;
    if (v79)
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_1A5FD46AC();

      v87 = 0xD00000000000003ALL;
      v88 = 0x80000001A605CEB0;
      v44 = v85;
      MEMORY[0x1AC554600](v85, v84);
      sub_1A5BF63A0(2, v87, v88);

      v46 = v82;
      (v43)(&v87, v45);
      if (v46)
      {
        (v83)(v37, v42);
        return;
      }

      v82 = 0;
      (v83)(v37, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2E50, &unk_1A5FF2300);
      v47 = v65[0];
      v48 = v80;
      v49 = swift_dynamicCast();
      (*(v74 + 56))(v47, v49 ^ 1u, 1, v48);
      (*(v29 + 32))(v37, v47, v42);
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_1A5FD46AC();

      v87 = 0xD000000000000039;
      v88 = 0x80000001A605CEF0;
      MEMORY[0x1AC554600](v44, v84);
      sub_1A5BF63A0(2, v87, v88);
    }
  }

  v50 = v78;
  v51 = v76;
  (v76)(v78, v37, v42);
  v52 = v80;
  v53 = v75;
  v54 = v75(v50, 1, v80);
  v55 = v50;
  v56 = v83;
  (v83)(v55, v42);
  if (v54 == 1)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    v57 = v56;
    sub_1A5FD46AC();

    v87 = 0xD000000000000017;
    v88 = 0x80000001A605CE50;
    MEMORY[0x1AC554600](v85, v84);
    MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605CE70);
    v58 = v87;
    v59 = v88;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(v58, v59, v60);

    swift_willThrow();
    v57(v86, v42);
  }

  else
  {
    v61 = v86;
    (v51)(v70, v86, v42);
    v87 = v85;
    v88 = v84;

    sub_1A5FD3C9C();
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0x66287463656A626FLL, 0xEE00293A5F3A726FLL);
    MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A605CE90);
    v62 = v72;
    (v51)(v72, v61, v42);
    if (v53(v62, 1, v52) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1A5FD4ADC();
      (*(v74 + 8))(v62, v52);
      MEMORY[0x1AC554600](0xD000000000000011, v67 | 0x8000000000000000);
      MEMORY[0x1AC554600](v85, v84);
      v63 = MEMORY[0x1AC554600](8251, 0xE200000000000000);
      v64 = v66(v63);
      MEMORY[0x1AC554600](v64);

      sub_1A5BF63A0(2, v87, v88);
    }
  }
}

uint64_t sub_1A5D4AC78()
{
  v1 = *(v0 + 16);
  sub_1A5FD3C5C();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1A5D4B378(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

double sub_1A5D4AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = sub_1A5FD456C();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v16 - v8;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1A5FD46AC();

  v17 = "():  start: removed all: ";
  v20 = 0xD000000000000039;
  v21 = 0x80000001A605CD80;
  MEMORY[0x1AC554600](a2, a3);
  v10 = MEMORY[0x1AC554600](8251, 0xE200000000000000);
  v11 = *(*a4 + 144);
  v12 = v11(v10);
  MEMORY[0x1AC554600](v12);

  sub_1A5BF63A0(2, v20, v21);

  v20 = a2;
  v21 = a3;
  sub_1A5FD3C5C();
  sub_1A5FD3C2C();
  (*(v7 + 8))(v9, v18);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000012, v17 | 0x8000000000000000);
  MEMORY[0x1AC554600](0xD00000000000002DLL, 0x80000001A605CDC0);
  MEMORY[0x1AC554600](a2, a3);
  v13 = MEMORY[0x1AC554600](8251, 0xE200000000000000);
  v14 = v11(v13);
  MEMORY[0x1AC554600](v14);

  sub_1A5BF63A0(2, v20, v21);

  return result;
}

uint64_t sub_1A5D4AFD8()
{
  v1 = *(v0 + 16);
  sub_1A5FD3C5C();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v2));
  sub_1A5D4B3A8();
  os_unfair_lock_unlock((v1 + v2));
}

unint64_t sub_1A5D4B0B0()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E6158];
  sub_1A5FD3C5C();

  sub_1A5B18D30(sub_1A5D4B4FC, v1, v2, v4);

  if (v4[1])
  {
    return v4[0];
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1A5D4B180()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A5D4B1B8()
{
  v0 = swift_allocObject();
  sub_1A5D4B1F0();
  return v0;
}

void *sub_1A5D4B1F0()
{
  v4 = sub_1A5FD3BBC();
  v1 = sub_1A5FD3C5C();
  v2 = sub_1A5D4B2D8(&v4, v1);

  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1A5D4B2D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1A5FD473C();
  return sub_1A5FD472C();
}

double sub_1A5D4B3A8()
{
  v1 = *(*v0 + 144);
  v2 = v1();
  MEMORY[0x1AC554600](v2);

  sub_1A5BF63A0(2, 0xD00000000000001CLL, 0x80000001A605CD10);

  sub_1A5FD3C5C();
  sub_1A5FD3C4C();
  sub_1A5FD46AC();

  v4 = (v1)(v3);
  MEMORY[0x1AC554600](v4);

  sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605CD30);

  return result;
}

uint64_t sub_1A5D4B4FC@<X0>(void *a2@<X8>)
{
  MEMORY[0x1AC554600](0x3A737463656A626FLL, 0xE900000000000020);
  sub_1A5FD3C5C();
  swift_getWitnessTable();
  result = sub_1A5FD4AEC();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1A5D4B630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1A5D4B6D0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v58 = a2;
  v59 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v4 = sub_1A5FD353C();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a3[1];
  v65 = *a3;
  v66 = v11;
  v12 = a3[3];
  v67 = a3[2];
  v68 = v12;
  v13 = MEMORY[0x1E69E7CC8];
  if ((v12 & 1) == 0)
  {
    v61[0] = v65;
    v61[1] = v66;
    v61[2] = v67;
    v14 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v61 length:48];
    type metadata accessor for CFData(0);
    v64 = v15;
    *&v63 = v14;
    sub_1A5B101C8(&v63, v62);
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v13;
    sub_1A5D4C718(v62, @"VNImageOptionCameraIntrinsics", isUniquelyReferenced_nonNull_native);

    v13 = v60;
  }

  v18 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    v64 = sub_1A5D4C308();
    *&v63 = v18;
    sub_1A5B101C8(&v63, v62);
    sub_1A5D4C354(&v65, v61);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v13;
    sub_1A5D4C718(v62, @"VNImageOptionCIContext", v19);
    v13 = *&v61[0];
  }

  sub_1A5B13DC8(v59, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_15:
    (*(v5 + 32))(v7, v10, v4);
    v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v30 = sub_1A5FD34EC();
    v31 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
    sub_1A5D4BF90(v13);
    v32 = sub_1A5FD3BDC();

    v33 = [v29 initWithURL:v30 orientation:v31 options:v32 session:*(v58 + 16)];

    if (v33)
    {

      sub_1A5D4C2B4(&v65);
      sub_1A5D4C258(v59);
      (*(v5 + 8))(v7, v4);
LABEL_29:

      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = *v10;
    v21 = v10[1];
    if (!v21)
    {
      v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v50 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
      sub_1A5D4BF90(v13);
      v51 = sub_1A5FD3BDC();

      v52 = [v49 initWithCVPixelBuffer:v4 orientation:v50 options:v51 session:*(v58 + 16)];

      if (!v52)
      {
        __break(1u);
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v23 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
    sub_1A5D4BF90(v13);
    v10 = sub_1A5FD3BDC();

    v24 = [v22 initWithCVPixelBuffer:v4 depthData:v21 orientation:v23 options:v10 session:*(v58 + 16)];

    if (v24)
    {
LABEL_21:
      sub_1A5D4C258(v59);

      goto LABEL_28;
    }

    __break(1u);
LABEL_11:
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v4 = *v10;
        v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v26 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
        v7 = sub_1A5D4BF90(v13);
        v27 = sub_1A5FD3BDC();

        v28 = [v25 initWithCIImage:v4 orientation:v26 options:v27 session:*(v58 + 16)];

        if (!v28)
        {
          __break(1u);
          goto LABEL_15;
        }

        goto LABEL_27;
      }

      v42 = *v10;
      v43 = v10[1];
      v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v45 = sub_1A5FD35BC();
      v46 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
      sub_1A5D4BF90(v13);
      v47 = sub_1A5FD3BDC();

      v48 = [v44 initWithData:v45 orientation:v46 options:v47 session:*(v58 + 16)];

      if (!v48)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_1A5D4C258(v59);
      sub_1A5B066DC(v42, v43);

LABEL_28:
      sub_1A5D4C2B4(&v65);
      goto LABEL_29;
    }

    v4 = *v10;
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v35 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
    sub_1A5D4BF90(v13);
    v36 = sub_1A5FD3BDC();

    v37 = [v34 initWithCGImage:v4 orientation:v35 options:v36 session:*(v58 + 16)];

    if (!v37)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_27:
    sub_1A5D4C258(v59);

    goto LABEL_28;
  }

LABEL_19:
  v4 = *v10;
  v21 = v10[1];
  if (v21)
  {
    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v39 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
    sub_1A5D4BF90(v13);
    v40 = sub_1A5FD3BDC();

    v41 = [v38 initWithCMSampleBuffer:v4 depthData:v21 orientation:v39 options:v40 session:*(v58 + 16)];

    if (!v41)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_21;
  }

LABEL_26:
  v53 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v54 = *(v59 + *(type metadata accessor for OrientedImageSource(0) + 20));
  sub_1A5D4BF90(v13);
  v55 = sub_1A5FD3BDC();

  v56 = [v53 initWithCMSampleBuffer:v4 orientation:v54 options:v55 session:*(v58 + 16)];

  if (v56)
  {
    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1A5D4BF90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0610, &unk_1A6012350);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1A5B101D8(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for VNImageOption(0);
    v15 = v14;
    swift_dynamicCast();
    sub_1A5B101C8((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1A5B101C8(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1A5B101C8(v30, v31);
    result = sub_1A5FD464C();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1A5B101C8(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A5D4C258(uint64_t a1)
{
  v2 = type metadata accessor for OrientedImageSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5D4C308()
{
  result = qword_1EB1F6130;
  if (!qword_1EB1F6130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F6130);
  }

  return result;
}

uint64_t sub_1A5D4C3B0(uint64_t a1)
{
  v2 = sub_1A5D4CAD0(&qword_1EB1F6168, &unk_1A6034C14);
  v3 = sub_1A5D4CAD0(&qword_1EB1F6170, &unk_1A6034BB4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1A5D4C448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6140, &unk_1A6034AF8);
  v35 = v4;
  v6 = sub_1A5FD486C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1A5B101C8(v22, v36);
      }

      else
      {
        sub_1A5B101D8(v22, v36);
        v23 = v21;
      }

      sub_1A5FD3D5C();
      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      v24 = sub_1A5FD4C6C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1A5B101C8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

_OWORD *sub_1A5D4C718(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A5BC794C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A5D4C8D4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A5D4C448(v13, a3 & 1);
    v8 = sub_1A5BC794C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for VNImageOption(0);
      result = sub_1A5FD4B8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1A5B101C8(a1, v19);
  }

  else
  {
    sub_1A5D4C86C(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1A5D4C86C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A5B101C8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_1A5D4C8D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6140, &unk_1A6034AF8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A5B101D8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A5B101C8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

uint64_t sub_1A5D4CAD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5D4CB58(uint64_t a1)
{
  v2 = sub_1A5D4CE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4CB94(uint64_t a1)
{
  v2 = sub_1A5D4CE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D4CBD0(uint64_t a1)
{
  v2 = sub_1A5D4CE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4CC0C(uint64_t a1)
{
  v2 = sub_1A5D4CE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectContoursRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6178, &qword_1A6034CB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6180, &qword_1A6034CB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D4CE20();
  sub_1A5FD4CDC();
  sub_1A5D4CE74();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5D4CE20()
{
  result = qword_1EB281BF0;
  if (!qword_1EB281BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB281BF0);
  }

  return result;
}

unint64_t sub_1A5D4CE74()
{
  result = qword_1EB281BF8[0];
  if (!qword_1EB281BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB281BF8);
  }

  return result;
}

uint64_t DetectContoursRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectContoursRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6188, &qword_1A6034CC0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6190, &unk_1A6034CC8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D4CE20();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5D4CE74();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050, &unk_1A5FF1C80);
      *v13 = &type metadata for DetectContoursRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D4D240(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6178, &qword_1A6034CB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6180, &qword_1A6034CB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D4CE20();
  sub_1A5FD4CDC();
  sub_1A5D4CE74();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void DetectContoursRequest.init(_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v8 = 0x3F00000040000000;
  WORD4(v8) = 256;
  *&v9[0] = 512;
  static NormalizedRect.fullImage.getter((v9 + 8));
  WORD4(v10) = 256;
  v11 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  if (v3 == 1 && (v4 = sub_1A5D4DC44(), sub_1A5D4E900(&type metadata for DetectContoursRequest, v4), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v5 = v10;
    *(a2 + 32) = v9[1];
    *(a2 + 48) = v5;
    *(a2 + 64) = v11;
    v6 = v9[0];
    *a2 = v8;
    *(a2 + 16) = v6;
  }
}

uint64_t DetectContoursRequest.contrastPivot.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

__n128 DetectContoursRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectContoursRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1A5D4D5FC()
{
  v0 = sub_1A5D4DC44();
  result = sub_1A5D4EB30(&type metadata for DetectContoursRequest, v0);
  qword_1EB281BD8 = result;
  return result;
}

uint64_t DetectContoursRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5D4DC44();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectContoursRequest, v3);
}

uint64_t sub_1A5D4D6B4()
{
  v0 = sub_1A5D4DC44();
  result = sub_1A5D4EC2C(&type metadata for DetectContoursRequest, v0);
  qword_1EB281BE8 = result;
  return result;
}

uint64_t DetectContoursRequest.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  if (v3 != 1)
  {
    sub_1A5FD4C4C();
  }

  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](v4);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v5);
}

uint64_t DetectContoursRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectContoursRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

void *sub_1A5D4D874(uint64_t a1)
{
  v2 = sub_1A5D4E5D8();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5D4D8B0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5D4DC44();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5D4D910(uint64_t a1)
{
  v2 = sub_1A5B5ED48();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5D4D94C()
{
  sub_1A5FD4C1C();
  DetectContoursRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D4D990(uint64_t a1)
{
  sub_1A5FD4C1C();
  DetectContoursRequest.hash(into:)(v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D4D9F8(uint64_t a1, uint64_t a2)
{
  sub_1A5B5ED48();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5D4DA44@<Q0>(uint64_t a1@<X8>)
{
  *&v4 = 0x3F00000040000000;
  WORD4(v4) = 256;
  *&v5[0] = 512;
  static NormalizedRect.fullImage.getter((v5 + 8));
  WORD4(v6) = 256;
  v7 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 64) = v7;
  v2 = v6;
  *(a1 + 32) = v5[1];
  *(a1 + 48) = v2;
  result = v5[0];
  *a1 = v4;
  *(a1 + 16) = result;
  return result;
}

void _s6Vision21DetectContoursRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 9);
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5 = *(a1 + 57);
    v6 = *(a1 + 64);
    v7 = *(a2 + 8);
    v8 = *(a2 + 9);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    v11 = *(a2 + 56);
    v12 = *(a2 + 57);
    v13 = *(a2 + 64);
    if (*(a1 + 8))
    {
      if ((v7 & (v2 ^ v8 ^ 1)) != 1)
      {
        return;
      }
    }

    else if ((v7 & 1) != 0 || *(a1 + 4) != *(a2 + 4) || v2 != v8)
    {
      return;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      v15.origin = *(a1 + 24);
      v15.size = v3;
      v14.origin = v9;
      v14.size = v10;
      if (static NormalizedRect.== infix(_:_:)(&v15, &v14) && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0)
      {

        sub_1A5B0D3C4(v6, v13);
      }
    }
  }
}

unint64_t sub_1A5D4DC44()
{
  result = qword_1EB1F6198;
  if (!qword_1EB1F6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6198);
  }

  return result;
}

id sub_1A5D4DC98(void *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  v8 = *(v1 + 2);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5D4E62C();
  result = [ObjCClassFromMetadata isSubclassOfClass_];
  if (result)
  {
    v13 = -1.0;
    if (v6)
    {
      v48 = v6;
      v49 = v7;
      v46 = v5;
      v50 = v9;
      v51 = v10;
    }

    else
    {
      *v53 = v5;
      LODWORD(v52[0]) = 0;
      LODWORD(v55) = 1065353216;
      result = sub_1A5B3959C(v53, 0x74736172746E6F63, 0xED0000746F766950, v52, &v55, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468]);
      if (v2)
      {
        return result;
      }

      v48 = v6;
      v49 = v7;
      v50 = v9;
      v51 = v10;
      v46 = v5;
      v13 = v5;
    }

    v14 = MEMORY[0x1E69E6448];
    v15 = sub_1A5FD3D5C();
    v17 = v16;
    v54 = v14;
    *v53 = v13;
    v47 = *(*a1 + 208);
    v18 = v47(v52);
    sub_1A5B0DE30(v53, v15, v17);
    v18(v52, 0);
    v53[0] = v8;
    v52[0] = 64;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = MEMORY[0x1E69E6530];
    result = sub_1A5B3959C(v53, 0xD000000000000015, 0x80000001A605CF30, v52, &v55, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v2)
    {
      v20 = sub_1A5FD3D5C();
      v22 = v21;
      v54 = v19;
      v53[0] = v8;
      v23 = v47(v52);
      sub_1A5B0DE30(v53, v20, v22);
      v23(v52, 0);
      v24 = sub_1A5FD3D5C();
      v26 = v25;
      v54 = MEMORY[0x1E69E6448];
      *v53 = v4;
      v27 = v47(v52);
      sub_1A5B0DE30(v53, v24, v26);
      v27(v52, 0);
      v28 = sub_1A5FD3D5C();
      v30 = v29;
      if (v48)
      {
        v31 = 0;
        memset(v53, 0, sizeof(v53));
      }

      else
      {
        *v53 = v46;
        v31 = MEMORY[0x1E69E6448];
      }

      v54 = v31;
      v32 = v47(v52);
      sub_1A5B0DE30(v53, v28, v30);
      v32(v52, 0);
      v33 = sub_1A5FD3D5C();
      v35 = v34;
      v36 = MEMORY[0x1E69E6370];
      v54 = MEMORY[0x1E69E6370];
      LOBYTE(v53[0]) = v49;
      v37 = v47(v52);
      sub_1A5B0DE30(v53, v33, v35);
      v37(v52, 0);
      v38 = sub_1A5FD3D5C();
      v40 = v39;
      v54 = v36;
      LOBYTE(v53[0]) = v50;
      v41 = v47(v52);
      sub_1A5B0DE30(v53, v38, v40);
      v41(v52, 0);
      v42 = sub_1A5FD3D5C();
      v44 = v43;
      v54 = v36;
      LOBYTE(v53[0]) = v51;
      v45 = v47(v52);
      sub_1A5B0DE30(v53, v42, v44);
      return v45(v52, 0);
    }
  }

  return result;
}

unint64_t sub_1A5D4E140()
{
  result = qword_1EB1F61A0;
  if (!qword_1EB1F61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61A0);
  }

  return result;
}

unint64_t sub_1A5D4E198(uint64_t a1)
{
  result = sub_1A5B5ED48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D4E1C0(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B670B4();
  result = sub_1A5D4E1F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5D4E1F0()
{
  result = qword_1EB1F61A8;
  if (!qword_1EB1F61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61A8);
  }

  return result;
}

unint64_t sub_1A5D4E248()
{
  result = qword_1EB1F61B0;
  if (!qword_1EB1F61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61B0);
  }

  return result;
}

unint64_t sub_1A5D4E2A0()
{
  result = qword_1EB1F61B8;
  if (!qword_1EB1F61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61B8);
  }

  return result;
}

unint64_t sub_1A5D4E33C(uint64_t a1)
{
  result = sub_1A5D4DC44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D4E364(uint64_t a1)
{
  result = sub_1A5D4E38C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D4E38C()
{
  result = qword_1EB1F61C8;
  if (!qword_1EB1F61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61C8);
  }

  return result;
}

unint64_t sub_1A5D4E424()
{
  result = qword_1EB282480[0];
  if (!qword_1EB282480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB282480);
  }

  return result;
}

unint64_t sub_1A5D4E47C()
{
  result = qword_1EB282590;
  if (!qword_1EB282590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB282590);
  }

  return result;
}

unint64_t sub_1A5D4E4D4()
{
  result = qword_1EB282598[0];
  if (!qword_1EB282598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB282598);
  }

  return result;
}

unint64_t sub_1A5D4E52C()
{
  result = qword_1EB282620;
  if (!qword_1EB282620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB282620);
  }

  return result;
}

unint64_t sub_1A5D4E584()
{
  result = qword_1EB282628[0];
  if (!qword_1EB282628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB282628);
  }

  return result;
}

unint64_t sub_1A5D4E5D8()
{
  result = qword_1EB1F61D0;
  if (!qword_1EB1F61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F61D0);
  }

  return result;
}

unint64_t sub_1A5D4E62C()
{
  result = qword_1EB1F61D8;
  if (!qword_1EB1F61D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F61D8);
  }

  return result;
}

uint64_t sub_1A5D4E678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A5D4E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5FD456C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6 - 8];
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A5B180A0(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80, &unk_1A5FFD120);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v7, 0, 1, a2);
    (*(v8 + 32))(v11, v7, a2);
    v14 = sub_1A5FD3D0C();
    (*(v8 + 8))(v11, a2);
  }

  else
  {
    v13(v7, 1, 1, a2);
    (*(v5 + 8))(v7, v4);
    v14 = 0;
  }

  return v14 & 1;
}

double sub_1A5D4E8F0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A5D4E900(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1A5FD3FFC();
  swift_getWitnessTable();
  sub_1A5FD476C();
  swift_getWitnessTable();
  sub_1A5FD3EAC();

  swift_getWitnessTable();
  sub_1A5FD3CCC();

  return result;
}

uint64_t sub_1A5D4EA8C()
{
  (*(*(v0 + 24) + 64))(v5);
  if (v6)
  {
    return 0;
  }

  v3 = v5[0];
  v2 = v5[1];
  v4 = [objc_opt_self() linktimeVersion];
  return sub_1A5B9D148(v4, v3, v2) & 1;
}

uint64_t sub_1A5D4EB30(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1A5FD3FFC();
  swift_getWitnessTable();
  return sub_1A5FD476C();
}

uint64_t sub_1A5D4EC2C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1A5FD3FFC();
  swift_getWitnessTable();
  return sub_1A5FD476C();
}

BOOL sub_1A5D4ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5FD456C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 104))(a1, a2, a3, v12);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return 1;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a2);
    v16 = (*(*(a3 + 8) + 32))(a2);
    if (*(v16 + 16) && (v17 = sub_1A5B0E238(0), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v20 = *(v10 + 8);

      v20(v14, a2);

      v21 = *(v19 + 16);

      return v21 != 0;
    }

    else
    {

      (*(v10 + 8))(v14, a2);
      return 0;
    }
  }
}

uint64_t sub_1A5D4EFE0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA90, &unk_1A5FF3220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1A5FD3B5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  sub_1A5B31A34(a1, v12, &qword_1EB1EEA90, &unk_1A5FF3220);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A5B10168(v12, &qword_1EB1EEA90, &unk_1A5FF3220);
    v18 = (*(a4 + 56))(v23, v22, a4);
    sub_1A5B17C24(v17, v9);
    sub_1A5B10168(v9, &qword_1EB1EEA90, &unk_1A5FF3220);
    return v18(v23, 0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v9, v16, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    v20 = (*(a4 + 56))(v23, v22, a4);
    sub_1A5B179F4(v9, v17);
    v20(v23, 0);
    return (*(v14 + 8))(v16, v13);
  }
}

double sub_1A5D4F2AC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1398, &qword_1A6005B28);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 16))(v8, v4, v5);
    v6 = *v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1A5B10168(v8, &unk_1EB1F13C0, &qword_1A6005B78);
    return *sub_1A5B9D16C();
  }

  return v6;
}

uint64_t sub_1A5D4F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  v12 = sub_1A5C3B40C(2u);
  v14 = v13;
  v15 = (*(a3 + 40))(a2, a3);
  *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F61E0, &qword_1A6035160);
  *&v44 = v15;
  sub_1A5B101C8(&v44, &v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = v11;
  sub_1A5B0E9AC(&v39, v12, v14, isUniquelyReferenced_nonNull_native);

  v17 = *&v43[0];
  v18 = sub_1A5C3B40C(3u);
  v20 = v19;
  v21 = *(*(a3 + 8) + 56);
  *(&v45 + 1) = &type metadata for RequestDescriptor;
  v21(&v44, a2);
  sub_1A5B101C8(&v44, &v39);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = v17;
  sub_1A5B0E9AC(&v39, v18, v20, v22);

  v23 = *&v43[0];
  v24 = sub_1A5C3B40C(9u);
  v26 = v25;
  *(&v45 + 1) = type metadata accessor for Session();
  *&v44 = a1;
  sub_1A5B101C8(&v44, &v39);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = v23;
  sub_1A5B0E9AC(&v39, v24, v26, v27);

  v28 = *&v43[0];
  (*(v8 + 16))(v10, v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1380, &qword_1A6005B18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_7;
  }

  if (!*(&v45 + 1))
  {
    v32 = 0;
    goto LABEL_7;
  }

  result = sub_1A5B31A34(&v44, &v39, &unk_1EB1F1388, &qword_1A6005B20);
  v30 = v40;
  if (v40)
  {
    v31 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    (*(v31 + 8))(v43, v30, v31);
    v32 = v43[0];
    __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_7:
    v33 = sub_1A5C3B40C(0);
    v35 = v34;
    v40 = &type metadata for ImageCropAndScaleAction;
    LOBYTE(v39) = v32;
    sub_1A5B101C8(&v39, v43);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v28;
    sub_1A5B0E9AC(v43, v33, v35, v36);

    v37 = v42;
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_1A5FD46AC();

    *&v39 = 0xD000000000000044;
    *(&v39 + 1) = 0x80000001A605CF50;
    v38 = sub_1A5FD3C1C();
    MEMORY[0x1AC554600](v38);

    sub_1A5BF63A0(2, v39, *(&v39 + 1));

    sub_1A5B10168(&v44, &unk_1EB1F1388, &qword_1A6005B20);
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D4F8A0(uint64_t a1)
{
  v2 = sub_1A5D4FCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4F8DC(uint64_t a1)
{
  v2 = sub_1A5D4FCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D4F918(uint64_t a1)
{
  v2 = sub_1A5D4FD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4F954(uint64_t a1)
{
  v2 = sub_1A5D4FD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D4F990(uint64_t a1)
{
  v2 = sub_1A5D4FD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D4F9CC(uint64_t a1)
{
  v2 = sub_1A5D4FD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F61E8, &qword_1A6035190);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F61F0, &qword_1A6035198);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F61F8, &qword_1A60351A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D4FCB8();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D4FD0C();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D4FD60();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5D4FCB8()
{
  result = qword_1EB2826C0;
  if (!qword_1EB2826C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2826C0);
  }

  return result;
}

unint64_t sub_1A5D4FD0C()
{
  result = qword_1EB2826C8;
  if (!qword_1EB2826C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2826C8);
  }

  return result;
}

unint64_t sub_1A5D4FD60()
{
  result = qword_1EB2826D0[0];
  if (!qword_1EB2826D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2826D0);
  }

  return result;
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6200, &qword_1A60351A8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6208, &qword_1A60351B0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6210, &qword_1A60351B8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D4FCB8();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050, &unk_1A5FF1C80);
    *v21 = &type metadata for S6Mb1ME89lyW3HpahkEygIGRequest.Revision;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5D4FD0C();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D4FD60();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t S6Mb1ME89lyW3HpahkEygIGRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 2;
  static NormalizedRect.fullImage.getter((a2 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 48) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 S6Mb1ME89lyW3HpahkEygIGRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 S6Mb1ME89lyW3HpahkEygIGRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5D50378()
{
  v0 = sub_1A5D5102C();
  result = sub_1A5D4EC2C(&type metadata for S6Mb1ME89lyW3HpahkEygIGRequest, v0);
  qword_1EB2826B8 = result;
  return result;
}

uint64_t static S6Mb1ME89lyW3HpahkEygIGRequest.allSupportedRevisions.getter()
{
  if (qword_1EB2826B0 != -1)
  {
    swift_once();
  }
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5D5102C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for S6Mb1ME89lyW3HpahkEygIGRequest, v3);
}

Vision::S6Mb1ME89lyW3HpahkEygIGRequest::Category_optional __swiftcall S6Mb1ME89lyW3HpahkEygIGRequest.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1A5D505B0@<X0>(void *a1@<X8>)
{
  result = S6Mb1ME89lyW3HpahkEygIGRequest.Category.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5D505EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "session to options: ";
  v3 = a1;
  if (a1 == 8)
  {
    v4 = "VNmNJnu0xlW8CZXt6hJ7Rpb0";
  }

  else
  {
    v4 = "VN35FOB1QhtSfYGRIJvTgtTq";
  }

  if (a1 == 7)
  {
    v5 = "VN2vIWnsZbk4Su55oeWfKDq1";
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 5)
  {
    v6 = "VN7gQUejje8mmnE9GSTsVBVV";
  }

  else
  {
    v6 = "VNa9xpOJNvRoaW9plFGZ9Eo0";
  }

  if (a1 <= 6u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "VN6XNMvaRunPpzWjGa9uUHD6";
  }

  else
  {
    v8 = "VN4QuphG8kE4qDaDycivBkX5";
  }

  if (v3 == 2)
  {
    v9 = "VNSY8t4EoTztuqIL02g8uVA0";
  }

  else
  {
    v9 = v8;
  }

  if (v3)
  {
    v10 = "VN3FNQUJVIs2puI1uPc9mxh7";
  }

  else
  {
    v10 = "session to options: ";
  }

  if (v3 <= 1)
  {
    v9 = v10;
  }

  if (v3 <= 4)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = "VN7gQUejje8mmnE9GSTsVBVV";
      }

      else
      {
        v2 = "VNa9xpOJNvRoaW9plFGZ9Eo0";
      }
    }

    else if (a2 == 7)
    {
      v2 = "VN2vIWnsZbk4Su55oeWfKDq1";
    }

    else if (a2 == 8)
    {
      v2 = "VNmNJnu0xlW8CZXt6hJ7Rpb0";
    }

    else
    {
      v2 = "VN35FOB1QhtSfYGRIJvTgtTq";
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = "VN3FNQUJVIs2puI1uPc9mxh7";
    }
  }

  else if (a2 == 2)
  {
    v2 = "VNSY8t4EoTztuqIL02g8uVA0";
  }

  else if (a2 == 3)
  {
    v2 = "VN6XNMvaRunPpzWjGa9uUHD6";
  }

  else
  {
    v2 = "VN4QuphG8kE4qDaDycivBkX5";
  }

  if ((v11 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A5FD4B0C();
  }

  return v12 & 1;
}

uint64_t sub_1A5D50860()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  sub_1A5D508B0(v3, v1);
  return sub_1A5FD4C6C();
}

double sub_1A5D508B0(uint64_t a1, unsigned __int8 a2)
{
  sub_1A5FD3DBC();

  return result;
}

uint64_t sub_1A5D509B4(uint64_t a1)
{
  v2 = *v1;
  sub_1A5FD4C1C();
  sub_1A5D508B0(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t S6Mb1ME89lyW3HpahkEygIGRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A5FD4C1C();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

void *sub_1A5D50B64(uint64_t a1)
{
  v2 = sub_1A5D51080();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5D50BA0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5D5102C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5D50C0C(uint64_t a1)
{
  v2 = sub_1A5B5DF74();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5D50C4C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5DF74();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5D50C98(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  LOBYTE(v15) = *v1;
  v5 = *(v1 + 24);
  v16 = *(v1 + 8);
  v17 = v5;
  v18 = v3;
  v19 = v4;
  v6 = sub_1A5D51080();
  result = sub_1A5BDA35C(a1, &type metadata for S6Mb1ME89lyW3HpahkEygIGRequest, v6);
  if ((v3 & 1) == 0)
  {
    v8 = result;
    v9 = sub_1A5FD3D5C();
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *&v17 = sub_1A5B16F58(0, &qword_1EB1F3E80, 0x1E696AD98);
    v15 = v12;
    sub_1A5B101C8(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  return result;
}

void sub_1A5D50DB4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorSignificantEventConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0, &unk_1A6003000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6228, &qword_1A60351C0);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

void sub_1A5D50EFC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorVN6Mb1ME89lyW3HpahkEygIGConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F6230, off_1E77AF0C0);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

unint64_t sub_1A5D5102C()
{
  result = qword_1EB1F6218;
  if (!qword_1EB1F6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6218);
  }

  return result;
}

unint64_t sub_1A5D51080()
{
  result = qword_1EB1F6220;
  if (!qword_1EB1F6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6220);
  }

  return result;
}

unint64_t sub_1A5D510D4()
{
  result = qword_1EB1F6238;
  if (!qword_1EB1F6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6238);
  }

  return result;
}

unint64_t sub_1A5D51130()
{
  result = qword_1EB1F6240;
  if (!qword_1EB1F6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6240);
  }

  return result;
}

unint64_t sub_1A5D51184(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B65FF8();
  result = sub_1A5D511B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5D511B4()
{
  result = qword_1EB1F6248;
  if (!qword_1EB1F6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6248);
  }

  return result;
}

unint64_t sub_1A5D5120C()
{
  result = qword_1EB1F6250;
  if (!qword_1EB1F6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6250);
  }

  return result;
}

unint64_t sub_1A5D51264()
{
  result = qword_1EB1F6258;
  if (!qword_1EB1F6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6258);
  }

  return result;
}

unint64_t sub_1A5D512B8(uint64_t a1)
{
  result = sub_1A5B5DF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D512E0(uint64_t a1)
{
  result = sub_1A5D5102C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D51308(uint64_t a1)
{
  result = sub_1A5D51080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D51330(uint64_t a1)
{
  result = sub_1A5D51358();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D51358()
{
  result = qword_1EB1F6260;
  if (!qword_1EB1F6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for S6Mb1ME89lyW3HpahkEygIGRequest.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for S6Mb1ME89lyW3HpahkEygIGRequest.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5D51550()
{
  result = qword_1EB2833E0[0];
  if (!qword_1EB2833E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2833E0);
  }

  return result;
}

unint64_t sub_1A5D515A8()
{
  result = qword_1EB2834F0;
  if (!qword_1EB2834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2834F0);
  }

  return result;
}

unint64_t sub_1A5D51600()
{
  result = qword_1EB2834F8[0];
  if (!qword_1EB2834F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2834F8);
  }

  return result;
}

unint64_t sub_1A5D51658()
{
  result = qword_1EB283580;
  if (!qword_1EB283580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB283580);
  }

  return result;
}

unint64_t sub_1A5D516B0()
{
  result = qword_1EB283588[0];
  if (!qword_1EB283588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB283588);
  }

  return result;
}

unint64_t sub_1A5D51708()
{
  result = qword_1EB283610;
  if (!qword_1EB283610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB283610);
  }

  return result;
}

unint64_t sub_1A5D51760()
{
  result = qword_1EB283618[0];
  if (!qword_1EB283618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB283618);
  }

  return result;
}

unint64_t sub_1A5D517B4()
{
  result = qword_1EB1F6268;
  if (!qword_1EB1F6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6268);
  }

  return result;
}

__n128 HorizonObservation.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t HorizonObservation.angle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HorizonObservation(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for HorizonObservation(uint64_t a1)
{
  result = qword_1EB283A30;
  if (!qword_1EB283A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HorizonObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HorizonObservation(0) + 24);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 HorizonObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HorizonObservation(0) + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t HorizonObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for HorizonObservation(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t HorizonObservation.description.getter()
{
  sub_1A5FD46AC();

  v0 = type metadata accessor for HorizonObservation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  sub_1A5D52F3C(&qword_1EB1F6270, MEMORY[0x1E69680A0]);
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v2 = sub_1A5D52EA0(&qword_1EB1F6278, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  v3 = sub_1A5C29408(v0, &off_1F1970A80, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

void __swiftcall HorizonObservation.transform(for:)(CGAffineTransform *__return_ptr retstr, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v19.a = 1.0;
  v19.b = 0.0;
  v19.c = 0.0;
  v19.d = 1.0;
  v19.tx = 0.0;
  v19.ty = 0.0;
  CGAffineTransformTranslate(&v18, &v19, width * 0.5, height * 0.5);
  tx = v18.tx;
  ty = v18.ty;
  type metadata accessor for HorizonObservation(0);
  v16 = *&v18.c;
  v17 = *&v18.a;
  v11 = [objc_opt_self() radians];
  sub_1A5FD338C();

  sub_1A5FD337C();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *&v19.a = v17;
  *&v19.c = v16;
  v19.tx = tx;
  v19.ty = ty;
  CGAffineTransformRotate(&v18, &v19, v13);
  v19 = v18;
  CGAffineTransformTranslate(&v18, &v19, -(width * 0.5), -(height * 0.5));
  v14 = *&v18.c;
  v15 = *&v18.tx;
  *&retstr->a = *&v18.a;
  *&retstr->c = v14;
  *&retstr->tx = v15;
}

uint64_t HorizonObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for HorizonObservation(0);
  sub_1A5D52EA0(&qword_1EB1F6280, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D51DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5D52EA0(&qword_1EB1F6278, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5D51E50()
{
  v1 = 0x656C676E61;
  if (*v0 != 1)
  {
    v1 = 0x746176726573626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F66736E617274;
  }
}

uint64_t sub_1A5D51EB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D53508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D51EDC(uint64_t a1)
{
  v2 = sub_1A5D52EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D51F18(uint64_t a1)
{
  v2 = sub_1A5D52EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HorizonObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768, &qword_1A5FF2350);
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6288, &unk_1A6035880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D52EE8();
  sub_1A5FD4CDC();
  v13 = v3[1];
  v19 = *v3;
  v20 = v13;
  v21 = v3[2];
  v22 = 0;
  type metadata accessor for CGAffineTransform(0);
  sub_1A5D52EA0(&qword_1EB1F05A8, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF50]);
  sub_1A5FD4A5C();
  if (!v2)
  {
    v14 = type metadata accessor for HorizonObservation(0);
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
    sub_1A5D52F3C(&qword_1EB1F57D8, MEMORY[0x1E6968078]);
    sub_1A5FD4A5C();
    LOBYTE(v19) = 2;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v15 = sub_1A5D52EA0(&qword_1EB1F6278, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
    sub_1A5BBD46C(v8, v14, &off_1F1970A80, v15);
    (*(v18 + 8))(v8, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t HorizonObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1A5FD367C();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790, &qword_1A5FF2360);
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6290, &qword_1A6035890);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for HorizonObservation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5D52EE8();
  v17 = v37;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  type metadata accessor for CGAffineTransform(0);
  v44 = 0;
  sub_1A5D52EA0(&qword_1EB1F05B8, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF60]);
  sub_1A5FD497C();
  v18 = v40;
  *v15 = v39;
  *(v15 + 1) = v18;
  *(v15 + 2) = v41;
  LOBYTE(v39) = 1;
  sub_1A5D52F3C(&qword_1EB1F57F8, MEMORY[0x1E6968098]);
  sub_1A5FD497C();
  (*(v35 + 32))(&v15[v13[5]], v9, v7);
  LOBYTE(v39) = 2;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v27 = v12;
  v37 = v10;
  LOBYTE(v39) = 0;
  sub_1A5D52EA0(&qword_1EB1EE7A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v29;
  v20 = v32;
  sub_1A5FD497C();
  (*(v33 + 32))(&v15[v13[6]], v19, v20);
  LOBYTE(v39) = 1;
  sub_1A5FD495C();
  v21 = v30;
  *&v15[v13[7]] = v22;
  v44 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *&v15[v13[9]] = v39;
  v23 = v34;
  sub_1A5BBDB04(v42);
  (*(v21 + 8))(v23, v31);
  (*(v36 + 8))(v27, v37);
  v24 = &v15[v13[8]];
  v25 = v42[1];
  *v24 = v42[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v42[2];
  v24[48] = v43;
  sub_1A5D52F8C(v15, v28);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1A5D52FF0(v15);
}

__n128 sub_1A5D52A04@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a2;
  [a1 transform];
  [a1 angle];
  v8 = [objc_opt_self() radians];
  v9 = type metadata accessor for HorizonObservation(0);
  sub_1A5D5304C();
  sub_1A5FD336C();
  v10 = a1;
  v11 = [v10 uuid];
  sub_1A5FD365C();

  [v10 confidence];
  v13 = v12;

  *a4 = v17;
  *(a4 + 16) = v18;
  *(a4 + 32) = v19;
  *(a4 + 40) = v20;
  *(a4 + v9[7]) = v13;
  v14 = a4 + v9[8];
  v15 = *(a3 + 16);
  *v14 = *a3;
  *(v14 + 16) = v15;
  result = *(a3 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a3 + 48);
  *(a4 + v9[9]) = v7;
  return result;
}

__n128 HorizonObservation.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v16);
  v4 = a1;
  [v4 timeRange];
  [v4 transform];
  [v4 angle];
  v5 = [objc_opt_self() radians];
  v6 = type metadata accessor for HorizonObservation(0);
  sub_1A5D5304C();
  sub_1A5FD336C();
  v7 = [v4 uuid];
  sub_1A5FD365C();

  [v4 confidence];
  v9 = v8;

  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + v6[7]) = v9;
  v10 = a2 + v6[8];
  result = v12;
  *v10 = v12;
  *(v10 + 16) = v13;
  *(v10 + 32) = v14;
  *(v10 + 40) = v15;
  *(v10 + 48) = 0;
  *(a2 + v6[9]) = -8;
  return result;
}

double sub_1A5D52CEC@<D0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a2;
  *&result = sub_1A5D52A04(a1, &v5, a3, a4).n128_u64[0];
  return result;
}

uint64_t _s6Vision18HorizonObservationV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  if ((sub_1A5FD432C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HorizonObservation(0);
  sub_1A5D5304C();
  if ((sub_1A5FD335C() & 1) == 0 || (sub_1A5FD364C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if ((v6 & 1) == 0)
  {
    if ((v7[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v8 = v4[9];
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (v9 <= 0xFFF7)
    {
      if (v10 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (v7[48])
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_1A5D52EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A5D52EE8()
{
  result = qword_1EB2836A0[0];
  if (!qword_1EB2836A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2836A0);
  }

  return result;
}

uint64_t sub_1A5D52F3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4EC8, &unk_1A60279F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5D52F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizonObservation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D52FF0(uint64_t a1)
{
  v2 = type metadata accessor for HorizonObservation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5D5304C()
{
  result = qword_1EB1EE608;
  if (!qword_1EB1EE608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EE608);
  }

  return result;
}

uint64_t sub_1A5D53098(void *a1)
{
  a1[1] = sub_1A5D52EA0(&qword_1EB1F6298, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  a1[2] = sub_1A5D52EA0(&qword_1EB1F62A0, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  a1[3] = sub_1A5D52EA0(&qword_1EB1F62A8, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  result = sub_1A5D52EA0(&qword_1EB1F6280, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5D531B4(uint64_t a1)
{
  result = sub_1A5D52EA0(&qword_1EB1F6278, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5D53234(uint64_t a1)
{
  type metadata accessor for CGAffineTransform(319);
  if (v1 <= 0x3F)
  {
    sub_1A5D5338C(319, &qword_1EB1EE728, sub_1A5D5304C, MEMORY[0x1E6968070]);
    if (v2 <= 0x3F)
    {
      sub_1A5FD367C();
      if (v3 <= 0x3F)
      {
        sub_1A5D5338C(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A5B2F560(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5D5338C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A5D53404()
{
  result = qword_1EB283B40[0];
  if (!qword_1EB283B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB283B40);
  }

  return result;
}

unint64_t sub_1A5D5345C()
{
  result = qword_1EB283C50;
  if (!qword_1EB283C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB283C50);
  }

  return result;
}

unint64_t sub_1A5D534B4()
{
  result = qword_1EB283C58[0];
  if (!qword_1EB283C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB283C58);
  }

  return result;
}

uint64_t sub_1A5D53508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F66736E617274 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t ImageExposureObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageExposureObservation(0) + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageExposureObservation(uint64_t a1)
{
  result = qword_1EB284070;
  if (!qword_1EB284070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImageExposureObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageExposureObservation(0) + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageExposureObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageExposureObservation(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageExposureObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000023, 0x80000001A605D100);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v0 = type metadata accessor for ImageExposureObservation(0);
  v1 = sub_1A5D54810(&qword_1EB1F62B0, type metadata accessor for ImageExposureObservation, &protocol conformance descriptor for ImageExposureObservation);
  v2 = sub_1A5C29408(v0, &off_1F1970B68, v1);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t ImageExposureObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageExposureObservation(0);
  sub_1A5D54810(&qword_1EB1F62B8, type metadata accessor for ImageExposureObservation, &protocol conformance descriptor for ImageExposureObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D53934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5D54810(&qword_1EB1F62B0, type metadata accessor for ImageExposureObservation, &protocol conformance descriptor for ImageExposureObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5D539B8()
{
  if (*v0)
  {
    return 0x746176726573626FLL;
  }

  else
  {
    return 0x657275736F707865;
  }
}

void sub_1A5D53A08(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657275736F707865 && a2 == 0xED000065726F6353;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5D53AF0(uint64_t a1)
{
  v2 = sub_1A5D545E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}