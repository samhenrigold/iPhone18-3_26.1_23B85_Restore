uint64_t sub_2584F67AC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584F6830()
{
  result = qword_27F931460;
  if (!qword_27F931460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931460);
  }

  return result;
}

uint64_t sub_2584F6888@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RTCBackedTelemetryServer();
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_2584F68C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584F5204();
}

uint64_t sub_2584F6954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584F56FC();
}

uint64_t sub_2584F69E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_2584F5CC0(a1);
}

uint64_t sub_2584F6A74()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000019, 0x8000000258541CD0);
  type metadata accessor for RTCBackedTelemetryServer();
  sub_2584F6D88(&qword_27F931470, v0, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D58C);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584F6B60(uint64_t a1, uint64_t a2)
{
  result = sub_2584F6D88(&qword_27F931468, a2, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D5C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584F6BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931488, &qword_25853D600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584F6C20()
{
  result = qword_27F931498;
  if (!qword_27F931498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931498);
  }

  return result;
}

_OWORD *sub_2584F6C74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2584F6CD0()
{
  result = qword_27F9314C0;
  if (!qword_27F9314C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9314B8, &qword_25853D630);
    sub_2584F6D88(&qword_27F92FBF8, 255, type metadata accessor for CFString, &unk_258535610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9314C0);
  }

  return result;
}

uint64_t sub_2584F6D88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2584F6DD0()
{
  result = qword_27F9314C8;
  if (!qword_27F9314C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9314C8);
  }

  return result;
}

unint64_t sub_2584F6E2C(uint64_t a1)
{
  result = sub_2584F6C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F6E58()
{
  result = qword_27F9314E8;
  if (!qword_27F9314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9314E8);
  }

  return result;
}

unint64_t sub_2584F6EB8()
{
  v1 = v0;
  v2 = sub_2584F8584(MEMORY[0x277D84F90]);
  v71 = v2;
  v3 = MEMORY[0x277D84CC0];
  if (*(v0 + 76))
  {
    sub_2584F7A00(1314148932, 0xE400000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
  }

  else
  {
    v4 = v2;
    v5 = *(v1 + 18);
    v68 = MEMORY[0x277D84CC0];
    LODWORD(v67) = v5;
    sub_2584F6C74(&v67, v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v4;
    sub_25850D118(v70, 1314148932, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v71 = v69;
  }

  v7 = v1[3];
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = v1[2];
    v68 = MEMORY[0x277D837D0];
    *&v67 = v9;
    *(&v67 + 1) = v7;
    sub_2584F6C74(&v67, v70);

    v10 = v71;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v10;
    sub_25850D118(v70, 0x524556534F4D4552, 0xE800000000000000, v11);
    v71 = v69;
  }

  else
  {
    sub_2584F7A00(0x524556534F4D4552, 0xE800000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
  }

  v12 = v1[5];
  if (v12)
  {
    v13 = v1[4];
    v68 = v8;
    *&v67 = v13;
    *(&v67 + 1) = v12;
    sub_2584F6C74(&v67, v70);

    v14 = v71;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v14;
    sub_25850D118(v70, 0x4C444D4D4552, 0xE600000000000000, v15);
    v71 = v69;
    v16 = v1[1];
    if (v16)
    {
LABEL_9:
      v17 = *v1;
      v68 = v8;
      *&v67 = v17;
      *(&v67 + 1) = v16;
      sub_2584F6C74(&v67, v70);

      v18 = v71;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v18;
      sub_25850D118(v70, 1145654343, 0xE400000000000000, v19);
      v71 = v69;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2584F7A00(0x4C444D4D4552, 0xE600000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
    v16 = v1[1];
    if (v16)
    {
      goto LABEL_9;
    }
  }

  sub_2584F7A00(1145654343, 0xE400000000000000, &v67);
  sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
LABEL_12:
  v20 = v1[6] & 1;
  v68 = MEMORY[0x277D83B88];
  *&v67 = v20;
  sub_2584F6C74(&v67, v70);
  v21 = v71;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v21;
  sub_25850D118(v70, 0x5245565245535349, 0xE800000000000000, v22);
  v23 = v69;
  v24 = *(v1 + 24);
  v68 = v3;
  LODWORD(v67) = v24;
  sub_2584F6C74(&v67, v70);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v23;
  sub_25850D118(v70, 0x4E5352444E45, 0xE600000000000000, v25);
  v26 = v69;
  v71 = v69;
  if (*(v1 + 84))
  {
    sub_2584F7A00(0x454D4954544341, 0xE700000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
    if ((*(v1 + 92) & 1) == 0)
    {
LABEL_14:
      v27 = *(v1 + 22);
      v68 = v3;
      LODWORD(v67) = v27;
      sub_2584F6C74(&v67, v70);
      v28 = v71;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v28;
      sub_25850D118(v70, 0x464954525453, 0xE600000000000000, v29);
      v30 = v69;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = *(v1 + 20);
    v68 = v3;
    LODWORD(v67) = v31;
    sub_2584F6C74(&v67, v70);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v26;
    sub_25850D118(v70, 0x454D4954544341, 0xE700000000000000, v32);
    v71 = v69;
    if ((*(v1 + 92) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_2584F7A00(0x464954525453, 0xE600000000000000, &v67);
  sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
  v30 = v71;
LABEL_17:
  v33 = *(v1 + 25);
  v68 = v3;
  LODWORD(v67) = v33;
  sub_2584F6C74(&v67, v70);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v30;
  sub_25850D118(v70, 0x544E4347494DLL, 0xE600000000000000, v34);
  v35 = v69;
  v71 = v69;
  v36 = v1[13];
  v37 = v1[15];
  v38 = v1[20];
  if (!v36)
  {
    sub_2584F7A00(0x454D495447494D41, 0xE800000000000000, v70);
    sub_258465168(v70, &qword_27F92FD80, &unk_25853F3F0);
    goto LABEL_23;
  }

  v39 = v1[18];
  v40 = *(v1 + 152);
  v41 = sub_2584B7EE4(v1[14], v1[20]);
  v42 = MEMORY[0x277D84D38];
  if (v43)
  {
    sub_2584F7A00(0x454D495447494D41, 0xE800000000000000, v70);
    sub_258465168(v70, &qword_27F92FD80, &unk_25853F3F0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_2584F7A00(0x495447494D58414DLL, 0xEA0000000000454DLL, v70);
    sub_258465168(v70, &qword_27F92FD80, &unk_25853F3F0);
    if (!v36)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v68 = MEMORY[0x277D84D38];
  *&v67 = v41;
  sub_2584F6C74(&v67, v70);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v35;
  sub_25850D118(v70, 0x454D495447494D41, 0xE800000000000000, v44);
  v71 = v69;
  if (v40)
  {
    goto LABEL_23;
  }

LABEL_25:
  v68 = v42;
  *&v67 = v39;
  sub_2584F6C74(&v67, v70);
  v45 = v71;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v45;
  sub_25850D118(v70, 0x495447494D58414DLL, 0xEA0000000000454DLL, v46);
  v71 = v69;
LABEL_26:
  v47 = sub_2584B7F30(v37, v38);
  if (v48)
  {
    v68 = v8;
    *&v67 = v47;
    *(&v67 + 1) = v48;
    sub_2584F6C74(&v67, v70);
    v49 = v71;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v49;
    sub_25850D118(v70, 0x48454D495447494DLL, 0xEB00000000545349, v50);
    v71 = v69;
    goto LABEL_29;
  }

LABEL_28:
  sub_2584F7A00(0x48454D495447494DLL, 0xEB00000000545349, v70);
  sub_258465168(v70, &qword_27F92FD80, &unk_25853F3F0);
LABEL_29:
  v51 = sub_2584B7F30(v1[23], v1[28]);
  if (v52)
  {
    v68 = v8;
    *&v67 = v51;
    *(&v67 + 1) = v52;
    sub_2584F6C74(&v67, v70);
    v53 = v71;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v53;
    sub_25850D118(v70, 0x545349484E545244, 0xE800000000000000, v54);
    v71 = v69;
  }

  else
  {
    sub_2584F7A00(0x545349484E545244, 0xE800000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
  }

  v55 = v1[8];
  if (v55)
  {
    v56 = v1[7];
    v68 = v8;
    *&v67 = v56;
    *(&v67 + 1) = v55;
    sub_2584F6C74(&v67, v70);

    v57 = v71;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v57;
    sub_25850D118(v70, 0x4449505041, 0xE500000000000000, v58);
    v59 = v69;
    v71 = v69;
  }

  else
  {
    sub_2584F7A00(0x4449505041, 0xE500000000000000, &v67);
    sub_258465168(&v67, &qword_27F92FD80, &unk_25853F3F0);
    v59 = v71;
  }

  v60 = v1[29];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v60 + 32;
    do
    {
      sub_2584F86B4(v62, &v67);
      v63 = sub_2584F89F0();
      MEMORY[0x28223BE20](v63);
      v66[2] = &v67;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v59;
      sub_2584F7E3C(v63, sub_2584F7DF0, 0, v64, sub_2584F8710, v66);
      v59 = *&v70[0];
      sub_2584F872C(&v67);
      v62 += 120;
      --v61;
    }

    while (v61);
  }

  return v59;
}

uint64_t sub_2584F77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v8 = sub_258532A4C();
  __swift_project_value_buffer(v8, qword_27F93D038);
  sub_2584F86B4(a3, v24);
  sub_258472C68(a2, v23);
  v9 = sub_258532A2C();
  v10 = sub_2585338DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    sub_2584F89F0();
    v13 = sub_25853338C();
    v15 = v14;

    sub_2584F872C(v24);
    v16 = sub_2584713B0(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_258472C68(v23, v22);
    v17 = sub_25853347C();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v20 = sub_2584713B0(v17, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_25845E000, v9, v10, "Duplicate key found in streamEndReport=%s, value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_2584F872C(v24);
  }

  return sub_258472C68(a1, a4);
}

double sub_2584F7A00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2584BC1D0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25850DEC4();
      v10 = v12;
    }

    sub_2584F6C74((*(v10 + 56) + 32 * v8), a3);
    sub_2584F7AA4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2584F7AA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258533A9C() + 1) & ~v5;
    do
    {
      sub_258533EEC();

      sub_2585334AC();
      v10 = sub_258533F2C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2584F7C54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_258533A9C() + 1) & ~v7;
    do
    {
      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v11 = result & v9;
      if (v5 >= v10)
      {
        if (v11 < v10)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v10)
      {
        goto LABEL_10;
      }

      if (v5 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v5);
        v14 = (v12 + v8);
        if (v5 != v8 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v5);
        v17 = (v15 + 8 * v8);
        if (v5 != v8 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v5 = v8;
        }
      }

LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2584F7DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_258472C68((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_2584F7E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v49 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v42 = a1;
  v43 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v44 = v11;
  v45 = 0;
  v46 = v14 & v12;
  v47 = a2;
  v48 = a3;

  sub_2584F81E4(&v40);
  v15 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_5:
    sub_2584D127C(v42);

    return;
  }

  while (1)
  {
    v16 = v40;
    v38 = v40;
    v39 = v15;
    sub_2584F6C74(&v41, v37);
    v17 = *v8;
    v19 = sub_2584BC1D0(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_258533E5C();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25850DEC4();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v28 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v29 = (v28[6] + 16 * v19);
    *v29 = v16;
    v29[1] = v15;
    sub_2584F6C74(v37, (v28[7] + 32 * v19));
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_22;
    }

    v28[2] = v32;
LABEL_6:
    sub_2584F81E4(&v40);
    v15 = *(&v40 + 1);
    a4 = 1;
    if (!*(&v40 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_25850C3EC(v22, a4 & 1);
  v24 = sub_2584BC1D0(v16, v15);
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_23;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v26 = *v8;
  sub_258472C68(*(*v8 + 56) + 32 * v19, v35);
  a5(v36, v35, v37);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    v27 = (v26[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_2584F6C74(v36, v27);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v35[0] = v7;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    sub_2584D127C(v42);

    return;
  }

LABEL_24:
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD00000000000001BLL, 0x8000000258541EC0);
  sub_258533C8C();
  MEMORY[0x259C81500](39, 0xE100000000000000);
  sub_258533C9C();
  __break(1u);
}

uint64_t sub_2584F81E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_258472C68(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_2584F6C74(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_258465168(v21, &qword_27F9314F0, &qword_25853D730);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2584F8344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
    v3 = sub_258533CDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2584BC1D0(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2584F8448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2584AC3B8(v4, v13, &qword_27F9314D0, &qword_25853D638);
      result = sub_2584BC248(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2584F8584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2584AC3B8(v4, &v13, &qword_27F9314E0, &qword_25853D648);
      v5 = v13;
      v6 = v14;
      result = sub_2584BC1D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2584F8858(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = v4;
  v9 = a1();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v16 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v11);
  sub_2584F7C54(v11, v13, a2, a3);
  *v8 = v13;
  return v14;
}

uint64_t sub_2584F8944(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = v4;
  v9 = a1();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v16 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v11);
  sub_2584F7C54(v11, v13, a2, a3);
  *v8 = v13;
  return v14;
}

unint64_t sub_2584F89F0()
{
  v1 = v0;
  v67 = sub_2584F8584(MEMORY[0x277D84F90]);
  *&v65 = 5392708;
  *(&v65 + 1) = 0xE300000000000000;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  LODWORD(v64[0]) = (*(v3 + 32))(v2, v3);
  v4 = MEMORY[0x277D84CC0];
  v5 = sub_258533DFC();
  MEMORY[0x259C81500](v5);

  if (*(v0 + 40))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v66 = v4;
  LODWORD(v65) = v6;
  sub_2584F6C74(&v65, v64);
  v7 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25850D118(v64, 5392708, 0xE300000000000000, isUniquelyReferenced_nonNull_native);

  v67 = v7;
  *&v65 = 0x544E43544341;
  *(&v65 + 1) = 0xE600000000000000;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v9);
  LODWORD(v64[0]) = (*(v10 + 32))(v9, v10);
  v11 = sub_258533DFC();
  MEMORY[0x259C81500](v11);

  v12 = v65;
  v13 = *(v1 + 104);
  v14 = MEMORY[0x277D84D38];
  v66 = MEMORY[0x277D84D38];
  *&v65 = v13;
  sub_2584F6C74(&v65, v64);
  v15 = v67;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_25850D118(v64, v12, *(&v12 + 1), v16);

  v67 = v15;
  strcpy(&v65, "STRMSDRTN");
  WORD5(v65) = 0;
  HIDWORD(v65) = -385875968;
  MEMORY[0x259C81500](95, 0xE100000000000000);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v17);
  LODWORD(v64[0]) = (*(v18 + 32))(v17, v18);
  v19 = sub_258533DFC();
  MEMORY[0x259C81500](v19);

  v21 = v65;
  v22 = *(v1 + 56);
  if (!v13)
  {
    sub_2584F7A00(v65, *(&v65 + 1), &v65);

    sub_258467FD8(&v65);
LABEL_13:
    strcpy(&v65, "AVGSTRMDRTN");
    HIDWORD(v65) = -352321536;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v30);
    LODWORD(v64[0]) = (*(v31 + 32))(v30, v31);
    v32 = sub_258533DFC();
    MEMORY[0x259C81500](v32);

    v33 = v65;
    v34 = *(v1 + 64);
    v35 = *(v1 + 88);
    v36 = *(v1 + 96);
    v37 = sub_2584B7EE4(v22, v13);
    if (v38)
    {
      sub_2584F7A00(v33, *(&v33 + 1), &v65);

      sub_258467FD8(&v65);
    }

    else
    {
      v66 = MEMORY[0x277D84D38];
      *&v65 = v37;
      sub_2584F6C74(&v65, v64);
      v39 = v67;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v33, *(&v33 + 1), v40);

      v67 = v39;
    }

    strcpy(&v65, "MAXSTRMDRTN");
    HIDWORD(v65) = -352321536;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v41 = *(v1 + 24);
    v42 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v41);
    LODWORD(v64[0]) = (*(v42 + 32))(v41, v42);
    v43 = sub_258533DFC();
    MEMORY[0x259C81500](v43);

    v44 = v65;
    if (v36)
    {
      sub_2584F7A00(v65, *(&v65 + 1), &v65);

      sub_258467FD8(&v65);
    }

    else
    {
      v66 = MEMORY[0x277D84D38];
      *&v65 = v35;
      sub_2584F6C74(&v65, v64);
      v45 = v67;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v44, *(&v44 + 1), v46);

      v67 = v45;
    }

    strcpy(&v65, "STRMDRNTHIST");
    BYTE13(v65) = 0;
    HIWORD(v65) = -5120;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v47 = *(v1 + 24);
    v48 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v47);
    LODWORD(v64[0]) = (*(v48 + 32))(v47, v48);
    v49 = sub_258533DFC();
    MEMORY[0x259C81500](v49);

    v50 = v65;
    v51 = sub_2584B7F30(v34, v13);
    v53 = MEMORY[0x277D837D0];
    if (v52)
    {
      v66 = MEMORY[0x277D837D0];
      *&v65 = v51;
      *(&v65 + 1) = v52;
      sub_2584F6C74(&v65, v64);
      v54 = v67;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v50, *(&v50 + 1), v55);

      v67 = v54;
    }

    else
    {
      sub_2584F7A00(v50, *(&v50 + 1), &v65);

      sub_258467FD8(&v65);
    }

    strcpy(&v65, "STRMENDRSN");
    BYTE11(v65) = 0;
    HIDWORD(v65) = -369098752;
    MEMORY[0x259C81500](95, 0xE100000000000000);
    v56 = *(v1 + 24);
    v57 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v56);
    LODWORD(v64[0]) = (*(v57 + 32))(v56, v57);
    v58 = sub_258533DFC();
    MEMORY[0x259C81500](v58);

    v59 = v65;
    v60 = sub_2584F91A0();
    if (v61)
    {
      v66 = v53;
      *&v65 = v60;
      *(&v65 + 1) = v61;
      sub_2584F6C74(&v65, v64);
      v62 = v67;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      sub_25850D118(v64, v59, *(&v59 + 1), v63);

      return v62;
    }

    else
    {
      sub_2584F7A00(v59, *(&v59 + 1), &v65);

      sub_258467FD8(&v65);
      return v67;
    }
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    v24 = 0;
LABEL_12:
    v66 = v14;
    *&v65 = v24;
    sub_2584F6C74(&v65, v64);
    v28 = v67;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v64, v21, *(&v21 + 1), v29);

    v67 = v28;
    goto LABEL_13;
  }

  v24 = 0;
  v25 = (v22 + 32);
  while (1)
  {
    v26 = *v25++;
    v27 = __CFADD__(v24, v26);
    v24 += v26;
    if (v27)
    {
      break;
    }

    if (!--v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2584F91A0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v14 = MEMORY[0x277D84F90];
  sub_2584F9398(0, v2, 0);
  v3 = v14;
  v4 = v1 + 32;
  do
  {
    v4 += 4;
    v5 = sub_258533DFC();
    v15 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = v5;
      v11 = v6;
      sub_2584F9398((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v5 = v10;
      v3 = v15;
    }

    *(v3 + 16) = v8 + 1;
    v9 = v3 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    --v2;
  }

  while (v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
  sub_2584B78C8();
  v12 = sub_2585333CC();

  return v12;
}

void *sub_2584F92F8(void *a1, int64_t a2, char a3)
{
  result = sub_2584B60D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2584F9318(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2584B621C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2584F9338(void *a1, int64_t a2, char a3)
{
  result = sub_2584B6240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2584F9358(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2584B6418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2584F9378(char *a1, int64_t a2, char a3)
{
  result = sub_2584B6570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2584F9398(char *a1, int64_t a2, char a3)
{
  result = sub_2584B6674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2584F93B8()
{
  if (*v0 >= 2u)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584F9430(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = v1;
  return MEMORY[0x2822009F8](sub_2584F9450, v1, 0);
}

uint64_t sub_2584F9450()
{
  v26 = v0;
  result = sub_2584FBFF4(*(v0 + 240), v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 65);
  if (v3 <= 4)
  {
    if (*(v0 + 65) <= 1u)
    {
      if (*(v0 + 65))
      {
        v20 = *(v0 + 32);
        *(v0 + 72) = *(v0 + 16);
        *(v0 + 88) = v20;
        *(v0 + 104) = *(v0 + 48);
        *(v0 + 120) = *(v0 + 64);
        sub_2584F9EA4(v0 + 72);
        sub_2584FC050(v0 + 72);
      }

      else
      {
        sub_2584F9CDC(v2 & 1, *(v0 + 24));
      }
    }

    else if (v3 == 2)
    {
      v11 = *(v0 + 248);
      swift_getErrorValue();
      *(v11 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason) = sub_25852F0FC(*(v0 + 216), *(v0 + 224));
      sub_25853293C();
      v13 = v12;
      sub_2584FA208(v12);
      sub_2584F9F9C(v14, v13);
    }

    else
    {
      v4 = *(v0 + 248);
      if (v3 == 3)
      {
        sub_25853293C();
        v6 = v5;
        sub_2584FA208(v5);
        v7 = v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
        *v7 = v6;
        *(v7 + 8) = 0;
        *(v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = v2;
        v8 = v4 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
        *v8 = v6;
        *(v8 + 8) = 0;
      }

      else
      {
        v19 = *(v0 + 56);
        sub_258464C18((v0 + 16), v0 + 168);
        v25 = v19;
        sub_2584FB0C4((v0 + 168), &v25);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
      }
    }

LABEL_22:
    v24 = *(v0 + 8);

    return v24();
  }

  if (v3 - 5 >= 2)
  {
    if (v3 != 7)
    {
      v15 = *(v0 + 248);
      if (*(v0 + 64) || *(v0 + 40) | v2 | *(v0 + 48) | *(v0 + 56) | *(v0 + 32) | *(v0 + 24))
      {
        v21 = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount);
        v22 = __CFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v15 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount) = v23;
        sub_2584FA38C(result);
      }

      else
      {
        sub_25853293C();
        v17 = v16;
        sub_2584FA208(v16);
        sub_2584F9F9C(v18, v17);
      }

      goto LABEL_22;
    }
  }

  sub_258464C18((v0 + 16), v0 + 128);
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_2584F9708;
  v10 = *(v0 + 240);

  return sub_2584FB3CC(v10, v0 + 128);
}

uint64_t sub_2584F9708()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 128));

  return MEMORY[0x2822009F8](sub_258473E4C, v2, 0);
}

uint64_t sub_2584F9820()
{
  v1[38] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D8, &unk_25853DA70);
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584F98EC, v0, 0);
}

uint64_t sub_2584F98EC()
{
  v1 = v0[38];
  v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state);
  if (v2 == 2)
  {
    sub_2584FBD90();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    v6 = v0[1];
  }

  else
  {
    if (v2 == 1)
    {
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 2;
      v3 = swift_task_alloc();
      v0[42] = v3;
      *v3 = v0;
      v3[1] = sub_2584F9A40;

      return sub_2584FA550((v0 + 2));
    }

    *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 2;

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_2584F9A40()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 304);

    return MEMORY[0x2822009F8](sub_2584F9B8C, v6, 0);
  }
}

uint64_t sub_2584F9B8C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  *(v0 + 280) = &type metadata for SessionEndReport;
  *(v0 + 288) = &off_286990138;
  v4 = swift_allocObject();
  *(v0 + 256) = v4;
  v5 = *(v0 + 224);
  v4[13] = *(v0 + 208);
  v4[14] = v5;
  v4[15] = *(v0 + 240);
  v6 = *(v0 + 160);
  v4[9] = *(v0 + 144);
  v4[10] = v6;
  v7 = *(v0 + 192);
  v4[11] = *(v0 + 176);
  v4[12] = v7;
  v8 = *(v0 + 96);
  v4[5] = *(v0 + 80);
  v4[6] = v8;
  v9 = *(v0 + 128);
  v4[7] = *(v0 + 112);
  v4[8] = v9;
  v10 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v10;
  v11 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  sub_2585337EC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 296) = 0;
  sub_2585337FC();

  v12 = *(v0 + 8);

  return v12();
}

void sub_2584F9CDC(char a1, double a2)
{
  v3 = v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo;
  *v3 = a1 & 1;
  *(v3 + 8) = a2;
  if ((a1 & 1) == 0)
  {
    sub_2584B792C(byte_28698BC78, v19);
    v4 = (v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
    swift_beginAccess();
    v5 = v4[1];
    v18[0] = *v4;
    v18[1] = v5;
    v6 = v4[3];
    v18[2] = v4[2];
    v18[3] = v6;
    v7 = v19[1];
    *v4 = v19[0];
    v4[1] = v7;
    v8 = v19[3];
    v4[2] = v19[2];
    v4[3] = v8;
    sub_2584FBF00(v18);
    if (!*v4)
    {
      if (qword_27F92F8F8 != -1)
      {
        swift_once();
      }

      v9 = sub_258532A4C();
      __swift_project_value_buffer(v9, qword_27F93D038);
      v10 = sub_258532A2C();
      v11 = sub_2585338CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        v14 = MEMORY[0x259C81630](byte_28698BC78, MEMORY[0x277D84D38]);
        v16 = sub_2584713B0(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_25845E000, v10, v11, "Failed to create migrationTimeHistogram with buckets=%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x259C82900](v13, -1, -1);
        MEMORY[0x259C82900](v12, -1, -1);
      }
    }
  }
}

void sub_2584F9EA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  v10 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo);
  v11 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 8);
  v12 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 16);
  v13 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 24);
  v14 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 32);
  v15 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40);
  *v9 = *a1;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  sub_2584FBEA4(a1, v22);
  sub_2584A5834(v10, v11, v12, v13, v14, v15);
  v16 = sub_25853293C();
  v18 = v17;
  v19 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime;
  *v19 = v17;
  *(v19 + 8) = 0;
  sub_2584FA0C8(v16, v17);
  v20 = *(a1 + 48);
  v21 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
  *v21 = v18;
  *(v21 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = v20;
}

void sub_2584F9F9C(uint64_t a1, double a2)
{
  if ((*(v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime + 8) & 1) == 0)
  {
    v5 = a2 - *(v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 4294967300.0)
      {
        v6 = v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds;
        *v6 = v5;
        *(v6 + 4) = 0;
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  oslog = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, oslog, v3, "activated start time is unavailable", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }
}

void sub_2584FA0C8(uint64_t a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo) != 2)
  {
    v5 = (a2 - *(v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo + 8)) * 1000.0;
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 4294967300.0)
      {
        v6 = v2 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds;
        *v6 = v5;
        *(v6 + 4) = 0;
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  oslog = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, oslog, v3, "no activating info", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }
}

