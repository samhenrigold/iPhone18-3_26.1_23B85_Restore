uint64_t sub_25EC5982C@<X0>(char **a1@<X8>)
{
  v47 = a1;
  v1 = sub_25EC79874();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_25EC798D4();
  v5 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25EC79CC4();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC797E4();
  v49 = *(result + 16);
  if (v49)
  {
    v11 = 0;
    v53 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v51 = v8 + 8;
    v52 = v8 + 16;
    v61 = (v2 + 88);
    v62 = v5 + 16;
    v60 = *MEMORY[0x277D3E780];
    v58 = (v2 + 96);
    v12 = MEMORY[0x277D84F90];
    v59 = (v5 + 8);
    v63 = v5;
    v64 = v1;
    v46 = v2;
    v50 = result;
    v48 = v8;
    while (v11 < *(result + 16))
    {
      v56 = v11;
      v57 = v12;
      v13 = v54;
      v14 = v55;
      (*(v8 + 16))(v54, v53 + *(v8 + 72) * v11, v55);
      v15 = sub_25EC797E4();
      result = (*(v8 + 8))(v13, v14);
      v65 = *(v15 + 16);
      if (v65)
      {
        v16 = 0;
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v16 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          (*(v5 + 16))(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v66);
          sub_25EC798A4();
          v18 = (*v61)(v4, v1);
          if (v18 != v60)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_25EC7A890;
            *(v41 + 56) = MEMORY[0x277D837D0];
            *(v41 + 32) = 0xD000000000000033;
            *(v41 + 40) = 0x800000025EC80FD0;
            sub_25EC7A2B4();

            sub_25EC5B6D8();
            swift_allocError();
            *v42 = 0;
            swift_willThrow();
            (*v59)(v7, v66);
            return (*(v46 + 8))(v4, v1);
          }

          result = (*v58)(v4, v1);
          v19 = *v4;
          if (*v4)
          {
            v20 = *(v4 + 1);
            v21 = v20 - v19;
            if (v20 != v19)
            {
              break;
            }
          }

          v22 = MEMORY[0x277D84F90];
          v23 = *(MEMORY[0x277D84F90] + 16);
          if (v23)
          {
            goto LABEL_11;
          }

LABEL_14:

          v26 = sub_25EC79884();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_25EC514F4(0, *(v17 + 2) + 1, 1, v17);
          }

          v28 = *(v17 + 2);
          v27 = *(v17 + 3);
          if (v28 >= v27 >> 1)
          {
            v17 = sub_25EC514F4((v27 > 1), v28 + 1, 1, v17);
          }

          ++v16;
          (*v59)(v7, v66);
          *(v17 + 2) = v28 + 1;
          v29 = &v17[16 * v28];
          *(v29 + 4) = v22;
          v29[40] = v26 & 1;

          v1 = v64;
          v5 = v63;
          if (v65 == v16)
          {
            goto LABEL_21;
          }
        }

        if (v21 <= 0)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
        v22 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v22);
        v22[2] = v21;
        v22[3] = 2 * v25 - 64;
        memmove(v22 + 4, v19, v21);
        v23 = v22[2];
        if (!v23)
        {
          goto LABEL_14;
        }

LABEL_11:
        v24 = sub_25EC7A0B4();
        *(v24 + 16) = v23;
        bzero((v24 + 32), v23);
        goto LABEL_14;
      }

      v17 = MEMORY[0x277D84F90];
LABEL_21:

      v30 = *(v17 + 2);
      if (v30)
      {
        rawValue = MEMORY[0x277D84F90];

        sub_25EC5B8A4(0, v30, 0);
        v31._rawValue = rawValue;
        v32 = rawValue[2];
        v33 = 32;
        do
        {
          v34 = *(*&v17[v33] + 16);
          rawValue = v31._rawValue;
          v35 = *(v31._rawValue + 3);
          if (v32 >= v35 >> 1)
          {
            sub_25EC5B8A4((v35 > 1), v32 + 1, 1);
            v31._rawValue = rawValue;
          }

          *(v31._rawValue + 2) = v32 + 1;
          *(v31._rawValue + v32 + 4) = v34;
          v33 += 16;
          ++v32;
          --v30;
        }

        while (v30);

        v5 = v63;
        v1 = v64;
      }

      else
      {
        v31._rawValue = MEMORY[0x277D84F90];
      }

      ExResource.init(sampleSizes:)(v31);

      rawValue = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v48;
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v57;
      }

      else
      {
        v12 = sub_25EC513E8(0, *(v57 + 2) + 1, 1, v57);
      }

      v38 = *(v12 + 2);
      v37 = *(v12 + 3);
      v39 = v56;
      if (v38 >= v37 >> 1)
      {
        v40 = sub_25EC513E8((v37 > 1), v38 + 1, 1, v12);
        v39 = v56;
        v12 = v40;
      }

      v11 = v39 + 1;
      *(v12 + 2) = v38 + 1;
      *&v12[8 * v38 + 32] = v17;
      result = v50;
      if (v11 == v49)
      {
        v44 = v12;

        goto LABEL_37;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
LABEL_37:
    v43 = v47;
    ExResourceArray.init(resourceConfigs:)(MEMORY[0x277D84F90]);

    *v43 = v44;
  }

  return result;
}

uint64_t sub_25EC59F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79CC4();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25EC79874();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_25EC798D4();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  v13 = *(v38 + 16);
  v42 = a2;
  result = sub_25EC797B4();
  v35 = v13;
  if (v13)
  {
    v15 = 0;
    v34 = v38 + 32;
    v44 = *MEMORY[0x277D3E780];
    v16 = (v7 + 104);
    v33 = v37 + 40;
    while (v15 < *(v38 + 16))
    {
      v43 = v15;
      v17 = (v34 + 8 * v15);
      v18 = *v17;
      if (*v17)
      {
        v19 = MEMORY[0x277D84F90];
        do
        {
          v20 = v17[1];
          v21 = swift_slowAlloc();
          *v9 = v21;
          v9[1] = v21 + v20;
          (*v16)(v9, v44, v46);
          sub_25EC79894();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_25EC509FC(0, v19[2] + 1, 1, v19);
          }

          v23 = v19[2];
          v22 = v19[3];
          if (v23 >= v22 >> 1)
          {
            v19 = sub_25EC509FC((v22 > 1), v23 + 1, 1, v19);
          }

          v19[2] = v23 + 1;
          (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v12, v45);
          --v18;
        }

        while (v18);
      }

      sub_25EC79C84();
      v24 = sub_25EC797D4();
      v26 = v25;
      v27 = *v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((result & 1) == 0)
      {
        result = sub_25EC6D9B8(v27);
        v27 = result;
        *v26 = result;
      }

      if (v43 >= *(v27 + 2))
      {
        goto LABEL_20;
      }

      v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v29 = *(v37 + 40);
      v40 = *(v37 + 72) * v43;
      v29(&v27[v28 + v40], v41, v36);
      v24(v47, 0);
      v39 = sub_25EC797D4();
      v31 = v30;
      v32 = *v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v32;
      if ((result & 1) == 0)
      {
        result = sub_25EC6D9B8(v32);
        v32 = result;
        *v31 = result;
      }

      if (v43 >= v32[2])
      {
        goto LABEL_21;
      }

      v15 = v43 + 1;
      sub_25EC79CB4();
      result = v39(v47, 0);
      if (v15 == v35)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC5A3F4@<X0>(char **a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v67 = a4;
  v7 = sub_25EC79704();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25EC797F4();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v76 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361D8, &qword_25EC7AD68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v65 - v14;
  v71 = sub_25EC79774();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v72 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25EC79794();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v86 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25EC79734();
  v87 = *(v18 - 8);
  v88 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = v65 - v22;
  v23 = sub_25EC796F4();
  v84 = *(v23 - 8);
  v85 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = v65 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362A8, &qword_25EC7B290);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v65 - v29;
  v92 = sub_25EC79D34();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v32 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *a2;
  v69 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v33 = swift_allocObject();
  v91 = xmmword_25EC7A890;
  *(v33 + 16) = xmmword_25EC7A890;
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 32) = 0xD00000000000002ELL;
  *(v33 + 40) = 0x800000025EC80D80;
  sub_25EC7A2B4();

  sub_25EC79D14();
  if (!*(v4 + 24))
  {
    goto LABEL_4;
  }

  v34 = sub_25EC797A4();
  MEMORY[0x28223BE20](v34);
  v65[-2] = v32;
  v35 = v81;
  sub_25EC533EC(sub_25EC605B0, &v65[-4], v34, v30);

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  if ((*(*(v36 - 8) + 48))(v30, 1, v36) == 1)
  {
    sub_25EC60CB8(v30, &qword_27FD362A8, &qword_25EC7B290);
LABEL_4:
    v37 = swift_allocObject();
    *(v37 + 16) = v91;
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_25EC7A144();

    v93 = 0xD000000000000023;
    v94 = 0x800000025EC80DB0;
    v95 = sub_25EC79D24();
    v38 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v38);

    MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC80DE0);
    v39 = v93;
    v40 = v94;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 32) = v39;
    *(v37 + 40) = v40;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
    return (*(v90 + 8))(v32, v92);
  }

  v42 = &v30[*(v36 + 48)];
  v81 = v35;
  v65[2] = *v42;
  v43 = *(v90 + 8);
  v65[1] = v90 + 8;
  v65[0] = v43;
  v43(v30, v92);
  v44 = swift_allocObject();
  *(v44 + 16) = v91;
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_25EC7A144();

  v66 = " not found in registry";
  v93 = 0xD000000000000023;
  v94 = 0x800000025EC80DB0;
  v95 = sub_25EC79D24();
  v45 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v45);

  MEMORY[0x25F8CB870](0xD00000000000001BLL, 0x800000025EC80E20);
  v46 = v93;
  v47 = v94;
  *(v44 + 56) = MEMORY[0x277D837D0];
  *(v44 + 32) = v46;
  *(v44 + 40) = v47;
  sub_25EC7A2B4();

  v48 = v82;
  sub_25EC796E4();
  v49 = v83;
  sub_25EC796E4();
  (*(v84 + 16))(v26, v48, v85);
  (*(v87 + 16))(v21, v49, v88);
  v50 = sub_25EC79CE4();
  (*(v70 + 104))(v72, *MEMORY[0x277D3E770], v71);
  sub_25EC79D44();
  v51 = sub_25EC79D54();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  sub_25EC79784();
  v93 = v68;
  sub_25EC593E8(&v93, v89);
  v93 = v69;
  v52 = v76;
  sub_25EC59F84(&v93, v76);
  v53 = v75;
  v72 = v50;
  sub_25EC79714();
  v54 = swift_allocObject();
  *(v54 + 16) = v91;
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, v66 | 0x8000000000000000);
  MEMORY[0x25F8CB870](0x646E496B73615420, 0xEC000000203A7865);
  v95 = sub_25EC79D24();
  v55 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v55);

  MEMORY[0x25F8CB870](0xD00000000000001BLL, 0x800000025EC80E40);
  v56 = v78;
  sub_25EC7A164();
  v57 = v93;
  v58 = v94;
  *(v54 + 56) = MEMORY[0x277D837D0];
  *(v54 + 32) = v57;
  *(v54 + 40) = v58;
  sub_25EC7A2B4();

  v59 = v81;
  sub_25EC5982C(&v93);
  if (!v59)
  {
    (*(v77 + 8))(v53, v56);
    *v67 = v93;
    sub_25EC605E0();
    swift_unknownObjectRelease();
    v63 = v80;
    v64 = *(v79 + 8);
    v64(v52, v80);
    v64(v89, v63);
    (*(v73 + 8))(v86, v74);
    (*(v87 + 8))(v83, v88);
    (*(v84 + 8))(v82, v85);
    return (v65[0])(v32, v92);
  }

  (*(v77 + 8))(v53, v56);
  sub_25EC605E0();
  swift_unknownObjectRelease();
  v60 = v80;
  v61 = *(v79 + 8);
  v61(v52, v80);
  v61(v89, v60);
  (*(v73 + 8))(v86, v74);
  (*(v87 + 8))(v83, v88);
  (*(v84 + 8))(v82, v85);
  return (*(v90 + 8))(v32, v92);
}

uint64_t sub_25EC5B0E4()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v1 = *(v2 + 32);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

