void sub_2520EDEDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v61 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v61);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] setup multichannel mixer", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer);
  if (!v10)
  {
    v39 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v40 = sub_252141B6C();
    [v39 initWithDomain:v40 code:-13 userInfo:0];

    swift_willThrow();
    return;
  }

  v11 = v10;
  v12 = [v11 inputFormatForBus_];
  v13 = [v12 channelCount];

  if (v13 != 1 || (v14 = [v11 outputFormatForBus_], v15 = objc_msgSend(v14, sel_channelCount), v14, v15 != 2))
  {
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_252141B6C();
    [v37 initWithDomain:v38 code:-13 userInfo:0];

    swift_willThrow();
    return;
  }

  v59 = *(*(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sequence) + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers);

  v16 = [v11 inputFormatForBus_];
  v17 = [v16 channelCount];
  v56 = [v11 outputFormatForBus_];
  v18 = [v56 channelCount];
  v19 = v17 * v18;
  if ((v19 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v60 = v18;
  v20 = v18;
  v21 = v19;
  v22 = sub_25214196C();
  v23 = sub_252141FBC();
  v55 = v16;
  v57 = v19;
  if (os_log_type_enabled(v22, v23))
  {
    v19 = v17;
    v24 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v24 = 136446722;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, &v61);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v19;
    LODWORD(v19) = v57;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v20;
    _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] mixer dimension %ld x %ld", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x253099FD0](v58, -1, -1);
    MEMORY[0x253099FD0](v24, -1, -1);
  }

  if (v19)
  {
    v28 = sub_252141D3C();
    *(v28 + 16) = v21;
    bzero((v28 + 32), 4 * v21);
    if (!(v59 >> 62))
    {
      goto LABEL_11;
    }

LABEL_34:
    v29 = sub_25214232C();
    if (v29 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  v28 = MEMORY[0x277D84F90];
  if (v59 >> 62)
  {
    goto LABEL_34;
  }

LABEL_11:
  v29 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= 1)
  {
LABEL_12:
    v54 = v11;
    if (!v60)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v30 = 0;
    v31 = v29;
    while (1)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x2530993D0](v30, v59);
      }

      else
      {
        if (v30 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v32 = *(v59 + 32 + 8 * v30);
      }

      v33 = v32;
      v34 = [v32 integerValue];

      if (v34 < v21)
      {
        break;
      }

LABEL_14:
      if (++v30 == v31)
      {

        v11 = v54;
        LODWORD(v19) = v57;
        goto LABEL_38;
      }
    }

    while (1)
    {
      v35 = __OFADD__(v34, v20);
      if (v34 < 0)
      {
        break;
      }

      if (v34 >= *(v28 + 16))
      {
        goto LABEL_46;
      }

      *(v28 + 32 + 4 * v34) = 1065353216;
      v36 = v34 + v20 >= v21 || v35;
      v34 += v20;
      if (v36 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_35:

  if (v19)
  {
    if (*(v28 + 16) < v21)
    {
LABEL_51:
      __break(1u);
      return;
    }

    memset_pattern16((v28 + 32), &unk_252144ED0, 4 * v21);
LABEL_38:
    v41 = [v11 audioUnit];
    if (v19 >> 30)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v41 = [v11 audioUnit];
  }

  v42 = AudioUnitSetProperty(v41, 0xBBEu, 1u, 0, (v28 + 32), 4 * v19);
  if (v42 == sub_25214199C())
  {
  }

  else
  {
    v43 = sub_25214196C();
    v44 = sub_252141FAC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = v42;
      _os_log_impl(&dword_25207E000, v43, v44, "AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %d", v45, 8u);
      MEMORY[0x253099FD0](v45, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE168, &unk_252144C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252143AC0;
    *(inited + 32) = sub_252141B9C();
    *(inited + 40) = v47;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_25214222C();
    MEMORY[0x253098DA0](0xD000000000000043, 0x800000025214AC40);
    v63 = v42;
    v48 = sub_25214244C();
    MEMORY[0x253098DA0](v48);

    v49 = v61;
    v50 = v62;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v49;
    *(inited + 56) = v50;
    sub_25209D048(inited);
    swift_setDeallocating();
    sub_2520A2584(inited + 32, &qword_27F4CDAE8, &qword_252143C90);
    v51 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v52 = sub_252141B6C();
    v53 = sub_252141B0C();
    [v51 initWithDomain:v52 code:-7 userInfo:v53];

    swift_willThrow();
  }
}

void sub_2520EE73C(uint64_t a1)
{
  if (!qword_27F4CE2B8)
  {
    sub_2521417FC();
    v1 = sub_25214212C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4CE2B8);
    }
  }
}

unint64_t sub_2520EE7B8()
{
  result = qword_27F4CE2C0;
  if (!qword_27F4CE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE2C0);
  }

  return result;
}

unint64_t sub_2520EE810()
{
  result = qword_27F4CE2C8;
  if (!qword_27F4CE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE2C8);
  }

  return result;
}

unint64_t sub_2520EE868()
{
  result = qword_27F4CE2D0;
  if (!qword_27F4CE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE2D0);
  }

  return result;
}

unint64_t sub_2520EE8C0()
{
  result = qword_27F4CE2D8;
  if (!qword_27F4CE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE2D8);
  }

  return result;
}

unint64_t sub_2520EE918()
{
  result = qword_27F4CE2E0;
  if (!qword_27F4CE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE2E0);
  }

  return result;
}

uint64_t sub_2520EE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = v9(a2, a3, a4, a5);

  return v10;
}

id sub_2520EE9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2521417DC();
  v6 = sub_252141B0C();

  v15[0] = 0;
  v7 = [v3 initForWriting:v5 settings:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_2521417FC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_25214178C();

    swift_willThrow();
    v13 = sub_2521417FC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_2520EEB68(uint64_t a1)
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

uint64_t sub_2520EEBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE2E8, &unk_252145170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520EEC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE2E8, &unk_252145170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520EEC80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520EECB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2520EED18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520EED50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520EED88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2520EEDE8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2520EEE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || a1 >= a4)
  {
    sub_25214222C();

    v11 = sub_25214244C();
    MEMORY[0x253098DA0](v11);

    MEMORY[0x253098DA0](0x6F632078616D202CLL, 0xEF203A736E6D756CLL);
    v12 = sub_25214244C();
    MEMORY[0x253098DA0](v12);

    v10 = 0xD00000000000001CLL;
    sub_2520A2090();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    v13[1] = 0x800000025214AD80;
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252143AC0;
    *(inited + 32) = a1;
    sub_25211100C(inited, a2, a3, a4);
    v10 = v9;
    swift_setDeallocating();
  }

  return v10;
}

void sub_2520EEFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (a2)
  {
    v6 = 0;
    v7 = *(v3 + 8);
    v8 = *(a1 + 16);
    v21 = a1 + 32;
    v22 = v7 + a2;
    v9 = v7 ^ 0x7FFFFFFFFFFFFFFFLL;
    v10 = -v7;
    while (1)
    {
      v11 = v6 * a3;
      if ((v6 * a3) >> 64 != (v6 * a3) >> 63)
      {
        break;
      }

      v12 = v11 + a3;
      if (__OFADD__(v11, a3))
      {
        goto LABEL_26;
      }

      if (v12 < v11)
      {
        goto LABEL_27;
      }

      if (v11 < 0)
      {
        goto LABEL_28;
      }

      if (v8 < v12)
      {
        goto LABEL_29;
      }

      if (v8 == a3)
      {
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
        if (v12 != v11)
        {
          v15 = 8 * a3;
          if (a3 < 1)
          {
            v17 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v20 = swift_allocObject();
            v16 = _swift_stdlib_malloc_size(v20);
            v17 = v20;
            v15 = 8 * a3;
            v18 = v16 - 32;
            if (v16 < 32)
            {
              v18 = v16 - 25;
            }

            v20[2] = a3;
            v20[3] = 2 * (v18 >> 3);
          }

          v19 = v17;
          memcpy(v17 + 4, (v21 + 8 * v11), v15);
          v13 = v19;
        }
      }

      v14 = *(v13 + 16);
      if (v10 == v6)
      {
        *(v3 + 16) = v14;
      }

      else if (v14 != *(v3 + 16))
      {
        goto LABEL_31;
      }

      sub_2520806CC(v13);
      if (v9 == v6)
      {
        goto LABEL_30;
      }

      if (a2 == ++v6)
      {
        *(v3 + 8) = v22;
        return;
      }
    }

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
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }
}

char *sub_2520EF19C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a1;
  if (a1 >= a4)
  {
    sub_25214222C();

    v35 = sub_25214244C();
    MEMORY[0x253098DA0](v35);

    MEMORY[0x253098DA0](0x6F632078616D202CLL, 0xEF203A736E6D756CLL);
    v36 = sub_25214244C();
    MEMORY[0x253098DA0](v36);

    sub_2520A2090();
    swift_allocError();
    *v37 = 0xD00000000000001CLL;
    v37[1] = 0x800000025214AD80;
    return swift_willThrow();
  }

  v6 = a3;
  if (a3 < 0)
  {
    goto LABEL_52;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v39 = a2 + 4;
    v42 = a2[2];

    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    __src = v4;
    v40 = v7;
    v41 = v6;
    while (1)
    {
      v12 = v9 * v4;
      if ((v9 * v4) >> 64 != (v9 * v4) >> 63)
      {
        break;
      }

      v13 = v12 + v4;
      if (__OFADD__(v12, v4))
      {
        goto LABEL_42;
      }

      if (v13 < v12)
      {
        goto LABEL_43;
      }

      if (v12 < 0)
      {
        goto LABEL_44;
      }

      if (v42 < v13)
      {
        goto LABEL_45;
      }

      if (v42 == v4)
      {

        v14 = v7;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (v4 <= 0)
          {
            v33 = 8 * v4;
            v14 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v14 = swift_allocObject();
            v32 = _swift_stdlib_malloc_size(v14);
            v33 = 8 * v4;
            v34 = v32 - 32;
            if (v32 < 32)
            {
              v34 = v32 - 25;
            }

            v14[2] = v4;
            v14[3] = 2 * (v34 >> 3);
          }

          memcpy(v14 + 4, &v39[v12], v33);
        }
      }

      v15 = v14[2];
      if (v15 <= v5)
      {
        goto LABEL_46;
      }

      v16 = v14 + 4;
      if (*&v14[v5 + 4] == 1.0)
      {
        if (v8 && __src != v15)
        {
          goto LABEL_47;
        }

        v17 = v14;
        v18 = v8;
        v19 = v5;
        v20 = v4;
        v21 = *(v10 + 2);
        v22 = v21 + v15;
        if (__OFADD__(v21, v15))
        {
          goto LABEL_48;
        }

        __srca = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v10;
        if (!isUniquelyReferenced_nonNull_native || (v25 = *(v10 + 3) >> 1, v25 < v22))
        {
          if (v21 <= v22)
          {
            v26 = v21 + v15;
          }

          else
          {
            v26 = v21;
          }

          v24 = sub_252099194(isUniquelyReferenced_nonNull_native, v26, 1, v10);
          v25 = *(v24 + 3) >> 1;
        }

        v4 = v20;
        v5 = v19;
        v6 = v41;
        if (!v17[2])
        {
          goto LABEL_54;
        }

        v27 = v18;
        v28 = *(v24 + 2);
        v7 = v40;
        if (v25 - v28 < v15)
        {
          goto LABEL_49;
        }

        v11 = v24;
        memcpy(&v24[8 * v28 + 32], __srca, 8 * v15);

        v29 = *(v11 + 2);
        v30 = __OFADD__(v29, v15);
        v31 = v29 + v15;
        if (v30)
        {
          goto LABEL_50;
        }

        *(v11 + 2) = v31;

        v30 = __OFADD__(v27, 1);
        v8 = v27 + 1;
        if (v30)
        {
          goto LABEL_51;
        }

        __src = v15;
      }

      else
      {
        v11 = v10;
      }

      ++v9;
      v10 = v11;
      if (v6 == v9)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

char *sub_2520EF5C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a1;
  if (a1 >= a4)
  {
    sub_25214222C();

    v31 = sub_25214244C();
    MEMORY[0x253098DA0](v31);

    MEMORY[0x253098DA0](0x6F632078616D202CLL, 0xEF203A736E6D756CLL);
    v32 = sub_25214244C();
    MEMORY[0x253098DA0](v32);

    sub_2520A2090();
    swift_allocError();
    *v33 = 0xD00000000000001CLL;
    v33[1] = 0x800000025214AD80;
    return swift_willThrow();
  }

  v6 = a3;
  if (a3 < 0)
  {
    goto LABEL_52;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v35 = a2 + 4;
    v37 = a2[2];

    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    __src = v4;
    v36 = v6;
    while (1)
    {
      v12 = v9 * v4;
      if ((v9 * v4) >> 64 != (v9 * v4) >> 63)
      {
        break;
      }

      v13 = v12 + v4;
      if (__OFADD__(v12, v4))
      {
        goto LABEL_42;
      }

      if (v13 < v12)
      {
        goto LABEL_43;
      }

      if (v12 < 0)
      {
        goto LABEL_44;
      }

      if (v37 < v13)
      {
        goto LABEL_45;
      }

      v39 = v9;
      if (v37 == v4)
      {

        v14 = v7;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (v4 > 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v14 = swift_allocObject();
            v29 = _swift_stdlib_malloc_size(v14);
            v30 = v29 - 32;
            if (v29 < 32)
            {
              v30 = v29 - 25;
            }

            v14[2] = v4;
            v14[3] = 2 * (v30 >> 3);
          }

          memcpy(v14 + 4, &v35[v12], 8 * v4);
        }
      }

      v15 = v14[2];
      if (v15 <= v5)
      {
        goto LABEL_46;
      }

      if (*&v14[v5 + 4] == 0.0)
      {
        if (v8 && __src != v15)
        {
          goto LABEL_47;
        }

        v16 = v7;
        v17 = v8;
        v18 = v5;
        v19 = v4;
        v20 = *(v10 + 2);
        v21 = v20 + v15;
        if (__OFADD__(v20, v15))
        {
          goto LABEL_48;
        }

        v11 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v23 = *(v10 + 3) >> 1, v23 < v21))
        {
          if (v20 <= v21)
          {
            v24 = v20 + v15;
          }

          else
          {
            v24 = v20;
          }

          v11 = sub_252099194(isUniquelyReferenced_nonNull_native, v24, 1, v10);
          v23 = *(v11 + 3) >> 1;
        }

        v4 = v19;
        v5 = v18;
        if (!v14[2])
        {
          goto LABEL_54;
        }

        v7 = v16;
        v25 = *(v11 + 2);
        v6 = v36;
        if (v23 - v25 < v15)
        {
          goto LABEL_49;
        }

        memcpy(&v11[8 * v25 + 32], v14 + 4, 8 * v15);

        v26 = *(v11 + 2);
        v27 = __OFADD__(v26, v15);
        v28 = v26 + v15;
        if (v27)
        {
          goto LABEL_50;
        }

        *(v11 + 2) = v28;

        v8 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_51;
        }

        __src = v15;
      }

      else
      {
        v11 = v10;
      }

      v9 = v39 + 1;
      v10 = v11;
      if (v6 == v39 + 1)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