void sub_2584FA208(double a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime + 8) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType);
    if (v2 != 6)
    {
      v6 = a1 - *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v6 > -1.0)
      {
        if (v6 < 1.84467441e19)
        {
          if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram))
          {
            sub_2584B58A8(v2, v6);
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D038);
  oslog = sub_258532A2C();
  v4 = sub_2585338CC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25845E000, oslog, v4, "Unable to compute duration on interface", v5, 2u);
    MEMORY[0x259C82900](v5, -1, -1);
  }
}

void sub_2584FA38C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime + 8))
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D038);
    oslog = sub_258532A2C();
    v4 = sub_2585338CC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25845E000, oslog, v4, "No migration start time", v5, 2u);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    return;
  }

  v6 = *v2;
  sub_25853293C();
  v8 = (v7 - v6) * 1000.0;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v9 = sub_2584F93D0(v12);
  if (*v10)
  {
    sub_2584B58A8(v8, 1);
  }

  (v9)(v12, 0);
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_2584FA550(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return MEMORY[0x2822009F8](sub_2584FA570, v1, 0);
}

uint64_t sub_2584FA570()
{
  v1 = *(v0[40] + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo);
  v0[41] = v1;
  if (v1 == 2)
  {
    sub_2584FBD90();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[42] = v5;
    *v5 = v0;
    v5[1] = sub_2584FA68C;

    return sub_2584FAC80();
  }
}

uint64_t sub_2584FA68C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 296) = v1;
  *(v3 + 304) = a1;
  v4 = *(v2 + 320);

  return MEMORY[0x2822009F8](sub_2584FA7A0, v4, 0);
}

uint64_t sub_2584FA7A0()
{
  v1 = *(v0 + 320) + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (v2)
  {

    v70 = v7;
    v71 = v6;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  sub_2584FBDE4(v3, v2, v4, v5, v6, v7);
  sub_2584A5834(v3, v2, v4, v5, v6, v7);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  if (v9)
  {

    v68 = v8;
  }

  else
  {
    v68 = 0;
  }

  sub_2584FBDE4(v8, v9, v10, v11, v12, v13);
  sub_2584A5834(v8, v9, v10, v11, v12, v13);
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v69 = v9;
  if (v15)
  {

    v66 = v17;
    v67 = v16;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v20 = *(v0 + 320);
  sub_2584FBDE4(v14, v15, v16, v17, v18, v19);
  sub_2584A5834(v14, v15, v16, v17, v18, v19);
  v22 = *(v20 + 112);
  v21 = *(v20 + 120);
  v24 = *(v20 + 128);
  v23 = *(v20 + 136);
  if (*(v20 + 145) == 1 || (*(v20 + 144) & 1) != 0 || (v25 = objc_allocWithZone(MEMORY[0x277CF0B98]), *(v0 + 344) = v22, *(v0 + 352) = v21, *(v0 + 360) = v24, *(v0 + 368) = v23, v26 = [v25 initWithAuditToken_], v27 = objc_msgSend(v26, sel_bundleID), v26, !v27))
  {
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v28 = sub_25853342C();
    v64 = v29;
    v65 = v28;
  }

  v30 = *(v0 + 320);
  v31 = *(v30 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds);
  v61 = *(v30 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds + 4);
  v32 = (v30 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds);
  v62 = *v32;
  v63 = v31;
  v33 = *(v32 + 4);
  v34 = *v1;
  v35 = *(v1 + 8);
  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  v39 = *(v1 + 32);
  v38 = *(v1 + 40);
  v40 = *(v1 + 48);
  v41 = *v1;
  if (v35)
  {
    sub_2584FBDE4(v41, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
    sub_2584A5834(v34, v35, v36, v37, v39, v38);
  }

  else
  {
    sub_2584FBDE4(v41, 0, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
    sub_2584A5834(v34, 0, v36, v37, v39, v38);
    v40 = 0;
  }

  v42 = *(v0 + 320);
  v43 = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason);
  v44 = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount);
  v45 = (v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
  result = swift_beginAccess();
  v47 = *v45;
  v48 = v45[1];
  v49 = v45[3];
  *(v0 + 112) = v45[2];
  *(v0 + 128) = v49;
  *(v0 + 80) = v47;
  *(v0 + 96) = v48;
  v50 = v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram;
  v51 = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v52 = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16);
  v53 = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 48);
  *(v0 + 48) = *(v42 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 32);
  *(v0 + 64) = v53;
  *(v0 + 16) = v51;
  *(v0 + 32) = v52;
  v54 = *(v0 + 16);
  if (v54)
  {
    v55 = dword_25853DB58[v43];
    v56 = v35 == 0;
    v57 = *(v0 + 304);
    v58 = *(v0 + 312);
    v59 = *(v0 + 328) & 1;
    v72 = v56;
    v73 = *v45;
    v74 = v45[1];
    v75 = v45[2];
    v76 = v45[3];
    v80 = *(v50 + 56);
    v78 = *(v50 + 24);
    v79 = *(v50 + 40);
    v77 = *(v50 + 8);
    sub_2584FBE34(v0 + 80, v0 + 144);
    sub_2584FBE34(v0 + 16, v0 + 208);
    *v58 = v71;
    *(v58 + 8) = v70;
    *(v58 + 16) = v68;
    *(v58 + 24) = v69;
    *(v58 + 32) = v67;
    *(v58 + 40) = v66;
    *(v58 + 48) = v59;
    *(v58 + 56) = v65;
    *(v58 + 64) = v64;
    *(v58 + 72) = v63;
    *(v58 + 76) = v61;
    *(v58 + 80) = v62;
    *(v58 + 84) = v33;
    *(v58 + 88) = v40;
    *(v58 + 92) = v72;
    *(v58 + 96) = v55;
    *(v58 + 100) = v44;
    *(v58 + 104) = v73;
    *(v58 + 120) = v74;
    *(v58 + 136) = v75;
    *(v58 + 152) = v76;
    *(v58 + 168) = v54;
    *(v58 + 176) = v77;
    *(v58 + 192) = v78;
    *(v58 + 208) = v79;
    *(v58 + 224) = v80;
    *(v58 + 232) = v57;
    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2584FACA0()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 288) = v3;
  v4 = *(v3 + 32);
  *(v0 + 328) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v7 = v5 & *(v3 + 64);
  *(v0 + 296) = MEMORY[0x277D84F90];

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 304) = v7;
    *(v0 + 312) = v9;
    v11 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    *(v0 + 320) = v11;

    return MEMORY[0x2822009F8](sub_2584FAE04, v11, 0);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2584FAE04()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  sub_258464C30(v1 + 112, v0 + 16);
  v3 = *(v1 + 152);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v8 = *(v1 + 272);
  *(v0 + 120) = *(v1 + 288);
  *(v0 + 104) = v8;
  *(v0 + 88) = v7;
  v9 = *(v1 + 216);
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 128) = v9;

  return MEMORY[0x2822009F8](sub_2584FAEDC, v2, 0);
}