unint64_t sub_25EC5B138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0xD000000000000018;
  if (*(v3 + 40))
  {
    v17 = a3;
    v8 = *(v3 + 40);
  }

  else
  {
    v9 = *(v3 + 16);
    if (!v9)
    {
      goto LABEL_9;
    }

    v17 = a3;
    v8 = *(v9 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25EC7A890;

  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, 0x800000025EC80E00);
  MEMORY[0x25F8CB870](0xD00000000000002BLL, 0x800000025EC80E60);
  v11 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v11);

  MEMORY[0x25F8CB870](0x7265646E6573202CLL, 0xEB00000000206449);
  v12 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v12);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEA00000000002064);
  v13 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v13);

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  v14 = v8;
  sub_25EC4C34C(a1, a2, v17);
  if (!v4)
  {
    v7 = *(v8 + 24);

    swift_beginAccess();
    v14 = *(*(v7 + 16) + 16);

    if (!HIDWORD(v14))
    {
      return v14;
    }

    __break(1u);
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25EC7A890;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v7 + 32;
    *(v15 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    return 0;
  }

  return v14;
}

uint64_t sub_25EC5B448()
{
  if (*(v0 + 40))
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 16);
    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_25EC7A890;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 32) = 0xD000000000000038;
      *(v9 + 40) = 0x800000025EC80CE0;
      sub_25EC7A2B4();

      return 0;
    }

    v2 = *(v3 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25EC7A890;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000034;
  *(v4 + 40) = 0x800000025EC80E90;

  sub_25EC7A2B4();

  v5 = *(v2 + 24);

  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!*(v6 + 16))
  {
LABEL_9:

LABEL_11:

    return 0;
  }

  while (1)
  {
    result = swift_beginAccess();
    if (!*(v6 + 16))
    {
      break;
    }

    v8 = *(v6 + 40);

    sub_25EC4E8E0(0, 1);
    swift_endAccess();
    sub_25EC48C0C(v8);
    if (v1)
    {

      goto LABEL_11;
    }

    v6 = *(v5 + 16);
    if (!*(v6 + 16))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PolarisExclaveEndpoint.deinit()
{

  return v0;
}

uint64_t PolarisExclaveEndpoint.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25EC5B6D8()
{
  result = qword_27FD36290;
  if (!qword_27FD36290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36290);
  }

  return result;
}

void *sub_25EC5B72C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BF50(a1, a2, a3, *v3, &qword_27FD36210, &qword_25EC7AD90, MEMORY[0x277D3E800]);
  *v3 = result;
  return result;
}

char *sub_25EC5B770(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B790(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BB28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B7B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EC5B7D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BD60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EC5B7F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5BF50(a1, a2, a3, *v3, &qword_27FD36310, &unk_25EC7B4C0, MEMORY[0x277D3E7E8]);
  *v3 = result;
  return result;
}

char *sub_25EC5B834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C230(a1, a2, a3, *v3, &qword_27FD36208, &qword_25EC7AD88, &type metadata for ExResourceSample);
  *v3 = result;
  return result;
}

char *sub_25EC5B86C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C33C(a1, a2, a3, *v3, &qword_27FD36200, &unk_25EC7B400, &type metadata for ExResource);
  *v3 = result;
  return result;
}

char *sub_25EC5B8A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B8C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C230(a1, a2, a3, *v3, &qword_27FD362D0, &qword_25EC7B3D8, &type metadata for ExPolarisResourceSample);
  *v3 = result;
  return result;
}

char *sub_25EC5B8FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C33C(a1, a2, a3, *v3, &qword_27FD362C8, &qword_25EC7B3D0, &type metadata for ExPolarisResource);
  *v3 = result;
  return result;
}

char *sub_25EC5B934(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C448(a1, a2, a3, *v3, &qword_27FD362E0, &qword_25EC7B3E8);
  *v3 = result;
  return result;
}

char *sub_25EC5B964(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C448(a1, a2, a3, *v3, &qword_27FD362C0, &qword_25EC7B3C8);
  *v3 = result;
  return result;
}

char *sub_25EC5B994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C544(a1, a2, a3, *v3, &qword_27FD36238, &qword_25EC7ADB8, &type metadata for ExSerializedGraphData);
  *v3 = result;
  return result;
}

char *sub_25EC5B9CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C544(a1, a2, a3, *v3, &qword_27FD362B8, &qword_25EC7B3C0, &type metadata for ExPolarisSerializedGraphData);
  *v3 = result;
  return result;
}

char *sub_25EC5BA04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EC5C650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5BA24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
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

char *sub_25EC5BB28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36240, &qword_25EC7ADC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25EC5BC50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36248, &unk_25EC7B4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_25EC5BD60(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36218, &qword_25EC7AD98);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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

