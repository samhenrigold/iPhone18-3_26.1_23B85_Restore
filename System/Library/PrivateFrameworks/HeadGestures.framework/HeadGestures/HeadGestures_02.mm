uint64_t storeEnumTagSinglePayload for HGAggregationParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25111D928()
{
  result = qword_27F41E940;
  if (!qword_27F41E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E940);
  }

  return result;
}

unint64_t sub_25111D980()
{
  result = qword_27F41E948;
  if (!qword_27F41E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E948);
  }

  return result;
}

unint64_t sub_25111D9D8()
{
  result = qword_27F41E950;
  if (!qword_27F41E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E950);
  }

  return result;
}

void *sub_25111DA2C(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F98];
  v1[4] = 0;
  v1[5] = v3;
  v1[6] = 0;
  v1[2] = a1;
  v1[3] = 0;
  v4 = qword_27F41DFB0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131168();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2510F2000, v7, v8, "[HGModel] using v2 model", v9, 2u);
    MEMORY[0x25306CC10](v9, -1, -1);
  }

  return v2;
}

void sub_25111DB34()
{
  sub_251106168(*v0, 0xD00000000000002FLL, 0x8000000251137750);
  if (v1)
  {
    sub_251130F78();
    sub_251130F78();
    sub_251130F78();
    precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

    if (precompiled_compute_operation)
    {
      sub_251120E74();
      v3 = swift_allocError();
      *v4 = precompiled_compute_operation;
      *(v4 + 4) = 0;
    }

    else
    {
      sub_251120EC8();
      v3 = swift_allocError();
      *v12 = 0;
    }

    swift_willThrow();

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v5 = sub_251130BE8();
    __swift_project_value_buffer(v5, qword_27F421A38);
    v6 = sub_251130BC8();
    v7 = sub_251131188();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2510F2000, v6, v7, "[HGEspressoV2Model] loadModel Error: Failed to load E5 model", v8, 2u);
      MEMORY[0x25306CC10](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v9 = sub_251130BE8();
    __swift_project_value_buffer(v9, qword_27F421A38);
    oslog = sub_251130BC8();
    v10 = sub_251131188();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v10, "[HGEspressoV2Model] loadModel Error: invalid model path.", v11, 2u);
      MEMORY[0x25306CC10](v11, -1, -1);
    }
  }
}