uint64_t sub_2584FAEDC()
{
  sub_2584F86B4(v0 + 16, v0 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v2 = sub_2584B5FB0(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2584B5FB0((v3 > 1), v4 + 1, 1, v2);
  }

  sub_2584F872C(v0 + 16);
  *(v2 + 2) = v4 + 1;
  v5 = &v2[120 * v4];
  v6 = *(v0 + 152);
  v7 = *(v0 + 184);
  v8 = *(v0 + 136);
  *(v5 + 4) = *(v0 + 168);
  *(v5 + 5) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v6;
  v9 = *(v0 + 216);
  v10 = *(v0 + 232);
  v11 = *(v0 + 200);
  *(v5 + 18) = *(v0 + 248);
  *(v5 + 7) = v9;
  *(v5 + 8) = v10;
  *(v5 + 6) = v11;
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  *(v0 + 296) = v2;
  v14 = (v13 - 1) & v13;
  if (v14)
  {
    v15 = *(v0 + 288);
LABEL_10:
    *(v0 + 304) = v14;
    *(v0 + 312) = v12;
    v17 = *(*(v15 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v14)))));
    *(v0 + 320) = v17;

    return MEMORY[0x2822009F8](sub_2584FAE04, v17, 0);
  }

  else
  {
    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v15 = *(v0 + 288);
      if (v16 >= (((1 << *(v0 + 328)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v15 + 8 * v16 + 64);
      ++v12;
      if (v14)
      {
        v12 = v16;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 8);

    return v18(v2);
  }
}

void sub_2584FB0C4(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25853356C();
  v6 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  if (!*(*(v2 + v6) + 16))
  {

    goto LABEL_8;
  }

  sub_2584BC1D0(v19[0], v19[1]);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:
    sub_258464C30(a1, v19);
    v17[0] = v5;
    sub_258464C30(v3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider, v18);
    type metadata accessor for StreamEndReporter();
    swift_allocObject();
    v13 = sub_2584FC184(v19, v17, v18);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25853356C();
    v14 = v18[0];
    v15 = v18[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_25850D98C(v13, v14, v15, isUniquelyReferenced_nonNull_native);

    *(v3 + v6) = *v17;
    swift_endAccess();

    return;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v9 = sub_258532A4C();
  __swift_project_value_buffer(v9, qword_27F93D038);
  v10 = sub_258532A2C();
  v11 = sub_2585338EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25845E000, v10, v11, "Stream is already registered for reporting", v12, 2u);
    MEMORY[0x259C82900](v12, -1, -1);
  }
}

uint64_t sub_2584FB3CC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_2584FB3F0, v2, 0);
}

uint64_t sub_2584FB3F0()
{
  v23 = v0;
  v1 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_25853356C();
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (, v6 = sub_2584BC1D0(v3, v2), v8 = v7, , (v8 & 1) != 0))
  {
    *(v0 + 136) = *(*(v5 + 56) + 8 * v6);

    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_2584FB6DC;
    v10 = *(v0 + 112);

    return sub_2584FC444(v10);
  }

  else
  {

    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 120);
    v13 = sub_258532A4C();
    __swift_project_value_buffer(v13, qword_27F93D038);
    sub_258464C30(v12, v0 + 16);
    v14 = sub_258532A2C();
    v15 = sub_2585338CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_25853356C();
      v18 = *(v0 + 96);
      v19 = *(v0 + 104);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v20 = sub_2584713B0(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_25845E000, v14, v15, "Stream with identifier: %s is not registered for reporting", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x259C82900](v17, -1, -1);
      MEMORY[0x259C82900](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2584FB6DC()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_2584FB7EC, v1, 0);
}

uint64_t sub_2584FB7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584FB84C()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStreamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_logger;
  v6 = sub_258532A4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider));
  sub_2584FC0A4(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram + 16));
  sub_2584FC0A4(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16));
  sub_2584A5834(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo + 40));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584FB9CC()
{
  sub_2584FB84C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SessionEndReporter(uint64_t a1)
{
  result = qword_27F931598;
  if (!qword_27F931598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584FBA4C(uint64_t a1)
{
  sub_2584FBC18(319, &qword_27F9315A8, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_2584FBC18(319, &qword_27F9315B0, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      sub_258532A4C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584FBC18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931478, &qword_25853D5F0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2584FBCB8()
{
  result = qword_27F9315B8;
  if (!qword_27F9315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315B8);
  }

  return result;
}

unint64_t sub_2584FBD10(uint64_t a1)
{
  result = sub_2584FBD38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FBD38()
{
  result = qword_27F9315C0;
  if (!qword_27F9315C0)
  {
    type metadata accessor for SessionEndReporter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315C0);
  }

  return result;
}

unint64_t sub_2584FBD90()
{
  result = qword_27F9315C8;
  if (!qword_27F9315C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315C8);
  }

  return result;
}

void sub_2584FBDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_2584FBE34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D0, &qword_25853E140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584FBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315D0, &qword_25853E140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584FBF68()
{

  if (*(v0 + 120))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_2584FC0A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2584FC100(uint64_t a1)
{
  result = sub_2584FBD90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FC12C()
{
  result = qword_27F9315F0;
  if (!qword_27F9315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315F0);
  }

  return result;
}

uint64_t sub_2584FC184(void *a1, char *a2, void *a3)
{
  v4 = v3;
  v7 = *a2;
  swift_defaultActor_initialize();
  *(v4 + 200) = 0;
  *(v4 + 208) = 1;
  v8 = MEMORY[0x277D84F90];
  *(v4 + 216) = MEMORY[0x277D84F90];
  *(v4 + 224) = v8;
  sub_258464C30(a1, v4 + 112);
  *(v4 + 152) = v7;
  sub_258464C30(a3, v4 + 160);
  sub_2584B792C(byte_28698BCE8, &v19);
  if (v19)
  {
    *(v4 + 232) = v19;
    v9 = v21;
    *(v4 + 240) = v20;
    *(v4 + 256) = v9;
    *(v4 + 272) = v22;
    *(v4 + 288) = v23;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v10 = sub_258532A4C();
    __swift_project_value_buffer(v10, qword_27F93D038);

    v11 = sub_258532A2C();
    v12 = sub_2585338AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
      sub_25853356C();
      v15 = sub_2584713B0(v17, v18, &v24);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_25845E000, v11, v12, "streamID: %s initialized stream end reporter", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_2584FCAF0();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 112));
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 160));

    type metadata accessor for StreamEndReporter();
    swift_defaultActor_destroy();
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_2584FC444(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](sub_2584FC464, v1, 0);
}

uint64_t sub_2584FC464()
{
  v32 = v0;
  v1 = sub_2584FBFF4(*(v0 + 216), v0 + 16);
  v2 = *(v0 + 65);
  switch(v2)
  {
    case 7:
      v8 = *(v0 + 224);
      v9 = *(v0 + 56);
      swift_getErrorValue();
      v10 = sub_25852F0FC(*(v0 + 192), *(v0 + 200));
      v11 = v10;
      sub_2584FC8D0(v10);
      v12 = *(v8 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 216) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_2584B5EAC(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 216) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v30 = sub_2584B5EAC((v14 > 1), v15 + 1, 1, v12);
        v16 = v15 + 1;
        v12 = v30;
      }

      v17 = dword_25853DD58[v11];
      *(v12 + 2) = v16;
      *&v12[4 * v15 + 32] = v17;
      *(v8 + 216) = v12;

      goto LABEL_15;
    case 6:
      v3 = *(v0 + 224);
      sub_2584FC8D0(v1);
      v4 = *(v3 + 216);
      v5 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 216) = v4;
      if ((v5 & 1) == 0)
      {
        v4 = sub_2584B5EAC(0, *(v4 + 2) + 1, 1, v4);
        *(v3 + 216) = v4;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = sub_2584B5EAC((v6 > 1), v7 + 1, 1, v4);
      }

      *(v4 + 2) = v7 + 1;
      *&v4[4 * v7 + 32] = 0;
      *(v3 + 216) = v4;
      goto LABEL_15;
    case 5:
      sub_2584FC7C0(v1);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_22;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 216);
  v19 = sub_258532A4C();
  __swift_project_value_buffer(v19, qword_27F93D038);
  sub_2584FBFF4(v18, v0 + 72);
  v20 = sub_258532A2C();
  v21 = sub_2585338CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    sub_2584FBFF4(v0 + 72, v0 + 128);
    v24 = sub_25853347C();
    v26 = v25;
    sub_2584A57D8(v0 + 72);
    v27 = sub_2584713B0(v24, v26, &v31);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_25845E000, v20, v21, "Unexpected event=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x259C82900](v23, -1, -1);
    MEMORY[0x259C82900](v22, -1, -1);
  }

  else
  {

    sub_2584A57D8(v0 + 72);
  }

  sub_2584A57D8(v0 + 16);
LABEL_22:
  v28 = *(v0 + 8);

  return v28();
}

void sub_2584FC7C0(uint64_t a1)
{
  if (*(v1 + 208) == 1)
  {
    sub_25853293C();
    *(v1 + 200) = v2;
    *(v1 + 208) = 0;
  }

  else
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D038);
    oslog = sub_258532A2C();
    v4 = sub_2585338CC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25845E000, oslog, v4, "Stream is already activated. Ignoring event.", v5, 2u);
      MEMORY[0x259C82900](v5, -1, -1);
    }
  }
}

void sub_2584FC8D0(uint64_t a1)
{
  if ((*(v1 + 208) & 1) == 0)
  {
    v5 = *(v1 + 200);
    sub_25853293C();
    v7 = v6 - v5;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -1.0)
    {
      if (v7 < 1.84467441e19)
      {
        sub_2584B58A8(v7, 1);
        *(v1 + 200) = 0;
        *(v1 + 208) = 1;
        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);
  oslog = sub_258532A2C();
  v3 = sub_2585338CC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, oslog, v3, "activated start time is unavailable", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }
}

uint64_t sub_2584FCA50()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584FCAF0()
{
  result = qword_27F9315F8;
  if (!qword_27F9315F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9315F8);
  }

  return result;
}

unint64_t sub_2584FCB54(uint64_t a1)
{
  result = sub_2584FCAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584FCB80()
{
  result = qword_27F931600;
  if (!qword_27F931600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931600);
  }

  return result;
}

uint64_t sub_2584FCBD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2584FCC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316A8, &qword_25853E1E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v22 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  swift_defaultActor_initialize();
  v3[16] = 0;
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v23 = v11;
    v24 = a2;
    v25 = v10;
    v26 = v7;
    v27 = v6;
    v31 = MEMORY[0x277D84F90];
    sub_258533C1C();
    type metadata accessor for TelemetryProvider.ReporterContext();
    v17 = 32;
    do
    {
      v18 = swift_allocObject();
      *(v18 + 32) = 0;
      *(v18 + 16) = *(a1 + v17);
      swift_unknownObjectRetain();
      sub_258533BFC();
      sub_258533C2C();
      sub_258533C3C();
      sub_258533C0C();
      v17 += 16;
      --v16;
    }

    while (v16);

    v19 = v31;
    v7 = v26;
    v6 = v27;
    a2 = v24;
    v10 = v25;
    v11 = v23;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v3[14] = v19;
  v3[15] = a2;
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v6);
  v20 = v30;
  sub_2585337BC();
  (*(v7 + 8))(v9, v6);
  (*(v28 + 32))(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream, v15, v29);
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStreamContinuation, v20, v10);
  return v3;
}

uint64_t sub_2584FCF70(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2584FCF90, v1, 0);
}

uint64_t sub_2584FCF90()
{
  v22 = v0;
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) > 2u)
  {
    v19 = v0[1];

    return v19();
  }

  else
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93D038);

    v5 = v3;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4];
      v20 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v9 = 136315394;
      v0[2] = v8;
      type metadata accessor for TelemetryProvider(0);
      sub_258502698(&qword_27F931688, &unk_25853E00C);
      v12 = sub_258533DFC();
      v14 = sub_2584713B0(v12, v13, &v21);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = v20;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_25845E000, v6, v7, "%s interrupted, error:%@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    *(v1 + v2) = 4;
    v17 = swift_task_alloc();
    v0[5] = v17;
    *v17 = v0;
    v17[1] = sub_258488CC4;

    return sub_2585011DC();
  }
}

uint64_t sub_2584FD274(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_25853368C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, v7, v3);
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v1 + 128) = sub_258476C88(0, 0, v10, &unk_25853E1A8, v14);
}

uint64_t sub_2584FD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316A0, &qword_25853E1B0);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FD564, 0, 0);
}

uint64_t sub_2584FD564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  sub_2585336FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_2584FD650;
  v2 = *(v0 + 216);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v2, v0 + 176);
}