void *sub_25EC5BF50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_25EC5C12C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362E8, &qword_25EC7B3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25EC5C230(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EC5C33C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EC5C448(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_25EC5C544(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EC5C650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
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

uint64_t sub_25EC5C744(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EC7A104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8CBAE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 4 * v3);
          v17 = (v15 + 4 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t sub_25EC5C8B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EC7A104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8CBAE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_25EC5CA2C(int64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - v7;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25EC7A104();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
      v23 = sub_25EC7A014();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void *sub_25EC5CD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
  v2 = *v0;
  v3 = sub_25EC7A194();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

char *sub_25EC5CEC4()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
  v3 = *v0;
  v4 = sub_25EC7A194();
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

void *sub_25EC5D174(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EC7A194();
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
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

unint64_t *sub_25EC5D2C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_25EC5FAFC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_25EC5D35C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_25EC79BC4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36318, &qword_25EC7B4F0);
  result = sub_25EC7A134();
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
    sub_25EC60D20(&qword_27FD36320, MEMORY[0x277D3E7D0], MEMORY[0x277D3E7D8]);
    result = sub_25EC7A014();
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

uint64_t sub_25EC5D684(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  result = sub_25EC7A134();
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
    sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
    result = sub_25EC7A014();
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

uint64_t sub_25EC5D9A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_25EC60CB8(v5, &qword_27FD362F8, &qword_25EC7B410))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_25EC5F540(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC5DBC4(uint64_t a1, uint64_t a2)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v47 - v9;
  MEMORY[0x28223BE20](v8);
  i = v47 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v61[0] = a1;
  v12 = *(a1 + 16);

  v49 = v12;
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v51 = a1;
  v52 = a1 + ((v16 + 32) & ~v16);
  v58 = *(v14 + 56);
  v59 = v15;
  v56 = (a2 + 56);
  v57 = a2;
  v60 = v14;
  v17 = (v14 - 8);
  v48 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v53 = v13 + 1;
    v59(i, v52 + v58 * v13, v4);
    v50 = sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
    v18 = sub_25EC7A014();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v56[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v53;
    if (v53 == v49)
    {
      goto LABEL_29;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v59(v10, *(v57 + 48) + v20 * v58, v4);
    sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
    v24 = sub_25EC7A024();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v56[v20 >> 6]) == 0)
    {
      a2 = v57;
      goto LABEL_10;
    }
  }

  v26 = v53;
  v61[1] = v53;
  v27 = (v25)(i, v4);
  v28 = v57;
  v29 = *(v57 + 32);
  v47[0] = ((1 << v29) + 63) >> 6;
  v30 = 8 * v47[0];
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v47[1] = v47;
    MEMORY[0x28223BE20](v27);
    v20 = v47 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v20, v56, v31);
    v32 = *(v28 + 16);
    *(v20 + 8 * v21) &= ~v22;
    v48 = v20;
    v49 = (v32 - 1);
    v33 = *(v51 + 16);
    for (i = v33; ; v33 = i)
    {
      if (v26 == v33)
      {
        a2 = sub_25EC5D684(v48, v47[0], v49, v28);
        goto LABEL_29;
      }

      if (v26 >= *(v51 + 16))
      {
        break;
      }

      v53 = v26;
      v59(v55, v52 + v26 * v58, v4);
      v35 = sub_25EC7A014();
      v36 = -1 << *(v28 + 32);
      v20 = v35 & ~v36;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v56[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v59(v10, *(v57 + 48) + v20 * v58, v4);
      v37 = sub_25EC7A024();
      v25(v10, v4);
      if ((v37 & 1) == 0)
      {
        v38 = ~v36;
        while (1)
        {
          v20 = (v20 + 1) & v38;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v56[v20 >> 6]) == 0)
          {
            break;
          }

          v59(v10, *(v57 + 48) + v20 * v58, v4);
          v39 = sub_25EC7A024();
          v25(v10, v4);
          if (v39)
          {
            goto LABEL_24;
          }
        }

LABEL_15:
        v25(v55, v4);
        v28 = v57;
        v34 = v53;
        goto LABEL_16;
      }

LABEL_24:
      v25(v55, v4);
      v40 = v48[v22];
      v48[v22] = v40 & ~v21;
      v28 = v57;
      v34 = v53;
      if ((v40 & v21) != 0)
      {
        v41 = v49 - 1;
        if (__OFSUB__(v49, 1))
        {
          goto LABEL_32;
        }

        --v49;
        if (!v41)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

LABEL_16:
      v26 = v34 + 1;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v43 = v30;

    v44 = v43;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v45 = v57;

      v28 = v45;
      v26 = v53;
      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v56, v44);
  a2 = sub_25EC5ECB0(v46, v47[0], v57, v20, v61);

  MEMORY[0x25F8CBF90](v46, -1, -1);
LABEL_29:

  return a2;
}

uint64_t sub_25EC5E268(unint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (&v66 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v13);
  v81 = (&v66 - v16);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v70 = v7;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = (a2 + 56);
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = *(v77 + 48) + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      sub_25EC60CB8(v31, &qword_27FD362F8, &qword_25EC7B410);
      v60 = v77;
      goto LABEL_53;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
    v33 = sub_25EC7A014();
    v34 = -1 << *(a2 + 32);
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v23, v9);
    v36 = sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
    v37 = sub_25EC7A024();
    v88 = *v89;
    v88(v15, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = *(a2 + 32);
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v68 = &v66;
    MEMORY[0x28223BE20](v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 16);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        sub_25EC60CB8(v45, &qword_27FD362F8, &qword_25EC7B410);
        a2 = sub_25EC5D684(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = sub_25EC7A014();
      v53 = a2;
      v54 = -1 << *(a2 + 32);
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v15, *(v53 + 48) + v23 * v85, v9);
        v56 = sub_25EC7A024();
        v88(v15, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v53 + 48) + v23 * v85, v9);
            v58 = sub_25EC7A024();
            v88(v15, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v22;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_25EC5F088(v65, v66, v81, v23, v90);

  MEMORY[0x25F8CBF90](v65, -1, -1);
  v10 = v90[0];
  v67 = v91;
LABEL_52:
  v60 = v10;
LABEL_53:
  sub_25EC60D18(v60);
  return a2;
}

uint64_t sub_25EC5ECB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x28223BE20](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_25EC5D684(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
    v25 = sub_25EC7A014();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v32 = sub_25EC7A024();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25EC5F088(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
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
        v24 = *a5;
        v23 = a5[1];
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

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_25EC60CB8(v11, &qword_27FD362F8, &qword_25EC7B410);
          v45 = v61;

          return sub_25EC5D684(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
        v35 = sub_25EC7A014();
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
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
        v43 = sub_25EC7A024();
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

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_25EC5F540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
  v31 = a1;
  v10 = sub_25EC7A014();
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
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v19 = sub_25EC7A024();
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
      sub_25EC69218();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_25EC5F7C8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_25EC5F7C8(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_25EC7A104();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
        v24 = sub_25EC7A014();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_25EC5FAFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_25EC79BC4();
  result = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = a3;
  v15 = 0;
  v16 = *(a3 + 56);
  v34 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v12 + 16;
  v42 = v12;
  v36 = (v12 + 8);
  v37 = (v7 + 8);
  v38 = v20;
  v39 = v14;
  v40 = result;
LABEL_5:
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_12:
    v24 = v21 | (v15 << 6);
    v25 = *(v44 + 48);
    v26 = *(v42 + 72);
    v45 = v24;
    (*(v42 + 16))(v14, v25 + v26 * v24, v10);
    sub_25EC79B74();
    v27 = 0;
    v28 = *(a4 + 16);
    do
    {
      if (v28 == v27)
      {
        (*v37)(v9, v6);
        v14 = v39;
        v10 = v40;
        result = (*v36)(v39, v40);
        v20 = v38;
        v19 = v46;
        goto LABEL_5;
      }

      v29 = v27 + 1;
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v30 = sub_25EC7A024();
      v27 = v29;
    }

    while ((v30 & 1) == 0);
    (*v37)(v9, v6);
    v14 = v39;
    v10 = v40;
    result = (*v36)(v39, v40);
    *(v35 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v31 = __OFADD__(v43++, 1);
    v20 = v38;
    v19 = v46;
    if (v31)
    {
      __break(1u);
LABEL_18:
      v32 = v44;

      return sub_25EC5D35C(v35, v33, v43, v32);
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_18;
    }

    v23 = *(v34 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC5FE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - v8;
  v48 = sub_25EC79BC4();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v35 = ((1 << v11) + 63) >> 6;
  v13 = 8 * v35;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v34[1] = v34;
    v34[2] = v3;
    MEMORY[0x28223BE20](v14);
    v37 = v34 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v44 = 0;
    v3 = 0;
    v15 = *(a1 + 56);
    v36 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v38 = v10 + 2;
    v39 = v10;
    v40 = (v10 + 1);
    v41 = (v7 + 8);
    v10 = &qword_27FD361B8;
    v42 = v19;
    v43 = a1;
LABEL_6:
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v46 = (v18 - 1) & v18;
LABEL_13:
      v23 = v20 | (v3 << 6);
      v24 = *(a1 + 48);
      v25 = v39[9];
      v45 = v23;
      v13 = v47;
      (v39[2])(v47, v24 + v25 * v23, v48);
      sub_25EC79B74();
      v26 = 0;
      v27 = *(a2 + 16);
      do
      {
        if (v27 == v26)
        {
          (*v41)(v9, v6);
          (*v40)(v47, v48);
          v19 = v42;
          a1 = v43;
          v18 = v46;
          goto LABEL_6;
        }

        v28 = v26 + 1;
        sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
        v13 = v6;
        v29 = sub_25EC7A024();
        v26 = v28;
      }

      while ((v29 & 1) == 0);
      (*v41)(v9, v6);
      (*v40)(v47, v48);
      *&v37[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
      a1 = v43;
      v30 = __OFADD__(v44++, 1);
      v19 = v42;
      v18 = v46;
      if (v30)
      {
        __break(1u);
LABEL_19:
        v31 = sub_25EC5D35C(v37, v35, v44, a1);

        return v31;
      }
    }

    v21 = v3;
    while (1)
    {
      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v3 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v36 + 8 * v3);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v31 = sub_25EC5D2C0(v33, v35, a1, a2);

  MEMORY[0x25F8CBF90](v33, -1, -1);

  return v31;
}

uint64_t sub_25EC6036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v3 + 40) = sub_25EC4E3FC(MEMORY[0x277D84F90]);
  type metadata accessor for PolarisMutex();
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  v12.__sig = 0;
  *v12.__opaque = 0;
  pthread_mutexattr_init(&v12);
  swift_beginAccess();
  pthread_mutex_init((v8 + 16), &v12);
  swift_endAccess();
  pthread_mutexattr_destroy(&v12);
  *(v3 + 48) = v8;
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  sub_25EC56B04(v13);
  if (v4)
  {
    v9 = v13[0];
    sub_25EC5B6D8();
    swift_allocError();
    *v10 = v9;
  }

  return v3;
}

void *sub_25EC604B4(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[2] = 0;
  v1[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25EC7A890;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0xD000000000000022;
  *(v2 + 40) = 0x800000025EC80D20;

  sub_25EC7A2B4();

  return v1;
}

uint64_t sub_25EC605E0()
{
  v40 = sub_25EC79874();
  v0 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_25EC798D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25EC79CC4();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC797E4();
  v31 = *(result + 16);
  if (v31)
  {
    v10 = 0;
    v29 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = v7 + 8;
    v28 = v7 + 16;
    v39 = v4 + 16;
    v11 = (v4 + 8);
    v12 = (v0 + 88);
    v38 = *MEMORY[0x277D3E780];
    v36 = (v0 + 96);
    v37 = (v0 + 8);
    v25 = v7;
    v26 = v4;
    v30 = result;
    while (v10 < *(result + 16))
    {
      v13 = *(v7 + 72);
      v35 = v10;
      v14 = v32;
      v15 = v33;
      (*(v7 + 16))(v32, v29 + v13 * v10, v33);
      v16 = sub_25EC797E4();
      (*(v7 + 8))(v14, v15);
      v17 = v16;
      v18 = *(v16 + 16);
      if (v18)
      {
        v19 = *(v4 + 80);
        v34 = v17;
        v20 = v17 + ((v19 + 32) & ~v19);
        v21 = *(v4 + 72);
        v22 = *(v4 + 16);
        v22(v6, v20, v3);
        while (1)
        {
          sub_25EC798A4();
          (*v11)(v6, v3);
          v23 = v40;
          v24 = (*v12)(v2, v40);
          if (v24 == v38)
          {
            (*v36)(v2, v23);
            if (*v2)
            {
              MEMORY[0x25F8CBF90](*v2, -1, -1);
            }
          }

          else
          {
            (*v37)(v2, v23);
          }

          v20 += v21;
          if (!--v18)
          {
            break;
          }

          v22(v6, v20, v3);
        }

        v7 = v25;
        v4 = v26;
      }

      else
      {
      }

      v10 = v35 + 1;
      result = v30;
      if (v35 + 1 == v31)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_25EC60BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F0, &qword_25EC7B3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC60C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC60CB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25EC60D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionManager.updateGraphs(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v3 = v2;
  rawValue = added._rawValue;
  v112 = sub_25EC796F4();
  v100 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v116 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v114 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v87 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v15 = sub_25EC79734();
  v101 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v113 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v87 - v21;
  MEMORY[0x28223BE20](v20);
  v123 = &v87 - v22;
  v23 = *(removed._rawValue + 2);
  v115 = removed._rawValue + 16;
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v121 = v2;
    v108 = v14;
    v25 = v15;
    v122 = MEMORY[0x277D84F90];
    sub_25EC5B770(0, v23, 0);
    v24 = v122;
    v26 = (removed._rawValue + 32);
    v27 = *(v122 + 16);
    v28 = v23;
    do
    {
      v30 = *v26;
      v26 += 12;
      v29 = v30;
      v122 = v24;
      v31 = *(v24 + 24);
      if (v27 >= v31 >> 1)
      {
        sub_25EC5B770((v31 > 1), v27 + 1, 1);
        v24 = v122;
      }

      *(v24 + 16) = v27 + 1;
      *(v24 + 4 * v27++ + 32) = v29;
      --v28;
    }

    while (v28);
    v15 = v25;
    v14 = v108;
    v3 = v121;
  }

  v32 = sub_25EC4B938(v24);
  v96 = v3;
  if (v3)
  {
LABEL_31:

    return;
  }

  v33 = v32;

  if (v33 >> 62)
  {
LABEL_27:
    v34 = sub_25EC7A184();
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_28:
    v44 = rawValue;
    v50 = v96;
    sub_25EC61DAC(rawValue);
    if (v50)
    {
      v96 = v50;
    }

    else
    {
      sub_25EC62C90(v44);
      sub_25EC63FA0(v44);
      v96 = 0;
      v109 = v15;
      v89 = *(v44 + 16);
      swift_beginAccess();
      v51 = 0;
      v88 = v44 + 32;
      v115 = (v101 + 4);
      v90 = (v101 + 7);
      v106 = (v101 + 6);
      ++v101;
      ++v100;
      v98 = v33;
      while (v51 != v89)
      {
        v42 = *(v97 + 64);
        if (!*(v42 + 16))
        {
          goto LABEL_54;
        }

        v52 = (v88 + 48 * v51);
        v53 = v52[1];
        v54 = v52[2];
        v55 = v52[3];
        v44 = v52[4];
        v56 = v52[5];
        v57 = sub_25EC4CDB4(*v52);
        if ((v58 & 1) == 0)
        {
          goto LABEL_55;
        }

        v92 = v51;
        v59 = *(*(v42 + 56) + 8 * v57);

        sub_25EC473B4(v54, v55);
        v91 = v44;
        sub_25EC473B4(v44, v56);
        v60 = v95;
        sub_25EC796E4();
        v61 = v99;
        v62 = v109;
        v111 = *v115;
        v111(v99, v60, v109);
        v123 = *v90;
        (v123)(v61, 0, 1, v62);
        v44 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
        swift_beginAccess();
        sub_25EC652F0(v61, &v59[v44]);
        swift_endAccess();
        v110 = v53;
        if (v54)
        {
          v42 = v94;
          sub_25EC65360(&v59[v44], v94);
          if ((*v106)(v42, 1, v62) == 1)
          {
            goto LABEL_60;
          }

          v63 = v93;
          v64 = v62;
          v65 = v111;
          v111(v93, v42, v64);

          v54(v63);
          sub_25EC47404(v54, v55);
          v66 = v99;
          v67 = v63;
          v68 = v109;
          v65(v99, v67, v109);
          (v123)(v66, 0, 1, v68);
          swift_beginAccess();
          sub_25EC652F0(v66, &v59[v44]);
          swift_endAccess();
          v53 = v110;
        }

        v42 = *(v53 + 16);
        v69 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;

        v123 = v59;
        v108 = v69;
        swift_beginAccess();
        v107 = v42;
        if (v42)
        {
          v70 = 0;
          v71 = (v53 + 80);
          v104 = v56;
          v103 = v55;
          rawValue = v54;
          v105 = v44;
          while (v70 < *(v53 + 16))
          {
            v42 = *&v123[v108];
            if (!*(v42 + 16))
            {
              goto LABEL_52;
            }

            v72 = *(v71 - 5);
            v73 = *(v71 - 4);
            v120 = v70;
            v121 = v72;
            v44 = *(v71 - 3);
            v74 = *(v71 - 1);
            v24 = *v71;
            v75 = sub_25EC4CDB4(*(v71 - 12));
            if ((v76 & 1) == 0)
            {
              goto LABEL_53;
            }

            v119 = *(*(v42 + 56) + 8 * v75);

            v77 = v73;

            sub_25EC473B4(v74, v24);
            v42 = v116;
            sub_25EC796E4();
            if (v74)
            {

              v74(v42);
              v42 = v116;
              sub_25EC47404(v74, v24);
            }

            v117 = v74;
            v118 = v24;
            v24 = v114;
            sub_25EC65360(v105 + v123, v114);
            v78 = v109;
            if ((*v106)(v24, 1, v109) == 1)
            {
              goto LABEL_58;
            }

            v79 = v113;
            v111(v113, v24, v78);
            v80 = v42;
            v24 = v42;
            v42 = v77;
            v81 = v121(v80, v79);
            v83 = v82;
            (*v101)(v79, v78);
            v84 = v119;
            if (*(v119 + 32))
            {
              goto LABEL_57;
            }

            v85 = (v120 + 1);

            sub_25EC47404(v117, v118);
            (*v100)(v24, v112);
            v44 = *(v84 + 32);
            *(v84 + 32) = v81;
            *(v84 + 40) = v83;
            v70 = v85;

            swift_unknownObjectRelease();
            v71 += 7;
            v86 = v107 == v85;
            v56 = v104;
            v55 = v103;
            v54 = rawValue;
            v53 = v110;
            if (v86)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          sub_25EC4E178(v24);
          __break(1u);
          goto LABEL_59;
        }

LABEL_32:
        v51 = v92 + 1;

        v42 = v123;
        v44 = sub_25EC4AC84();

        sub_25EC47404(v54, v55);
        sub_25EC47404(v91, v56);

        if ((v44 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_31;
  }

LABEL_10:
  v35 = 0;
  v111 = (v33 & 0xC000000000000001);
  v104 = v33 & 0xFFFFFFFFFFFFFF8;
  v103 = v33 + 32;
  v107 = (v101 + 6);
  v121 = (v101 + 4);
  v105 = (v101 + 7);
  v110 = v23 + 1;
  v98 = v33;
  v108 = v14;
  v106 = v34;
  while (1)
  {
    if (v111)
    {
      v23 = MEMORY[0x25F8CB970](v35, v33);
      v36 = __OFADD__(v35++, 1);
      if (v36)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v35 >= *(v104 + 16))
      {
        goto LABEL_26;
      }

      v23 = *(v103 + 8 * v35);

      v36 = __OFADD__(v35++, 1);
      if (v36)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v37 = v110;
    v38 = v115;
    do
    {
      if (!--v37)
      {
        __break(1u);
        goto LABEL_25;
      }

      v39 = (v38 + 48);
      v40 = *(v38 + 4);
      v38 += 48;
    }

    while (v40 != *(v23 + 16));
    v24 = *v39;
    if (*v39)
    {
      break;
    }

LABEL_11:

    if (v35 == v34)
    {
      goto LABEL_28;
    }
  }

  v41 = *(v39 - 1);
  v119 = *(v39 - 2);
  v120 = v41;
  v42 = v39[1];
  v43 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
  swift_beginAccess();
  v118 = v43;
  sub_25EC65360(v23 + v43, v14);
  v44 = v14;
  if ((*v107)(v14, 1, v15) != 1)
  {
    v117 = *v121;
    v117(v123, v14, v15);

    v46 = v119;
    v45 = v120;
    sub_25EC473B4(v119, v120);
    sub_25EC473B4(v24, v42);
    sub_25EC473B4(v24, v42);
    v47 = v123;
    (v24)(v123);
    sub_25EC47404(v24, v42);

    sub_25EC47404(v46, v45);
    sub_25EC47404(v24, v42);
    v48 = v99;
    v117(v99, v47, v15);
    (*v105)(v48, 0, 1, v15);
    v49 = v118;
    swift_beginAccess();
    sub_25EC652F0(v48, v23 + v49);
    swift_endAccess();
    v33 = v98;
    v14 = v108;
    v34 = v106;
    goto LABEL_11;
  }

LABEL_59:

  sub_25EC473B4(v119, v120);
  sub_25EC473B4(v24, v42);
  sub_25EC473B4(v24, v42);
  sub_25EC4E178(v44);
  __break(1u);
LABEL_60:

  sub_25EC4E178(v42);
  __break(1u);
}

uint64_t sub_25EC61A94(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  swift_beginAccess();
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 32;
  v31 = v5;
  v32 = v2;
  v30 = a2 + 32;
  while (1)
  {
    v8 = *(v7 + 4 * v6);
    v9 = *(v3 + 64);
    if (!*(v9 + 16) || (v10 = sub_25EC4CDB4(*(v7 + 4 * v6)), (v11 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v29 = v8;
      *(v29 + 4) = 3;
      swift_willThrow();
      return v8;
    }

    v33 = v6 + 1;
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;

    v21 = 0;
    v35 = v14 + 64;
    v36 = v14;
    v34 = v19;
LABEL_10:
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_11:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_36;
    }

    if (v22 < v19)
    {
      break;
    }

    v3 = v32;
    ++v6;
    v7 = v30;
    if (v33 == v31)
    {
      return 0;
    }
  }

  v18 = *(v15 + 8 * v22);
  ++v21;
  if (!v18)
  {
    goto LABEL_11;
  }

  v21 = v22;
LABEL_15:
  v23 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
  swift_beginAccess();
  v24 = *(v23 + 48);
  if (v24 >> 62)
  {
    v25 = sub_25EC7A184();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {
LABEL_9:
    v18 &= v18 - 1;

    v15 = v35;
    v14 = v36;
    v19 = v34;
    goto LABEL_10;
  }

  v26 = 0;
  while ((v24 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CB970](v26, v24);
    v27 = result;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_34;
    }

LABEL_22:
    if (sub_25EC79854() == a1)
    {

      v8 = *(v27 + 24);

      return v8;
    }

    ++v26;
    if (v28 == v25)
    {
      goto LABEL_9;
    }
  }

  if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v27 = *(v24 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_25EC61DAC(uint64_t a1)
{
  v2 = v1;
  v63 = sub_25EC79A64();
  result = MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v57 = a1 + 32;
    v61 = *MEMORY[0x277D3E790];
    v60 = (v5 + 104);
    v51 = v7;
    while (1)
    {
      v58 = v8;
      v9 = (v57 + 48 * v8);
      v10 = v9[1];
      v11 = v9[2];
      v13 = v9[3];
      v12 = v9[4];
      v14 = v9[5];
      v15 = *v9;

      sub_25EC473B4(v11, v13);
      sub_25EC473B4(v12, v14);
      v67 = sub_25EC4B678(v15);
      if (v2)
      {

LABEL_24:
        sub_25EC47404(v11, v13);
        return sub_25EC47404(v12, v14);
      }

      v66 = *(v10 + 16);
      if (v66)
      {
        break;
      }

LABEL_4:
      v8 = v58 + 1;
      sub_25EC47404(v11, v13);
      sub_25EC47404(v12, v14);

      if (v8 == v7)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = v13;
    v54 = v11;
    v55 = v14;
    v56 = v12;
    v16 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
    v65 = *(v59 + 24);

    v17 = v67;
    swift_beginAccess();
    v18 = 0;
    v19 = (v10 + 80);
    v64 = v10;
    while (v18 < *(v10 + 16))
    {
      v20 = *(v19 - 12);
      v22 = *(v19 - 4);
      v21 = *(v19 - 3);
      v23 = *(v19 - 2);
      v24 = *(v19 - 1);
      v70 = v18;
      v71 = v23;
      v25 = *v19;
      v72 = v21;
      v73 = v25;
      if (*(*(v17 + v16) + 16))
      {
        sub_25EC4CDB4(v20);
        if (v26)
        {

          sub_25EC473B4(v24, v73);

          v74 = 0;
          v75 = 0xE000000000000000;
          sub_25EC7A144();

          v74 = 0x656D614E6B736174;
          v75 = 0xE90000000000003DLL;
          LODWORD(v76) = v20;
          v49 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v49);

          MEMORY[0x25F8CB870](0x79646165726C6120, 0xEF73747369786520);
          sub_25EC47BA8(v74, v75, 0xD00000000000001ELL, 0x800000025EC81510, 0xD00000000000002CLL, 0x800000025EC80460, 384);

          sub_25EC4E124();
          swift_allocError();
          *v50 = v20;
          *(v50 + 4) = 0;
          swift_willThrow();

          sub_25EC47404(v24, v73);

          v12 = v56;
          v14 = v55;
          v11 = v54;
          v13 = v53;
          goto LABEL_24;
        }
      }

      type metadata accessor for TaskController();
      v27 = swift_allocObject();
      v69 = v20;
      v28 = v27;
      (*v60)(v62, v61, v63);
      sub_25EC799B4();
      swift_allocObject();
      v68 = v22;

      v29 = v24;
      sub_25EC473B4(v24, v73);
      LOBYTE(v74) = 1;
      v30 = sub_25EC79974();
      v28[4] = 0;
      v28[5] = 0;
      v31 = MEMORY[0x277D84F90];
      v28[6] = MEMORY[0x277D84F90];
      v28[7] = v31;
      v28[8] = v31;
      v32 = v65;
      v28[2] = v30;
      v28[3] = v32;
      swift_unownedRetainStrong();

      swift_unownedRetain();
      swift_unownedRetain();

      *(swift_allocObject() + 16) = v28;
      sub_25EC79994();
      swift_unownedRelease();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v17 + v16);
      v34 = v76;
      v35 = v16;
      *(v17 + v16) = 0x8000000000000000;
      v36 = v69;
      v38 = sub_25EC4CDB4(v69);
      v39 = v34[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_28;
      }

      v42 = v37;
      if (v34[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25EC5CD3C();
        }
      }

      else
      {
        sub_25EC4D184(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_25EC4CDB4(v36);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_30;
        }

        v38 = v43;
      }

      v45 = v76;
      if (v42)
      {
        *(v76[7] + 8 * v38) = v28;
      }

      else
      {
        v76[(v38 >> 6) + 8] |= 1 << v38;
        *(v45[6] + 4 * v38) = v36;
        *(v45[7] + 8 * v38) = v28;
        v46 = v45[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_29;
        }

        v45[2] = v48;
      }

      v18 = v70 + 1;
      v17 = v67;
      v16 = v35;
      *(v67 + v35) = v45;
      swift_endAccess();

      sub_25EC47404(v29, v73);
      v19 += 7;
      v10 = v64;
      if (v66 == v18)
      {

        v12 = v56;
        v14 = v55;
        v11 = v54;
        v13 = v53;
        v2 = v52;
        v7 = v51;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25EC7A264();
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC62498(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_25EC79854();
  if ((sub_25EC79A34() & 1) == 0)
  {
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0x207265646E6553, 0xE700000000000000);
    sub_25EC79854();
    v3 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v3);

    MEMORY[0x25F8CB870](0xD00000000000004ELL, 0x800000025EC813F0);
    sub_25EC47BA8(0, 0xE000000000000000, 0xD00000000000002ELL, 0x800000025EC81440, 0xD000000000000036, 0x800000025EC81210, 66);
  }

  type metadata accessor for SessionTriggerChannel();
  *(swift_allocObject() + 16) = v2;
  sub_25EC65894(&qword_27FD36328, type metadata accessor for SessionTriggerChannel, &unk_25EC7B538);

  v4 = sub_25EC79A04();

  if (v4)
  {
    sub_25EC7A144();

    sub_25EC79854();
    v5 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v5);

    MEMORY[0x25F8CB870](0x73736553206F7420, 0xEF545347206E6F69);
    sub_25EC47B5C(0xD00000000000001FLL, 0x800000025EC81470, 0xD00000000000002ELL, 0x800000025EC81440, 0xD000000000000036, 0x800000025EC81210, 78);
  }

  else
  {
    v7 = sub_25EC79854();
    sub_25EC4E124();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 7;
    return swift_willThrow();
  }
}

uint64_t sub_25EC62764(uint64_t a1)
{
  result = sub_25EC62498(a1);
  if (!v2)
  {
    v4 = *(v1 + 40);
    sub_25EC79854();
    if ((sub_25EC79A34() & 1) == 0)
    {
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0x207265646E6553, 0xE700000000000000);
      sub_25EC79854();
      v5 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v5);

      MEMORY[0x25F8CB870](0xD00000000000004DLL, 0x800000025EC81490);
      sub_25EC47BA8(0, 0xE000000000000000, 0xD00000000000002DLL, 0x800000025EC814E0, 0xD000000000000036, 0x800000025EC81210, 96);
    }

    type metadata accessor for TightbeamTriggerChannel();
    *(swift_allocObject() + 16) = v4;
    sub_25EC65894(&qword_27FD36140, type metadata accessor for TightbeamTriggerChannel, &unk_25EC7B568);

    v6 = sub_25EC79A04();

    if (v6)
    {
      sub_25EC7A144();

      sub_25EC79854();
      v7 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v7);

      MEMORY[0x25F8CB870](0x626F6C47206F7420, 0xEE00545347206C61);
      sub_25EC47B5C(0xD00000000000001FLL, 0x800000025EC81470, 0xD00000000000002DLL, 0x800000025EC814E0, 0xD000000000000036, 0x800000025EC81210, 108);
    }

    else
    {
      v8 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v9 = v8;
      *(v9 + 4) = 7;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25EC62A40(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if ((sub_25EC79A34() & 1) == 0)
  {
    sub_25EC4E124();
    swift_allocError();
    v11 = 8;
LABEL_8:
    *v10 = v4;
    *(v10 + 4) = v11;
    return swift_willThrow();
  }

  v5 = *(v2 + 16);
  v6 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EC7A890;
  *(inited + 32) = v4;
  v8 = GSTService.registerReceiver(clientId:receiverId:senderIds:)(v5, v6, inited);
  swift_setDeallocating();
  if (!v8)
  {
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000030, 0x800000025EC81310);
    v12 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v12);

    MEMORY[0x25F8CB870](0x70617267206E6920, 0xEC0000003D644968);
    v13 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v13);

    sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000028, 0x800000025EC81350, 0xD000000000000036, 0x800000025EC81210, 130);

    goto LABEL_7;
  }

  result = sub_25EC79A24();
  if ((result & 1) == 0)
  {
LABEL_7:
    sub_25EC4E124();
    swift_allocError();
    v11 = 7;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_25EC62C90(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = a1 + 32;
  v72 = a1 + 32;
  v73 = v4;
  while (1)
  {
    v90 = v2;
    v8 = v6;
    v9 = (v7 + 48 * v6);
    v10 = *v9;
    v11 = *(v98 + 64);
    if (!*(v11 + 16) || (v12 = *(v9 + 1), v13 = *(v9 + 2), v15 = *(v9 + 3), v14 = *(v9 + 4), v16 = *(v9 + 5), v17 = sub_25EC4CDB4(*v9), (v18 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v68 = v10;
      *(v68 + 4) = 3;
      return swift_willThrow();
    }

    v74 = v8;
    v19 = *(*(v11 + 56) + 8 * v17);
    v20 = *(v12 + 16);
    v21 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;

    v22 = v13;
    v23 = v13;
    v24 = v15;
    sub_25EC473B4(v23, v15);
    v25 = v14;
    sub_25EC473B4(v14, v16);

    v93 = v21;
    result = swift_beginAccess();
    v85 = v12;
    v86 = v22;
    v75 = v20;
    v26 = v16;
    if (v20)
    {
      break;
    }

    v2 = v90;
LABEL_33:

    sub_25EC63950();
    v46 = v45;
    v47 = *(v45 + 16);
    v70 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId;
    result = swift_beginAccess();
    v71 = v47;
    if (v47)
    {
      v48 = 0;
      v76 = v46;
      v78 = v46 + 32;
      v88 = v26;
      v82 = v24;
      v84 = v25;
      v97 = v19;
      do
      {
        if (v48 >= *(v46 + 16))
        {
          goto LABEL_76;
        }

        v49 = *(v78 + 4 * v48);
        v50 = *(v19 + v93);
        if (!*(v50 + 16) || (v51 = sub_25EC4CDB4(*(v78 + 4 * v48)), (v52 & 1) == 0))
        {

          sub_25EC4E124();
          swift_allocError();
          *v69 = v49;
          *(v69 + 4) = 4;
          swift_willThrow();

          sub_25EC47404(v86, v24);
          v67 = v25;
          return sub_25EC47404(v67, v26);
        }

        v80 = v48;
        v53 = *(*(v50 + 56) + 8 * v51);
        swift_beginAccess();
        v54 = *(v53 + 48);
        if (v54 >> 62)
        {
          result = sub_25EC7A184();
          v89 = v53;
          v92 = v2;
          if (result)
          {
LABEL_41:

            goto LABEL_47;
          }
        }

        else
        {
          result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v89 = v53;
          v92 = v2;
          if (result)
          {
            goto LABEL_41;
          }
        }

        v55 = *(v19 + v70);
        if (v55 >= 0xFFFF0000)
        {
          goto LABEL_77;
        }

        *(v19 + v70) = v55 + 0x10000;
        type metadata accessor for OutputController();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        sub_25EC79864();
        swift_allocObject();

        *(v56 + 24) = sub_25EC79844();
        swift_beginAccess();

        MEMORY[0x25F8CB8A0](v57);
        if (*((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25EC7A0A4();
          v53 = v89;
        }

        sub_25EC7A0C4();
        swift_endAccess();

LABEL_47:
        v58 = *(v53 + 48);
        if (v58 >> 62)
        {
          v59 = sub_25EC7A184();
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v59)
        {
          v60 = 0;
          while (1)
          {
            if ((v58 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x25F8CB970](v60, v58);
              v61 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_73;
              }
            }

            else
            {
              if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_74;
              }

              v61 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_73;
              }
            }

            v62 = sub_25EC79A14();

            if ((v62 & 1) == 0)
            {
              break;
            }

            sub_25EC7A144();
            MEMORY[0x25F8CB870](0xD000000000000026, 0x800000025EC81380);
            v63 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v63);

            MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC813B0);
            sub_25EC47B5C(0, 0xE000000000000000, 0xD00000000000001DLL, 0x800000025EC813D0, 0xD000000000000036, 0x800000025EC81210, 211);

            ++v60;
            v19 = v97;
            if (v61 == v59)
            {
              goto LABEL_35;
            }
          }

          v64 = sub_25EC79854();
          sub_25EC4E124();
          swift_allocError();
          *v65 = v64;
          *(v65 + 4) = 7;
          swift_willThrow();

          sub_25EC47404(v86, v82);
          sub_25EC47404(v84, v88);
        }

LABEL_35:
        v48 = v80 + 1;

        v26 = v88;
        v24 = v82;
        v25 = v84;
        v46 = v76;
        v2 = v92;
      }

      while (v80 + 1 != v71);
    }

    v6 = v74 + 1;

    sub_25EC47404(v86, v24);
    result = sub_25EC47404(v25, v26);
    v7 = v72;
    if (v74 + 1 == v73)
    {
      return result;
    }
  }

  v27 = 0;
  v77 = v12 + 32;
  v2 = v90;
  v87 = v26;
  v81 = v24;
  v83 = v25;
  v96 = v19;
  while (1)
  {
    if (v27 >= *(v12 + 16))
    {
      goto LABEL_75;
    }

    v79 = v27;
    v28 = (v77 + 56 * v27);
    v29 = *v28;
    v30 = v28[4];
    v94 = v28[5];
    v91 = v28[6];
    v31 = *(v19 + v93);
    if (!*(v31 + 16) || (result = sub_25EC4CDB4(v29), (v32 & 1) == 0))
    {

      v26 = v91;
      sub_25EC473B4(v94, v91);

      sub_25EC4E124();
      swift_allocError();
      *v66 = v29;
      *(v66 + 4) = 4;
      swift_willThrow();

      sub_25EC47404(v86, v24);
      sub_25EC47404(v25, v87);

      v67 = v94;
      return sub_25EC47404(v67, v26);
    }

    v95 = *(v30 + 16);
    if (v95)
    {
      break;
    }

LABEL_8:
    v24 = v81;
    v27 = v79 + 1;
    v26 = v87;
    v25 = v83;
    v12 = v85;
    if (v79 + 1 == v75)
    {
      goto LABEL_33;
    }
  }

  v33 = *(*(v31 + 56) + 8 * result);

  sub_25EC473B4(v94, v91);

  v34 = 0;
  v35 = (v30 + 53);
  while (v34 < *(v30 + 16))
  {
    v36 = v30;
    v37 = *v35;
    if (*(v35 - 1))
    {
      type metadata accessor for OutputController();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      sub_25EC79864();
      swift_allocObject();
      *(v38 + 24) = sub_25EC79844();
      swift_beginAccess();

      MEMORY[0x25F8CB8A0](v39);
      if (*((*(v33 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
    }

    else
    {
      v40 = sub_25EC79DD4();
      if (v2)
      {

        sub_25EC47404(v94, v91);

        sub_25EC47404(v86, v81);
        sub_25EC47404(v83, v87);
      }

      v41 = v40;
      type metadata accessor for DataOutputController();
      v38 = swift_allocObject();
      *(v38 + 32) = v41;
      *(v38 + 40) = 0;
      *(v38 + 16) = v37;
      sub_25EC79864();
      swift_allocObject();
      *(v38 + 24) = sub_25EC79844();
      swift_beginAccess();
      v42 = swift_retain_n();
      MEMORY[0x25F8CB8A0](v42);
      if (*((*(v33 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x25F8CB8A0](v43);
      if (*((*(v33 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
    }

    v44 = *(v38 + 24);

    if (v37 == 2)
    {
      sub_25EC62764(v44);
      if (v2)
      {
        goto LABEL_65;
      }
    }

    else if (v37 == 1)
    {
      sub_25EC62498(v44);
      v30 = v36;
      if (v2)
      {
LABEL_65:

        sub_25EC47404(v94, v91);

        sub_25EC47404(v86, v81);
        sub_25EC47404(v83, v87);
      }

      goto LABEL_16;
    }

    v30 = v36;
LABEL_16:
    ++v34;

    v35 += 24;
    if (v95 == v34)
    {

      sub_25EC47404(v94, v91);

      v19 = v96;
      goto LABEL_8;
    }
  }

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
  return result;
}

void sub_25EC63950()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];
  v63 = v1;
  v70 = *(v1 + 16);
  if (!v70)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_27:
    v24 = sub_25EC6A4C0(v4);

    v72 = v24;
    if (!v70)
    {
      v59 = MEMORY[0x277D84F90];
LABEL_58:

      v54 = *(v59 + 16);
      if (v54)
      {
        v74 = MEMORY[0x277D84F90];
        sub_25EC5B770(0, v54, 0);
        v55 = *(v74 + 16);
        v56 = 32;
        do
        {
          v57 = *(v59 + v56);
          v58 = *(v74 + 24);
          if (v55 >= v58 >> 1)
          {
            sub_25EC5B770((v58 > 1), v55 + 1, 1);
          }

          *(v74 + 16) = v55 + 1;
          *(v74 + 4 * v55 + 32) = v57;
          v56 += 56;
          ++v55;
          --v54;
        }

        while (v54);
      }

      return;
    }

    v25 = 0;
    v60 = v1 + 32;
    v26 = v24 + 56;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= *(v1 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v27 = (v60 + 56 * v25);
      v62 = *v27;
      v61 = *(v27 + 1);
      v28 = *(v27 + 3);
      v29 = *(v27 + 4);
      v31 = *(v27 + 5);
      v30 = *(v27 + 6);
      ++v25;
      v32 = *(v29 + 16);
      v67 = v30;
      v69 = *(v27 + 2);
      if (!v32)
      {
        break;
      }

      v64 = v28;

      v65 = v31;
      sub_25EC473B4(v31, v30);
      v33 = (v29 + 53);
      v34 = MEMORY[0x277D84F90];
      do
      {
        if (!*v33)
        {
          v38 = *(v33 - 21);
          v73 = *(v33 - 17);
          v39 = *(v33 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25EC5B7B0(0, *(v34 + 16) + 1, 1);
          }

          v36 = *(v34 + 16);
          v35 = *(v34 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_25EC5B7B0((v35 > 1), v36 + 1, 1);
          }

          *(v34 + 16) = v36 + 1;
          v37 = v34 + 24 * v36;
          *(v37 + 32) = v38;
          *(v37 + 36) = v73;
          *(v37 + 52) = v39;
          *(v37 + 53) = 0;
        }

        v33 += 24;
        --v32;
      }

      while (v32);
      v40 = *(v34 + 16);
      if (v40)
      {
        v41 = 0;
        v42 = *(v72 + 16);
        while (1)
        {
          if (v42)
          {
            v43 = *(v34 + 32 + 24 * v41);
            v44 = MEMORY[0x25F8CBAE0](*(v72 + 40), v43, 4);
            v45 = -1 << *(v72 + 32);
            v46 = v44 & ~v45;
            if ((*(v26 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
            {
              break;
            }
          }

LABEL_42:
          if (++v41 == v40)
          {
            goto LABEL_49;
          }
        }

        v47 = ~v45;
        while (*(*(v72 + 48) + 4 * v46) != v43)
        {
          v46 = (v46 + 1) & v47;
          if (((*(v26 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        sub_25EC47404(v65, v67);
        v1 = v63;
        if (v25 == v70)
        {
          goto LABEL_58;
        }
      }

      else
      {
LABEL_49:

        v1 = v63;
        v48 = v64;
        v31 = v65;
LABEL_50:
        v49 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25EC5B790(0, *(v59 + 16) + 1, 1);
          v49 = v59;
        }

        v50 = v69;
        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_25EC5B790((v51 > 1), v52 + 1, 1);
          v50 = v69;
          v49 = v59;
        }

        *(v49 + 16) = v52 + 1;
        v59 = v49;
        v53 = v49 + 56 * v52;
        *(v53 + 32) = v62;
        *(v53 + 40) = v61;
        *(v53 + 48) = v50;
        *(v53 + 56) = v48;
        *(v53 + 64) = v29;
        *(v53 + 72) = v31;
        *(v53 + 80) = v67;
        if (v25 == v70)
        {
          goto LABEL_58;
        }
      }
    }

    sub_25EC473B4(v31, v30);
    v48 = v28;
    goto LABEL_50;
  }

  v3 = 0;
  v66 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_66;
    }

    v5 = (v66 + 56 * v3);
    v6 = v5[3];
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v5[5];
      v9 = v5[6];

      v71 = v8;
      v68 = v9;
      sub_25EC473B4(v8, v9);

      sub_25EC5B770(0, v7, 0);
      v10 = v2;
      v11 = v2[2];
      v12 = 32;
      do
      {
        v13 = *(v6 + v12);
        v14 = v10[3];
        if (v11 >= v14 >> 1)
        {
          sub_25EC5B770((v14 > 1), v11 + 1, 1);
        }

        v10[2] = v11 + 1;
        *(v10 + v11 + 8) = v13;
        v12 += 12;
        ++v11;
        --v7;
      }

      while (v7);

      sub_25EC47404(v71, v68);

      v1 = v63;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      v10 = v2;
    }

    v15 = v10[2];
    v16 = *(v4 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v4 + 3) >> 1)
    {
      if (!v10[2])
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v4 = sub_25EC50FAC(isUniquelyReferenced_nonNull_native, v19, 1, v4);
      if (!v10[2])
      {
LABEL_3:

        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_4;
      }
    }

    v20 = *(v4 + 2);
    if ((*(v4 + 3) >> 1) - v20 < v15)
    {
      goto LABEL_69;
    }

    memcpy(&v4[4 * v20 + 32], v10 + 4, 4 * v15);

    if (v15)
    {
      v21 = *(v4 + 2);
      v22 = __OFADD__(v21, v15);
      v23 = v21 + v15;
      if (v22)
      {
        goto LABEL_70;
      }

      *(v4 + 2) = v23;
    }

LABEL_4:
    if (++v3 == v70)
    {
      goto LABEL_27;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_25EC63FA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v5)
  {
    return result;
  }

  v7 = 0;
  v8 = a1 + 32;
  v9 = MEMORY[0x277D84FA0];
  v92 = v1;
  v77 = a1 + 32;
  v78 = v5;
LABEL_3:
  v84 = v7;
  v10 = (v8 + 48 * v7);
  v11 = *v10;
  v12 = *(v1 + 64);
  if (!*(v12 + 16) || (v13 = v10[1], v14 = v10[2], v15 = v10[4], v90 = v10[3], v16 = v10[5], v17 = sub_25EC4CDB4(v11), (v18 & 1) == 0))
  {
    sub_25EC4E124();
    swift_allocError();
    *v71 = v11;
    *(v71 + 4) = 3;
    return swift_willThrow();
  }

  v93 = v11;
  v19 = *(*(v12 + 56) + 8 * v17);
  v100 = v9;
  v99 = v9;
  v20 = *(v13 + 16);
  v21 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;

  sub_25EC473B4(v14, v90);
  v82 = v16;
  sub_25EC473B4(v15, v16);

  v86 = v21;
  result = swift_beginAccess();
  v95 = v19;
  v81 = v15;
  v83 = v14;
  v89 = v13;
  if (!v20)
  {
    v66 = v3;
    v67 = MEMORY[0x277D84FA0];
    goto LABEL_34;
  }

  v22 = v13;
  v23 = 0;
  v79 = v13 + 32;
  v24 = v19;
  do
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_72;
    }

    v80 = v23;
    v25 = (v79 + 56 * v23);
    v26 = *v25;
    v94 = v25[3];
    v27 = v25[5];
    v28 = v25[6];
    if (!*(*(v24 + v86) + 16) || (sub_25EC4CDB4(v26), (v29 & 1) == 0))
    {

      sub_25EC473B4(v27, v28);

      sub_25EC4E124();
      swift_allocError();
      *v70 = v26;
      *(v70 + 4) = 4;
      swift_willThrow();

      sub_25EC47404(v14, v90);
      sub_25EC47404(v81, v82);

      return sub_25EC47404(v27, v28);
    }

    v30 = v94;
    v31 = *(v94 + 16);

    v87 = v27;
    v88 = v28;
    sub_25EC473B4(v27, v28);

    if (v31)
    {
      v32 = 0;
      v33 = (v94 + 40);
      v91 = 1;
      while (1)
      {
        if (v32 >= *(v30 + 16))
        {
          goto LABEL_71;
        }

        v34 = *(v33 - 2);
        v35 = *v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25EC7A890;
        *(inited + 32) = v93;
        v37 = sub_25EC61A94(v34, inited);
        if (v3)
        {

          sub_25EC47404(v87, v88);

          sub_25EC47404(v83, v90);
          sub_25EC47404(v81, v82);

          swift_setDeallocating();
        }

        v38 = v37;
        swift_setDeallocating();
        if (v38)
        {
          break;
        }

        if ((sub_25EC799C4() & 1) == 0)
        {
          v3 = 0;
          if ((sub_25EC799C4() & 1) == 0)
          {

            v97 = 0;
            v98 = 0xE000000000000000;
            sub_25EC7A144();

            v97 = 0x6E65646E65706544;
            v98 = 0xEB00000000207963;
            v73 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v73);

            MEMORY[0x25F8CB870](0xD00000000000001ALL, 0x800000025EC811D0);
            sub_25EC47BA8(v97, v98, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 290);

            sub_25EC4E124();
            swift_allocError();
            *v74 = v34;
            *(v74 + 4) = 2;
            swift_willThrow();

            sub_25EC47404(v87, v88);

LABEL_66:
            sub_25EC47404(v83, v90);
            return sub_25EC47404(v81, v82);
          }

          result = sub_25EC68894(&v97, v34);
          if (v35)
          {
            goto LABEL_12;
          }

LABEL_24:
          v43 = sub_25EC79DC4();
          sub_25EC48B40(v43, 1);

          v97 = 0;
          v98 = 0xE000000000000000;
          sub_25EC7A144();
          MEMORY[0x25F8CB870](0xD000000000000031, 0x800000025EC81250);
          v44 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v44);

          MEMORY[0x25F8CB870](0x73617420726F6620, 0xEC0000003D64496BLL);
          v45 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v45);

          sub_25EC47B5C(v97, v98, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 300);

          goto LABEL_12;
        }

        result = sub_25EC68894(&v97, v34);
        v3 = 0;
        if ((v35 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v30 = v94;
        ++v32;
        v33 += 12;
        if (v31 == v32)
        {

          if (v91)
          {
            v96 = 0;
            v14 = v83;
            v22 = v89;
            goto LABEL_26;
          }

          result = sub_25EC47404(v87, v88);
          v14 = v83;
          v22 = v89;
          goto LABEL_28;
        }
      }

      v39 = sub_25EC79A14();

      if ((v39 & 1) == 0)
      {

        v68 = sub_25EC79854();
        sub_25EC4E124();
        swift_allocError();
        *v69 = v68;
        *(v69 + 4) = 7;
        swift_willThrow();

        sub_25EC47404(v87, v88);

        sub_25EC47404(v83, v90);
        sub_25EC47404(v81, v82);
      }

      v97 = 0;
      v98 = 0xE000000000000000;
      sub_25EC7A144();

      v97 = 0xD000000000000013;
      v98 = 0x800000025EC81290;
      v40 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v40);

      MEMORY[0x25F8CB870](0x6B736174206F7420, 0xEB000000003D6449);
      v41 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v41);

      MEMORY[0x25F8CB870](0x70617267206E6920, 0xEC0000003D644968);
      v42 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v42);

      sub_25EC47B5C(v97, v98, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 279);

      v91 = 0;
      v3 = 0;
      if (v35)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    v96 = v3;

LABEL_26:

    v46 = sub_25EC79A14();

    if ((v46 & 1) == 0)
    {

      v75 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v76 = v75;
      *(v76 + 4) = 7;
      swift_willThrow();

      sub_25EC47404(v87, v88);

      sub_25EC47404(v14, v90);
      sub_25EC47404(v81, v82);
    }

    v97 = 0;
    v98 = 0xE000000000000000;
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000031, 0x800000025EC812B0);
    v47 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v47);

    MEMORY[0x25F8CB870](0x6B736174206F7420, 0xEB000000003D6449);
    v48 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v48);

    MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC812F0);
    sub_25EC47B5C(v97, v98, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 312);

    sub_25EC47404(v87, v88);

    v3 = v96;
LABEL_28:
    v23 = v80 + 1;
    v24 = v95;
  }

  while (v80 + 1 != v20);
  v66 = v3;
  v67 = v100;
LABEL_34:
  v85 = v84 + 1;

  v49 = 0;
  v50 = 1 << *(v67 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(v67 + 56);
  v53 = (v50 + 63) >> 6;
  while (v52)
  {
    v54 = v49;
LABEL_44:
    v55 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v56 = *(*(v67 + 48) + ((v54 << 8) | (4 * v55)));
    result = sub_25EC79A24();
    if ((result & 1) == 0)
    {

      sub_25EC4E124();
      swift_allocError();
      *v72 = v56;
      *(v72 + 4) = 7;
      swift_willThrow();

      goto LABEL_66;
    }
  }

  while (1)
  {
    v54 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v67 + 56 + 8 * v54);
    ++v49;
    if (v52)
    {
      v49 = v54;
      goto LABEL_44;
    }
  }

  v57 = 0;
  v58 = v99;
  v59 = v99 + 56;
  v60 = 1 << *(v99 + 32);
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  else
  {
    v61 = -1;
  }

  v62 = v61 & *(v99 + 56);
  v63 = (v60 + 63) >> 6;
  v1 = v92;
  v7 = v85;
  while (v62)
  {
    v64 = v57;
LABEL_56:
    v65 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    result = sub_25EC62A40(*(*(v58 + 48) + ((v64 << 8) | (4 * v65))), v95);
    if (v66)
    {

      sub_25EC47404(v83, v90);
      return sub_25EC47404(v81, v82);
    }
  }

  while (1)
  {
    v64 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v64 >= v63)
    {

      sub_25EC47404(v83, v90);
      sub_25EC47404(v81, v82);

      v8 = v77;
      v3 = v66;
      v9 = MEMORY[0x277D84FA0];
      if (v85 != v78)
      {
        goto LABEL_3;
      }

      return result;
    }

    v62 = *(v59 + 8 * v64);
    ++v57;
    if (v62)
    {
      v57 = v64;
      goto LABEL_56;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionManager.buildAllGraphs()()
{
  sub_25EC4E124();
  swift_allocError();
  *v0 = 0;
  *(v0 + 4) = 10;
  swift_willThrow();
}

uint64_t SessionManager.connectIntrospectionChannel(senderId:channel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  ObjectType = swift_getObjectType();

  return sub_25EC653D0(v6, a2, v3, ObjectType, a3);
}

BOOL sub_25EC64FC8(Swift::UInt32 a1, Swift::UInt64 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000046, 0x800000025EC81160);
  v5 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v5);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEB00000000203A64);
  v6 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v6);

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  return PolarisGSTServiceHandle.sendTrigger(senderId:frameId:)(a1, a2);
}

uint64_t sub_25EC65140(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000045, 0x800000025EC81110);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEB00000000203A64);
  v4 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v4);

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  return sub_25EC799F4();
}

uint64_t sub_25EC652B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC652F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC65360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC653D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v6 = *(a3 + 64);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v39 = result;
  v35 = v11;
  v36 = v7;
  if (v10)
  {
LABEL_5:
    v14 = v13;
  }

  else
  {
    do
    {
LABEL_6:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }

      if (v14 >= v11)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_25EC7A890;
        sub_25EC7A144();

        v33 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v33);

        MEMORY[0x25F8CB870](0x73736573206E6920, 0xEC000000206E6F69);
        v34 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v34);

        *(v32 + 56) = MEMORY[0x277D837D0];
        *(v32 + 32) = 0xD00000000000001ELL;
        *(v32 + 40) = 0x800000025EC811B0;
        sub_25EC7A2B4();

        v31 = 0;
        return v31 & 1;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
    }

    while (!v10);
  }

  v37 = v14;
  v38 = (v10 - 1) & v10;
  v15 = *(*(result + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
  v16 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v41 = v17 + 64;
  v42 = v17;
  for (i = v22; ; v22 = i)
  {
    if (!v21)
    {
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_40;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_19;
        }
      }

      v13 = v37;
      v10 = v38;
      result = v39;
      v11 = v35;
      v7 = v36;
      if (v38)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

LABEL_19:
    v25 = *(*(v17 + 56) + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    swift_beginAccess();
    v26 = *(v25 + 48);
    v27 = v26 >> 62 ? sub_25EC7A184() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      break;
    }

LABEL_13:
    v21 &= v21 - 1;

    v18 = v41;
    v17 = v42;
  }

  v28 = 0;
  while ((v26 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CB970](v28, v26);
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_38;
    }

LABEL_26:

    v30 = sub_25EC79854();

    if (v30 == a1)
    {

      v31 = sub_25EC79A04();

      return v31 & 1;
    }

    ++v28;
    if (v29 == v27)
    {
      goto LABEL_13;
    }
  }

  if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v29 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_26;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_25EC65894(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double defaultBufferConfig.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FD360E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = dword_27FD36338;
  result = *&qword_27FD36330;
  *a1 = qword_27FD36330;
  *(a1 + 8) = v1;
  return result;
}

double sub_25EC65960()
{
  *&result = 0x300000001;
  qword_27FD36330 = 0x300000001;
  dword_27FD36338 = 2;
  return result;
}

uint64_t GSTService.__allocating_init()()
{
  v0 = swift_allocObject();
  GSTService.init()();
  return v0;
}

void *GSTService.init()()
{
  v1 = v0;
  v6 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D84F90];
  v0[6] = sub_25EC4E5F0(MEMORY[0x277D84F90]);
  sub_25EC79A54();
  swift_allocObject();
  v0[2] = sub_25EC79A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36340, &unk_25EC7B5B0);
  swift_allocObject();
  v0[3] = sub_25EC79944();
  v0[5] = sub_25EC4E604(v2);
  type metadata accessor for PolarisMutex();
  v3 = swift_allocObject();
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  v5.__sig = 0;
  *v5.__opaque = 0;
  pthread_mutexattr_init(&v5);
  swift_beginAccess();
  pthread_mutex_init((v3 + 16), &v5);
  swift_endAccess();
  pthread_mutexattr_destroy(&v5);
  v1[4] = v3;
  return v1;
}

Swift::Bool __swiftcall GSTService.registerReceiver(clientId:receiverId:senderIds:)(Swift::UInt32 clientId, Swift::UInt32 receiverId, Swift::OpaquePointer senderIds)
{
  v5 = *&receiverId;
  v7 = sub_25EC79A64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!GSTService.getReceiver(receiverId:)(v5))
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D3E798], v7);
    sub_25EC799B4();
    swift_allocObject();
    LOBYTE(v28) = 0;
    v11 = sub_25EC79974();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v5;
    *(v12 + 32) = v3;

    sub_25EC79994();
    sub_25EC65FA4(v5, v11, clientId);
  }

  v13 = GSTService.getReceiver(receiverId:)(v5);
  if (v13)
  {
    v14 = *(senderIds._rawValue + 2);
    v15 = (senderIds._rawValue + 32);
    while (1)
    {
      v16 = v14;
      if (!v14)
      {
        break;
      }

      v18 = *v15++;
      v17 = v18;
      v19 = sub_25EC79A24();
      v14 = v16 - 1;
      if ((v19 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_25EC7A890;
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_25EC7A144();

        v28 = 0xD00000000000001CLL;
        v29 = 0x800000025EC81530;
        v27 = v5;
        v21 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v21);

        MEMORY[0x25F8CB870](0x6573206874697720, 0xED0000207265646ELL);
        v27 = v17;
        v22 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v22);

        v23 = v28;
        v24 = v29;
        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 32) = v23;
        *(v20 + 40) = v24;
        sub_25EC7A2B4();

        break;
      }
    }

    LOBYTE(v13) = v16 == 0;
  }

  else
  {
    __break(1u);
  }

  return v13;
}