uint64_t sub_25111E5C0(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + 24))
  {
    if (a3)
    {
      v6 = sub_251120F54;
    }

    else
    {
      v6 = sub_251120F24;
    }

    swift_retain_n();
    v6(a1, a2);
    v7 = e5rt_io_port_retain_tensor_desc();
    if (v7)
    {
      v8 = v7;
      sub_251120E74();
      v9 = swift_allocError();
      *v10 = v8;
      *(v10 + 4) = 0;
    }

    else
    {
      sub_251120EC8();
      v9 = swift_allocError();
      *v12 = 0;
    }

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_25111E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  v12[0] = 0;
  v6 = sub_251130F78();
  v7 = a4(v5, v6 + 32, v12);

  if (v7)
  {
    sub_251120E74();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  v10 = v12[0];
  if (!v12[0])
  {
    sub_251120EC8();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  type metadata accessor for E5RTIOPort();
  result = swift_allocObject();
  *(result + 16) = v10;
  return result;
}

uint64_t sub_25111E994(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  result = *(v1 + 32);
  if (!result)
  {
    return result;
  }

  v113 = 1;
  v108 = result;

  v4 = sub_25113072C(&unk_286331338);
  swift_arrayDestroy();
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  v112 = v4;
  v7 = 1 << *(v4 + 32);
  v8 = v110;
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v5;
  swift_beginAccess();
  v11 = 0;
  v109 = 0;
  v12 = (v7 + 63) >> 6;
  *&v13 = 136315138;
  v107 = v13;
  v111 = a1;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v112 + 48) + ((v11 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_251107B58(v17, v18);
    if (v19 && (v20 = v19, v21 = [v19 multiArrayValue], v20, v21))
    {
      v22 = v8[5];
      if (!*(v22 + 16))
      {
        goto LABEL_21;
      }

      v23 = sub_25112EA1C(v17, v18);
      if ((v24 & 1) == 0)
      {

LABEL_21:

        goto LABEL_5;
      }

      v25 = v21;
      v26 = *(*(v22 + 56) + 8 * v23);

      v106 = v104;
      MEMORY[0x28223BE20](v27);
      v104[-4] = v26;
      v104[-3] = v17;
      v28 = v25;
      v104[-2] = v18;
      v104[-1] = &v113;
      v29 = v109;
      sub_251131128();
      if (v29)
      {
        v104[1] = v26;
        v105 = v28;

        if (qword_27F41DFB0 != -1)
        {
          swift_once();
        }

        v30 = sub_251130BE8();
        __swift_project_value_buffer(v30, qword_27F421A38);
        v31 = v29;
        v32 = sub_251130BC8();
        v33 = sub_251131188();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v105;
        if (v34)
        {
          v36 = swift_slowAlloc();
          v109 = v29;
          v37 = v36;
          v38 = swift_slowAlloc();
          *v114 = v38;
          *v37 = v107;
          swift_getErrorValue();
          v106 = v32;
          v39 = sub_251131548();
          v41 = sub_2510FAC50(v39, v40, v114);

          *(v37 + 4) = v41;
          v42 = v106;
          _os_log_impl(&dword_2510F2000, v106, v33, "[HGEspressoV2Model]:loadData Error %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x25306CC10](v38, -1, -1);
          MEMORY[0x25306CC10](v37, -1, -1);
        }

        else
        {
        }

        v8 = v110;
        v109 = 0;
        v113 = 0;
      }

      else
      {
        v109 = 0;

        v8 = v110;
      }
    }

    else
    {
LABEL_5:
    }
  }

  while (2)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v14 < v12)
    {
      v10 = *(v6 + 8 * v14);
      ++v11;
      if (v10)
      {
        v11 = v14;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  if ((v113 & 1) == 0)
  {
    goto LABEL_29;
  }

  v43 = e5rt_execution_stream_execute_sync();
  if (v43)
  {
    v44 = v43;
    sub_251120E74();
    v45 = swift_allocError();
    *v46 = v44;
    *(v46 + 4) = 0;
    swift_willThrow();
    goto LABEL_35;
  }

  if (!v8[6])
  {
LABEL_29:

    return 0;
  }

  v116 = xmmword_2511348A0;
  *v114 = 0;

  data_ptr = e5rt_buffer_object_get_data_ptr();
  if (data_ptr)
  {
    v48 = data_ptr;
    sub_251120E74();
    v45 = swift_allocError();
    *v49 = v48;
    goto LABEL_33;
  }

  v8 = *v114;
  if (!*v114)
  {
    sub_251120EC8();
    v45 = swift_allocError();
    *v61 = 0;
    goto LABEL_34;
  }

  *v114 = 0;
  size = e5rt_buffer_object_get_size();
  if (!size)
  {
LABEL_48:
    v62 = v8 + *v114;
    v63 = v8;
    v64 = v109;
    sub_251120350(&v116, v63, v62);
    v65 = v116;
    v66 = *(&v116 + 1) >> 62;
    if ((*(&v116 + 1) >> 62) > 1)
    {
      if (v66 != 2)
      {
        goto LABEL_74;
      }

      v72 = *(v116 + 16);
      v73 = *(v116 + 24);
      v74 = sub_251130918();
      if (v74)
      {
        v75 = sub_251130938();
        v65 = v72 - v75;
        if (__OFSUB__(v72, v75))
        {
          goto LABEL_93;
        }

        v74 += v65;
      }

      v76 = __OFSUB__(v73, v72);
      v77 = v73 - v72;
      if (!v76)
      {
        goto LABEL_63;
      }

      __break(1u);
    }

    else if (!v66)
    {
      *v114 = v116;
      *&v114[4] = WORD2(v116);
      *&v114[6] = *(&v116 + 6);
      v67 = (*(&v116 + 1) >> 50) & 0x3FLL;
      if (v67)
      {
        v68 = sub_25111F8B8((*(&v116 + 1) >> 50) & 0x3FLL, 0);
        v69 = 4 * v67;
        v70 = v68 + 8;
        v71 = v114;
LABEL_72:
        memcpy(v70, v71, v69);
LABEL_75:
        if (*(v68 + 2) != 3)
        {
          if (qword_27F41DFB0 != -1)
          {
            swift_once();
          }

          v92 = sub_251130BE8();
          __swift_project_value_buffer(v92, qword_27F421A38);

          v93 = sub_251130BC8();
          v94 = sub_251131188();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            *v114 = v96;
            *v95 = v107;
            v97 = MEMORY[0x25306BE80](v68, MEMORY[0x277D83A90]);
            v99 = v98;

            v100 = sub_2510FAC50(v97, v99, v114);

            *(v95 + 4) = v100;
            _os_log_impl(&dword_2510F2000, v93, v94, "[HGEspressoV2Model]:prediction Error, invalid output %s", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v96);
            MEMORY[0x25306CC10](v96, -1, -1);
            MEMORY[0x25306CC10](v95, -1, -1);
          }

          else
          {
          }

          sub_251106114(v116, *(&v116 + 1));
          return 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E968, &qword_251134928);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_251133110;
        *(inited + 32) = 0x756F72676B636142;
        *(inited + 40) = 0xEA0000000000646ELL;
        *(inited + 48) = v68[8];
        *(inited + 56) = 7562585;
        *(inited + 64) = 0xE300000000000000;
        *(inited + 72) = v68[9];
        *(inited + 80) = 28494;
        *(inited + 88) = 0xE200000000000000;
        *(inited + 96) = v68[10];
        v87 = sub_251120D50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E970, &qword_251134930);
        swift_arrayDestroy();
        v112 = v87;
        v88 = *(v87 + 16);
        if (v88)
        {
          v109 = v64;
          v89 = sub_25111F93C(v88, 0);
          v90 = sub_251120668(v114, v89 + 4, v88, v112);
          v91 = *v114;
          v110 = v115;
          v111 = v90;

          sub_251120F1C(v91);
          if (v111 != v88)
          {
            goto LABEL_91;
          }

          v64 = v109;
        }

        else
        {
          v89 = MEMORY[0x277D84F90];
        }

        *v114 = v89;
        sub_25111F9CC(v114);
        if (v64)
        {
LABEL_96:

          __break(1u);
          return result;
        }

        v64 = *v114;
        if (*(*v114 + 16))
        {

          if (v64[2])
          {
            v101 = v64[4];
            v102 = v64[5];

            type metadata accessor for HGMLOutput();
            swift_allocObject();
            v103 = sub_25112E424(v112, v101, v102);

            sub_251106114(v116, *(&v116 + 1));
            return v103;
          }

          __break(1u);
LABEL_91:
          __break(1u);
        }

LABEL_95:

        __break(1u);
        goto LABEL_96;
      }

      goto LABEL_74;
    }

    v78 = v65;
    v79 = v65 >> 32;
    v77 = v79 - v78;
    if (v79 >= v78)
    {
      v80 = sub_251130918();
      if (!v80)
      {
        sub_251130928();
        goto LABEL_74;
      }

      v81 = v80;
      v82 = sub_251130938();
      if (!__OFSUB__(v78, v82))
      {
        v74 = v78 - v82 + v81;
LABEL_63:
        v83 = sub_251130928();
        if (v74)
        {
          v84 = v83 >= v77 ? v77 : v83;
          if ((v84 + 3) >= 7)
          {
            if (v84 >= 0)
            {
              v85 = v84;
            }

            else
            {
              v85 = v84 + 3;
            }

            v68 = sub_25111F8B8(v85 >> 2, 0);
            v70 = v68 + 8;
            v69 = v85 & 0xFFFFFFFFFFFFFFFCLL;
            v71 = v74;
            goto LABEL_72;
          }
        }

LABEL_74:
        v68 = MEMORY[0x277D84F90];
        goto LABEL_75;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v60 = size;
  sub_251120E74();
  v45 = swift_allocError();
  *v49 = v60;
LABEL_33:
  *(v49 + 4) = 0;
LABEL_34:
  swift_willThrow();

  sub_251106114(v116, *(&v116 + 1));
LABEL_35:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v50 = sub_251130BE8();
  __swift_project_value_buffer(v50, qword_27F421A38);
  v51 = v45;
  v52 = sub_251130BC8();
  v53 = sub_251131188();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v114 = v55;
    *v54 = v107;
    swift_getErrorValue();
    v56 = sub_251131548();
    v58 = sub_2510FAC50(v56, v57, v114);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_2510F2000, v52, v53, "[HGEspressoV2Model]:prediction Error %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x25306CC10](v55, -1, -1);
    MEMORY[0x25306CC10](v54, -1, -1);
  }

  else
  {
  }

  return 0;
}

void sub_25111F574(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  data_ptr = e5rt_buffer_object_get_data_ptr();
  if (data_ptr)
  {
    v7 = data_ptr;
    sub_251120E74();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
  }

  else
  {
    sub_251120EC8();
    swift_allocError();
    *v9 = 0;
  }

  swift_willThrow();
}

uint64_t sub_25111F7F4()
{

  return swift_deallocClassInstance();
}

void *sub_25111F8B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C8, &qword_251133580);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_25111F93C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E0, &qword_251134628);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_25111F9CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2511207C4(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_2511314F8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E8, &unk_251134630);
      v7 = sub_251131088();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_25111FB3C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25111FB3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25112033C(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_251120100((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251109A28(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_251109A28((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_251120100((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_251120100(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t *sub_251120350(uint64_t *result, const void *a2, uint64_t a3)
{
  v4 = result;
  v21 = *MEMORY[0x277D85DE8];
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {

      sub_251106114(v6, v5);
      __dst = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_2511348B0;
      sub_251106114(0, 0xC000000000000000);
      sub_2511309F8();
      v11 = v20;
      v12 = *(__dst + 16);
      result = sub_251130918();
      if (result)
      {
        v13 = result;
        v14 = sub_251130938();
        v15 = __OFSUB__(v12, v14);
        v16 = v12 - v14;
        if (v15)
        {
          __break(1u);
        }

        result = sub_251130928();
        if (a2)
        {
          result = memmove(v13 + v16, a2, a3 - a2);
        }

        *v4 = __dst;
        v4[1] = v11 | 0x8000000000000000;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (v7)
    {

      sub_251106114(v6, v5);
      __dst = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_2511348B0;
      sub_251106114(0, 0xC000000000000000);
      result = sub_2511205C4(&__dst, a2, a3);
      v8 = __dst;
      v9 = v20 | 0x4000000000000000;
    }

    else
    {
      result = sub_251106114(v6, v5);
      __dst = v6;
      LOWORD(v20) = v5;
      BYTE2(v20) = BYTE2(v5);
      BYTE3(v20) = BYTE3(v5);
      BYTE4(v20) = BYTE4(v5);
      BYTE5(v20) = BYTE5(v5);
      BYTE6(v20) = BYTE6(v5);
      if (a2)
      {
        result = memcpy(&__dst, a2, a3 - a2);
      }

      v8 = __dst;
      v9 = v20 | ((WORD2(v20) | (BYTE6(v20) << 16)) << 32);
    }

    *v4 = v8;
    v4[1] = v9;
  }

  return result;
}

uint64_t sub_2511205C4(int *a1, const void *a2, uint64_t a3)
{
  result = sub_251130A08();
  v7 = *a1;
  if (a1[1] < v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_251130918();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_251130938();
  v9 = __OFSUB__(v7, result);
  v10 = v7 - result;
  if (v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_251130928();
  if (a2)
  {
    memmove((v8 + v10), a2, a3 - a2);
  }
}

void *sub_251120668(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2511207D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E978, &qword_251134938);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, &v13, &qword_27F41E980, &unk_251134940);
      v5 = v13;
      v6 = v14;
      result = sub_25112EA1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2510FC400(&v15, (v3[7] + 32 * result));
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

unint64_t sub_251120908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, &v11, &qword_27F41E850, &qword_251134000);
      v5 = v11;
      result = sub_25112EB00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2510FC400(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_251120A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
    v3 = sub_2511313F8();
    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 48);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      result = sub_25112F9FC();
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = (v3[7] + 48 * result);
      *v14 = v6;
      v14[1] = v7;
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      v14[5] = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_251120B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A0, &qword_251134990);
    v3 = sub_2511313F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_25112F9FC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_251120C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E998, &unk_251134980);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, v13, &qword_27F41E528, &qword_251133348);
      result = sub_25112EC18(v13);
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
      *(v3[7] + 8 * result) = v15;
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

unint64_t sub_251120D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E988, &unk_251134960);
    v3 = sub_2511313F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25112EA1C(v5, v6);
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

unint64_t sub_251120E74()
{
  result = qword_27F41E958;
  if (!qword_27F41E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E958);
  }

  return result;
}

unint64_t sub_251120EC8()
{
  result = qword_27F41E960;
  if (!qword_27F41E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E960);
  }

  return result;
}

uint64_t sub_251120F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251120FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v5 = sub_251130B88();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_251121078(uint64_t a1, uint64_t *a2)
{
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_251121190@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v4 = sub_251130B88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_251121218(uint64_t a1)
{
  v3 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v4 = sub_251130B88();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_251121308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E6970706F7453;
  if (v2 != 1)
  {
    v4 = 0x676E696E6E7552;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x646570706F7453;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E6970706F7453;
  if (*a2 != 1)
  {
    v8 = 0x676E696E6E7552;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646570706F7453;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251131518();
  }

  return v11 & 1;
}

uint64_t sub_25112140C()
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_2511214B0(uint64_t a1)
{
  sub_251130F88();
}

uint64_t sub_251121540(uint64_t a1)
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

unint64_t sub_2511215E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25112477C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_251121610(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E6970706F7453;
  if (v2 != 1)
  {
    v5 = 0x676E696E6E7552;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7453;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_2511216BC()
{
  v1 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_251121770(uint64_t a1)
{
  v3 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2511217C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id HGManager.__allocating_init(delegate:config:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2511247C8(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

id HGManager.init(delegate:config:)(uint64_t a1, void *a2)
{
  v3 = sub_2511247C8(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

id sub_251121984()
{
  v1 = sub_251130B88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_251130BE8();
  __swift_project_value_buffer(v5, qword_27F421A38);
  v6 = sub_251130BC8();
  v7 = sub_251131198();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2510F2000, v6, v7, "==========▶️===========", v8, 2u);
    MEMORY[0x25306CC10](v8, -1, -1);
  }

  v9 = v0;
  v10 = sub_251130BC8();
  v11 = sub_251131198();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315650;
    v14 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v9[v14], v1);
    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v15 = sub_251131508();
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v18 = sub_2510FAC50(v15, v17, v25);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = 0xE700000000000000;
    *(v12 + 14) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v25);
    *(v12 + 22) = 2080;
    if (v9[OBJC_IVAR___HGManagerInternal_status])
    {
      if (v9[OBJC_IVAR___HGManagerInternal_status] == 1)
      {
        v19 = 0xE800000000000000;
        v20 = 0x676E6970706F7453;
      }

      else
      {
        v20 = 0x676E696E6E7552;
      }
    }

    else
    {
      v20 = 0x646570706F7453;
    }

    v21 = sub_2510FAC50(v20, v19, v25);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_2510F2000, v10, v11, "[HGManager]%s: %s status: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v13, -1, -1);
    MEMORY[0x25306CC10](v12, -1, -1);
  }

  v22 = *&v9[OBJC_IVAR___HGManagerInternal_lock];
  [v22 lock];
  sub_251121D58(v9);
  return [v22 unlock];
}

void sub_251121D58(unsigned __int8 *a1)
{
  v3 = sub_251130B88();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v87 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v11 = OBJC_IVAR___HGManagerInternal_status;
  v12 = a1[OBJC_IVAR___HGManagerInternal_status];
  v98 = v13;
  v99 = v10;
  v97 = v87 - v14;
  if (v12 > 1)
  {

    goto LABEL_7;
  }

  v15 = sub_251131518();

  if (v15)
  {
LABEL_7:
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v16 = sub_251130BE8();
    __swift_project_value_buffer(v16, qword_27F421A38);
    v17 = a1;
    v18 = sub_251130BC8();
    v19 = sub_251131188();
    if (!os_log_type_enabled(v18, v19))
    {

      return;
    }

    LODWORD(v94) = v19;
    v95 = v18;
    v96 = v1;
    v20 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v100[0] = v93;
    *v20 = 136315394;
    v21 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v23 = v98;
    v22 = v99;
    v24 = &v17[v21];
    v25 = v97;
    v92 = *(v98 + 16);
    (v92)(v97, v24, v99);
    v91 = sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v26 = sub_251131508();
    v28 = v27;
    v98 = *(v23 + 8);
    (v98)(v25, v22);
    v29 = sub_2510FAC50(v26, v28, v100);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    v30 = *&v17[OBJC_IVAR___HGManagerInternal_session];
    if (v30)
    {

      (v92)(v9, v30 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v22);

      v31 = sub_251131508();
      v33 = v32;
      (v98)(v9, v22);
      v34 = sub_2510FAC50(v31, v33, v100);

      *(v20 + 14) = v34;
      v35 = v95;
      _os_log_impl(&dword_2510F2000, v95, v94, "[HGManager]%s: EXISTING LIVE SESSION %s, ignore command...", v20, 0x16u);
      v36 = v93;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v36, -1, -1);
      MEMORY[0x25306CC10](v20, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!a1[v11] || a1[v11] != 1)
  {
    v37 = sub_251131518();

    if (v37)
    {
      goto LABEL_14;
    }

    v54 = OBJC_IVAR___HGManagerInternal_configuration;
    swift_beginAccess();
    v55 = *&a1[v54];
    type metadata accessor for HGSession(0);
    swift_allocObject();
    v56 = v55;
    v57 = sub_251103124(v56);

    v58 = OBJC_IVAR___HGManagerInternal_session;
    *&a1[OBJC_IVAR___HGManagerInternal_session] = v57;

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v59 = sub_251130BE8();
    __swift_project_value_buffer(v59, qword_27F421A38);
    v60 = a1;
    v61 = sub_251130BC8();
    v62 = sub_251131198();
    if (os_log_type_enabled(v61, v62))
    {
      LODWORD(v91) = v62;
      v92 = v61;
      v93 = v54;
      v96 = v1;
      v63 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v101 = v90;
      *v63 = 136315650;
      v94 = v58;
      v64 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      v65 = v97;
      v66 = v98;
      v67 = *(v98 + 16);
      v68 = &v60[v64];
      v95 = v60;
      v69 = v99;
      v88 = v67;
      v89 = v98 + 16;
      v67(v97, v68, v99);
      v87[1] = sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
      v70 = sub_251131508();
      v72 = v71;
      v98 = *(v66 + 8);
      (v98)(v65, v69);
      v73 = sub_2510FAC50(v70, v72, &v101);

      *(v63 + 4) = v73;
      *(v63 + 12) = 2080;
      v74 = *&a1[v94];
      if (!v74)
      {
LABEL_29:

        __break(1u);
        return;
      }

      v88(v6, v74 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v69);

      v75 = sub_251131508();
      v77 = v76;
      (v98)(v6, v69);
      v78 = sub_2510FAC50(v75, v77, &v101);

      *(v63 + 14) = v78;
      *(v63 + 22) = 2080;
      v79 = *&a1[v93];
      v80 = sub_2510F8400();
      v82 = v81;

      v83 = sub_2510FAC50(v80, v82, &v101);

      *(v63 + 24) = v83;
      v84 = v92;
      _os_log_impl(&dword_2510F2000, v92, v91, "[HGManager]%s: starting new session %s with config: %s", v63, 0x20u);
      v85 = v90;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v85, -1, -1);
      MEMORY[0x25306CC10](v63, -1, -1);

      v58 = v94;
    }

    else
    {
    }

    if (*&a1[v58])
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_2510FF8B8(Strong);

      swift_unknownObjectRelease();
      a1[v11] = 2;
      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v38 = sub_251130BE8();
  __swift_project_value_buffer(v38, qword_27F421A38);
  v39 = a1;
  v40 = sub_251130BC8();
  v41 = sub_251131198();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v100[0] = v96;
    *v42 = 136315138;
    v43 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v44 = v98;
    v45 = v99;
    v46 = &v39[v43];
    v47 = v97;
    (*(v98 + 16))(v97, v46, v99);
    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v48 = sub_251131508();
    LODWORD(v95) = v41;
    v49 = v48;
    v51 = v50;
    (*(v44 + 8))(v47, v45);
    v52 = sub_2510FAC50(v49, v51, v100);

    *(v42 + 4) = v52;
    _os_log_impl(&dword_2510F2000, v40, v95, "[HGManager]%s: Received impatient start, will restart once HG fully stopped", v42, 0xCu);
    v53 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x25306CC10](v53, -1, -1);
    MEMORY[0x25306CC10](v42, -1, -1);
  }

  v39[OBJC_IVAR___HGManagerInternal_impatientStart] = 1;
}

void sub_251122774(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v78 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v71 - v7;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v8 = sub_251130BE8();
  __swift_project_value_buffer(v8, qword_27F421A38);
  v9 = v2;
  v10 = sub_251130BC8();
  v11 = sub_251131198();

  p_name = (&OBJC_PROTOCOL___MLFeatureProvider + 8);
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v82[0] = v14;
    *v13 = 136315650;
    v15 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v16 = v9 + v15;
    v17 = v81;
    v4[2](v81, v16, v3);
    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v18 = sub_251131508();
    v19 = v3;
    v21 = v20;
    v77 = v4;
    v22 = v4[1];
    v23 = v19;
    (v22)(v17, v19);
    v24 = sub_2510FAC50(v18, v21, v82);

    *(v13 + 4) = v24;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2510FAC50(0x74697728706F7473, 0xEB00000000293A68, v82);
    *(v13 + 22) = 2080;
    if (*(v9 + OBJC_IVAR___HGManagerInternal_status))
    {
      if (*(v9 + OBJC_IVAR___HGManagerInternal_status) == 1)
      {
        v25 = 0xE800000000000000;
        v26 = 0x676E6970706F7453;
      }

      else
      {
        v25 = 0xE700000000000000;
        v26 = 0x676E696E6E7552;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v26 = 0x646570706F7453;
    }

    v27 = sub_2510FAC50(v26, v25, v82);

    *(v13 + 24) = v27;
    _os_log_impl(&dword_2510F2000, v10, v11, "[HGManager]%s: %s status: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v14, -1, -1);
    MEMORY[0x25306CC10](v13, -1, -1);

    v3 = v23;
    v4 = v77;
    p_name = &OBJC_PROTOCOL___MLFeatureProvider.name;
  }

  else
  {
  }

  v28 = *(v9 + OBJC_IVAR___HGManagerInternal_lock);
  [v28 lock];
  v29 = p_name[311];
  if (v29[v9] && v29[v9] != 1)
  {

LABEL_18:
    v44 = v4;
    v45 = v3;
    v46 = v9;
    v47 = sub_251130BC8();
    v48 = sub_251131198();
    if (os_log_type_enabled(v47, v48))
    {
      v74 = v48;
      v75 = v47;
      v76 = v29;
      v77 = v28;
      v49 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83 = v73;
      *v49 = 136315394;
      v50 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      v51 = &v46[v50];
      v52 = v81;
      v53 = v45;
      v72 = v44[2];
      v72(v81, v51, v45);
      v71 = sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
      v54 = sub_251131508();
      v56 = v55;
      v57 = v44[1];
      (v57)(v52, v53);
      v58 = sub_2510FAC50(v54, v56, &v83);

      *(v49 + 4) = v58;
      *(v49 + 12) = 2080;
      v59 = *&v46[OBJC_IVAR___HGManagerInternal_session];
      if (!v59)
      {
LABEL_25:

        __break(1u);
        return;
      }

      v60 = v78;
      v72(v78, (v59 + OBJC_IVAR____TtC12HeadGestures9HGSession_id), v53);

      v61 = sub_251131508();
      v63 = v62;
      (v57)(v60, v53);
      v64 = sub_2510FAC50(v61, v63, &v83);

      *(v49 + 14) = v64;
      v65 = v75;
      _os_log_impl(&dword_2510F2000, v75, v74, "[HGManager]%s: stopping session %s", v49, 0x16u);
      v66 = v73;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v66, -1, -1);
      MEMORY[0x25306CC10](v49, -1, -1);

      v29 = v76;
      v28 = v77;
    }

    else
    {
    }

    v29[v9] = 1;
    [v28 unlock];
    if (*&v46[OBJC_IVAR___HGManagerInternal_session])
    {
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      v70 = v79;
      v69 = v80;
      v68[2] = v67;
      v68[3] = v70;
      v68[4] = v69;

      sub_25110300C(v70, v69);
      sub_2510FFE54(sub_251124B68, v68);

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  v30 = sub_251131518();

  if (v30)
  {
    goto LABEL_18;
  }

  v31 = v9;
  v32 = sub_251130BC8();
  v33 = sub_251131188();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v83 = v35;
    *v34 = 136315138;
    v36 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v37 = v28;
    v38 = v81;
    v4[2](v81, &v31[v36], v3);
    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v39 = sub_251131508();
    v41 = v40;
    v42 = v38;
    v28 = v37;
    (v4[1])(v42, v3);
    v43 = sub_2510FAC50(v39, v41, &v83);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_2510F2000, v32, v33, "[HGManager]%s: NO LIVE SESSION, ignore command...", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x25306CC10](v35, -1, -1);
    MEMORY[0x25306CC10](v34, -1, -1);
  }

  [v28 unlock];
}

void sub_25112300C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v86 = sub_251130B88();
  v85 = *(v86 - 8);
  v6 = MEMORY[0x28223BE20](v86);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v80 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v80 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = v13;
    v24 = v21;
    v25 = a2;
    v26 = Strong;
    v27 = *(Strong + OBJC_IVAR___HGManagerInternal_lock);

    a2 = v25;
    v21 = v24;
    v13 = v23;
    [v27 lock];
    sub_251123810(a1);
    [v27 unlock];
  }

  if (a2)
  {

    a2(v28);
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v80 = a2;
      v81 = a3;
      v82 = v10;
      v83 = v13;
      v30 = OBJC_IVAR___HGManagerInternal_id;
      v31 = v29;
      swift_beginAccess();
      v32 = v85;
      v33 = *(v85 + 16);
      v34 = &v31[v30];
      v35 = v86;
      v33(v19, v34, v86);

      (*(v32 + 32))(v21, v19, v35);
      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v36 = sub_251130BE8();
      __swift_project_value_buffer(v36, qword_27F421A38);
      v33(v16, v21, v86);
      v37 = sub_251130BC8();
      v38 = sub_251131178();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v88[0] = v40;
        *v39 = 136315138;
        sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
        v41 = sub_251131508();
        v43 = v42;
        v44 = v16;
        v45 = *(v85 + 8);
        v45(v44, v86);
        v46 = sub_2510FAC50(v41, v43, v88);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_2510F2000, v37, v38, "[HGManager]%s: Client provided stop completion handler finish execution.", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x25306CC10](v40, -1, -1);
        MEMORY[0x25306CC10](v39, -1, -1);
        sub_251102FFC(v80, v81);

        v45(v21, v86);
      }

      else
      {
        sub_251102FFC(v80, v81);

        v47 = *(v85 + 8);
        v48 = v86;
        v47(v16, v86);
        v47(v21, v48);
      }

      v13 = v83;
      v10 = v82;
    }

    else
    {
      sub_251102FFC(a2, a3);
    }
  }

  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    p_name = &OBJC_PROTOCOL___MLFeatureProvider.name;
    v51 = v49[OBJC_IVAR___HGManagerInternal_impatientStart];

    if (v51 == 1)
    {
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v53 = OBJC_IVAR___HGManagerInternal_id;
        v54 = v10;
        v55 = v52;
        swift_beginAccess();
        v56 = v85;
        v57 = *(v85 + 16);
        v58 = &v55[v53];
        v59 = v86;
        v57(v54, v58, v86);

        (*(v56 + 32))(v13, v54, v59);
        if (qword_27F41DFB0 != -1)
        {
          swift_once();
        }

        v60 = sub_251130BE8();
        __swift_project_value_buffer(v60, qword_27F421A38);
        v61 = v84;
        v57(v84, v13, v86);
        v62 = sub_251130BC8();
        v63 = sub_251131198();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = v86;
          v67 = v65;
          v87[0] = v65;
          *v64 = 136315138;
          sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
          v68 = sub_251131508();
          v70 = v69;
          v83 = v13;
          v71 = v61;
          v72 = *(v85 + 8);
          v72(v71, v66);
          v73 = sub_2510FAC50(v68, v70, v87);

          *(v64 + 4) = v73;
          _os_log_impl(&dword_2510F2000, v62, v63, "[HGManager]%s: Restarting HG due to impatientStart request received.", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          v74 = v67;
          p_name = (&OBJC_PROTOCOL___MLFeatureProvider + 8);
          MEMORY[0x25306CC10](v74, -1, -1);
          MEMORY[0x25306CC10](v64, -1, -1);

          v72(v83, v66);
        }

        else
        {

          v75 = *(v85 + 8);
          v76 = v86;
          v75(v61, v86);
          v75(v13, v76);
        }
      }

      swift_beginAccess();
      v77 = swift_unknownObjectWeakLoadStrong();
      if (v77)
      {
        v78 = v77;
        sub_251121984();
      }

      swift_beginAccess();
      v79 = swift_unknownObjectWeakLoadStrong();
      if (v79)
      {
        p_name[312][v79] = 0;
      }
    }
  }
}

void sub_251123810(uint64_t a1)
{
  v1 = sub_251130B88();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v34 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR___HGManagerInternal_session] = 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = OBJC_IVAR___HGManagerInternal_id;
    v14 = v12;
    swift_beginAccess();
    v15 = *(v2 + 16);
    v15(v8, &v14[v13], v1);

    (*(v2 + 32))(v10, v8, v1);
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v16 = sub_251130BE8();
    v17 = __swift_project_value_buffer(v16, qword_27F421A38);
    v36 = v10;
    v15(v5, v10, v1);
    v18 = sub_251130BC8();
    v19 = sub_251131198();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v37[0] = v22;
      *v21 = 136315138;
      sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
      v23 = sub_251131508();
      v34[1] = v17;
      v25 = v24;
      v26 = *(v35 + 8);
      v26(v5, v1);
      v27 = sub_2510FAC50(v23, v25, v37);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_2510F2000, v18, v19, "[HGManager]%s: HG ALL STOPPED", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25306CC10](v22, -1, -1);
      MEMORY[0x25306CC10](v21, -1, -1);
    }

    else
    {

      v26 = *(v2 + 8);
      v26(v5, v1);
    }

    v28 = sub_251130BC8();
    v29 = sub_251131198();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v36;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2510F2000, v28, v29, "==========⏹️===========", v32, 2u);
      MEMORY[0x25306CC10](v32, -1, -1);
    }

    v26(v31, v1);
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR___HGManagerInternal_status] = 0;
  }
}