uint64_t sub_2584FD650()
{

  if (v0)
  {
    v1 = sub_2584FDAE0;
  }

  else
  {
    v1 = sub_2584FD760;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584FD760(uint64_t a1)
{
  if (*(v1 + 65) == 255)
  {
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
LABEL_9:

    v10 = *(v1 + 8);

    return v10();
  }

  v2 = *(v1 + 32);
  *(v1 + 72) = *(v1 + 16);
  *(v1 + 88) = v2;
  *(v1 + 104) = *(v1 + 48);
  *(v1 + 120) = *(v1 + 64);
  if ((sub_25853376C() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v1 + 248) = Strong) == 0))
  {
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
    sub_2584A57D8(v1 + 72);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = swift_task_alloc();
  *(v1 + 256) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1 + 72;
  v6 = swift_task_alloc();
  *(v1 + 264) = v6;
  *v6 = v1;
  v6[1] = sub_2584FD90C;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_25853E1C0, v5, v9);
}

uint64_t sub_2584FD90C()
{

  return MEMORY[0x2822009F8](sub_2584FDA24, 0, 0);
}

uint64_t sub_2584FDA24()
{

  sub_2584A57D8(v0 + 72);
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_2584FD650;
  v2 = *(v0 + 216);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v2, v0 + 176);
}

uint64_t sub_2584FDAE0()
{
  v20 = v0;
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93D038);

    v5 = v1;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      v0[23] = v3;
      type metadata accessor for TelemetryProvider(0);
      sub_258502698(&qword_27F931688, &unk_25853E00C);
      v10 = sub_258533DFC();
      v12 = sub_2584713B0(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v0[24] = v1;
      v13 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v14 = sub_25853347C();
      v16 = sub_2584713B0(v14, v15, &v19);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_25845E000, v6, v7, "%s failed to process event with error:%s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:

  v17 = v0[1];

  return v17();
}

uint64_t sub_2584FDD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FDE40, a3, 0);
}

void sub_2584FDE68()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    v2 = sub_258533ACC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:

    v20 = *(v0 + 8);

    v20();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v23 = **(v0 + 128);
    v22 = v1 & 0xC000000000000001;
    v21 = *(v0 + 168) + 32;
    while (1)
    {
      if (v22)
      {
        v6 = MEMORY[0x259C81BF0](v3, *(v0 + 168));
      }

      else
      {
        v6 = *(v21 + 8 * v3);
      }

      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 144);
      v10 = sub_25853368C();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      sub_2584FBFF4(v9, v0 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v6;
      v14 = *(v0 + 32);
      *(v12 + 40) = *(v0 + 16);
      *(v12 + 56) = v14;
      *(v12 + 72) = *(v0 + 48);
      *(v12 + 88) = *(v0 + 64);
      sub_25847B6EC(v7, v8);
      LODWORD(v8) = (*(v11 + 48))(v8, 1, v10);

      v15 = *(v0 + 152);
      if (v8 == 1)
      {
        sub_258465168(*(v0 + 152), &qword_27F92FB78, &qword_2585368F0);
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25853367C();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_14:
          v16 = 0;
          v18 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_25853362C();
      v18 = v17;
      swift_unknownObjectRelease();
LABEL_15:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_25853E1D0;
      *(v19 + 24) = v12;

      if (v18 | v16)
      {
        v4 = v0 + 72;
        *(v0 + 72) = 0;
        *(v0 + 80) = 0;
        *(v0 + 88) = v16;
        *(v0 + 96) = v18;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 160);
      *(v0 + 104) = 1;
      *(v0 + 112) = v4;
      *(v0 + 120) = v23;
      swift_task_create();

      sub_258465168(v5, &qword_27F92FB78, &qword_2585368F0);
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2584FE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2584FE1FC, 0, 0);
}

uint64_t sub_2584FE1FC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25848CAB4;
  v2 = *(v0 + 24);

  return sub_2584F9430(v2);
}

uint64_t sub_2584FE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931680, &qword_25853E160);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FE368, 0, 0);
}

uint64_t sub_2584FE368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  sub_2585336FC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2584FE454;
  v2 = *(v0 + 208);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v2, v0 + 160);
}

uint64_t sub_2584FE454()
{

  if (v0)
  {
    v1 = sub_2584FE8D0;
  }

  else
  {
    v1 = sub_2584FE564;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2584FE564()
{
  if (*(v0 + 40))
  {
    sub_258464C18((v0 + 16), v0 + 56);
    if ((sub_25853376C() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      *(v0 + 240) = Strong;
      if (Strong)
      {
        v2 = Strong;
        v3 = swift_task_alloc();
        *(v0 + 248) = v3;
        *(v3 + 16) = v2;
        *(v3 + 24) = v0 + 56;
        v4 = swift_task_alloc();
        *(v0 + 256) = v4;
        *v4 = v0;
        v4[1] = sub_2584FE6FC;
        v5 = MEMORY[0x277D84F78] + 8;
        v6 = MEMORY[0x277D84F78] + 8;
        v7 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_25853E178, v3, v7);
      }
    }

    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2584FE6FC()
{

  return MEMORY[0x2822009F8](sub_2584FE814, 0, 0);
}

uint64_t sub_2584FE814()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_2584FE454;
  v2 = v0[26];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v2, v0 + 20);
}

uint64_t sub_2584FE8D0()
{
  v24 = v0;
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v1 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93D038);

    v5 = v1;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v22 = *(v0 + 200);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315650;
      *(v0 + 168) = v3;
      type metadata accessor for TelemetryProvider(0);
      sub_258502698(&qword_27F931688, &unk_25853E00C);
      v10 = sub_258533DFC();
      v12 = sub_2584713B0(v10, v11, &v23);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v0 + 144) = *(v22 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931690, &qword_25853E168);
      v13 = sub_25853347C();
      v15 = sub_2584713B0(v13, v14, &v23);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2080;
      *(v0 + 176) = v1;
      v16 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v17 = sub_25853347C();
      v19 = sub_2584713B0(v17, v18, &v23);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_25845E000, v6, v7, "%s reporter:%s reportStream interrupted with error:%s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2584FEBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FEC9C, 0, 0);
}

uint64_t sub_2584FEC9C()
{
  v1 = *(*(v0 + 120) + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 112);
    v3 = (v1 + 32);
    v4 = sub_25853368C();
    v5 = *(v4 - 8);
    v23 = *(v5 + 56);
    v22 = (v5 + 48);
    v21 = (v5 + 8);
    v24 = v4;
    do
    {
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v26 = *v3;
      v23(v8, 1, 1, v4);
      sub_258464C30(v10, v0 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v26;
      sub_258464C18((v0 + 16), v12 + 48);
      *(v12 + 88) = v11;
      sub_25847B6EC(v8, v9);
      LODWORD(v9) = (*v22)(v9, 1, v4);
      swift_unknownObjectRetain_n();

      v14 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_258465168(*(v0 + 136), &qword_27F92FB78, &qword_2585368F0);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_25853367C();
        (*v21)(v14, v4);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_25853362C();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_25853E188;
      *(v18 + 24) = v12;

      if (v16 | v15)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 144);
      *(v0 + 88) = 1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v25;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_258465168(v7, &qword_27F92FB78, &qword_2585368F0);
      ++v3;
      --v2;
      v4 = v24;
    }

    while (v2);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2584FEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[6] = a4;
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  v7[9] = v11;
  *v11 = v7;
  v11[1] = sub_2584FF10C;

  return v13(a6, ObjectType, a5);
}

uint64_t sub_2584FF10C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2584FF240, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2584FF240()
{
  v25 = v0;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);

  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = *(v0 + 64);
    v23 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315650;
    *(v0 + 32) = v8;
    type metadata accessor for TelemetryProvider(0);
    sub_258502698(&qword_27F931688, &unk_25853E00C);
    v11 = sub_258533DFC();
    v13 = sub_2584713B0(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 16) = v23;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931698, &qword_25853E198);
    v14 = sub_25853347C();
    v16 = sub_2584713B0(v14, v15, &v24);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    *(v0 + 40) = v7;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v18 = sub_25853347C();
    v20 = sub_2584713B0(v18, v19, &v24);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_25845E000, v4, v5, "%s failed to publish report to server:%s with error:%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2584FF530()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state);
  if (v2 == 3)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 == 4)
  {
    v3 = 2;
LABEL_5:
    sub_2584A5784();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state) = 3;
  if (v2)
  {
    sub_258502698(&qword_27F931668, &unk_25853E06C);
    v7 = swift_task_alloc();
    v0[3] = v7;
    *v7 = v0;
    v7[1] = sub_2584FF730;

    return MEMORY[0x282200740]();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_2584FF8EC;

    return sub_2585011DC();
  }
}

uint64_t sub_2584FF730()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2584FF9E4;
  }

  else
  {
    v4 = sub_2584FF85C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584FF85C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2584FF8EC;

  return sub_2585011DC();
}

uint64_t sub_2584FF8EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2584FF9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584FFAA8, a3, 0);
}

void sub_2584FFAA8()
{
  v1 = *(*(v0 + 80) + 112);
  if (v1 >> 62)
  {
    v17 = *(*(v0 + 80) + 112);
    v18 = sub_258533ACC();
    v1 = v17;
    v2 = v18;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_18:
    v19 = *(v0 + 80);
    v20 = sub_258502698(&qword_27F931668, &unk_25853E06C);
    v21 = swift_task_alloc();
    *(v0 + 104) = v21;
    *v21 = v0;
    v21[1] = sub_2584FFE48;

    sub_25850037C(v19, v20);
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v23 = **(v0 + 72);
    v24 = v1;
    v22 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v6 = MEMORY[0x259C81BF0](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = sub_25853368C();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      sub_25847B6EC(v7, v8);
      LODWORD(v8) = (*(v10 + 48))(v8, 1, v9);

      v13 = *(v0 + 88);
      if (v8 == 1)
      {
        sub_258465168(*(v0 + 88), &qword_27F92FB78, &qword_2585368F0);
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25853367C();
        (*(v10 + 8))(v13, v9);
        if (!*v12)
        {
LABEL_14:
          v14 = 0;
          v16 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_25853362C();
      v16 = v15;
      swift_unknownObjectRelease();
LABEL_15:

      if (v16 | v14)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v23;
      swift_task_create();

      sub_258465168(v5, &qword_27F92FB78, &qword_2585368F0);
      v1 = v24;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2584FFE48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2584FFF9C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_258500030;

  return sub_2584F9820();
}

uint64_t sub_258500030()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258500160, 0, 0);
  }
}

uint64_t sub_258500160()
{
  v1 = *(v0[2] + 32);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_258500264;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 6, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_258500264()
{

  return MEMORY[0x2822009F8](sub_258485020, 0, 0);
}

uint64_t sub_25850037C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_25853362C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_258500410, v4, v6);
}

uint64_t sub_258500410()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (sub_2585337AC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
    *v3 = v0;
    v3[1] = sub_258500548;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_258500548()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_258500794;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_258500664;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258500664()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_2585337AC())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
  *v4 = v0;
  v4[1] = sub_258500548;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v7, v6, v5);
}

uint64_t sub_258500794()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_2585337AC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931670, &qword_25853E128);
    *v4 = v0;
    v4[1] = sub_258500548;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_2585008D0()
{
  v1[22] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v1[27] = *(v3 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585009F4, v0, 0);
}

uint64_t sub_2585009F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[22] + 112);
  v3[30] = v4;
  if (v4 >> 62)
  {
    v5 = sub_258533ACC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  v3[31] = v5;
  v3[32] = v6;
  if (v5)
  {
    v7 = v3[30];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C81BF0](0);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v5, v7, a3);
      }
    }

    v3[33] = v8;
    v3[34] = 1;
    v7 = *(v8 + 16);
    v3[35] = v7;
    v5 = sub_258500B34;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v7, a3);
  }

  v9 = v3[1];

  return v9();
}

uint64_t sub_258500B34()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state))
  {
    sub_2584FBD90();
    v3 = swift_allocError();
    *v4 = 0;
LABEL_3:
    v5 = *(v0 + 176);
    *(v0 + 304) = v3;
    swift_willThrow();
    v6 = sub_25850114C;
    goto LABEL_6;
  }

  v7 = sub_2584F4014();
  sub_2584B792C(v7, v0 + 16);
  v8 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 48);
  v11 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  v10 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 16);
  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram + 32);
  *(v0 + 128) = v9;
  *(v0 + 80) = v11;
  *(v0 + 96) = v10;
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  v14 = *(v0 + 64);
  *v8 = *(v0 + 16);
  v8[1] = v12;
  v8[2] = v13;
  v8[3] = v14;
  sub_258465168(v0 + 80, &qword_27F9315D0, &qword_25853E140);
  if (!*v8)
  {
    sub_2584FBD90();
    v3 = swift_allocError();
    *v21 = 3;
    goto LABEL_3;
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 232);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v5 = *(v0 + 176);
  *(v1 + v2) = 1;
  v19 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream;
  v20 = *(v18 + 16);
  *(v0 + 288) = v20;
  *(v0 + 296) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v15 + v19, v17);
  v6 = sub_258500CB0;
LABEL_6:

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258500CB0()
{
  v37 = v0[36];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v38 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v40 = v5;
  v41 = v0[23];
  v42 = v0[33];
  v6 = sub_25853368C();
  v39 = *(v6 - 8);
  (*(v39 + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = v1;
  v9 = v4;
  v37(v2, v8, v4);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v38 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v3 + 32))(v12 + v10, v2, v9);
  *(v12 + v11) = v7;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
  sub_25847B6EC(v40, v41);
  LODWORD(v3) = (*(v39 + 48))(v41, 1, v6);

  v13 = v0[23];
  if (v3 == 1)
  {
    sub_258465168(v0[23], &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v39 + 8))(v13, v6);
  }

  v14 = *(v12 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25853362C();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_258465168(v0[24], &qword_27F92FB78, &qword_2585368F0);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_25853E150;
  *(v18 + 24) = v12;
  if (v17 | v15)
  {
    v0[18] = 0;
    v0[19] = 0;
    v0[20] = v15;
    v0[21] = v17;
  }

  v20 = v0[32];
  v19 = v0[33];
  v21 = v0[29];
  v22 = v0[25];
  v23 = v0[26];
  v24 = v0[22];
  v25 = swift_task_create();
  (*(v23 + 8))(v21, v22);
  *(v19 + 32) = v25;

  v26 = *(v24 + v20);
  if (v26 == 3)
  {
    v32 = 1;
LABEL_15:
    sub_2584A5784();
    swift_allocError();
    *v33 = v32;
    swift_willThrow();

    v31 = v0[1];
    goto LABEL_16;
  }

  if (v26 != 1)
  {
    v32 = 2;
    goto LABEL_15;
  }

  v27 = v0[34];
  v28 = v0[31];

  if (v27 != v28)
  {
    v35 = v0[34];
    v36 = v0[30];
    if ((v36 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x259C81BF0](v0[34]);
    }

    else
    {
      if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    v0[33] = v29;
    v0[34] = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      v36 = *(v29 + 16);
      v0[35] = v36;
      v29 = sub_258500B34;
      v30 = 0;

      return MEMORY[0x2822009F8](v29, v36, v30);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x2822009F8](v29, v36, v30);
  }

  v31 = v0[1];
LABEL_16:

  return v31();
}