char *sub_2520EF9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  if (a1 >= a4)
  {
    sub_25214222C();

    v33 = sub_25214244C();
    MEMORY[0x253098DA0](v33);

    MEMORY[0x253098DA0](0x6F632078616D202CLL, 0xEF203A736E6D756CLL);
    v34 = sub_25214244C();
    MEMORY[0x253098DA0](v34);

    sub_2520A2090();
    swift_allocError();
    *v35 = 0xD00000000000001CLL;
    v35[1] = 0x800000025214AD80;
    return swift_willThrow();
  }

  v6 = a3;
  if (a3 < 0)
  {
    goto LABEL_54;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v37 = a2 + 4;
    v8 = a2[2];

    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v42 = v5;
    v38 = v8;
    while (1)
    {
      v13 = v10 * v5;
      if ((v10 * v5) >> 64 != (v10 * v5) >> 63)
      {
        break;
      }

      v14 = v13 + v5;
      if (__OFADD__(v13, v5))
      {
        goto LABEL_43;
      }

      if (v14 < v13)
      {
        goto LABEL_44;
      }

      if (v13 < 0)
      {
        goto LABEL_45;
      }

      if (v8 < v14)
      {
        goto LABEL_46;
      }

      if (v8 == v5)
      {

        v15 = a2;
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
        if (v14 != v13)
        {
          v44 = v10;
          v30 = 8 * v5;
          if (v5 > 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v15 = swift_allocObject();
            v31 = _swift_stdlib_malloc_size(v15);
            v32 = v31 - 32;
            v30 = 8 * v5;
            if (v31 < 32)
            {
              v32 = v31 - 25;
            }

            v15[2] = v5;
            v15[3] = 2 * (v32 >> 3);
          }

          memcpy(v15 + 4, &v37[v13], v30);
          v10 = v44;
        }
      }

      v16 = v15[2];
      if (v16 <= a1)
      {
        goto LABEL_47;
      }

      if (!*(*a5 + 16))
      {
        goto LABEL_48;
      }

      v17 = v15;
      v18 = v15 + 4;
      if (*&v15[a1 + 4] == *(*a5 + 32))
      {
        if (v9 && v42 != v16)
        {
          goto LABEL_49;
        }

        v19 = v6;
        v20 = v5;
        v21 = *(v11 + 2);
        v22 = v21 + v16;
        if (__OFADD__(v21, v16))
        {
          goto LABEL_50;
        }

        __src = v18;
        v43 = v17;
        v12 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v24 = *(v11 + 3) >> 1, v24 < v22))
        {
          if (v21 <= v22)
          {
            v25 = v21 + v16;
          }

          else
          {
            v25 = v21;
          }

          v12 = sub_252099194(isUniquelyReferenced_nonNull_native, v25, 1, v11);
          v24 = *(v12 + 3) >> 1;
        }

        v5 = v20;
        if (!v43[2])
        {
          goto LABEL_56;
        }

        v26 = *(v12 + 2);
        if (v24 - v26 < v16)
        {
          goto LABEL_51;
        }

        v6 = v19;
        memcpy(&v12[8 * v26 + 32], __src, 8 * v16);

        v27 = *(v12 + 2);
        v28 = __OFADD__(v27, v16);
        v29 = v27 + v16;
        if (v28)
        {
          goto LABEL_52;
        }

        *(v12 + 2) = v29;

        v28 = __OFADD__(v9++, 1);
        if (v28)
        {
          goto LABEL_53;
        }

        v42 = v16;
        v8 = v38;
      }

      else
      {
        v12 = v11;
      }

      ++v10;
      v11 = v12;
      if (v6 == v10)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}

char *sub_2520EFDE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a1;
  if (a1 >= a4)
  {
    sub_25214222C();

    v30 = sub_25214244C();
    v11 = v31;
    MEMORY[0x253098DA0](v30);

    MEMORY[0x253098DA0](0x6F632078616D202CLL, 0xEF203A736E6D756CLL);
    v32 = sub_25214244C();
    MEMORY[0x253098DA0](v32);

    sub_2520A2090();
    swift_allocError();
    *v33 = 0xD00000000000001CLL;
    v33[1] = 0x800000025214AD80;
    swift_willThrow();
    return v11;
  }

  if (a3 < 0)
  {
    goto LABEL_53;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 < 0)
  {
    goto LABEL_54;
  }

  v6 = a2;
  v35 = a2 + 4;
  v7 = a2[2];

  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v36 = v6;
  v37 = v4;
  v39 = v7;
  while (1)
  {
    v12 = v10 * v4;
    if ((v10 * v4) >> 64 != (v10 * v4) >> 63)
    {
      break;
    }

    v13 = v12 + v4;
    if (__OFADD__(v12, v4))
    {
      goto LABEL_43;
    }

    if (v13 < v12)
    {
      goto LABEL_44;
    }

    if (v12 < 0)
    {
      goto LABEL_45;
    }

    if (v7 < v13)
    {
      goto LABEL_46;
    }

    if (v7 == v4)
    {

      v14 = v6;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      if (v13 != v12)
      {
        if (v4 <= 0)
        {
          v28 = 8 * v4;
          v14 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v14 = swift_allocObject();
          v27 = _swift_stdlib_malloc_size(v14);
          v28 = 8 * v4;
          v29 = v27 - 32;
          if (v27 < 32)
          {
            v29 = v27 - 25;
          }

          v14[2] = v4;
          v14[3] = 2 * (v29 >> 3);
        }

        memcpy(v14 + 4, &v35[v12], v28);
      }
    }

    v15 = v14[2];
    if (v15 <= v5)
    {
      goto LABEL_47;
    }

    if (*&v14[v5 + 4] == 0.0)
    {
    }

    else
    {
      if (v9 && v37 != v15)
      {
        goto LABEL_48;
      }

      v38 = v9;
      v16 = v5;
      v17 = v4;
      v18 = *(v11 + 2);
      v19 = v18 + v15;
      if (__OFADD__(v18, v15))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v21 = *(v11 + 3) >> 1, v21 < v19))
      {
        if (v18 <= v19)
        {
          v22 = v18 + v15;
        }

        else
        {
          v22 = v18;
        }

        v11 = sub_252099194(isUniquelyReferenced_nonNull_native, v22, 1, v11);
        v21 = *(v11 + 3) >> 1;
      }

      v4 = v17;
      v5 = v16;
      v6 = v36;
      if (!v14[2])
      {
        goto LABEL_55;
      }

      v23 = *(v11 + 2);
      if (v21 - v23 < v15)
      {
        goto LABEL_50;
      }

      memcpy(&v11[8 * v23 + 32], v14 + 4, 8 * v15);

      v24 = *(v11 + 2);
      v25 = __OFADD__(v24, v15);
      v26 = v24 + v15;
      if (v25)
      {
        goto LABEL_51;
      }

      *(v11 + 2) = v26;

      v9 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_52;
      }

      v37 = v15;
    }

    ++v10;
    v7 = v39;
    if (a3 == v10)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  __break(1u);
  return result;
}

void sub_2520F01BC(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v33 = *(a1 + 16);
  if (v33)
  {
    v7 = 0;
    v32 = a1 + 32;
    v31 = a2 + 4;
    v8 = MEMORY[0x277D84F90];
    v9 = a4;
    while (1)
    {
      v10 = *(v32 + 8 * v7);
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_43:
        __break(1u);
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
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v10 >= a3)
      {
        break;
      }

      v11 = v10 * a4;
      if ((v10 * a4) >> 64 != (v10 * a4) >> 63)
      {
        goto LABEL_43;
      }

      v12 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_44;
      }

      if (v12 < v11)
      {
        goto LABEL_45;
      }

      if (v11 < 0)
      {
        goto LABEL_46;
      }

      v13 = a2[2];
      if (v13 < v11 || v13 < v12)
      {
        goto LABEL_47;
      }

      if (v13 == a4)
      {

        v15 = a2;
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
        if (v12 != v11)
        {
          if (a4 < 1)
          {
            v26 = 8 * a4;
            v15 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v15 = swift_allocObject();
            v25 = _swift_stdlib_malloc_size(v15);
            v26 = 8 * a4;
            v27 = v25 - 32;
            if (v25 < 32)
            {
              v27 = v25 - 25;
            }

            v15[2] = a4;
            v15[3] = 2 * (v27 >> 3);
          }

          memcpy(v15 + 4, &v31[v11], v26);
        }
      }

      v16 = v15[2];
      if (v7 && v16 != v9)
      {
        goto LABEL_50;
      }

      v17 = *(v8 + 2);
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > *(v8 + 3) >> 1)
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        v8 = sub_252099194(isUniquelyReferenced_nonNull_native, v20, 1, v8);
      }

      v9 = v16;
      if (v15[2])
      {
        v21 = *(v8 + 2);
        if ((*(v8 + 3) >> 1) - v21 < v16)
        {
          goto LABEL_51;
        }

        memcpy(&v8[8 * v21 + 32], v15 + 4, 8 * v16);

        if (v16)
        {
          v22 = *(v8 + 2);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_52;
          }

          *(v8 + 2) = v24;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_49;
        }
      }

      if (v33 == ++v7)
      {
        return;
      }
    }

    sub_25214222C();

    v28 = sub_25214244C();
    MEMORY[0x253098DA0](v28);

    MEMORY[0x253098DA0](0x6F722078616D202CLL, 0xEC000000203A7377);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v29 = sub_25214244C();
      MEMORY[0x253098DA0](v29);

      sub_2520A2090();
      swift_allocError();
      *v30 = 0xD000000000000019;
      v30[1] = 0x800000025214ADA0;
      swift_willThrow();
      return;
    }

LABEL_53:
    __break(1u);
  }
}