uint64_t GSTService.getReceiver(receiverId:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = *(v2 + 48);
  if (*(v5 + 16) && (v6 = sub_25EC4CDB4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  v9 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v9 + 16));
  swift_endAccess();

  return v8;
}

uint64_t sub_25EC65EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(sub_25EC799A4() + 16);
  if (v4)
  {
    v5 = 32;
    do
    {

      sub_25EC79924();

      v5 += 4;
      --v4;
    }

    while (v4);
  }

  return sub_25EC79984();
}

uint64_t sub_25EC65FA4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = v3[4];
  swift_beginAccess();

  pthread_mutex_lock((v8 + 16));
  swift_endAccess();

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v4[6];
  v4[6] = 0x8000000000000000;
  sub_25EC4DB74(a2, a1, isUniquelyReferenced_nonNull_native);
  v4[6] = v13;
  swift_endAccess();
  swift_beginAccess();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v4[5];
  v4[5] = 0x8000000000000000;
  sub_25EC4DA50(a3, a1, v10);
  v4[5] = v14;
  swift_endAccess();
  v11 = v4[4];
  swift_beginAccess();

  pthread_mutex_unlock((v11 + 16));
  swift_endAccess();
}

Swift::Bool __swiftcall GSTService.deregisterReceiver(receiverId:)(Swift::UInt32 receiverId)
{
  v1 = *&receiverId;
  if (GSTService.getReceiver(receiverId:)(*&receiverId))
  {

    if (sub_25EC799E4())
    {
      sub_25EC662F8(v1);
      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v6 = 0xD00000000000001ELL;
    v7 = 0x800000025EC81570;
    v5 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v6 = 0xD000000000000018;
    v7 = 0x800000025EC81550;
    v4 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v4);

    MEMORY[0x25F8CB870](0x65726564206F7420, 0xEE00726574736967);
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  sub_25EC7A2B4();

  return 0;
}

uint64_t sub_25EC662F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  sub_25EC4D0B8(a1);
  swift_endAccess();

  swift_beginAccess();
  sub_25EC4D01C(a1);
  swift_endAccess();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v5 + 16));
  swift_endAccess();
}

