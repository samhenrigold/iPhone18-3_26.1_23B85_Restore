void sub_247946984(_BYTE *a1, void *a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xEE00435346737365;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000011;
  if (*a1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000002479525A0;
  }

  if (*a1)
  {
    v2 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  v51 = v2;
  v52 = v6;

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x8000000247957A30);

  if (a2 && (v8 = sub_24794EEF4(), v9 = [a2 stringForKey_], v8, v9))
  {
    v10 = sub_24794EF04();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v38 = 0;
    v37 = 1;
    goto LABEL_78;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    LOBYTE(v50) = 0;
    sub_2479435DC(v10, v12, 10);
    v19 = v47;
    v37 = v48;
    goto LABEL_75;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {

    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_88;
    }

    v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v17 = *v16;
      if (v17 == 43)
      {
        if (v14 < 1)
        {
          goto LABEL_91;
        }

        v18 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (v16)
        {
          v26 = v16 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_73;
            }

            v28 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_73;
            }

            v19 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_73;
            }

            ++v26;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v17 == 45)
      {
        if (v14 < 1)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v18 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (v16)
        {
          v20 = v16 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          v19 = 0;
          LOBYTE(v18) = 1;
          goto LABEL_74;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_73;
        }

        v19 = 0;
        if (v16)
        {
          do
          {
            v32 = *v16 - 48;
            if (v32 > 9)
            {
              goto LABEL_73;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_73;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_73;
            }

            ++v16;
          }

          while (--v14);
        }
      }

LABEL_72:
      LOBYTE(v18) = 0;
LABEL_74:
      LOBYTE(v50) = v18;
      v37 = v18;
LABEL_75:

      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v19;
      }

LABEL_78:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v39 = sub_24794ED34();
      __swift_project_value_buffer(v39, qword_27EE58DF8);
      v40 = sub_24794ED14();
      v41 = sub_24794F154();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v50 = v43;
        v51 = v38;
        *v42 = 136315138;
        LOBYTE(v52) = v37 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v44 = sub_24794EF14();
        v46 = sub_247924380(v44, v45, &v50);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_2478E1000, v40, v41, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1AF180](v43, -1, -1);
        MEMORY[0x24C1AF180](v42, -1, -1);
      }

      if ((v37 & 1) != 0 || (v38 & 0x8000000000000000) == 0)
      {
        return;
      }

      __break(1u);
LABEL_88:
      v16 = sub_24794F394();
      v14 = v49;
    }
  }

  v51 = v10;
  v52 = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 43)
  {
    if (v10 != 45)
    {
      if (!v13)
      {
        goto LABEL_73;
      }

      v19 = 0;
      v34 = &v51;
      do
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          goto LABEL_73;
        }

        v36 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_73;
        }

        v19 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_73;
        }

        v34 = (v34 + 1);
        --v13;
      }

      while (v13);
      goto LABEL_72;
    }

    if (v13)
    {
      v18 = v13 - 1;
      if (v13 != 1)
      {
        v19 = 0;
        v23 = &v51 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_90;
  }

  if (v13)
  {
    v18 = v13 - 1;
    if (v13 != 1)
    {
      v19 = 0;
      v29 = &v51 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v18)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_247946F14(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x8000000247952580;
  v4 = 0xD000000000000011;
  if (*a1 != 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000002479525A0;
  }

  v5 = 0xD000000000000015;
  if (*a1)
  {
    v5 = 0x72506E6F74747562;
  }

  else
  {
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v5 = v4;
    v6 = v3;
  }

  v27 = v5;
  v28 = v6;

  MEMORY[0x24C1AE4C0](0xD000000000000013, 0x8000000247957A10);

  if (a2)
  {
    v8 = sub_24794EEF4();

    v9 = [a2 stringForKey_];

    if (v9)
    {
      v10 = sub_24794EF04();
      v12 = v11;

      v13 = v10;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_14:
  v27 = 0;
  v14 = sub_247943FDC(v13, v12, &v27);

  if (v14)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v16 = !v14;
  v17 = sub_24794ED34();
  __swift_project_value_buffer(v17, qword_27EE58DF8);
  v18 = sub_24794ED14();
  v19 = sub_24794F154();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    v27 = v15;
    LOBYTE(v28) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A8, &qword_247952340);
    v22 = sub_24794EF14();
    v24 = sub_247924380(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2478E1000, v18, v19, "#SamplingUtils: get UserDefault User Selection Chance is %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1AF180](v21, -1, -1);
    MEMORY[0x24C1AF180](v20, -1, -1);
  }

  return v15;
}

BOOL sub_2479471EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_247944574(a1, a2, a3);
  v6 = v5;
  if (v5)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);

    v8 = sub_24794ED14();
    v9 = sub_24794F154();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247924380(a1, a2, &v15);
      v12 = "#SamplingUtils: audio requestId: %s is found";
LABEL_10:
      _os_log_impl(&dword_2478E1000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1AF180](v11, -1, -1);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);

    v8 = sub_24794ED14();
    v9 = sub_24794F154();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247924380(a1, a2, &v15);
      v12 = "#SamplingUtils: audio requestId: %s is not found";
      goto LABEL_10;
    }
  }

  return v6 != 0;
}