uint64_t sub_2520F0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || a1 >= a3)
  {
    sub_25214222C();

    v8 = sub_25214244C();
    MEMORY[0x253098DA0](v8);

    MEMORY[0x253098DA0](0x6F722078616D202CLL, 0xEC000000203A7377);
    v9 = sub_25214244C();
    MEMORY[0x253098DA0](v9);

    sub_2520A2090();
    v4 = swift_allocError();
    *v10 = 0xD000000000000019;
    v10[1] = 0x800000025214ADA0;
    swift_willThrow();
    return v4;
  }

  v5 = a1 * a4;
  v6 = (a1 * a4) >> 64;
  if (v6 != (a1 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5 + a4;
  if (__OFADD__(v5, a4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = a2;
  v7 = *(a2 + 16);
  if (v7 < v5 || v7 < v6)
  {
    goto LABEL_17;
  }

  if (v7 != a4)
  {
LABEL_18:
    sub_252098E44(v4, v4 + 32, v5, (2 * v6) | 1);
    return v12;
  }

  return v4;
}

void sub_2520F0704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 > a3)
  {
    goto LABEL_33;
  }

  if (!v4)
  {

    return;
  }

  v8 = 0;
  if (a3)
  {
    v9 = 0;
    v10 = (a1 + 32);
    v11 = a4;
    while (2)
    {
      v12 = v9++;
      v13 = v4;
      v14 = v10;
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == v12)
        {
          goto LABEL_5;
        }
      }

      v16 = v12 * a4;
      if ((v12 * a4) >> 64 == (v12 * a4) >> 63)
      {
        v17 = v16 + a4;
        if (!__OFADD__(v16, a4))
        {
          if (v17 >= v16)
          {
            if ((v16 & 0x8000000000000000) == 0)
            {
              v18 = *(a2 + 16);
              if (v18 >= v16 && v18 >= v17)
              {
                if (v18 == a4)
                {

                  v20 = *(v19 + 16);
                  if (v8)
                  {
                    goto LABEL_18;
                  }
                }

                else
                {
                  sub_252098E44(a2, a2 + 32, v16, (2 * v17) | 1);
                  v20 = *(v19 + 16);
                  if (v8)
                  {
LABEL_18:
                    if (v20 != v11)
                    {
LABEL_32:
                      __break(1u);
LABEL_33:
                      __break(1u);
                      return;
                    }
                  }
                }

                sub_2520806CC(v19);
                if (!__OFADD__(v8++, 1))
                {
                  v11 = v20;
LABEL_5:
                  if (v9 == a3)
                  {
                    return;
                  }

                  continue;
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
      }

      else
      {
        __break(1u);
      }

      break;
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_2520F0894(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 > a3)
  {
LABEL_54:
    __break(1u);
    return;
  }

  if (a3)
  {
    v9 = sub_252099E80(a3, 0);
    if (sub_2520F0EF4(v32, (v9 + 4), a3, 0, a3) == a3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_6:
  v10 = sub_2520AD354(a1, v9);

  if (v10)
  {

    return;
  }

  if (v4)
  {
    v11 = 0;
    v31 = a1 + 32;
    v12 = a2[2];
    v13 = MEMORY[0x277D84F90];
    v14 = a4;
    while (1)
    {
      v15 = *(v31 + 8 * v11);
      v16 = v15 * a4;
      if ((v15 * a4) >> 64 != (v15 * a4) >> 63)
      {
        break;
      }

      v17 = v16 + a4;
      if (__OFADD__(v16, a4))
      {
        goto LABEL_44;
      }

      if (v17 < v16)
      {
        goto LABEL_45;
      }

      if (v12 < v16)
      {
        goto LABEL_46;
      }

      if (v16 < 0)
      {
        goto LABEL_47;
      }

      if (v12 < v17)
      {
        goto LABEL_48;
      }

      if (v12 == a4)
      {

        v18 = a2;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
        if (v17 != v16)
        {
          if (a4 < 1)
          {
            v29 = 8 * a4;
            v18 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v18 = swift_allocObject();
            v28 = _swift_stdlib_malloc_size(v18);
            v29 = 8 * a4;
            v30 = v28 - 32;
            if (v28 < 32)
            {
              v30 = v28 - 25;
            }

            v18[2] = a4;
            v18[3] = 2 * (v30 >> 3);
          }

          memcpy(v18 + 4, &a2[v16 + 4], v29);
        }
      }

      v19 = v18[2];
      if (v11 && v19 != v14)
      {
        goto LABEL_51;
      }

      v20 = *(v13 + 2);
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 > *(v13 + 3) >> 1)
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v13 = sub_252099194(isUniquelyReferenced_nonNull_native, v23, 1, v13);
      }

      v14 = v19;
      if (v18[2])
      {
        v24 = *(v13 + 2);
        if ((*(v13 + 3) >> 1) - v24 < v19)
        {
          goto LABEL_52;
        }

        memcpy(&v13[8 * v24 + 32], v18 + 4, 8 * v19);

        if (v19)
        {
          v25 = *(v13 + 2);
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_53;
          }

          *(v13 + 2) = v27;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_50;
        }
      }

      if (v4 == ++v11)
      {
        return;
      }
    }

    __break(1u);
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }
}

char *sub_2520F0B6C(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    goto LABEL_7;
  }

  v5 = a2 * a2;
  if ((a2 * a2) >> 64 != (a2 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = a1;
  if (!v5 || (v6 = sub_252141D3C(), *(v6 + 16) = v5, bzero((v6 + 32), 4 * v5), v7 = sub_252141D3C(), *(v7 + 16) = v5, bzero((v7 + 32), 8 * v5), !(v5 >> 31)))
  {
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        if (*(v3 + 2) == v5)
        {

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_12:
            dgetrf_NEWLAPACK();

            dgetri_NEWLAPACK();

            swift_bridgeObjectRelease_n();
            return v3;
          }

LABEL_19:
          v3 = sub_2520A598C(v3);
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __break(1u);
LABEL_7:
  sub_2520A2090();
  swift_allocError();
  *v8 = 0xD00000000000002BLL;
  v8[1] = 0x800000025214ADC0;
  swift_willThrow();
  return v3;
}

uint64_t sub_2520F0D68(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  result = sub_252141D3C();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 <= 3)
  {
    v8 = 0;
    v9 = a4;
LABEL_10:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a4;
  v10 = vdupq_lane_s64(*&a4, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v4 != v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (*(v6 + 16) != v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 16) != v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  MEMORY[0x28223BE20](result);
  v14 = sub_2520AABEC(v4, sub_2520F11AC);

  if (*(v14 + 16) == v4)
  {
    return v14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t *sub_2520F0EF4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2520F0F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v31 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = MEMORY[0x277D84F90];
    v30 = MEMORY[0x277D84F90];
    sub_25209B294(0, v7, 0);
    v10 = v9;
    v11 = (a1 + 32);
    v12 = *(a4 + 16);
    v13 = v30;
    do
    {
      v14 = *v11;
      if (v12)
      {
        v15 = sub_252141D3C();
        *(v15 + 16) = v12;
      }

      else
      {
        v15 = v10;
      }

      __B = v14;
      vDSP_vsaddD((a4 + 32), 1, &__B, (v15 + 32), 1, v12);
      *(v15 + 16) = v12;
      v30 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_25209B294((v16 > 1), v17 + 1, 1);
        v13 = v30;
      }

      *(v13 + 16) = v18;
      *(v13 + 8 * v17 + 32) = v15;
      ++v11;
      --v7;
    }

    while (v7);
    v5 = a3;
    v6 = a2;
LABEL_11:
    v20 = 0;
    v19 = MEMORY[0x277D84F90];
    while (v20 < *(v13 + 16))
    {
      v21 = v20 + 1;
      v30 = v19;

      sub_2520807B8(v22, v23);
      v19 = v30;
      v20 = v21;
      if (v18 == v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v13 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_14:

  v24 = *(a4 + 16);
  v25 = v24 * v5;
  if ((v24 * v5) >> 64 != (v24 * v5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v6 * v25) >> 64 != (v6 * v25) >> 63)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (*(v19 + 16) != v6 * v25)
  {
    goto LABEL_21;
  }

  return v19;
}

void sub_2520F11AC(uint64_t a1, void *a2)
{
  v5 = **(v2 + 16);
  v6 = **(v2 + 24);
  sub_2520F1CC0(v5, v6, a1);
  *a2 = *(v6 + 16);
}

uint64_t sub_2520F11FC(uint64_t result, uint64_t a2, double a3)
{
  for (i = 0; ; ++i)
  {
    if (*(result + 16) == i)
    {
      return 1;
    }

    v4 = *(a2 + 16);
    if (i == v4)
    {
      return 1;
    }

    if (i >= v4)
    {
      break;
    }

    v5 = vabdd_f64(*(result + 32 + 8 * i), *(a2 + 32 + 8 * i));
    if (v5 > a3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_2520F1250(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AB0;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_252143AB0;
  *(v15 + 32) = 0;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_46;
  }

  *(v15 + 40) = (a1 - 1);
  v16 = sub_2520AA548(inited, v15);

  if (*(v16 + 16) != a1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a2 < 1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v44 = a3;

  v17 = v16;
  v45 = a2 - 1;
  if (a2 != 1)
  {
    v22 = 0;
    v46 = (v16 + 32);
    v23 = 1;
    v24 = 8;
    v25 = 16;
    v50 = v16;
    v47 = a2;
    v48 = a1;
    do
    {
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v26 = v23 + 1;
      v27 = a1 * (v23 + 1);
      if ((a1 * (v23 + 1)) >> 64 != v27 >> 63)
      {
        goto LABEL_40;
      }

      if (v27 < 0)
      {
        goto LABEL_41;
      }

      if (v27)
      {
        v49 = sub_252141D3C();
        *(v49 + 16) = v27;
        if (a1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
        if (a1)
        {
LABEL_19:
          v28 = (v50 + 32);
          v29 = 8 * v23;
          v30 = v49 + 40;
          v31 = v46;
          v32 = v48;
          do
          {
            memcpy((v30 - 8), v28, v29);
            v33 = *v31++;
            *(v30 + v22) = v33;
            v28 += v24;
            v30 += v25;
            --v32;
          }

          while (v32);
        }
      }

      v24 += 8;
      v22 += 8;
      a1 = v48;
      *(v49 + 16) = v27;
      v17 = v49;
      v25 += 8;
      v23 = v26;
      v50 = v49;
      a2 = v47;
    }

    while (v26 != v47);
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_252143AB0;
  *(v18 + 32) = a6;
  *(v18 + 40) = a7;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_252143AB0;
  *(v19 + 32) = 0;
  *(v19 + 40) = v45;
  v20 = sub_2520AA548(v18, v19);

  if (*(v20 + 16) != a2)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v21 = a1 - 1;
  if (a1 < 1)
  {
LABEL_50:
    __break(1u);
    return;
  }

  if (a1 != 1)
  {

    v34 = v20;
    while (1)
    {
      v35 = *(v20 + 16);
      v36 = *(v34 + 2);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v37 <= *(v34 + 3) >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v36 <= v37)
        {
          v39 = v36 + v35;
        }

        else
        {
          v39 = v36;
        }

        v34 = sub_252099194(isUniquelyReferenced_nonNull_native, v39, 1, v34);
        if (*(v20 + 16))
        {
LABEL_33:
          v40 = *(v34 + 2);
          if ((*(v34 + 3) >> 1) - v40 < v35)
          {
            goto LABEL_44;
          }

          memcpy(&v34[8 * v40 + 32], (v20 + 32), 8 * v35);

          if (v35)
          {
            v41 = *(v34 + 2);
            v42 = __OFADD__(v41, v35);
            v43 = v41 + v35;
            if (v42)
            {
              goto LABEL_45;
            }

            *(v34 + 2) = v43;
          }

          goto LABEL_23;
        }
      }

      if (v35)
      {
        goto LABEL_43;
      }

LABEL_23:
      if (!--v21)
      {

        goto LABEL_38;
      }
    }
  }

  v34 = v20;
LABEL_38:
  *v44 = v17;
  v44[1] = a1;
  v44[2] = a2;
  v44[3] = v34;
  v44[4] = a1;
  v44[5] = a2;
}

void sub_2520F1620(float64x2_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5 || a3 != a6)
  {
    goto LABEL_72;
  }

  if (a2 < 0)
  {
LABEL_73:
    __break(1u);
  }

  else if (a2)
  {
    v8 = 0;
    v44 = a4 + 2;
    v45 = a1 + 2;
    v9 = a1[1].f64[0];
    v10 = a4[1].f64[0];
    v11 = MEMORY[0x277D84F90];
    v46 = v9;
    while (1)
    {
      v12 = v8 * a3;
      if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v13 = v12 + a3;
      if (__OFADD__(v12, a3))
      {
        goto LABEL_63;
      }

      if (v13 < v12)
      {
        goto LABEL_64;
      }

      if (v12 < 0)
      {
        goto LABEL_65;
      }

      if (*&v9 < v13)
      {
        goto LABEL_66;
      }

      if (*&v9 == a3)
      {

        v14 = a1;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (a3 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v14 = swift_allocObject();
            v40 = _swift_stdlib_malloc_size(v14);
            v41 = v40 - 32;
            if (v40 < 32)
            {
              v41 = v40 - 25;
            }

            *&v14[1].f64[0] = a3;
            *&v14[1].f64[1] = 2 * (v41 >> 3);
          }

          memcpy(&v14[2], &v45->f64[v12], 8 * a3);
        }
      }

      if (*&v10 < v13)
      {
        goto LABEL_67;
      }

      v15 = v10;
      if (*&v10 == a3)
      {
        v16 = a4;
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (a3 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
            v16 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size(v16);
            v43 = v42 - 32;
            if (v42 < 32)
            {
              v43 = v42 - 25;
            }

            *&v16[1].f64[0] = a3;
            *&v16[1].f64[1] = 2 * (v43 >> 3);
          }

          memcpy(&v16[2], &v44->f64[v12], 8 * a3);
        }
      }

      v17 = *&v14[1].f64[0];
      if (v17 != *&v16[1].f64[0])
      {
        goto LABEL_68;
      }

      if ((v17 + 0x4000000000000000) < 0)
      {
        goto LABEL_69;
      }

      v18 = 2 * v17;
      if (((2 * v17) & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      if (!v17)
      {
        v20 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }

      v19 = sub_252141D3C();
      v20 = v19;
      *(v19 + 16) = v18;
      v21 = (v19 + 32);
      v22 = &v14[2];
      if (v17 < 4)
      {
        break;
      }

      v23 = 0;
      v31 = v19 + 16 * v17 + 32;
      v33 = v21 < &v14[2].f64[v17] && v22 < v31;
      if (&v16[2] < v31 && v21 < &v16[2].f64[v17])
      {
        goto LABEL_22;
      }

      if (v33)
      {
        goto LABEL_22;
      }

      v23 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v22 += v17 & 0x7FFFFFFFFFFFFFFCLL;
      v35 = v16 + 3;
      v36 = (v19 + 64);
      v37 = v14 + 3;
      v38 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v21 += 2 * (v17 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v39 = v36 - 4;
        v49.val[0] = v37[-1];
        v50.val[0] = *v37;
        v49.val[1] = v35[-1];
        v50.val[1] = *v35;
        vst2q_f64(v39, v49);
        vst2q_f64(v36, v50);
        v35 += 2;
        v36 += 8;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v17 != v23)
      {
        goto LABEL_22;
      }

LABEL_26:
      *(v20 + 16) = v18;

      if (*(v20 + 16) != v18)
      {
        goto LABEL_71;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2520994A0(0, v11[2] + 1, 1, v11);
      }

      v29 = v11[2];
      v28 = v11[3];
      if (v29 >= v28 >> 1)
      {
        v11 = sub_2520994A0((v28 > 1), v29 + 1, 1, v11);
      }

      ++v8;
      v11[2] = v29 + 1;
      v30 = &v11[3 * v29];
      v30[4] = v20;
      v30[5] = v17;
      v30[6] = 2;
      v9 = v46;
      v10 = v15;
      if (v8 == a2)
      {
        return;
      }
    }

    v23 = 0;
LABEL_22:
    v24 = v17 - v23;
    v25 = &v16[2].f64[v23];
    do
    {
      v26 = *v22++;
      *v21 = v26;
      v27 = *v25++;
      *(v21 + 1) = v27;
      v21 += 2;
      --v24;
    }

    while (v24);
    goto LABEL_26;
  }
}

void sub_2520F1A00(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    goto LABEL_52;
  }

  v1 = 0;
  v2 = 0;
  v28 = a1 + 32;
  v3 = *(a1 + 48);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = (v28 + 24 * v1);
    v6 = v5[1];
    if (v6 < 0)
    {
      goto LABEL_51;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    if (++v1 == v27)
    {
      return;
    }
  }

  v7 = *v5;
  v8 = v5[2];
  v26 = *v5 + 32;
  v9 = *(*v5 + 16);
  v29 = v2 + v6;
  v30 = v1;
  v31 = v2 ^ 0x7FFFFFFFFFFFFFFFLL;

  v10 = 0;
  v32 = -v2;
  while (1)
  {
    v11 = v10 * v8;
    if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
    {
      break;
    }

    v12 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      goto LABEL_41;
    }

    if (v12 < v11)
    {
      goto LABEL_42;
    }

    if (v11 < 0)
    {
      goto LABEL_43;
    }

    if (v9 < v12)
    {
      goto LABEL_44;
    }

    if (v9 == v8)
    {

      v13 = v7;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (v12 != v11)
      {
        if (v8 <= 0)
        {
          v24 = 8 * v8;
          v13 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v13 = swift_allocObject();
          v23 = _swift_stdlib_malloc_size(v13);
          v24 = 8 * v8;
          v25 = v23 - 32;
          if (v23 < 32)
          {
            v25 = v23 - 25;
          }

          v13[2] = v8;
          v13[3] = 2 * (v25 >> 3);
        }

        memcpy(v13 + 4, (v26 + 8 * v11), v24);
      }
    }

    v14 = v13[2];
    if (v32 != v10 && v14 != v3)
    {
      goto LABEL_48;
    }

    v15 = *(v4 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_45;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= *(v4 + 3) >> 1)
    {
      if (v13[2])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v22 = v15 + v14;
      }

      else
      {
        v22 = v15;
      }

      v4 = sub_252099194(isUniquelyReferenced_nonNull_native, v22, 1, v4);
      if (v13[2])
      {
LABEL_20:
        v18 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v18 < v14)
        {
          goto LABEL_49;
        }

        memcpy(&v4[8 * v18 + 32], v13 + 4, 8 * v14);

        if (v14)
        {
          v19 = *(v4 + 2);
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_50;
          }

          *(v4 + 2) = v21;
        }

        goto LABEL_29;
      }
    }

    if (v14)
    {
      goto LABEL_46;
    }

LABEL_29:
    if (v31 == v10)
    {
      goto LABEL_47;
    }

    ++v10;
    v3 = v14;
    if (v6 == v10)
    {

      v3 = v14;
      v2 = v29;
      v1 = v30;
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_2520F1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 != *(a3 + 8))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 >> 31)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = *(a1 + 16);
  if (!*a3)
  {
    goto LABEL_9;
  }

  vvpow(*a3, (a2 + 32), (a1 + 32), &v4);
}

void __swiftcall HTHearingTestMetrics.init()(HearingTest::HTHearingTestMetrics *__return_ptr retstr)
{
  retstr->requirementStatusManagerMetrics.interruptionPauseCount = 0;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band7 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band9 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band3 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band5 = 0u;
  retstr->requirementStatusManagerMetrics.inteferenceFlagRC = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band1 = 0u;
  *&retstr->algMaskedCount = 0u;
  retstr->requirementStatusManagerMetrics.interruptionNoiseRC = 0u;
  *&retstr->algMaxAudFloor.lessThan10 = 0u;
  *&retstr->algMaxAudFloor.lessThan20 = 0u;
  *&retstr->algTonesDelCount = 0u;
  *&retstr->algTonesAtMaxProgress = 0u;
  *&retstr->algTonesCount = 0u;
}

void __swiftcall HTHearingTestMetricsV2.init()(HearingTest::HTHearingTestMetricsV2 *__return_ptr retstr)
{
  retstr->noiseMetadataMetrics.InstNoise = 0.0;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band9 = 0u;
  *&retstr->requirementStatusManagerMetrics.interruptionPauseCount = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band5 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band7 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band1 = 0u;
  *&retstr->requirementStatusManagerMetrics.inteferenceFlagMaskedBands.band3 = 0u;
  retstr->requirementStatusManagerMetrics.interruptionNoiseRC = 0u;
  retstr->requirementStatusManagerMetrics.inteferenceFlagRC = 0u;
  *&retstr->algMaxAudFloor.lessThan20 = 0u;
  *&retstr->algMaskedCount = 0u;
  *&retstr->algTonesAtMaxProgress = 0u;
  *&retstr->algMaxAudFloor.lessThan10 = 0u;
  *&retstr->algTonesCount = 0u;
  *&retstr->algTonesDelCount = 0u;
  v2 = sub_252141D3C();
  *(v2 + 16) = 8;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  retstr->noiseMetadataMetrics.HistStat._rawValue = v2;
  v3 = sub_252141D3C();
  *(v3 + 16) = 8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  retstr->noiseMetadataMetrics.HistInst._rawValue = v3;
}

HearingTest::HTHearingTestTone __swiftcall HTHearingTestTone.init(frequency:soundLevel:channel:toneDuration:)(Swift::Double frequency, Swift::Double soundLevel, HearingTest::HTHearingChannel channel, Swift::Double toneDuration)
{
  v5 = *channel;
  *v4 = frequency;
  *(v4 + 8) = soundLevel;
  *(v4 + 16) = v5;
  *(v4 + 24) = toneDuration;
  result.toneDuration = toneDuration;
  result.soundLevel = soundLevel;
  result.frequency = frequency;
  result.channel = channel;
  return result;
}

HearingTest::HTHearingTestSessionResultWithAverageNoise __swiftcall HTHearingTestSessionResultWithAverageNoise.init(thresholds:terminationReason:averageNoise:)(Swift::OpaquePointer thresholds, HearingTest::HTHearingTestSessionTerminationReason terminationReason, Swift::Double averageNoise)
{
  v4 = *terminationReason;
  *(v3 + 8) = thresholds;
  *(v3 + 16) = v4;
  *v3 = averageNoise;
  result.mean_drum_dBA_Inst = averageNoise;
  result.thresholds = thresholds;
  result.terminationReason = terminationReason;
  return result;
}

void __swiftcall HTHearingTestThreshold.init(frequency:threshold:channel:lowerBound:upperBound:)(HearingTest::HTHearingTestThreshold *__return_ptr retstr, Swift::Double frequency, Swift::Double threshold, HearingTest::HTHearingChannel channel, Swift::Double_optional lowerBound, Swift::Double_optional upperBound)
{
  v8 = *channel;
  retstr->frequency = frequency;
  retstr->threshold = threshold;
  retstr->channel = v8;
  *(&retstr->lowerBound.value + 7) = *&lowerBound.is_nil;
  BYTE6(retstr->upperBound.value) = upperBound.is_nil;
  retstr[1].frequency = v6;
  LOBYTE(retstr[1].threshold) = v7 & 1;
}

HearingTest::HTHearingTestSessionResult __swiftcall HTHearingTestSessionResult.init(thresholds:terminationReason:)(HearingTest::HTHearingTestSessionResult thresholds, HearingTest::HTHearingTestSessionTerminationReason terminationReason)
{
  v3 = *terminationReason;
  *v2 = thresholds.thresholds._rawValue;
  *(v2 + 8) = v3;
  thresholds.terminationReason = terminationReason;
  return thresholds;
}

void __swiftcall HTHearingTestToneResponse.init(tone:response:)(HearingTest::HTHearingTestToneResponse *__return_ptr retstr, HearingTest::HTHearingTestTone tone, Swift::Bool response)
{
  v3 = *(*&tone.channel + 16);
  v4 = *(*&tone.channel + 24);
  *&retstr->tone.frequency = **&tone.channel;
  retstr->tone.channel = v3;
  retstr->tone.toneDuration = v4;
  retstr->response = response;
}

__n128 HTHearingTestState.init(currentTone:responses:deletedTones:maskedTones:uncoveredInitialSamplingFrequencies:previousAudiogram:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a1;
  v8 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v8;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

unint64_t sub_2520F1EEC(unint64_t result, double a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_252141D3C();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 3)
  {
    v4 = 0;
    v5 = a2;
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v3 += v2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = a2;
  v6 = vdupq_lane_s64(*&a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_2520F1F9C(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  result = sub_252141D3C();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_2520F203C(unint64_t result, int32x2_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_252141D3C();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 7)
  {
    v4 = 0;
    v5 = a2.i32[0];
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v3 += v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = a2.i32[0];
  v6 = vdupq_lane_s32(a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t HTHearingTestMetricsDUFieldNames.rawValue.getter()
{
  result = 0x73656E6F54676C61;
  switch(*v0)
  {
    case 1:
      result = 0x615473694D676C61;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x754178614D676C61;
      break;
    case 6:
      result = 0x5472657355676C61;
      break;
    case 7:
      result = 0x656B73614D676C61;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_2520F22E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  v3 = swift_allocObject();
  v4 = *v0;
  v5 = v0[1];
  *(v3 + 16) = xmmword_252145180;
  *(v3 + 32) = v4;
  result = v0[2];
  v7 = v0[3];
  *(v3 + 64) = result;
  *(v3 + 80) = v7;
  *(v3 + 48) = v5;
  *(v3 + 96) = v1;
  *(v3 + 104) = v2;
  return result;
}

uint64_t HTHearingTestMetricsV2DUFieldNames.rawValue.getter()
{
  result = 0x73656E6F54676C61;
  switch(*v0)
  {
    case 1:
      result = 0x615473694D676C61;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x754178614D676C61;
      break;
    case 6:
      result = 0x5472657355676C61;
      break;
    case 7:
      result = 0x656B73614D676C61;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      v2 = 1952543827;
      goto LABEL_15;
    case 0xE:
      v2 = 1953721929;
LABEL_15:
      result = v2 | 0x73696F4E00000000;
      break;
    case 0xF:
      result = 0x7461745374736948;
      break;
    case 0x10:
      result = 0x74736E4974736948;
      break;
    default:
      return result;
  }

  return result;
}

double sub_2520F25A8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

HearingTest::HTHearingChannel_optional __swiftcall HTHearingChannel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2520F2600@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2520F26F8()
{
  v1 = 0x636E657571657266;
  v2 = 0x6C656E6E616863;
  if (*v0 != 2)
  {
    v2 = 0x61727544656E6F74;
  }

  if (*v0)
  {
    v1 = 0x76654C646E756F73;
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

uint64_t sub_2520F2784@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2520F75C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2520F27C4(uint64_t a1)
{
  v2 = sub_2520F5250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2520F2800(uint64_t a1)
{
  v2 = sub_2520F5250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HTHearingTestTone.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE308, &qword_2521451A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F5250();
  sub_2521425AC();
  v10[15] = 0;
  sub_25214240C();
  if (!v2)
  {
    v10[14] = 1;
    sub_25214240C();
    v10[13] = v8;
    v10[12] = 2;
    sub_2520F52A4();
    sub_25214242C();
    v10[11] = 3;
    sub_25214240C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTHearingTestTone.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x253099710](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x253099710](*&v5);
  MEMORY[0x253099700](v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x253099710](*&v6);
}

uint64_t HTHearingTestTone.hashValue.getter()
{
  sub_25214255C();
  HTHearingTestTone.hash(into:)();
  return sub_25214258C();
}

uint64_t HTHearingTestTone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE320, &unk_2521451A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F5250();
  sub_25214259C();
  if (!v2)
  {
    v17[15] = 0;
    sub_2521423BC();
    v10 = v9;
    v17[14] = 1;
    sub_2521423BC();
    v12 = v11;
    v17[12] = 2;
    sub_2520F52F8();
    sub_2521423DC();
    v13 = v17[13];
    v17[11] = 3;
    sub_2521423BC();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2520F2D8C()
{
  sub_25214255C();
  HTHearingTestTone.hash(into:)();
  return sub_25214258C();
}

uint64_t sub_2520F2DEC()
{
  sub_25214255C();
  HTHearingTestTone.hash(into:)();
  return sub_25214258C();
}

double static HTHearingTestTone.earCompletion.getter@<D0>(uint64_t a1@<X8>)
{
  result = -100.0;
  *a1 = xmmword_252145190;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t HTHearingTestThreshold.description.getter()
{
  v1 = *(v0 + 8);
  v23 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v21 = *(v0 + 48);
  strcpy(v25, ", threshold: ");
  HIWORD(v25[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D839F8];
  *(v5 + 16) = xmmword_252143AC0;
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  v8 = sub_252141BAC();
  MEMORY[0x253098DA0](v8);

  v9 = v25[1];
  v24 = v25[0];
  v10 = 0xE000000000000000;
  if (v3)
  {
    v11 = v6;
    v22 = 0;
  }

  else
  {
    sub_25214222C();

    strcpy(v25, ", lowerBound: ");
    HIBYTE(v25[1]) = -18;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252143AC0;
    v11 = v6;
    *(v12 + 56) = v6;
    *(v12 + 64) = v7;
    *(v12 + 32) = v2;
    v13 = sub_252141BAC();
    MEMORY[0x253098DA0](v13);

    v10 = v25[1];
    v22 = v25[0];
  }

  if (v21)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    sub_25214222C();

    strcpy(v25, ", upperBound: ");
    HIBYTE(v25[1]) = -18;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_252143AC0;
    *(v16 + 56) = v11;
    *(v16 + 64) = v7;
    *(v16 + 32) = v4;
    v17 = sub_252141BAC();
    MEMORY[0x253098DA0](v17);

    v14 = v25[0];
    v15 = v25[1];
  }

  if (v23)
  {
    v18 = "quare to calculate inverse.";
  }

  else
  {
    v18 = ", channel: .rightEar";
  }

  if (v23)
  {
    v19 = 0xD000000000000014;
  }

  else
  {
    v19 = 0xD000000000000013;
  }

  sub_25214222C();
  MEMORY[0x253098DA0](0x6E65757165726628, 0xEC000000203A7963);
  sub_252141E8C();
  MEMORY[0x253098DA0](v24, v9);

  MEMORY[0x253098DA0](v19, v18 | 0x8000000000000000);

  MEMORY[0x253098DA0](v22, v10);

  MEMORY[0x253098DA0](v14, v15);

  MEMORY[0x253098DA0](41, 0xE100000000000000);
  return 0;
}

uint64_t HTHearingTestSessionTerminationReason.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

__n128 HTHearingTestState.currentTone.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_2520F32E8()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x6F5464656B73616DLL;
  v4 = 0xD000000000000023;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65736E6F70736572;
  if (v1 != 1)
  {
    v5 = 0x54646574656C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2520F33CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2520F7740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2520F3400(uint64_t a1)
{
  v2 = sub_2520F534C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2520F343C(uint64_t a1)
{
  v2 = sub_2520F534C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HTHearingTestState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE330, &qword_2521451B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *(v3 + 4);
  v20 = *(v3 + 5);
  v21 = v9;
  v10 = *(v3 + 6);
  v18 = *(v3 + 7);
  v19 = v10;
  v11 = *(v3 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F534C();
  v12 = v5;
  sub_2521425AC();
  v13 = v3[1];
  v22 = *v3;
  v23 = v13;
  v24 = 0;
  sub_2520F53A0();
  v14 = v8;
  sub_2521423EC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v16 = v19;
  v17 = v20;
  *&v22 = v21;
  v24 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE348, &qword_2521451C0);
  sub_2520F55D4(&qword_27F4CE350, sub_2520F53F4, MEMORY[0x277D83948]);
  sub_25214242C();
  *&v22 = v17;
  v24 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE360, &qword_2521451C8);
  sub_2520F5448(&qword_27F4CE368, sub_2520F54C0, MEMORY[0x277D83948]);
  sub_25214242C();
  *&v22 = v16;
  v24 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  sub_2520F56F4(&qword_27F4CE378, MEMORY[0x277D839B8], MEMORY[0x277D83948]);
  sub_25214242C();
  *&v22 = v18;
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  sub_2520F5514(&qword_27F4CE380, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
  sub_25214242C();
  *&v22 = v11;
  v24 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
  sub_2520F5760(&qword_27F4CE388, MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  sub_2521423EC();
  return (*(v6 + 8))(v14, v12);
}

uint64_t HTHearingTestState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE390, &qword_2521451E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F534C();
  sub_25214259C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30) = 0;
  sub_2520F5580();
  sub_25214239C();
  v29 = v35;
  v9 = v36;
  v10 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE348, &qword_2521451C0);
  LOBYTE(v30) = 1;
  sub_2520F55D4(&qword_27F4CE3A0, sub_2520F564C, MEMORY[0x277D83978]);
  sub_2521423DC();
  v26 = v10;
  v27 = v9;
  v28 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE360, &qword_2521451C8);
  LOBYTE(v30) = 2;
  sub_2520F5448(&qword_27F4CE3B0, sub_2520F56A0, MEMORY[0x277D83978]);
  sub_2521423DC();
  v11 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  LOBYTE(v30) = 3;
  sub_2520F56F4(&qword_27F4CE3C0, MEMORY[0x277D839D0], MEMORY[0x277D83978]);
  sub_2521423DC();
  v25 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  LOBYTE(v30) = 4;
  sub_2520F5514(&qword_27F4CE3C8, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_2521423DC();
  v12 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
  v43[0] = 5;
  sub_2520F5760(&qword_27F4CE3D0, MEMORY[0x277D83A30], MEMORY[0x277D83528]);
  sub_25214239C();
  (*(v6 + 8))(v8, v5);
  v13 = v44;
  v14 = v29;
  v30 = v29;
  v15 = v11;
  v24 = v11;
  v16 = v27;
  v17 = v12;
  v23 = v12;
  v18 = v26;
  *&v31 = v27;
  *(&v31 + 1) = v26;
  v19 = v28;
  *&v32 = v28;
  *(&v32 + 1) = v15;
  *&v33 = v25;
  *(&v33 + 1) = v17;
  v34 = v44;
  *(a2 + 64) = v44;
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  sub_25209D3B0(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = v19;
  v39 = v24;
  v40 = v25;
  v41 = v23;
  v42 = v13;
  return sub_25209D35C(&v35);
}

double HTHearingTestDeletedTone.tone.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  result = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2520F3E78()
{
  if (*v0)
  {
    return 0x6C616E696769726FLL;
  }

  else
  {
    return 1701736308;
  }
}

uint64_t sub_2520F3EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736308 && a2 == 0xE400000000000000;
  if (v5 || (sub_25214247C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xED00007865646E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25214247C();

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

uint64_t sub_2520F3FA8(uint64_t a1)
{
  v2 = sub_2520F57CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2520F3FE4(uint64_t a1)
{
  v2 = sub_2520F57CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HTHearingTestDeletedTone.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE3D8, &qword_2521451F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F57CC();
  sub_2521425AC();
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v14 = 0;
  sub_2520F53A0();
  sub_25214242C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_25214241C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTHearingTestDeletedTone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE3E8, &qword_2521451F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F57CC();
  sub_25214259C();
  if (!v2)
  {
    v15[15] = 0;
    sub_2520F5580();
    sub_2521423DC();
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    LOBYTE(v16) = 1;
    v14 = sub_2521423CC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double HTHearingTestToneResponse.tone.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  result = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2520F4418()
{
  if (*v0)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 1701736308;
  }
}

uint64_t sub_2520F444C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736308 && a2 == 0xE400000000000000;
  if (v5 || (sub_25214247C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25214247C();

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

uint64_t sub_2520F4528(uint64_t a1)
{
  v2 = sub_2520F5820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2520F4564(uint64_t a1)
{
  v2 = sub_2520F5820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HTHearingTestToneResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE3F0, &qword_252145200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v13[2] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F5820();
  sub_2521425AC();
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v14 = 0;
  sub_2520F53A0();
  sub_25214242C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_2521423FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTHearingTestToneResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE400, &qword_252145208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2520F5820();
  sub_25214259C();
  if (!v2)
  {
    v15[15] = 0;
    sub_2520F5580();
    sub_2521423DC();
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    LOBYTE(v16) = 1;
    v14 = sub_2521423AC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HTHearingTestError.hashValue.getter()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

__n128 HTHearingTestMetrics.algMaxAudFloor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 HTHearingTestMetrics.requirementStatusManagerMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 64) = *(v1 + 160);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 192);
  *(a1 + 112) = *(v1 + 208);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

__n128 HTHearingTestMetricsV2.algMaxAudFloor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 HTHearingTestMetricsV2.requirementStatusManagerMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 64) = *(v1 + 160);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 192);
  *(a1 + 112) = *(v1 + 208);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double HTHearingTestMetricsV2.noiseMetadataMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  *a1 = *(v1 + 216);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return result;
}

__n128 HTRequirementStatusManagerMetrics.interruptionNoiseRC.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 HTRequirementStatusManagerMetrics.inteferenceFlagRC.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 HTRequirementStatusManagerMetrics.inteferenceFlagMaskedBands.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 96);
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

uint64_t HTHearingTestMetricPairedCounter.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

HearingTest::HTHearingTestMetricsDUFieldNames_optional __swiftcall HTHearingTestMetricsDUFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25214238C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2520F4E70@<X0>(unint64_t *a1@<X8>)
{
  result = HTHearingTestMetricsDUFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HearingTest::HTHearingTestMetricsV2DUFieldNames_optional __swiftcall HTHearingTestMetricsV2DUFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25214249C();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2520F4F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25214247C();
  }

  return v11 & 1;
}

uint64_t sub_2520F4FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_25214255C();
  a3(v4);
  sub_252141BEC();

  return sub_25214258C();
}

uint64_t sub_2520F5078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_252141BEC();
}

uint64_t sub_2520F50F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_25214255C();
  a4(v5);
  sub_252141BEC();

  return sub_25214258C();
}

uint64_t sub_2520F5170@<X0>(uint64_t *a1@<X8>)
{
  result = HTHearingTestMetricsV2DUFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL _s11HearingTest09HTHearingB4ToneV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t _s11HearingTest22HTNoiseMetadataMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  if ((sub_2520AD2F8(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_2520AD2F8(v4, v3);
}

unint64_t sub_2520F5250()
{
  result = qword_27F4CE310;
  if (!qword_27F4CE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE310);
  }

  return result;
}

unint64_t sub_2520F52A4()
{
  result = qword_27F4CE318;
  if (!qword_27F4CE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE318);
  }

  return result;
}

unint64_t sub_2520F52F8()
{
  result = qword_27F4CE328;
  if (!qword_27F4CE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE328);
  }

  return result;
}

unint64_t sub_2520F534C()
{
  result = qword_27F4CE338;
  if (!qword_27F4CE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE338);
  }

  return result;
}

unint64_t sub_2520F53A0()
{
  result = qword_27F4CE340;
  if (!qword_27F4CE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE340);
  }

  return result;
}

unint64_t sub_2520F53F4()
{
  result = qword_27F4CE358;
  if (!qword_27F4CE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE358);
  }

  return result;
}

uint64_t sub_2520F5448(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE360, &qword_2521451C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2520F54C0()
{
  result = qword_27F4CE370;
  if (!qword_27F4CE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE370);
  }

  return result;
}

uint64_t sub_2520F5514(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDB00, &qword_252143CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2520F5580()
{
  result = qword_27F4CE398;
  if (!qword_27F4CE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE398);
  }

  return result;
}

uint64_t sub_2520F55D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE348, &qword_2521451C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2520F564C()
{
  result = qword_27F4CE3A8;
  if (!qword_27F4CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE3A8);
  }

  return result;
}

unint64_t sub_2520F56A0()
{
  result = qword_27F4CE3B8;
  if (!qword_27F4CE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE3B8);
  }

  return result;
}

uint64_t sub_2520F56F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDAA0, &unk_2521451D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2520F5760(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDA90, &qword_2521451E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2520F57CC()
{
  result = qword_27F4CE3E0;
  if (!qword_27F4CE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE3E0);
  }

  return result;
}

unint64_t sub_2520F5820()
{
  result = qword_27F4CE3F8;
  if (!qword_27F4CE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE3F8);
  }

  return result;
}

unint64_t sub_2520F5878()
{
  result = qword_27F4CE408;
  if (!qword_27F4CE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE408);
  }

  return result;
}

unint64_t sub_2520F58D0()
{
  result = qword_27F4CE410;
  if (!qword_27F4CE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE410);
  }

  return result;
}

unint64_t sub_2520F5928()
{
  result = qword_27F4CE418;
  if (!qword_27F4CE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE418);
  }

  return result;
}

unint64_t sub_2520F5980()
{
  result = qword_27F4CE420;
  if (!qword_27F4CE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE420);
  }

  return result;
}

unint64_t sub_2520F59D8()
{
  result = qword_27F4CE428;
  if (!qword_27F4CE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE428);
  }

  return result;
}

unint64_t sub_2520F5A60()
{
  result = qword_27F4CE440;
  if (!qword_27F4CE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE440);
  }

  return result;
}

uint64_t sub_2520F5AE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2520F5B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2520F5B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2520F5C08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2520F5C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2520F5CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520F5D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestSessionTerminationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTHearingTestSessionTerminationReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2520F5EB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520F5EFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2520F5F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2520F5FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520F5FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520F6040(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2520F60B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2520F60F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2520F6168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2520F61AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2520F62BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2520F630C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 264) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 272) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 9;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 264) = 0;
      return result;
    }

    *(a1 + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_2520F6454(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2520F6474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 216) = v3;
  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_2520F6530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 232);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520F6578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 232) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2520F6630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2520F6650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

uint64_t sub_2520F66A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520F66F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestMetricPairedCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTHearingTestMetricPairedCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2520F67B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2520F67D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_2520F6824(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2520F6844(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestMetricsDUFieldNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTHearingTestMetricsDUFieldNames(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestMetricsV2DUFieldNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTHearingTestMetricsV2DUFieldNames(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_2520F6B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2520F6BA0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520F6C30(uint64_t result, int a2)
{
  *(result + 16) &= 1uLL;
  *(result + 36) = a2 << 31;
  return result;
}

uint64_t sub_2520F6C58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 233))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 232);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2520F6CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 232) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 233) = 0;
    }

    if (a2)
    {
      *(result + 232) = -a2;
    }
  }

  return result;
}