Swift::Bool __swiftcall GSTService.deregisterSender(senderId:)(Swift::UInt32 senderId)
{
  v2 = v1;
  v3 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = sub_25EC799D4();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v5 + 16));
  swift_endAccess();

  return v4 & 1;
}

Swift::UInt32_optional __swiftcall GSTService.getClient(receiverId:)(Swift::UInt32 receiverId)
{
  v2 = v1;
  v3 = *&receiverId;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_25EC4CDB4(v3), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  swift_endAccess();
  v10 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v10 + 16));
  swift_endAccess();

  return (v9 | (v8 << 32));
}

uint64_t GSTService.consumeRunnableReceivers()()
{
  v1 = MEMORY[0x277D84F90];

  sub_25EC79914();

  sub_25EC79934();

  return v1;
}

__n128 sub_25EC666AC(__n128 a1, uint64_t a2, unint64_t *a3, uint64_t a4, char **a5)
{
  a1.n128_u64[0] = *a3;
  v6 = a3[1];
  v15 = a1;
  *&v7 = GSTService.getClient(receiverId:)(*a3);
  if ((v7 & 0x100000000) == 0)
  {
    v9 = v7;
    v10 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_25EC51804(0, *(v10 + 2) + 1, 1, v10);
      *a5 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_25EC51804((v12 > 1), v13 + 1, 1, v10);
      *a5 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[24 * v13];
    result = v15;
    *(v14 + 4) = v15.n128_u64[0];
    *(v14 + 10) = v9;
    *(v14 + 6) = v6;
  }

  return result;
}

