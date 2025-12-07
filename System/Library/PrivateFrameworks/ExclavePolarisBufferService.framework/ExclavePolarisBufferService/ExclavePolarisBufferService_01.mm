unint64_t sub_24A1E7480()
{
  result = qword_27EF39A90;
  if (!qword_27EF39A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A90);
  }

  return result;
}

uint64_t SegmentAccess.__allocating_init(size:)(unint64_t a1)
{
  v2 = swift_allocObject();
  SegmentAccess.init(size:)(a1);
  return v2;
}

unint64_t SegmentAccess.init(size:)(unint64_t result)
{
  v2 = result;
  v3 = result;
  if ((result & 0x3FFF) != 0)
  {
    if (result > 0xFFFFFFFFFFFFBFFFLL)
    {
      goto LABEL_7;
    }

    v3 = (result & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = swift_slowAlloc();
    v1[4] = v4;
    v1[5] = v4 + v3;
    v1[6] = v4;
    v1[7] = v4 + v3;
    v1[2] = v3;
    v1[3] = v2;
    v1[8] = sub_24A1E79A0(0xFFFFFFFFuLL);
    type metadata accessor for ExclavePolarisBufferServiceLog();
    v5 = swift_allocObject();
    *(v5 + 16) = 0xD000000000000017;
    *(v5 + 24) = 0x800000024A1ED570;
    *(v5 + 32) = 1;
    v1[9] = v5;

    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1ED590);
    v6 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v6);

    MEMORY[0x24C2131D0](0x657A697320666F20, 0xEA0000000000203ALL);
    v7 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v7);

    MEMORY[0x24C2131D0](0xD000000000000016, 0x800000024A1ED5C0);
    v8 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v8);

    MEMORY[0x24C2131D0](544497952, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A88, &qword_24A1EB1C0);
    v9 = sub_24A1E99A4();
    MEMORY[0x24C2131D0](v9);

    sub_24A1E7E74(0, 0xE000000000000000, 0x7A69732874696E69, 0xEB00000000293A65, 57);

    return v1;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void *SegmentAccess.deinit()
{

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000021, 0x800000024A1ED5E0);
  v1 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v1);

  MEMORY[0x24C2131D0](0x657A697320666F20, 0xEA0000000000203ALL);
  v2 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v2);

  MEMORY[0x24C2131D0](544497952, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A88, &qword_24A1EB1C0);
  sub_24A1E9A64();
  sub_24A1E7E74(0, 0xE000000000000000, 0x74696E696564, 0xE600000000000000, 63);

  v3 = *(v0 + 32);
  if (v3)
  {
    MEMORY[0x24C2136A0](v3, -1, -1);
  }

  return v0;
}

uint64_t SegmentAccess.__deallocating_deinit()
{
  SegmentAccess.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A1E79A0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x24C2136B0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x24C2136B0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24A1E7A90()
{
  result = qword_27EF39A98;
  if (!qword_27EF39A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A98);
  }

  return result;
}

ExclavePolarisBufferService::ExPBSResourcePermission_optional __swiftcall ExPBSResourcePermission.init(rawValue:)(Swift::UInt32 rawValue)
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

uint64_t sub_24A1E7B08()
{
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

uint64_t sub_24A1E7B7C(uint64_t a1)
{
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

_DWORD *sub_24A1E7BC0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
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

uint64_t ExPBSResourcePermission.description.getter()
{
  if (*v0)
  {
    return 0x7469725764616552;
  }

  else
  {
    return 0x796C6E4F64616552;
  }
}

unint64_t sub_24A1E7C30()
{
  result = qword_27EF39AA0;
  if (!qword_27EF39AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AA0);
  }

  return result;
}

uint64_t sub_24A1E7C84()
{
  if (*v0)
  {
    return 0x7469725764616552;
  }

  else
  {
    return 0x796C6E4F64616552;
  }
}

uint64_t ExPBSResult.hashValue.getter()
{
  v1 = *v0;
  sub_24A1E9B84();
  MEMORY[0x24C2133B0](v1);
  return sub_24A1E9BB4();
}

unint64_t sub_24A1E7D64()
{
  result = qword_27EF39AA8;
  if (!qword_27EF39AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AA8);
  }

  return result;
}