uint64_t sub_2520F6D30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2520F6D80(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 264) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 272) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 8 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 264) = 0;
      return result;
    }

    *(a1 + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTHearingTestState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2520F7110()
{
  result = qword_27F4CE458;
  if (!qword_27F4CE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE458);
  }

  return result;
}

unint64_t sub_2520F7168()
{
  result = qword_27F4CE460;
  if (!qword_27F4CE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE460);
  }

  return result;
}

unint64_t sub_2520F71C0()
{
  result = qword_27F4CE468;
  if (!qword_27F4CE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE468);
  }

  return result;
}

unint64_t sub_2520F7218()
{
  result = qword_27F4CE470;
  if (!qword_27F4CE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE470);
  }

  return result;
}

unint64_t sub_2520F7270()
{
  result = qword_27F4CE478;
  if (!qword_27F4CE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE478);
  }

  return result;
}

unint64_t sub_2520F72C8()
{
  result = qword_27F4CE480;
  if (!qword_27F4CE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE480);
  }

  return result;
}

unint64_t sub_2520F7320()
{
  result = qword_27F4CE488;
  if (!qword_27F4CE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE488);
  }

  return result;
}

unint64_t sub_2520F7378()
{
  result = qword_27F4CE490;
  if (!qword_27F4CE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE490);
  }

  return result;
}