Swift::Bool __swiftcall GSTService.sendTrigger(senderId:frameId:)(Swift::UInt32 senderId, Swift::UInt64 frameId)
{
  v3 = v2;
  v4 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  v5 = sub_25EC799F4();
  v6 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v6 + 16));
  swift_endAccess();

  return v5 & 1;
}

void *GSTService.deinit()
{

  return v0;
}

uint64_t GSTService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GSTService.ReceiverExecutionMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GSTService.ReceiverExecutionMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GSTService.RunnableReceiverInfo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GSTService.RunnableReceiverInfo(uint64_t result, int a2, int a3)
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

uint64_t PolarisExclavesMessageMetadata.init(clientId:graphId:frameId:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t PolarisExclavesMessageMetadata.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  *a2 = v4;
  a2[1] = v3;
  return result;
}

void *PolarisExclavesMessageMetadata.toBytes()()
{
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
  v2 = swift_allocObject();
  v3 = _swift_stdlib_malloc_size(v2);
  v2[2] = 16;
  v2[3] = 2 * v3 - 64;
  v2[4] = *v0;
  v2[5] = v1;
  return v2;
}

uint64_t sub_25EC66B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25EC5B834(0, v4, 0);
    v5 = v13;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_25EC5B834((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = v13 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25EC66C3C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25EC5B8C4(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_25EC5B8C4((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25EC66D14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v26 = MEMORY[0x277D84F90];
    sub_25EC5B86C(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v26;
    v22 = a1;
    v23 = a1 + 32;
    v21 = v3;
    while (v6 < *(result + 16))
    {
      v8 = *(v23 + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v24 = v7;
        v25 = MEMORY[0x277D84F90];

        sub_25EC5B834(0, v9, 0);
        v10 = v25;
        v11 = (v8 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;
          v14 = *(v25 + 16);
          v15 = *(v25 + 24);

          if (v14 >= v15 >> 1)
          {
            sub_25EC5B834((v15 > 1), v14 + 1, 1);
          }

          *(v25 + 16) = v14 + 1;
          v16 = v25 + 16 * v14;
          *(v16 + 32) = v12;
          *(v16 + 40) = v13;
          v11 += 16;
          --v9;
        }

        while (v9);

        v3 = v21;
        result = v22;
        v7 = v24;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = result;
        sub_25EC5B86C((v17 > 1), v18 + 1, 1);
        result = v19;
      }

      ++v6;
      *(v7 + 16) = v18 + 1;
      *(v7 + 8 * v18 + 32) = v10;
      if (v6 == v3)
      {

        v2 = a2;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_16:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EC66EEC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = MEMORY[0x277D84F90];
  sub_25EC5B8FC(0, v2, 0);
  v4 = 0;
  result = v21;
  v18 = v1;
  v19 = v1 + 32;
  v17 = v2;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v19 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v20 = result;

      sub_25EC5B8C4(0, v7, 0);
      v8 = v3;
      v9 = (v6 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_25EC5B8C4((v12 > 1), v13 + 1, 1);
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v9 += 16;
        --v7;
      }

      while (v7);

      v3 = MEMORY[0x277D84F90];
      v2 = v17;
      v1 = v18;
      result = v20;
    }

    else
    {
      v8 = v3;
    }

    v22 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25EC5B8FC((v15 > 1), v16 + 1, 1);
      result = v22;
    }

    ++v4;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v8;
    if (v4 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC67090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25EC5B934(0, v3, 0);
    v5 = a1;
    v6 = v12;
    v7 = *(v12 + 16);
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v12 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_25EC5B934((v10 > 1), v7 + 1, 1);
        v5 = a1;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7 + 32) = v9;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25EC67188()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_25EC5B964(0, v2, 0);
    result = v8;
    v4 = (v1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_25EC5B964((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_25EC67254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25EC5B994(0, v4, 0);
    v5 = v16;
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_25EC5B994((v12 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v13 = v16 + 32 * v11;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      v6 += 4;
      --v4;
    }

    while (v4);

    v3 = a2;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *v3 = v5;
  return result;
}

uint64_t sub_25EC67378()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25EC5B9CC(0, v2, 0);
    v3 = v13;
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_25EC5B9CC((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = v13 + 32 * v9;
      *(v11 + 32) = v5;
      *(v11 + 40) = v6;
      *(v11 + 48) = v7;
      *(v11 + 56) = v8;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_25EC67470@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  result = sub_25EC79A94();
  *a1 = v3;
  return result;
}

uint64_t PolarisExclaveSupportServiceHandle.__allocating_init(endpoint:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25EC67508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v44 - 8);
  v6 = MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v39 = *(v3 + 16);
  KeyPath = swift_getKeyPath();
  v11 = *(a1 + 16);
  v43 = KeyPath;

  v37 = v5;
  if (v11)
  {
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v40 = *(v12 + 56);
    v41 = v13;
    v15 = (v12 - 8);
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = v44;
      v41(v9, v14, v44);
      swift_getAtKeyPath();
      v18 = v46;
      (*v15)(v9, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_25EC50FAC(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_25EC50FAC((v19 > 1), v20 + 1, 1, v16);
      }

      *(v16 + 2) = v20 + 1;
      *&v16[4 * v20 + 32] = v18;
      v14 += v40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = swift_getKeyPath();
  v22 = v38;
  v23 = *(v38 + 16);
  v43 = v21;

  if (v23)
  {
    v24 = v37 + 16;
    v25 = *(v37 + 16);
    v26 = v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v40 = *(v37 + 72);
    v41 = v25;
    v27 = (v37 + 8);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = v42;
      v30 = v44;
      v31 = v24;
      v41(v42, v26, v44);
      swift_getAtKeyPath();
      v32 = v45;
      (*v27)(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_25EC50FAC(0, *(v28 + 2) + 1, 1, v28);
      }

      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        v28 = sub_25EC50FAC((v33 > 1), v34 + 1, 1, v28);
      }

      *(v28 + 2) = v34 + 1;
      *&v28[4 * v34 + 32] = v32;
      v26 += v40;
      --v23;
      v24 = v31;
    }

    while (v23);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  sub_25EC5881C(v16, v28);
}

uint64_t sub_25EC6788C()
{
  v1 = sub_25EC79754();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  result = sub_25EC586F4(&v13);
  if (!v0)
  {
    v16 = MEMORY[0x277D84FA0];
    v9 = *(v13 + 16);
    if (v9)
    {
      v10 = (v2 + 8);
      v11 = (v13 + 56);
      do
      {
        v12 = *v11;
        LODWORD(v13) = *(v11 - 6);
        v14 = *(v11 - 1);
        v15 = v12;
        sub_25EC67A2C(v5);
        sub_25EC68C3C(v7, v5);
        (*v10)(v7, v1);
        v11 += 4;
        --v9;
      }

      while (v9);

      return v16;
    }

    else
    {

      return MEMORY[0x277D84FA0];
    }
  }

  return result;
}

uint64_t sub_25EC67A2C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v41 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v41 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = *v1;
  v14 = *(v1 + 1);
  v15 = *(v1 + 3);
  v41 = *(v1 + 2);
  v42 = v15;
  *(&v41 - v12) = v13;
  v16 = *MEMORY[0x277D3E7A8];
  v17 = *(v3 + 104);
  v43 = &v41 - v12;
  v48 = v16;
  v46 = v17;
  v47 = v3 + 104;
  v17();
  v18 = *(v14 + 16);
  if (v18)
  {
    v19 = (v14 + 32);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v19++;
      *v11 = v21;
      (v46)(v11, v48, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_25EC511F8(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_25EC511F8((v22 > 1), v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v11, v2);
      --v18;
    }

    while (v18);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v20);

  v24 = *(v41 + 16);
  if (v24)
  {
    v25 = (v41 + 32);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v25++;
      *v8 = v27;
      (v46)(v8, v48, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_25EC511F8(0, v26[2] + 1, 1, v26);
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_25EC511F8((v28 > 1), v29 + 1, 1, v26);
      }

      v26[2] = v29 + 1;
      (*(v3 + 32))(v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v8, v2);
      --v24;
    }

    while (v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v26);

  v30 = *(v42 + 16);
  if (v30)
  {
    v31 = (v42 + 32);
    v32 = MEMORY[0x277D84F90];
    v33 = v45;
    do
    {
      v34 = *v31++;
      *v33 = v34;
      (v46)(v33, v48, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_25EC511F8(0, v32[2] + 1, 1, v32);
      }

      v36 = v32[2];
      v35 = v32[3];
      v37 = v45;
      if (v36 >= v35 >> 1)
      {
        v39 = sub_25EC511F8((v35 > 1), v36 + 1, 1, v32);
        v37 = v45;
        v32 = v39;
      }

      v32[2] = v36 + 1;
      v38 = v32 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
      v33 = v37;
      (*(v3 + 32))(v38, v37, v2);
      --v30;
    }

    while (v30);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v32);

  return sub_25EC79744();
}

uint64_t sub_25EC67EA8@<X0>(char **a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  v7 = *a2;
  v6 = v4;
  return sub_25EC5A3F4(&v7, &v6, a4);
}

uint64_t PolarisExclaveSupportServiceHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25EC67FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  result = sub_25EC7A124();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x25F8CBAE0](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25EC681FC(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  result = sub_25EC7A124();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
      result = sub_25EC7A014();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25EC6854C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25EC79754();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  result = sub_25EC7A124();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25EC69094(&qword_27FD36348, MEMORY[0x277D3E740]);
      result = sub_25EC7A014();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25EC68894(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x25F8CBAE0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25EC69E9C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25EC6897C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = *v2;
  sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
  v33 = a2;
  v11 = sub_25EC7A014();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v21 = sub_25EC7A024();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25EC69FC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25EC68C3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25EC79754();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25EC69094(&qword_27FD36348, MEMORY[0x277D3E740]);
  v33 = a2;
  v11 = sub_25EC7A014();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25EC69094(&qword_27FD36350, MEMORY[0x277D3E748]);
      v21 = sub_25EC7A024();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25EC6A244(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25EC69094(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25EC79754();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25EC690D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  v2 = *v0;
  v3 = sub_25EC7A114();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_25EC69218()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  v6 = *v0;
  v7 = sub_25EC7A114();
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

void *sub_25EC69458()
{
  v1 = v0;
  v2 = sub_25EC79754();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  v6 = *v0;
  v7 = sub_25EC7A114();
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

uint64_t sub_25EC69690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  result = sub_25EC7A124();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x25F8CBAE0](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_25EC69884(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  v7 = sub_25EC7A124();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
      result = sub_25EC7A014();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EC69B94(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25EC79754();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  v7 = sub_25EC7A124();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25EC69094(&qword_27FD36348, MEMORY[0x277D3E740]);
      result = sub_25EC7A014();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EC69E9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC67FD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25EC690D8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25EC69690(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x25F8CBAE0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}

uint64_t sub_25EC69FC0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC681FC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25EC69218();
      goto LABEL_12;
    }

    sub_25EC69884(v10 + 1);
  }

  v12 = *v3;
  sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
  v13 = sub_25EC7A014();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25EC4F4D0(&qword_27FD361B8, MEMORY[0x277D3E7B8]);
      v21 = sub_25EC7A024();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}

uint64_t sub_25EC6A244(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25EC79754();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC6854C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25EC69458();
      goto LABEL_12;
    }

    sub_25EC69B94(v10 + 1);
  }

  v12 = *v3;
  sub_25EC69094(&qword_27FD36348, MEMORY[0x277D3E740]);
  v13 = sub_25EC7A014();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25EC69094(&qword_27FD36350, MEMORY[0x277D3E748]);
      v21 = sub_25EC7A024();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}

uint64_t sub_25EC6A4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8CB8F0](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25EC68894(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25EC6A534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25EC4F4D0(&qword_27FD361A8, MEMORY[0x277D3E7B0]);
  result = MEMORY[0x25F8CB8F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_25EC6897C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id PolarisExclaveSupportWrapper.init(daemon:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v4 = sub_25EC79E84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_log;
  sub_25EC79E74();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      type metadata accessor for PolarisExclaveSupport.Service();
      sub_25EC6B414();
      sub_25EC7A004();

      *&v2[OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient] = v27;
      (*(v5 + 16))(v11, &v2[v12], v4);
      v19 = sub_25EC79E64();
      v20 = sub_25EC7A0E4();
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_25EC46000, v19, v20, "Created Tightbeam client", v22, 2u);
        MEMORY[0x25F8CBF90](v22, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
      v23 = type metadata accessor for PolarisExclaveSupportWrapper(0);
      v26.receiver = v3;
      v26.super_class = v23;
      return objc_msgSendSuper2(&v26, sel_init, v25);
    }

    else
    {

      (*(v5 + 16))(v9, &v2[v12], v4);
      v16 = sub_25EC79E64();
      v17 = sub_25EC7A0E4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25EC46000, v16, v17, "Exclave capability is not enabled", v18, 2u);
        MEMORY[0x25F8CBF90](v18, -1, -1);
      }

      v24 = *(v5 + 8);
      v24(v9, v4);
      v24(&v3[v12], v4);
      type metadata accessor for PolarisExclaveSupportWrapper(0);
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PolarisExclaveSupportWrapper(uint64_t a1)
{
  result = qword_27FD36378;
  if (!qword_27FD36378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25EC6AB98(uint64_t a1)
{
  v1 = a1;
  v2 = sub_25EC79E64();
  v3 = sub_25EC7A0E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_25EC46000, v2, v3, "Sending loopback request over Tightbeam with taskid %u", v4, 8u);
    MEMORY[0x25F8CBF90](v4, -1, -1);
  }

  v5 = sub_25EC749A8(v1);

  return v5;
}

uint64_t sub_25EC6AD1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_25EC79E64();
  v9 = sub_25EC7A0E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_25EC46000, v8, v9, "Sending runClientFunc request over Tightbeam with taskid %llu ", v10, 0xCu);
    MEMORY[0x25F8CBF90](v10, -1, -1);
  }

  v14 = v6;
  v13 = v7;

  sub_25EC74E50(&v14, &v13, &v12);

  *a4 = v12;
  return result;
}

uint64_t sub_25EC6AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sub_25EC79E64();
  v7 = sub_25EC7A0E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109632;
    *(v8 + 4) = v5;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v4;
    *(v8 + 14) = 2048;
    *(v8 + 16) = a3;
    _os_log_impl(&dword_25EC46000, v6, v7, "Sending sharedDependenciesMet request over Tightbeam with graphId %u, senderId %u, frameId %llu", v8, 0x18u);
    MEMORY[0x25F8CBF90](v8, -1, -1);
  }

  v9 = sub_25EC7546C(v5, v4, a3);

  return v9;
}

uint64_t sub_25EC6B07C(uint64_t a1)
{
  v1 = sub_25EC79E64();
  v2 = sub_25EC7A0E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25EC46000, v1, v2, "Sending runTasks request over Tightbeam", v3, 2u);
    MEMORY[0x25F8CBF90](v3, -1, -1);
  }

  v4 = sub_25EC75934();

  return v4;
}

uint64_t sub_25EC6B1E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25EC79D34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EC79D04();
  v6 = sub_25EC79D24();
  (*(v3 + 8))(v5, v2);
  return v6;
}

id PolarisExclaveSupportWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PolarisExclaveSupportWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PolarisExclaveSupportWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25EC6B414()
{
  result = qword_27FD36370;
  if (!qword_27FD36370)
  {
    type metadata accessor for PolarisExclaveSupport.Service();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36370);
  }

  return result;
}

uint64_t sub_25EC6B474(uint64_t a1)
{
  result = sub_25EC79E84();
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

Swift::Bool __swiftcall PolarisGSTServiceHandle.deregisterSender(senderId:)(Swift::UInt32 senderId)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = sub_25EC799D4();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v5 + 16));
  swift_endAccess();

  return v4 & 1;
}

Swift::Bool __swiftcall PolarisGSTServiceHandle.sendTrigger(senderId:frameId:)(Swift::UInt32 senderId, Swift::UInt64 frameId)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  v5 = sub_25EC799F4();
  v6 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v6 + 16));
  swift_endAccess();

  return v5 & 1;
}