id sub_251123CF4(char a1)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_251130BE8();
  __swift_project_value_buffer(v7, qword_27F421A38);
  v8 = v1;
  v9 = sub_251130BC8();
  v10 = sub_251131198();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = v23;
    *v11 = 136315650;
    v12 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v8[v12], v3);
    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v13 = sub_251131508();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_2510FAC50(v13, v15, v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2510FAC50(0xD00000000000001BLL, 0x80000002511377A0, v24);
    *(v11 + 22) = 2080;
    if (a1)
    {
      v17 = 1702131021;
    }

    else
    {
      v17 = 0x6574756D6E55;
    }

    if (a1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    v19 = sub_2510FAC50(v17, v18, v24);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_2510F2000, v9, v10, "[HGManager]%s: %s trying to %s", v11, 0x20u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v20, -1, -1);
    MEMORY[0x25306CC10](v11, -1, -1);
  }

  v21 = *&v8[OBJC_IVAR___HGManagerInternal_lock];
  [v21 lock];
  sub_25112403C(v8, a1 & 1);
  return [v21 unlock];
}

void sub_25112403C(char *a1, int a2)
{
  v5 = sub_251130B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR___HGManagerInternal_session];
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer);
    if (v10)
    {
      v11 = *(v10 + 16);
      v12 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
      swift_beginAccess();
      *(v11 + v12) = (a2 & 1) == 0;
    }

    HIDWORD(v40) = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_251130BE8();
    __swift_project_value_buffer(v13, qword_27F421A38);
    v14 = a1;
    v15 = sub_251130BC8();
    v16 = sub_251131198();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v41 = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315394;
      v20 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      (*(v6 + 16))(v8, &v14[v20], v5);
      sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
      v21 = sub_251131508();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_2510FAC50(v21, v23, &v43);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      if ((v40 & 0x100000000) != 0)
      {
        v25 = 0x646574754DLL;
      }

      else
      {
        v25 = 0x646574756D6E55;
      }

      if ((v40 & 0x100000000) != 0)
      {
        v26 = 0xE500000000000000;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      v27 = sub_2510FAC50(v25, v26, &v43);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_2510F2000, v15, v16, "[HGManager]%s: AudioFeedback %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v19, -1, -1);
      MEMORY[0x25306CC10](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v28 = sub_251130BE8();
    __swift_project_value_buffer(v28, qword_27F421A38);
    v29 = a1;
    v30 = sub_251130BC8();
    v31 = sub_251131188();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = v2;
      v33 = v32;
      v34 = swift_slowAlloc();
      v42[0] = v34;
      *v33 = 136315138;
      v35 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      (*(v6 + 16))(v8, &v29[v35], v5);
      sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
      v36 = sub_251131508();
      v38 = v37;
      (*(v6 + 8))(v8, v5);
      v39 = sub_2510FAC50(v36, v38, v42);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_2510F2000, v30, v31, "[HGManager]%s: NO LIVE SESSION, ignore command...", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x25306CC10](v34, -1, -1);
      MEMORY[0x25306CC10](v33, -1, -1);
    }
  }
}

id HGManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HGManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2511246F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v5 = sub_251130B88();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

unint64_t sub_25112477C(uint64_t a1, uint64_t a2)
{
  v2 = sub_251131428();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_2511247C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v30 = sub_251130B88();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___HGManagerInternal_id;
  v9 = v3;
  sub_251130B78();
  *&v9[OBJC_IVAR___HGManagerInternal_session] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR___HGManagerInternal_lock;
  v11 = &off_2796AC000;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v9[OBJC_IVAR___HGManagerInternal_impatientStart] = 0;
  v9[OBJC_IVAR___HGManagerInternal_status] = 0;
  *&v9[OBJC_IVAR___HGManagerInternal_configuration] = a2;
  swift_unknownObjectWeakAssign();
  v12 = qword_27F41DFB0;
  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_251130BE8();
  __swift_project_value_buffer(v14, qword_27F421A38);
  v15 = v9;
  v16 = sub_251130BC8();
  v17 = sub_251131198();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    swift_beginAccess();
    v20 = &v3[v8];
    v21 = v30;
    (*(v5 + 16))(v7, v20, v30);

    sub_251124BF4(&qword_27F41E360, MEMORY[0x277CC9628]);
    v22 = sub_251131508();
    v24 = v23;
    (*(v5 + 8))(v7, v21);
    v25 = sub_2510FAC50(v22, v24, &v31);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_2510F2000, v16, v17, "[HGManager]%s: Initialized manager", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v26 = v19;
    v11 = &off_2796AC000;
    MEMORY[0x25306CC10](v26, -1, -1);
    MEMORY[0x25306CC10](v18, -1, -1);
  }

  else
  {
  }

  v27 = type metadata accessor for HGManager(0);
  v32.receiver = v15;
  v32.super_class = v27;
  return objc_msgSendSuper2(&v32, v11[118]);
}

uint64_t sub_251124AE8()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251124B20()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for HGManager(uint64_t a1)
{
  result = qword_27F41E9C8;
  if (!qword_27F41E9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251124BF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_251124C40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_251124CB4(uint64_t a1)
{
  result = sub_251130B88();
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

unint64_t sub_251124FA8()
{
  result = qword_27F41E9D8;
  if (!qword_27F41E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E9D8);
  }

  return result;
}

uint64_t sub_251124FFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251125070()
{
  v1 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
  v2 = sub_251130B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_25112510C()
{
  v29 = sub_2511315E8();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v35 + 1) = &type metadata for HGCoreAnalyticsManager.HGCAReport;
  v3 = swift_allocObject();
  *&v34 = v3;
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  v5 = v0[3];
  v3[3] = v0[2];
  v3[4] = v5;
  sub_2511265DC(v0, &v36);
  sub_2511315C8();
  v27 = v2;
  sub_2511315D8();
  sub_2511313A8();

  sub_251131408();
  if (!v38)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_19:
    (*(v28 + 8))(v27, v29);

    return v6;
  }

  v6 = MEMORY[0x277D84F98];
  while (1)
  {
    v34 = v36;
    sub_2510FC400(&v37, &v35);
    sub_2511266B4(&v34, &v31);
    v7 = v32;
    if (!v32)
    {
      sub_251126724(&v34);
      __swift_destroy_boxed_opaque_existential_0(v33);
      goto LABEL_4;
    }

    v8 = v31;
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_2511266B4(&v34, &v31);

    sub_25112678C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_251126724(&v34);

      goto LABEL_4;
    }

    v9 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v6;
    v11 = sub_25112EA1C(v8, v7);
    v13 = v6[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v6[3] >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = v11;
        sub_2511282A4();
        v11 = v22;
        if (v17)
        {
LABEL_14:
          v19 = v11;

          v6 = v31;
          v20 = v31[7];
          v21 = *(v20 + 8 * v19);
          *(v20 + 8 * v19) = v9;

          sub_251126724(&v34);
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_251126FE8(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_25112EA1C(v8, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_22;
      }
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_16:
    v6 = v31;
    v31[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v6[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    *(v6[7] + 8 * v11) = v9;

    sub_251126724(&v34);
    v24 = v6[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
      goto LABEL_21;
    }

    v6[2] = v25;
LABEL_4:
    sub_251131408();
    if (!v38)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_251131538();
  __break(1u);
  return result;
}

void sub_25112549C()
{
  type metadata accessor for HGCoreAnalyticsManager();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_251130F18();
  v5 = v4;

  v0[2] = v3;
  v0[3] = v5;
  v0[4] = MEMORY[0x277D84F90];
  qword_27F421A00 = v0;
}

void sub_251125540()
{
  if (sub_251125790())
  {
    v1 = sub_251130EE8();
    sub_25112678C();
    v2 = sub_251130E78();

    AnalyticsSendEvent();

    swift_beginAccess();
    *(v0 + 32) = MEMORY[0x277D84F90];

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_251130BE8();
    __swift_project_value_buffer(v3, qword_27F421A38);
    v4 = sub_251130BC8();
    v5 = sub_251131198();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2510F2000, v4, v5, "[CoreAnalytics] CAEvent sent...", v6, 2u);
      MEMORY[0x25306CC10](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v7 = sub_251130BE8();
    __swift_project_value_buffer(v7, qword_27F421A38);
    oslog = sub_251130BC8();
    v8 = sub_251131198();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v8, "[CoreAnalytics] CAEvent is missing information. skip sending...", v9, 2u);
      MEMORY[0x25306CC10](v9, -1, -1);
    }
  }
}

void *sub_251125790()
{
  v1 = sub_251130B38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v62 - v6;
  v79 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = v0[4];
  if (v8 >> 62)
  {
    goto LABEL_87;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v65 = v7;
    v66 = v5;
    v67 = v2;
    v68 = v1;
    v64 = v0;
    v5 = 0;
    v1 = 0;
    v7 = 0;
    v74 = 0;
    v73 = 0;
    v2 = v8 & 0xFFFFFFFFFFFFFF8;
    v70 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25306C180](v5, v8);
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          v9 = sub_2511313C8();
          goto LABEL_3;
        }
      }

      type metadata accessor for HGCoreAnalyticsManager.HGCAStartEvent(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v0 = v11;

        v1 = v0;
      }

      else
      {
        type metadata accessor for HGCoreAnalyticsManager.HGCAStopEvent(0);
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v0 = v12;

          v7 = v0;
        }

        else
        {
          type metadata accessor for HGCoreAnalyticsManager.HGCAGestureDetectionEvent(0);
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            type metadata accessor for HGCoreAnalyticsManager.HGCAMotionDataReceivedEvent(0);
            v14 = swift_dynamicCastClass();
            if (!v14)
            {
              v69 = v7;
              type metadata accessor for HGCoreAnalyticsManager.HGCAPipelineResetEventEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v80;
                MEMORY[0x25306BE60](v15);
                if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v71 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v16 = v80;
                v17 = (&v83 + 8);
                goto LABEL_32;
              }

              type metadata accessor for HGCoreAnalyticsManager.HGCAInterpolatedDataEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v79;
                MEMORY[0x25306BE60](v18);
                if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v70 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v16 = v79;
                v17 = &v83;
                goto LABEL_32;
              }

              type metadata accessor for HGCoreAnalyticsManager.HGCASamplingRateEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v78;
                MEMORY[0x25306BE60](v19);
                if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v72 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v16 = v78;
                v17 = &v84;
LABEL_32:
                *(v17 - 32) = v16;
              }

              v7 = v69;
              goto LABEL_6;
            }

            if (!v73)
            {
              v73 = v14;
              goto LABEL_6;
            }

LABEL_18:

            goto LABEL_6;
          }

          if (v74)
          {
            goto LABEL_18;
          }

          v74 = v13;
        }
      }

LABEL_6:
      ++v5;
      if (v10 == v9)
      {

        if (!v1)
        {
          v41 = MEMORY[0x277D84F98];
          goto LABEL_78;
        }

        v20 = v73;
        v21 = v72;
        if (!v7 || !v73 || !v74)
        {
          v41 = MEMORY[0x277D84F98];
          goto LABEL_78;
        }

        v22 = v7;
        v62 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
        v23 = v67;
        v24 = *(v67 + 16);
        v63 = v24;
        v25 = v65;
        v26 = v68;
        v24(v65, v1 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v68);
        v27 = v66;
        v24(v66, &v22[OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp], v26);

        v72 = v21;
        v69 = v22;

        sub_251130B18();
        v28 = *(v23 + 8);
        v28(v27, v26);
        v28(v25, v26);
        v29 = v63;
        v63(v25, v1 + v62, v26);
        v30 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
        v29(v27, v20 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v26);

        sub_251130B18();
        v28(v27, v26);
        v28(v25, v26);
        v31 = v20 + v30;
        v32 = v72;
        v33 = v63;
        v63(v25, v31, v26);

        v33(v27, v74 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v26);
        sub_251130B18();
        v28(v27, v26);
        v28(v25, v26);
        v2 = v32 >> 62;
        if (v32 >> 62)
        {
          v0 = sub_2511313C8();
        }

        else
        {
          v0 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = v70;
        if (v0)
        {
          v5 = 0;
          v7 = (v72 & 0xC000000000000001);
          v35 = v72 & 0xFFFFFFFFFFFFFF8;
          v8 = v72 + 32;
          v36 = 0.0;
          do
          {
            if (v7)
            {
              result = MEMORY[0x25306C180](v5, v72);
              v40 = __OFADD__(v5++, 1);
              if (v40)
              {
                __break(1u);
                return result;
              }

              v38 = *(result + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate);
              swift_unknownObjectRelease();
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_85;
              }

              if (v5 >= *(v35 + 16))
              {
                goto LABEL_86;
              }

              v37 = *(v8 + 8 * v5++);
              v38 = *(v37 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate);
            }

            v36 = v36 + v38;
          }

          while (v5 != v0);
        }

        if (v2)
        {
          sub_2511313C8();
        }

        if (v71 >> 62)
        {
          v68 = 0x3EE4F8B588E368F1;
          v0 = sub_2511313C8();
        }

        else
        {
          v0 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v34 & 0xFFFFFFFFFFFFFF8;
        if (v34 >> 62)
        {
          v5 = sub_2511313C8();
        }

        else
        {
          v5 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v7 = 0;
        v42 = 0;
        v8 = v34 & 0xC000000000000001;
        while (v5 != v7)
        {
          if (v8)
          {
            v43 = MEMORY[0x25306C180](v7, v34);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_72;
            }
          }

          else
          {
            if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_83;
            }

            if (__OFADD__(v7, 1))
            {
LABEL_72:
              __break(1u);
              break;
            }
          }

          v44 = *(v43 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAInterpolatedDataEvent_intepolationAmount);

          ++v7;
          v40 = __OFADD__(v42, v44);
          v42 += v44;
          if (v40)
          {
            goto LABEL_84;
          }
        }

        if ((*(v74 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAGestureDetectionEvent_detectedGesture) & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v45 = sub_251130EE8();
          v46 = sub_2511310B8();
          v47 = sub_251131118();
          v48 = sub_2511310B8();
          v49 = sub_2511310B8();
          v50 = sub_251131118();
          v51 = sub_2511310B8();
          v52 = sub_2511310B8();
          *&v81 = v45;
          *(&v81 + 1) = v46;
          *&v82 = v47;
          *(&v82 + 1) = v48;
          *&v83 = v49;
          *(&v83 + 1) = v50;
          *&v84 = v51;
          *(&v84 + 1) = v52;
          if (qword_27F41DFB0 == -1)
          {
LABEL_75:
            v53 = sub_251130BE8();
            __swift_project_value_buffer(v53, qword_27F421A38);
            sub_2511265DC(&v81, v77);
            v54 = sub_251130BC8();
            v55 = sub_251131178();
            sub_251126614(&v81);
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v76 = v57;
              *v56 = 136315138;
              v77[0] = v81;
              v77[1] = v82;
              v77[2] = v83;
              v77[3] = v84;
              sub_2511265DC(&v81, v75);
              v58 = sub_251130F68();
              v60 = sub_2510FAC50(v58, v59, &v76);

              *(v56 + 4) = v60;
              _os_log_impl(&dword_2510F2000, v54, v55, "[Core Analytics] sending report: %s", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v57);
              MEMORY[0x25306CC10](v57, -1, -1);
              MEMORY[0x25306CC10](v56, -1, -1);
            }

            v41 = sub_25112510C();

            sub_251126614(&v81);

            goto LABEL_78;
          }
        }

        swift_once();
        goto LABEL_75;
      }
    }
  }

  v41 = MEMORY[0x277D84F98];