unint64_t sub_2520F73D0()
{
  result = qword_27F4CE498;
  if (!qword_27F4CE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE498);
  }

  return result;
}

unint64_t sub_2520F7428()
{
  result = qword_27F4CE4A0;
  if (!qword_27F4CE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE4A0);
  }

  return result;
}

unint64_t sub_2520F7480()
{
  result = qword_27F4CE4A8;
  if (!qword_27F4CE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE4A8);
  }

  return result;
}

unint64_t sub_2520F74D8()
{
  result = qword_27F4CE4B0;
  if (!qword_27F4CE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE4B0);
  }

  return result;
}

uint64_t sub_2520F752C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB80, &qword_252143D30);
    v4 = sub_252141D3C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_2520F75C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_25214247C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x76654C646E756F73 && a2 == 0xEA00000000006C65 || (sub_25214247C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_25214247C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61727544656E6F74 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_25214247C();

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

uint64_t sub_2520F7740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000656E6FLL;
  if (v4 || (sub_25214247C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073 || (sub_25214247C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54646574656C6564 && a2 == 0xEC00000073656E6FLL || (sub_25214247C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656B73616DLL && a2 == 0xEB0000000073656ELL || (sub_25214247C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x800000025214AE30 == a2 || (sub_25214247C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252148A00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25214247C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2520F795C()
{
  result = qword_27F4CE4B8;
  if (!qword_27F4CE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE4B8);
  }

  return result;
}

uint64_t sub_2520F79EC(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_25209B354(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
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
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_25214173C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_25214175C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_25214173C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_25214175C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252143AC0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_252141BAC();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_25209B354((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_2520F7D5C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_25214182C();
  v4 = 0;
  return v3 | (v4 << 8);
}

unint64_t sub_2520F7DE4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_25210AEE4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25210AFA4(v3, v4);
    }

    else
    {
      v6 = sub_25210B020(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

void sub_2520F7EA0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_252141B6C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_252141B6C();
    v4 = [v2 BOOLForKey_];

    byte_27F4D3490 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_2520F7FA4(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_252141B6C();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = a2();

    *a3 = v8 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_2520F803C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_252141B6C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_252141B6C();
    v4 = [v2 BOOLForKey_];

    byte_27F4D3493 = v4;
  }

  else
  {
    __break(1u);
  }
}

id sub_2520F8100()
{
  v0 = objc_allocWithZone(type metadata accessor for HTAccessoryAHPSManager(0));
  result = sub_2520FD5A0(0);
  qword_27F4D3498 = result;
  return result;
}

id sub_2520F813C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral);
  *a2 = v2;
  return v2;
}

uint64_t sub_2520F8188@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25210B45C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2520A283C(v3, v4);
}

uint64_t sub_2520F8210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler);
  v5 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_2520A283C(a2, a3);

  return sub_2520A1FE4(v4, v5);
}

uint64_t sub_2520F8264(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  sub_2520A2D9C(a1, aBlock - v5, &qword_27F4CE700, &qword_2521467B0);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_25210BB3C(v6, v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_25210BBAC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_2520ADA58;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252083924;
  aBlock[3] = &block_descriptor_466_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  sub_2520A2584(a1, &qword_27F4CE700, &qword_2521467B0);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520F848C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_2520A2D9C(a2, &v9 - v5, &qword_27F4CE700, &qword_2521467B0);
  v7 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__lostPeripheralIdentifier;
  swift_beginAccess();
  sub_25210BC1C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_2520F85B8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = ObjectType;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_252110300;
  *(v7 + 24) = v6;
  v11[4] = sub_2520ADA58;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_252083924;
  v11[3] = &block_descriptor_581;
  v8 = _Block_copy(v11);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_2520F8728(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__hearingTestActive) = a2;
  if (a2)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    oslog = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136446210;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v16);

      *(v5 + 4) = v9;
      v10 = "[%{public}s] hearing test start 🟢";
LABEL_10:
      _os_log_impl(&dword_25207E000, oslog, v4, v10, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    oslog = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136446210;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, &v16);

      *(v5 + 4) = v14;
      v10 = "[%{public}s] hearing test stop 🔴";
      goto LABEL_10;
    }
  }
}

uint64_t sub_2520F8978@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 48);
  v9 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 32);
  v10[0] = v2;
  *(v10 + 12) = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 60);
  v3 = *(v10 + 12);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 16);
  v8[0] = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice);
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  *(a2 + 60) = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_2520A2D9C(v8, &v7, &qword_27F4CE6F0, &qword_2521467A0);
}