uint64_t PolarisGSTServiceHandle.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v0 + 16) = GSTService.init()();
  return v0;
}

uint64_t PolarisGSTServiceHandle.init()()
{
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v0 + 16) = GSTService.init()();
  return v0;
}

uint64_t PolarisGSTServiceHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PolarisWorkHandler.__allocating_init(clients:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t PolarisWorkHandler.init(clients:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t PolarisWorkHandler.messageConsume(senderId:metadata:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, 0x800000025EC80E00);
  MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC817D0);
  sub_25EC7A164();
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  if (*(*(v2 + 16) + 16) && (sub_25EC4CDB4(v5), (v9 & 1) != 0))
  {

    if (sub_25EC5B138(v6, a1, v7))
    {
      v10 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_25EC50FAC(0, *(v10 + 2) + 1, 1, v10);
        *(v3 + 24) = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_25EC50FAC((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      *&v10[4 * v13 + 32] = v5;
      *(v3 + 24) = v10;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    return v14;
  }

  else
  {
    sub_25EC7A144();

    v16 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v16);

    result = sub_25EC7A174();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PolarisWorkHandler.workerEntry()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25EC7A890;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000024;
  *(v1 + 40) = 0x800000025EC818A0;
  sub_25EC7A2B4();

  v3 = *(v0 + 24);
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 32);
  sub_25EC4F384(0, 1);
  v5 = *(v0 + 16);
  if (!*(v5 + 16) || (v6 = sub_25EC4CDB4(v4), (v7 & 1) == 0))
  {
    while (1)
    {
      sub_25EC7A144();

      v16 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v16);

LABEL_14:
      sub_25EC7A174();
      __break(1u);
    }
  }

  v8 = *(*(*(v5 + 56) + 8 * v6) + 16);
  if (*(v8 + 40))
  {
    v9 = *(v8 + 40);
LABEL_8:
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25EC7A890;
    *(v11 + 56) = v2;
    *(v11 + 32) = 0xD000000000000034;
    *(v11 + 40) = 0x800000025EC80E90;

    sub_25EC7A2B4();

    v12 = *(v9 + 24);

    swift_beginAccess();
    for (i = *(v12 + 16); *(i + 16); i = *(v12 + 16))
    {
      swift_beginAccess();
      v14 = *(i + 40);

      sub_25EC4E8E0(0, 1);
      swift_endAccess();
      sub_25EC48C0C(v14);
    }

    return;
  }

  v10 = *(v8 + 16);
  if (v10)
  {
    v9 = *(v10 + 32);

    goto LABEL_8;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25EC7A890;
  *(v15 + 56) = v2;
  *(v15 + 32) = 0xD000000000000038;
  *(v15 + 40) = 0x800000025EC80CE0;

  sub_25EC7A2B4();
}

uint64_t PolarisWorkHandler.deinit()
{

  return v0;
}

uint64_t PolarisWorkHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PSWriterM3Demo.__allocating_init(resourceID:pbsManager:entrySize:bufferConfig:)(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  swift_allocObject();
  return PSWriterM3Demo.init(resourceID:pbsManager:entrySize:bufferConfig:)(a1, a2, v5, a4);
}

PolarisExclaveSupport::PSWriterM3DemoState_optional __swiftcall PSWriterM3DemoState.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25EC6C290()
{
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC6C304(uint64_t a1)
{
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC6C39C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
}