LABEL_78:
  v61 = v41[2];

  if (!v61)
  {

    v41 = 0;
  }

  return v41;
}

uint64_t sub_251126320()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2511263AC(uint64_t a1)
{
  result = sub_251130B38();
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

uint64_t sub_251126644()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2511266B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA60, &qword_251134C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251126724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA60, &qword_251134C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25112678C()
{
  result = qword_27F41EA68;
  if (!qword_27F41EA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EA68);
  }

  return result;
}

uint64_t sub_2511267D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
  result = sub_2511313E8();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_2510FC400(v21, v31);
      }

      else
      {
        sub_2510FC4E8(v21, v31);
        v22 = v20;
      }

      sub_251131598();
      type metadata accessor for CFString(0);
      sub_251128830();
      sub_251130BA8();
      result = sub_2511315B8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2510FC400(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_251126AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_2511313E8();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + v21);
      sub_251131598();
      MEMORY[0x25306C3C0](v22);
      result = sub_2511315B8();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_31;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_31:
  *v5 = v9;
  return result;
}

uint64_t sub_251126D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
  result = sub_2511313E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v4;
    v37 = v5;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v23 = v22[5];
      v24 = v22[3];
      v38 = v22[4];
      v25 = v22[2];
      v27 = *v22;
      v26 = v22[1];
      sub_251131598();
      MEMORY[0x25306C3C0](v21);
      result = sub_2511315B8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v27;
      v16[1] = v26;
      v16[2] = v25;
      v16[3] = v24;
      v5 = v37;
      v16[4] = v38;
      v16[5] = v23;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_251126FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA70, &qword_251134C10);
  v35 = v4;
  result = sub_2511313E8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_251131598();
      sub_251130F88();
      result = sub_2511315B8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_25112728C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA88, &qword_251134C28);
  v6 = sub_2511313E8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = v4;
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
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    sub_251131598();
    sub_251130F88();

    v15 = sub_2511315B8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_34;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      JUMPOUT(0x251127668);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
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
    goto LABEL_31;
  }

  v3 = v2;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_2511276A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A0, &qword_251134990);
  result = sub_2511313E8();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_251131598();
      MEMORY[0x25306C3C0](v20);
      result = sub_2511315B8();
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

uint64_t sub_25112792C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA78, &unk_251134C18);
  v34 = v4;
  result = sub_2511313E8();
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

      sub_251131598();
      sub_251130F88();
      result = sub_2511315B8();
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

uint64_t sub_251127BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
  result = sub_2511313E8();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_251131598();
      MEMORY[0x25306C3C0](v20);
      result = sub_2511315B8();
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

id sub_251127E54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
  v2 = *v0;
  v3 = sub_2511313D8();
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
        sub_2510FC4E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2510FC400(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_251127FFC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2511313D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_251128138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
  v2 = *v0;
  v3 = sub_2511313D8();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 40) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 48 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v22 = *(v4 + 56) + 48 * v14;
      *v22 = v20;
      *(v22 + 16) = v21;
      *(v22 + 32) = v18;
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

id sub_2511282A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA70, &qword_251134C10);
  v2 = *v0;
  v3 = sub_2511313D8();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_251128438(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2511313D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_251128574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA78, &unk_251134C18);
  v2 = *v0;
  v3 = sub_2511313D8();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2511286E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
  v2 = *v0;
  v3 = sub_2511313D8();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

unint64_t sub_251128830()
{
  result = qword_27F41EA80;
  if (!qword_27F41EA80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41EA80);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25112889C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2511288E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_251128950(char *result, double a2)
{
  v4 = *v2;
  if (*(*v2 + 2) == result)
  {
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_251128DC0(0, 1, sub_251109514, sub_251128BC0);
    v4 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251109514(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    result = sub_251109514((v5 > 1), v6 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = a2;
  *v2 = v4;
  return result;
}

unint64_t sub_251128A3C(unint64_t result, unint64_t a2, float a3)
{
  v4 = result;
  v6 = *v3;
  if (*(*v3 + 2) != result || a2 == 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result < a2)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_251128DC0(0, a2, sub_251109820, sub_251128D18);
  v6 = *v3;
LABEL_8:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_251109820(0, *(v6 + 2) + 1, 1, v6);
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v6 = sub_251109820((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v10;
  *&v6[4 * v9 + 32] = a3;
  *v3 = v6;
  if (v10 != v4)
  {
    return 0;
  }

  sub_251128C68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAA8, "jw");
  sub_251128CB4();
  return sub_251131138();
}

unint64_t sub_251128BC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_251128C68()
{
  result = qword_27F41EAA0;
  if (!qword_27F41EAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EAA0);
  }

  return result;
}

unint64_t sub_251128CB4()
{
  result = qword_27F41EAB0;
  if (!qword_27F41EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F41EAA8, "jw");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41EAB0);
  }

  return result;
}

unint64_t sub_251128D18(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_251128DC0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_251128E98()
{
  v1 = sub_251130B38();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2511311D8();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2511311A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_251130E38();
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 16) = 0;
  v8 = sub_2510F65C4();
  v26[1] = "tor";
  v26[2] = v8;
  sub_251130E28();
  v32 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E0F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0, MEMORY[0x277D83970]);
  sub_2511312A8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v28);
  v9 = sub_251131208();
  v10 = v27;
  *(v27 + 40) = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v12 = sub_251130EE8();
  [v11 setDateFormat_];

  v13 = [objc_opt_self() processInfo];
  v14 = [v13 processName];

  v15 = sub_251130F18();
  v17 = v16;

  v32 = v15;
  v33 = v17;
  MEMORY[0x25306BDC0](45, 0xE100000000000000);
  v18 = v29;
  sub_251130B28();
  v19 = sub_251130AA8();
  (*(v30 + 8))(v18, v31);
  v20 = [v11 stringFromDate_];

  v21 = sub_251130F18();
  v23 = v22;

  MEMORY[0x25306BDC0](v21, v23);

  MEMORY[0x25306BDC0](1987273518, 0xE400000000000000);

  v24 = v33;
  result = v10;
  *(v10 + 24) = v32;
  *(v10 + 32) = v24;
  return result;
}

uint64_t sub_2511292E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAB8, "J{");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAC0, "^{");
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E418, &qword_251133248);
  sub_2510F6658(&qword_27F41E420, &qword_27F41E418, &qword_251133248, MEMORY[0x277CBCD90]);
  sub_251130D38();

  sub_2510F6658(&qword_27F41EAC8, &qword_27F41EAB8, "J{", MEMORY[0x277CBCC08]);
  swift_retain_n();
  sub_251130CF8();

  (*(v3 + 8))(v5, v2);
  sub_2510F6658(&qword_27F41EAD0, &qword_27F41EAC0, "^{", MEMORY[0x277CBCB60]);
  v10 = sub_251130D88();
  (*(v7 + 8))(v9, v6);
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAD8, "z{");
  sub_2510F6658(qword_27F41EAE0, &qword_27F41EAD8, "z{", MEMORY[0x277CBCC78]);
  v11 = sub_251130CD8();

  return v11;
}

double sub_251129640@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_251130E18();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_251130E38();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  v12 = a1[6];
  v37 = a1[5];
  v38[0] = v12;
  *(v38 + 9) = *(a1 + 105);
  v13 = a1[1];
  v32 = *a1;
  v33 = v13;
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v36 = v11;
  v15 = *(a2 + 40);
  v16 = swift_allocObject();
  v17 = a1[5];
  *(v16 + 88) = a1[4];
  *(v16 + 104) = v17;
  *(v16 + 120) = a1[6];
  *(v16 + 129) = *(a1 + 105);
  v18 = a1[1];
  *(v16 + 24) = *a1;
  *(v16 + 40) = v18;
  v19 = a1[3];
  *(v16 + 56) = a1[2];
  *(v16 + 16) = a2;
  *(v16 + 72) = v19;
  aBlock[4] = sub_25112A298;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_14;
  v20 = _Block_copy(aBlock);
  v21 = v15;

  sub_251130E28();
  v30 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v10, v8, v20);
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v10, v28);

  v22 = v37;
  v23 = v38[0];
  a3[4] = v36;
  a3[5] = v22;
  a3[6] = v23;
  *(a3 + 105) = *(v38 + 9);
  v24 = v33;
  *a3 = v32;
  a3[1] = v24;
  result = *&v34;
  v26 = v35;
  a3[2] = v34;
  a3[3] = v26;
  return result;
}

void sub_2511299D8(uint64_t a1)
{
  v2 = sub_251130F58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6;
    sub_251111F98();
    sub_251130F48();
    v8 = sub_251130F28();
    v10 = v9;

    (*(v3 + 8))(v5, v2);
    if (v10 >> 60 == 15)
    {
    }

    else
    {
      sub_25112A2A4(v8, v10);
      sub_251105D5C(v8, v10, v7, 0);

      sub_251106100(v8, v10);
      sub_251106100(v8, v10);
    }
  }
}

void sub_251129B40(uint64_t a1, void *a2)
{
  v3 = sub_251130F58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HGGetTemporaryRawDataDirectory();
  v8 = sub_251130F18();
  v10 = v9;

  v12 = a2[3];
  v11 = a2[4];
  v13 = qword_27F41DF98;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_251130F48();
  v14 = sub_251130F28();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = sub_251105410(v8, v10, v12, v11, v14, v16);
  sub_251106100(v14, v16);

  v18 = a2[2];
  a2[2] = v17;
}

uint64_t sub_251129CE8(uint64_t a1)
{
  v2 = sub_251130E18();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251130E38();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  aBlock[4] = sub_25112A240;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);
  v10 = v8;

  sub_251130E28();
  v15 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v7, v4, v9);
  _Block_release(v9);

  (*(v14 + 8))(v4, v2);
  (*(v5 + 8))(v7, v13);
}