uint64_t sub_25850114C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2585011FC()
{
  v0[4] = 0;
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  sub_2585337FC();
  v2 = *(v1 + 128);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    *v3 = v0;
    v3[1] = sub_25850148C;
    v5 = MEMORY[0x277D84950];
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v2, v6, v4, v5);
  }

  else
  {
    v7 = v0[5];
    *(v7 + 128) = 0;
    sub_258501A8C();
    v8 = *(v7 + 120);
    v0[8] = v8;
    v9 = v8[2];
    v0[9] = v9;
    if (v9)
    {
      v0[10] = 0;
      v0[11] = v8[4];
      v10 = v8[5];
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v16 = (v12 + *v12);
      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v13[1] = sub_2585017DC;

      return v16(ObjectType, v10);
    }

    else
    {
      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_25850148C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_258502238(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2822009F8](sub_2585015E4, v2, 0);
}

uint64_t sub_2585015E4()
{
  v1 = v0[5];
  if (*(v1 + 128))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = v0[5];
  }

  *(v1 + 128) = 0;

  sub_258501A8C();
  v2 = *(v1 + 120);
  v0[8] = v2;
  v3 = v2[2];
  v0[9] = v3;
  if (v3)
  {
    v0[10] = 0;
    v0[11] = v2[4];
    v4 = v2[5];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2585017DC;

    return v10(ObjectType, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2585017DC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2585018EC, v1, 0);
}

uint64_t sub_2585018EC()
{
  v1 = v0[10];
  v2 = v0[9];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[10] + 1;
    v0[10] = v5;
    v6 = v0[8] + 16 * v5;
    v0[11] = *(v6 + 32);
    v7 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_2585017DC;

    return v11(ObjectType, v7);
  }
}

void sub_258501A8C()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    v2 = sub_258533ACC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      v4 = MEMORY[0x259C81BF0](v3, v1);
      if (*(v4 + 32))
      {
        v5 = v4;

        sub_25853374C();

        v4 = v5;
      }

      ++v3;
      *(v4 + 32) = 0;
      swift_unknownObjectRelease();
    }

    while (v2 != v3);
  }

  else
  {
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      if (*(*v6 + 32))
      {

        sub_25853374C();
      }

      else
      {
      }

      *(v7 + 32) = 0;

      ++v6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_258501C08()
{

  v1 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStreamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TelemetryProvider(uint64_t a1)
{
  result = qword_27F931620;
  if (!qword_27F931620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258501D44(uint64_t a1)
{
  sub_258501E70(319, &qword_27F931630, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_258501E70(319, &qword_27F931638, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_258501E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for TelemetryEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_258501F30(uint64_t a1)
{
  result = sub_2584A5784();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258501F5C()
{
  result = qword_27F931640;
  if (!qword_27F931640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931640);
  }

  return result;
}

unint64_t sub_258501FB0()
{
  result = qword_27F931648;
  if (!qword_27F931648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931648);
  }

  return result;
}

uint64_t sub_258502008@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TelemetryProvider(0);
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_25850204C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931650, &qword_25853E0E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4 - 8];
  sub_2584FBFF4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931658, &qword_25853E0F0);
  sub_2585337EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25850215C()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258542220);
  type metadata accessor for TelemetryProvider(0);
  sub_258502698(&qword_27F931660, &unk_25853E034);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

void sub_258502238(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_258502244(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258464F5C;

  return sub_2584FF9FC(a1, a2, v2);
}

uint64_t sub_2585022F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258502330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_2584FFF7C(a1, v4, v5, v6);
}

uint64_t sub_2585023E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25850241C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258502518(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258464F5C;

  return sub_2584FE298(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_258502660()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258502698(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TelemetryProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2585026DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258472CF8;

  return sub_2584FEBF0(a1, a2, v7, v6);
}

uint64_t sub_258502790()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2585027E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584FEFCC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_2585028B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258502998(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931678, &unk_25853E130) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584FD498(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_258502AC4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258472CF8;

  return sub_2584FDD90(a1, a2, v7, v6);
}

uint64_t sub_258502B78()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 89);
  if (v1 > 4)
  {
    if (v1 == 5 || v1 == 6)
    {
      goto LABEL_10;
    }

    if (v1 != 7)
    {
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
    v2 = *(v0 + 80);
LABEL_13:

    goto LABEL_14;
  }

  switch(v1)
  {
    case 1u:

      break;
    case 2u:
      v2 = *(v0 + 40);
      goto LABEL_13;
    case 4u:
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
      break;
  }

LABEL_14:

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_258502C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_2584FE1DC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_258502D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v10 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v10;
  v34 = *(a1 + 32);
  v11 = type metadata accessor for DateBackedTimeProvider();
  v12 = swift_allocObject();
  v32[3] = v11;
  v32[4] = &off_28698F1D0;
  v32[0] = v12;
  type metadata accessor for SessionEndReporter(0);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v32, v11);
  MEMORY[0x28223BE20](v14);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  (*(v17 + 16))(v16);
  v18 = sub_2585030A8(v33, *v16, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  (*(v7 + 16))(v9, a2, v6);
  type metadata accessor for RTCBackedTelemetryServer();
  swift_allocObject();
  v19 = sub_2584F4A00(v33, v9);
  if (v19)
  {
    v20 = v19;
    v21 = &unk_27F9316D0;
    v22 = type metadata accessor for RTCBackedTelemetryServer;
    v23 = &unk_25853D570;
  }

  else
  {
    type metadata accessor for NullTelemetryServer();
    v20 = swift_allocObject();
    swift_defaultActor_initialize();
    v21 = &unk_27F9316B0;
    v22 = type metadata accessor for NullTelemetryServer;
    v23 = &unk_25853D3A0;
  }

  v24 = sub_258503514(v21, v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316B8, &qword_25853E228);
  inited = swift_initStackObject();
  v31 = xmmword_2585356C0;
  *(inited + 16) = xmmword_2585356C0;
  v26 = sub_258503514(&qword_27F9316C0, type metadata accessor for SessionEndReporter, &unk_25853DA20);
  *(inited + 32) = v18;
  *(inited + 40) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316C8, &qword_25853E230);
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 32) = v20;
  *(v27 + 40) = v24;
  v28 = type metadata accessor for TelemetryProvider(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  v29 = sub_2584FCC14(inited, v27);
  a3[3] = v28;
  a3[4] = &off_286990978;

  result = swift_unknownObjectRelease();
  *a3 = v29;
  return result;
}

uint64_t sub_2585030A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9316D8, &qword_25853E238);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v30 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E0, &unk_25853E240);
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v30 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9315E8, &qword_25853DA80);
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v30 - v13;
  v33[3] = type metadata accessor for DateBackedTimeProvider();
  v33[4] = &off_28698F1D0;
  v33[0] = a2;
  swift_defaultActor_initialize();
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_state) = 0;
  v15 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_logger;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v16 = sub_258532A4C();
  v17 = __swift_project_value_buffer(v16, qword_27F93D038);
  (*(*(v16 - 8) + 16))(a3 + v15, v17, v16);
  v18 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationCompleteTime;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activationTimeMilliSeconds;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationCount) = 0;
  v20 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationStartTime;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_migrationTimeHistogram);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_currentInterfaceType) = 6;
  v22 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceStartTime;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_durationOnInterfaceHistogram);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  v24 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_sessionDurationSeconds;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatedInfo;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_activatingInfo) = xmmword_25853E1F0;
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_endReason) = 0;
  v26 = OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_streamEndReporters;
  *(a3 + v26) = sub_2584F8344(MEMORY[0x277D84F90]);
  *(a3 + 144) = *(a1 + 32);
  v27 = *(a1 + 16);
  *(a3 + 112) = *a1;
  *(a3 + 128) = v27;
  sub_258464C30(v33, a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_timeProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
  v28 = v32;
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v32);
  sub_2585337BC();
  (*(v6 + 8))(v8, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  (*(v12 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStream, v14, v30);
  (*(v9 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit18SessionEndReporter_reportStreamContinuation, v11, v31);
  return a3;
}

uint64_t sub_258503514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25850356C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2585035C8()
{
  if (*v0)
  {
    return 36;
  }

  else
  {
    return 23;
  }
}

uint64_t sub_2585035E0()
{
  *(v1 + 64) = v0;

  return MEMORY[0x2822009F8](sub_258503670, 0, 0);
}

uint64_t sub_258503670()
{
  v1 = *(v0 + 64);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258503784;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_258503784()
{

  return MEMORY[0x2822009F8](sub_2585038AC, 0, 0);
}

uint64_t sub_2585038AC()
{
  v1 = v0[8];
  v2 = [objc_opt_self() sharedClockManager];
  *(v1 + 16) = v2;
  v0[5] = 0;
  v3 = [v2 addgPTPServicesWithError_];
  v4 = v0[5];
  if (v3)
  {
    v0[6] = *MEMORY[0x277D714F0];
    v5 = v4;
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_258503AB8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v7 = v4;
    sub_2585328BC();

    swift_willThrow();
    v8 = v0[8];

    sub_258504A24(*(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56));
    type metadata accessor for TimeSyncBackedTimeSynchronizer();
    swift_deallocPartialClassInstance();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_258503AB8()
{

  return MEMORY[0x2822009F8](sub_258503BE0, 0, 0);
}

uint64_t sub_258503BE0()
{
  v1 = [objc_opt_self() sharedgPTPManager];
  v0[7] = 0;
  v0[11] = v1;
  v2 = [v1 addPTPInstance:v0 + 6 error:v0 + 7];
  v3 = v0[7];
  if (v2)
  {
    v4 = qword_27F92F8F0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    v0[12] = __swift_project_value_buffer(v6, qword_27F93D020);
    v7 = sub_258532A2C();
    v8 = sub_2585338EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25845E000, v7, v8, "Waiting for clock...", v9, 2u);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    swift_beginAccess();
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_258503E78;

    return MEMORY[0x282200480](100000000);
  }

  else
  {
    v11 = v3;
    sub_2585328BC();

    swift_willThrow();
    v12 = v0[8];

    sub_258504A24(*(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56));
    type metadata accessor for TimeSyncBackedTimeSynchronizer();
    swift_deallocPartialClassInstance();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_258503E78()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2585043A4;
  }

  else
  {
    v2 = sub_258503FB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258503FB8()
{
  v1 = v0 + 6;
  v2 = [*(v0[8] + 16) clockWithClockIdentifier_];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v3;
    v6 = v5;
    if (v4)
    {
      v7 = v5;
      v8 = sub_258532A2C();
      v9 = sub_2585338EC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412546;
        *(v10 + 4) = v7;
        *v11 = v3;
        *(v10 + 12) = 2048;
        *(v10 + 14) = *v1;
        v12 = v7;
        _os_log_impl(&dword_25845E000, v8, v9, "Found gPTPClock (%@) with identifier %llu", v10, 0x16u);
        sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
        MEMORY[0x259C82900](v11, -1, -1);
        MEMORY[0x259C82900](v10, -1, -1);
      }

      else
      {
        v12 = v8;
        v8 = v7;
      }

      v18 = v0[14];
      *(v0[8] + 24) = v4;
      sub_25853377C();
      v19 = v0[11];
      if (v18)
      {

        v20 = v0[1];

        return v20();
      }

      else
      {

        v22 = v0[1];
        v23 = v0[8];

        return v22(v23);
      }
    }

    v13 = sub_258532A2C();
    v14 = sub_2585338CC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v6;
      *v16 = v3;
      *(v15 + 12) = 2048;
      *(v15 + 14) = *v1;
      v17 = v6;
      _os_log_impl(&dword_25845E000, v13, v14, "Found a clock (%@) with identifier %llu but it could not be cast to a TSgPTPClock", v15, 0x16u);
      sub_258465168(v16, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v16, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    else
    {
      v17 = v13;
      v13 = v6;
    }
  }

  v24 = swift_task_alloc();
  v0[13] = v24;
  *v24 = v0;
  v24[1] = sub_258503E78;

  return MEMORY[0x282200480](100000000);
}

uint64_t sub_2585043A4()
{
  v1 = *(v0 + 64);

  sub_258504A24(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  type metadata accessor for TimeSyncBackedTimeSynchronizer();
  swift_deallocPartialClassInstance();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25850446C()
{
  v1 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedgPTPManager];
  v3 = [*(v1 + 24) clockIdentifier];
  v38[0] = 0;
  v4 = [v2 removePTPInstanceWithIdentifier:v3 error:v38];

  if (v4)
  {
    v5 = qword_27F92F8F0;
    v6 = v38[0];
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D020);
    swift_retain_n();
    v8 = sub_258532A2C();
    v9 = sub_2585338EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = *(v1 + 24);
      *(v10 + 4) = v12;
      *v11 = v12;
      *(v10 + 12) = 2048;
      v13 = [v12 clockIdentifier];

      *(v10 + 14) = v13;

      _os_log_impl(&dword_25845E000, v8, v9, "Removed gPTPClock (%@) with identifier %llu", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v14 = v38[0];
    v15 = sub_2585328BC();

    swift_willThrow();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v16 = sub_258532A4C();
    __swift_project_value_buffer(v16, qword_27F93D020);

    v17 = v15;
    v18 = sub_258532A2C();
    v19 = sub_2585338CC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 134218242;
      *(v20 + 4) = [*(v1 + 24) clockIdentifier];

      *(v20 + 12) = 2112;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_25845E000, v18, v19, "Failed to remove PTP instance (%llu) from the TSgPTPManager. Reason: %@", v20, 0x16u);
      sub_258465168(v21, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v21, -1, -1);
      MEMORY[0x259C82900](v20, -1, -1);
    }

    else
    {
    }
  }

  v24 = [objc_opt_self() sharedClockManager];
  v38[0] = 0;
  v25 = [v24 removegPTPServicesWithError_];

  if (v25)
  {
    v26 = v38[0];
  }

  else
  {
    v27 = v38[0];
    v28 = sub_2585328BC();

    swift_willThrow();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v29 = sub_258532A4C();
    __swift_project_value_buffer(v29, qword_27F93D020);
    v30 = v28;
    v31 = sub_258532A2C();
    v32 = sub_2585338CC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_25845E000, v31, v32, "Failed to remove gPTPServices from TSClockManager. Reason: %@", v33, 0xCu);
      sub_258465168(v34, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v34, -1, -1);
      MEMORY[0x259C82900](v33, -1, -1);
    }

    else
    {
    }
  }

  sub_258504A24(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  return v1;
}

uint64_t sub_2585049CC()
{
  sub_25850446C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_258504A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_258504A68(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) clockWithClockIdentifier_];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for TimeSyncBackedSynchronizedClock();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      a1[3] = v7;
      a1[4] = &off_286990B40;
      *a1 = v8;
    }

    else
    {
      sub_258506978();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_258506978();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

uint64_t sub_258504B8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v116 = a4;
  v113 = a3;
  v118 = a1;
  v119 = a2;
  v123[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v109 - v8;
  v10 = sub_258532CFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_258532C8C();
  v117 = *(v16 - 8);
  v114 = MEMORY[0x28223BE20](v16);
  v115 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v4;
  v18 = *(v4 + 40);
  if (v18)
  {
    v19 = v120;
    v111 = v11;
    v20 = v10;
    v21 = v5;
    v22 = *(v120 + 48);
    v23 = *(v120 + 56);
    v24 = *(v120 + 32);

    sub_25850594C(v24, v18, v22, v23);
    v6 = v21;

    if (v21)
    {
      return result;
    }

    v26 = v19[4];
    v27 = v19[5];
    v28 = v19[6];
    v29 = v19[7];
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    sub_258504A24(v26, v27, v28, v29);
    v10 = v20;
    v11 = v111;
    v16 = v114;
  }

  sub_258532CAC();
  v30 = v117;
  v31 = (*(v117 + 48))(v15, 1, v16);
  v32 = v116;
  if (v31 != 1)
  {
    (*(v30 + 32))(v115, v15, v16);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v38 = sub_258532A4C();
    v39 = __swift_project_value_buffer(v38, qword_27F93D020);

    v40 = v32;

    v112 = v39;
    v41 = sub_258532A2C();
    v42 = sub_2585338EC();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v113;
    v110 = v6;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v122[0] = v46;
      *v45 = 136381187;
      *(v45 + 4) = sub_2584713B0(v118, v119, v122);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2584713B0(v44, v40, v122);
      *(v45 + 22) = 2048;
      *(v45 + 24) = [*(v120 + 24) clockIdentity];

      _os_log_impl(&dword_25845E000, v41, v42, "Adding IPv4 device at %{private}s on %s to %llu", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v46, -1, -1);
      MEMORY[0x259C82900](v45, -1, -1);
    }

    else
    {
    }

    v121 = 0;
    v57 = *(v120 + 24);
    v58 = sub_25853341C();
    v59 = sub_258532C7C();
    v60 = v59;
    v62 = v61;
    v63 = v61 >> 62;
    if ((v61 >> 62) <= 1)
    {
      if (!v63)
      {
        goto LABEL_38;
      }

      if (v59 <= v59 >> 32)
      {
        v88 = sub_25853285C();
        if (v88)
        {
          v89 = v88;
          v90 = sub_25853287C();
          if (!__OFSUB__(v60, v90))
          {
            v69 = (v60 - v90 + v89);
            result = sub_25853286C();
            if (v69)
            {
              goto LABEL_37;
            }

LABEL_56:
            __break(1u);
            return result;
          }

LABEL_52:
          __break(1u);
        }

LABEL_55:
        result = sub_25853286C();
        __break(1u);
        goto LABEL_56;
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v64 = 0;
    if (v63 != 2)
    {
      goto LABEL_39;
    }

    v65 = *(v59 + 16);
    v66 = sub_25853285C();
    if (v66)
    {
      v67 = v66;
      v68 = sub_25853287C();
      if (__OFSUB__(v65, v68))
      {
        goto LABEL_51;
      }

      v69 = (v65 - v68 + v67);
      sub_25853286C();
      if (v69)
      {
LABEL_37:
        LODWORD(v59) = *v69;
LABEL_38:
        v64 = _OSSwapInt32(v59);
LABEL_39:
        v91 = v119;
        v92 = v44;
        sub_258467E20(v60, v62);
        v122[0] = 0;
        v93 = [v57 addUnicastUDPv4EtEPortOnInterfaceNamed:v58 withDestinationAddress:v64 allocatedPortNumber:&v121 error:v122];

        v94 = v122[0];
        if (v93)
        {
          v111 = v57;
          v95 = v120;
          v96 = *(v120 + 32);
          v97 = *(v120 + 40);
          v98 = *(v120 + 48);
          v99 = *(v120 + 56);
          *(v120 + 32) = v118;
          v95[5] = v91;
          v100 = v116;
          v95[6] = v92;
          v95[7] = v100;

          v101 = v94;
          sub_258504A24(v96, v97, v98, v99);

          v102 = sub_258532A2C();
          v103 = sub_2585338EC();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v123[0] = v105;
            *v104 = 136381443;
            *(v104 + 4) = sub_2584713B0(v118, v91, v123);
            *(v104 + 12) = 512;
            swift_beginAccess();
            *(v104 + 14) = v121;
            *(v104 + 16) = 2080;
            *(v104 + 18) = sub_2584713B0(v92, v100, v123);
            *(v104 + 26) = 2048;
            *(v104 + 28) = [v111 clockIdentity];

            _os_log_impl(&dword_25845E000, v102, v103, "Added IPv4 device at %{private}s:%hu on %s to %llu", v104, 0x24u);
            swift_arrayDestroy();
            MEMORY[0x259C82900](v105, -1, -1);
            MEMORY[0x259C82900](v104, -1, -1);
          }

          else
          {
          }

          return (*(v117 + 8))(v115, v114);
        }

        else
        {
          v106 = v122[0];
          sub_2585328BC();

          swift_willThrow();
          return (*(v117 + 8))(v115, v114);
        }
      }
    }

    else
    {
      sub_25853286C();
    }

    __break(1u);
    goto LABEL_55;
  }

  sub_258465168(v15, &qword_27F9307C0, &qword_25853A850);

  sub_258532D1C();
  if ((v11[6])(v9, 1, v10) == 1)
  {
    sub_258465168(v9, &unk_27F931350, qword_258538C60);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v33 = sub_258532A4C();
    __swift_project_value_buffer(v33, qword_27F93D020);
    v34 = sub_258532A2C();
    v35 = sub_2585338CC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_25845E000, v34, v35, "Invalid address passed to addDevice", v36, 2u);
      MEMORY[0x259C82900](v36, -1, -1);
    }

    sub_258506978();
    swift_allocError();
    *v37 = 0;
    return swift_willThrow();
  }

  else
  {
    v110 = v6;
    v111 = v11;
    v47 = v11[4];
    v48 = v112;
    v117 = v10;
    v47(v112, v9, v10);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v49 = v113;
    v50 = sub_258532A4C();
    __swift_project_value_buffer(v50, qword_27F93D020);

    v51 = v32;

    v52 = sub_258532A2C();
    v53 = sub_2585338EC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v122[0] = v55;
      *v54 = 136381187;
      *(v54 + 4) = sub_2584713B0(v118, v119, v122);
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2584713B0(v49, v51, v122);
      *(v54 + 22) = 2048;
      *(v54 + 24) = [*(v120 + 24) clockIdentity];

      _os_log_impl(&dword_25845E000, v52, v53, "Adding IPv6 device at %{private}s on %s to %llu", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v55, -1, -1);
      v56 = v54;
      v48 = v112;
      MEMORY[0x259C82900](v56, -1, -1);
    }

    else
    {
    }

    v121 = 0;
    v70 = sub_258507E78();
    if (v70)
    {
      v71 = v70;
      v72 = *(v120 + 24);
      v73 = v51;
      v74 = sub_25853341C();
      v122[0] = 0;
      v75 = [v72 addUnicastUDPv6EtEPortOnInterfaceNamed:v74 withDestinationAddress:v71 allocatedPortNumber:&v121 error:v122];

      if (v75)
      {
        v76 = v122[0];
        MEMORY[0x259C82900](v71, -1, -1);
        v78 = v119;
        v77 = v120;
        v80 = *(v120 + 32);
        v79 = *(v120 + 40);
        v81 = *(v120 + 48);
        v82 = *(v120 + 56);
        *(v120 + 32) = v118;
        v77[5] = v78;
        v77[6] = v49;
        v77[7] = v73;

        sub_258504A24(v80, v79, v81, v82);

        v83 = sub_258532A2C();
        v84 = sub_2585338EC();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v73;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v123[0] = v87;
          *v86 = 136381443;
          *(v86 + 4) = sub_2584713B0(v118, v119, v123);
          *(v86 + 12) = 512;
          swift_beginAccess();
          *(v86 + 14) = v121;
          *(v86 + 16) = 2080;
          *(v86 + 18) = sub_2584713B0(v49, v85, v123);
          *(v86 + 26) = 2048;
          *(v86 + 28) = [v72 clockIdentity];

          _os_log_impl(&dword_25845E000, v83, v84, "Added IPv6 device at [%{private}s]:%hu on %s to %llu", v86, 0x24u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v87, -1, -1);
          MEMORY[0x259C82900](v86, -1, -1);
        }

        else
        {
        }

        return (v111[1])(v112, v117);
      }

      else
      {
        v108 = v122[0];
        sub_2585328BC();

        swift_willThrow();
        MEMORY[0x259C82900](v71, -1, -1);
        swift_willThrow();
        return (v111[1])(v112, v117);
      }
    }

    else
    {
      sub_258506978();
      swift_allocError();
      *v107 = 0;
      swift_willThrow();
      return (v111[1])(v48, v117);
    }
  }
}