id sub_247947428(void *a1, __n128 a2)
{
  v3 = sub_24794EEF4();
  v4 = [a1 BOOLForKey_];

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  __swift_project_value_buffer(v5, qword_27EE58DF8);
  v6 = sub_24794ED14();
  v7 = sub_24794F154();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v4)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_247924380(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2478E1000, v6, v7, "#SamplingUtils: isBypassingSATTrigger: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1AF180](v9, -1, -1);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  return v4;
}

void sub_2479475D4(uint64_t a1)
{
  v3 = sub_24794EA84();
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v8 = sub_24794321C(v5, 3, 0);
  if (v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v10 = v1;
    v11 = sub_24794ED14();
    v12 = sub_24794F164();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24794F524();
      v17 = sub_247924380(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2478E1000, v11, v12, "#Utils: Failed to read audio file: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1AF180](v14, -1, -1);
      MEMORY[0x24C1AF180](v13, -1, -1);
    }

    sub_24791EF2C();
    swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v19 = v8;
    v20 = [v8 processingFormat];
    [v20 sampleRate];
    v22 = v21;

    [objc_opt_self() inputRecordingSampleRate];
    v24 = v23;
    if (v22 == v23)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v25 = sub_24794ED34();
      __swift_project_value_buffer(v25, qword_27EE58DF8);
      v26 = sub_24794ED14();
      v27 = sub_24794F154();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v22;
        _os_log_impl(&dword_2478E1000, v26, v27, "#Utils: audio file validated successfully with sample rate: %fHz", v28, 0xCu);
        MEMORY[0x24C1AF180](v28, -1, -1);
      }
    }

    else
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v29 = sub_24794ED34();
      __swift_project_value_buffer(v29, qword_27EE58DF8);
      v30 = sub_24794ED14();
      v31 = sub_24794F164();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = v22;
        *(v32 + 12) = 2048;
        *(v32 + 14) = v24;
        _os_log_impl(&dword_2478E1000, v30, v31, "#Utils: audio sampling rate: %f is not %fHz", v32, 0x16u);
        MEMORY[0x24C1AF180](v32, -1, -1);
      }

      sub_24791EF2C();
      swift_allocError();
      *v33 = v22;
      *(v33 + 8) = v24;
      *(v33 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_247947A5C()
{
  v0 = IDSCopyLocalDeviceUniqueID();
  if (v0)
  {
    v1 = v0;
    v2 = sub_24794EF04();
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F164();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2478E1000, v4, v5, "#CollectionManagerFactor: cannot get localDeviceId, do not update the dependencies", v6, 2u);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_247947B7C()
{
  v0 = sub_24794EDE4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57788, &qword_2479522F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v13 = sub_24794F0E4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v11;
  v14[6] = v10;
  v15 = v12;

  v16 = v10;
  sub_247941C98(0, 0, v9, &unk_247952300, v14);

  sub_24794EDD4();
  sub_24794EDF4();
  v17 = *(v1 + 8);
  v17(v4, v0);
  sub_24794F1C4();
  v17(v6, v0);
  if (sub_24794EDA4())
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#SamplingUtils: Location service authorization check timed out", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    return 0;
  }

  else
  {

    swift_beginAccess();
    v22 = *(v11 + 16);
  }

  return v22;
}

void sub_247947EF0()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  [objc_opt_self() removeAllAudioDataWithError_];
  v0 = v9[0];
  if (v9[0])
  {
    v1 = qword_27EE571C0;
    v2 = v9[0];
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F164();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v2;
      *v7 = v0;
      v8 = v2;
      _os_log_impl(&dword_2478E1000, v4, v5, "#SamplingUtils cleanup all audio data with error: %@", v6, 0xCu);
      sub_2478E9620(v7, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v7, -1, -1);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }
  }
}