void sub_251129FAC(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v15[0] = 0;
  if ([v2 closeAndReturnError_])
  {
    v3 = *(a1 + 16);
    v4 = v15[0];
LABEL_5:
    *(a1 + 16) = 0;
LABEL_6:

    return;
  }

  v5 = v15[0];
  v6 = sub_251130978();

  swift_willThrow();
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_251130BE8();
  __swift_project_value_buffer(v7, qword_27F421A38);
  v8 = v6;
  v3 = sub_251130BC8();
  v9 = sub_251131188();

  if (os_log_type_enabled(v3, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_251131548();
    v14 = sub_2510FAC50(v12, v13, v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2510F2000, v3, v9, "[HGDataCollector] Failed to close file handle, error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25306CC10](v11, -1, -1);
    MEMORY[0x25306CC10](v10, -1, -1);

    goto LABEL_6;
  }
}

uint64_t sub_25112A1BC()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25112A260()
{

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t sub_25112A2A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251106058(result, a2);
  }

  return result;
}

uint64_t sub_25112A2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RawRepresentableWrapper.rawValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t RawRepresentableWrapper.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v15 - v8;
  v10 = sub_251131278();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  (*(v7 + 16))(v9, v3, AssociatedTypeWitness);
  sub_251131018();
  v13 = *(v5 - 8);
  result = (*(v13 + 48))(v12, 1, v5);
  if (result != 1)
  {
    return (*(v13 + 32))(a2, v12, v5);
  }

  __break(1u);
  return result;
}

uint64_t RawRepresentableWrapper.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251131008();
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t sub_25112A5A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_251131518();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25112A624()
{
  sub_251131598();
  MEMORY[0x25306C3C0](0);
  return sub_2511315B8();
}

uint64_t sub_25112A690(uint64_t a1)
{
  sub_251131598();
  MEMORY[0x25306C3C0](0);
  return sub_2511315B8();
}

uint64_t sub_25112A6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25112A5A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25112A71C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25112A61C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25112A74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25112A7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RawRepresentableWrapper<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_251130EB8();
}

uint64_t RawRepresentableWrapper<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_251131598();
  swift_getAssociatedTypeWitness();
  sub_251130EB8();
  return sub_2511315B8();
}

uint64_t sub_25112A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_251131598();
  RawRepresentableWrapper<>.hash(into:)(v6, a2, v4);
  return sub_2511315B8();
}

uint64_t RawRepresentableWrapper<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v5 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for RawRepresentableWrapper.CodingKeys(255, v12, v5, a4);
  swift_getWitnessTable();
  v6 = sub_2511314E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251131608();
  swift_getAssociatedTypeWitness();
  sub_2511314D8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t RawRepresentableWrapper<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v23 - v8;
  type metadata accessor for RawRepresentableWrapper.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = sub_251131498();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v14 = type metadata accessor for RawRepresentableWrapper(0, a2, a3, v13);
  v23 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v31;
  sub_2511315F8();
  if (!v17)
  {
    v31 = v14;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = AssociatedTypeWitness;
    sub_251131478();
    (*(v18 + 8))(v12, v19);
    (*(v20 + 32))(v16, v30, v21);
    (*(v23 + 32))(v24, v16, v31);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25112AEF8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25112AF78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_25112B10C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

BOOL sub_25112B3CC(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_25112B3FC@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x131uLL);
  result = sub_25112B458(__dst);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 5;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25112B458(uint64_t a1)
{
  v3 = sub_251130B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251130B08();
  v13 = v1;
  v14 = a1;
  v15 = v6;
  v7 = sub_25112B5D8(sub_25112BE3C, v12, &unk_2863317E0);
  v8 = *(v7 + 2);
  if (!v8)
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v7[32];

  if (v8 != 1 || (sub_25112B97C(v9, v6) & 1) == 0)
  {
    goto LABEL_6;
  }

  *(v1 + 64) = v9;
  v10 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v10, v6, v3);
  swift_endAccess();
LABEL_7:
  (*(v4 + 8))(v6, v3);
  return v9;
}