uint64_t sub_25850594C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v124 = a3;
  v126 = a4;
  v127[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v115 - v7;
  v9 = sub_258532CFC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v115 - v13;
  v15 = sub_258532C8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_258532CAC();
  if ((v16[6])(v14, 1, v15) != 1)
  {
    v16[4](v18, v14, v15);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v122 = v16;
    v25 = sub_258532A4C();
    v26 = __swift_project_value_buffer(v25, qword_27F93D020);
    v27 = a2;

    v28 = v126;

    v29 = v125;

    v118 = v26;
    v30 = sub_258532A2C();
    v31 = sub_2585338EC();

    v32 = os_log_type_enabled(v30, v31);
    v119 = v27;
    v120 = v15;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = v29;
      v35 = swift_slowAlloc();
      v127[0] = v35;
      *v33 = 136381187;
      v36 = a1;
      *(v33 + 4) = sub_2584713B0(a1, v27, v127);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2584713B0(v124, v126, v127);
      *(v33 + 22) = 2048;
      *(v33 + 24) = [*(v34 + 24) clockIdentity];

      _os_log_impl(&dword_25845E000, v30, v31, "Removing IPv4 device at %{private}s on %s from %llu", v33, 0x20u);
      swift_arrayDestroy();
      v37 = v35;
      v29 = v34;
      v28 = v126;
      MEMORY[0x259C82900](v37, -1, -1);
      MEMORY[0x259C82900](v33, -1, -1);
    }

    else
    {
      v36 = a1;
    }

    v52 = *(v29 + 24);
    v53 = sub_25853341C();
    v54 = sub_258532C7C();
    v55 = v54;
    v57 = v56;
    v58 = v56 >> 62;
    v121 = v36;
    if ((v56 >> 62) <= 1)
    {
      if (!v58)
      {
        v59 = v122;
LABEL_35:
        v84 = _OSSwapInt32(v54);
        goto LABEL_37;
      }

      v60 = v18;
      v59 = v122;
      if (v54 <= v54 >> 32)
      {
        v81 = sub_25853285C();
        if (v81)
        {
          v82 = v81;
          v83 = sub_25853287C();
          if (!__OFSUB__(v55, v83))
          {
            v65 = (v55 - v83 + v82);
            result = sub_25853286C();
            if (v65)
            {
              goto LABEL_34;
            }

LABEL_59:
            __break(1u);
            return result;
          }

LABEL_55:
          __break(1u);
        }

LABEL_58:
        result = sub_25853286C();
        __break(1u);
        goto LABEL_59;
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v58 != 2)
    {
      v84 = 0;
      v59 = v122;
LABEL_37:
      v85 = v52;
      sub_258467E20(v55, v57);
      v127[0] = 0;
      v86 = [v52 removeUnicastUDPv4EtEPortFromInterfaceNamed:v53 withDestinationAddress:v84 error:v127];

      v87 = v127[0];
      v88 = v119;
      if (v86)
      {

        v89 = v87;
        v90 = sub_258532A2C();
        v91 = sub_2585338EC();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v127[0] = v93;
          *v92 = 136381187;
          *(v92 + 4) = sub_2584713B0(v121, v88, v127);
          *(v92 + 12) = 2080;
          *(v92 + 14) = sub_2584713B0(v124, v28, v127);
          *(v92 + 22) = 2048;
          *(v92 + 24) = [v85 clockIdentity];

          _os_log_impl(&dword_25845E000, v90, v91, "Removed IPv4 device at %{private}s on %s from %llu", v92, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v93, -1, -1);
          MEMORY[0x259C82900](v92, -1, -1);
        }

        else
        {
        }

        return (*(v59 + 1))(v18, v120);
      }

      else
      {
        v123 = v18;
        v94 = v127[0];
        v95 = sub_2585328BC();

        swift_willThrow();

        v96 = v95;
        v97 = sub_258532A2C();
        v98 = sub_2585338EC();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v127[0] = v122;
          *v99 = 136381443;
          *(v99 + 4) = sub_2584713B0(v121, v88, v127);
          *(v99 + 12) = 2080;
          *(v99 + 14) = sub_2584713B0(v124, v126, v127);
          *(v99 + 22) = 2048;
          *(v99 + 24) = [v85 clockIdentity];

          *(v99 + 32) = 2112;
          v101 = v95;
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 34) = v102;
          *v100 = v102;
          _os_log_impl(&dword_25845E000, v97, v98, "    Failed to remove IPv4 device at %{private}s on %s     from %llu, error:%@", v99, 0x2Au);
          sub_258465168(v100, &qword_27F92FBC0, &qword_258537930);
          MEMORY[0x259C82900](v100, -1, -1);
          v103 = v122;
          swift_arrayDestroy();
          MEMORY[0x259C82900](v103, -1, -1);
          MEMORY[0x259C82900](v99, -1, -1);
        }

        else
        {
        }

        return (*(v59 + 1))(v123, v120);
      }
    }

    v60 = v18;
    v61 = *(v54 + 16);
    v62 = sub_25853285C();
    v59 = v122;
    if (v62)
    {
      v63 = v62;
      v64 = sub_25853287C();
      if (__OFSUB__(v61, v64))
      {
        goto LABEL_54;
      }

      v65 = (v61 - v64 + v63);
      sub_25853286C();
      if (v65)
      {
LABEL_34:
        LODWORD(v54) = *v65;
        v28 = v126;
        v18 = v60;
        goto LABEL_35;
      }
    }

    else
    {
      sub_25853286C();
    }

    __break(1u);
    goto LABEL_58;
  }

  sub_258465168(v14, &qword_27F9307C0, &qword_25853A850);

  sub_258532D1C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_258465168(v8, &unk_27F931350, qword_258538C60);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v19 = sub_258532A4C();
    __swift_project_value_buffer(v19, qword_27F93D020);
    v20 = sub_258532A2C();
    v21 = sub_2585338CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25845E000, v20, v21, "Invalid address passed to addDevice", v22, 2u);
      MEMORY[0x259C82900](v22, -1, -1);
    }

    sub_258506978();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  else
  {
    v38 = v9;
    v120 = v9;
    v121 = a1;
    v39 = v10;
    v40 = v122;
    (*(v10 + 32))(v122, v8, v38);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v41 = sub_258532A4C();
    __swift_project_value_buffer(v41, qword_27F93D020);
    v42 = a2;

    v43 = v126;

    v44 = v125;

    v45 = sub_258532A2C();
    v46 = sub_2585338EC();

    v47 = os_log_type_enabled(v45, v46);
    v118 = v39;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = v44;
      v50 = swift_slowAlloc();
      v127[0] = v50;
      *v48 = 136381187;
      *(v48 + 4) = sub_2584713B0(v121, v42, v127);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2584713B0(v124, v43, v127);
      *(v48 + 22) = 2048;
      *(v48 + 24) = [*(v49 + 24) clockIdentity];

      _os_log_impl(&dword_25845E000, v45, v46, "Removing IPv6 device at %{private}s on %s from %llu", v48, 0x20u);
      swift_arrayDestroy();
      v51 = v50;
      v44 = v49;
      v39 = v118;
      MEMORY[0x259C82900](v51, -1, -1);
      MEMORY[0x259C82900](v48, -1, -1);
    }

    else
    {
    }

    v66 = sub_258507E78();
    if (v66)
    {
      v67 = v66;
      v68 = *(v44 + 24);
      v69 = v124;
      v70 = v126;
      v71 = sub_25853341C();
      v127[0] = 0;
      v116 = v68;
      LODWORD(v68) = [v68 removeUnicastUDPv6EtEPortFromInterfaceNamed:v71 withDestinationAddress:v67 error:v127];

      v72 = v127[0];
      if (v68)
      {

        v73 = v72;
        v74 = sub_258532A2C();
        v75 = sub_2585338EC();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v117 = v67;
          v77 = v69;
          v78 = v76;
          v79 = swift_slowAlloc();
          v127[0] = v79;
          *v78 = 136381187;
          *(v78 + 4) = sub_2584713B0(v121, v42, v127);
          *(v78 + 12) = 2080;
          v80 = v77;
          v67 = v117;
          *(v78 + 14) = sub_2584713B0(v80, v70, v127);
          *(v78 + 22) = 2048;
          *(v78 + 24) = [v116 clockIdentity];

          _os_log_impl(&dword_25845E000, v74, v75, "Removed IPv6 device at %{private}s on %s from %llu", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v79, -1, -1);
          MEMORY[0x259C82900](v78, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v117 = v67;
        v105 = v127[0];
        v106 = sub_2585328BC();

        swift_willThrow();
        v123 = 0;

        v107 = v106;
        v108 = sub_258532A2C();
        v109 = sub_2585338EC();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v127[0] = v112;
          *v110 = 136381443;
          *(v110 + 4) = sub_2584713B0(v121, v42, v127);
          *(v110 + 12) = 2080;
          *(v110 + 14) = sub_2584713B0(v124, v70, v127);
          *(v110 + 22) = 2048;
          *(v110 + 24) = [v116 clockIdentity];

          *(v110 + 32) = 2112;
          v113 = v106;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v110 + 34) = v114;
          *v111 = v114;
          _os_log_impl(&dword_25845E000, v108, v109, "    Failed to remove IPv6 device at %{private}s on %s     from %llu, error:%@", v110, 0x2Au);
          sub_258465168(v111, &qword_27F92FBC0, &qword_258537930);
          MEMORY[0x259C82900](v111, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v112, -1, -1);
          MEMORY[0x259C82900](v110, -1, -1);
        }

        else
        {
        }

        v67 = v117;
      }

      MEMORY[0x259C82900](v67, -1, -1);
      return (*(v118 + 8))(v40, v120);
    }

    else
    {
      sub_258506978();
      swift_allocError();
      *v104 = 0;
      swift_willThrow();
      return (*(v39 + 8))(v40, v120);
    }
  }
}