uint64_t PolarisSharedResourceInfo.init(resourceId:segAccess:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24A1E7DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A1E7E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A1E7E94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 32) == 1)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24A1EA010;
    sub_24A1E9A34();

    MEMORY[0x24C2131D0](*(v6 + 16), *(v6 + 24));
    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    MEMORY[0x24C2131D0](a3, a4);
    MEMORY[0x24C2131D0](58, 0xE100000000000000);
    v13 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v13);

    MEMORY[0x24C2131D0](2112032, 0xE300000000000000);
    MEMORY[0x24C2131D0](a6, 0xE500000000000000);
    MEMORY[0x24C2131D0](8285, 0xE200000000000000);
    MEMORY[0x24C2131D0](v10, a2);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = 91;
    *(v12 + 40) = 0xE100000000000000;
    sub_24A1E9B54();
  }

  return result;
}

uint64_t sub_24A1E8044()
{

  return swift_deallocClassInstance();
}

char *sub_24A1E80D4(char *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = 0;
  if (a3 && a4 && result)
  {
    if (a2 - result >= 1)
    {
      v5 = a3 * a4;
      if ((v5 & 0xFFFFFFFF00000000) == 0)
      {
        if (a2 - result < v5)
        {
          v4 = 1;
          goto LABEL_9;
        }

        v8 = a4;
        v9 = result;
        result = sub_24A1DB8BC(0, 1, 1, MEMORY[0x277D84F90]);
        v11 = a3;
        v7 = result;
        v12 = v9;
        v13 = 0;
        while (1)
        {
          v15 = *(v7 + 2);
          v14 = *(v7 + 3);
          if (v15 >= v14 >> 1)
          {
            v17 = v11;
            result = sub_24A1DB8BC((v14 > 1), v15 + 1, 1, v7);
            v11 = v17;
            v7 = result;
            v12 = v9;
          }

          *(v7 + 2) = v15 + 1;
          v16 = &v7[16 * v15];
          *(v16 + 4) = &v12[v13];
          *(v16 + 5) = &v9[v8 + v13];
          if (__OFADD__(v13, v8))
          {
            break;
          }

          v13 += v8;
          if (!--v11)
          {
            return v7;
          }
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v4 = 0;
  }

LABEL_9:
  sub_24A1E8220();
  swift_allocError();
  *v6 = v4;
  swift_willThrow();
  return v7;
}

unint64_t sub_24A1E8220()
{
  result = qword_27EF39AB0;
  if (!qword_27EF39AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AB0);
  }

  return result;
}

unint64_t sub_24A1E8288()
{
  result = qword_27EF39AB8;
  if (!qword_27EF39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AB8);
  }

  return result;
}

uint64_t _s27ExclavePolarisBufferService0abcD12ResultPublicO4fromAC9Tightbeam0H7DecoderVz_tSo10tb_error_taYKcfC@<X0>(char *a1@<X8>)
{
  result = sub_24A1E98D4();
  if (result == 1)
  {
    v3 = 0;
LABEL_5:
    *a1 = v3;
    return result;
  }

  if (result == 2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000038, 0x800000024A1ED770);
  v4 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v4);

  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1E8498(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_24A1E940C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_24A1E940C((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 4 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_24A1E861C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A1E9974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  sub_24A1E9994();
  swift_allocObject();
  v10 = sub_24A1E9984();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v10;
  *a2 = v9;
  return result;
}

uint64_t sub_24A1E874C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v5 = v3;
  v99 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v95 = &v92 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v98 = &v92 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v97 = &v92 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v94 = &v92 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v93 = &v92 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v92 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v92 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v92 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v92 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v92 - v43;
  v45 = sub_24A1E9954();
  v103 = *(v45 - 8);
  v46 = *(v103 + 56);
  v106 = v44;
  v107 = v45;
  v100 = v46;
  v101 = v103 + 56;
  (v46)(v44, 1, 1);
  v47 = sub_24A1E96C0();
  v48 = v5[6];
  v105 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v48);
  v49 = sub_24A1E98E4();
  v50 = v47;
  if (v47 > 4u)
  {
    if (v47 <= 6u)
    {
      v60 = v107;
      if (v47 != 5)
      {
        (*(v105 + 80))(v49, v48);
        v79 = v96;
LABEL_38:
        v86 = v104;
        sub_24A1E98F4();
        if (!v86)
        {
          v105 = 0;
          v100(v79, 0, 1, v60);
          v58 = *(v103 + 48);
          v59 = v106;
          if (v58(v106, 1, v60) != 1)
          {
            sub_24A1E97A0(v59);
          }

          sub_24A1E9808(v79, v59);
          if (!v58(v59, 1, v60))
          {
            sub_24A1E9924();
          }

          goto LABEL_51;
        }

        goto LABEL_39;
      }

      v76 = v49;
      v77 = sub_24A1E98B4();
      (*(v105 + 16))(v76, v77, v48);
    }

    else
    {
      v60 = v107;
      if (v47 == 7)
      {
        (*(v105 + 72))(v49, v48);
        v79 = v95;
        goto LABEL_38;
      }

      v61 = v49;
      if (v50 == 8)
      {
        v62 = sub_24A1E98C4();
        v63 = sub_24A1E98E4();
        MEMORY[0x28223BE20](v63, v64);
        *(&v92 - 2) = a1;
        v65 = v104;
        v67 = sub_24A1E8498(sub_24A1E9878, (&v92 - 4), 0, v66);
        (*(v105 + 64))(v61, v62, v67, v48);

        v37 = v98;
        sub_24A1E98F4();
        if (!v65)
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      v82 = sub_24A1E98B4();
      v83 = sub_24A1E98D4();
      (*(v105 + 48))(v61, v82, v83, v48);
      v37 = v94;
    }

    v65 = v104;
    sub_24A1E98F4();
    if (!v65)
    {
LABEL_33:
      v105 = v65;
      v100(v37, 0, 1, v60);
      v58 = *(v103 + 48);
      v59 = v106;
      if (v58(v106, 1, v60) != 1)
      {
        sub_24A1E97A0(v59);
      }

      v84 = v37;
LABEL_50:
      sub_24A1E9808(v84, v59);
LABEL_51:
      v87 = (v58)(v59, 1, v60);
      v88 = v87;
      if (v87 == 1)
      {
        v89 = v99;
      }

      else
      {
        v89 = v99;
        if (v87)
        {
          sub_24A1E97A0(v59);
          v88 = 1;
        }

        else
        {
          sub_24A1E9944();
        }
      }

      v90 = sub_24A1E9964();
      return (*(*(v90 - 8) + 56))(v89, v88, 1, v90);
    }

LABEL_39:
    v75 = v108;
    v59 = v106;
    result = (*(v103 + 48))(v106, 1, v60);
    goto LABEL_40;
  }

  if (v47 > 1u)
  {
    if (v47 == 2)
    {
      (*(v105 + 24))(v49, v48);
      v78 = v104;
      sub_24A1E98F4();
      if (!v78)
      {
        v105 = 0;
        v60 = v107;
        v100(v33, 0, 1, v107);
        v58 = *(v103 + 48);
        v59 = v106;
        if (v58(v106, 1, v60) != 1)
        {
          sub_24A1E97A0(v59);
        }

        sub_24A1E9808(v33, v59);
        if (!v58(v59, 1, v60))
        {
          sub_24A1E9914();
        }

        goto LABEL_51;
      }

      goto LABEL_30;
    }

    v51 = v49;
    if (v50 == 3)
    {
      v52 = sub_24A1E98D4();
      v53 = sub_24A1E98D4();
      v54 = sub_24A1E98D4();
      v55 = sub_24A1E98D4();
      (*(v105 + 8))(v51, v52, v53, v54, v55, v48);
      v56 = v104;
      sub_24A1E98F4();
      if (!v56)
      {
        v105 = 0;
        v57 = v107;
        v100(v41, 0, 1, v107);
        v58 = *(v103 + 48);
        v59 = v106;
        if (v58(v106, 1, v57) != 1)
        {
          sub_24A1E97A0(v59);
        }

        sub_24A1E9808(v41, v59);
        v60 = v107;
        if (!v58(v59, 1, v107))
        {
          sub_24A1E9904();
        }

        goto LABEL_51;
      }

      goto LABEL_30;
    }

    v80 = sub_24A1E98C4();
    (*(v105 + 32))(v51, v80, v48);
    v81 = v104;
    sub_24A1E98F4();
    if (v81)
    {
LABEL_30:
      v75 = v108;
      v59 = v106;
      result = (*(v103 + 48))(v106, 1, v107);
      goto LABEL_40;
    }

    v105 = 0;
    v60 = v107;
    v100(v29, 0, 1, v107);
    v58 = *(v103 + 48);
    v59 = v106;
    if (v58(v106, 1, v60) != 1)
    {
      sub_24A1E97A0(v59);
    }

    v84 = v29;
    goto LABEL_50;
  }

  v68 = v49;
  v60 = v107;
  if (v47)
  {
    v85 = sub_24A1E98B4();
    (*(v105 + 40))(v68, v85, v48);
    v79 = v93;
    goto LABEL_38;
  }

  v69 = sub_24A1E98C4();
  v70 = sub_24A1E98D4();
  result = (*(v105 + 56))(v68, v69, v70, v48);
  v72 = result;
  v73 = *(result + 16);
  if (v73)
  {
    v59 = v106;
    v74 = v97;
    if ((v73 - 0x2000000000000000) < 0xE000000000000001)
    {
      goto LABEL_72;
    }

    if (__OFADD__(4 * v73, 8))
    {
      __break(1u);
      goto LABEL_59;
    }
  }

  else
  {
    v59 = v106;
    v74 = v97;
  }

  v4 = v104;
  sub_24A1E98F4();
  if (!v4)
  {
LABEL_59:
    v105 = v4;
    v100(v74, 0, 1, v60);
    v58 = *(v103 + 48);
    if (v58(v59, 1, v60) != 1)
    {
      sub_24A1E97A0(v59);
    }

    sub_24A1E9808(v74, v59);
    result = (v58)(v59, 1, v60);
    if (result)
    {
      if (!v73)
      {
        goto LABEL_70;
      }
    }

    else
    {
      result = sub_24A1E9934();
      if (!v73)
      {
LABEL_70:

        goto LABEL_51;
      }
    }

    v91 = 0;
    while (v91 < *(v72 + 16))
    {
      result = (v58)(v59, 1, v60);
      if (!result)
      {
        result = sub_24A1E9924();
      }

      if (v73 == ++v91)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v75 = v108;

  result = (*(v103 + 48))(v59, 1, v60);
LABEL_40:
  if (result != 1)
  {
    result = sub_24A1E97A0(v59);
  }

  *v102 = v75;
  return result;
}

uint64_t sub_24A1E92C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E9304@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_24A1E874C(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_24A1E93B8()
{
  result = qword_27EF39AC0;
  if (!qword_27EF39AC0)
  {
    type metadata accessor for ExclavePolarisBuffer.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39AC0);
  }

  return result;
}

char *sub_24A1E940C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A1E942C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A1E942C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39998, &unk_24A1EB770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_24A1E9530(uint64_t a1)
{
  if (a1 > 0x3F4F0C8EBCE950A3)
  {
    if (a1 <= 0x62FB435EF3131BCDLL)
    {
      if (a1 == 0x3F4F0C8EBCE950A4)
      {
        return 8;
      }

      if (a1 == 0x502D32A0904E2C46)
      {
        return 9;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x62FB435EF3131BCELL:
          return 5;
        case 0x6629F11D436BF7E5:
          return 4;
        case 0x66D712D799DB8F14:
          return 0;
      }
    }
  }

  else if (a1 <= 0xD3E70D696AC2B481)
  {
    if (a1 == 0x88A70EED8B2265B6)
    {
      return 3;
    }

    if (a1 == 0xC4A5D4B23BAA9E2ELL)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xD3E70D696AC2B482:
        return 6;
      case 0xD7C1DC0BE5F9A8EELL:
        return 1;
      case 0x3E6CB01191DB5DBALL:
        return 7;
    }
  }

  return 10;
}

uint64_t sub_24A1E96C0()
{
  v0 = sub_24A1E98E4();
  result = sub_24A1E9530(v0);
  if (result == 10)
  {
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000033, 0x800000024A1ED890);
    v2 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v2);

    result = sub_24A1E9A74();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1E97A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A1E9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39AC8, &qword_24A1EB768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A1E9878@<X0>(_DWORD *a1@<X8>)
{
  result = sub_24A1E98D4();
  *a1 = result;
  return result;
}