char *sub_25112B5D8(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6++;
    BYTE1(v13) = v8;
    a1(&v13, &v13 + 1, a2);
    if (v3)
    {
      break;
    }

    v9 = v13;
    if (v13 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_251109C30(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_251109C30((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v7[v11 + 32] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

BOOL sub_25112B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 200))
  {
    return 0;
  }

  if (*(a2 + 288))
  {
    return 0;
  }

  v5 = *(a2 + 176);
  v6 = *(a2 + 192);
  v8 = *(a2 + 240);
  v7 = *(a2 + 248);
  v9 = *(a2 + 256);
  v10 = *(a2 + 264);
  v11 = *(a2 + 272);
  v12 = *(a2 + 280);
  if ((*(v3 + 16) & 1) == 0)
  {
    v13 = a1;
    v14 = sub_25112B97C(a1, a3);
    LOBYTE(a1) = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v15 = 1.0;
        if (v12 > 0.75)
        {
          v9 = v12;
LABEL_18:
          result = *(v3 + 48) < v6 * v15;
          goto LABEL_22;
        }

        result = 0;
        v9 = v12;
      }

      else
      {
        v15 = -1.0;
        if (v9 < -0.75)
        {
          goto LABEL_18;
        }

        result = 0;
      }

LABEL_22:
      v17 = fabs(v9);
      v18 = fmax(v17 * 0.8, 2.1);
      v19 = v17 * 0.35;
      if (v19 >= 0.95)
      {
        if (v11 < v18)
        {
LABEL_26:
          v20 = v7 > -v18;
          if (v10 >= v19)
          {
            goto LABEL_40;
          }

          goto LABEL_31;
        }

        v20 = 0;
        v21 = 0;
      }

      else
      {
        if (v11 < v18)
        {
          v19 = 0.95;
          goto LABEL_26;
        }

        v20 = 0;
        v21 = 0;
        v19 = 0.95;
      }

      if (v10 >= v19)
      {
        goto LABEL_47;
      }

LABEL_31:
      v22 = v8 <= -v19;
      goto LABEL_44;
    }

    v16 = -1.0;
    if (v8 < -0.75)
    {
      goto LABEL_16;
    }

    result = 0;
    goto LABEL_33;
  }

  if (!a1)
  {
    return 0;
  }

  v16 = 1.0;
  if (v10 > 0.75)
  {
    v8 = v10;
LABEL_16:
    result = *(v3 + 56) < v5 * v16;
    goto LABEL_33;
  }

  result = 0;
  v8 = v10;
LABEL_33:
  v23 = fabs(v8);
  v24 = 0.75;
  v25 = fmax(v23 * 0.45, 0.75);
  v26 = v23 * 0.55;
  if (v26 < 0.75)
  {
    if (v11 >= v25)
    {
      v20 = 0;
      v21 = 0;
      v26 = 0.75;
      goto LABEL_42;
    }

LABEL_38:
    v20 = v7 > -v25;
    if (v12 >= v24)
    {
LABEL_40:
      v21 = 0;
      goto LABEL_47;
    }

    v26 = v24;
    goto LABEL_43;
  }

  if (v11 < v25)
  {
    v24 = v26;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = 0;
LABEL_42:
  if (v12 < v26)
  {
LABEL_43:
    v22 = v9 <= -v26;
LABEL_44:
    v21 = !v22 && v20;
  }

LABEL_47:
  if (*(v3 + 16) == 1)
  {
    return v21 && result;
  }

  return result;
}

unint64_t sub_25112B97C(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_251130B38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  v12 = *(v2 + 24);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  if (v16)
  {
    v17 = 0;
    v18 = __clz(__rbit64(v16));
    v19 = (v16 - 1) & v16;
    v20 = (v14 + 63) >> 6;
LABEL_9:
    v23 = *(v12 + 48);
    v24 = *(v12 + 56);
    v25 = *(v23 + v18);
    v26 = *(v24 + 8 * v18);
    if (!v19)
    {
      goto LABEL_11;
    }

    do
    {
      v27 = v17;
LABEL_15:
      result = v19 - 1;
      v28 = __clz(__rbit64(v19)) | (v27 << 6);
      v19 &= v19 - 1;
      if (v26 < *(v24 + 8 * v28))
      {
        v25 = *(v23 + v28);
        v26 = *(v24 + 8 * v28);
      }
    }

    while (v19);
    while (1)
    {
LABEL_11:
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v27 >= v20)
      {
        break;
      }

      v19 = *(v13 + 8 * v27);
      ++v17;
      if (v19)
      {
        v17 = v27;
        goto LABEL_15;
      }
    }

    if (v25 == 2)
    {
      v32 = &byte_286331670;
      v33 = qword_286331660;
      do
      {
        if (!v33)
        {
          break;
        }

        v34 = *v32++;
        --v33;
      }

      while (v34 != a1);
    }

    else if (v25 == 1)
    {
      v29 = &byte_286331648;
      v30 = qword_286331638;
      do
      {
        if (!v30)
        {
          break;
        }

        v31 = *v29++;
        --v30;
      }

      while (v31 != a1);
    }

    v35 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v35, v4);
    sub_251130AC8();
    v36 = *(v5 + 8);
    v36(v8, v4);
    v37 = sub_251130AB8();
    v36(v11, v4);
    return (v37 & 1) == 0;
  }

  else
  {
    v21 = 0;
    v20 = (v14 + 63) >> 6;
    while (v20 - 1 != v21)
    {
      v17 = v21 + 1;
      v22 = *(v12 + 72 + 8 * v21);
      v16 -= 64;
      ++v21;
      if (v22)
      {
        v19 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) - v16;
        goto LABEL_9;
      }
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_25112BC7C()
{

  v1 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
  v2 = sub_251130B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGPartGestureRecognizer(uint64_t a1)
{
  result = qword_27F41EBE8;
  if (!qword_27F41EBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25112BD74(uint64_t a1)
{
  result = sub_251130B38();
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

BOOL sub_25112BE3C@<W0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  result = sub_25112B6F8(*a1, *(v2 + 24), *(v2 + 32));
  if (result)
  {
    v6 = v4;
  }

  else
  {
    v6 = 5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25112BE94(uint64_t a1)
{
  *(v1 + 16) = 1;
  *(v1 + 24) = sub_251120B48(&unk_2863311E0);
  *(v1 + 32) = xmmword_251133130;
  *(v1 + 48) = xmmword_251133140;
  *(v1 + 64) = 5;
  sub_251130A88();
  *(v1 + 32) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartRepeatTimeout);
  *(v1 + 48) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableShakeVelocity);
  *(v1 + 56) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableNodVelocity);
  return v1;
}

uint64_t sub_25112BF48()
{
  v0 = MEMORY[0x277D07970];

  return sub_25112C558(v0, 212);
}

uint64_t sub_25112BFDC()
{
  v0 = MEMORY[0x277D077D0];

  return sub_25112C558(v0, 316);
}

uint64_t sub_25112C070()
{
  v0 = MEMORY[0x277D07990];

  return sub_25112C558(v0, 531);
}

uint64_t sub_25112C104()
{
  v0 = MEMORY[0x277D078D8];

  return sub_25112C558(v0, 673);
}

uint64_t sub_25112C1F0(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, void, uint64_t))
{
  if (a1 < 0)
  {
    goto LABEL_24;
  }

  v4 = a3;
  v5 = a2;
  v7 = a1;
  v6 = MEMORY[0x277D84F90];
  if (a1)
  {
    v22 = MEMORY[0x277D84F90];
    sub_25111B9A4(0, a1, 0);
    v3 = v22;
    v8 = *(v22 + 16);
    do
    {
      v9 = *(v22 + 24);
      if (v8 >= v9 >> 1)
      {
        sub_25111B9A4((v9 > 1), v8 + 1, 1);
      }

      *(v22 + 16) = v8 + 1;
      *(v22 + 8 * v8++ + 32) = 0;
      --v7;
    }

    while (v7);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v10 = v4(v5, *(v3 + 2), (v3 + 32));
    if (v10)
    {
      v11 = v10;
      sub_251120E74();
      swift_allocError();
      *v12 = v11;
      *(v12 + 4) = 0;
      swift_willThrow();

      return v11;
    }

    v4 = *(v3 + 2);
    if (!v4)
    {
      break;
    }

    sub_25111B8E4(0, v4, 0);
    v14 = 0;
    v11 = v6;
    while (v14 < *(v3 + 2))
    {
      if (!*&v3[8 * v14 + 32])
      {

        sub_251120E74();
        swift_allocError();
        *v21 = 3;
        *(v21 + 4) = 1;
        swift_willThrow();

        return v11;
      }

      v15 = sub_251130FB8();
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v5 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v6 = v15;
        v20 = v16;
        sub_25111B8E4((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v6;
      }

      ++v14;
      *(v11 + 16) = v5;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      if (v4 == v14)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = sub_25112C74C(v3);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25112C454()
{
  v0 = MEMORY[0x277D07890];

  return sub_25112C558(v0, 925);
}

uint64_t sub_25112C4E8()
{
  v0 = MEMORY[0x277D078A8];

  return sub_25112C558(v0, 1109);
}

uint64_t sub_25112C558(uint64_t (*a1)(void *), uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *(v2 + 16);
  v3 = a1(v7);
  if (!v3)
  {
    return swift_deallocClassInstance();
  }

  v5 = v3;
  sub_251120E74();
  swift_allocError();
  *v6 = v5;
  *(v6 + 4) = 0;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25112C6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_25112C700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25112C7C0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25112C7DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
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

uint64_t sub_25112C838(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_25112C894(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25112C900@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HGAudioPlayer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251130EE8();
  v5 = sub_251130EE8();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_2511309B8();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_2511309E8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

id sub_25112CA40(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_25112CB8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2511309E8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  type metadata accessor for HGAudioPlayer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_251130EE8();
  v15 = sub_251130EE8();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return 0;
  }

  sub_2511309B8();

  (*(v3 + 32))(v11, v9, v2);
  (*(v3 + 16))(v6, v11, v2);
  v17 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v18 = sub_25112CA40(v6);
  (*(v3 + 8))(v11, v2);
  return v18;
}

id sub_25112CDCC(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 processingFormat];
  v3 = [v1 length];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_10;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v2 frameCapacity:v3];

  if (v4)
  {
    v15 = 0;
    v5 = [v1 readIntoBuffer:v4 error:&v15];
    v2 = v15;
    if (v5)
    {
      v6 = v15;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  v8 = v2;
  v9 = sub_251130978();

  swift_willThrow();
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1E0, &qword_251132E40);
  sub_25112D38C();
  swift_dynamicCast();
  v10 = v17;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_251131358();

  v15 = 0xD000000000000020;
  v16 = 0x8000000251137EC0;
  v11 = [v10 localizedDescription];
  v12 = sub_251130F18();
  v14 = v13;

  MEMORY[0x25306BDC0](v12, v14);

  result = sub_2511313B8();
  __break(1u);
  return result;
}

id sub_25112CFEC(uint64_t a1, char a2)
{
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v4 = *(qword_27F421A30 + 16);
  v5 = sub_251130EE8();
  LODWORD(v4) = [v4 BOOLForKey_];

  v6 = 0x6D7269666E6F63;
  if (v4)
  {
    v6 = 0x656D697265707865;
    v7 = 0xEC0000006C61746ELL;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (a1 == 1)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a1 == 2)
  {
    if (a2)
    {
LABEL_9:
      v12 = v6;
      v13 = v7;
      v8 = 1936030047;
      v9 = 0xE400000000000000;
LABEL_12:
      MEMORY[0x25306BDC0](v8, v9);
      v10 = sub_25112CB8C(v12, v13);

      return v10;
    }

LABEL_11:
    v12 = v6;
    v13 = v7;
    v8 = 7302751;
    v9 = 0xE300000000000000;
    goto LABEL_12;
  }

  return 0;
}

void sub_25112D144(char a1@<W0>, void *a2@<X8>)
{
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_251130BE8();
  __swift_project_value_buffer(v4, qword_27F421A38);
  v5 = sub_251130BC8();
  v6 = sub_251131178();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_2510F2000, v5, v6, "[HGAudioAssetManager] using inverted tones: %{BOOL}d", v7, 8u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }

  if (a1)
  {
    v8 = sub_25112CB8C(0x6F6E5F70696C62, 0xE700000000000000);
    v9 = sub_25112CDCC(v8);

    v24 = v9;
    v10 = 0x7365795F70696C62;
    v11 = 0xE800000000000000;
  }

  else
  {
    v12 = sub_25112CB8C(0x7365795F70696C62, 0xE800000000000000);
    v9 = sub_25112CDCC(v12);

    v24 = v9;
    v10 = 0x6F6E5F70696C62;
    v11 = 0xE700000000000000;
  }

  v13 = sub_25112CB8C(v10, v11);
  v14 = sub_25112CDCC(v13);

  v15 = v14;
  v16 = sub_25112CFEC(1, a1 & 1);
  v17 = sub_25112CDCC(v16);

  v18 = v17;
  v19 = sub_25112CFEC(2, a1 & 1);
  v20 = sub_25112CDCC(v19);

  v21 = v20;
  v22 = sub_25112CB8C(0x65636E756F6E6E61, 0xED0000706F6F6C5FLL);
  v23 = sub_25112CDCC(v22);

  *a2 = v9;
  a2[1] = v14;
  a2[2] = v17;
  a2[3] = v20;
  a2[4] = v23;
}

unint64_t sub_25112D38C()
{
  result = qword_27F41EBF8;
  if (!qword_27F41EBF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EBF8);
  }

  return result;
}

void sub_25112D3D8()
{
  type metadata accessor for HGDefaults();
  swift_allocObject();
  sub_25112D6F4();
  qword_27F421A30 = v0;
}

unint64_t sub_25112D414(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 4:
    case 16:
    case 18:
      result = 0xD000000000000020;
      break;
    case 5:
    case 7:
    case 22:
    case 23:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 8:
    case 17:
      result = 0xD000000000000021;
      break;
    case 9:
    case 15:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
    case 21:
      result = 0xD000000000000027;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD00000000000002ALL;
      break;
    case 24:
      result = 0xD000000000000022;
      break;
    case 26:
      result = 0xD00000000000002CLL;
      break;
    case 27:
      result = 0xD000000000000029;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25112D6F4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_251130EE8();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *(v0 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC00, &unk_251135360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_251135330;
    *(v4 + 32) = 0xD000000000000014;
    v5 = MEMORY[0x277D839F8];
    *(v4 + 40) = 0x8000000251135960;
    *(v4 + 48) = 0x3FE6666666666666;
    *(v4 + 72) = v5;
    *(v4 + 80) = 0xD000000000000016;
    *(v4 + 88) = 0x8000000251135980;
    *(v4 + 96) = 0x3FF0000000000000;
    *(v4 + 120) = v5;
    *(v4 + 128) = 0xD00000000000001ALL;
    *(v4 + 136) = 0x8000000251135940;
    *(v4 + 144) = 0x3FE999999999999ALL;
    *(v4 + 168) = v5;
    *(v4 + 176) = 0xD000000000000020;
    *(v4 + 184) = 0x80000002511363F0;
    *(v4 + 192) = 0;
    *(v4 + 216) = v5;
    *(v4 + 224) = 0xD000000000000020;
    *(v4 + 232) = 0x8000000251136420;
    *(v4 + 240) = 0;
    *(v4 + 264) = v5;
    *(v4 + 272) = 0xD00000000000002BLL;
    *(v4 + 280) = 0x8000000251136FF0;
    *(v4 + 288) = 0x4010000000000000;
    *(v4 + 312) = v5;
    *(v4 + 320) = 0xD000000000000023;
    *(v4 + 328) = 0x8000000251136450;
    *(v4 + 336) = 0x3FE999999999999ALL;
    *(v4 + 360) = v5;
    *(v4 + 368) = 0xD000000000000023;
    *(v4 + 376) = 0x80000002511356B0;
    *(v4 + 384) = 0x3FD999999999999ALL;
    *(v4 + 408) = v5;
    *(v4 + 416) = 0xD000000000000021;
    *(v4 + 424) = 0x80000002511356E0;
    *(v4 + 432) = 0x4008000000000000;
    *(v4 + 456) = v5;
    *(v4 + 464) = 0xD000000000000024;
    *(v4 + 472) = 0x8000000251137E60;
    v6 = MEMORY[0x277D839B0];
    *(v4 + 480) = 0;
    *(v4 + 504) = v6;
    *(v4 + 512) = 0xD000000000000013;
    *(v4 + 520) = 0x80000002511362A0;
    *(v4 + 552) = v6;
    *(v4 + 528) = 1;
    *(v4 + 560) = 0xD00000000000001ELL;
    *(v4 + 568) = 0x80000002511373B0;
    *(v4 + 600) = v5;
    *(v4 + 576) = 0x3FD999999999999ALL;
    *(v4 + 608) = 0xD00000000000001DLL;
    *(v4 + 616) = 0x80000002511373D0;
    *(v4 + 648) = v5;
    *(v4 + 624) = 0x3FD999999999999ALL;
    *(v4 + 656) = 0xD000000000000015;
    *(v4 + 664) = 0x80000002511373F0;
    v7 = MEMORY[0x277D83B88];
    *(v4 + 696) = MEMORY[0x277D83B88];
    *(v4 + 672) = 8;
    *(v4 + 704) = 0xD000000000000027;
    *(v4 + 712) = 0x8000000251137410;
    *(v4 + 744) = v7;
    *(v4 + 720) = 4;
    *(v4 + 752) = 0xD000000000000024;
    *(v4 + 760) = 0x8000000251137440;
    *(v4 + 792) = v7;
    *(v4 + 768) = 3;
    *(v4 + 800) = 0xD000000000000020;
    *(v4 + 808) = 0x8000000251137470;
    *(v4 + 840) = v5;
    *(v4 + 816) = 0x3FC999999999999ALL;
    *(v4 + 848) = 0xD000000000000021;
    *(v4 + 856) = 0x80000002511375B0;
    *(v4 + 888) = v5;
    *(v4 + 864) = 0x3FE3333333333333;
    *(v4 + 896) = 0xD000000000000020;
    *(v4 + 904) = 0x80000002511375E0;
    *(v4 + 936) = v5;
    *(v4 + 912) = 0x3FE3333333333333;
    *(v4 + 944) = 0xD000000000000018;
    *(v4 + 952) = 0x8000000251137610;
    *(v4 + 984) = v7;
    *(v4 + 960) = 8;
    *(v4 + 992) = 0xD00000000000002ALL;
    *(v4 + 1000) = 0x8000000251137630;
    *(v4 + 1032) = v7;
    *(v4 + 1008) = 4;
    *(v4 + 1040) = 0xD000000000000027;
    *(v4 + 1048) = 0x8000000251137660;
    *(v4 + 1080) = v7;
    *(v4 + 1056) = 3;
    *(v4 + 1088) = 0xD000000000000023;
    *(v4 + 1096) = 0x8000000251137690;
    *(v4 + 1128) = v5;
    *(v4 + 1104) = 0x4000000000000000;
    *(v4 + 1136) = 0xD000000000000023;
    *(v4 + 1144) = 0x80000002511374A0;
    *(v4 + 1176) = v5;
    *(v4 + 1152) = 0x3FE999999999999ALL;
    *(v4 + 1184) = 0xD000000000000022;
    *(v4 + 1192) = 0x80000002511374D0;
    *(v4 + 1224) = v5;
    *(v4 + 1200) = 0x3FE999999999999ALL;
    *(v4 + 1232) = 0xD00000000000001ALL;
    *(v4 + 1240) = 0x8000000251137500;
    *(v4 + 1272) = v7;
    *(v4 + 1248) = 8;
    *(v4 + 1280) = 0xD00000000000002CLL;
    *(v4 + 1288) = 0x8000000251137520;
    *(v4 + 1320) = v7;
    *(v4 + 1296) = 4;
    *(v4 + 1328) = 0xD000000000000029;
    *(v4 + 1336) = 0x8000000251137550;
    *(v4 + 1368) = v7;
    *(v4 + 1344) = 3;
    *(v4 + 1376) = 0xD000000000000025;
    *(v4 + 1384) = 0x8000000251137580;
    *(v4 + 1416) = v5;
    *(v4 + 1392) = 0x4000000000000000;
    v8 = v3;
    sub_2511207D8(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E980, &unk_251134940);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v9 = sub_251130E78();

    [v8 registerDefaults_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25112DC58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25112DCB4()
{
  v0 = sub_251130BE8();
  __swift_allocate_value_buffer(v0, qword_27F421A38);
  __swift_project_value_buffer(v0, qword_27F421A38);
  return sub_251130BD8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_25112DD98(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
  v1 = sub_251130E78();

  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_251130978();

    swift_willThrow();
  }

  return v2;
}

void sub_25112DEA0()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0xD000000000000019, 0x8000000251137FA0);
  v1 = *(v0 + 16);
  v2 = sub_251130EE8();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    v4 = [v3 stringValue];

    v5 = sub_251130F18();
    v7 = v6;

    MEMORY[0x25306BDC0](v5, v7);

    MEMORY[0x25306BDC0](0xD000000000000015, 0x8000000251137FC0);
    v8 = sub_251130EE8();
    v9 = [v1 featureValueForName_];

    if (v9)
    {
      v10 = [v9 dictionaryValue];

      sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
      v11 = sub_251130E88();

      sub_25112E0F0(v11);

      v12 = sub_251130E98();
      v14 = v13;

      MEMORY[0x25306BDC0](v12, v14);

      MEMORY[0x25306BDC0](125, 0xE100000000000000);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25112E0F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E988, &unk_251134960);
    v2 = sub_2511313F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    sub_25112F94C(*(a1 + 48) + 40 * v12, v29);
    v31 = *(*(a1 + 56) + 8 * v12);
    v24 = v29[0];
    v25 = v29[1];
    v26 = v30;
    v13 = v31;
    swift_dynamicCast();
    v22 = 0;
    v23 = 1;
    result = MEMORY[0x25306BEE0](v13, &v22);
    if (v23)
    {
      break;
    }

    v5 &= v5 - 1;
    v14 = v22;

    v15 = v27;
    v16 = v28;
    result = sub_25112EA1C(v27, v28);
    if (v17)
    {
      v9 = (v2[6] + 16 * result);
      *v9 = v15;
      v9[1] = v16;
      v10 = result;

      *(v2[7] + 8 * v10) = v14;
      v8 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v15;
      v18[1] = v16;
      *(v2[7] + 8 * result) = v14;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_22;
      }

      v2[2] = v21;
      v8 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v8;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25112E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC00, &unk_251135360);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_251135370;
  *(inited + 40) = 0x8000000251135550;
  v7 = sub_2510FE944(0, &qword_27F41E518, 0x277CBFEF8);
  v8 = sub_25112E63C(a1);

  *(inited + 48) = sub_25112DD98(v8);
  *(inited + 72) = v7;
  *(inited + 80) = 0x62614C7373616C63;
  *(inited + 88) = 0xEA00000000006C65;
  v9 = sub_251130EE8();

  v10 = [objc_opt_self() featureValueWithString_];

  *(inited + 120) = v7;
  *(inited + 96) = v10;
  v11 = sub_2511207D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E980, &unk_251134940);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  *(v4 + 16) = sub_25112E934(v11);
  return v4;
}

uint64_t sub_25112E63C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E998, &unk_251134980);
    v2 = sub_2511313F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

    swift_dynamicCast();
    v13 = sub_2511310B8();
    result = sub_2511312D8();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 32) = v23;
    *(*(v2 + 56) + 8 * v10) = v13;
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

uint64_t sub_25112E8A8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_25112E934(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_251130E78();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_251130978();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_25112EA1C(uint64_t a1, uint64_t a2)
{
  sub_251131598();
  sub_251130F88();
  v4 = sub_2511315B8();

  return sub_25112ECE4(a1, a2, v4);
}

unint64_t sub_25112EA98(uint64_t a1)
{
  v1 = a1;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  v2 = sub_2511315B8();
  return sub_25112ED9C(v1, v2);
}

unint64_t sub_25112EB00(uint64_t a1)
{
  sub_251131598();
  type metadata accessor for CFString(0);
  sub_251128830();
  sub_251130BA8();
  v2 = sub_2511315B8();

  return sub_25112EE0C(a1, v2);
}

unint64_t sub_25112EB84(uint64_t a1)
{
  sub_251130F18();
  sub_251131598();
  sub_251130F88();
  v2 = sub_2511315B8();

  return sub_25112EEE8(a1, v2);
}

unint64_t sub_25112EC18(uint64_t a1)
{
  v2 = sub_2511312D8();

  return sub_25112EFEC(a1, v2);
}

unint64_t sub_25112EC5C(uint64_t a1)
{
  v1 = a1;
  sub_251131598();
  sub_251111BFC(v1);
  sub_251130F88();

  v2 = sub_2511315B8();

  return sub_25112F0B4(v1, v2);
}

unint64_t sub_25112ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251131518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25112ED9C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25112EE0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_251128830();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251130B98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25112EEE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_251130F18();
      v8 = v7;
      if (v6 == sub_251130F18() && v8 == v9)
      {
        break;
      }

      v11 = sub_251131518();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25112EFEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25112F94C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25306C100](v9, a1);
      sub_25112F9A8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25112F0B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF706D617473656DLL;
      v8 = 0x6954726F736E6553;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000251135580;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1482908481;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1499685697;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1516462913;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x586F727947;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x596F727947;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x5A6F727947;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1819045714;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6863746950;
          break;
        case 0xA:
          v7 = 0xE300000000000000;
          v8 = 7823705;
          break;
        case 0xB:
          v7 = 0xE200000000000000;
          v8 = 30801;
          break;
        case 0xC:
          v7 = 0xE200000000000000;
          v8 = 31057;
          break;
        case 0xD:
          v7 = 0xE200000000000000;
          v8 = 31313;
          break;
        case 0xE:
          v7 = 0xE200000000000000;
          v8 = 30545;
          break;
        case 0xF:
          v8 = 0x6E696769724F7369;
          v7 = 0xEA00000000006C61;
          break;
        default:
          break;
      }

      v9 = 0x6954726F736E6553;
      v10 = 0xEF706D617473656DLL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000251135580;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v10 = 0xE400000000000000;
          if (v8 != 1482908481)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v10 = 0xE400000000000000;
          if (v8 != 1499685697)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v10 = 0xE400000000000000;
          if (v8 != 1516462913)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v10 = 0xE500000000000000;
          if (v8 != 0x586F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v10 = 0xE500000000000000;
          if (v8 != 0x596F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v10 = 0xE500000000000000;
          if (v8 != 0x5A6F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v10 = 0xE400000000000000;
          if (v8 != 1819045714)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v10 = 0xE500000000000000;
          if (v8 != 0x6863746950)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v10 = 0xE300000000000000;
          v9 = 7823705;
          goto LABEL_47;
        case 11:
          v10 = 0xE200000000000000;
          if (v8 != 30801)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v10 = 0xE200000000000000;
          if (v8 != 31057)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v10 = 0xE200000000000000;
          if (v8 != 31313)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v10 = 0xE200000000000000;
          if (v8 != 30545)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v10 = 0xEA00000000006C61;
          if (v8 != 0x6E696769724F7369)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v9)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_251131518();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

void sub_25112F514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = sub_251130EE8();
  v4 = &off_2796AC000;
  v45 = v2;
  v5 = [v2 featureValueForName_];

  if (!v5)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v6 = [v5 dictionaryValue];

  sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
  v7 = sub_251130E88();

  v8 = sub_25112E0F0(v7);

  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v46 = v8;

  v14 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          goto LABEL_17;
        }

        v12 = *(v9 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = (*(v46 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v46 + 56) + 8 * v16);
    v21 = *(a2 + 16);

    v22 = sub_251130EE8();
    v23 = v4;
    v24 = [v21 v4[213]];

    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = [v24 dictionaryValue];

    v26 = sub_251130E88();
    v27 = sub_25112E0F0(v26);

    if (!*(v27 + 16))
    {
      break;
    }

    v28 = sub_25112EA1C(v18, v19);
    if ((v29 & 1) == 0)
    {
      break;
    }

    v12 &= v12 - 1;
    v30 = *(*(v27 + 56) + 8 * v28);

    v4 = v23;
    if (vabdd_f64(v30, v20) > 0.01)
    {
      goto LABEL_17;
    }
  }

  v4 = v23;
LABEL_17:

  v31 = sub_251130EE8();
  v32 = v4;
  v33 = [v45 v4[213]];

  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = [v33 stringValue];

  v35 = sub_251130F18();
  v37 = v36;

  v38 = *(a2 + 16);
  v39 = sub_251130EE8();
  v40 = [v38 v32 + 1400];

  if (!v40)
  {
    goto LABEL_27;
  }

  v41 = [v40 stringValue];

  v42 = sub_251130F18();
  v44 = v43;

  if (v35 == v42 && v37 == v44)
  {
  }

  else
  {
    sub_251131518();
  }
}

void sub_25112FA00(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_25112FAF4()
{
  sub_251131358();

  v1 = [*(v0 + OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager) isDeviceMotionActive];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 5457241;
  }

  else
  {
    v3 = 20302;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  return 0xD000000000000016;
}

void sub_25112FBA4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager];
  if (([v2 isDeviceMotionActive] & 1) == 0)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_251130BE8();
    __swift_project_value_buffer(v3, qword_27F421A38);
    v4 = sub_251130BC8();
    v5 = sub_251131178();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v12);
      _os_log_impl(&dword_2510F2000, v4, v5, "HGBuiltinMotionDataProvider:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x25306CC10](v7, -1, -1);
      MEMORY[0x25306CC10](v6, -1, -1);
    }

    [v2 setDeviceMotionUpdateInterval_];
    v8 = *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v12[4] = sub_2511304AC;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_25112FA00;
    v12[3] = &block_descriptor_7;
    v10 = _Block_copy(v12);
    v11 = v1;

    [v2 startDeviceMotionUpdatesToQueue:v8 withHandler:v10];
    _Block_release(v10);
  }
}