unint64_t sub_258506978()
{
  result = qword_27F9316E0;
  if (!qword_27F9316E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9316E0);
  }

  return result;
}

unint64_t sub_2585069DC(uint64_t a1)
{
  result = sub_258506978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258506A08()
{
  result = qword_27F9316E8;
  if (!qword_27F9316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9316E8);
  }

  return result;
}

id sub_258506AAC()
{
  if (*(v0 + 149) == 1)
  {
    v1 = *(v0 + 116);
    v2 = *(v0 + 124);
    v3 = *(v0 + 132) | *(v0 + 140);
    if (*(v0 + 148))
    {
      v4 = 0;
    }

    else
    {
      v4 = (v3 | v1 | v2) == 0;
    }

    if (v4)
    {
      goto LABEL_19;
    }

    v5 = v3 | v2;
    if (!*(v0 + 148) && (v1 == 1 ? (v6 = v5 == 0) : (v6 = 0), v6))
    {
      v7 = MEMORY[0x277D7BA38];
    }

    else
    {
      if (!*(v0 + 148) && v1 == 2 && !v5)
      {
LABEL_19:
        v7 = MEMORY[0x277D7BA50];
        goto LABEL_20;
      }

      v7 = MEMORY[0x277D7BA48];
      if (!*(v0 + 148) && v1 == 3 && !v5)
      {
        v7 = MEMORY[0x277D7BA40];
      }
    }
  }

  else
  {
    if (qword_27F92F948 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F93D170;
  }

LABEL_20:
  v8 = *v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D7BB10]) initWithAddress_];
  v10 = [objc_allocWithZone(MEMORY[0x277D7BA68]) initWithUniqueIdentifier:v8 peerAddress:v9];

  return v10;
}

void sub_258506C04()
{
  if (*(v0 + 112) == 1)
  {
    *(v0 + 112) = 3;

    v1 = sub_258532A2C();
    v2 = sub_2585338EC();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138477827;
      v5 = sub_258506AAC();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_25845E000, v1, v2, "Traffic registration=%{private}@ interrupted", v3, 0xCu);
      sub_2584D1214(v4);
      MEMORY[0x259C82900](v4, -1, -1);
      MEMORY[0x259C82900](v3, -1, -1);
    }

    v6 = (v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    if (v7)
    {
      v8 = v6[1];

      v7(v9);
      sub_258464B24(v7, v8);
      v10 = *v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = v6[1];
    *v6 = 0;
    v6[1] = 0;

    sub_258464B24(v10, v11);
  }
}

uint64_t sub_258506D7C()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger;
  v2 = sub_258532A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258464B24(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for WiFiP2PBackedTrafficRegistration(uint64_t a1)
{
  result = qword_27F931708;
  if (!qword_27F931708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258506E6C(uint64_t a1)
{
  result = sub_258532A4C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_258506F4C()
{
  result = qword_27F931718;
  if (!qword_27F931718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931718);
  }

  return result;
}

uint64_t sub_258506FA4(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (v2[112])
  {
    sub_2585075D0();
    swift_allocError();
  }

  else
  {
    v3 = v2;

    v6 = sub_258532A2C();
    v7 = sub_2585338EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138477827;
      v10 = sub_258506AAC();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_25845E000, v6, v7, "Setting traffic registration=%{private}@", v8, 0xCu);
      sub_2584D1214(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    v11 = *&v2[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager];
    v12 = sub_258506AAC();
    aBlock[4] = sub_258507624;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258507240;
    aBlock[3] = &block_descriptor_5;
    v13 = _Block_copy(aBlock);

    aBlock[0] = 0;
    LOBYTE(v11) = [v11 setTrafficRegistration:v12 onInvalidationHandler:v13 error:aBlock];
    _Block_release(v13);

    v14 = aBlock[0];
    if (v11)
    {
      v15 = &v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler];
      v16 = *&v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler];
      v17 = *&v3[OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8];
      *v15 = a1;
      v15[1] = a2;
      v18 = v14;

      result = sub_258464B24(v16, v17);
      v3[112] = 1;
      return result;
    }

    v20 = aBlock[0];
    sub_2585328BC();
  }

  return swift_willThrow();
}

void sub_258507240(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2585072A8()
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 112) == 1)
  {
    v1 = v0;
    *(v0 + 112) = 2;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138477827;
      v6 = sub_258506AAC();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_25845E000, v2, v3, "Clearing traffic registration=%{private}@", v4, 0xCu);
      sub_2584D1214(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager);
    v8 = sub_258506AAC();
    v23[0] = 0;
    LODWORD(v7) = [v7 clearTrafficRegistration:v8 error:v23];

    if (v7)
    {
      v9 = v23[0];
    }

    else
    {
      v10 = v23[0];
      v11 = sub_2585328BC();

      swift_willThrow();

      v12 = v11;
      v13 = sub_258532A2C();
      v14 = sub_2585338CC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138478083;
        v17 = sub_258506AAC();
        *(v15 + 4) = v17;
        *v16 = v17;
        *(v15 + 12) = 2112;
        v18 = v11;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v19;
        v16[1] = v19;
        _os_log_impl(&dword_25845E000, v13, v14, "Clear traffic registration=%{private}@ failed with error=%@", v15, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBC0, &qword_258537930);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v16, -1, -1);
        MEMORY[0x259C82900](v15, -1, -1);
      }

      else
      {
      }
    }

    v20 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v21 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
    v22 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler + 8);
    *v20 = 0;
    v20[1] = 0;
    sub_258464B24(v21, v22);
  }
}

uint64_t sub_258507598()
{
  result = sub_25853341C();
  qword_27F93D170 = result;
  return result;
}

unint64_t sub_2585075D0()
{
  result = qword_27F931720;
  if (!qword_27F931720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931720);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258507650(uint64_t a1)
{
  result = sub_2585075D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850767C()
{
  result = qword_27F931728;
  if (!qword_27F931728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931728);
  }

  return result;
}

unint64_t sub_2585076E8()
{
  result = qword_27F931730;
  if (!qword_27F931730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931730);
  }

  return result;
}

uint64_t static audit_token_t.current.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85F48];
  memset(v4, 0, sizeof(v4));
  result = sub_25850783C(v4, v5, v1, &v3);
  if (!v0)
  {
    return *&v4[0];
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> audit_token_t.init(taskName:)(audit_token_t *__return_ptr retstr, Swift::UInt32 taskName)
{
  v4[1] = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  sub_25850783C(v3, v4, taskName, &v2);
}

uint64_t sub_25850783C(integer_t *a1, uint64_t a2, task_name_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = sub_2585329DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
  }

  task_info_outCnt = 8;
  result = task_info(a3, 0xFu, a1, &task_info_outCnt);
  if (result)
  {
    v12 = sub_258532A5C();
    if ((v12 & 0x100000000) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = v12;
    }

    v15 = v13;
    sub_258507B48(MEMORY[0x277D84F90]);
    sub_258507C58();
    sub_25853289C();
    v14 = sub_2585329CC();
    (*(v8 + 8))(v10, v7);
    result = swift_willThrow();
    *a4 = v14;
  }

  return result;
}

uint64_t sub_2585079D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 32)
      {
        goto LABEL_8;
      }

LABEL_11:
      result = sub_258467E20(a1, a2);
      v13 = 0uLL;
      v12 = 1;
      v14 = 0uLL;
      goto LABEL_12;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_258507AF4();
  sub_25853283C();
  result = sub_258467E20(a1, a2);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
LABEL_12:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_258507AF4()
{
  result = qword_27F931738;
  if (!qword_27F931738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931738);
  }

  return result;
}

unint64_t sub_258507B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
    v3 = sub_258533CDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_258507CB0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2584BC1D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2584F6C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258507C58()
{
  result = qword_27F931740;
  if (!qword_27F931740)
  {
    sub_2585329DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931740);
  }

  return result;
}

uint64_t sub_258507CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314E0, &qword_25853D648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258507D20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = sub_258532CFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_258507F1C(v13, v14, &v12, v9);
  (*(v7 + 32))(a3, v9, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_258507E78()
{
  v0 = swift_slowAlloc();
  result = sub_258532CDC();
  v2 = result;
  v4 = v3;
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(result + 16);
    }
  }

  else if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  if (__OFADD__(v6, 16))
  {
    __break(1u);
  }

  else if (v6 + 16 >= v6)
  {
    sub_25853290C();
    sub_258467E20(v2, v4);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258507F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v22 - v12;
  if (!v11 || a2 - v11 != 16)
  {
    sub_258508184();
    v20 = swift_allocError();
    result = swift_willThrow();
    goto LABEL_6;
  }

  v14 = sub_2584F01F0(v11, 0x10uLL);
  v16 = v15;
  v17 = sub_258532D8C();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_2584A7B8C(v14, v16);
  sub_258532D0C();
  v18 = sub_258532CFC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2584AE2A8(v13);
    sub_258508184();
    v20 = swift_allocError();
    swift_willThrow();
    result = sub_258467E20(v14, v16);
LABEL_6:
    *a3 = v20;
    return result;
  }

  sub_258467E20(v14, v16);
  return (*(v19 + 32))(a4, v13, v18);
}

unint64_t sub_258508184()
{
  result = qword_27F931748;
  if (!qword_27F931748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931748);
  }

  return result;
}

unint64_t sub_2585081E8(uint64_t a1)
{
  result = sub_258508184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258508214()
{
  result = qword_27F931750;
  if (!qword_27F931750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931750);
  }

  return result;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_27F931758;
  if (!qword_27F931758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2585082B4(uint64_t a1)
{
  sub_258508328(319);
  if (v1 <= 0x3F)
  {
    sub_258508424(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_258508328(uint64_t a1)
{
  if (!qword_27F931768)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F931768);
    }
  }
}

void sub_258508424(uint64_t a1)
{
  if (!qword_27F931770)
  {
    type metadata accessor for AVCStreamInputID(255);
    sub_25853398C();
    type metadata accessor for CMTime(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F931770);
    }
  }
}

void sub_2585084C8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;

  v11 = sub_258532A2C();
  v12 = sub_2585338EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v29);
    *(v14 + 12) = 2080;
    v28 = a1;
    v16 = sub_25853347C();
    v26 = v10;
    v17 = a1;
    v18 = v4;
    v20 = sub_2584713B0(v16, v19, v29);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v28 = *(v2 + 232);
    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, v29);

    *(v14 + 24) = v23;
    v4 = v18;
    a1 = v17;
    v10 = v26;
    _os_log_impl(&dword_25845E000, v11, v12, "%s state changed from %s to %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v15, -1, -1);
    v24 = v14;
    v7 = v27;
    MEMORY[0x259C82900](v24, -1, -1);
  }

  if (a1 == 2)
  {
    v25 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v2 + v25, v10, &qword_27F930590, &qword_25853F8A0);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_258465168(v10, &qword_27F930590, &qword_25853F8A0);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_258465168(v10, &qword_27F930590, &qword_25853F8A0);
      sub_25853364C();
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_258508844()
{
  sub_2584A96C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  sub_258465168(v0 + 144, &qword_27F9317E0, &qword_25853EB18);
  sub_258465168(v0 + 184, &qword_27F9317F0, &qword_25853EB30);

  v1 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID;
  v2 = sub_2585329BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection));
  sub_25850FA84(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 40), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 48), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 56), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 64), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 72), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 80), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider));
  v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  v12 = sub_258532A4C();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider));

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation, &qword_27F931820, &unk_25853F380);
  swift_unknownObjectRelease();
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  return v0;
}