void sub_2520F89F0(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice);
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 8);
  v5 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 16);
  v6 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 24);
  v7 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 32);
  v8 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 40);
  v9 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 48);
  v10 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 56);
  v11 = *(a1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice + 64);
  v12 = a2[3];
  v2[2] = a2[2];
  v2[3] = v12;
  *(v2 + 60) = *(a2 + 60);
  v13 = a2[1];
  *v2 = *a2;
  v2[1] = v13;
  sub_2520A2D9C(a2, v14, &qword_27F4CE6F0, &qword_2521467A0);
  sub_25210B774(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2520F8B10(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v3 = v6;
  v2 = v7;
  v11 = v8;
  v12 = v9;
  v13[0] = v10[0];
  *(v13 + 12) = *(v10 + 12);
  if (v7)
  {
    v8 = v11;
    v9 = v12;
    v10[0] = v13[0];
    *(v10 + 12) = *(v13 + 12);

    sub_2520A2584(&v6, &qword_27F4CE6F0, &qword_2521467A0);
    if (v3 == *a1 && v2 == a1[1])
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_25214247C();
    }
  }

  else
  {
    v7 = 0;
    v8 = v11;
    v9 = v12;
    v10[0] = v13[0];
    *(v10 + 12) = *(v13 + 12);
    sub_2520A2584(&v6, &qword_27F4CE6F0, &qword_2521467A0);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2520F8C70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v0 = v2;
  v7 = v4;
  v8 = v5;
  v9[0] = v6[0];
  *(v9 + 12) = *(v6 + 12);
  if (v3)
  {
    v4 = v7;
    v5 = v8;
    v6[0] = v9[0];
    *(v6 + 12) = *(v9 + 12);

    sub_2520A2584(&v2, &qword_27F4CE6F0, &qword_2521467A0);
  }

  else
  {
    v3 = 0;
    v4 = v7;
    v5 = v8;
    v6[0] = v9[0];
    *(v6 + 12) = *(v9 + 12);
    sub_2520A2584(&v2, &qword_27F4CE6F0, &qword_2521467A0);
    return 0;
  }

  return v0;
}

uint64_t sub_2520F8D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v0 = v4;
  v7 = v5;
  v8[0] = v6[0];
  *(v8 + 12) = *(v6 + 12);
  if (v3)
  {
    v5 = v7;
    v6[0] = v8[0];
    *(v6 + 12) = *(v8 + 12);

    sub_2520A2584(&v2, &qword_27F4CE6F0, &qword_2521467A0);
  }

  else
  {
    v3 = 0;
    v5 = v7;
    v6[0] = v8[0];
    *(v6 + 12) = *(v8 + 12);
    sub_2520A2584(&v2, &qword_27F4CE6F0, &qword_2521467A0);
    return 0;
  }

  return v0;
}

double sub_2520F8EAC@<D0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  if (v17)
  {
    v4 = v22;
  }

  else
  {
    v4 = 0;
  }

  *v10 = v16;
  v10[1] = v17;
  v15 = v22;
  sub_2520A2584(v10, &qword_27F4CE6F0, &qword_2521467A0);
  v5 = sub_25214200C();
  if (LOBYTE(v16) != 1 || v3)
  {
    MEMORY[0x28223BE20](v5);
    sub_25214200C();
    if ((LOBYTE(v16) & v3 & 1) == 0)
    {
      sub_2520DC8D4(v4, 0, &v16);
      v6 = v17;
      if (!v17)
      {
        if (qword_27F4CD780 != -1)
        {
          swift_once();
        }

        v7 = &qword_27F4CE108;
        goto LABEL_16;
      }

LABEL_12:
      result = v16;
      *a2 = v16;
      a2[1] = v6;
      return result;
    }
  }

  sub_2520DC8D4(v4, 1, &v16);
  v6 = v17;
  if (v17)
  {
    goto LABEL_12;
  }

  if (qword_27F4CD788 != -1)
  {
    swift_once();
  }

  v7 = &qword_27F4CE118;
LABEL_16:
  v9 = v7[1];
  *a2 = *v7;
  a2[1] = v9;

  return result;
}

void sub_2520F9100(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(a1 + 3);
  v289 = *(a1 + 2);
  v290[0] = v5;
  *(v290 + 12) = *(a1 + 60);
  v6 = *(a1 + 1);
  v287 = *a1;
  v288 = v6;
  v7 = sub_252141ACC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v260 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(&v1->isa + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  v270 = v1;
  v12 = 0;
  v13 = sub_25214200C();
  if ((v283 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v29 = sub_25214198C();
    __swift_project_value_buffer(v29, qword_27F4CDE68);
    v30 = sub_25214196C();
    v31 = sub_252141FBC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v283 = v33;
      *v32 = 136446210;
      v34 = sub_2521425DC();
      v36 = sub_2520A5448(v34, v35, &v283);

      *(v32 + 4) = v36;
      v37 = "[%{public}s] handleDeviceChanged inactive due to deactivated discovery";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (qword_27F4CD7A0 != -1)
  {
    v13 = swift_once();
  }

  v269 = v8;
  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    sub_25210AC9C(a1, &v283);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v268 = v2;
      v18 = v17;
      v266 = swift_slowAlloc();
      *&v283 = v266;
      *v18 = 136446466;
      v19 = sub_2521425DC();
      LODWORD(v265) = v16;
      v21 = sub_2520A5448(v19, v20, &v283);
      v264 = v15;
      v22 = v11;
      v23 = a1;
      v24 = ObjectType;
      v25 = v21;

      *(v18 + 4) = v25;
      ObjectType = v24;
      a1 = v23;
      v11 = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2520A5448(*a1, a1[1], &v283);
      v26 = v264;
      _os_log_impl(&dword_25207E000, v264, v265, "[%{public}s] handleDeviceChanged %s", v18, 0x16u);
      v27 = v266;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      v28 = v18;
      v2 = v268;
      MEMORY[0x253099FD0](v28, -1, -1);
    }

    else
    {
    }
  }

  MEMORY[0x28223BE20](v13);
  *(&v260 - 2) = v2;
  v38 = sub_25214200C();
  if (v283 == 1)
  {
    MEMORY[0x28223BE20](v38);
    *(&v260 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE728, &unk_2521467D0);
    sub_25214200C();
    if (v283)
    {
      *v10 = v283;
      v39 = v269;
      (*(v269 + 104))(v10, *MEMORY[0x277D85200], v7);
      v40 = sub_252141AFC();
      v38 = (*(v39 + 8))(v10, v7);
      if (v40)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    v267 = a1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v41 = sub_25214198C();
    __swift_project_value_buffer(v41, qword_27F4CDE68);
    v42 = sub_25214196C();
    v43 = sub_252141FAC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v263 = v11;
      v45 = v44;
      v46 = swift_slowAlloc();
      *&v283 = v46;
      *v45 = 136446210;
      v47 = sub_2521425DC();
      v49 = sub_2520A5448(v47, v48, &v283);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] handleDeviceChanged no AHPS queue", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x253099FD0](v46, -1, -1);
      v50 = v45;
      v11 = v263;
      MEMORY[0x253099FD0](v50, -1, -1);
    }

    a1 = v267;
  }

LABEL_26:
  if (*(a1 + 50) == 2)
  {
    if ((sub_25210A398(a1) & 1) == 0)
    {
LABEL_34:
      v62 = a1;
LABEL_35:
      sub_25210A4B0(v62);
      return;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v51 = sub_25214198C();
    __swift_project_value_buffer(v51, qword_27F4CDE68);
    sub_25210AC9C(a1, &v283);
    v52 = sub_25214196C();
    v53 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (!os_log_type_enabled(v52, v53))
    {
LABEL_33:

      goto LABEL_34;
    }

    v54 = swift_slowAlloc();
    v55 = a1;
    v56 = swift_slowAlloc();
    *&v283 = v56;
    *v54 = 136446466;
    v57 = sub_2521425DC();
    v59 = sub_2520A5448(v57, v58, &v283);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_2520A5448(v55[2], v55[3], &v283);
    v60 = "[%{public}s] handleDeviceChanged ignoring non HT device: %s";
LABEL_32:
    _os_log_impl(&dword_25207E000, v52, v53, v60, v54, 0x16u);
    swift_arrayDestroy();
    v61 = v56;
    a1 = v55;
    MEMORY[0x253099FD0](v61, -1, -1);
    MEMORY[0x253099FD0](v54, -1, -1);
    goto LABEL_33;
  }

  MEMORY[0x28223BE20](v38);
  *(&v260 - 2) = v2;
  v63 = sub_25214200C();
  if ((v283 & 1) == 0)
  {
    MEMORY[0x28223BE20](v63);
    *(&v260 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
    sub_25214200C();
    v283 = v279;
    v284 = v280;
    v285 = v281;
    v286[0] = v282[0];
    *(v286 + 12) = *(v282 + 12);
    if (*(&v279 + 1))
    {
      sub_2520A2584(&v283, &qword_27F4CE6F0, &qword_2521467A0);
      if ((sub_2520F8B10(a1) & 1) == 0)
      {
        if ((sub_25210A398(a1) & 1) == 0)
        {
          goto LABEL_34;
        }

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v82 = sub_25214198C();
        __swift_project_value_buffer(v82, qword_27F4CDE68);
        sub_25210AC9C(a1, &v279);
        v52 = sub_25214196C();
        v53 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_33;
        }

        v54 = swift_slowAlloc();
        v55 = a1;
        v56 = swift_slowAlloc();
        *&v279 = v56;
        *v54 = 136446466;
        v83 = sub_2521425DC();
        v85 = sub_2520A5448(v83, v84, &v279);

        *(v54 + 4) = v85;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_2520A5448(v55[2], v55[3], &v279);
        v60 = "[%{public}s] handleDeviceChanged new device ignored: %s";
        goto LABEL_32;
      }
    }
  }

  if (*(a1 + 52))
  {
    if ((sub_25210A398(a1) & 1) == 0)
    {
      return;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v64 = sub_25214198C();
    __swift_project_value_buffer(v64, qword_27F4CDE68);
    sub_25210AC9C(a1, &v283);
    v30 = sub_25214196C();
    v65 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v30, v65))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v283 = v33;
      *v32 = 136446466;
      v66 = sub_2521425DC();
      v68 = a1;
      v69 = sub_2520A5448(v66, v67, &v283);

      *(v32 + 4) = v69;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2520A5448(v68[2], v68[3], &v283);
      _os_log_impl(&dword_25207E000, v30, v65, "[%{public}s] handleDeviceChanged ignore closed lid device: %s", v32, 0x16u);
      swift_arrayDestroy();
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v71 = *a1;
  v70 = a1[1];
  v72 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v72 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v72)
  {
    if ((sub_25210A398(a1) & 1) == 0)
    {
      return;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v78 = sub_25214198C();
    __swift_project_value_buffer(v78, qword_27F4CDE68);
    v30 = sub_25214196C();
    v31 = sub_252141FBC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v283 = v33;
      *v32 = 136446210;
      v79 = sub_2521425DC();
      v81 = sub_2520A5448(v79, v80, &v283);

      *(v32 + 4) = v81;
      v37 = "[%{public}s] handleDeviceChanged deviceIdentifier missing";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v73 = sub_252105BD0(*a1, a1[1]);
  if (v73)
  {
    if ((sub_25210A398(a1) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v74 = sub_25214198C();
    __swift_project_value_buffer(v74, qword_27F4CDE68);
    sub_25210AC9C(a1, &v283);
    v52 = sub_25214196C();
    v53 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_33;
    }

    v54 = swift_slowAlloc();
    v55 = a1;
    v56 = swift_slowAlloc();
    *&v283 = v56;
    *v54 = 136446466;
    v75 = sub_2521425DC();
    v77 = sub_2520A5448(v75, v76, &v283);

    *(v54 + 4) = v77;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_2520A5448(v55[2], v55[3], &v283);
    v60 = "[%{public}s] handleDeviceChanged ignore known bad device: %s";
    goto LABEL_32;
  }

  v269 = v70;
  MEMORY[0x28223BE20](v73);
  v268 = v2;
  *(&v260 - 2) = v2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v283 = v279;
  v284 = v280;
  v285 = v281;
  v286[0] = v282[0];
  *(v286 + 12) = *(v282 + 12);
  v266 = v71;
  v267 = a1;
  if (!*(&v279 + 1))
  {
    v265 = 0;
    if (byte_27F4D3490 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v88 = sub_25214198C();
      __swift_project_value_buffer(v88, qword_27F4CDE68);
      v89 = sub_25214196C();
      v90 = sub_252141FBC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v263 = v11;
        v92 = v91;
        v93 = swift_slowAlloc();
        *&v279 = v93;
        *v92 = 136446210;
        v94 = sub_2521425DC();
        v96 = sub_2520A5448(v94, v95, &v279);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_25207E000, v89, v90, "[%{public}s] handleDeviceChanged has no device", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x253099FD0](v93, -1, -1);
        v97 = v92;
        v11 = v263;
        MEMORY[0x253099FD0](v97, -1, -1);
      }
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v98 = sub_25214198C();
    v264 = __swift_project_value_buffer(v98, qword_27F4CDE68);
    v99 = sub_25214196C();
    v100 = sub_252141FBC();
    v101 = os_log_type_enabled(v99, v100);
    v262 = ObjectType;
    v102 = v11;
    if (v101)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v279 = v104;
      *v103 = 136446210;
      v105 = sub_2521425DC();
      v107 = sub_2520A5448(v105, v106, &v279);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_25207E000, v99, v100, "[%{public}s] handleDeviceChanged looking for device", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x253099FD0](v104, -1, -1);
      MEMORY[0x253099FD0](v103, -1, -1);
    }

    a1 = v267;
    v108 = sub_25210B830(v267);
    v109 = sub_25210A398(a1);
    if (!v108)
    {
      if (v109)
      {
        sub_25210AC9C(a1, &v279);
        v146 = sub_25214196C();
        v147 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *&v279 = v149;
          *v148 = 136446466;
          v150 = sub_2521425DC();
          v152 = sub_2520A5448(v150, v151, &v279);

          *(v148 + 4) = v152;
          *(v148 + 12) = 2080;
          *(v148 + 14) = sub_2520A5448(v267[2], v267[3], &v279);
          _os_log_impl(&dword_25207E000, v146, v147, "[%{public}s] handleDeviceChanged device not support hearing test: %s", v148, 0x16u);
          swift_arrayDestroy();
          v153 = v149;
          a1 = v267;
          MEMORY[0x253099FD0](v153, -1, -1);
          MEMORY[0x253099FD0](v148, -1, -1);
        }
      }

      sub_2521058D0(a1);
      v62 = a1;
      goto LABEL_35;
    }

    if (v109)
    {
      sub_25210AC9C(a1, &v279);
      v110 = sub_25214196C();
      v111 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v279 = v113;
        *v112 = 136446466;
        v114 = sub_2521425DC();
        v116 = sub_2520A5448(v114, v115, &v279);

        *(v112 + 4) = v116;
        *(v112 + 12) = 2080;
        *(v112 + 14) = sub_2520A5448(v267[2], v267[3], &v279);
        _os_log_impl(&dword_25207E000, v110, v111, "[%{public}s] handleDeviceChanged device supports hearing test: %s", v112, 0x16u);
        swift_arrayDestroy();
        v117 = v113;
        a1 = v267;
        MEMORY[0x253099FD0](v117, -1, -1);
        MEMORY[0x253099FD0](v112, -1, -1);
      }
    }

    v118 = swift_allocObject();
    v119 = v268;
    *(v118 + 16) = v268;
    *(v118 + 24) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_252110500;
    *(v120 + 24) = v118;
    *&v281 = sub_2520ADA58;
    *(&v281 + 1) = v120;
    *&v279 = MEMORY[0x277D85DD0];
    *(&v279 + 1) = 1107296256;
    *&v280 = sub_252083924;
    *(&v280 + 1) = &block_descriptor_357;
    v121 = _Block_copy(&v279);
    ObjectType = *(&v281 + 1);
    v122 = v119;

    dispatch_sync(v102, v121);
    _Block_release(v121);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v260 = v86;
      v124 = swift_allocObject();
      *(v124 + 16) = v122;
      v125 = v287;
      *(v124 + 40) = v288;
      v126 = v290[0];
      *(v124 + 56) = v289;
      *(v124 + 72) = v126;
      *(v124 + 84) = *(v290 + 12);
      *(v124 + 24) = v125;
      v127 = swift_allocObject();
      *(v127 + 16) = sub_2521104FC;
      *(v127 + 24) = v124;
      v277 = sub_2520ADA58;
      v278 = v127;
      v273 = MEMORY[0x277D85DD0];
      v274 = 1107296256;
      v275 = sub_252083924;
      v276 = &block_descriptor_368;
      isEscapingClosureAtFileLocation = _Block_copy(&v273);
      ObjectType = v278;
      sub_25210AC9C(a1, &v279);
      v86 = v122;

      dispatch_sync(v102, isEscapingClosureAtFileLocation);
      _Block_release(isEscapingClosureAtFileLocation);
      v128 = swift_isEscapingClosureAtFileLocation();

      if ((v128 & 1) == 0)
      {
        MEMORY[0x28223BE20](v129);
        *(&v260 - 2) = v86;
        v130 = v265;
        v131 = sub_25214200C();
        v263 = v102;
        v261 = v86;
        if (v279 == 1)
        {
          MEMORY[0x28223BE20](v131);
          *(&v260 - 2) = v86;
          sub_25214200C();
          v132 = v280;
          v271 = v281;
          v272[0] = v282[0];
          *(v272 + 12) = *(v282 + 12);
          if (*(&v279 + 1))
          {
            v281 = v271;
            v282[0] = v272[0];
            *(v282 + 12) = *(v272 + 12);

            v133 = sub_2520A2584(&v279, &qword_27F4CE6F0, &qword_2521467A0);
            MEMORY[0x28223BE20](v133);
            *(&v260 - 2) = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E8, &qword_252146798);
            sub_25214200C();
            v86 = v273;
            if (v273)
            {

              v134 = sub_25214196C();
              v135 = sub_252141FBC();

              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                v137 = swift_slowAlloc();
                v265 = v130;
                v138 = v137;
                v273 = v137;
                *v136 = 136446466;
                v139 = sub_2521425DC();
                v260 = v134;
                v141 = sub_2520A5448(v139, v140, &v273);

                *(v136 + 4) = v141;
                *(v136 + 12) = 2080;
                v142 = sub_2520A5448(v132, *(&v132 + 1), &v273);

                *(v136 + 14) = v142;
                v143 = v135;
                v144 = v260;
                _os_log_impl(&dword_25207E000, v260, v143, "[%{public}s] Calling requirement manager handleDeviceChanged upon %s connection", v136, 0x16u);
                swift_arrayDestroy();
                v145 = v138;
                v130 = v265;
                MEMORY[0x253099FD0](v145, -1, -1);
                MEMORY[0x253099FD0](v136, -1, -1);
              }

              else
              {
              }

              sub_252114A48(a1);
              v154 = swift_allocObject();
              v155 = v261;
              *(v154 + 16) = v261;
              *(v154 + 24) = 0;
              v156 = swift_allocObject();
              *(v156 + 16) = sub_25210B9D4;
              *(v156 + 24) = v154;
              v277 = sub_2520ADA58;
              v278 = v156;
              v273 = MEMORY[0x277D85DD0];
              v274 = 1107296256;
              v275 = sub_252083924;
              v276 = &block_descriptor_451;
              v157 = _Block_copy(&v273);
              v158 = v155;

              dispatch_sync(v263, v157);
              _Block_release(v157);
              LOBYTE(v157) = swift_isEscapingClosureAtFileLocation();

              if (v157)
              {
                __break(1u);
                return;
              }
            }

            else
            {
            }
          }

          else
          {
            v279 = v279;
            v281 = v271;
            v282[0] = v272[0];
            *(v282 + 12) = *(v272 + 12);
            sub_2520A2584(&v279, &qword_27F4CE6F0, &qword_2521467A0);
          }
        }

        v159 = v130;
        v160 = swift_allocObject();
        v161 = v261;
        *(v160 + 16) = v261;
        *(v160 + 24) = 1;
        v162 = swift_allocObject();
        LODWORD(a1) = v162;
        *(v162 + 16) = sub_252110508;
        *(v162 + 24) = v160;
        *&v281 = sub_2520ADA58;
        *(&v281 + 1) = v162;
        *&v279 = MEMORY[0x277D85DD0];
        *(&v279 + 1) = 1107296256;
        *&v280 = sub_252083924;
        *(&v280 + 1) = &block_descriptor_379;
        v163 = _Block_copy(&v279);
        ObjectType = *(&v281 + 1);
        v102 = v161;

        dispatch_sync(v263, v163);
        _Block_release(v163);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v164 = v267;
          sub_25210A7E0(v267);
          v165 = *(v164 + 10) == 7 || *(v164 + 11) == 7;
          v166 = swift_allocObject();
          *(v166 + 16) = v102;
          *(v166 + 24) = v165;
          v167 = swift_allocObject();
          LODWORD(a1) = v167;
          *(v167 + 16) = sub_25211050C;
          *(v167 + 24) = v166;
          *&v281 = sub_2520ADA58;
          *(&v281 + 1) = v167;
          *&v279 = MEMORY[0x277D85DD0];
          *(&v279 + 1) = 1107296256;
          *&v280 = sub_252083924;
          *(&v280 + 1) = &block_descriptor_390;
          v168 = _Block_copy(&v279);
          ObjectType = *(&v281 + 1);
          v86 = v102;

          dispatch_sync(v263, v168);
          _Block_release(v168);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v12 = v159;
            a1 = v267;
            sub_25210AC9C(v267, &v279);
            v169 = sub_25214196C();
            v170 = sub_252141FBC();
            sub_25210ACF8(a1);
            if (os_log_type_enabled(v169, v170))
            {
              v171 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              *&v279 = v172;
              *v171 = 136446466;
              v173 = sub_2521425DC();
              v175 = sub_2520A5448(v173, v174, &v279);

              *(v171 + 4) = v175;
              *(v171 + 12) = 2080;
              *(v171 + 14) = sub_2520A5448(v267[2], v267[3], &v279);
              _os_log_impl(&dword_25207E000, v169, v170, "[%{public}s] handleDeviceChanged waitingForFaultCheckResult starts now for %s", v171, 0x16u);
              swift_arrayDestroy();
              v176 = v172;
              a1 = v267;
              MEMORY[0x253099FD0](v176, -1, -1);
              MEMORY[0x253099FD0](v171, -1, -1);
            }

            sub_25210AC9C(a1, &v279);
            v177 = sub_25214196C();
            v178 = sub_252141FBC();
            sub_25210ACF8(a1);
            if (os_log_type_enabled(v177, v178))
            {
              v179 = swift_slowAlloc();
              v180 = swift_slowAlloc();
              *&v279 = v180;
              *v179 = 136446466;
              v181 = sub_2521425DC();
              v183 = sub_2520A5448(v181, v182, &v279);

              *(v179 + 4) = v183;
              *(v179 + 12) = 2080;
              *(v179 + 14) = sub_2520A5448(v267[2], v267[3], &v279);
              _os_log_impl(&dword_25207E000, v177, v178, "[%{public}s] handleDeviceChanged Device found: %s ⭐️", v179, 0x16u);
              swift_arrayDestroy();
              v184 = v180;
              a1 = v267;
              MEMORY[0x253099FD0](v184, -1, -1);
              MEMORY[0x253099FD0](v179, -1, -1);
            }

            v11 = v263;
            sub_25210064C(0xD00000000000001ELL, 0x800000025214B2F0);
            ObjectType = v262;
            goto LABEL_108;
          }

LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

LABEL_164:
        __break(1u);
        goto LABEL_165;
      }
    }

    __break(1u);
    goto LABEL_164;
  }

  v87 = sub_2520A2584(&v283, &qword_27F4CE6F0, &qword_2521467A0);
LABEL_108:
  v86 = v268;
  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v185 = sub_25214198C();
    __swift_project_value_buffer(v185, qword_27F4CDE68);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    sub_25210AC9C(a1, &v279);
    v186 = v86;
    v187 = sub_25214196C();
    v188 = sub_252141FBC();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      *&v279 = v265;
      *v189 = 136448002;
      v190 = sub_2521425DC();
      v264 = v187;
      v192 = sub_2520A5448(v190, v191, &v279);

      *(v189 + 4) = v192;
      *(v189 + 12) = 2080;
      *(v189 + 14) = sub_2520A5448(a1[2], a1[3], &v279);
      *(v189 + 22) = 2080;
      *(v189 + 24) = sub_2520A5448(v266, v269, &v279);
      *(v189 + 32) = 1024;
      sub_25210ACF8(a1);
      *(v189 + 34) = *(a1 + 10);
      sub_25210ACF8(a1);
      *(v189 + 38) = 1024;
      sub_25210ACF8(a1);
      *(v189 + 40) = *(a1 + 8);
      sub_25210ACF8(a1);
      *(v189 + 44) = 1024;
      sub_25210ACF8(a1);
      *(v189 + 46) = *(a1 + 11);
      sub_25210ACF8(a1);
      *(v189 + 50) = 1024;
      sub_25210ACF8(a1);
      *(v189 + 52) = *(a1 + 9);
      v193 = sub_25210ACF8(a1);
      *(v189 + 56) = 1024;
      MEMORY[0x28223BE20](v193);
      *(&v260 - 2) = v186;
      sub_25214200C();

      *(v189 + 58) = v273;
      v187 = v264;
      _os_log_impl(&dword_25207E000, v264, v188, "[%{public}s] handleDeviceChanged Device %s identifier %s, p %d, pp %d, s %d, ps %d, lost %{BOOL}d", v189, 0x3Eu);
      v194 = v265;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v194, -1, -1);
      MEMORY[0x253099FD0](v189, -1, -1);
    }

    else
    {

      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);

      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
    }

    v86 = v268;
  }

  LODWORD(a1) = *(a1 + 10);
  if (a1 != 7 && a1 != 1)
  {
    goto LABEL_151;
  }

  v102 = *(v267 + 11);
  if (v102 != 7 && v102 != 1)
  {
    goto LABEL_151;
  }

  MEMORY[0x28223BE20](v87);
  *(&v260 - 2) = v86;
  v87 = sub_25214200C();
  if (v279 != 1)
  {
    goto LABEL_151;
  }

  v265 = v12;
  v263 = v11;
  v195 = v267;
  isEscapingClosureAtFileLocation = &v279;
  if (sub_2520F8B10(v267))
  {
    goto LABEL_125;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_168;
  }

  while (1)
  {
    v196 = sub_25214198C();
    __swift_project_value_buffer(v196, qword_27F4CDE68);
    v195 = v267;
    sub_25210AC9C(v267, &v279);
    v197 = sub_25214196C();
    v198 = sub_252141FBC();
    sub_25210ACF8(v195);
    if (os_log_type_enabled(v197, v198))
    {
      v199 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      *&v279 = v264;
      *v199 = 136446466;
      v200 = sub_2521425DC();
      v202 = sub_2520A5448(v200, v201, &v279);
      LODWORD(v261) = v198;
      v203 = v102;
      v204 = ObjectType;
      v205 = v202;
      isEscapingClosureAtFileLocation = &v279;

      *(v199 + 4) = v205;
      ObjectType = v204;
      v102 = v203;
      *(v199 + 12) = 2080;
      *(v199 + 14) = sub_2520A5448(v195[2], v195[3], &v279);
      _os_log_impl(&dword_25207E000, v197, v261, "[%{public}s] handleDeviceChanged deviceIdentifier switching to in-ear %s👂", v199, 0x16u);
      v206 = v264;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v206, -1, -1);
      MEMORY[0x253099FD0](v199, -1, -1);
    }

LABEL_125:
    v262 = ObjectType;
    v207 = swift_allocObject();
    *(v207 + 16) = v86;
    v208 = v287;
    *(v207 + 40) = v288;
    v209 = v290[0];
    *(v207 + 56) = v289;
    *(v207 + 72) = v209;
    *(v207 + 84) = *(isEscapingClosureAtFileLocation + 236);
    *(v207 + 24) = v208;
    v210 = swift_allocObject();
    *(v210 + 16) = sub_2521104FC;
    *(v210 + 24) = v207;
    v277 = sub_2520ADA58;
    v278 = v210;
    v273 = MEMORY[0x277D85DD0];
    v274 = 1107296256;
    v275 = sub_252083924;
    v276 = &block_descriptor_403;
    v211 = _Block_copy(&v273);
    sub_25210AC9C(v195, &v279);
    v86 = v86;

    ObjectType = v263;
    dispatch_sync(v263, v211);
    _Block_release(v211);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    swift_once();
  }

  v212 = sub_25210A7E0(v195);
  MEMORY[0x28223BE20](v212);
  *(&v260 - 2) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE708, &qword_2521467B8);
  v213 = v265;
  v214 = sub_25214200C();
  v215 = v279;
  if (v279)
  {
    MEMORY[0x28223BE20](v214);
    *(&v260 - 2) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();
    v265 = v213;
    v216 = v279;
    if (!v279)
    {

      goto LABEL_132;
    }

    [v215 cancelPeripheralConnection_];
    v217 = swift_allocObject();
    LODWORD(v264) = v102;
    v218 = v217;
    *(v217 + 16) = v86;
    *(v217 + 24) = 0;
    v219 = swift_allocObject();
    *(v219 + 16) = sub_252110500;
    *(v219 + 24) = v218;
    *&v281 = sub_2520ADA58;
    *(&v281 + 1) = v219;
    *&v279 = MEMORY[0x277D85DD0];
    *(&v279 + 1) = 1107296256;
    *&v280 = sub_252083924;
    *(&v280 + 1) = &block_descriptor_438;
    v220 = _Block_copy(&v279);
    v213 = ObjectType;
    ObjectType = *(&v281 + 1);
    v221 = v86;

    dispatch_sync(v213, v220);
    _Block_release(v220);
    LOBYTE(v220) = swift_isEscapingClosureAtFileLocation();

    v102 = v264;

    if ((v220 & 1) == 0)
    {
      goto LABEL_133;
    }

    __break(1u);
  }

  v265 = v213;