void sub_25112FDE4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_251130B38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v12 = sub_251130BE8();
    __swift_project_value_buffer(v12, qword_27F421A38);
    v13 = a2;
    v14 = sub_251130BC8();
    v15 = sub_251131188();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v47 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_251131548();
      v20 = sub_2510FAC50(v18, v19, &v47);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2510F2000, v14, v15, "HGBuiltinMotionDataProviderError: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x25306CC10](v17, -1, -1);
      MEMORY[0x25306CC10](v16, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v21 = v8;
    v22 = a1;
    sub_251130B08();
    sub_251130AE8();
    v24 = v23;
    (*(v7 + 8))(v10, v21);
    sub_251112740(v22, &v40, v24);

    v51 = v44;
    v52 = v45;
    v53[0] = v46[0];
    *(v53 + 9) = *(v46 + 9);
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    sub_251130C28();
    v37 = v44;
    v38 = v45;
    v39[0] = v46[0];
    *(v39 + 9) = *(v46 + 9);
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    nullsub_1();
    v25 = (a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v26 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
    v51 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
    v52 = v26;
    v53[0] = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
    *(v53 + 9) = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
    v27 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
    v47 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v48 = v27;
    v28 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
    v49 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
    v50 = v28;
    v29 = v36;
    v25[2] = v35;
    v25[3] = v29;
    v30 = v34;
    *v25 = v33;
    v25[1] = v30;
    *(v25 + 105) = *(v39 + 9);
    v31 = v39[0];
    v25[5] = v38;
    v25[6] = v31;
    v25[4] = v37;
    sub_2511082D0(&v47);
  }
}

id sub_25113016C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager);
  result = [v1 isDeviceMotionActive];
  if (result)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_251130BE8();
    __swift_project_value_buffer(v3, qword_27F421A38);
    v4 = sub_251130BC8();
    v5 = sub_251131178();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2510FAC50(0x2928706F7473, 0xE600000000000000, &v8);
      _os_log_impl(&dword_2510F2000, v4, v5, "HGBuiltinMotionDataProviderError:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x25306CC10](v7, -1, -1);
      MEMORY[0x25306CC10](v6, -1, -1);
    }

    return [v1 stopDeviceMotionUpdates];
  }

  return result;
}

id sub_251130384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGBuiltinMotionDataProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGBuiltinMotionDataProvider(uint64_t a1)
{
  result = qword_27F41EC08;
  if (!qword_27F41EC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251130474()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25113072C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC18, &qword_251135518);
    v3 = sub_251131328();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_251131598();

      sub_251130F88();
      result = sub_2511315B8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_251131518();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}