uint64_t sub_258508BFC()
{
  sub_258508844();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for VideoStreamAVConference(uint64_t a1)
{
  result = qword_27F931778;
  if (!qword_27F931778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258508CA8(uint64_t a1)
{
  sub_2585329BC();
  if (v1 <= 0x3F)
  {
    sub_25850904C(319, &qword_27F931788, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_25850904C(319, &qword_27F931790, MEMORY[0x277D858B0]);
      if (v3 <= 0x3F)
      {
        sub_2585090C8(319, &qword_27F931798, MEMORY[0x277D857B8]);
        if (v4 <= 0x3F)
        {
          sub_2585090C8(319, &qword_27F9317A0, MEMORY[0x277D85788]);
          if (v5 <= 0x3F)
          {
            sub_258532A4C();
            if (v6 <= 0x3F)
            {
              sub_2584A7894(319, &qword_27F9317A8, &qword_27F9317B0, &qword_25853EA00);
              if (v7 <= 0x3F)
              {
                sub_25850911C(319);
                if (v8 <= 0x3F)
                {
                  sub_2584A7894(319, &qword_27F9317C0, &qword_27F930570, &qword_258538220);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_25850904C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for VideoStreamEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2585090C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MediaStreamInternalEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25850911C(uint64_t a1)
{
  if (!qword_27F9317B8)
  {
    type metadata accessor for MediaConnectionPrerequisites(255);
    v1 = sub_258533A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9317B8);
    }
  }
}

uint64_t sub_258509198(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  swift_beginAccess();
  sub_2584AC3B8(v1 + 144, &v28, &qword_27F9317E0, &qword_25853EB18);
  if (v29)
  {
    sub_258464C18(&v28, v30);
    v32 = sub_25853391C();
    if (v32)
    {
      v10 = *(*__swift_project_boxed_opaque_existential_1(v30, v31) + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
      if (v10)
      {
        v11 = [v10 streamInputID];
      }

      else
      {
        v11 = 0;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v16 = v9 + *(v15 + 64);
      *v9 = v11;
      sub_25853399C();
      v26 = a1;
      *v16 = sub_25853392C();
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      *(v16 + 2) = v19;
      swift_storeEnumTagMultiPayload();
      sub_2584D6874();
      v27 = v20;
      sub_25850FB28(v9, v7, type metadata accessor for Signpost);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *(v15 + 48);
        v22 = sub_25853398C();
        (*(*(v22 - 8) + 8))(&v7[v21], v22);
      }

      kdebug_trace();
      sub_25850FC88(v9, type metadata accessor for Signpost);
      v23 = *(v2 + 232);
      if (v23 != 3)
      {
        if (v23 == 4)
        {
          __swift_project_boxed_opaque_existential_1(v30, v31);
          sub_2584D3F60(v26);
        }

        else
        {
          sub_258476AE4();
          swift_allocError();
          *v24 = 0;
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_25850AAF8();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    sub_258465168(&v28, &qword_27F9317E0, &qword_25853EB18);
    sub_25850AAF8();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_258509514()
{
  v1[5] = v0;
  v2 = sub_2585329BC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v5 = sub_25853362C();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x2822009F8](sub_2585096C8, v5, v4);
}

uint64_t sub_2585096C8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v3, &qword_27F930580, &unk_2585382B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_258465168(v0[10], &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v7 = v0[13];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    sub_25850BB7C(v0[10], v7);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    v12 = sub_258509C94(&OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID);
    v13 = v0[8];
    v11(v13, v0[9], v0[6]);
    type metadata accessor for AVConferenceBackedVideoStream(0);
    swift_allocObject();
    v14 = sub_2584D4300(v13, v12);
    v0[16] = v14;
    v17 = v14;
    v18 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);
    v19 = sub_25850FBDC(&unk_27F930D80, type metadata accessor for AVConferenceBackedVideoStream, &unk_25853BC88);
    v20 = (v18 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
    *v20 = v17;
    v20[1] = v19;

    swift_unknownObjectRelease();
    v0[17] = sub_258509DB4();
    v0[18] = 0;

    return MEMORY[0x2822009F8](sub_258509A08, v17, 0);
  }
}

uint64_t sub_258509A08()
{
  v1 = v0[18];
  sub_2584BB594(v0[17], v0[16]);
  v0[19] = v1;
  v2 = v0[17];
  if (v1)
  {

    v3 = v0[14];
    v4 = v0[15];
    v5 = sub_258509BC4;
  }

  else
  {

    v3 = v0[14];
    v4 = v0[15];
    v5 = sub_258509AB0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258509AB0()
{
  sub_25850A160();
  sub_25850FC88(*(v0 + 104), type metadata accessor for MediaConnectionPrerequisites);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258509BC4()
{
  sub_25850FC88(*(v0 + 104), type metadata accessor for MediaConnectionPrerequisites);

  v1 = *(v0 + 8);

  return v1();
}

id sub_258509C94(void *a1, void *a2)
{
  v5 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + *a1), *(v2 + *a1 + 24));
  result = sub_2584D2858();
  v7 = result;
  if (!v3)
  {
    *&v13 = sub_25853342C();
    *(&v13 + 1) = v8;
    sub_258533B2C();
    v9 = sub_2585329BC();
    v14 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v5 + *a2, v9);
    sub_2584F6C74(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v7;
    sub_25850D840(v12, v15, isUniquelyReferenced_nonNull_native);
    sub_2584BC6D0(v15);
    return v16;
  }

  return result;
}

id sub_258509DB4()
{
  v2 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator + 24));
  v3 = sub_2584D2938();
  v4 = v3;
  if (v1 || *(v0 + 48) < 0)
  {
    return v4;
  }

  if (*(v0 + 32))
  {
    goto LABEL_15;
  }

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  result = [v3 video];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = result;
  [result setVideoResolution_];

  result = [v4 video];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((~*&v7 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = result;
  [result setCustomWidth_];

  result = [v4 video];
  if (result)
  {
    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v10 = result;
          [result setCustomHeight_];

LABEL_15:
          result = [v4 video];
          if (result)
          {
            v11 = result;
            v12 = [result captureSource];

            if (v12 == 3)
            {
              sub_25850AB4C(v4);
              swift_beginAccess();
              sub_2584AC3B8(v2 + 144, v22, &qword_27F9317E0, &qword_25853EB18);
              v13 = v23;
              if (v23)
              {
                v14 = __swift_project_boxed_opaque_existential_1(v22, v23);
                v15 = *(v13 - 8);
                MEMORY[0x28223BE20](v14);
                v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v15 + 16))(v17);
                sub_258465168(v22, &qword_27F9317E0, &qword_25853EB18);
                v18 = *(*v17 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
                if (v18)
                {
                  v19 = [v18 streamInputID];
                }

                else
                {
                  v19 = 0;
                }

                (*(v15 + 8))(v17, v13);
                [v4 setStreamInputID_];
              }

              else
              {
                sub_258465168(v22, &qword_27F9317E0, &qword_25853EB18);
                sub_25850AAF8();
                swift_allocError();
                *v20 = 0;
                swift_willThrow();
              }
            }

            return v4;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_25850A160()
{
  v2 = *(v0 + 48);
  if (v2 < 0)
  {
    if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream))
    {
      v3 = *(v0 + 24);
      v37 = *(v0 + 16);
      v4 = *(v0 + 32);
      v5 = *(v0 + 40);
      v6 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream + 8);
      if (v3)
      {
        v30 = v0;
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 16);
        v32 = v4;
        sub_2584A967C(v37, v3, v4, v5, v2);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v9 = v8(ObjectType, v6);
        v10 = type metadata accessor for AVConferenceBackedRemoteVideoClient(0);
        swift_unknownObjectRetain();
        v11 = sub_2584D396C(v9, v3);
        if (v1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
          sub_2584A96C0(v37, v3, v32, v5, v2);
        }

        else
        {
          v21 = v11;
          swift_unknownObjectRelease();
          v35 = v10;
          v36 = &off_28698F1E0;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_2584A96C0(v37, v3, v32, v5, v2);
          v34[0] = v21;
          swift_beginAccess();
          sub_2584AC5D0(v34, v30 + 184, &qword_27F9317F0, &qword_25853EB30);
          swift_endAccess();
        }
      }

      else if (v37)
      {
        v31 = v0;
        v13 = swift_getObjectType();
        v14 = v4;
        v15 = *(v6 + 16);
        sub_2584A967C(v37, 0, v14, v5, v2);
        swift_unknownObjectRetain();
        v33 = v5;
        v16 = v37;
        v17 = v15(v13, v6);
        v18 = type metadata accessor for AVConferenceBackedRemoteVideoClient(0);
        v19 = v16;
        v20 = sub_2584D2F4C(v17, v19);
        if (v1)
        {

          sub_2584A96C0(v37, 0, v14, v33, v2);
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = v20;
          v35 = v18;
          v36 = &off_28698F1E0;

          sub_2584A96C0(v37, 0, v14, v33, v2);
          swift_unknownObjectRelease();
          v34[0] = v29;
          swift_beginAccess();
          sub_2584AC5D0(v34, v31 + 184, &qword_27F9317F0, &qword_25853EB30);
          swift_endAccess();
        }
      }

      else
      {
        sub_2584A967C(0, 0, *(v0 + 32), *(v0 + 40), v2);
        v22 = qword_27F92F8E0;
        swift_unknownObjectRetain();
        if (v22 != -1)
        {
          swift_once();
        }

        v23 = sub_258532A4C();
        __swift_project_value_buffer(v23, qword_27F93CFF0);

        v24 = sub_258532A2C();
        v25 = sub_2585338EC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34[0] = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v34);
          _os_log_impl(&dword_25845E000, v24, v25, "%s receive configuration does not have layer or figEndpointID", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x259C82900](v27, -1, -1);
          MEMORY[0x259C82900](v26, -1, -1);
        }

        sub_258476AE4();
        swift_allocError();
        *v28 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_2584A96C0(0, 0, v4, v5, v2);
      }
    }

    else
    {
      sub_258476AE4();
      swift_allocError();
      *v12 = 8;
      swift_willThrow();
    }
  }
}

uint64_t sub_25850A63C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  swift_beginAccess();
  sub_2584AC3B8(v0 + 184, &v21, &qword_27F9317F0, &qword_25853EB30);
  if (!v22)
  {
    return sub_258465168(&v21, &qword_27F9317F0, &qword_25853EB30);
  }

  sub_258464C18(&v21, v23);
  v10 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v11 = *v10;
  if (*(*v10 + OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid) == 1)
  {
    v12 = OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStream;
    v13 = sub_25853368C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    (*(v3 + 16))(v6, v11 + v12, v2);
    v14 = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v20 = v1;
    v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    *(v17 + 24) = v14;
    (*(v3 + 32))(v17 + v15, v6, v2);
    *(v17 + v16) = v0;
    swift_retain_n();
    *(v0 + 136) = sub_258476C88(0, 0, v9, &unk_25853EB40, v17);
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_25850A96C(uint64_t a1)
{
  *(a1 + 8) = sub_25850FBDC(&qword_27F9317C8, type metadata accessor for VideoStreamAVConference, &unk_25853EAB8);
  result = sub_25850FBDC(&qword_27F9317D0, type metadata accessor for VideoStreamAVConference, &unk_25853EA54);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_25850A9F4()
{
  result = qword_27F9317D8;
  if (!qword_27F9317D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9317D8);
  }

  return result;
}

uint64_t sub_25850AA48(uint64_t a1)
{
  result = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25850AAA0(uint64_t a1)
{
  result = sub_25850FBDC(&qword_27F9317C8, type metadata accessor for VideoStreamAVConference, &unk_25853EAB8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850AAF8()
{
  result = qword_27F9317E8;
  if (!qword_27F9317E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9317E8);
  }

  return result;
}

void sub_25850AB4C(void *a1)
{
  formatDescriptionOut[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 video];
  if (!v4)
  {
LABEL_23:
    __break(1u);
  }

  v5 = v4;
  v6 = [v4 videoResolution];

  if (v6 != 12)
  {
    sub_25850AAF8();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    return;
  }

  formatDescriptionOut[0] = 0;
  v7 = [a1 video];
  if (!v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  v9 = [v7 pixelFormat];

  v10 = [a1 video];
  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 customWidth];

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [a1 video];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 customHeight];

    if (v15 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        v16 = CMVideoFormatDescriptionCreate(0, v9, v12, v15, 0, formatDescriptionOut);
        if (formatDescriptionOut[0])
        {
          v17 = v16;
          v18 = formatDescriptionOut[0];
          if (v17 == sub_258532A6C())
          {
            v19 = v1;
            v20 = type metadata accessor for AVConferenceBackedStreamInput();
            v21 = objc_allocWithZone(v20);
            v22 = v18;
            v23 = sub_2584D3B60(v22);
            if (v2)
            {
            }

            else
            {
              v26 = v23;
              v27[3] = v20;
              v27[4] = &off_28698F2B8;

              v27[0] = v26;
              swift_beginAccess();
              sub_2584AC5D0(v27, v19 + 144, &qword_27F9317E0, &qword_25853EB18);
              swift_endAccess();
            }

            goto LABEL_17;
          }
        }

        sub_25850AAF8();
        swift_allocError();
        *v25 = 3;
        swift_willThrow();
LABEL_17:

        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_25850AE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317F8, &qword_25853EB48);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931800, &unk_25853EB50);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v5[15] = sub_25850FBDC(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v9 = sub_25853362C();
  v5[16] = v9;
  v5[17] = v8;

  return MEMORY[0x2822009F8](sub_25850AFA4, v9, v8);
}

uint64_t sub_25850AFA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  sub_2585336FC();
  v0[18] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v1 = v0[15];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_25850B090;
  v4 = v0[12];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v4, v0 + 6);
}

uint64_t sub_25850B090()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_25850B51C;
  }

  else
  {
    v5 = sub_25850B1A0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25850B1A0()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    goto LABEL_9;
  }

  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFF0);

  sub_25850BB2C(v1, v2);
  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  sub_25850BB54(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v20);
    *(v6 + 12) = 2080;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    sub_25850BB40(v1, v2);
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v20);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_25845E000, v4, v5, "%s received remote video client event: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  if (sub_25853376C())
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    sub_25850BB54(v1, v2);
LABEL_9:

    v11 = *(v0 + 8);

    return v11();
  }

  if (v2 != 2 || v1)
  {
    sub_25850BB54(v1, v2);
  }

  else
  {
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    sub_2585337EC();
    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 120);
  v17 = *(v0 + 64);
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  v18[1] = sub_25850B090;
  v19 = *(v0 + 96);

  return MEMORY[0x2822005A8](v0 + 16, v17, v16, v19, v0 + 48);
}

uint64_t sub_25850B51C()
{
  v14 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[6];
  v0[20] = v1;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFF0);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_25845E000, v4, v5, "%s remote video client failed with error: %@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_25850B784;

  return sub_258519A34(v1);
}

uint64_t sub_25850B784()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25850B8A4, v3, v2);
}

uint64_t sub_25850B8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25850B91C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25850BA00(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_25850AE14(a1, v6, v7, v1 + v5, v8);
}

id sub_25850BB2C(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_25850BB40(result, a2);
  }

  return result;
}

id sub_25850BB40(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_25850BB54(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_25850BB68(a1, a2);
  }
}

void sub_25850BB68(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_25850BB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25850BBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930788, &unk_25853EBA0);
  result = sub_258533CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_258533EDC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25850BE50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931880, &qword_25853EBF0);
  v36 = v4;
  result = sub_258533CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v20 = *(v5 + 56) + 40 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      if ((v36 & 1) == 0)
      {
        sub_2584A967C(v21, v22, v23, v24, v25);
      }

      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25850C144(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931888, &qword_25853EBF8);
  v31 = v4;
  result = sub_258533CCC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(v5 + 56) + 16 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      if ((v31 & 1) == 0)
      {
        sub_2584742A4(v21, v22);
      }

      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      ++*(v7 + 16);
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25850C3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
  v33 = v4;
  result = sub_258533CCC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2584F6C74(v24, v34);
      }

      else
      {
        sub_258472C68(v24, v34);
      }

      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2584F6C74(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25850C6A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_258533CCC();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(*(v9 + 56) + 8 * (v20 | (v12 << 6)));
      if ((v8 & 1) == 0)
      {
      }

      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v18 + 8 * v26);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 56) + 8 * v19) = v23;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v8 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_33;
    }

    v31 = 1 << *(v9 + 32);
    v7 = v6;
    if (v31 >= 64)
    {
      bzero((v9 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v31;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
  return result;
}

uint64_t sub_25850C918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
  result = sub_258533CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2584F6C74((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2584BC778(v23, &v36);
        sub_258472C68(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_258533B0C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2584F6C74(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25850CBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
  v34 = v4;
  result = sub_258533CCC();
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

      sub_258533EEC();
      sub_2585334AC();
      result = sub_258533F2C();
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

unint64_t sub_25850CE78(__int128 *a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850BE50(v12, a2 & 1);
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850DBF0();
      result = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    v19 = *(v17 + 56) + 40 * result;
    v20 = *a1;
    v21 = a1[1];
    *(v19 + 32) = *(a1 + 32);
    *v19 = v20;
    *(v19 + 16) = v21;
    v22 = *(v17 + 16);
    v11 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v11)
    {
      *(v17 + 16) = v23;
      return result;
    }

    goto LABEL_15;
  }

  v18 = *(v17 + 56) + 40 * result;

  return sub_25850FCE8(a1, v18);
}

unint64_t sub_25850CFC4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2584BC50C();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25850C144(v14, a3 & 1);
      result = sub_2584BC50C();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25850DD60();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (result >> 6) + 64) |= 1 << result;
    v23 = *(v19 + 56) + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a2 & 1;
    v24 = *(v19 + 16);
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      *(v19 + 16) = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = *(v19 + 56) + 16 * result;
  v21 = *v20;
  v22 = *(v20 + 8);
  *v20 = a1;
  *(v20 + 8) = a2 & 1;

  return sub_2584A9614(v21, v22);
}