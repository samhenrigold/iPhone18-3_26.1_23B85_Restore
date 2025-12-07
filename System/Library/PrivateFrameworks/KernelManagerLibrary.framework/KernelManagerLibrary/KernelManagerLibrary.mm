uint64_t sub_2557873E0()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D2DB8);
  __swift_project_value_buffer(v0, qword_27F7D2DB8);
  return sub_2557B0B28();
}

uint64_t sub_25578745C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = sub_25578BC94(0x65726F634D414C53, 0xE90000000000005FLL, a1, a2);
  if ((v5 & 1) == 0)
  {
    sub_2557B0EF8();

    MEMORY[0x259C40650](a1, v3);
    v3 = 0xD000000000000029;
    sub_25578AA30();
    swift_allocError();
    *v19 = 0xD000000000000029;
    *(v19 + 8) = 0x80000002557B3160;
    *(v19 + 16) = 3;
    swift_willThrow();
    return v3;
  }

  v27[0] = 95;
  v27[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v5, v6);
  v26[2] = v27;

  v8 = sub_255789120(0x7FFFFFFFFFFFFFFFLL, 1, sub_25578B004, v26, a1, v3, v7);
  if (v8[2] != 3)
  {

    sub_25578AA30();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = v3;
    *(v20 + 16) = 3;
    swift_willThrow();

    return v3;
  }

  v9 = v8[8];
  v10 = v8[9];
  v11 = v8[10];
  v12 = v8[11];
  v13 = v8;

  v14 = v9;
  v3 = v2;
  v15 = MEMORY[0x259C40600](v14, v10, v11, v12);
  v17 = v16;

  result = sub_25578A664(v15, v17);
  if (v2)
  {

    return v3;
  }

  if (v13[2] >= 3uLL)
  {
    v3 = result;
    v21 = v13;
    v22 = v13[12];
    v23 = v21[13];
    v24 = v21[14];
    v25 = v21[15];

    MEMORY[0x259C40600](v22, v23, v24, v25);

    return v3;
  }

  __break(1u);
  return result;
}

void sub_2557876D0(uint64_t a1, unint64_t a2)
{
  v5 = sub_25578BC94(0x6B7061634D414C53, 0xE90000000000005FLL, a1, a2);
  if ((v5 & 1) == 0)
  {
    sub_2557B0EF8();

    MEMORY[0x259C40650](a1, a2);
    sub_25578AA30();
    swift_allocError();
    *v29 = 0xD000000000000029;
    *(v29 + 8) = 0x80000002557B3110;
    *(v29 + 16) = 3;
    swift_willThrow();
    return;
  }

  v44[0] = 95;
  v44[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v5, v6);
  v43[2] = v44;

  v8 = sub_255789120(0x7FFFFFFFFFFFFFFFLL, 1, sub_25578AA84, v43, a1, a2, v7);
  if (v8[2] != 4)
  {

    sub_25578AA30();
    swift_allocError();
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = 3;
    swift_willThrow();

    return;
  }

  v9 = v2;
  v11 = v8[12];
  v10 = v8[13];
  v12 = v8[14];
  v13 = v8[15];
  v14 = v8;

  v15 = MEMORY[0x259C40600](v11, v10, v12, v13);
  v17 = v16;

  if (sub_25578BC94(49, 0xE100000000000000, v15, v17))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;

    v19 = sub_2557A07AC(15, sub_25578AAD8, v18, 0);
    v21 = v20;
    sub_2557B09D8();
    sub_25578AAE0(v19, v21);
    if (v14[2] >= 2uLL)
    {
      v22 = v14[8];
      v23 = v14[9];
      v24 = v14[10];
      v25 = v14[11];

      v26 = MEMORY[0x259C40600](v22, v23, v24, v25);
      v28 = v27;

      sub_25578A664(v26, v28);
      if (!v9)
      {
        return;
      }

LABEL_14:

      return;
    }

    __break(1u);
  }

  else if (qword_27F7D2DB0 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v31 = sub_2557B0B38();
  __swift_project_value_buffer(v31, qword_27F7D2DB8);

  v32 = sub_2557B0B18();
  v33 = sub_2557B0DD8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_2557AAA60(v15, v17, v44);
    _os_log_impl(&dword_255786000, v32, v33, "unexpected capk bundle id format: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x259C40F40](v35, -1, -1);
    MEMORY[0x259C40F40](v34, -1, -1);
  }

  if (v14[2] < 2uLL)
  {
    __break(1u);
    return;
  }

  v36 = v14[8];
  v37 = v14[9];
  v38 = v14[10];
  v39 = v14[11];

  v40 = MEMORY[0x259C40600](v36, v37, v38, v39);
  v42 = v41;

  sub_25578A664(v40, v42);
  if (v9)
  {
    goto LABEL_14;
  }
}