void sub_24794808C(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  sub_247940B60(a1, v5);
  v6 = objc_opt_self();
  v7 = sub_24794EB34();
  v19[0] = 0;
  [v6 cleanUpAudioOnAndBeforeDate:v7 error:v19];

  v8 = v19[0];
  if (v19[0])
  {
    v9 = qword_27EE571C0;
    v10 = v19[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);
    v12 = v10;
    v13 = sub_24794ED14();
    v14 = sub_24794F164();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v8;
      v17 = v12;
      _os_log_impl(&dword_2478E1000, v13, v14, "#SamplingUtils cleanup on date with error: %@", v15, 0xCu);
      sub_2478E9620(v16, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v16, -1, -1);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v18 = xmmword_247952210;
    *(v18 + 16) = 2;
    swift_willThrow();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_247948368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2478E975C;

  return sub_247941654(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_247948430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2478E975C;

  return sub_247943378(a1, v4);
}

_BYTE *sub_2479484E8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_247948574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2479485BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_247948624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2479523E0;
  *(inited + 32) = 0x7365757165527368;
  *(inited + 40) = 0xEF746E756F437374;
  v2 = MEMORY[0x277D83B88];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x736575716552736ALL;
  *(inited + 88) = 0xEF746E756F437374;
  *(inited + 96) = v0[1];
  *(inited + 120) = v2;
  *(inited + 128) = 0x7365757165526262;
  *(inited + 136) = 0xEF746E756F437374;
  v3 = v0[2];
  *(inited + 168) = v2;
  *(inited + 144) = v3;
  v4 = sub_24794D0D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
  swift_arrayDestroy();
  v5 = v0[4];
  if (v5)
  {
    v6 = v0[3];
    v12 = MEMORY[0x277D837D0];
    *&v11 = v6;
    *(&v11 + 1) = v5;
    sub_247933794(&v11, v10);
    sub_24794D544(v0, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = v4;
    sub_24794B0E4(v10, 0x4974736575716572, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    return v9[0];
  }

  return v4;
}

uint64_t sub_24794879C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2479523E0;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date;
  v4 = sub_24794EBB4();
  *(inited + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v4);
  strcpy((inited + 80), "sessionClockId");
  *(inited + 95) = -18;
  v6 = sub_24794EBD4();
  v7 = MEMORY[0x277D837D0];
  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x656C61636F6CLL;
  *(inited + 136) = 0xE600000000000000;
  v10 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v9 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  *(inited + 168) = v7;
  *(inited + 144) = v10;
  *(inited + 152) = v9;

  v11 = sub_24794D0D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
  swift_arrayDestroy();
  v12 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
  v17[0] = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
  v17[1] = v12;
  v18 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 32);
  v19 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 24);
  sub_2478E9680(&v19, v16, &qword_27EE57438, &qword_247950E90);
  v13 = sub_247948624();
  sub_24794D204(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v11;
  sub_24794D234(v13, sub_24794CDEC, 0, isUniquelyReferenced_nonNull_native, v16);

  return v16[0];
}

uint64_t sub_2479489B8()
{
  v1 = v0;
  v2 = sub_24794EBB4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
  if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 32))
  {
    v33 = v1;

    sub_24794EBC4();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v17, v7, v8);
      sub_247949118();
      v29 = *(v9 + 16);
      v30 = v33;
      v29(v15, v33 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId, v8);
      (*(v34 + 16))(v4, v30 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v35);
      v29(v12, v17, v8);
      sub_24791A758(v15, v4, v12);
      v32 = v31;
      (*(v9 + 8))(v17, v8);
      return v32;
    }

    sub_2478E9620(v7, &qword_27EE57278, &unk_247950590);
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v19 = sub_24794ED34();
  __swift_project_value_buffer(v19, qword_27EE58DF8);

  v20 = sub_24794ED14();
  v21 = sub_24794F164();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    v24 = *(v18 + 32);
    v36 = *(v18 + 24);
    v37 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    v25 = sub_24794EF14();
    v27 = sub_247924380(v25, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2478E1000, v20, v21, "#SiriSession: Cannot get requestIdUUID from %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1AF180](v23, -1, -1);
    MEMORY[0x24C1AF180](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_247948E08()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date;
  v2 = sub_24794EBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId;
  v4 = sub_24794EC04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriSession(uint64_t a1)
{
  result = qword_27EE577B8;
  if (!qword_27EE577B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247948F60(uint64_t a1)
{
  result = sub_24794EBB4();
  if (v2 <= 0x3F)
  {
    result = sub_24794EC04();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
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

uint64_t sub_247949050(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2479490AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_247949118()
{
  result = qword_27EE577C8;
  if (!qword_27EE577C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE577C8);
  }

  return result;
}

uint64_t sub_247949164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
  result = sub_24794F474();
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
        sub_247933794((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_24792DB98(v23, &v36);
        sub_2478F65EC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_24794F2C4();
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
      result = sub_247933794(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_24794941C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
  v33 = v4;
  result = sub_24794F474();
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
        sub_247933794(v24, v34);
      }

      else
      {
        sub_2478F65EC(v24, v34);
      }

      sub_24794F584();
      sub_24794EF74();
      result = sub_24794F5B4();
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
      result = sub_247933794(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_2479496D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v30 = v4;
  result = sub_24794F474();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_24794F584();
      MEMORY[0x24C1AEAB0](v20);
      result = sub_24794F5B4();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_247949964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57828, &qword_2479524E8);
  v39 = v4;
  result = sub_24794F474();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_24794EEB4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_247949D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57820, &qword_2479524E0);
  result = sub_24794F474();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_247949FC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
  result = sub_24794F474();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = v22[1];
      v35 = v22[2];
      v24 = *v22;
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v5 = v34;
      v16[2] = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_24794A260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
  v33 = v4;
  result = sub_24794F474();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v32 = v5;
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
      if ((v33 & 1) == 0)
      {
      }

      sub_24794F584();

      sub_24794EF74();

      sub_24794F5A4();
      v22 = *(v20 + 40);
      sub_24794F224();

      sub_24794F5A4();
      result = sub_24794F5B4();
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v32;
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

    if ((v33 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_24794A550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24794EC04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57808, &qword_2479524C0);
  v39 = v4;
  result = sub_24794F474();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24793A29C(&qword_27EE57528, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24794EEB4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24794A92C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F8, &qword_2479524B0);
  v40 = v4;
  result = sub_24794F474();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        v26 = v42;
      }

      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_24794EEB4();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v43 * v19, v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24794AD08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E8, &qword_2479524A0);
  v39 = v4;
  result = sub_24794F474();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24793A29C(&qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_24794EEB4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_24794B0E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24792BEF8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24794BF0C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24794941C(v16, a4 & 1);
    v11 = sub_24792BEF8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24794F514();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_247933794(a1, v22);
  }

  else
  {
    sub_24794BB58(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_24794B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_24792C090(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_24794C5D8();
    result = v21;
    goto LABEL_8;
  }

  sub_247949FC0(v18, a5 & 1);
  result = sub_24792C090(a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 24 * result);
      *v24 = a1;
      v24[1] = a2;
      v24[2] = a3;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for SISchemaInvocationSource(0);
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_24794B3C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24792C168(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_24794A260(v14, a3 & 1);
      v9 = sub_24792C168(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for MetricsCalcDimensions();
        result = sub_24794F514();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_24794C73C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

void sub_24794B520(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24794EC04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24792C228(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24794CB70(MEMORY[0x277CC95F0], &qword_27EE57808, &qword_2479524C0);
      goto LABEL_7;
    }

    sub_24794A550(v17, a3 & 1);
    v21 = sub_24792C228(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_24794BCAC(v14, v11, a1, v20, MEMORY[0x277CC95F0]);
      return;
    }

LABEL_15:
    sub_24794F514();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24794B764(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v7 = v6;
  v11 = sub_24794EBB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_24792BFBC(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v31();
      goto LABEL_7;
    }

    v32();
    v28 = sub_24792BFBC(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a2, v11);
      return sub_24794BBDC(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
  v26 = v33;

  return v26(v25);
}

void sub_24794B954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24794EBB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24792BFBC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24794CB70(MEMORY[0x277CC9578], &qword_27EE577E8, &qword_2479524A0);
      goto LABEL_7;
    }

    sub_24794AD08(v17, a3 & 1);
    v21 = sub_24792BFBC(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_24794BCAC(v14, v11, a1, v20, MEMORY[0x277CC9578]);
      return;
    }

LABEL_15:
    sub_24794F514();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_24794BB58(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247933794(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_24794BBDC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24794EBB4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24794BCAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void *sub_24794BD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
  v2 = *v0;
  v3 = sub_24794F464();
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
        v18 = 40 * v17;
        sub_24792DB98(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2478F65EC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247933794(v22, (*(v4 + 56) + v17));
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

void sub_24794BF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
  v2 = *v0;
  v3 = sub_24794F464();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2478F65EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247933794(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_24794C0B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v2 = *v0;
  v3 = sub_24794F464();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_24794C20C()
{
  v1 = v0;
  v33 = sub_24794EBB4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57828, &qword_2479524E8);
  v3 = *v0;
  v4 = sub_24794F464();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24794C48C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57820, &qword_2479524E0);
  v2 = *v0;
  v3 = sub_24794F464();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24794C5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
  v2 = *v0;
  v3 = sub_24794F464();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24794C73C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
  v2 = *v0;
  v3 = sub_24794F464();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_24794C8C8()
{
  v1 = v0;
  v33 = sub_24794EBB4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F8, &qword_2479524B0);
  v3 = *v0;
  v4 = sub_24794F464();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = v23;
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_24794CB70(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_24794F464();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

double sub_24794CDEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2478F65EC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_24794CE38(_OWORD *a1@<X8>)
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
    sub_2478F65EC(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_247933794(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_2478E9620(v20, &qword_27EE577D8, &unk_247952480);
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
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
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
}

unint64_t sub_24794CF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E0, &unk_247952490);
    v3 = sub_24794F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478E9680(v4, v13, &qword_27EE57680, &unk_247951BE0);
      result = sub_24792BEB4(v13);
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
      result = sub_247933794(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24794D0D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577D0, &qword_247952478);
    v3 = sub_24794F494();
    v4 = a1 + 32;

    while (1)
    {
      sub_2478E9680(v4, &v13, &qword_27EE57748, &qword_247952160);
      v5 = v13;
      v6 = v14;
      result = sub_24792BEF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247933794(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24794D234(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_24794CE38(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_247933794(v44, v42);
  v14 = *a5;
  result = sub_24792BEF8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24794941C(v20, a4 & 1);
    result = sub_24792BEF8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24794F514();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_24794BF0C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_247933794(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_247933794(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_24794CE38(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_247933794(v44, v42);
        v32 = *a5;
        result = sub_24792BEF8(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_24794941C(v36, 1);
          result = sub_24792BEF8(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_247933794(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_247933794(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_24794CE38(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_2478FE384(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24794D57C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_24792BEF8(0x7365757165527368, 0xEF746E756F437374), (v4 & 1) != 0) && (sub_2478F65EC(*(v3 + 56) + 32 * result, v15), result = swift_dynamicCast(), (result & 1) != 0) && *(v3 + 16) && (v5 = v13, result = sub_24792BEF8(0x736575716552736ALL, 0xEF746E756F437374), (v6 & 1) != 0) && (sub_2478F65EC(*(v3 + 56) + 32 * result, v15), result = swift_dynamicCast(), (result & 1) != 0) && *(v3 + 16) && (v7 = v13, result = sub_24792BEF8(0x7365757165526262, 0xEF746E756F437374), (v8 & 1) != 0) && (sub_2478F65EC(*(v3 + 56) + 32 * result, v15), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v9 = v13;
    v10 = *(v3 + 16);
    if (v10)
    {
      result = sub_24792BEF8(0x4974736575716572, 0xE900000000000064);
      if (v11)
      {
        sub_2478F65EC(*(v3 + 56) + 32 * result, v15);
        result = swift_dynamicCast();
        v10 = v13;
        v12 = v14;
        if (!result)
        {
          v10 = 0;
          v12 = 0;
        }
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 1;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v12;
  return result;
}

uint64_t sub_24794D76C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_24794EC04();
  v44 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_24794EBB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  if (!*(a1 + 16) || (v21 = sub_24792BEF8(1702125924, 0xE400000000000000), (v22 & 1) == 0))
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_10;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v21, v45);
  v23 = swift_dynamicCast();
  (*(v15 + 56))(v13, v23 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_10:
    v27 = &qword_27EE572D0;
    v28 = &unk_2479504E0;
    v29 = v13;
    goto LABEL_11;
  }

  v42 = *(v15 + 32);
  v43 = v15 + 32;
  v42(v20, v13, v14);
  if (!*(a1 + 16) || (v24 = sub_24792BEF8(0x436E6F6973736573, 0xEE0064496B636F6CLL), (v25 & 1) == 0) || (sub_2478F65EC(*(a1 + 56) + 32 * v24, v45), (swift_dynamicCast() & 1) == 0))
  {
LABEL_20:
    (*(v15 + 8))(v20, v14);
    return 0;
  }

  sub_24794EBC4();

  v26 = v44;
  if ((*(v44 + 48))(v4, 1, v5) != 1)
  {
    v31 = v4;
    v32 = *(v26 + 32);
    v32(v10, v31, v5);
    if (*(a1 + 16))
    {
      v33 = sub_24792BEF8(0x656C61636F6CLL, 0xE600000000000000);
      if (v34)
      {
        sub_2478F65EC(*(a1 + 56) + 32 * v33, v45);
        if (swift_dynamicCast())
        {
          v41 = v47;
          sub_24794D57C(a1, v45);
          if (v46 != 1)
          {
            v47 = v45[0];
            v48 = v45[1];
            v35 = v42;
            v44 = v46;
            v42(v18, v20, v14);
            v32(v8, v10, v5);
            type metadata accessor for SiriSession(0);
            v36 = swift_allocObject();
            v35(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v18, v14);
            v37 = v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
            v38 = v48;
            *v37 = v47;
            *(v37 + 16) = v38;
            *(v37 + 32) = v44;
            v32((v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId), v8, v5);
            result = v36;
            v39 = (v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
            v40 = *(&v41 + 1);
            *v39 = v41;
            v39[1] = v40;
            return result;
          }
        }
      }
    }

    (*(v44 + 8))(v10, v5);
    goto LABEL_20;
  }

  (*(v15 + 8))(v20, v14);
  v27 = &qword_27EE57278;
  v28 = &unk_247950590;
  v29 = v4;
LABEL_11:
  sub_2478E9620(v29, v27, v28);
  return 0;
}

void *sub_24794DD20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57830, &qword_2479524F0);
  v3 = sub_24794F494();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_24792C0FC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_24792C0FC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24794DE30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57818, &qword_2479524D8);
    v3 = sub_24794F494();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 6);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_24792C090(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24794DF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
    v3 = sub_24794F494();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_24792C168(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_24794E020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57810, &unk_2479524C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57808, &qword_2479524C0);
    v7 = sub_24794F494();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2478E9680(v9, v5, &qword_27EE57810, &unk_2479524C8);
      result = sub_24792C228(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24794EC04();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24794E208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE57840, &qword_247952500);
    v3 = sub_24794F494();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24792BEF8(v5, v6);
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

unint64_t sub_24794E330(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_24794F494();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_2478E9680(v16, v12, a2, v27);
      result = sub_24792BFBC(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_24794EBB4();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_24794E510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577F0, &qword_2479524A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577E8, &qword_2479524A0);
    v7 = sub_24794F494();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2478E9680(v9, v5, &qword_27EE577F0, &qword_2479524A8);
      result = sub_24792BFBC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24794EBB4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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