LABEL_132:
  v213 = ObjectType;
LABEL_133:
  sub_25210064C(0xD00000000000001ELL, 0x800000025214B2F0);
  v223 = a1 == 7 || v102 == 7;
  v224 = swift_allocObject();
  *(v224 + 16) = v86;
  *(v224 + 24) = v223;
  v225 = swift_allocObject();
  *(v225 + 16) = sub_25211050C;
  *(v225 + 24) = v224;
  *&v281 = sub_2520ADA58;
  *(&v281 + 1) = v225;
  *&v279 = MEMORY[0x277D85DD0];
  *(&v279 + 1) = 1107296256;
  *&v280 = sub_252083924;
  *(&v280 + 1) = &block_descriptor_415;
  v226 = _Block_copy(&v279);
  ObjectType = *(&v281 + 1);
  v227 = v86;

  dispatch_sync(v213, v226);
  _Block_release(v226);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_167;
  }

  MEMORY[0x28223BE20](v228);
  *(&v260 - 2) = v227;
  sub_25214200C();
  v229 = v267;
  if (v279 == 1)
  {
    v230 = swift_allocObject();
    *(v230 + 16) = v227;
    *(v230 + 24) = 0;
    v231 = swift_allocObject();
    *(v231 + 16) = sub_252110508;
    *(v231 + 24) = v230;
    *&v281 = sub_2520ADA58;
    *(&v281 + 1) = v231;
    *&v279 = MEMORY[0x277D85DD0];
    *(&v279 + 1) = 1107296256;
    *&v280 = sub_252083924;
    *(&v280 + 1) = &block_descriptor_426;
    v232 = _Block_copy(&v279);
    v233 = v227;

    dispatch_sync(v213, v232);
    _Block_release(v232);
    LOBYTE(v232) = swift_isEscapingClosureAtFileLocation();

    if ((v232 & 1) == 0)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v234 = sub_25214198C();
      __swift_project_value_buffer(v234, qword_27F4CDE68);
      sub_25210AC9C(v229, &v279);
      v235 = sub_25214196C();
      v236 = sub_252141FBC();
      sub_25210ACF8(v229);
      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v279 = v238;
        *v237 = 136446722;
        v239 = sub_2521425DC();
        v241 = sub_2520A5448(v239, v240, &v279);

        *(v237 + 4) = v241;
        *(v237 + 12) = 2080;
        *(v237 + 14) = sub_2520A5448(v266, v269, &v279);
        *(v237 + 22) = 2080;
        *(v237 + 24) = sub_2520A5448(v229[2], v229[3], &v279);
        v242 = "[%{public}s] handleDeviceChanged deviceIdentifier locked %s for %s for test session 🔒";
        goto LABEL_149;
      }

      goto LABEL_150;
    }

    __break(1u);
LABEL_170:
    swift_once();
  }

  else if (qword_27F4CD708 != -1)
  {
    goto LABEL_170;
  }

  v243 = sub_25214198C();
  __swift_project_value_buffer(v243, qword_27F4CDE68);
  sub_25210AC9C(v229, &v279);
  v235 = sub_25214196C();
  v236 = sub_252141FBC();
  sub_25210ACF8(v229);
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    *&v279 = v238;
    *v237 = 136446722;
    v244 = sub_2521425DC();
    v246 = sub_2520A5448(v244, v245, &v279);

    *(v237 + 4) = v246;
    *(v237 + 12) = 2080;
    *(v237 + 14) = sub_2520A5448(v266, v269, &v279);
    *(v237 + 22) = 2080;
    *(v237 + 24) = sub_2520A5448(v229[2], v229[3], &v279);
    v242 = "[%{public}s] handleDeviceChanged deviceIdentifier switched, but NOT locked %s for %s outside test session";
LABEL_149:
    _os_log_impl(&dword_25207E000, v235, v236, v242, v237, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v238, -1, -1);
    MEMORY[0x253099FD0](v237, -1, -1);
  }

LABEL_150:

  v86 = v268;
LABEL_151:
  MEMORY[0x28223BE20](v87);
  *(&v260 - 2) = v86;
  v247 = sub_25214200C();
  if (v279 == 1)
  {
    MEMORY[0x28223BE20](v247);
    *(&v260 - 2) = v86;
    sub_25214200C();
    if (v279 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v248 = sub_25214198C();
      __swift_project_value_buffer(v248, qword_27F4CDE68);
      v249 = sub_25214196C();
      v250 = sub_252141FBC();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        *&v279 = v252;
        *v251 = 136446210;
        v253 = sub_2521425DC();
        v255 = sub_2520A5448(v253, v254, &v279);

        *(v251 + 4) = v255;
        _os_log_impl(&dword_25207E000, v249, v250, "[%{public}s] handleDeviceChanged central manager powered on, connecting peripheral", v251, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v252);
        MEMORY[0x253099FD0](v252, -1, -1);
        MEMORY[0x253099FD0](v251, -1, -1);
      }

      sub_25210064C(0xD00000000000001ELL, 0x800000025214B310);
      return;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v256 = sub_25214198C();
    __swift_project_value_buffer(v256, qword_27F4CDE68);
    v30 = sub_25214196C();
    v31 = sub_252141FBC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v279 = v33;
      *v32 = 136446210;
      v257 = sub_2521425DC();
      v259 = sub_2520A5448(v257, v258, &v279);

      *(v32 + 4) = v259;
      v37 = "[%{public}s] handleDeviceChanged CBCentralManager not powered on yet, no-op";
LABEL_13:
      _os_log_impl(&dword_25207E000, v30, v31, v37, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
LABEL_14:
      MEMORY[0x253099FD0](v33, -1, -1);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

LABEL_15:
  }
}

void sub_2520FBFEC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v5 = *(&v49 + 1);
  v6 = v49;
  v46 = v50;
  v47 = v51;
  v48[0] = v52[0];
  *(v48 + 12) = *(v52 + 12);
  if (!*(&v49 + 1))
  {
LABEL_11:
    v49 = v6;
    v50 = v46;
    v51 = v47;
    v52[0] = v48[0];
    *(v52 + 12) = *(v48 + 12);
    sub_2520A2584(&v49, &qword_27F4CE6F0, &qword_2521467A0);
LABEL_13:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);
    v21 = sub_25214196C();
    v22 = sub_252141FAC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v49 = v24;
    *v23 = 136446210;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, &v49);

    *(v23 + 4) = v27;
    v28 = "[%{public}s] updateDevice has no device identifer yet";
    goto LABEL_17;
  }

  v44[0] = v49;
  v44[1] = v46;
  v44[2] = v47;
  v45[0] = v48[0];
  *(v45 + 12) = *(v48 + 12);

  sub_2520A2584(v44, &qword_27F4CE6F0, &qword_2521467A0);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_13;
  }

  v8 = [a1 identifier];
  if (!v8)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v30 = sub_25214198C();
    __swift_project_value_buffer(v30, qword_27F4CDE68);
    v21 = sub_25214196C();
    v22 = sub_252141FAC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v49 = v24;
    *v23 = 136446210;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, &v49);

    *(v23 + 4) = v33;
    v28 = "[%{public}s] updateDevice given device with no identifier";
LABEL_17:
    _os_log_impl(&dword_25207E000, v21, v22, v28, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x253099FD0](v24, -1, -1);
    v29 = v23;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_252141B9C();
  v12 = v11;

  if (v10 == v6 && v12 == v5 || (sub_25214247C() & 1) != 0)
  {

    v13 = a1;
    sub_25212CC7C(v13, &v49);

    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    v15 = v49;
    *(v14 + 40) = v50;
    v16 = v52[0];
    *(v14 + 56) = v51;
    *(v14 + 72) = v16;
    *(v14 + 84) = *(v52 + 12);
    *(v14 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2521104FC;
    *(v17 + 24) = v14;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_343;
    v6 = _Block_copy(aBlock);
    v18 = v2;

    dispatch_sync(v4, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v34 = sub_25214198C();
  __swift_project_value_buffer(v34, qword_27F4CDE68);

  v21 = sub_25214196C();
  v35 = sub_252141FAC();

  if (!os_log_type_enabled(v21, v35))
  {

    goto LABEL_19;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *&v49 = v37;
  *v36 = 136446722;
  v38 = sub_2521425DC();
  v40 = sub_2520A5448(v38, v39, &v49);

  *(v36 + 4) = v40;
  *(v36 + 12) = 2080;
  v41 = sub_2520A5448(v10, v12, &v49);

  *(v36 + 14) = v41;
  *(v36 + 22) = 2080;
  v42 = sub_2520A5448(v6, v5, &v49);

  *(v36 + 24) = v42;
  _os_log_impl(&dword_25207E000, v21, v35, "[%{public}s] updateDevice ignoring unknown identifier %s, expected %s", v36, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x253099FD0](v37, -1, -1);
  v29 = v36;
LABEL_18:
  MEMORY[0x253099FD0](v29, -1, -1);
LABEL_19:
}

void sub_2520FC67C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_252141ACC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  v10 = __swift_project_value_buffer(v9, qword_27F4CDE68);
  sub_25210AC9C(a1, v65);
  v11 = sub_25214196C();
  v12 = sub_252141FBC();
  sub_25210ACF8(a1);
  v13 = os_log_type_enabled(v11, v12);
  v64 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v62 = v12;
    v15 = v14;
    v63 = swift_slowAlloc();
    *&v65[0] = v63;
    *v15 = 136446466;
    v16 = sub_2521425DC();
    v18 = v8;
    v19 = v2;
    v20 = v6;
    v21 = a1;
    v22 = v5;
    v23 = v10;
    v24 = sub_2520A5448(v16, v17, v65);

    *(v15 + 4) = v24;
    v10 = v23;
    v5 = v22;
    a1 = v21;
    v6 = v20;
    v2 = v19;
    v8 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v65);
    _os_log_impl(&dword_25207E000, v11, v62, "[%{public}s] handleDeviceLost candidate: %s", v15, 0x16u);
    v25 = v63;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v25, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  MEMORY[0x28223BE20](v26);
  *&v61[-16] = v2;
  v27 = sub_25214200C();
  if (LOBYTE(v65[0]) == 1)
  {
    MEMORY[0x28223BE20](v27);
    *&v61[-16] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE728, &unk_2521467D0);
    sub_25214200C();
    if (*&v65[0])
    {
      *v8 = *&v65[0];
      (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
      v28 = sub_252141AFC();
      v27 = (*(v6 + 8))(v8, v5);
      if (v28)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    v29 = sub_25214196C();
    v30 = sub_252141FAC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v65[0] = v32;
      *v31 = 136446210;
      v33 = sub_2521425DC();
      v63 = v10;
      v35 = sub_2520A5448(v33, v34, v65);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] handleDeviceLost no AHPS queue", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }
  }

LABEL_12:
  MEMORY[0x28223BE20](v27);
  *&v61[-16] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();
  v36 = *&v65[0];
  if (*&v65[0])
  {
    v37 = *(&v65[0] + 1);
    if (sub_2520F8B10(a1))
    {
      v38 = sub_25214196C();
      v39 = sub_252141FBC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v65[0] = v41;
        *v40 = 136446210;
        v42 = sub_2521425DC();
        v44 = sub_2520A5448(v42, v43, v65);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_25207E000, v38, v39, "[%{public}s] handleDeviceLost notify lostHandler.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x253099FD0](v41, -1, -1);
        MEMORY[0x253099FD0](v40, -1, -1);
      }

      v45 = *(a1 + 48);
      v65[2] = *(a1 + 32);
      v66[0] = v45;
      *(v66 + 12) = *(a1 + 60);
      v46 = *(a1 + 16);
      v65[0] = *a1;
      v65[1] = v46;
      v36(v65);
      sub_2520A1FE4(v36, v37);
    }

    else
    {
      sub_2520A1FE4(v36, v37);
      sub_25210AC9C(a1, v65);
      v54 = sub_25214196C();
      v55 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v65[0] = v57;
        *v56 = 136446466;
        v58 = sub_2521425DC();
        v60 = sub_2520A5448(v58, v59, v65);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v65);
        _os_log_impl(&dword_25207E000, v54, v55, "[%{public}s] handleDeviceLost ignored: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v57, -1, -1);
        MEMORY[0x253099FD0](v56, -1, -1);
      }
    }
  }

  else
  {
    v47 = sub_25214196C();
    v48 = sub_252141FBC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v65[0] = v50;
      *v49 = 136446210;
      v51 = sub_2521425DC();
      v53 = sub_2520A5448(v51, v52, v65);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_25207E000, v47, v48, "[%{public}s] handleDeviceLost no handler to notify!", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x253099FD0](v50, -1, -1);
      MEMORY[0x253099FD0](v49, -1, -1);
    }
  }
}

uint64_t sub_2520FCE54()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v35);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] cleanup and preparing for next discovery.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 84) = 0u;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_25210B720;
  *(v12 + 24) = v11;
  v39 = sub_2520ADA58;
  v40 = v12;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_252083924;
  v38 = &block_descriptor_288;
  v13 = _Block_copy(&v35);
  v14 = v1;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_252110500;
  *(v18 + 24) = v17;
  v39 = sub_2520ADA58;
  v40 = v18;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_252083924;
  v38 = &block_descriptor_299;
  v19 = _Block_copy(&v35);
  v20 = v14;

  dispatch_sync(v10, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25210B72C;
  *(v22 + 24) = v21;
  v39 = sub_2520ADA58;
  v40 = v22;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_252083924;
  v38 = &block_descriptor_309;
  v23 = _Block_copy(&v35);
  v24 = v20;

  dispatch_sync(v10, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25210B744;
  *(v26 + 24) = v25;
  v39 = sub_2520ADA58;
  v40 = v26;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_252083924;
  v38 = &block_descriptor_319;
  v27 = _Block_copy(&v35);
  v28 = v24;

  dispatch_sync(v10, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25210B75C;
  *(v30 + 24) = v29;
  v39 = sub_2520ADA58;
  v40 = v30;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_252083924;
  v38 = &block_descriptor_329_0;
  v31 = _Block_copy(&v35);
  v32 = v28;

  dispatch_sync(v10, v31);
  _Block_release(v31);
  v33 = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v34 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
  if (*&v32[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_252141E4C();

    *&v32[v34] = 0;
  }

  return result;
}