uint64_t sub_255787B44()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_2557B0948();
  v1 = sub_2557B0C08();

  v12[0] = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:v12];

  v3 = v12[0];
  if (v2)
  {
    type metadata accessor for FileAttributeKey();
    sub_25578AFC0(&qword_27F7D2E70, &unk_2557B19C8);
    v4 = sub_2557B0BD8();
    v5 = v3;

    if (*(v4 + 16) && (v6 = sub_2557895C4(*MEMORY[0x277CCA1C0]), (v7 & 1) != 0))
    {
      sub_25578AC88(*(v4 + 56) + 32 * v6, v12);

      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v9 = v12[0];
    v10 = sub_2557B0908();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_255787D00()
{
  v1 = type metadata accessor for SLAMScript(0);
  v2 = *(v0 + *(v1 + 24));
  if (v2 <= 3)
  {
LABEL_2:
    v9 = sub_2557AE338(v0);
    v11 = v10;
    sub_2557A594C(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25578AB8C();
    v12 = sub_2557B0BF8();
    sub_25578AAE0(v9, v11);
LABEL_12:

    return v12;
  }

  if (*(v0 + *(v1 + 24)) > 5u)
  {
    if (v2 == 6)
    {
      return 1684631668;
    }

    goto LABEL_2;
  }

  if (v2 == 4)
  {
    result = [*(v0 + *(v1 + 28)) scriptName];
    if (result)
    {
      v4 = result;
      v5 = sub_2557B0C38();
      v7 = v6;

      sub_25578745C(v5, v7);
LABEL_11:
      v12 = v8;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    result = [*(v0 + *(v1 + 28)) scriptName];
    if (result)
    {
      v13 = result;
      v14 = sub_2557B0C38();
      v16 = v15;

      sub_2557876D0(v14, v16);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255787EDC()
{
  v1 = type metadata accessor for SLAMScript(0);
  v2 = *(v0 + *(v1 + 24));
  result = 4;
  if (((1 << v2) & 0xCF) == 0)
  {
    if (v2 == 4)
    {
      result = [*(v0 + *(v1 + 28)) scriptName];
      if (result)
      {
        v4 = result;
        v5 = sub_2557B0C38();
        v7 = v6;

        v8 = sub_25578745C(v5, v7);
LABEL_5:
        v9 = v8;

        return v9;
      }

      __break(1u);
    }

    else
    {
      result = [*(v0 + *(v1 + 28)) scriptName];
      if (result)
      {
        v10 = result;
        v11 = sub_2557B0C38();
        v13 = v12;

        sub_2557876D0(v11, v13);
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25578800C()
{
  v1 = *(v0 + *(type metadata accessor for SLAMScript(0) + 24)) - 4;
  result = sub_255787B44();
  if (v1 < 3)
  {
    v3 = result + 127;
    if (result >= 0)
    {
      v3 = result;
    }

    if (result >= 0x8000)
    {
      return 255;
    }

    if (result >= -127)
    {
      return v3 >> 7;
    }

    goto LABEL_17;
  }

  v4 = result - 512000;
  if (__OFSUB__(result, 512000))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = (result - 510977);
  if (v4 >= 0)
  {
    v5 = result - 512000;
  }

  v6 = v5 >> 10;
  if (v4 < -1023)
  {
    LODWORD(v6) = 0;
  }

  if (v4 < 0x40000)
  {
    return v6;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_2557880A8()
{
  type metadata accessor for AnalyticsSLAMExecute();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0x4553646F72507369;
  *(result + 32) = 0xE800000000000000;
  *(result + 40) = 0x6F57737574617453;
  *(result + 48) = 0xEA00000000006472;
  *(result + 56) = 0x657079544D414C53;
  *(result + 64) = 0xE800000000000000;
  strcpy((result + 72), "SLAMLoadResult");
  *(result + 87) = -18;
  strcpy((result + 88), "SLAMLoadTime");
  *(result + 101) = 0;
  *(result + 102) = -5120;
  *(result + 104) = 0x657A69534D414C53;
  *(result + 112) = 0xE800000000000000;
  strcpy((result + 120), "SLAMIdentifier");
  *(result + 135) = -18;
  strcpy((result + 136), "TargetKernel");
  *(result + 149) = 0;
  *(result + 150) = -5120;
  *(result + 152) = 0xD000000000000011;
  *(result + 160) = 0x80000002557B3190;
  *(result + 168) = 0;
  qword_27F7D32A0 = result;
  return result;
}

void sub_2557881D4(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E28, &qword_2557B1818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2557B1760;
  v9 = v3[4];
  *(inited + 32) = v3[3];
  *(inited + 40) = v9;

  *(inited + 48) = sub_2557B0DA8();
  v10 = v3[8];
  *(inited + 56) = v4[7];
  *(inited + 64) = v10;
  v11 = type metadata accessor for SLAMScript(0);
  v12 = *(v11 + 6);
  v13 = 0x108070604050203uLL >> (8 * *(a1 + v12));

  *(inited + 72) = sub_2557B1008();
  v14 = v4[10];
  *(inited + 80) = v4[9];
  *(inited + 88) = v14;

  [a2 outcome];
  *(inited + 96) = sub_2557B1008();
  v15 = v4[12];
  *(inited + 104) = v4[11];
  *(inited + 112) = v15;
  v16 = a3 * 1000.0 / 250.0;
  if (v16 <= 255.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(a3 * 1000.0 / 250.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -1.0)
    {
      if (v16 < 256.0)
      {
        goto LABEL_5;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_5:

  *(inited + 120) = sub_2557B1008();
  v17 = v4[14];
  *(inited + 128) = v4[13];
  *(inited + 136) = v17;

  sub_25578800C();
  *(inited + 144) = sub_2557B1008();
  v18 = v4[16];
  *(inited + 152) = v4[15];
  *(inited + 160) = v18;

  sub_255787D00();
  v19 = sub_2557B0C08();

  *(inited + 168) = v19;
  v13 = sub_25578A844(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E30, &unk_2557B1820);
  swift_arrayDestroy();
  if (![a2 outcome])
  {
    goto LABEL_17;
  }

  inited = v11;
  v11 = &off_2797F4000;
  v20 = [a2 messages];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = [a2 messages];
  if (!v21)
  {
    goto LABEL_41;
  }

  v22 = v21;
  sub_25578A9E8(0, &qword_27F7D2E40, 0x277D82408);
  v23 = sub_2557B0D88();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_38:
  v24 = sub_2557B0F28();
LABEL_10:

  if (v24)
  {
    v25 = v4[6];
    v68 = v4[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2557B1770;

    v27 = [a2 v11[89]];
    if (!v27)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v27;
    v29 = sub_2557B0D88();

    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x259C40890](0, v29);
      v11 = inited;
      goto LABEL_15;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = inited;
      v30 = *(v29 + 32);
LABEL_15:

      v31 = [v30 statusWord];

      v32 = MEMORY[0x277D84CB8];
      *(v26 + 56) = MEMORY[0x277D84C58];
      *(v26 + 64) = v32;
      *(v26 + 32) = v31;
      sub_2557B0C48();
      v33 = sub_2557B0C08();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v13;
      sub_25578A0CC(v33, v68, v25, isUniquelyReferenced_nonNull_native);

      goto LABEL_17;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_16:
  v11 = inited;
LABEL_17:
  if (sub_255787EDC() != 4)
  {
    v35 = v4[19];
    v36 = v4[20];

    v37 = sub_2557B1008();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = v13;
    sub_25578A0CC(v37, v35, v36, v38);
  }

  v39 = 1 << *(a1 + v12);
  if ((v39 & 0xD3) != 0)
  {
    goto LABEL_26;
  }

  if ((v39 & 0xC) == 0)
  {
    v46 = [*(a1 + *(v11 + 7)) scriptName];
    if (v46)
    {
      v47 = v46;
      v48 = sub_2557B0C38();
      v50 = v49;

      sub_2557876D0(v48, v50);

      goto LABEL_25;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v40 = [*(a1 + *(v11 + 7)) scriptName];
  if (!v40)
  {
    goto LABEL_42;
  }

  v41 = v40;
  sub_2557B0C38();

  v69[0] = sub_2557B0D68();
  v69[1] = v42;
  sub_25578A994();
  v43 = sub_2557B0E88();
  v45 = v44;

  sub_255790E90(v43, v45);
LABEL_25:
  v51 = v4[17];
  v52 = v4[18];

  v53 = sub_2557B1008();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v13;
  sub_25578A0CC(v53, v51, v52, v54);

LABEL_26:
  swift_beginAccess();
  v55 = v4[2];

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v4[2] = v55;
  if ((v56 & 1) == 0)
  {
    v55 = sub_2557941FC(0, v55[2] + 1, 1, v55);
    v4[2] = v55;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    v55 = sub_2557941FC((v57 > 1), v58 + 1, 1, v55);
  }

  v55[2] = v58 + 1;
  v55[v58 + 4] = v13;
  v4[2] = v55;
  swift_endAccess();
  if (qword_27F7D2DB0 != -1)
  {
    swift_once();
  }

  v59 = sub_2557B0B38();
  __swift_project_value_buffer(v59, qword_27F7D2DB8);
  v60 = sub_2557B0B18();
  v61 = sub_2557B0DE8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69[0] = v63;
    *v62 = 136315394;
    sub_25578A9E8(0, &qword_27F7D2E20, 0x277D82BB8);

    v64 = sub_2557B0BE8();
    v66 = v65;

    v67 = sub_2557AAA60(v64, v66, v69);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2048;
    *(v62 + 14) = *(v13 + 16);
    _os_log_impl(&dword_255786000, v60, v61, "added analytics event to stack: %s (stack now has %ld events)", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x259C40F40](v63, -1, -1);
    MEMORY[0x259C40F40](v62, -1, -1);
  }
}

void sub_255788A54()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      v7 = qword_27F7D2DB0;

      if (v7 != -1)
      {
        swift_once();
      }

      ++v4;
      v8 = sub_2557B0B38();
      __swift_project_value_buffer(v8, qword_27F7D2DB8);

      v9 = sub_2557B0B18();
      v10 = sub_2557B0DE8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = v4;
        *(v11 + 12) = 2048;
        *(v11 + 14) = *(*(v1 + 16) + 16);

        _os_log_impl(&dword_255786000, v9, v10, "pushing analytics event %ld/%ld", v11, 0x16u);
        MEMORY[0x259C40F40](v11, -1, -1);
      }

      else
      {
      }

      v5 = sub_2557B0C08();
      sub_25578A9E8(0, &qword_27F7D2E20, 0x277D82BB8);
      v6 = sub_2557B0BC8();

      AnalyticsSendEvent();

      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *(v1 + 16) = MEMORY[0x277D84F90];
  }
}

void *sub_255788C84()
{

  return v0;
}

uint64_t sub_255788CEC()
{
  sub_255788C84();

  return swift_deallocClassInstance();
}

uint64_t sub_255788D44()
{
  v0 = sub_2557B0C38();
  v1 = MEMORY[0x259C406D0](v0);

  return v1;
}

uint64_t sub_255788D80(uint64_t a1)
{
  sub_2557B0C38();
  sub_2557B0C98();
}

uint64_t sub_255788DD4(uint64_t a1)
{
  sub_2557B0C38();
  sub_2557B1028();
  sub_2557B0C98();
  v1 = sub_2557B1058();

  return v1;
}

uint64_t sub_255788E50(uint64_t a1, id *a2)
{
  result = sub_2557B0C18();
  *a2 = 0;
  return result;
}

uint64_t sub_255788EC8(uint64_t a1, id *a2)
{
  v3 = sub_2557B0C28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_255788F48@<X0>(uint64_t *a2@<X8>)
{
  sub_2557B0C38();
  v3 = sub_2557B0C08();

  *a2 = v3;
  return result;
}

uint64_t sub_255788F8C(void *a1, uint64_t *a2)
{
  v2 = sub_2557B0C38();
  v4 = v3;
  if (v2 == sub_2557B0C38() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2557B0F98();
  }

  return v7 & 1;
}

uint64_t sub_255789014@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2557B0C08();

  *a2 = v3;
  return result;
}

uint64_t sub_25578905C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2557B0C38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_255789088(uint64_t a1)
{
  v2 = sub_25578AFC0(&qword_27F7D2E70, &unk_2557B19C8);
  v3 = sub_25578AFC0(&qword_27F7D2EA8, &unk_2557B191C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_255789120@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2557B0D78();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2557940F0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2557940F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2557B0D58();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2557B0CA8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2557B0CA8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2557B0D78();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2557940F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2557B0D78();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2557940F0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2557940F0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2557B0CA8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2557895C4(uint64_t a1)
{
  sub_2557B0C38();
  sub_2557B1028();
  sub_2557B0C98();
  v2 = sub_2557B1058();

  return sub_255789718(a1, v2);
}

unint64_t sub_255789658(uint64_t a1, uint64_t a2)
{
  sub_2557B1028();
  sub_2557B0C98();
  v4 = sub_2557B1058();

  return sub_25578981C(a1, a2, v4);
}

unint64_t sub_2557896D0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x259C409A0](*(v1 + 40), a1, 1);

  return sub_2557898D4(v2, v3);
}

unint64_t sub_255789718(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2557B0C38();
      v8 = v7;
      if (v6 == sub_2557B0C38() && v8 == v9)
      {
        break;
      }

      v11 = sub_2557B0F98();

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

unint64_t sub_25578981C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2557B0F98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2557898D4(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_255789944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E50, &unk_2557B1830);
  v35 = v4;
  result = sub_2557B0F48();
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

      sub_2557B1028();
      sub_2557B0C98();
      result = sub_2557B1058();
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

uint64_t sub_255789BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E80, &qword_2557B1848);
  result = sub_2557B0F48();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + v19);
      result = MEMORY[0x259C409A0](*(v7 + 40), v20, 1);
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
      *(*(v7 + 56) + v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_255789E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E78, &qword_2557B1840);
  result = sub_2557B0F48();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_25578ACE4(v30, *(&v30 + 1));
      }

      result = MEMORY[0x259C409A0](*(v7 + 40), v20, 1);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25578A0CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255789658(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_255789944(v16, a4 & 1);
      v11 = sub_255789658(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2557B0FB8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_25578A244();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_25578A244()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E50, &unk_2557B1830);
  v2 = *v0;
  v3 = sub_2557B0F38();
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

void *sub_25578A3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E80, &qword_2557B1848);
  v2 = *v0;
  v3 = sub_2557B0F38();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_25578A4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E78, &qword_2557B1840);
  v2 = *v0;
  v3 = sub_2557B0F38();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_25578ACE4(v18, *(&v18 + 1));
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

uint64_t sub_25578A664(uint64_t a1, unint64_t a2)
{
  v5 = sub_2557B0C68();
  v6 = v4;
  if (v5 == 1685025392 && v4 == 0xE400000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 0;
  }

  if (v5 == 24945 && v6 == 0xE200000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 2;
  }

  if (v5 == 1953654115 && v6 == 0xE400000000000000)
  {

LABEL_13:

    return 1;
  }

  v8 = sub_2557B0F98();

  if (v8)
  {
    goto LABEL_13;
  }

  sub_2557B0EF8();

  MEMORY[0x259C40650](a1, a2);

  sub_25578AA30();
  swift_allocError();
  *v9 = 0xD000000000000018;
  *(v9 + 8) = 0x80000002557B3140;
  *(v9 + 16) = 3;
  return swift_willThrow();
}

unint64_t sub_25578A844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E50, &unk_2557B1830);
    v3 = sub_2557B0F58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_255789658(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_25578A994()
{
  result = qword_27F7D2E38;
  if (!qword_27F7D2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2E38);
  }

  return result;
}

uint64_t sub_25578A9E8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25578AA30()
{
  result = qword_27F7D2E58;
  if (!qword_27F7D2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2E58);
  }

  return result;
}

uint64_t sub_25578AAA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25578AAE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25578AB34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2557B0F98() & 1;
  }
}

unint64_t sub_25578AB8C()
{
  result = qword_27F7D2E68;
  if (!qword_27F7D2E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D2E60, &qword_2557B1FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2E68);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_27F7D2E88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F7D2E88);
    }
  }
}

uint64_t sub_25578AC88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25578ACE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25578AD38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E80, &qword_2557B1848);
    v3 = sub_2557B0F58();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2557896D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_25578AE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E78, &qword_2557B1840);
  v3 = sub_2557B0F58();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_2557896D0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_25578ACE4(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_2557896D0(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25578AFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25578B020()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D2EB0);
  __swift_project_value_buffer(v0, qword_27F7D2EB0);
  return sub_2557B0B28();
}

uint64_t sub_25578B0A0()
{
  v1 = v0;
  type metadata accessor for GetVersion();
  inited = swift_initStackObject();
  v12 = 1;
  *v7 = 3488;
  *&v7[8] = 0;
  *&v7[16] = 256;
  v7[18] = 0;
  v8 = 3488;
  v9 = 0;
  v10 = 256;
  v11 = 0;
  sub_25578BBE4(v7, v6);
  sub_25578BC40(&v8);
  v3 = *&v7[15];
  *(inited + 16) = *v7;
  *(inited + 31) = v3;
  v4 = sub_255792F64(inited, &unk_286790758);
  if (!v0)
  {
    v1 = sub_2557B06B0(v4);
  }

  swift_setDeallocating();
  *v6 = *(inited + 16);
  *&v6[15] = *(inited + 31);
  sub_25578BC40(v6);
  return v1;
}

uint64_t sub_25578B1C8(unint64_t a1, unint64_t a2)
{
  v5 = sub_2557ADFCC(a1, a2);
  type metadata accessor for ManageProfile();
  inited = swift_initStackObject();
  *(inited + 35) = 1;
  LOBYTE(v43) = 1;
  *v38 = 110976;
  *&v38[8] = v5;
  *&v38[16] = 256;
  v38[18] = 0;
  v39 = 110976;
  v40 = v5;
  v41 = 256;
  v42 = 0;
  sub_25578BBE4(v38, v37);
  sub_25578BC40(&v39);
  v7 = *&v38[15];
  *(inited + 16) = *v38;
  *(inited + 31) = v7;
  sub_25578ACE4(a1, a2);
  v8 = sub_2557B0B18();
  v9 = sub_2557B0DE8();
  sub_25578AAE0(a1, a2);
  v34 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    v35 = inited;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37[0] = v11;
    *v10 = 136446210;
    v43 = sub_2557A594C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25578AB8C();
    v12 = sub_2557B0BF8();
    v14 = v13;

    v15 = sub_2557AAA60(v12, v14, v37);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_255786000, v8, v9, "deleting profile with tpid: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C40F40](v11, -1, -1);
    v16 = v10;
    inited = v35;
    MEMORY[0x259C40F40](v16, -1, -1);
  }

  sub_255792F64(inited, &unk_286790780);
  v18 = v17;
  if (v2)
  {
    goto LABEL_11;
  }

  sub_25578ACE4(a1, v34);
  v19 = sub_2557B0B18();
  if (v18 != 36864)
  {
    v20 = sub_2557B0DD8();
    sub_25578AAE0(a1, v34);
    if (os_log_type_enabled(v19, v20))
    {
      v36 = inited;
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v21 = 136446210;
      v37[0] = sub_2557A594C(a1, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v27 = sub_2557B0BF8();
      v29 = v28;

      v30 = sub_2557AAA60(v27, v29, &v43);

      *(v21 + 4) = v30;
      v26 = "failed to delete profile %{public}s (not found)";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v20 = sub_2557B0DE8();
  sub_25578AAE0(a1, v34);
  if (!os_log_type_enabled(v19, v20))
  {
LABEL_10:

LABEL_11:
    swift_setDeallocating();
    *v37 = *(inited + 16);
    v31 = *(inited + 31);
    goto LABEL_12;
  }

  v36 = inited;
  v21 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v43 = v33;
  *v21 = 136446210;
  v37[0] = sub_2557A594C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
  sub_25578AB8C();
  v22 = sub_2557B0BF8();
  v24 = v23;

  v25 = sub_2557AAA60(v22, v24, &v43);

  *(v21 + 4) = v25;
  v26 = "profile %{public}s successfully deleted";
LABEL_9:
  _os_log_impl(&dword_255786000, v19, v20, v26, v21, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v33);
  MEMORY[0x259C40F40](v33, -1, -1);
  MEMORY[0x259C40F40](v21, -1, -1);

  swift_setDeallocating();
  *v37 = *(v36 + 16);
  v31 = *(v36 + 31);
LABEL_12:
  *(&v37[1] + 7) = v31;
  sub_25578BC40(v37);
  return v18;
}

uint64_t sub_25578B6A8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2557ADFCC(a1, a2);
  type metadata accessor for ManageProfile();
  inited = swift_initStackObject();
  *(inited + 35) = 0;
  LOBYTE(v34) = 1;
  *v29 = 45440;
  *&v29[8] = v6;
  *&v29[16] = 256;
  v29[18] = 0;
  v30 = 45440;
  v31 = v6;
  v32 = 256;
  v33 = 0;
  sub_25578BBE4(v29, v28);
  sub_25578BC40(&v30);
  v8 = *&v29[15];
  *(inited + 16) = *v29;
  *(inited + 31) = v8;
  sub_25578ACE4(a1, a2);
  v9 = sub_2557B0B18();
  v10 = sub_2557B0DE8();
  sub_25578AAE0(a1, a2);
  v27 = a2;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136446210;
    v34 = sub_2557A594C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    sub_25578AB8C();
    v13 = sub_2557B0BF8();
    v15 = v14;

    v16 = sub_2557AAA60(v13, v15, v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_255786000, v9, v10, "activating profile with tpid: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    v3 = v2;
    MEMORY[0x259C40F40](v17, -1, -1);
    MEMORY[0x259C40F40](v11, -1, -1);
  }

  sub_255792F64(inited, &unk_2867907A8);
  if (!v3)
  {

    sub_25578ACE4(a1, v27);
    v18 = sub_2557B0B18();
    v19 = sub_2557B0DE8();
    sub_25578AAE0(a1, v27);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136446210;
      v28[0] = sub_2557A594C(a1, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v22 = sub_2557B0BF8();
      v24 = v23;

      v25 = sub_2557AAA60(v22, v24, &v34);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_255786000, v18, v19, "profile %{public}s successfully activated", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C40F40](v21, -1, -1);
      MEMORY[0x259C40F40](v20, -1, -1);
    }
  }

  swift_setDeallocating();
  *v28 = *(inited + 16);
  *(&v28[1] + 7) = *(inited + 31);
  return sub_25578BC40(v28);
}

uint64_t sub_25578BA5C()
{
  sub_25578BB90(v0 + 16);
  v1 = OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger;
  v2 = sub_2557B0B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeeInterface(uint64_t a1)
{
  result = qword_27F7D2EC8;
  if (!qword_27F7D2EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25578BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_2557B0CD8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_2557B0CD8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_2557B0F98();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_2557B0CD8();
      v7 = v9;
    }

    while (v9);
  }

  sub_2557B0CD8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_25578BE38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = &unk_2557B2E80;
  }

  else
  {
    v4 = "A0000008588100010100";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "A0000008588100010100";
  }

  else
  {
    v7 = &unk_2557B2E80;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2557B0F98();
  }

  return v9 & 1;
}

uint64_t sub_25578BEE4()
{
  sub_2557B1028();
  sub_2557B0C98();

  return sub_2557B1058();
}

uint64_t sub_25578BF64(uint64_t a1)
{
  sub_2557B0C98();
}

uint64_t sub_25578BFD0(uint64_t a1)
{
  sub_2557B1028();
  sub_2557B0C98();

  return sub_2557B1058();
}

uint64_t sub_25578C04C@<X0>(char *a2@<X8>)
{
  v3 = sub_2557B0F78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25578C0AC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "A0000008588100010100";
  }

  else
  {
    v3 = &unk_2557B2E80;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_25578C0EC(uint64_t result)
{
  *(v1 + 35) = result & 1;
  if (result)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (result)
  {
    v3 = "A0000008588100010100";
  }

  else
  {
    v3 = &unk_2557B2E80;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFCLL;
  }

  v39 = MEMORY[0x277D84F90];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v37 = 4 * v4;
    v7 = 11;
    if ((v3 & 0x1000000000000000) == 0)
    {
      v7 = 7;
    }

    v38 = v7 | (v4 << 16);
    v8 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v9 = sub_2557B0CB8();
      if (v10)
      {
        v11 = v38;
      }

      else
      {
        v11 = v9;
      }

      if (v11 >> 14 < v5)
      {
        __break(1u);
LABEL_47:

        goto LABEL_42;
      }

      v12 = v3;
      v13 = sub_2557B0D78();
      v17 = v16;
      if (!((v13 ^ v14) >> 14))
      {
        goto LABEL_47;
      }

      v18 = v13;
      v19 = v14;
      v20 = v15;
      if ((v16 & 0x1000000000000000) != 0)
      {
        LOWORD(v20) = sub_25578E9A8(v13, v14, v15, v16, 16);

        v3 = v12;
        if ((v20 & 0x100) != 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          v42 = v15;
          v43 = v16 & 0xFFFFFFFFFFFFFFLL;
          v21 = &v42;
        }

        else if ((v15 & 0x1000000000000000) != 0)
        {
          v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_2557B0F18();
        }

        v22 = sub_255790794(v21, v18, v19, v20, v17, 16);
        LOBYTE(v20) = v22;
        v41[0] = BYTE1(v22) & 1;
        v23 = (v22 >> 8) & 1;

        v3 = v12;
        if (v23)
        {
          goto LABEL_42;
        }
      }

      if (!v6)
      {
        v24 = *(v39 + 3);
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_49;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
        v27 = swift_allocObject();
        v28 = 2 * _swift_stdlib_malloc_size(v27) - 64;
        *(v27 + 2) = v26;
        *(v27 + 3) = v28;
        v29 = v27 + 32;
        v30 = *(v39 + 3) >> 1;
        if (*(v39 + 2))
        {
          v31 = v39 + 32;
          if (v27 != v39 || v29 >= &v31[v30])
          {
            memmove(v27 + 32, v31, v30);
          }

          *(v39 + 2) = 0;
        }

        v8 = &v29[v30];
        v6 = (v28 >> 1) - v30;

        v39 = v27;
        v3 = v12;
      }

      v32 = __OFSUB__(v6--, 1);
      if (v32)
      {
        break;
      }

      *v8++ = v20;
      v5 = v11 >> 14;
      if (v11 >> 14 >= v37)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = 0;
LABEL_42:
  v33 = *(v39 + 3);
  if (v33 < 2)
  {
LABEL_45:

    v40[23] = 1;
    *v41 = 304128;
    *&v41[8] = v39;
    *&v41[16] = 256;
    v41[18] = 0;
    LODWORD(v42) = 304128;
    v43 = v39;
    v44 = 256;
    v45 = 0;
    sub_25578BBE4(v41, v40);
    sub_25578BC40(&v42);
    result = v36;
    *(v36 + 16) = *v41;
    *(v36 + 31) = *&v41[15];
    return result;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v6);
  v35 = v34 - v6;
  if (!v32)
  {
    *(v39 + 2) = v35;
    goto LABEL_45;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_25578C43C()
{
  if (*(v0 + 35))
  {
    return 0x49207463656C6553;
  }

  else
  {
    return 0x42207463656C6553;
  }
}

uint64_t sub_25578C4BC()
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_25578C544(uint64_t a1)
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

unsigned __int8 *sub_25578C590@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_25578C5B0(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_25578C5F8(char a1)
{
  v1 = 0;
  v2 = 0xEC00000031383835;
  v3 = (MEMORY[0x277D84F90] + 32);
  v4 = 15;
  v111 = MEMORY[0x277D84F90];
  v113 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = 786439;
    v6 = sub_2557B0CB8();
    if ((v7 & 1) == 0)
    {
      v5 = v6;
    }

    if (v5 >> 14 < v4 >> 14)
    {
      break;
    }

    v8 = v6;
    v9 = v2;
    v10 = sub_2557B0D78();
    v14 = v13;
    if (!((v10 ^ v11) >> 14))
    {
      goto LABEL_30;
    }

    v15 = v10;
    v16 = v11;
    v17 = v12;
    if ((v13 & 0x1000000000000000) != 0)
    {
      v19 = sub_25578E9A8(v10, v11, v12, v13, 16);

      if ((v19 & 0x100) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v117 = v12;
        v118 = v13 & 0xFFFFFFFFFFFFFFLL;
        v18 = &v117;
      }

      else if ((v12 & 0x1000000000000000) != 0)
      {
        v18 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = sub_2557B0F18();
      }

      v19 = sub_255790794(v18, v15, v16, v17, v14, 16);
      v116[0] = BYTE1(v19) & 1;

      if ((v19 >> 8))
      {
        goto LABEL_31;
      }
    }

    if (!v1)
    {
      v21 = *(v113 + 24);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
      v24 = swift_allocObject();
      v25 = 2 * _swift_stdlib_malloc_size(v24) - 64;
      *(v24 + 2) = v23;
      *(v24 + 3) = v25;
      v26 = v24 + 32;
      v27 = *(v113 + 24) >> 1;
      if (*(v113 + 16))
      {
        v28 = (v113 + 32);
        if (v24 != v113 || v26 >= &v28[v27])
        {
          memmove(v24 + 32, v28, v27);
        }

        *(v113 + 16) = 0;
      }

      v3 = &v26[v27];
      v1 = (v25 >> 1) - v27;

      v113 = v24;
    }

    v2 = v9;
    v29 = __OFSUB__(v1--, 1);
    if (v29)
    {
      __break(1u);
      goto LABEL_113;
    }

    *v3++ = v19;
    v4 = v8;
    if (v5 >= 0xC0000)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_30:

LABEL_31:
  v30 = *(v113 + 24);
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v1);
    v32 = v31 - v1;
    if (v29)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    *(v113 + 16) = v32;
  }

  v33 = sub_2557ABD08(v113);
  v35 = v34;

  *(v108 + 40) = v33;
  *(v108 + 48) = v35;
  *(v108 + 56) = a1 & 1;
  if (a1)
  {
    v8 = 0;
    v19 = MEMORY[0x277D84F90] + 32;
    v43 = 15;
    while (1)
    {
      v44 = sub_2557B0CB8();
      v46 = (v45 & 1) != 0 ? 262151 : v44;
      if (v46 >> 14 < v43 >> 14)
      {
        break;
      }

      v47 = v44;
      v48 = sub_2557B0D78();
      v52 = v51;
      if (!((v48 ^ v49) >> 14))
      {
        goto LABEL_114;
      }

      v53 = v48;
      v54 = v49;
      v55 = v50;
      if ((v51 & 0x1000000000000000) != 0)
      {
        LOWORD(v55) = sub_25578E9A8(v48, v49, v50, v51, 16);

        if ((v55 & 0x100) != 0)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if ((v51 & 0x2000000000000000) != 0)
        {
          v117 = v50;
          v118 = v51 & 0xFFFFFFFFFFFFFFLL;
          v56 = &v117;
        }

        else if ((v50 & 0x1000000000000000) != 0)
        {
          v56 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v56 = sub_2557B0F18();
        }

        v57 = sub_255790794(v56, v53, v54, v55, v52, 16);
        LOBYTE(v55) = v57;
        v116[0] = BYTE1(v57) & 1;
        v58 = (v57 >> 8) & 1;

        if (v58)
        {
          goto LABEL_115;
        }
      }

      if (!v8)
      {
        v59 = *(v111 + 3);
        if (((v59 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v60 = v59 & 0xFFFFFFFFFFFFFFFELL;
        if (v60 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = v60;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
        v62 = swift_allocObject();
        v63 = 2 * _swift_stdlib_malloc_size(v62) - 64;
        *(v62 + 2) = v61;
        *(v62 + 3) = v63;
        v64 = v62 + 32;
        v65 = *(v111 + 3) >> 1;
        if (*(v111 + 2))
        {
          v66 = v111 + 32;
          if (v62 != v111 || v64 >= &v66[v65])
          {
            memmove(v62 + 32, v66, v65);
          }

          *(v111 + 2) = 0;
        }

        v19 = &v64[v65];
        v8 = (v63 >> 1) - v65;

        v111 = v62;
      }

      v29 = __OFSUB__(v8--, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_121;
      }

      *v19++ = v55;
      v43 = v47;
      if (v46 >= 0x40000)
      {
        goto LABEL_115;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:

LABEL_115:
    v105 = *(v111 + 3);
    v104 = v108;
    if (v105 >= 2)
    {
      v106 = v105 >> 1;
      v29 = __OFSUB__(v106, v8);
      v107 = v106 - v8;
      if (v29)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      *(v111 + 2) = v107;
    }

    v115 = 1;
    *v116 = 66170752;
    *&v116[8] = v111;
    *&v116[16] = 256;
    v116[18] = 0;
    LODWORD(v117) = 66170752;
    v118 = v111;
    v119 = 256;
    v120 = 0;
    sub_25578BBE4(v116, v114);
    sub_25578BC40(&v117);
    v103 = *v116;
    goto LABEL_119;
  }

  v117 = 0x583230254634;
  v118 = 0xE600000000000000;
  sub_25578ACE4(v33, v35);
  *v116 = sub_2557A594C(v33, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
  sub_25578AB8C();
  v36 = sub_2557B0BF8();
  v38 = v37;
  sub_25578AAE0(v33, v35);

  MEMORY[0x259C40650](v36, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
  result = swift_allocObject();
  *(result + 16) = xmmword_2557B1770;
  v40 = *(v108 + 40);
  v39 = *(v108 + 48);
  v41 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    v42 = 0;
    if (v41 != 2)
    {
      goto LABEL_73;
    }

    v68 = v40 + 16;
    v40 = *(v40 + 16);
    v67 = *(v68 + 8);
    v29 = __OFSUB__(v67, v40);
    v42 = v67 - v40;
    if (!v29)
    {
      goto LABEL_73;
    }

    __break(1u);
  }

  else if (!v41)
  {
    v42 = BYTE6(v39);
LABEL_73:
    v69 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v69;
    *(result + 32) = v42;
    v70 = sub_2557B0C48();
    v72 = v71;

    v73 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v73 = v70 & 0xFFFFFFFFFFFFLL;
    }

    v113 = MEMORY[0x277D84F90];
    if (v73)
    {
      v74 = 0;
      v19 = 0;
      v109 = 4 * v73;
      v75 = 7;
      if (((v72 >> 60) & ((v70 & 0x800000000000000) == 0)) != 0)
      {
        v75 = 11;
      }

      v112 = v75 | (v73 << 16);
      v76 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v77 = sub_2557B0CB8();
        v79 = (v78 & 1) != 0 ? v112 : v77;
        if (v79 >> 14 < v74)
        {
          break;
        }

        v80 = v72;
        v81 = sub_2557B0D78();
        v85 = v84;
        if (!((v81 ^ v82) >> 14))
        {
          goto LABEL_123;
        }

        v86 = v81;
        v87 = v82;
        v88 = v83;
        if ((v84 & 0x1000000000000000) != 0)
        {
          LOWORD(v88) = sub_25578E9A8(v81, v82, v83, v84, 16);

          v72 = v80;
          if ((v88 & 0x100) != 0)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if ((v84 & 0x2000000000000000) != 0)
          {
            v117 = v83;
            v118 = v84 & 0xFFFFFFFFFFFFFFLL;
            v89 = &v117;
          }

          else if ((v83 & 0x1000000000000000) != 0)
          {
            v89 = ((v84 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v89 = sub_2557B0F18();
          }

          v90 = sub_255790794(v89, v86, v87, v88, v85, 16);
          LOBYTE(v88) = v90;
          v116[0] = BYTE1(v90) & 1;
          v91 = (v90 >> 8) & 1;

          v72 = v80;
          if (v91)
          {
            goto LABEL_108;
          }
        }

        if (!v19)
        {
          v92 = *(v113 + 24);
          if (((v92 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_126;
          }

          v93 = v92 & 0xFFFFFFFFFFFFFFFELL;
          if (v93 <= 1)
          {
            v94 = 1;
          }

          else
          {
            v94 = v93;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
          v95 = swift_allocObject();
          v96 = 2 * _swift_stdlib_malloc_size(v95) - 64;
          *(v95 + 2) = v94;
          *(v95 + 3) = v96;
          v97 = v95 + 32;
          v98 = *(v113 + 24) >> 1;
          if (*(v113 + 16))
          {
            v99 = (v113 + 32);
            if (v95 != v113 || v97 >= &v99[v98])
            {
              memmove(v95 + 32, v99, v98);
            }

            *(v113 + 16) = 0;
          }

          v76 = &v97[v98];
          v19 = (v96 >> 1) - v98;

          v113 = v95;
          v72 = v80;
        }

        v29 = __OFSUB__(v19--, 1);
        if (v29)
        {
          __break(1u);
          goto LABEL_125;
        }

        *v76++ = v88;
        v74 = v79 >> 14;
        if (v79 >> 14 >= v109)
        {
          goto LABEL_108;
        }
      }

LABEL_122:
      __break(1u);
LABEL_123:
    }

    else
    {
      v19 = 0;
    }

LABEL_108:
    v100 = *(v113 + 24);
    if (v100 < 2)
    {
      goto LABEL_111;
    }

    v101 = v100 >> 1;
    v29 = __OFSUB__(v101, v19);
    v102 = v101 - v19;
    if (!v29)
    {
      *(v113 + 16) = v102;
LABEL_111:

      v115 = 1;
      *v116 = 49393536;
      *&v116[8] = v113;
      *&v116[16] = 256;
      v116[18] = 0;
      LODWORD(v117) = 49393536;
      v118 = v113;
      v119 = 256;
      v120 = 0;
      sub_25578BBE4(v116, v114);
      sub_25578BC40(&v117);
      v103 = *v116;
      v104 = v108;
LABEL_119:
      *(v104 + 16) = v103;
      *(v104 + 31) = *&v116[15];
      return v104;
    }

    goto LABEL_128;
  }

  LODWORD(v42) = HIDWORD(v40) - v40;
  if (!__OFSUB__(HIDWORD(v40), v40))
  {
    v42 = v42;
    goto LABEL_73;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t sub_25578CF58(void *a1, unint64_t a2)
{
  v97 = 0;
  v2 = a2;
  v94 = 0;
  v95 = 0;
  v99 = 0;
  v96 = 0;
  v3 = 0;
  v121 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  v107 = a2 + 33;
  v98 = 255;
  v105 = (a2 + 32);
  v106 = v4;
  while (2)
  {
    while (2)
    {
      if (v3 >= v4)
      {
        if (__CFADD__(v94, v99))
        {
          goto LABEL_119;
        }

        *a1 = v97;
        a1[1] = v96;
        a1[2] = v94 + v99;
        a1[3] = v95;
        return v99;
      }

      if (v3 < 0)
      {
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v6 = v5[v3];
      if (v6 != 79)
      {
        v119 = 0;
        v120 = 0xE000000000000000;
        sub_2557B0EF8();
        MEMORY[0x259C40650](0xD00000000000004FLL, 0x80000002557B3350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_2557B1770;
        *(v88 + 56) = MEMORY[0x277D84B78];
        *(v88 + 64) = MEMORY[0x277D84BC0];
        *(v88 + 32) = v6;
        v89 = sub_2557B0C48();
        MEMORY[0x259C40650](v89);

        v90 = v119;
        v91 = v120;
        sub_25578AA30();
        swift_allocError();
        *v86 = v90;
        *(v86 + 8) = v91;
        goto LABEL_98;
      }

      v7 = v3 + 2;
      if (v3 + 2 >= v4 || v3 + 3 >= v4)
      {
        v85 = 0x80000002557B33A0;
        sub_25578AA30();
        swift_allocError();
        v87 = 0xD000000000000044;
LABEL_94:
        *v86 = v87;
        *(v86 + 8) = v85;
LABEL_98:
        *(v86 + 16) = 4;
        swift_willThrow();
        return v99;
      }

      v8 = *(v107 + v3);
      v9 = v7 + v8;
      if (__OFADD__(v7, v8))
      {
        goto LABEL_110;
      }

      if (v9 < v7)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v4 < v10)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      if (v10 < 0)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v108 = *(v107 + v3);
      v102 = v9 + 1;
      v103 = v3;
      v11 = (2 * v10) | 1;

      v109 = v7;
      sub_2557A0B48(v12, v5, v7, v11);
      v15 = v13;
      v16 = v14;
      v17 = v14 >> 62;
      v113 = HIDWORD(v13);
      v104 = v9;
      if ((v14 >> 62) > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_24;
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        v18 = v19 - v20;
        if (__OFSUB__(v19, v20))
        {
          goto LABEL_118;
        }

        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (!v17)
        {
          v18 = BYTE6(v14);
          if (!BYTE6(v14))
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

        v22 = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_117;
        }

        v18 = v22;
        if (!v22)
        {
LABEL_24:
          v23 = MEMORY[0x277D84F90];
          goto LABEL_50;
        }
      }

LABEL_19:
      v118 = MEMORY[0x277D84F90];
      sub_2557AB37C(0, v18 & ~(v18 >> 63), 0);
      v112 = v15;
      if (v17)
      {
        if (v17 == 2)
        {
          v21 = *(v15 + 16);
        }

        else
        {
          v21 = v15;
        }
      }

      else
      {
        v21 = 0;
      }

      v117 = v21;
      if (v18 < 0)
      {
        goto LABEL_116;
      }

      v24 = 0;
      v111 = v15 >> 32;
      v23 = v118;
      v110 = &v119 + v21;
      v115 = v17;
      v116 = v15;
      v114 = v18;
      do
      {
        if (v24 >= v18)
        {
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
          goto LABEL_108;
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_101;
        }

        v26 = v117 + v24;
        if (v17 == 2)
        {
          if (v26 < *(v15 + 16))
          {
            goto LABEL_103;
          }

          if (v26 >= *(v15 + 24))
          {
            goto LABEL_105;
          }

          v31 = sub_2557B0868();
          if (!v31)
          {
            goto LABEL_136;
          }

          v28 = v31;
          v32 = sub_2557B0888();
          v30 = v26 - v32;
          if (__OFSUB__(v26, v32))
          {
            goto LABEL_107;
          }

          goto LABEL_43;
        }

        if (v17 == 1)
        {
          if (v26 < v112 || v26 >= v111)
          {
            goto LABEL_104;
          }

          v27 = sub_2557B0868();
          if (!v27)
          {
            goto LABEL_135;
          }

          v28 = v27;
          v29 = sub_2557B0888();
          v30 = v26 - v29;
          if (__OFSUB__(v26, v29))
          {
            goto LABEL_106;
          }

LABEL_43:
          v33 = *(v28 + v30);
          goto LABEL_46;
        }

        if (v26 >= BYTE6(v16))
        {
          goto LABEL_102;
        }

        LOWORD(v119) = v15;
        BYTE2(v119) = BYTE2(v15);
        BYTE3(v119) = BYTE3(v15);
        BYTE4(v119) = v113;
        BYTE5(v119) = BYTE5(v15);
        BYTE6(v119) = BYTE6(v15);
        HIBYTE(v119) = HIBYTE(v15);
        LOWORD(v120) = v16;
        BYTE2(v120) = BYTE2(v16);
        BYTE3(v120) = BYTE3(v16);
        BYTE4(v120) = BYTE4(v16);
        BYTE5(v120) = BYTE5(v16);
        v33 = v110[v24];
LABEL_46:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_2557B1770;
        *(v34 + 56) = MEMORY[0x277D84B78];
        *(v34 + 64) = MEMORY[0x277D84BC0];
        *(v34 + 32) = v33;
        v35 = sub_2557B0C48();
        v37 = v36;
        v39 = *(v118 + 16);
        v38 = *(v118 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_2557AB37C((v38 > 1), v39 + 1, 1);
        }

        *(v118 + 16) = v39 + 1;
        v40 = v118 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
        ++v24;
        v18 = v114;
        LODWORD(v17) = v115;
        v15 = v116;
      }

      while (v25 != v114);
      v2 = a2;
LABEL_50:
      v119 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v41 = sub_2557B0BF8();
      v43 = v42;
      sub_25578AAE0(v15, v16);

      v44 = sub_25578BC94(0x3830303030303041, 0xEC00000031383835, v41, v43);

      if ((v44 & 1) == 0)
      {
        v3 = v109 + v108 + 24;
        v5 = v105;
        v4 = v106;
        if (!__OFADD__(v109, v108 + 24))
        {
          continue;
        }

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

      break;
    }

    v45 = v103 + 8;
    v5 = v105;
    v4 = v106;
    if (__OFADD__(v103, 8))
    {
      goto LABEL_120;
    }

    if (v45 >= v106)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v46 = v105[v45];
    v47 = sub_2557914E8(v105[v45]);
    v48 = sub_2557B0B18();
    v49 = sub_2557B0DC8();
    if (os_log_type_enabled(v48, v49))
    {
      if (v47 == 15)
      {
        v50 = 14;
      }

      else
      {
        v50 = v47;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v119 = v52;
      *v51 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2557B1A90;
      v54 = byte_2557B1DFA[v50];
      *(v53 + 56) = MEMORY[0x277D84B78];
      *(v53 + 64) = MEMORY[0x277D84BC0];
      *(v53 + 32) = v54;
      v55 = sub_255791214(v50);
      v57 = v56;
      *(v53 + 96) = MEMORY[0x277D837D0];
      *(v53 + 104) = sub_255790C58();
      *(v53 + 72) = v55;
      *(v53 + 80) = v57;
      v58 = sub_2557B0C48();
      v60 = sub_2557AAA60(v58, v59, &v119);

      *(v51 + 4) = v60;
      _os_log_impl(&dword_255786000, v48, v49, "processing memory for appCode %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v61 = v52;
      v5 = v105;
      v4 = v106;
      MEMORY[0x259C40F40](v61, -1, -1);
      MEMORY[0x259C40F40](v51, -1, -1);
    }

    v62 = v104;
    if (__OFADD__(v104, 24))
    {
      goto LABEL_122;
    }

    if (v4 < v104 + 24)
    {
LABEL_108:
      v85 = 0x80000002557B33F0;
      sub_25578AA30();
      swift_allocError();
      v87 = 0xD000000000000051;
      goto LABEL_94;
    }

    if (v104 >= v4)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v102 >= v4)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    sub_25578DB60(0, v5[v104], v5[v102]);
    if (!v101)
    {
      v63 = sub_25578DD90(v2, v104 + 2);
      v64 = sub_2557B0B18();
      v65 = sub_2557B0DC8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        *(v66 + 4) = v63;
        _os_log_impl(&dword_255786000, v64, v65, "nvm: %lu", v66, 0xCu);
        v67 = v66;
        v62 = v104;
        MEMORY[0x259C40F40](v67, -1, -1);
      }

      v68 = __CFADD__(v97, v63);
      v97 += v63;
      if (!v68)
      {
        if (v62 + 6 < v4)
        {
          if (v62 + 7 < v4)
          {
            sub_25578DB60(1, v5[v62 + 6], v5[v62 + 7]);
            v69 = sub_25578DD90(v2, v62 + 8);
            v70 = sub_2557B0B18();
            v71 = sub_2557B0DC8();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 134217984;
              *(v72 + 4) = v69;
              _os_log_impl(&dword_255786000, v70, v71, "cor: %lu", v72, 0xCu);
              v73 = v72;
              v62 = v104;
              MEMORY[0x259C40F40](v73, -1, -1);
            }

            v68 = __CFADD__(v96, v69);
            v96 += v69;
            if (!v68)
            {
              if (v62 + 12 < v4)
              {
                if (v62 + 13 < v4)
                {
                  sub_25578DB60(2, v5[v62 + 12], v5[v62 + 13]);
                  v74 = sub_25578DD90(v2, v62 + 14);
                  v75 = sub_2557B0B18();
                  v76 = sub_2557B0DC8();
                  if (os_log_type_enabled(v75, v76))
                  {
                    v77 = swift_slowAlloc();
                    *v77 = 134217984;
                    *(v77 + 4) = v74;
                    _os_log_impl(&dword_255786000, v75, v76, "cod: %lu", v77, 0xCu);
                    v78 = v77;
                    v62 = v104;
                    MEMORY[0x259C40F40](v78, -1, -1);
                  }

                  if ((v46 | 2) == 2)
                  {
                    v68 = __CFADD__(v94, v74);
                    v94 += v74;
                    if (!v68)
                    {
                      goto LABEL_87;
                    }

LABEL_134:
                    __break(1u);
LABEL_135:
                    __break(1u);
LABEL_136:
                    __break(1u);
                  }

                  v79 = v99;
                  v80 = v98;
                  if (v99 < v74)
                  {
                    v80 = v46;
                  }

                  v98 = v80;
                  if (v99 <= v74)
                  {
                    v79 = v74;
                  }

                  v99 = v79;
LABEL_87:
                  if (v62 + 18 < v4)
                  {
                    if (v62 + 19 < v4)
                    {
                      sub_25578DB60(3, v5[v62 + 18], v5[v62 + 19]);
                      v81 = sub_25578DD90(v2, v62 + 20);
                      v82 = sub_2557B0B18();
                      v83 = sub_2557B0DC8();
                      if (os_log_type_enabled(v82, v83))
                      {
                        v84 = swift_slowAlloc();
                        *v84 = 134217984;
                        *(v84 + 4) = v81;
                        _os_log_impl(&dword_255786000, v82, v83, "idx: %lu", v84, 0xCu);
                        MEMORY[0x259C40F40](v84, -1, -1);
                      }

                      v68 = __CFADD__(v95, v81);
                      v95 += v81;
                      if (!v68)
                      {
                        v3 = v62 + 24;
                        continue;
                      }

                      goto LABEL_133;
                    }

LABEL_132:
                    __break(1u);
LABEL_133:
                    __break(1u);
                    goto LABEL_134;
                  }

LABEL_131:
                  __break(1u);
                  goto LABEL_132;
                }

LABEL_130:
                __break(1u);
                goto LABEL_131;
              }

LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    return v99;
  }
}

uint64_t sub_25578DB60(uint64_t result, unsigned __int8 a2, unsigned __int8 a3)
{
  if (result == a2)
  {
    if (a3 == 4)
    {
      return result;
    }

    v3 = a3;
    sub_2557B0EF8();
    MEMORY[0x259C40650](0xD000000000000060, 0x80000002557B34A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D84B78];
    *(v4 + 16) = xmmword_2557B1770;
    v6 = MEMORY[0x277D84BC0];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
  }

  else
  {
    v3 = a2;
    v7 = result;
    sub_2557B0EF8();
    MEMORY[0x259C40650](0xD000000000000046, 0x80000002557B3450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84B78];
    *(v8 + 16) = xmmword_2557B1770;
    v10 = MEMORY[0x277D84BC0];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v7;
    v11 = sub_2557B0C48();
    MEMORY[0x259C40650](v11);

    MEMORY[0x259C40650](0x20746F6720, 0xE500000000000000);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2557B1770;
    *(v4 + 56) = v9;
    *(v4 + 64) = v10;
  }

  *(v4 + 32) = v3;
  v12 = sub_2557B0C48();
  MEMORY[0x259C40650](v12);

  sub_25578AA30();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0xE000000000000000;
  *(v13 + 16) = 4;
  return swift_willThrow();
}

unint64_t sub_25578DD90(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(result + 16);
  if (v2 <= a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 + 1 >= v2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 + 2 >= v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 + 3 < v2)
  {
    return (*(result + 32 + a2) << 24) | (*(result + 32 + a2 + 1) << 16) | (*(result + 32 + a2 + 2) << 8) | *(result + 32 + a2 + 3);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25578DE08()
{

  sub_25578AAE0(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_25578DE88()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25578DEE4()
{
  v1 = *(v0 + 35);
  if (!v1)
  {
    return 0xD000000000000010;
  }

  sub_2557B0EF8();

  strcpy(v7, "Reset Keys (0x");
  HIBYTE(v7[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84B78];
  *(v2 + 16) = xmmword_2557B1770;
  v4 = MEMORY[0x277D84BC0];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v5 = sub_2557B0C48();
  MEMORY[0x259C40650](v5);

  MEMORY[0x259C40650](41, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_25578E010()
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_25578E084(uint64_t a1)
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

_BYTE *sub_25578E0C8@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
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

unint64_t sub_25578E0F4()
{
  if (*(v0 + 35))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_25578E130()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25578E1C8()
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_25578E268(uint64_t a1)
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_25578E2C0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255790C28(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25578E310()
{
  v1 = *(v0 + 35);
  v2 = 0xD000000000000028;
  if (v1 != 5)
  {
    v2 = 0xD000000000000023;
  }

  v3 = 0xD00000000000002CLL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*(v0 + 35) <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000025;
  if (v1 == 1)
  {
    v4 = 0xD00000000000002BLL;
  }

  if (!*(v0 + 35))
  {
    v4 = 0xD000000000000026;
  }

  if (*(v0 + 35) <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for GetData.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GetData.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KernelManager.DeviceStateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KernelManager.DeviceStateType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25578E6F8()
{
  result = qword_27F7D2ED8;
  if (!qword_27F7D2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2ED8);
  }

  return result;
}

unint64_t sub_25578E750()
{
  result = qword_27F7D2EE0;
  if (!qword_27F7D2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2EE0);
  }

  return result;
}

unint64_t sub_25578E7A8()
{
  result = qword_27F7D2EE8;
  if (!qword_27F7D2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2EE8);
  }

  return result;
}

unint64_t sub_25578E800()
{
  result = qword_27F7D2EF0;
  if (!qword_27F7D2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2EF0);
  }

  return result;
}

uint64_t sub_25578E854(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 >> 14 >= 4 * v4)
  {
    v21 = 0;
    v20 = 1;
    return v21 | (v20 << 8);
  }

  v6 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v4 << 16);
  v8 = sub_2557B0CB8();
  if ((v9 & 1) == 0)
  {
    v7 = v8;
  }

  if (v3 >> 14 > v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_2557B0D78();
    v14 = v13;
    if ((v10 ^ v11) >> 14)
    {
      v15 = v10;
      v16 = v11;
      v17 = v12;
      v18 = sub_25578F434(v10, v11, v12, v13, 16);
      if ((v18 & 0x10000) != 0)
      {
        v18 = sub_25578E9A8(v15, v16, v17, v14, 16);
      }

      v19 = v18;

      v20 = (v19 >> 8) & 1;
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      goto LABEL_15;
    }
  }

  v21 = 0;
  v20 = 1;
LABEL_15:
  *a1 = v7;
  return v21 | (v20 << 8);
}

unsigned __int8 *sub_25578E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_255790CB0();

  result = sub_2557B0D68();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25578EF88(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2557B0F18();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25578EF88(uint64_t a1, unint64_t a2)
{
  v2 = sub_2557B0D78();
  v6 = sub_25578F008(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25578F008(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2557B0E68();
    if (!v9 || (v10 = v9, v11 = sub_2557ADB20(v9, 0), v12 = sub_25578F160(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2557B0C88();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2557B0C88();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2557B0F18();
LABEL_4:

  return sub_2557B0C88();
}

unint64_t sub_25578F160(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25578F380(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2557B0D28();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2557B0F18();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25578F380(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2557B0CF8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25578F380(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2557B0D38();
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
    v5 = MEMORY[0x259C40690](15, a1 >> 16);
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

uint64_t sub_25578F3FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25578E854(a1, *a2, *(a2 + 8));
  *a3 = result;
  a3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_25578F434(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2557B0F18();
  }

  result = sub_255790794(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

void *sub_25578F504(void *result, unint64_t a2)
{
  v3 = BYTE6(a2);
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_23;
    }

    v6 = result[2];
    v5 = result[3];
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 < 2)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (!v4)
  {
    if (BYTE6(a2) < 2uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (HIDWORD(result) - result < 2)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_16:
    v11 = result[2];
    v10 = result[3];
    v7 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v7)
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v4 == 1)
  {
    v9 = BYTE4(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
LABEL_17:
      if ((v9 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      sub_25578AA30();
      swift_allocError();
      *v13 = xmmword_2557B1AA0;
      *(v13 + 16) = 7;
      swift_willThrow();
      return v2;
    }

    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0x1000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v12 = HIDWORD(result) - result;
        goto LABEL_29;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  v15 = result[2];
  v14 = result[3];
  v12 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_28:
    v12 = v3;
  }

LABEL_29:
  if (v12 >= 2)
  {
    v16 = sub_2557B0A08();
    v18 = v17;
    v2 = sub_2557AE95C(v16, v17);
    sub_25578AAE0(v16, v18);
    return v2;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_25578F690(void *result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = result[2];
    v4 = result[3];
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_25578AA30();
      swift_allocError();
      *v8 = xmmword_2557B1AA0;
      *(v8 + 16) = 7;
      return swift_willThrow();
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v9 = HIDWORD(result) - result;
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v11 = result[2];
  v10 = result[3];
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_18:
    v9 = v2;
  }

LABEL_19:
  if (v9 >= 2)
  {
    v12 = sub_2557B0A08();
    v14 = v13;
    v15 = sub_2557ADFCC(v12, v13);
    sub_25578AAE0(v12, v14);
    return v15;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25578F7D0(uint64_t result, unint64_t a2)
{
  v3 = BYTE6(a2);
  v34[5] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_25578AA30();
      swift_allocError();
      *v9 = xmmword_2557B1AA0;
      *(v9 + 16) = 7;
      swift_willThrow();
      return v2;
    }

    goto LABEL_45;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v10 = HIDWORD(result) - result;
        goto LABEL_19;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  v12 = *(result + 16);
  v11 = *(result + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_18:
    v10 = v3;
  }

LABEL_19:
  if (v10 >= 2)
  {
    v13 = sub_2557B0A08();
    v34[3] = MEMORY[0x277CC9318];
    v34[4] = MEMORY[0x277CC9300];
    v34[0] = v13;
    v34[1] = v14;
    v15 = __swift_project_boxed_opaque_existential_1(v34, MEMORY[0x277CC9318]);
    v16 = *v15;
    v17 = v15[1];
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        memset(v32, 0, 14);
        v20 = v32;
        v19 = v32;
        goto LABEL_42;
      }

      v21 = *(v16 + 16);
      v22 = *(v16 + 24);
      v23 = sub_2557B0868();
      if (v23)
      {
        v24 = sub_2557B0888();
        v16 = v21 - v24;
        if (__OFSUB__(v21, v24))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v23 += v16;
      }

      v7 = __OFSUB__(v22, v21);
      v25 = v22 - v21;
      if (!v7)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v32[0] = *v15;
      LOWORD(v32[1]) = v17;
      BYTE2(v32[1]) = BYTE2(v17);
      BYTE3(v32[1]) = BYTE3(v17);
      BYTE4(v32[1]) = BYTE4(v17);
      BYTE5(v32[1]) = BYTE5(v17);
      v19 = v32 + BYTE6(v17);
      v20 = v32;
LABEL_42:
      sub_2557AB18C(v20, v19, &v33);
      v2 = v33;
      __swift_destroy_boxed_opaque_existential_0(v34);
      return v2;
    }

    v26 = v16;
    v27 = v16 >> 32;
    v25 = v27 - v26;
    if (v27 >= v26)
    {
      v23 = sub_2557B0868();
      if (!v23)
      {
LABEL_34:
        v29 = sub_2557B0878();
        if (v29 >= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = v29;
        }

        v31 = (v30 + v23);
        if (v23)
        {
          v19 = v31;
        }

        else
        {
          v19 = 0;
        }

        v20 = v23;
        goto LABEL_42;
      }

      v28 = sub_2557B0888();
      if (!__OFSUB__(v26, v28))
      {
        v23 += v26 - v28;
        goto LABEL_34;
      }

LABEL_49:
      __break(1u);
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void *sub_25578FAC0(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_30;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_83;
    }

    if (v9 < 2)
    {
      goto LABEL_30;
    }
  }

  else if (v5)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_84;
    }

    if (HIDWORD(a1) - a1 < 2)
    {
      goto LABEL_30;
    }
  }

  else if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_30;
  }

  v56 = HIDWORD(a1);
  if (v5 == 2)
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v8 = __OFSUB__(v10, v11);
    v12 = v10 - v11;
    if (v8)
    {
      goto LABEL_87;
    }

    if (v12 < 3)
    {
      return sub_25578AE18(MEMORY[0x277D84F90]);
    }
  }

  else if (v5 == 1)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_86;
    }

    if (HIDWORD(a1) - a1 < 3)
    {
      return sub_25578AE18(MEMORY[0x277D84F90]);
    }
  }

  else if (BYTE6(a2) < 3uLL)
  {
    return sub_25578AE18(MEMORY[0x277D84F90]);
  }

  if (v5 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v8 = __OFSUB__(v15, v16);
    v13 = v15 - v16;
    if (!v8)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    v13 = BYTE6(a2);
    goto LABEL_28;
  }

  if (v5 != 1)
  {
    goto LABEL_27;
  }

  LODWORD(v13) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_88;
  }

  v13 = v13;
LABEL_28:
  v8 = __OFSUB__(v13, 2);
  v17 = v13 - 2;
  if (v8)
  {
    goto LABEL_85;
  }

  if (0x8E38E38E38E38E39 * v17 + 0xE38E38E38E38E38 <= 0x1C71C71C71C71C70)
  {
    v2 = sub_25578AE18(MEMORY[0x277D84F90]);
    v19 = 0;
    v55 = v56 - v4;
    v20 = __OFSUB__(v56, v4);
    v54 = v20;
    v59 = v5;
    v60 = BYTE6(v3);
    v52 = v4 >> 32;
    v53 = v4;
    v57 = v3;
    v58 = v4;
    while (1)
    {
      v24 = v60;
      if (v5)
      {
        if (v5 == 2)
        {
          v26 = *(v4 + 16);
          v25 = *(v4 + 24);
          v8 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v8)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v24 = v55;
          if (v54)
          {
            goto LABEL_76;
          }
        }
      }

      if (v24 < v19 + 11)
      {
        return v2;
      }

      v27 = v19 + 2;
      v61 = v19;
      if (v5 == 2)
      {
        break;
      }

      if (v5 == 1)
      {
        if (v27 < v53 || v27 >= v52)
        {
          goto LABEL_79;
        }

        v28 = sub_2557B0868();
        if (!v28)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          result = sub_2557B0FB8();
          __break(1u);
          return result;
        }

        v29 = v28;
        v30 = sub_2557B0888();
        v31 = v27 - v30;
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_81;
        }

        goto LABEL_57;
      }

      if (v27 >= v60)
      {
        goto LABEL_77;
      }

      BYTE2(v62) = BYTE2(v4);
      BYTE3(v62) = BYTE3(v4);
      BYTE4(v62) = v56;
      BYTE5(v62) = BYTE5(v4);
      BYTE6(v62) = BYTE6(v4);
      HIBYTE(v62) = HIBYTE(v4);
      v63 = v3;
      v64 = BYTE2(v3);
      v65 = BYTE3(v3);
      v66 = BYTE4(v3);
      v67 = BYTE5(v3);
      v34 = *(&v62 + v19 + 2);
LABEL_60:
      v35 = v19 + 11;
      v36 = sub_2557B0A08();
      v38 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v2;
      v40 = v34;
      v42 = sub_2557896D0(v34);
      v43 = v2[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
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
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
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
        __break(1u);
LABEL_88:
        __break(1u);
      }

      v46 = v41;
      if (v2[3] >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = v62;
          if (v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_25578A4FC();
          v2 = v62;
          if (v46)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_255789E50(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_2557896D0(v40);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_91;
        }

        v42 = v47;
        v2 = v62;
        if (v46)
        {
LABEL_36:
          v21 = (v2[7] + 16 * v42);
          v22 = *v21;
          v23 = v21[1];
          *v21 = v36;
          v21[1] = v38;
          sub_25578AAE0(v22, v23);
          goto LABEL_37;
        }
      }

      v2[(v42 >> 6) + 8] |= 1 << v42;
      *(v2[6] + v42) = v40;
      v49 = (v2[7] + 16 * v42);
      *v49 = v36;
      v49[1] = v38;
      v50 = v2[2];
      v8 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v8)
      {
        goto LABEL_74;
      }

      v2[2] = v51;
LABEL_37:
      v19 = v61 + 9;
      v3 = v57;
      v4 = v58;
      LODWORD(v5) = v59;
      if (__OFADD__(v35, 9))
      {
        goto LABEL_73;
      }
    }

    if (v27 < *(v4 + 16))
    {
      goto LABEL_78;
    }

    if (v27 >= *(v4 + 24))
    {
      goto LABEL_80;
    }

    v32 = sub_2557B0868();
    if (!v32)
    {
      goto LABEL_90;
    }

    v29 = v32;
    v33 = sub_2557B0888();
    v31 = v27 - v33;
    if (__OFSUB__(v27, v33))
    {
      goto LABEL_82;
    }

LABEL_57:
    v34 = *(v29 + v31);
    goto LABEL_60;
  }

LABEL_30:
  sub_25578AA30();
  swift_allocError();
  *v18 = xmmword_2557B1AA0;
  *(v18 + 16) = 7;
  swift_willThrow();
  return v2;
}

uint64_t sub_25578FFF0(uint64_t result, unint64_t a2)
{
  v31 = BYTE6(a2);
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v8 = v5 - v6;
      if (v7)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v8 < 2)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

LABEL_30:
    sub_25578AA30();
    swift_allocError();
    *v16 = xmmword_2557B1AA0;
    *(v16 + 16) = 7;
    swift_willThrow();
    return v2;
  }

  if (!v4)
  {
    if (BYTE6(a2) < 2uLL)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (HIDWORD(result) - result < 2)
  {
    goto LABEL_30;
  }

LABEL_11:
  if (v4 == 2)
  {
    v10 = *(result + 16);
    v9 = *(result + 24);
    v7 = __OFSUB__(v9, v10);
    v11 = v9 - v10;
    if (v7)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v11 != 2)
    {
      goto LABEL_20;
    }

    return MEMORY[0x277D84F90];
  }

  if (v4 != 1)
  {
    if (BYTE6(a2) != 2)
    {
      goto LABEL_20;
    }

    return MEMORY[0x277D84F90];
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (HIDWORD(result) - result == 2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_20:
  if (v4 == 2)
  {
    v14 = *(result + 16);
    v13 = *(result + 24);
    v7 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v7)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v4 != 1)
  {
LABEL_27:
    v12 = BYTE6(a2);
    goto LABEL_28;
  }

  LODWORD(v12) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v12 = v12;
LABEL_28:
    v7 = __OFSUB__(v12, 2);
    v15 = v12 - 2;
    if (v7)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (__ROR8__(0x8E38E38E38E38E39 * v15 + 0xE38E38E38E38E38, 1) > 0xE38E38E38E38E38uLL)
    {
      goto LABEL_30;
    }

    v17 = __OFSUB__(HIDWORD(result), result);
    v30 = v17;
    v29 = HIDWORD(result) - result;
    v2 = MEMORY[0x277D84F90];
    v18 = 20;
    do
    {
      v19 = v31;
      if (v4)
      {
        if (v4 == 2)
        {
          v21 = *(v3 + 16);
          v20 = *(v3 + 24);
          v7 = __OFSUB__(v20, v21);
          v19 = v20 - v21;
          if (v7)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v19 = v29;
          if (v30)
          {
            goto LABEL_51;
          }
        }
      }

      if (v19 < v18)
      {
        return v2;
      }

      v22 = sub_2557B0A08();
      v24 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255794424(0, *(v2 + 16) + 1, 1, v2);
        v2 = result;
      }

      v26 = *(v2 + 16);
      v25 = *(v2 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_255794424((v25 > 1), v26 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v26 + 1;
      v27 = v2 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v28 = v18 - 18;
      v18 += 18;
    }

    while (!__OFADD__(v28, 36));
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_58:
  __break(1u);
  return result;
}

void *sub_2557902CC(unint64_t a1, unint64_t a2)
{
  v4 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (v8)
      {
        goto LABEL_85;
      }

      if (v9 >= 2)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      if (BYTE6(a2) < 2uLL)
      {
        goto LABEL_66;
      }

LABEL_11:
      v56 = HIDWORD(a1);
      if (v5 != 2)
      {
        if (v5 != 1)
        {
          if ((a2 & 0x1000000000000) != 0)
          {
            goto LABEL_66;
          }

          goto LABEL_18;
        }

        v10 = BYTE4(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_17:
          if (v10)
          {
            goto LABEL_66;
          }

LABEL_18:
          v2 = sub_25578AD38(MEMORY[0x277D84F90]);
          v13 = 0;
          v55 = v56 - v4;
          v14 = __OFSUB__(v56, v4);
          v54 = v14;
          v15 = BYTE6(a2);
          v52 = v4 >> 32;
          v53 = v4;
          v57 = v5;
          v58 = v4;
          while (1)
          {
            v16 = v15;
            if (v5)
            {
              if (v5 == 2)
              {
                v18 = *(v4 + 16);
                v17 = *(v4 + 24);
                v8 = __OFSUB__(v17, v18);
                v16 = v17 - v18;
                if (v8)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v16 = v55;
                if (v54)
                {
                  goto LABEL_71;
                }
              }
            }

            v19 = v13 + 4;
            if (v16 < v13 + 4)
            {
              return v2;
            }

            v20 = v13 + 2;
            if (v5 == 2)
            {
              break;
            }

            if (v5 == 1)
            {
              if (v20 < v53 || v20 >= v52)
              {
                goto LABEL_75;
              }

              v21 = sub_2557B0868();
              if (!v21)
              {
                goto LABEL_88;
              }

              v22 = v21;
              v23 = sub_2557B0888();
              v24 = v20 - v23;
              if (__OFSUB__(v20, v23))
              {
                goto LABEL_78;
              }

              v25 = v13 + 3;
              if (v13 + 3 >= v52)
              {
                goto LABEL_79;
              }

              v26 = *(v22 + v24);
              v27 = sub_2557B0868();
              if (!v27)
              {
                goto LABEL_90;
              }

              v28 = v27;
              v29 = sub_2557B0888();
              v30 = v25 - v29;
              if (__OFSUB__(v25, v29))
              {
                goto LABEL_82;
              }

LABEL_50:
              v38 = *(v28 + v30);
              goto LABEL_54;
            }

            if (v20 >= v15)
            {
              goto LABEL_73;
            }

            BYTE2(v59) = BYTE2(v4);
            BYTE3(v59) = BYTE3(v4);
            BYTE4(v59) = v56;
            BYTE5(v59) = BYTE5(v4);
            BYTE6(v59) = BYTE6(v4);
            HIBYTE(v59) = HIBYTE(v4);
            LOWORD(v60) = a2;
            BYTE2(v60) = BYTE2(a2);
            HIBYTE(v60) = BYTE3(a2);
            LOBYTE(v61) = BYTE4(a2);
            HIBYTE(v61) = BYTE5(a2);
            if (v13 + 3 >= v15)
            {
              goto LABEL_76;
            }

            v26 = *(&v59 + v13 + 2);
            v59 = v4;
            v60 = a2;
            v61 = WORD2(a2);
            v38 = *(&v59 + v13 + 3);
LABEL_54:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v2;
            v40 = sub_2557896D0(v26);
            v42 = v2[2];
            v43 = (v41 & 1) == 0;
            v8 = __OFADD__(v42, v43);
            v44 = v42 + v43;
            if (v8)
            {
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
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
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
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
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
            }

            v45 = v41;
            if (v2[3] < v44)
            {
              sub_255789BE8(v44, isUniquelyReferenced_nonNull_native);
              v40 = sub_2557896D0(v26);
              if ((v45 & 1) != (v46 & 1))
              {
                result = sub_2557B0FB8();
                __break(1u);
                return result;
              }

LABEL_59:
              v4 = v58;
              v2 = v59;
              if (v45)
              {
                goto LABEL_22;
              }

              goto LABEL_60;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_59;
            }

            v49 = v40;
            sub_25578A3B0();
            v40 = v49;
            v4 = v58;
            v2 = v59;
            if (v45)
            {
LABEL_22:
              *(v2[7] + v40) = v38;
              goto LABEL_23;
            }

LABEL_60:
            v2[(v40 >> 6) + 8] |= 1 << v40;
            *(v2[6] + v40) = v26;
            *(v2[7] + v40) = v38;
            v47 = v2[2];
            v8 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v8)
            {
              goto LABEL_70;
            }

            v2[2] = v48;
LABEL_23:
            v13 += 2;
            v15 = BYTE6(a2);
            LODWORD(v5) = v57;
            if (__OFADD__(v19, 2))
            {
              goto LABEL_69;
            }
          }

          if (v20 < *(v4 + 16))
          {
            goto LABEL_74;
          }

          if (v20 >= *(v4 + 24))
          {
            goto LABEL_77;
          }

          v31 = sub_2557B0868();
          if (!v31)
          {
            goto LABEL_89;
          }

          v32 = v31;
          v33 = sub_2557B0888();
          v34 = v20 - v33;
          if (__OFSUB__(v20, v33))
          {
            goto LABEL_80;
          }

          v35 = v13 + 3;
          if (v13 + 3 < *(v4 + 16))
          {
            goto LABEL_81;
          }

          if (v35 >= *(v4 + 24))
          {
            goto LABEL_83;
          }

          v26 = *(v32 + v34);
          v36 = sub_2557B0868();
          if (!v36)
          {
            goto LABEL_91;
          }

          v28 = v36;
          v37 = sub_2557B0888();
          v30 = v35 - v37;
          if (__OFSUB__(v35, v37))
          {
            goto LABEL_84;
          }

          goto LABEL_50;
        }

        __break(1u);
      }

      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v8 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (v8)
      {
        goto LABEL_87;
      }

      goto LABEL_17;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_86;
    }

    if (HIDWORD(a1) - a1 >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_66:
  sub_25578AA30();
  swift_allocError();
  *v50 = xmmword_2557B1AA0;
  *(v50 + 16) = 7;
  swift_willThrow();
  return v2;
}

uint64_t sub_255790794(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25578F380(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2557B0D18();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25578F380(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25578F380(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_2557B0D18();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_255790C28(char a1)
{
  if (((a1 + 62) & 0xF8) != 0)
  {
    return 7;
  }

  else
  {
    return (0x507040306020100uLL >> (8 * (a1 + 62)));
  }
}

unint64_t sub_255790C58()
{
  result = qword_27F7D2EF8;
  if (!qword_27F7D2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2EF8);
  }

  return result;
}

unint64_t sub_255790CB0()
{
  result = qword_27F7D2F08;
  if (!qword_27F7D2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2F08);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255790D64(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x616372657473614DLL;
    v7 = 1634953558;
    v8 = 2019913025;
    if (a1 != 3)
    {
      v8 = 4342602;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 1701999952;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 2020505932;
    v2 = 0x63617265746E49;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E55;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7265766F63736944;
    v4 = 4804693;
    if (a1 != 6)
    {
      v4 = 0x534F50544645;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255790E90(uint64_t a1, uint64_t a2)
{
  v2 = sub_2557B0C68();
  v4 = v3;

  if (v2 == 0x616372657473616DLL && v4 == 0xEA00000000006472 || (sub_2557B0F98() & 1) != 0)
  {

    return 1;
  }

  else if (v2 == 1634953590 && v4 == 0xE400000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 2;
  }

  else if (v2 == 2019913057 && v4 == 0xE400000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 3;
  }

  else if (v2 == 6447978 && v4 == 0xE300000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 4;
  }

  else if (v2 == 0x7265766F63736964 && v4 == 0xE800000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 5;
  }

  else if (v2 == 0x63617265746E69 && v4 == 0xE700000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 9;
  }

  else if (v2 == 2020505964 && v4 == 0xE400000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 8;
  }

  else if (v2 == 0x736F70746665 && v4 == 0xE600000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 7;
  }

  else if (v2 == 6910069 && v4 == 0xE300000000000000 || (sub_2557B0F98() & 1) != 0)
  {

    return 6;
  }

  else if (v2 == 1701999984 && v4 == 0xE400000000000000)
  {

    return 0;
  }

  else
  {
    v6 = sub_2557B0F98();

    if (v6)
    {
      return 0;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2557911E8(char a1)
{
  if ((a1 + 1) > 0x10u)
  {
    return 11;
  }

  else
  {
    return byte_2557B1E0A[(a1 + 1)];
  }
}

uint64_t sub_255791214(char a1)
{
  result = 6645058;
  switch(a1)
  {
    case 1:
      result = 0x736C697455;
      break;
    case 2:
      result = 0x7265676E697453;
      break;
    case 3:
      result = 0x616372657473614DLL;
      break;
    case 4:
      result = 1634953558;
      break;
    case 5:
      result = 2019913025;
      break;
    case 6:
      result = 0x7265766F63736944;
      break;
    case 7:
      result = 2020505932;
      break;
    case 8:
      result = 0x656E6E6F63656542;
      break;
    case 9:
      result = 0x736F70746645;
      break;
    case 10:
      result = 4342602;
      break;
    case 11:
      result = 0x63617265746E49;
      break;
    case 12:
      result = 4804693;
      break;
    case 13:
      result = 1701999952;
      break;
    case 14:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2557913C8()
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_255791450(uint64_t a1)
{
  sub_2557B1028();
  sub_2557B1048();
  return sub_2557B1058();
}

uint64_t sub_25579149C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2557914E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2557914E8(char a1)
{
  if ((a1 + 1) > 0xEu)
  {
    return 15;
  }

  else
  {
    return byte_2557B1F11[(a1 + 1)];
  }
}

uint64_t getEnumTagSinglePayload for ApplicationCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255791668()
{
  result = qword_27F7D2F10;
  if (!qword_27F7D2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D2F10);
  }

  return result;
}

uint64_t sub_2557916BC()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D2F18);
  __swift_project_value_buffer(v0, qword_27F7D2F18);
  return sub_2557B0B28();
}

uint64_t sub_255791734()
{
  v0 = sub_2557B0B38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2557B0AB8();
  __swift_allocate_value_buffer(v5, qword_27F7D2F30);
  __swift_project_value_buffer(v5, qword_27F7D2F30);
  if (qword_27F7D2DE0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27F7D2F18);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2557B0A98();
}

uint64_t sub_255791870@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a2;
  v44 = a3;
  v43 = a1;
  v40 = a8;
  v12 = sub_2557B0A88();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - v19;
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v42 = a7;
  v21 = sub_2557B0AB8();
  __swift_project_value_buffer(v21, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  if (a5)
  {
    v38 = a4;

    v22 = sub_2557B0AA8();
    v23 = sub_2557B0E38();
    result = sub_2557B0E48();
    if ((result & 1) == 0)
    {

LABEL_24:
      (*(v13 + 16))(v17, v20, v12);
      sub_2557B0AF8();
      swift_allocObject();
      v34 = sub_2557B0AE8();
      sub_2557A9840(a6, v42);
      sub_2557920B8(v43, v41, v44, v34);

      (*(v13 + 8))(v20, v12);
    }

    v39 = a6;
    v37 = v23;
    if ((v44 & 1) == 0)
    {

      v25 = v43;
      if (!v43)
      {
        __break(1u);
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    if (v43 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v43 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v43 >> 16 <= 0x10)
      {

        v25 = &v45;
LABEL_17:
        v36 = v25;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_2557AAA60(v38, a5, &v45);
        v31 = sub_2557B0A78();
        _os_signpost_emit_with_name_impl(&dword_255786000, v22, v37, v31, v36, "%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x259C40F40](v30, -1, -1);
        MEMORY[0x259C40F40](v29, -1, -1);

        a6 = v39;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  v26 = sub_2557B0AA8();
  v27 = sub_2557B0E38();
  result = sub_2557B0E48();
  if ((result & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  v39 = a6;
  if ((v44 & 1) == 0)
  {
    if (v43)
    {
      v28 = v43;
LABEL_22:
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_2557B0A78();
      _os_signpost_emit_with_name_impl(&dword_255786000, v26, v27, v33, v28, "", v32, 2u);
      MEMORY[0x259C40F40](v32, -1, -1);
      a6 = v39;
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (v43 >> 32)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v28 = &v46;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_255791C90@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v43 = a2;
  v10 = a3;
  v45 = a1;
  v42 = a7;
  v11 = sub_2557B0A88();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v38 - v19;
  if (qword_27F7D2DE8 != -1)
  {
    v37 = v18;
    swift_once();
    v18 = v37;
  }

  v44 = v18;
  v21 = sub_2557B0AB8();
  __swift_project_value_buffer(v21, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  if (a5)
  {

    v22 = sub_2557B0AA8();
    v40 = sub_2557B0E38();
    result = sub_2557B0E48();
    if (result)
    {
      v41 = a6;
      if (v10)
      {
        if (!(v45 >> 32))
        {
          if ((v45 & 0xFFFFF800) == 0xD800)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v45 >> 16 <= 0x10)
          {
            v24 = a4;
            v26 = v10;

            v25 = &v46;
            goto LABEL_17;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v24 = a4;

        v25 = v45;
        if (v45)
        {
          v26 = v10;
LABEL_17:
          v39 = v25;
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v46 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_2557AAA60(v24, a5, &v46);
          v32 = sub_2557B0A78();
          _os_signpost_emit_with_name_impl(&dword_255786000, v22, v40, v32, v39, "%s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x259C40F40](v31, -1, -1);
          MEMORY[0x259C40F40](v30, -1, -1);

          a6 = v41;
LABEL_25:
          v35 = v44;
          (*(v12 + 16))(v16, v20, v44);
          sub_2557B0AF8();
          swift_allocObject();
          v36 = sub_2557B0AE8();
          sub_2557AA6A4(a6, v42);
          sub_2557920B8(v45, v43, v26, v36);

          (*(v12 + 8))(v20, v35);
        }

        __break(1u);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v26 = v10;

LABEL_24:

    goto LABEL_25;
  }

  v22 = sub_2557B0AA8();
  v27 = sub_2557B0E38();
  result = sub_2557B0E48();
  if ((result & 1) == 0)
  {
LABEL_23:
    v26 = v10;
    goto LABEL_24;
  }

  v41 = a6;
  if ((v10 & 1) == 0)
  {
    if (!v45)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v28 = v10;
    v29 = v45;
    goto LABEL_22;
  }

  if (v45 >> 32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v45 & 0xFFFFF800) != 0xD800)
  {
    if (v45 >> 16 > 0x10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = v10;
    v29 = &v47;
LABEL_22:
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v22, v27, v34, v29, "", v33, 2u);
    MEMORY[0x259C40F40](v33, -1, -1);
    a6 = v41;
    v10 = v28;
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2557920B8(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = a3;
  v5 = sub_2557B0AC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2557B0A88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v15 = sub_2557B0AB8();
  __swift_project_value_buffer(v15, qword_27F7D2F30);
  v16 = sub_2557B0AA8();
  sub_2557B0AD8();
  v21 = sub_2557B0E28();
  result = sub_2557B0E48();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v22 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2557B0B08();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_2557B0A78();
      _os_signpost_emit_with_name_impl(&dword_255786000, v16, v21, v20, a1, v18, v19, 2u);
      MEMORY[0x259C40F40](v19, -1, -1);
LABEL_15:

      return (*(v11 + 8))(v14, v10);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2557923C8(unint64_t a1, NSObject *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v36 = a6;
  v35 = a7;
  v33 = a4;
  LODWORD(v8) = a3;
  v11 = sub_2557B0A88();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - v18;
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v20 = sub_2557B0AB8();
  __swift_project_value_buffer(v20, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v38 = a1;
  if (a5)
  {
    v34 = a2;

    a2 = sub_2557B0AA8();
    v31 = sub_2557B0E38();
    result = sub_2557B0E48();
    if (result)
    {
      v32 = v8;
      if (v8)
      {
        if (!HIDWORD(a1))
        {
          if ((a1 & 0xFFFFF800) == 0xD800)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (a1 >> 16 <= 0x10)
          {

            v30 = &v39;
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      else
      {

        if (a1)
        {
          v30 = a1;
LABEL_17:
          v8 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v39 = v24;
          *v8 = 136315138;
          *(v8 + 4) = sub_2557AAA60(v33, a5, &v39);
          v25 = sub_2557B0A78();
          _os_signpost_emit_with_name_impl(&dword_255786000, a2, v31, v25, v30, "%s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x259C40F40](v24, -1, -1);
          MEMORY[0x259C40F40](v8, -1, -1);

          LODWORD(v8) = v32;
          goto LABEL_18;
        }

        __break(1u);
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_12:

LABEL_18:
    a2 = v34;
    goto LABEL_25;
  }

  v22 = sub_2557B0AA8();
  v23 = sub_2557B0E38();
  result = sub_2557B0E48();
  if (result)
  {
    v32 = v8;
    v34 = a2;
    if (v8)
    {
      if (HIDWORD(v38))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ((v38 & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (v38 >> 16 > 0x10)
      {
        goto LABEL_32;
      }

      v8 = &v40;
    }

    else
    {
      v8 = v38;
      if (!v38)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v22, v23, v27, v8, "", v26, 2u);
    MEMORY[0x259C40F40](v26, -1, -1);
    LODWORD(v8) = v32;
    a2 = v34;
  }

LABEL_25:
  (*(v12 + 16))(v16, v19, v11);
  sub_2557B0AF8();
  swift_allocObject();
  v28 = sub_2557B0AE8();
  v29 = v37;
  sub_2557A2010(v36, v35 & 1, &v41);
  sub_2557920B8(v38, a2, v8, v28);

  if (v29)
  {
    return (*(v12 + 8))(v19, v11);
  }

  (*(v12 + 8))(v19, v11);
  return v41;
}

uint64_t sub_255792810(unint64_t a1, NSObject *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v35 = a6;
  v33 = a4;
  LODWORD(v7) = a3;
  v10 = sub_2557B0A88();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  if (qword_27F7D2DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_2557B0AB8();
  __swift_project_value_buffer(v19, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v37 = a1;
  if (a5)
  {
    v34 = a2;

    a2 = sub_2557B0AA8();
    v31 = sub_2557B0E38();
    result = sub_2557B0E48();
    if (result)
    {
      v32 = v7;
      if (v7)
      {
        if (!HIDWORD(a1))
        {
          if ((a1 & 0xFFFFF800) == 0xD800)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (a1 >> 16 <= 0x10)
          {

            v30 = &v38;
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      else
      {

        if (a1)
        {
          v30 = a1;
LABEL_17:
          v7 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v38 = v23;
          *v7 = 136315138;
          *(v7 + 4) = sub_2557AAA60(v33, a5, &v38);
          v24 = sub_2557B0A78();
          _os_signpost_emit_with_name_impl(&dword_255786000, a2, v31, v24, v30, "%s", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x259C40F40](v23, -1, -1);
          MEMORY[0x259C40F40](v7, -1, -1);

          LODWORD(v7) = v32;
          goto LABEL_18;
        }

        __break(1u);
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_12:

LABEL_18:
    a2 = v34;
    goto LABEL_25;
  }

  v21 = sub_2557B0AA8();
  v22 = sub_2557B0E38();
  result = sub_2557B0E48();
  if (result)
  {
    v32 = v7;
    v34 = a2;
    if (v7)
    {
      if (HIDWORD(v37))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ((v37 & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (v37 >> 16 > 0x10)
      {
        goto LABEL_32;
      }

      v7 = &v39;
    }

    else
    {
      v7 = v37;
      if (!v37)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v21, v22, v26, v7, "", v25, 2u);
    MEMORY[0x259C40F40](v25, -1, -1);
    LODWORD(v7) = v32;
    a2 = v34;
  }

LABEL_25:
  (*(v11 + 16))(v15, v18, v10);
  sub_2557B0AF8();
  swift_allocObject();
  v27 = sub_2557B0AE8();
  v28 = v36;
  sub_2557A2FD0(v35, &v40);
  sub_2557920B8(v37, a2, v7, v27);

  if (v28)
  {
    return (*(v11 + 8))(v18, v10);
  }

  (*(v11 + 8))(v18, v10);
  return v40;
}

void sub_255792C4C(uint64_t a1, unint64_t a2)
{

  oslog = sub_2557B0B18();
  v4 = sub_2557B0DE8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_2557AAA60(a1, a2, &v8);
    _os_log_impl(&dword_255786000, oslog, v4, "SLAMLogSink: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C40F40](v6, -1, -1);
    MEMORY[0x259C40F40](v5, -1, -1);
  }
}

void *sub_255792D68(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  sub_255793B04(v2 + 16, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_25578BB90(v14);
  if (Strong)
  {
    v4 = sub_2557B09E8();
    v5 = sub_2557B0C08();
    v14[0] = 0;
    v6 = [Strong transceive:v4 forSEID:v5 error:v14];

    v7 = v14[0];
    if (v6)
    {
      v8 = sub_2557B09F8();
    }

    else
    {
      v8 = v7;
      sub_2557B0908();

      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_2557B0B18();
    v10 = sub_2557B0DD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_255786000, v9, v10, "session reference lost", v11, 2u);
      MEMORY[0x259C40F40](v11, -1, -1);
    }

    v8 = 0x80000002557B3790;
    sub_25578AA30();
    swift_allocError();
    *v12 = 0xD000000000000016;
    *(v12 + 8) = 0x80000002557B3790;
    *(v12 + 16) = 6;
    swift_willThrow();
  }

  return v8;
}

unint64_t sub_255792F64(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = a1;
  *v92 = *(a1 + 16);
  *&v92[15] = *(a1 + 31);
  sub_25578BBE4(v92, v91);
  if (v92[18])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2557AD554(*v92, *&v92[8], v7 | (v92[17] << 8) | v92[16]);
  v10 = v9;
  sub_25578BC40(v92);

  sub_25578ACE4(v8, v10);
  v11 = sub_2557B0B18();
  v12 = sub_2557B0DE8();

  v89 = v8;
  sub_25578AAE0(v8, v10);
  if (os_log_type_enabled(v11, v12))
  {
    v85 = v5;
    v13 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91[0] = v88;
    *v13 = 136446466;
    v87 = v12;
    v14 = (*(*v6 + 136))();
    v16 = sub_2557AAA60(v14, v15, v91);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    sub_2557A594C(v8, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
    v17 = v10;
    sub_25578AB8C();
    v18 = sub_2557B0BF8();
    v20 = v19;

    v21 = sub_2557AAA60(v18, v20, v91);
    v10 = v17;
    v4 = v3;

    *(v13 + 14) = v21;
    _os_log_impl(&dword_255786000, v11, v87, "sending command <%{public}s>: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C40F40](v88, -1, -1);
    v22 = v13;
    v5 = v85;
    MEMORY[0x259C40F40](v22, -1, -1);
  }

  v23 = v5;
  v24 = sub_255792D68(v89, v10);
  if (v4)
  {

    sub_25578AA30();
    swift_allocError();
    *v26 = xmmword_2557B1F40;
    *(v26 + 16) = 7;
    swift_willThrow();
  }

  else
  {
    v27 = v24;
    v28 = v25;
    sub_25578ACE4(v24, v25);
    v29 = sub_2557ADDA8(v27, v28);
    v31 = v30;
    sub_25578AAE0(v27, v28);
    v84 = v28;
    v81 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D84C58];
    *(v32 + 16) = xmmword_2557B1770;
    v34 = MEMORY[0x277D84CB8];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    v93 = v31;
    *(v32 + 32) = v31;
    v80 = sub_2557B0C48();
    v36 = v35;

    v83 = v29;
    v23 = v29;
    v37 = sub_2557B0B18();
    LOBYTE(v29) = sub_2557B0DE8();
    v82 = v36;

    v79 = v29;
    if (os_log_type_enabled(v37, v29))
    {
      log = v37;
      v38 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v91[0] = v76;
      *v38 = 136446722;
      v78 = v6;
      v39 = v23;
      v40 = (*(*v6 + 136))();
      v42 = sub_2557AAA60(v40, v41, v91);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      v43 = *(v39 + 16);
      v44 = v84;
      if (v43)
      {
        v75 = v10;
        v90 = MEMORY[0x277D84F90];
        sub_2557AB37C(0, v43, 0);
        v45 = (v39 + 32);
        do
        {
          v46 = *v45++;
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_2557B1770;
          *(v47 + 56) = MEMORY[0x277D84B78];
          *(v47 + 64) = MEMORY[0x277D84BC0];
          *(v47 + 32) = v46;
          v48 = sub_2557B0C48();
          v50 = v49;
          v52 = *(v90 + 16);
          v51 = *(v90 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_2557AB37C((v51 > 1), v52 + 1, 1);
          }

          *(v90 + 16) = v52 + 1;
          v53 = v90 + 16 * v52;
          *(v53 + 32) = v48;
          *(v53 + 40) = v50;
          --v43;
        }

        while (v43);
        v10 = v75;
        v44 = v84;
      }

      v54 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
      sub_25578AB8C();
      v55 = sub_2557B0BF8();
      v57 = v56;

      v58 = sub_2557AAA60(v55, v57, v91);

      *(v38 + 14) = v58;
      *(v38 + 22) = 2082;
      *(v38 + 24) = sub_2557AAA60(v80, v82, v91);
      _os_log_impl(&dword_255786000, log, v79, "received response <%{public}s>:  %{public}s %{public}s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C40F40](v76, -1, -1);
      MEMORY[0x259C40F40](v38, -1, -1);

      v6 = v78;
      v23 = v83;
    }

    else
    {

      v54 = v81;
      v44 = v84;
    }

    v59 = *(a2 + 16);
    v60 = (a2 + 32);
    while (v59)
    {
      v61 = *v60++;
      --v59;
      if (v61 == v93)
      {

        sub_25578AAE0(v54, v44);
        sub_25578AAE0(v89, v10);
        return v23;
      }
    }

    v62 = sub_2557B0B18();
    v23 = v6;
    v63 = sub_2557B0DD8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = v54;
      v66 = swift_slowAlloc();
      v91[0] = v66;
      *v64 = 136446466;
      v67 = sub_2557AAA60(v80, v82, v91);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2082;
      v69 = (*(*v23 + 136))(v68);
      v23 = sub_2557AAA60(v69, v70, v91);

      *(v64 + 14) = v23;
      _os_log_impl(&dword_255786000, v62, v63, "unexpected status word %{public}s received for command %{public}s", v64, 0x16u);
      swift_arrayDestroy();
      v71 = v66;
      v54 = v65;
      MEMORY[0x259C40F40](v71, -1, -1);
      v72 = v64;
      v44 = v84;
      MEMORY[0x259C40F40](v72, -1, -1);
    }

    else
    {
    }

    sub_25578AA30();
    swift_allocError();
    *v73 = xmmword_2557B1F50;
    *(v73 + 16) = 7;
    swift_willThrow();
    sub_25578AAE0(v54, v44);
  }

  sub_25578AAE0(v89, v10);
  return v23;
}

uint64_t sub_255793970()
{
  sub_25578BB90(v0 + 16);
  v1 = OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger;
  v2 = sub_2557B0B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SEHandler(uint64_t a1)
{
  result = qword_27F7D3008;
  if (!qword_27F7D3008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255793A68(uint64_t a1)
{
  result = sub_2557B0B38();
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

uint64_t sub_255793B60()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D3018);
  __swift_project_value_buffer(v0, qword_27F7D3018);
  return sub_2557B0B28();
}

void sub_255793BE0(uint64_t *a1@<X8>)
{
  type metadata accessor for Select();
  swift_initStackObject();
  v3 = sub_25578C0EC(1);
  sub_255792F64(v3, &unk_286790B28);
  if (v1)
  {
  }

  else
  {

    type metadata accessor for GetMemoryInfo();
    swift_initStackObject();
    v4 = sub_25578C5F8(0);
    swift_initStackObject();
    v5 = sub_25578C5F8(1);
    v40 = MEMORY[0x277D84F90];
    v6 = sub_255792F64(v4, &unk_286790B50);
    if (v7 == 27272)
    {

      v8 = sub_2557B0B18();
      v9 = sub_2557B0DE8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_255786000, v8, v9, "Could not get memory usage from applets: expected aid not found", v10, 2u);
        MEMORY[0x259C40F40](v10, -1, -1);
      }

      *a1 = 0u;
      *(a1 + 1) = 0u;
    }

    else
    {
      v38 = a1;
      v11 = v7;
      sub_255794A3C(v6);
      if (v11 == 25360)
      {
        do
        {
          v12 = sub_255792F64(v5, &unk_286790B78);
          v14 = v13;
          sub_255794A3C(v12);
        }

        while (v14 == 25360);
      }

      v15 = sub_25578CF58(v39, v40);
      v17 = v16;
      v35 = v15;

      v18 = v39[0];
      v19 = v39[1];
      v36 = v39[3];
      v37 = v39[2];
      v20 = sub_2557B0B18();
      v21 = sub_2557B0DE8();
      if (os_log_type_enabled(v20, v21))
      {
        v34 = v18;
        v22 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39[0] = v33;
        *v22 = 136446466;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
        v23 = swift_allocObject();
        v24 = MEMORY[0x277D84B78];
        *(v23 + 16) = xmmword_2557B1770;
        v25 = MEMORY[0x277D84BC0];
        *(v23 + 56) = v24;
        *(v23 + 64) = v25;
        *(v23 + 32) = v17;
        v26 = sub_2557B0C48();
        v28 = sub_2557AAA60(v26, v27, v39);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2050;
        *(v22 + 14) = v35;
        _os_log_impl(&dword_255786000, v20, v21, "highest kernel applet COD consumed by %{public}s: %{public}lu bytes", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x259C40F40](v33, -1, -1);
        v29 = v22;
        v18 = v34;
        MEMORY[0x259C40F40](v29, -1, -1);
      }

      v30 = sub_2557B0B18();
      v31 = sub_2557B0DE8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134349824;
        *(v32 + 4) = v18;
        *(v32 + 12) = 2050;
        *(v32 + 14) = v37;
        *(v32 + 22) = 2050;
        *(v32 + 24) = v19;
        *(v32 + 32) = 2050;
        *(v32 + 34) = v36;
        _os_log_impl(&dword_255786000, v30, v31, "measured memory consumption: nvm=%{public}lu cod=%{public}lu cor=%{public}lu idx=%{public}lu", v32, 0x2Au);
        MEMORY[0x259C40F40](v32, -1, -1);
      }

      *v38 = v18;
      v38[1] = v19;
      v38[2] = v37;
      v38[3] = v36;
    }
  }
}

uint64_t type metadata accessor for SEInterface(uint64_t a1)
{
  result = qword_27F7D3030;
  if (!qword_27F7D3030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2557940F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3050, &qword_2557B1FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2557941FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3040, &qword_2557B1FC8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3048, &qword_2557B1FD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255794330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_255794424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3058, &qword_2557B1FE0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_255794530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3078, &qword_2557B2000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25579463C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3070, &qword_2557B1FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255794758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3068, &qword_2557B1FF0);
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
    v10 = MEMORY[0x277D84F90];
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