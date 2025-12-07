unint64_t sub_21B1CA13C()
{
  result = qword_27CD6F930;
  if (!qword_27CD6F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F930);
  }

  return result;
}

unint64_t sub_21B1CA190()
{
  result = qword_27CD6F938;
  if (!qword_27CD6F938)
  {
    sub_21B20CC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F938);
  }

  return result;
}

unint64_t sub_21B1CA1E8()
{
  result = qword_27CD6F948;
  if (!qword_27CD6F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F940, &qword_21B216200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F948);
  }

  return result;
}

uint64_t sub_21B1CA24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F958, &qword_21B216210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1CA2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F968, &qword_21B2162D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v31 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v36 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v35 = &v31 - v11;
  v12 = sub_21B20C518();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F978, &qword_21B2162E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B2110C0;
  v18 = *MEMORY[0x277CBE868];
  *(v17 + 32) = *MEMORY[0x277CBE868];
  v19 = v18;
  v20 = sub_21B20D588();

  if (v20)
  {
    v32 = v20;
    v33 = v13;
    sub_21B20D578();
    sub_21B1CBDEC();
    sub_21B20D5E8();
    if (v39)
    {
      v21 = (v36 + 48);
      v22 = MEMORY[0x277D84F90];
      v34 = v6;
      while (1)
      {
        sub_21B17C304(&v38, v37);
        sub_21B1CA7A8(v37, v5);
        if (v1)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v37);
        if ((*v21)(v5, 1, v6) == 1)
        {
          sub_21B186488(v5, &qword_27CD6F968, &qword_21B2162D0);
        }

        else
        {
          v23 = v35;
          sub_21B1CBE44(v5, v35);
          sub_21B1CBE44(v23, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_21B1D32BC(0, v22[2] + 1, 1, v22);
          }

          v25 = v22[2];
          v24 = v22[3];
          if (v25 >= v24 >> 1)
          {
            v22 = sub_21B1D32BC((v24 > 1), v25 + 1, 1, v22);
          }

          v22[2] = v25 + 1;
          sub_21B1CBE44(v40, v22 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25);
          v6 = v34;
        }

        sub_21B20D5E8();
        if (!v39)
        {
          goto LABEL_15;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v37);
      (*(v33 + 8))(v16, v12);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
LABEL_15:
      (*(v33 + 8))(v16, v12);
      if (v22[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F988, &qword_21B2162E8);
        v28 = sub_21B20D808();
      }

      else
      {
        v28 = MEMORY[0x277D84F98];
      }

      v29 = v32;
      *&v38 = v28;

      sub_21B1CB400(v30, 1, &v38);
      if (v1)
      {
        result = swift_unexpectedError();
        __break(1u);
      }

      else
      {

        return v38;
      }
    }
  }

  else
  {
    sub_21B1CBD98();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    *(v26 + 8) = 0x800000021B20FBB0;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B1CA7A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = sub_21B20C4E8();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v38 - v10;
  v12 = sub_21B20C678();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - v19;
  sub_21B19DB00(a1, v43);
  v21 = swift_dynamicCast();
  v22 = *(v13 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v11, 1, 1, v12);
    sub_21B186488(v11, &qword_27CD6F550, &qword_21B2162F0);
    sub_21B1CBD98();
    swift_allocError();
    *v27 = 0xD000000000000021;
    *(v27 + 8) = 0x800000021B20FBD0;
    *(v27 + 16) = 0;
    return swift_willThrow();
  }

  v41 = a2;
  v22(v11, 0, 1, v12);
  (*(v13 + 32))(v20, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F978, &qword_21B2162E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B2110C0;
  v24 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v25 = v24;
  sub_21B1CBF24(inited);
  swift_setDeallocating();
  sub_21B1CC118(inited + 32);
  sub_21B20C578();
  if (v2)
  {
    (*(v13 + 8))(v20, v12);
  }

  v28 = sub_21B20C4D8();
  if (v28 == 2 || (v28 & 1) != 0)
  {
    goto LABEL_7;
  }

  sub_21B20C558();
  v30 = sub_21B20D368();
  v32 = v31;

  if (v30 == 7106931 && v32 == 0xE300000000000000)
  {
  }

  else
  {
    v33 = sub_21B20DB28();

    if ((v33 & 1) == 0)
    {
LABEL_7:
      (*(v42 + 8))(v7, v44);
      (*(v13 + 8))(v20, v12);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
      return (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
    }
  }

  sub_21B20C5B8();
  sub_21B20C598();
  v40 = *(v13 + 8);
  v40(v17, v12);
  v39 = sub_21B20D368();
  v35 = v34;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v37 = v41;
  *v41 = v39;
  v37[1] = v35;
  sub_21B20C528();
  (*(v42 + 8))(v7, v44);
  v40(v20, v12);
  return (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
}

uint64_t sub_21B1CACF0(uint64_t a1)
{
  v4 = sub_21B20C3D8();
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20D348();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B20C678();
  v71 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v57 - v18;
  v20 = sub_21B1CA2D0(a1);
  if (v2)
  {
    return v1;
  }

  v21 = v20;
  v68 = v16;
  v62 = v7;
  v63 = v4;
  v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
  result = sub_21B20D7E8();
  v1 = result;
  v23 = 0;
  v24 = *(v21 + 64);
  v57 = v21 + 64;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v29 = v71;
  v65 = v71 + 16;
  v66 = v71 + 8;
  v60 = result + 64;
  v61 = (v75 + 8);
  v58 = v28;
  v59 = v11;
  v64 = v21;
  v67 = result;
  v30 = v68;
  if (v27)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v27));
      v72 = (v27 - 1) & v27;
LABEL_11:
      v34 = v31 | (v23 << 6);
      v35 = *(v21 + 56);
      v36 = (*(v21 + 48) + 16 * v34);
      v37 = v36[1];
      v73 = *v36;
      v74 = v34;
      (*(v29 + 16))(v19, v35 + *(v29 + 72) * v34, v12);
      v75 = v37;

      sub_21B20C5B8();
      sub_21B20C598();
      v38 = *(v29 + 8);
      v38(v30, v12);
      v39 = sub_21B20D368();
      v1 = v40;

      sub_21B20D338();
      v41 = v78;
      v42 = sub_21B20D2B8();
      v78 = v41;
      if (v41)
      {
        break;
      }

      v76 = v42;
      v77 = v43;
      v44 = v12;
      v45 = v62;
      sub_21B20C3C8();
      sub_21B17FBB0();
      v70 = v1;
      v46 = sub_21B20D618();
      v69 = v47;
      v48 = v45;
      v12 = v44;
      (*v61)(v48, v63);

      v38(v19, v44);
      type metadata accessor for Query();
      result = swift_allocObject();
      *(result + 48) = 0;
      v49 = v69;
      v50 = v70;
      *(result + 16) = v39;
      *(result + 24) = v50;
      *(result + 32) = v46;
      *(result + 40) = v49;
      v51 = v74;
      *(v60 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
      v1 = v67;
      v52 = (*(v67 + 48) + 16 * v51);
      v53 = v75;
      *v52 = v73;
      v52[1] = v53;
      *(*(v1 + 56) + 8 * v51) = result;
      v54 = *(v1 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_19;
      }

      *(v1 + 16) = v56;
      v28 = v58;
      v29 = v71;
      v27 = v72;
      v21 = v64;
      v30 = v68;
      if (!v72)
      {
        goto LABEL_6;
      }
    }

    v38(v19, v12);
    return v1;
  }

LABEL_6:
  v32 = v23;
  while (1)
  {
    v23 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v23 >= v28)
    {

      return v1;
    }

    v33 = *(v57 + 8 * v23);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v72 = (v33 - 1) & v33;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_21B1CB1B4(void *a1, void *a2)
{
  v20 = a1;
  v3 = sub_21B20C548();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[1];
  v21[0] = *a2;
  v21[1] = v13;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_21B17FBB0();
  sub_21B20C668();
  (*(v4 + 8))(v7, v3);
  v14 = v21[3];
  v15 = sub_21B1CACF0(v12);
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v16 = v15;
    (*(v9 + 8))(v12, v8);
    v17 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v17;
    sub_21B1CB94C(v16, sub_21B1CBD50, 0, isUniquelyReferenced_nonNull_native, v21);
    *v17 = v21[0];
  }
}

void sub_21B1CB400(uint64_t a1, char a2, void *a3)
{
  v61 = sub_21B20C678();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  v58 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v52 - v12);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v58 + 80);
  v57 = a1;
  v16 = (v59 + 32);
  v54 = a1 + ((v15 + 32) & ~v15);
  sub_21B1CBEB4(v54, v13);
  v17 = v13[1];
  v64 = *v13;
  v18 = v64;
  v65 = v17;
  v19 = *v16;
  v55 = v14;
  v53 = v19;
  v19(v60, v13 + v14, v61);
  v20 = *a3;
  v22 = sub_21B1B9778(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B20468C();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_21B20290C(v25, a2 & 1);
  v27 = sub_21B1B9778(v18, v17);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v17;
      v53((v31[7] + *(v59 + 72) * v22), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_21B1CBEB4(v54 + *(v58 + 72) * v36, v13);
          v37 = v13[1];
          v64 = *v13;
          v38 = v64;
          v65 = v37;
          v39 = *v16;
          (*v16)(v60, v13 + v55, v61);
          v40 = *a3;
          v41 = sub_21B1B9778(v38, v37);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_21B20290C(v45, 1);
            v41 = sub_21B1B9778(v38, v37);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v38;
          v49[1] = v37;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

void sub_21B1CB94C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v41 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v40 = (63 - v6) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = v8;
  if (v8)
  {
LABEL_9:
    while (1)
    {
      v13 = __clz(__rbit64(v11)) | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a1 + 56) + 8 * v13);
      v48 = *v14;
      v49 = v15;
      v50 = v16;

      a2(&v45, &v48);

      v18 = v45;
      v17 = v46;
      v19 = v47;
      v48 = v45;
      v49 = v46;
      v20 = *a5;
      v22 = sub_21B1B9778(v45, v46);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((a4 & 1) == 0)
        {
          sub_21B203648();
        }
      }

      else
      {
        sub_21B200B1C(v25, a4 & 1);
        v27 = sub_21B1B9778(v18, v17);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_25;
        }

        v22 = v27;
      }

      v29 = *a5;
      if (v26)
      {
        v34 = *(v29[7] + 8 * v22);
        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        sub_21B1CBD98();
        v37 = swift_allocError();
        *v38 = v36;
        *(v38 + 8) = v35;
        *(v38 + 16) = 1;
        swift_willThrow();
        v51 = v37;

        v39 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
        if (swift_dynamicCast())
        {
          goto LABEL_26;
        }

        sub_21B17AB4C(a1);

        return;
      }

      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v17;
      *(v29[7] + 8 * v22) = v19;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_24;
      }

      v29[2] = v33;
      a4 = 1;
      v9 = v10;
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v9;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v40)
      {
        sub_21B17AB4C(a1);

        return;
      }

      v11 = *(v41 + 8 * v10);
      ++v12;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_21B20DBF8();
  __break(1u);
LABEL_26:
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1CBD50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_21B1CBD98()
{
  result = qword_27CD6F960;
  if (!qword_27CD6F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F960);
  }

  return result;
}

unint64_t sub_21B1CBDEC()
{
  result = qword_27CD6F980;
  if (!qword_27CD6F980)
  {
    sub_21B20C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F980);
  }

  return result;
}

uint64_t sub_21B1CBE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CBEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CBF24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F990, &qword_21B2162F8);
    v3 = sub_21B20D688();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_21B20D2F8();
      sub_21B20DC88();
      v27 = v7;
      sub_21B20D388();
      v8 = sub_21B20DCA8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_21B20D2F8();
        v18 = v17;
        if (v16 == sub_21B20D2F8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_21B20DB28();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B1CC118(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1CC190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v37 = a4;
  v36 = type metadata accessor for InferredProtobufType(0);
  MEMORY[0x28223BE20](v36, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CCE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DatasetColumnType(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21B20CFD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DatasetColumnDescription(0);
  sub_21B1CC84C(a1 + *(v22 + 24), v16);
  (*(v9 + 32))(v12, v16, v8);
  v23 = (*(v9 + 88))(v12, v8);
  if (v23 != *MEMORY[0x277D3E1C0])
  {
    if (v23 != *MEMORY[0x277D3E1B0])
    {
      if (v23 == *MEMORY[0x277D3E1D0])
      {
        v29 = MEMORY[0x277D3E508];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1D8])
      {
        v29 = MEMORY[0x277D3E510];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1E8])
      {
        v29 = MEMORY[0x277D3E538];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1F0])
      {
        v29 = MEMORY[0x277D3E540];
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1C8])
      {
        v29 = MEMORY[0x277D3E500];
        goto LABEL_18;
      }

      v29 = MEMORY[0x277D3E518];
      if (v23 == *MEMORY[0x277D3E1E0] || v23 == *MEMORY[0x277D3E1F8])
      {
        goto LABEL_18;
      }

      if (v23 == *MEMORY[0x277D3E1B8])
      {
        v29 = MEMORY[0x277D3E4E8];
        goto LABEL_18;
      }

      if (v23 != *MEMORY[0x277D3E1A8])
      {
        result = sub_21B20D7C8();
        __break(1u);
        return result;
      }
    }

    v29 = MEMORY[0x277D3E4F8];
LABEL_18:
    sub_21B17FDE8(a1);

    (*(v18 + 104))(v21, *v29, v17);
    v32 = v37;
    result = (*(v18 + 32))(v37, v21, v17);
    v33 = (v32 + *(v36 + 20));
    *v33 = 0;
    v33[1] = 0;
    return result;
  }

  v24 = a1[1];
  if (*(a1 + *(v22 + 28)) == 1)
  {
    v25 = *a1;
    (*(v18 + 104))(v7, *MEMORY[0x277D3E4F0], v17);
    v38 = v34;
    v39 = v35;

    MEMORY[0x21CEEBBB0](0x5F6D756E652ELL, 0xE600000000000000);
    MEMORY[0x21CEEBBB0](v25, v24);

    v26 = v38;
    v27 = v39;
    sub_21B17FDE8(a1);
    v28 = &v7[*(v36 + 20)];
    *v28 = v26;
    *(v28 + 1) = v27;
  }

  else
  {

    sub_21B17FDE8(a1);

    (*(v18 + 104))(v7, *MEMORY[0x277D3E530], v17);
    v30 = &v7[*(v36 + 20)];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  return sub_21B1CC8B0(v7, v37);
}

uint64_t sub_21B1CC688()
{
  v1 = (v0 + *(type metadata accessor for InferredProtobufType(0) + 20));
  if (v1[1])
  {
    MEMORY[0x21CEEBBB0](*v1);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20CFD8();
    sub_21B20D768();
    v2 = 0x657079742029;
    v3 = 0xE600000000000000;
  }

  else
  {
    sub_21B20CFD8();
    sub_21B20D768();
    v2 = 0x6570797420;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v2, v3);
  return 0;
}

uint64_t sub_21B1CC778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21B20CFC8())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_21B20DB28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for InferredProtobufType(uint64_t a1)
{
  result = qword_27CD6F998;
  if (!qword_27CD6F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1CC84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CC8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredProtobufType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21B1CC93C(uint64_t a1)
{
  sub_21B20CFD8();
  if (v1 <= 0x3F)
  {
    sub_21B1CC9C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B1CC9C0()
{
  if (!qword_2811F9F58)
  {
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2811F9F58);
    }
  }
}

uint64_t sub_21B1CCA10@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v113 = a8;
  v131 = a7;
  v118 = a6;
  v117 = a5;
  v133 = a1;
  v125 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F898, qword_21B215D38);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v124 = &v111[-v14];
  v123 = sub_21B20D118();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v15);
  v121 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_21B20D018();
  v127 = *(v128 - 8);
  v18 = MEMORY[0x28223BE20](v128, v17);
  v115 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v129 = &v111[-v22];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v114 = &v111[-v25];
  MEMORY[0x28223BE20](v24, v26);
  v116 = &v111[-v27];
  v28 = sub_21B20CCE8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v111[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = sub_21B20CFD8();
  v130 = *(v134 - 8);
  v34 = MEMORY[0x28223BE20](v134, v33);
  v120 = &v111[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v119 = &v111[-v38];
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v111[-v40];
  v142 = type metadata accessor for InferredProtobufType(0);
  v43 = MEMORY[0x28223BE20](v142, v42);
  v126 = &v111[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v43, v45);
  v48 = &v111[-v47];
  v50 = MEMORY[0x28223BE20](v46, v49);
  v52 = &v111[-v51];
  MEMORY[0x28223BE20](v50, v53);
  v135 = &v111[-v54];
  v55 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v55 >= *(a3 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v112 = *v133;
  v56 = a3 + 56 * v55;
  sub_21B1CD894(v56 + 32, &v139);
  v132 = v139;
  v133 = v140;
  __swift_destroy_boxed_opaque_existential_1(&v141);
  sub_21B1CD894(v56 + 32, &v139);

  sub_21B17C284(&v141, v138);
  sub_21B17FB4C(v138, &v139);
  __swift_project_boxed_opaque_existential_1(&v139, *(&v141 + 1));
  swift_getDynamicType();
  sub_21B20CDD8();
  v57 = (*(v29 + 88))(v32, v28);
  if (v57 != *MEMORY[0x277D3E1C0])
  {
    v58 = v134;
    v59 = v131;
    v61 = v129;
    if (v57 == *MEMORY[0x277D3E1B0])
    {
      v65 = MEMORY[0x277D3E4F8];
      v66 = v135;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1(&v139);
      v68 = *v65;
      v69 = v130;
      (*(v130 + 104))(v41, v68, v58);
      (*(v69 + 32))(v52, v41, v58);
      v70 = &v52[*(v142 + 20)];
      *v70 = 0;
      v70[1] = 0;
      goto LABEL_21;
    }

    v66 = v135;
    if (v57 == *MEMORY[0x277D3E1D0])
    {
      v65 = MEMORY[0x277D3E508];
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1D8])
    {
      v65 = MEMORY[0x277D3E510];
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1E8])
    {
      v65 = MEMORY[0x277D3E538];
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1F0])
    {
      v65 = MEMORY[0x277D3E540];
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1C8])
    {
      v65 = MEMORY[0x277D3E500];
      goto LABEL_20;
    }

    v65 = MEMORY[0x277D3E518];
    if (v57 == *MEMORY[0x277D3E1E0] || v57 == *MEMORY[0x277D3E1F8])
    {
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1B8])
    {
      v65 = MEMORY[0x277D3E4E8];
      goto LABEL_20;
    }

    if (v57 == *MEMORY[0x277D3E1A8])
    {
      v65 = MEMORY[0x277D3E4F8];
      goto LABEL_20;
    }

LABEL_50:
    result = sub_21B20D7C8();
    __break(1u);
    return result;
  }

  v58 = v134;
  v59 = v131;
  v60 = a4;
  v61 = v129;
  if (v60)
  {
    (*(v130 + 104))(v48, *MEMORY[0x277D3E4F0], v134);
    v136 = v117;
    v137 = v118;

    MEMORY[0x21CEEBBB0](0x5F6D756E652ELL, 0xE600000000000000);
    MEMORY[0x21CEEBBB0](v132, v133);
    v62 = v136;
    v63 = v137;
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v64 = &v48[*(v142 + 20)];
    *v64 = v62;
    v64[1] = v63;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v139);
    (*(v130 + 104))(v48, *MEMORY[0x277D3E530], v58);
    v67 = &v48[*(v142 + 20)];
    *v67 = 0;
    v67[1] = 0;
  }

  sub_21B1CC8B0(v48, v52);
  v66 = v135;
LABEL_21:
  sub_21B1CC8B0(v52, v66);
  v71 = sub_21B20D108();
  if (*(v71 + 16) && (v72 = sub_21B1B9778(v132, v133), (v73 & 1) != 0))
  {
    v74 = v127;
    v75 = *(v127 + 16);
    v76 = v114;
    v77 = v128;
    v75(v114, *(v71 + 56) + *(v127 + 72) * v72, v128);

    v78 = v116;
    (*(v74 + 32))(v116, v76, v77);
    v79 = v115;
    v75(v115, v78, v77);
    v80 = v126;
    sub_21B20CFF8();
    v81 = sub_21B20D008();
    v83 = v82;
    v84 = *(v74 + 8);
    v84(v79, v77);
    v85 = &v80[*(v142 + 20)];
    *v85 = v81;
    v85[1] = v83;
    if (sub_21B20CFC8())
    {
      v86 = &v66[*(v142 + 20)];
      v87 = v86[1];
      if (v83)
      {
        if (v87 && (v81 == *v86 && v83 == v87 || (sub_21B20DB28() & 1) != 0))
        {
          goto LABEL_29;
        }
      }

      else if (!v87)
      {
LABEL_29:

        v84(v78, v77);
        __swift_destroy_boxed_opaque_existential_1(v138);
        sub_21B1C416C(v126);
        result = sub_21B1C416C(v66);
        *v125 = v112;
        return result;
      }
    }

    v139 = 0;
    v140 = 0xE000000000000000;
    sub_21B20D6A8();
    v102 = v118;

    v139 = v117;
    v140 = v102;
    MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
    MEMORY[0x21CEEBBB0](v132, v133);

    MEMORY[0x21CEEBBB0](0x2073616820, 0xE500000000000000);
    v136 = 0;
    v137 = 0xE000000000000000;
    if (v83)
    {
      MEMORY[0x21CEEBBB0](v81, v83);
      MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
      sub_21B20D768();
      MEMORY[0x21CEEBBB0](0x657079742029, 0xE600000000000000);
    }

    else
    {
      sub_21B20D768();
      MEMORY[0x21CEEBBB0](0x6570797420, 0xE500000000000000);
    }

    MEMORY[0x21CEEBBB0](v136, v137);

    MEMORY[0x21CEEBBB0](0x20656C696877202CLL, 0xE800000000000000);
    v103 = v135;
    v104 = &v135[*(v142 + 20)];
    if (v104[1])
    {
      v105 = *v104;
      v136 = 0;
      v137 = 0xE000000000000000;
      MEMORY[0x21CEEBBB0](v105);
      MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
      sub_21B20D768();
      v106 = 0x657079742029;
      v107 = 0xE600000000000000;
    }

    else
    {
      v136 = 0;
      v137 = 0xE000000000000000;
      sub_21B20D768();
      v106 = 0x6570797420;
      v107 = 0xE500000000000000;
    }

    MEMORY[0x21CEEBBB0](v106, v107);
    MEMORY[0x21CEEBBB0](v136, v137);

    MEMORY[0x21CEEBBB0](0x65666E6920736920, 0xEC00000064657272);
    v108 = v139;
    v109 = v140;
    sub_21B186430();
    swift_allocError();
    *v110 = v108;
    *(v110 + 8) = v109;
    *(v110 + 16) = 5;
    swift_willThrow();
    v84(v78, v77);
    __swift_destroy_boxed_opaque_existential_1(v138);
    sub_21B1C416C(v126);
    return sub_21B1C416C(v103);
  }

  else
  {

    v89 = v130;
    (*(v130 + 16))(v119, v66, v58);
    v90 = v122;
    v91 = v121;
    v92 = v123;
    (*(v122 + 16))(v121, v59, v123);

    sub_21B20D0D8();
    (*(v90 + 8))(v91, v92);
    LOBYTE(v139) = 1;
    sub_21B20CFE8();
    v93 = v120;
    sub_21B20CFF8();
    v94 = v134;
    v95 = (*(v89 + 88))(v93, v134);
    LODWORD(v91) = *MEMORY[0x277D3E4F0];
    (*(v89 + 8))(v93, v94);
    if (v95 == v91)
    {
      v96 = sub_21B20D008();
      if (v97)
      {
        sub_21B1B9C24(&v139, v96, v97);
      }
    }

    v98 = v127;
    v99 = v124;
    v100 = v128;
    (*(v127 + 16))(v124, v61, v128);
    (*(v98 + 56))(v99, 0, 1, v100);
    v101 = sub_21B20D0F8();
    sub_21B1DF808(v99, v132, v133);
    v101(&v139, 0);
    (*(v98 + 8))(v61, v100);
    __swift_destroy_boxed_opaque_existential_1(v138);
    result = sub_21B1C416C(v135);
    *v125 = 1;
  }

  return result;
}

uint64_t sub_21B1CD894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC40, &qword_21B212500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CD904(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B20D118();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v54 = MEMORY[0x277D84FA0];
  v16 = *(a2 + 16);

  v47 = v15;
  v48 = v9;
  if (v16)
  {
    v17 = sub_21B1B9778(v14, v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      v14 = *v19;
      v20 = v19[1];

      v13 = v20;
    }
  }

  v45 = v4;
  v46 = sub_21B20D088();
  v22 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v22;
  v24 = v52;
  *v22 = 0x8000000000000000;
  v26 = sub_21B1B9778(v14, v13);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v9) = v25;
  if (*(v24 + 24) >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

LABEL_21:
    sub_21B2044CC();
    goto LABEL_9;
  }

  sub_21B202604(v29, isUniquelyReferenced_nonNull_native);
  v30 = sub_21B1B9778(v14, v13);
  if ((v9 & 1) != (v31 & 1))
  {
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v26 = v30;
LABEL_9:
  *v22 = v52;

  v32 = *v22;
  if ((v9 & 1) == 0)
  {
    sub_21B20D0E8();
    sub_21B2051DC(v26, v14, v13, v12, v32);
  }

  v33 = v32[7];
  v34 = *(v48 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  v35 = sub_21B20D268();
  v36 = *(v35 + 16);
  v51 = 0;
  if (v36)
  {
    v37 = 0;
    v38 = v33 + v34 * v26;
    v39 = v49;
    while (1)
    {
      v52 = v37;
      sub_21B1CCA10(&v51, &v52, v35, a3 & 1, v14, v13, v38, &v54, &v50);
      if (v39)
      {
        break;
      }

      ++v37;
      v40 = v50;
      v51 = v50;
      if (v36 == v37)
      {
        v49 = 0;
        goto LABEL_17;
      }
    }

    v46(v53, 1);
  }

  else
  {
    v40 = 0;
LABEL_17:

    v46(v53, 0);
    v41 = sub_21B1C2650(0, v54, v45);

    v42 = v41 | v40;
  }

  return v42 & 1;
}

uint64_t sub_21B1CDC80(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B20D118();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v31 - v11;
  v14 = *a1;
  v13 = a1[1];
  v31[0] = a1[2];
  v15 = *(a2 + 16);

  v16 = v14;
  v17 = v13;
  if (v15)
  {
    v18 = sub_21B1B9778(v14, v13);
    v16 = v14;
    v17 = v13;
    if (v19)
    {
      v20 = (*(a2 + 56) + 16 * v18);
      v16 = *v20;
      v17 = v20[1];
    }
  }

  v21 = sub_21B20D098();
  if (*(v21 + 16) && (v22 = sub_21B1B9778(v16, v17), (v23 & 1) != 0))
  {
    (*(v5 + 16))(v9, *(v21 + 56) + *(v5 + 72) * v22, v4);

    (*(v5 + 32))(v12, v9, v4);
    v24 = v12;
    v25 = sub_21B20D108();

    v26 = v31[0];

    v27 = v26;
    v28 = v31[1];
    v29 = sub_21B1CEAB4(0, v25, v14, v13, v27, v16, v17, v31[3]);
    if (!v28)
    {
      v24 = v29;
    }

    (*(v5 + 8))(v12, v4);
  }

  else
  {

    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_21B1CDF40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  v86 = a6;
  v82 = a5;
  v81 = a4;
  v91 = a3;
  v90 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v78 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v80 = &v75 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v79 = &v75 - v17;
  v85 = sub_21B20CFB8();
  v84 = *(v85 - 1);
  MEMORY[0x28223BE20](v85, v18);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21B20CFD8();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21B20D018();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29, v31);
  v33 = (&v75 - v32);
  LODWORD(v89) = *a1;
  sub_21B1CECE8(a2, &v75 - v32);
  v35 = *v33;
  v34 = v33[1];
  v36 = *(v25 + 8);
  v37 = v33 + *(v30 + 56);
  v96[7] = v25 + 8;
  v92 = v36;
  v36(v37, v24);
  sub_21B1CECE8(a2, v33);

  v38 = v33 + *(v30 + 56);
  v39 = v24;
  v40 = v91;
  (*(v25 + 32))(v28, v38, v24);
  if (*(v40 + 16) && (v41 = sub_21B1B9778(v35, v34), (v42 & 1) != 0))
  {
    sub_21B17FB4C(*(v40 + 56) + 40 * v41, v95);
    sub_21B17C284(v95, v96);
    sub_21B20CFF8();
    v44 = v87;
    v43 = v88;
    if ((*(v87 + 88))(v23, v88) != *MEMORY[0x277D3E4F0])
    {

      __swift_destroy_boxed_opaque_existential_1(v96);
      v92(v28, v39);
      result = (*(v44 + 8))(v23, v43);
      goto LABEL_11;
    }

    (*(v44 + 8))(v23, v43);
    v45 = sub_21B20D008();
    if (!v46)
    {

      __swift_destroy_boxed_opaque_existential_1(v96);
      result = (v92)(v28, v39);
      goto LABEL_11;
    }

    v47 = v45;
    v48 = v46;
    sub_21B17FB4C(v96, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_21B20D6A8();
      MEMORY[0x21CEEBBB0](0x6465727265666E49, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      swift_getDynamicType();
      v59 = sub_21B20DD38();
      MEMORY[0x21CEEBBB0](v59);

      MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20FC30);
      MEMORY[0x21CEEBBB0](v35, v34);

      MEMORY[0x21CEEBBB0](543584032, 0xE400000000000000);
      MEMORY[0x21CEEBBB0](v81, v82);
      MEMORY[0x21CEEBBB0](0xD00000000000002BLL, 0x800000021B20FC50);
      v60 = v95[0];
      sub_21B186430();
      swift_allocError();
      *v61 = v60;
      *(v61 + 16) = 5;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v96);
      return (v92)(v28, v39);
    }

    v91 = v93;
    v87 = v94;
    v49 = sub_21B20D078();
    v50 = *(v49 + 16);
    v88 = v48;
    v76 = v47;
    if (v50)
    {
      v51 = sub_21B1B9778(v47, v48);
      v52 = v85;
      v53 = v84;
      v54 = v80;
      v55 = v79;
      if (v56)
      {
        (*(v84 + 16))(v79, *(v49 + 56) + *(v84 + 72) * v51, v85);
        v57 = 0;
      }

      else
      {
        v57 = 1;
      }
    }

    else
    {
      v57 = 1;
      v52 = v85;
      v53 = v84;
      v54 = v80;
      v55 = v79;
    }

    v85 = *(v53 + 56);
    (v85)(v55, v57, 1, v52);
    sub_21B1CED58(v55, v54);
    v62 = (*(v53 + 48))(v54, 1, v52);
    v77 = v28;
    if (v62 == 1)
    {
      v63 = v54;
      v64 = MEMORY[0x277D84F90];
      sub_21B197E38(MEMORY[0x277D84F90]);
      sub_21B1CE9A8(v64);
      v65 = v83;
      sub_21B20CF88();

      sub_21B186488(v63, &qword_27CD6F890, &qword_21B215D30);
    }

    else
    {

      v65 = v83;
      (*(v53 + 32))(v83, v54, v52);
    }

    v66 = v87;
    if (!*(sub_21B20CFA8() + 16) || (sub_21B1B9778(v91, v66), (v67 & 1) == 0))
    {

      v68 = sub_21B20CF78();
      v69 = sub_21B20CF98();
      v89 = v39;
      v71 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = *v71;
      *v71 = 0x8000000000000000;
      sub_21B1BBC7C(v68, v91, v66, isUniquelyReferenced_nonNull_native);

      *v71 = v93;

      v69(v95, 0);
      v73 = v78;
      (*(v53 + 16))(v78, v65, v52);
      (v85)(v73, 0, 1, v52);
      v74 = sub_21B20D068();
      sub_21B1DF9E0(v73, v76, v88);
      v74(v95, 0);
      (*(v53 + 8))(v65, v52);
      __swift_destroy_boxed_opaque_existential_1(v96);
      result = (v92)(v77, v89);
      *v90 = 1;
      return result;
    }

    (*(v53 + 8))(v65, v52);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v92(v77, v39);
  }

  else
  {
    v92(v28, v24);
  }

LABEL_11:
  *v90 = v89;
  return result;
}

unint64_t sub_21B1CE8F8(uint64_t a1)
{
  v2 = sub_21B20DC78();

  return sub_21B1CE93C(a1, v2);
}

unint64_t sub_21B1CE93C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B1CE9A8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD6F9B0, qword_21B216440);
  v3 = sub_21B20D808();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_21B1CE8F8(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_21B17CEA8(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_21B1CE8F8(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1CEAB4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  MEMORY[0x28223BE20](v31, v12);
  v14 = &v30 - v13;
  v42 = a1;
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = a2;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v40 = a1;
      v39 = v9;
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v18)) | (v22 << 6);
      v24 = *(v38 + 56);
      v25 = (*(v38 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_21B20D018();
      (*(*(v28 - 8) + 16))(&v14[*(v31 + 48)], v24 + *(*(v28 - 8) + 72) * v23, v28);
      *v14 = v26;
      *(v14 + 1) = v27;

      v29 = v39;
      sub_21B1CDF40(&v42, v14, v34, v35, v36, v37, &v41);
      v9 = v29;
      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      result = sub_21B186488(v14, &qword_27CD6F9A8, &qword_21B216438);
      a1 = v41;
      v42 = v41;
      v21 = v22;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    sub_21B186488(v14, &qword_27CD6F9A8, &qword_21B216438);

    LOBYTE(a1) = v40;
    return a1 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return a1 & 1;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v40 = a1;
        v39 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1CECE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F9A8, &qword_21B216438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1CED58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MessageManifestProviding<>.makeMessageRelatedManifest()@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_21B20D138();
  v4 = sub_21B20D0C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t static MessageToColumnMapping<>.makeDefaultColumns(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  return sub_21B20C9F8();
}

{
  swift_getAssociatedTypeWitness();
  return sub_21B20C9B8();
}

uint64_t MessageToColumnMapping<>.getValue(forColumnIndex:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B1CF0F8(a1, a2, a3, a4, a5, MEMORY[0x277D3E630]);
}

{
  return sub_21B1CF0F8(a1, a2, a3, a4, a5, MEMORY[0x277D3E620]);
}

uint64_t sub_21B1CF0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v17 = a6;
  v16 = a5;
  v9 = sub_21B20CF68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17(a1, v13, AssociatedTypeWitness, v16);
  return (*(v10 + 8))(v13, v9);
}

id sub_21B1CF328()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    v4 = (*(*(v0 + 40) + 16))(*(v0 + 16), *(v0 + 24), **(v0 + 32));
    v5 = *(v0 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_21B1CF468@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;

  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000018, 0x800000021B20FD00);
  MEMORY[0x21CEEBBB0](v3, v4);
  MEMORY[0x21CEEBBB0](572537383, 0xE400000000000000);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](34, 0xE100000000000000);
  v5 = sub_21B20C948();
  v6 = *(type metadata accessor for DataSourceModel(0) + 32);
  v7 = sub_21B20D0C8();
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 32) = 1;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_21B1CF5CC()
{

  sub_21B1BDE44(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_21B1CF668@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v4 | 0x8000000000000000;
  *(a1 + 40) = 0;
  return sub_21B1BDBF0(v2, v3);
}

__n128 sub_21B1CF6DC(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s12TableFactoryCMa();
  v12 = swift_allocObject();
  v13 = a3[1].n128_u8[0];
  *(v12 + 40) = a7;
  *(v12 + 48) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  result = *a3;
  *(v12 + 56) = *a3;
  *(v12 + 72) = v13;
  *(v12 + 32) = a4;
  return result;
}

void BiomeTableConfig.init(tableName:schemaProvider:publisherFactory:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = *(a5 + 16);
  v14 = _s12TableFactoryCMa();
  v16.n128_u64[0] = v11;
  v16.n128_u64[1] = v12;
  v17 = v13;
  sub_21B1CF6DC(a1, a2, &v16, a3, v14, *a3, *(a4 + 8));
  a6[3] = v14;
  a6[4] = &off_282CA2DE0;
  *a6 = v15;
}

uint64_t RawPayload.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data);
  sub_21B17CEA8(v1, *(v0 + OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data + 8));
  return v1;
}

id static RawPayload.event(with:dataVersion:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_dataVersion] = 1;
  v6 = &v5[OBJC_IVAR____TtC12PoirotBlocks10RawPayload_data];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_21B17CEA8(a1, a2);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RawPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RawPayload.__allocating_init(jsonDictionary:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(v1);
  v3 = sub_21B20D258();

  v8[0] = 0;
  v4 = [v2 initWithJSONDictionary:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_21B20C508();

    swift_willThrow();
  }

  return v4;
}

id RawPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B1CFC84(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x3233746E69;
    v6 = 0x3436746E69;
    if (a1 != 2)
    {
      v6 = 0x3436746E6975;
    }

    if (a1)
    {
      v5 = 0x3233746E6975;
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
    v1 = 1819242338;
    v2 = 0x676E69727473;
    if (a1 != 7)
    {
      v2 = 1635017060;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x74616F6C66;
    if (a1 != 4)
    {
      v3 = 0x656C62756F64;
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

uint64_t sub_21B1CFD78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1D1254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B1CFDA0(uint64_t a1)
{
  v2 = sub_21B1D0580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1CFDDC(uint64_t a1)
{
  v2 = sub_21B1D0580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyDatasetValue.any.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v4);
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v4 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v4);
}

uint64_t AnyDatasetValue.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B19DB00(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B17C284(v9, v12);
    return sub_21B17C284(v12, a2);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_21B1CFFB8(v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v5 = sub_21B20DD38();
    v7 = v6;
    sub_21B186430();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_21B1CFFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA40, &qword_21B216D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnyDatasetValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D3E338];
  a3[3] = MEMORY[0x277D837D0];
  a3[4] = v3;
  *a3 = result;
  a3[1] = a2;
  return result;
}

void AnyDatasetValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = MEMORY[0x277D3E350];
  *(a1 + 24) = MEMORY[0x277D839F8];
  *(a1 + 32) = v2;
  *a1 = a2;
}

uint64_t AnyDatasetValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D3E348];
  *(a2 + 24) = MEMORY[0x277D839B0];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t AnyDatasetValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D3E370];
  a2[3] = MEMORY[0x277D83B88];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t AnyDatasetValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA48, &qword_21B216550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1D0580();
  sub_21B20DCD8();
  if (!v2)
  {
    v10 = sub_21B20D968();
    if (*(v10 + 16) == 1)
    {
      v11 = *(v10 + 32);

      if (v11 <= 3)
      {
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v33 = 2;
            v21 = sub_21B20D938();
            v22 = MEMORY[0x277D84A28];
            v23 = MEMORY[0x277D3E388];
          }

          else
          {
            v33 = 3;
            v21 = sub_21B20D958();
            v22 = MEMORY[0x277D84D38];
            v23 = MEMORY[0x277D3E398];
          }

          v29 = v22;
          v30 = v23;
          *&v28 = v21;
        }

        else
        {
          if (v11)
          {
            v33 = 1;
            v18 = sub_21B20D948();
            v19 = MEMORY[0x277D84CC0];
            v20 = MEMORY[0x277D3E390];
          }

          else
          {
            v33 = 0;
            v18 = sub_21B20D928();
            v19 = MEMORY[0x277D849A8];
            v20 = MEMORY[0x277D3E380];
          }

          v29 = v19;
          v30 = v20;
          LODWORD(v28) = v18;
        }
      }

      else if (v11 <= 5)
      {
        if (v11 == 4)
        {
          v33 = 4;
          sub_21B20D8F8();
          v29 = MEMORY[0x277D83A90];
          v30 = MEMORY[0x277D3E368];
          LODWORD(v28) = v24;
        }

        else
        {
          v33 = 5;
          sub_21B20D8E8();
          v29 = MEMORY[0x277D839F8];
          v30 = MEMORY[0x277D3E350];
          *&v28 = v26;
        }
      }

      else if (v11 == 6)
      {
        v33 = 6;
        v25 = sub_21B20D8D8();
        v29 = MEMORY[0x277D839B0];
        v30 = MEMORY[0x277D3E348];
        LOBYTE(v28) = v25 & 1;
      }

      else if (v11 == 7)
      {
        v33 = 7;
        v12 = sub_21B20D8C8();
        v29 = MEMORY[0x277D837D0];
        v30 = MEMORY[0x277D3E338];
        *&v28 = v12;
        *(&v28 + 1) = v13;
      }

      else
      {
        v33 = 8;
        v29 = MEMORY[0x277CC9318];
        v30 = sub_21B1D05D4();
        sub_21B17DCC8();
        sub_21B20D918();
      }

      (*(v6 + 8))(v9, v5);
      sub_21B17C284(&v28, v31);
      v27 = v31[1];
      *a2 = v31[0];
      *(a2 + 16) = v27;
      *(a2 + 32) = v32;
    }

    else
    {

      v14 = sub_21B20D6E8();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0);
      *v16 = &type metadata for AnyDatasetValue;
      sub_21B20D848();
      sub_21B20D6D8();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1D0580()
{
  result = qword_27CD6FA50;
  if (!qword_27CD6FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA50);
  }

  return result;
}

unint64_t sub_21B1D05D4()
{
  result = qword_27CD6FA60;
  if (!qword_27CD6FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA60);
  }

  return result;
}

uint64_t AnyDatasetValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA68, &qword_21B216558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1D0580();
  sub_21B20DD08();
  sub_21B17FB4C(v2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 0;
    sub_21B20DA58();
LABEL_15:
    (*(v5 + 8))(v8, v4);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 1;
    sub_21B20DA78();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 2;
    sub_21B20DA68();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 3;
    sub_21B20DA88();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 4;
    sub_21B20DA18();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 5;
    sub_21B20DA08();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 6;
    sub_21B20D9F8();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v17) = 7;
    sub_21B20D9E8();
    (*(v5 + 8))(v8, v4);

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  if (swift_dynamicCast())
  {
    v10 = v14;
    v11 = v15;
    v17 = v14;
    v18 = v15;
    v13[15] = 8;
    sub_21B17DBE4();
    sub_21B20DA48();
    (*(v5 + 8))(v8, v4);
    sub_21B17DAF8(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21B20D6A8();

  v17 = 0xD000000000000012;
  v18 = 0x800000021B20FEA0;
  sub_21B17FB4C(v2, &v14);
  __swift_project_boxed_opaque_existential_1(&v14, v16);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v12 = sub_21B20DD38();
  MEMORY[0x21CEEBBB0](v12);

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

double sub_21B1D0BD4@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = MEMORY[0x277D3E350];
  *(a2 + 24) = MEMORY[0x277D839F8];
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

char *sub_21B1D0BF4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D3E348];
  *(a2 + 24) = MEMORY[0x277D839B0];
  *(a2 + 32) = v3;
  *a2 = v2;
  return result;
}

uint64_t *sub_21B1D0C14@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x277D3E370];
  a2[3] = MEMORY[0x277D83B88];
  a2[4] = v3;
  *a2 = v2;
  return result;
}

Swift::String __swiftcall AnyDatasetValue.toString()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = sub_21B1D0C74(v2, v3);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_21B1D0C74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20CDF8();
  if (v11)
  {
    sub_21B17C284(&v10, v12);
    (*(v4 + 16))(v6, v2, a1);
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = sub_21B20C6A8();
      sub_21B17DAF8(v7, *(&v7 + 1));
    }

    else
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_21B20DB08();
      v8 = v10;
    }

    (*(v4 + 8))(v6, a1);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_21B1CFFB8(&v10);
    return 0;
  }

  return v8;
}

uint64_t castAny(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B19DB00(a1, v12);
  sub_21B19DB00(v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_21B17C284(v8, v11);
    return sub_21B17C284(v11, a2);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21B1CFFB8(v8);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    swift_getDynamicType();
    v4 = sub_21B20DD38();
    v6 = v5;
    sub_21B186430();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

unint64_t sub_21B1D0F34()
{
  result = qword_27CD6FA70;
  if (!qword_27CD6FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA70);
  }

  return result;
}

unint64_t sub_21B1D0F98()
{
  result = qword_27CD6FA78;
  if (!qword_27CD6FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyDatasetValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyDatasetValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B1D1150()
{
  result = qword_27CD6FA80;
  if (!qword_27CD6FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA80);
  }

  return result;
}

unint64_t sub_21B1D11A8()
{
  result = qword_27CD6FA88;
  if (!qword_27CD6FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA88);
  }

  return result;
}

unint64_t sub_21B1D1200()
{
  result = qword_27CD6FA90;
  if (!qword_27CD6FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FA90);
  }

  return result;
}

uint64_t sub_21B1D1254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_21B20DB28();

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

unint64_t sub_21B1D151C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_21B19734C(MEMORY[0x277D84F90]);
  }

  v5 = sub_21B1D3EC8(v4, a1, a2);

  v6 = *(v5 + 16);
  if (!v6)
  {

    sub_21B20D6A8();

    MEMORY[0x21CEEBBB0](a1, a2);
    v7 = 0xD00000000000001ALL;
    v9 = 0x800000021B20FEE0;
    sub_21B18722C();
    swift_allocError();
    v11 = 0;
LABEL_8:
    *v10 = v7;
    *(v10 + 8) = v9;
    *(v10 + 16) = v11;
    swift_willThrow();
    return v7;
  }

  if (v6 != 1)
  {
    sub_21B20D6A8();

    MEMORY[0x21CEEBBB0](a1, a2);
    MEMORY[0x21CEEBBB0](0x20646E756F460ALL, 0xE700000000000000);

    v12 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v12);

    v7 = 0xD00000000000001DLL;
    v9 = 0x800000021B20FEC0;
    sub_21B18722C();
    swift_allocError();
    v11 = 1;
    goto LABEL_8;
  }

  v7 = *(v5 + 48);

  return v7;
}

uint64_t Dataset.append(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    result = sub_21B1D280C(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v1 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_21B1D280C((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = (v5 + 24 * v8);
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v4;
  *v1 = v5;
  return result;
}

unint64_t Dataset.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 24 * result);
  v4 = v3[5];
  v5 = v3[6];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t Dataset.appending(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B2110C0;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;

  result = sub_21B1D1DA0(inited);
  *a2 = v7;
  return result;
}

void *Dataset.appending<A>(contentsOf:)@<X0>(void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA98, &qword_21B216888);
  sub_21B1D40D8(&qword_27CD6FAA0, &qword_27CD6FA98, &qword_21B216888, MEMORY[0x277D83990]);
  result = sub_21B20D568();
  *a4 = v6;
  return result;
}

uint64_t sub_21B1D1A20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = (a3 + 48);
    v10 = MEMORY[0x277D84F90];
    v18 = *(a3 + 16);
    v19 = result;
    while (v8 < *(v5 + 16))
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v22 = *(v9 - 2);
      *&v23 = v11;
      *(&v23 + 1) = v12;

      v13 = v7(&v22);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = v22;
        v21 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21B18FD38(0, *(v10 + 16) + 1, 1);
          v10 = v24;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B18FD38((v15 > 1), v16 + 1, 1);
          v10 = v24;
        }

        *(v10 + 16) = v16 + 1;
        v17 = v10 + 24 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v21;
        v7 = v19;
        v5 = a3;
        v6 = v18;
      }

      else
      {
      }

      ++v8;
      v9 += 3;
      if (v6 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_16:

    return v10;
  }

  return result;
}

uint64_t Dataset.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_21B1D3EC8(v6, a1, a2);

  *a3 = v7;
  return result;
}

uint64_t Dataset.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;

  result = sub_21B1D1A20(a1, a2, v8);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Dataset.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA98, &qword_21B216888);
  return sub_21B20D4A8();
}

uint64_t sub_21B1D1DA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21B1D280C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_21B1D1E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_21B1D280C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  v12 = sub_21B1C7598(v35, &v3[24 * v10 + 32], v8 - v10, v6);
  if (v12 < v2)
  {
    goto LABEL_16;
  }

  if (v12)
  {
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, v12);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v18 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_46;
        }

        if (v18 >= ((v6 + 64) >> 6))
        {
          v23 = 0;
          v21 = 0;
          goto LABEL_44;
        }

        v17 = v11[v18];
        ++v15;
        if (v17)
        {
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v15;
  }

  if (v12 != v11)
  {
    v16 = v35[0];
LABEL_14:
    sub_21B1868C8(v16);
    *v1 = v3;
    return;
  }

LABEL_17:
  v2 = *(v3 + 2);
  v11 = v35[1];
  v33 = v35[0];
  v6 = v35[2];
  v15 = v36;
  v17 = v37;
  if (!v37)
  {
    goto LABEL_20;
  }

  v18 = v36;
LABEL_23:
  v19 = (v17 - 1) & v17;
  v20 = (*(v33 + 56) + 24 * (__clz(__rbit64(v17)) | (v18 << 6)));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];

  if (!v22)
  {
LABEL_44:
    sub_21B183364(v21, 0, v23);
    v16 = v33;
    goto LABEL_14;
  }

  v24 = (v6 + 64) >> 6;
  v34 = v18;
  while (1)
  {
    v25 = *(v3 + 3);
    v32 = v25 >> 1;
    if ((v25 >> 1) < v2 + 1)
    {
      v3 = sub_21B1D280C((v25 > 1), v2 + 1, 1, v3);
      v32 = *(v3 + 3) >> 1;
    }

    if (v2 < v32)
    {
      break;
    }

LABEL_25:
    *(v3 + 2) = v2;
    if (!v22)
    {
      goto LABEL_44;
    }
  }

  while (1)
  {

    sub_21B183364(v21, v22, v23);
    v26 = &v3[24 * v2 + 32];
    *v26 = v21;
    v26[1] = v22;
    v26[2] = v23;
    ++v2;
    if (!v19)
    {
      break;
    }

    v27 = v34;
LABEL_36:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = (*(v33 + 56) + 24 * (v29 | (v27 << 6)));
    v21 = *v30;
    v22 = v30[1];
    v23 = v30[2];

    if (v22)
    {
      v31 = v2 < v32;
    }

    else
    {
      v31 = 0;
    }

    if (!v31)
    {
      goto LABEL_25;
    }
  }

  v28 = v34;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v23 = 0;
      v21 = 0;
      *(v3 + 2) = v2;
      goto LABEL_44;
    }

    v19 = v11[v27];
    ++v28;
    if (v19)
    {
      v34 = v27;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_21B1D21C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21B1D2A60(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21B1D22F0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_21B20D7D8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_21B20D7D8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21B1D38F8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21B1D2460(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_21B1D34D4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

PoirotBlocks::Dataset __swiftcall Dataset.appending(contentsOf:)(PoirotBlocks::Dataset contentsOf)
{
  v3 = v1;
  v4 = *contentsOf.rows._rawValue;
  v6 = *v2;

  result.rows._rawValue = sub_21B1D1DA0(v4);
  *v3 = v6;
  return result;
}

Swift::Void __swiftcall Dataset.append(contentsOf:)(PoirotBlocks::Dataset contentsOf)
{

  sub_21B1D1DA0(v1);
}

void *sub_21B1D2674()
{
  v1 = sub_21B1D3998(*v0);

  return v1;
}

void *sub_21B1D26D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE60, &qword_21B212350);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE68, &qword_21B212358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D280C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D292C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAB8, &qword_21B216960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAC0, &qword_21B216968);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
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

void *sub_21B1D2B80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAC8, &qword_21B216970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBC0, &qword_21B2115D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D2CC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2E10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF08, &qword_21B212400);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B1D2F1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAF0, &qword_21B216998);
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

char *sub_21B1D3044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
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

char *sub_21B1D31A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB08, &qword_21B2169A8);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1D32BC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB10, &qword_21B2169B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F970, &qword_21B2162D8) - 8);
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

void *sub_21B1D34D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_21B1D36B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAE0, &qword_21B216988);
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

char *sub_21B1D37D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD8, &qword_21B216980);
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

uint64_t sub_21B1D38F8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21B20D7D8();
LABEL_9:
  result = sub_21B20D6C8();
  *v2 = result;
  return result;
}

void *sub_21B1D3998(uint64_t a1)
{
  v1 = *(a1 + 16);

  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v1)
  {
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 6;
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
        v14 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
        v14[2] = v13;
        v14[3] = 2 * v15;
        v16 = v14 + 4;
        v17 = v3[3] >> 1;
        v5 = &v14[3 * v17 + 4];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (v3[2])
        {
          if (v14 != v3 || v16 >= &v3[3 * v17 + 4])
          {
            memmove(v16, v3 + 4, 24 * v17);
          }

          v3[2] = 0;
        }

        else
        {
        }

        v3 = v14;
        v10 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v10)
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }
      }

      *v5 = v7;
      v5[1] = v8;
      v5[2] = v9;
      v5 += 3;
      v6 += 3;
      --v1;
    }

    while (v1);
  }

  v20 = v3[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v10 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v10)
    {
      goto LABEL_28;
    }

    v3[2] = v22;
  }

  return v3;
}

uint64_t sub_21B1D3B60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B20D7D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21B20D7D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B1D40D8(&qword_27CD6FB20, &qword_27CD6FB18, &qword_21B2169B8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB18, &qword_21B2169B8);
            v9 = sub_21B1BE360(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21B1D4090(0, &qword_27CD6EEE8, 0x277CF1B50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D3D14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B20D7D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21B20D7D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B1D40D8(&qword_27CD6FB00, &qword_27CD6FAF8, &qword_21B2169A0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAF8, &qword_21B2169A0);
            v9 = sub_21B1BE3E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21B1D4090(0, qword_27CD6F6D8, 0x277CF1A80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D3EC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 48;
  v19 = result + 48;
  v20 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v7 + 24 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      return v20;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_20;
    }

    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    v12 = *v8;
    if (v11 == a2 && v10 == a3)
    {
      v11 = a2;
LABEL_13:

      v14 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v20 + 16) + 1, 1);
        v14 = v20;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_21B18FD38((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v14 = v20;
      }

      *(v14 + 16) = v17;
      v20 = v14;
      v18 = (v14 + 24 * v16);
      v18[4] = v11;
      v18[5] = v10;
      v18[6] = v12;
      v5 = v9;
      v7 = v19;
      goto LABEL_2;
    }

    result = sub_21B20DB28();
    ++v5;
    v8 += 3;
    if (result)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21B1D4090(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21B1D40D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t (*sub_21B1D4120(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D7F5C(v6, a2, a3);
  return sub_21B1D9C80;
}

uint64_t (*sub_21B1D41A8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D8008(v6, a2, a3);
  return sub_21B1D4230;
}

uint64_t (*sub_21B1D4234(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B1D80B8(v6, a2, a3);
  return sub_21B1D9C80;
}

void sub_21B1D42BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21B1D4308(uint64_t a1, uint64_t *a2)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE30, &qword_21B212328);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = (v28 - v6);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v2;
  v39 = MEMORY[0x277D84F90];
  sub_21B18FE38(0, v7, 0);
  v8 = v39;
  v9 = a1 + 56;
  result = sub_21B20D648();
  v11 = result;
  v12 = 0;
  v29 = a1 + 64;
  v30 = v7;
  v31 = a1;
  v32 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v37 = v12;
    v38 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v17 = v16[1];
    v18 = v33;
    *v33 = *v16;
    *(v18 + 8) = v17;
    swift_bridgeObjectRetain_n();
    sub_21B20CB48();
    v39 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21B18FE38((v19 > 1), v20 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v20 + 1;
    result = sub_21B1D9B94(v18, v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, &qword_27CD6EE30, &qword_21B212328);
    a1 = v31;
    v9 = v32;
    v13 = 1 << *(v31 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v32 + 8 * v14);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (v29 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_21B17C2EC(v11, v38, 0);
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_21B17C2EC(v11, v38, 0);
    }

LABEL_4:
    v12 = v37 + 1;
    v11 = v13;
    if (v37 + 1 == v30)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B1D4610(uint64_t a1, uint64_t *a2)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = (v28 - v6);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v2;
  v39 = MEMORY[0x277D84F90];
  sub_21B19008C(0, v7, 0);
  v8 = v39;
  v9 = a1 + 56;
  result = sub_21B20D648();
  v11 = result;
  v12 = 0;
  v29 = a1 + 64;
  v30 = v7;
  v31 = a1;
  v32 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v37 = v12;
    v38 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v17 = v16[1];
    v18 = v33;
    *v33 = *v16;
    *(v18 + 8) = v17;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    sub_21B20CB48();
    v39 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21B19008C((v19 > 1), v20 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v20 + 1;
    result = sub_21B1D9B94(v18, v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, &qword_27CD6EE78, &qword_21B212368);
    a1 = v31;
    v9 = v32;
    v13 = 1 << *(v31 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v32 + 8 * v14);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (v29 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_21B17C2EC(v11, v38, 0);
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_21B17C2EC(v11, v38, 0);
    }

LABEL_4:
    v12 = v37 + 1;
    v11 = v13;
    if (v37 + 1 == v30)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_21B1D4928(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(sub_21B20CB98() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(v18, v8);
    if (v3)
    {
      break;
    }

    if (*(&v18[0] + 1))
    {
      v15 = v18[0];
      v16 = v18[1];
      v17 = v18[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B1D2B80(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_21B1D2B80((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[6 * v12];
      v13[3] = v16;
      v13[4] = v17;
      v13[2] = v15;
    }

    else
    {
      sub_21B186488(v18, &qword_27CD6EBB0, &qword_21B2115C8);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

uint64_t sub_21B1D4AD4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_21B1D0C74(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == sub_21B1D0C74(v8, v9) && v7 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_21B20DB28();
  }

  return v12 & 1;
}

uint64_t sub_21B1D4B98(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = sub_21B1D0C74(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (v5 == sub_21B1D0C74(v8, v9) && v7 == v10)
  {

    v13 = 1;
  }

  else
  {
    v12 = sub_21B20DB28();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_21B1D4C74(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_21B1D0C74(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == sub_21B1D0C74(v8, v9) && v7 == v10)
  {

    v13 = 1;
  }

  else
  {
    v12 = sub_21B20DB28();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_21B1D4D4C(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = sub_21B1D0C74(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (v5 == sub_21B1D0C74(v8, v9) && v7 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_21B20DB28();
  }

  return v12 & 1;
}

uint64_t sub_21B1D4E14()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_21B1D0C74(v2, v3);
}

uint64_t sub_21B1D4E54(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_21B1D0C74(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == sub_21B1D0C74(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21B20DB28();
  }

  return v12 & 1;
}

uint64_t sub_21B1D4F40@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v88 = a4;
  v74[1] = a6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB28, &qword_21B2169C0);
  v10 = MEMORY[0x28223BE20](v85, v9);
  v84 = (v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v83 = v74 - v13;
  v82 = sub_21B20CB98();
  v86 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v14);
  v81 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x277D84FA0];
  v16 = *(a5 + 16);

  v17 = 0;
  v18 = 0;
  v19 = a5 + 48;
  v89 = a5 + 48;
  v90 = MEMORY[0x277D84F90];
LABEL_2:
  v20 = (v19 + 24 * v17);
  while (v16 != v17)
  {
    if (v17 >= v16)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_49;
    }

    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v24 = *v20;
    if (v23 == a1 && v22 == a2)
    {
      v23 = a1;
LABEL_13:
      if (__OFADD__(v18++, 1))
      {
        goto LABEL_56;
      }

      swift_bridgeObjectRetain_n();
      sub_21B1D5E30(v24);
      v27 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_21B1D280C(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      v90 = v27;
      if (v29 >= v28 >> 1)
      {
        v90 = sub_21B1D280C((v28 > 1), v29 + 1, 1, v90);
      }

      v30 = v90;
      *(v90 + 16) = v29 + 1;
      v31 = &v30[24 * v29];
      *(v31 + 4) = v23;
      *(v31 + 5) = v22;
      *(v31 + 6) = v24;
      v17 = v21;
      v19 = v89;
      goto LABEL_2;
    }

    ++v17;
    v20 += 3;
    if (sub_21B20DB28())
    {
      goto LABEL_13;
    }
  }

  v94 = v18;
  v32 = v93;
  a2 = 0;
  if (*(sub_21B1D4308(v93, &v94) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB30, &qword_21B2169C8);
    v33 = sub_21B20D808();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v34 = v90;
  v92 = v33;

  sub_21B1D8F7C(v35, 1, &v92);
  v36 = v87;

  v37 = v92;
  v38 = *(v34 + 2);
  if (v38)
  {
    v39 = (v34 + 48);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v42 = *(v39 - 2);

      sub_21B1D94F0(v43, v42, v41, v40, &v92, v36);

      v39 += 3;
      --v38;
    }

    while (v38);
    v37 = v92;
  }

  v44 = *(v37 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v74[0] = v32;
    v91 = MEMORY[0x277D84F90];
    sub_21B18FDF4(0, v44, 0);
    v45 = v91;
    v46 = v37 + 64;
    v47 = sub_21B20D648();
    v48 = 0;
    v49 = *(v37 + 36);
    v79 = v37;
    v80 = v86 + 32;
    v75 = v37 + 72;
    v76 = v44;
    v77 = v49;
    v78 = v37 + 64;
    while ((v47 & 0x8000000000000000) == 0 && v47 < 1 << *(v37 + 32))
    {
      if ((*(v46 + 8 * (v47 >> 6)) & (1 << v47)) == 0)
      {
        goto LABEL_51;
      }

      if (v49 != *(v37 + 36))
      {
        goto LABEL_52;
      }

      v89 = 1 << v47;
      v90 = v47 >> 6;
      v87 = v48;
      v88 = a2;
      a2 = v85;
      v53 = v85[12];
      v54 = *(v37 + 56);
      v55 = (*(v37 + 48) + 16 * v47);
      v56 = *v55;
      v57 = v55[1];
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
      v59 = v45;
      v60 = *(v58 - 8);
      v61 = v83;
      (*(v60 + 16))(&v83[v53], v54 + *(v60 + 72) * v47, v58);
      v62 = v84;
      *v84 = v56;
      *(v62 + 8) = v57;
      (*(v60 + 32))(v62 + a2[12], &v61[v53], v58);
      v45 = v59;

      v63 = v81;
      sub_21B20CB38();
      sub_21B186488(v62, &qword_27CD6FB28, &qword_21B2169C0);
      v91 = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_21B18FDF4((v64 > 1), v65 + 1, 1);
        v45 = v91;
      }

      *(v45 + 16) = v65 + 1;
      (*(v86 + 32))(v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v65, v63, v82);
      v37 = v79;
      v50 = 1 << *(v79 + 32);
      if (v47 >= v50)
      {
        goto LABEL_53;
      }

      v46 = v78;
      v66 = *(v78 + 8 * v90);
      if ((v66 & v89) == 0)
      {
        goto LABEL_54;
      }

      LODWORD(v49) = v77;
      if (v77 != *(v79 + 36))
      {
        goto LABEL_55;
      }

      v67 = v66 & (-2 << (v47 & 0x3F));
      if (v67)
      {
        v50 = __clz(__rbit64(v67)) | v47 & 0x7FFFFFFFFFFFFFC0;
        v51 = v87;
        a2 = v88;
        v52 = v76;
      }

      else
      {
        v68 = v90 << 6;
        v69 = (v90 + 1);
        v52 = v76;
        v70 = (v75 + 8 * v90);
        a2 = v88;
        while (v69 < (v50 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            sub_21B17C2EC(v47, v77, 0);
            v50 = __clz(__rbit64(v71)) + v68;
            goto LABEL_45;
          }
        }

        sub_21B17C2EC(v47, v77, 0);
LABEL_45:
        v51 = v87;
      }

      v48 = v51 + 1;
      v47 = v50;
      if (v48 == v52)
      {
        goto LABEL_46;
      }
    }

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
LABEL_56:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_57;
  }

LABEL_46:
  v91 = v45;

  sub_21B1D66F8(&v91);
  if (!a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
    sub_21B1D97C0();
    sub_21B20CAD8();
  }

LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_21B1D56B8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v88 = a4;
  v74[1] = a6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB70, &qword_21B216A00);
  v10 = MEMORY[0x28223BE20](v85, v9);
  v84 = (v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v83 = v74 - v13;
  v82 = sub_21B20CB98();
  v86 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v14);
  v81 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x277D84FA0];
  v16 = *(a5 + 16);

  v17 = 0;
  v18 = 0;
  v19 = a5 + 48;
  v89 = a5 + 48;
  v90 = MEMORY[0x277D84F90];
LABEL_2:
  v20 = (v19 + 24 * v17);
  while (v16 != v17)
  {
    if (v17 >= v16)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_49;
    }

    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v24 = *v20;
    if (v23 == a1 && v22 == a2)
    {
      v23 = a1;
LABEL_13:
      if (__OFADD__(v18++, 1))
      {
        goto LABEL_56;
      }

      swift_bridgeObjectRetain_n();
      sub_21B1D5E30(v24);
      v27 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_21B1D280C(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      v90 = v27;
      if (v29 >= v28 >> 1)
      {
        v90 = sub_21B1D280C((v28 > 1), v29 + 1, 1, v90);
      }

      v30 = v90;
      *(v90 + 16) = v29 + 1;
      v31 = &v30[24 * v29];
      *(v31 + 4) = v23;
      *(v31 + 5) = v22;
      *(v31 + 6) = v24;
      v17 = v21;
      v19 = v89;
      goto LABEL_2;
    }

    ++v17;
    v20 += 3;
    if (sub_21B20DB28())
    {
      goto LABEL_13;
    }
  }

  v94 = v18;
  v32 = v93;
  a2 = 0;
  if (*(sub_21B1D4610(v93, &v94) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB78, &qword_21B216A08);
    v33 = sub_21B20D808();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v34 = v90;
  v92 = v33;

  sub_21B1DE7C0(v35, 1, &v92);
  v36 = v87;

  v37 = v92;
  v38 = *(v34 + 2);
  if (v38)
  {
    v39 = (v34 + 48);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v42 = *(v39 - 2);

      sub_21B1D98C4(v43, v42, v41, v40, &v92, v36);

      v39 += 3;
      --v38;
    }

    while (v38);
    v37 = v92;
  }

  v44 = *(v37 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v74[0] = v32;
    v91 = MEMORY[0x277D84F90];
    sub_21B18FDF4(0, v44, 0);
    v45 = v91;
    v46 = v37 + 64;
    v47 = sub_21B20D648();
    v48 = 0;
    v49 = *(v37 + 36);
    v79 = v37;
    v80 = v86 + 32;
    v75 = v37 + 72;
    v76 = v44;
    v77 = v49;
    v78 = v37 + 64;
    while ((v47 & 0x8000000000000000) == 0 && v47 < 1 << *(v37 + 32))
    {
      if ((*(v46 + 8 * (v47 >> 6)) & (1 << v47)) == 0)
      {
        goto LABEL_51;
      }

      if (v49 != *(v37 + 36))
      {
        goto LABEL_52;
      }

      v89 = 1 << v47;
      v90 = v47 >> 6;
      v87 = v48;
      v88 = a2;
      a2 = v85;
      v53 = v85[12];
      v54 = *(v37 + 56);
      v55 = (*(v37 + 48) + 16 * v47);
      v56 = *v55;
      v57 = v55[1];
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
      v59 = v45;
      v60 = *(v58 - 8);
      v61 = v83;
      (*(v60 + 16))(&v83[v53], v54 + *(v60 + 72) * v47, v58);
      v62 = v84;
      *v84 = v56;
      *(v62 + 8) = v57;
      (*(v60 + 32))(v62 + a2[12], &v61[v53], v58);
      v45 = v59;

      v63 = v81;
      sub_21B20CB38();
      sub_21B186488(v62, &qword_27CD6FB70, &qword_21B216A00);
      v91 = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_21B18FDF4((v64 > 1), v65 + 1, 1);
        v45 = v91;
      }

      *(v45 + 16) = v65 + 1;
      (*(v86 + 32))(v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v65, v63, v82);
      v37 = v79;
      v50 = 1 << *(v79 + 32);
      if (v47 >= v50)
      {
        goto LABEL_53;
      }

      v46 = v78;
      v66 = *(v78 + 8 * v90);
      if ((v66 & v89) == 0)
      {
        goto LABEL_54;
      }

      LODWORD(v49) = v77;
      if (v77 != *(v79 + 36))
      {
        goto LABEL_55;
      }

      v67 = v66 & (-2 << (v47 & 0x3F));
      if (v67)
      {
        v50 = __clz(__rbit64(v67)) | v47 & 0x7FFFFFFFFFFFFFC0;
        v51 = v87;
        a2 = v88;
        v52 = v76;
      }

      else
      {
        v68 = v90 << 6;
        v69 = (v90 + 1);
        v52 = v76;
        v70 = (v75 + 8 * v90);
        a2 = v88;
        while (v69 < (v50 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            sub_21B17C2EC(v47, v77, 0);
            v50 = __clz(__rbit64(v71)) + v68;
            goto LABEL_45;
          }
        }

        sub_21B17C2EC(v47, v77, 0);
LABEL_45:
        v51 = v87;
      }

      v48 = v51 + 1;
      v47 = v50;
      if (v48 == v52)
      {
        goto LABEL_46;
      }
    }

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
LABEL_56:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_57;
  }

LABEL_46:
  v91 = v45;

  sub_21B1D66F8(&v91);
  if (!a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
    sub_21B1D97C0();
    sub_21B20CAD8();
  }

LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_21B1D5E30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21B1B9C24(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t Dataset.append(_:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20CAA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B20CAB8();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = sub_21B1C5AB4(sub_21B1D61D8, v15);
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v14 = v12;
  (*(v8 + 8))(v11, v7);
  return sub_21B1D1DA0(v14);
}

void *sub_21B1D6080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X4>, void *x8_0@<X8>)
{
  v12 = sub_21B20CAE8();
  v18[2] = a1;
  v13 = sub_21B1D4928(sub_21B1D98A8, v18, v12);

  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    if (v13[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
      v15 = sub_21B20D808();
    }

    else
    {
      v15 = MEMORY[0x277D84F98];
    }

    v19 = v15;

    sub_21B1854A0(v16, 1, &v19);

    v17 = v19;

    return DatasetRow.init(name:_:)(a2, a3, v17, x8_0);
  }

  return result;
}

uint64_t sub_21B1D61FC@<X0>(uint64_t a1@<X8>)
{
  sub_21B20CB88();
  sub_21B20CA98();

  if (v16)
  {
    sub_21B17C304(&v15, v17);
    sub_21B19DB00(v17, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    if (swift_dynamicCast())
    {
      sub_21B17C284(v12, &v15);
      *a1 = sub_21B20CB88();
      *(a1 + 8) = v2;
      v3 = v16;
      v4 = __swift_project_boxed_opaque_existential_1(&v15, v16);
      *(a1 + 40) = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 16));
      (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 = &v15;
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_21B186488(v12, &qword_27CD6FA40, &qword_21B216D60);
      sub_21B20CB88();
      sub_21B20CA98();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB68, &qword_21B2169F8);
      v8 = sub_21B20D358();
      v10 = v9;
      sub_21B186430();
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = v10;
      *(v11 + 16) = 4;
      swift_willThrow();
      v6 = v17;
    }

    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    result = sub_21B186488(&v15, &qword_27CD6FB68, &qword_21B2169F8);
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t Dataset.appendReplacing(_:withName:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = sub_21B20CAA8();
  v42 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7, v8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(*v3 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 48;
    v34 = v12 - 1;
    v15 = MEMORY[0x277D84F90];
    v36 = v7;
    v37 = v4;
    v35 = v11 + 48;
    do
    {
      v38 = v15;
      v16 = (v14 + 24 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v16 - 2);
        v18 = *(v16 - 1);
        v20 = v19 == a2 && v18 == a3;
        if (!v20)
        {
          v21 = *v16;
          result = sub_21B20DB28();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v17;
        v16 += 3;
        if (v12 == v17)
        {
          v7 = v36;
          v4 = v37;
          v15 = v38;
          goto LABEL_20;
        }
      }

      v15 = v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = v15;
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v15 + 16) + 1, 1);
        v15 = v43;
      }

      v14 = v35;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v38 = v23 + 1;
        v33 = v23;
        result = sub_21B18FD38((v22 > 1), v23 + 1, 1);
        v24 = v38;
        v23 = v33;
        v14 = v35;
        v15 = v43;
      }

      v13 = v17 + 1;
      *(v15 + 16) = v24;
      v25 = (v15 + 24 * v23);
      v25[4] = v19;
      v25[5] = v18;
      v25[6] = v21;
      v20 = v34 == v17;
      v7 = v36;
      v4 = v37;
    }

    while (!v20);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_20:

  *v4 = v15;
  v26 = v39;
  v27 = v40;
  v28 = sub_21B20CAB8();
  MEMORY[0x28223BE20](v28, v29);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = v26;
  v30 = v41;
  v31 = sub_21B1C5AB4(sub_21B1D9C68, (&v33 - 6));
  if (v30)
  {
    return (*(v42 + 8))(v27, v7);
  }

  v32 = v31;
  (*(v42 + 8))(v27, v7);
  return sub_21B1D1DA0(v32);
}

uint64_t sub_21B1D66F8(uint64_t *a1)
{
  v2 = *(sub_21B20CB98() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21B1858D0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21B1D67A0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21B1D67A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B20CB98();
        v6 = sub_21B20D488();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B20CB98() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21B1D6BD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B1D68CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B1D68CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B20CB98();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v51 = &v37 - v14;
  result = MEMORY[0x28223BE20](v13, v15);
  v50 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v48 = *(v17 + 16);
    v49 = v17 + 16;
    v20 = *(v17 + 72);
    v21 = (v17 + 8);
    v45 = (v17 + 32);
    v46 = v19;
    v22 = v19 + v20 * (a3 - 1);
    v44 = -v20;
    v23 = a1 - a3;
    v38 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      v48(v50, v24, v8);
      v27(v51, v26, v8);
      v28 = sub_21B20CB88();
      v30 = v29;
      if (v28 == sub_21B20CB88() && v30 == v31)
      {

        v25 = *v21;
        (*v21)(v51, v8);
        result = (v25)(v50, v8);
LABEL_5:
        a3 = v43 + 1;
        v22 = v42 + v38;
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_6;
      }

      v32 = sub_21B20DB28();

      v33 = *v21;
      (*v21)(v51, v8);
      result = (v33)(v50, v8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v26, v35, v8);
      v26 += v44;
      v24 += v44;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1D6BD8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v142 = a1;
  v9 = sub_21B20CB98();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v146 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v157 = &v136 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v162 = &v136 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v161 = &v136 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v154 = &v136 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v153 = &v136 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v141 = &v136 - v30;
  result = MEMORY[0x28223BE20](v29, v31);
  v140 = &v136 - v34;
  v35 = a3[1];
  v151 = v33;
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_103:
    v39 = *v142;
    if (!*v142)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v151;
    if (result)
    {
LABEL_105:
      v163 = v37;
      v130 = *(v37 + 16);
      if (v130 >= 2)
      {
        while (1)
        {
          v131 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v132 = a3;
          v133 = *(v37 + 16 * v130);
          a3 = v37;
          v134 = *(v37 + 16 * (v130 - 1) + 32);
          v37 = *(v37 + 16 * (v130 - 1) + 40);
          sub_21B1D7794(v131 + *(v5 + 72) * v133, (v131 + *(v5 + 72) * v134), (v131 + *(v5 + 72) * v37), v39);
          if (v6)
          {
          }

          if (v37 < v133)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_21B185388(a3);
          }

          if (v130 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v135 = &a3[2 * v130];
          *v135 = v133;
          v135[1] = v37;
          v163 = a3;
          result = sub_21B1852FC(v130 - 1);
          v37 = v163;
          v130 = v163[2];
          a3 = v132;
          if (v130 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_21B185388(v37);
    v37 = result;
    goto LABEL_105;
  }

  v137 = a4;
  v36 = 0;
  v159 = v33 + 16;
  v160 = (v33 + 8);
  v158 = (v33 + 32);
  v37 = MEMORY[0x277D84F90];
  v143 = a3;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v145 = v36;
    if (v36 + 1 < v35)
    {
      v149 = v35;
      v138 = v37;
      v40 = *a3;
      v41 = *(v151 + 72);
      v5 = v36 + 1;
      v42 = v40 + v41 * v39;
      v43 = *(v151 + 16);
      v43(v140, v42, v9);
      v152 = v41;
      v148 = v43;
      v43(v141, v40 + v41 * v38, v9);
      v39 = sub_21B20CB88();
      v45 = v44;
      v46 = sub_21B20CB88();
      v139 = v6;
      if (v39 == v46 && v45 == v47)
      {
        LODWORD(v150) = 0;
      }

      else
      {
        LODWORD(v150) = sub_21B20DB28();
      }

      v48 = *v160;
      (*v160)(v141, v9);
      v147 = v48;
      result = (v48)(v140, v9);
      v49 = (v145 + 2);
      v50 = v152 * (v145 + 2);
      v51 = v40 + v50;
      v52 = v152 * v5;
      v53 = v40 + v152 * v5;
      do
      {
        a3 = v49;
        v56 = v5;
        v6 = v52;
        v37 = v50;
        if (v49 >= v149)
        {
          break;
        }

        v155 = v5;
        v156 = v49;
        v57 = v148;
        (v148)(v153, v51, v9);
        v57(v154, v53, v9);
        v58 = sub_21B20CB88();
        v60 = v59;
        if (v58 == sub_21B20CB88() && v60 == v61)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_21B20DB28();
        }

        a3 = v156;

        v39 = v147;
        v147(v154, v9);
        result = (v39)(v153, v9);
        v55 = v150 ^ v54;
        v49 = (a3 + 1);
        v51 += v152;
        v53 += v152;
        v56 = v155;
        v5 = v155 + 1;
        v52 = v6 + v152;
        v50 = v37 + v152;
      }

      while ((v55 & 1) == 0);
      if (v150)
      {
        v38 = v145;
        if (a3 < v145)
        {
          goto LABEL_132;
        }

        if (v145 < a3)
        {
          v62 = v145 * v152;
          v63 = v145;
          do
          {
            if (v63 != v56)
            {
              v65 = *v143;
              if (!*v143)
              {
                goto LABEL_138;
              }

              v5 = v56;
              v156 = *v158;
              v156(v146, (v65 + v62), v9);
              if (v62 < v6 || v65 + v62 >= (v65 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v156)(v65 + v6, v146, v9);
              v38 = v145;
              v56 = v5;
            }

            ++v63;
            v6 -= v152;
            v37 -= v152;
            v62 += v152;
          }

          while (v63 < v56--);
        }

        v39 = a3;
        v6 = v139;
        a3 = v143;
        v37 = v138;
      }

      else
      {
        v39 = a3;
        v6 = v139;
        a3 = v143;
        v37 = v138;
        v38 = v145;
      }
    }

    v66 = a3[1];
    if (v39 < v66)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_131;
      }

      if (v39 - v38 < v137)
      {
        break;
      }
    }

LABEL_52:
    if (v39 < v38)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v37 + 16) + 1, 1, v37);
      v37 = result;
    }

    v84 = *(v37 + 16);
    v83 = *(v37 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      result = sub_21B18539C((v83 > 1), v84 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 16) = v85;
    v86 = v37 + 16 * v84;
    *(v86 + 32) = v38;
    *(v86 + 40) = v39;
    v87 = *v142;
    if (!*v142)
    {
      goto LABEL_140;
    }

    v152 = v39;
    if (v84)
    {
      while (1)
      {
        v39 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v88 = *(v37 + 32);
          v89 = *(v37 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_72:
          if (v91)
          {
            goto LABEL_119;
          }

          v104 = (v37 + 16 * v85);
          v106 = *v104;
          v105 = v104[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_122;
          }

          v110 = (v37 + 32 + 16 * v39);
          v112 = *v110;
          v111 = v110[1];
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_126;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v39 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v114 = (v37 + 16 * v85);
        v116 = *v114;
        v115 = v114[1];
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_86:
        if (v109)
        {
          goto LABEL_121;
        }

        v117 = v37 + 16 * v39;
        v119 = *(v117 + 32);
        v118 = *(v117 + 40);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_93:
        v125 = v39 - 1;
        if (v39 - 1 >= v85)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_134;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v37;
        v127 = *(v37 + 32 + 16 * v125);
        v128 = *(v37 + 32 + 16 * v39);
        v37 = *(v37 + 32 + 16 * v39 + 8);
        sub_21B1D7794(v126 + *(v151 + 72) * v127, (v126 + *(v151 + 72) * v128), (v126 + *(v151 + 72) * v37), v87);
        if (v6)
        {
        }

        if (v37 < v127)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_21B185388(a3);
        }

        if (v125 >= a3[2])
        {
          goto LABEL_116;
        }

        v129 = &a3[2 * v125];
        v129[4] = v127;
        v129[5] = v37;
        v163 = a3;
        result = sub_21B1852FC(v39);
        v37 = v163;
        v85 = v163[2];
        a3 = v5;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = v37 + 32 + 16 * v85;
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_117;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_118;
      }

      v99 = (v37 + 16 * v85);
      v101 = *v99;
      v100 = v99[1];
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_120;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_123;
      }

      if (v103 >= v95)
      {
        v121 = (v37 + 32 + 16 * v39);
        v123 = *v121;
        v122 = v121[1];
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_127;
        }

        if (v90 < v124)
        {
          v39 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v35 = a3[1];
    v36 = v152;
    if (v152 >= v35)
    {
      goto LABEL_103;
    }
  }

  v67 = (v38 + v137);
  if (__OFADD__(v38, v137))
  {
    goto LABEL_133;
  }

  if (v67 >= v66)
  {
    v67 = a3[1];
  }

  if (v67 < v38)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v39 == v67)
  {
    goto LABEL_52;
  }

  v138 = v37;
  v139 = v6;
  v68 = *a3;
  v69 = *(v151 + 72);
  v70 = *(v151 + 16);
  v71 = *a3 + v69 * (v39 - 1);
  v155 = -v69;
  v156 = v68;
  v72 = v38 - v39;
  v144 = v69;
  v73 = v68 + v39 * v69;
  v147 = v67;
LABEL_43:
  v152 = v39;
  v148 = v73;
  v149 = v72;
  v150 = v71;
  v75 = v71;
  while (1)
  {
    v70(v161, v73, v9);
    (v70)(v162, v75);
    v5 = sub_21B20CB88();
    v77 = v76;
    if (v5 == sub_21B20CB88() && v77 == v78)
    {

      v74 = *v160;
      (*v160)(v162, v9);
      v74(v161, v9);
LABEL_42:
      v39 = v152 + 1;
      v71 = v150 + v144;
      v72 = v149 - 1;
      v73 = &v148[v144];
      if ((v152 + 1) == v147)
      {
        v39 = v147;
        v6 = v139;
        a3 = v143;
        v37 = v138;
        v38 = v145;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_21B20DB28();

    v79 = *v160;
    (*v160)(v162, v9);
    result = (v79)(v161, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v156)
    {
      break;
    }

    v80 = v157;
    v5 = v158;
    v81 = *v158;
    (*v158)(v157, v73, v9);
    swift_arrayInitWithTakeFrontToBack();
    v81(v75, v80, v9);
    v75 += v155;
    v73 += v155;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_21B1D7794(unint64_t a1, char *a2, char *a3, char *a4)
{
  v75 = sub_21B20CB98();
  v8 = *(v75 - 8);
  v10 = MEMORY[0x28223BE20](v75, v9);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v71 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v74 = &v63 - v17;
  result = MEMORY[0x28223BE20](v16, v18);
  v73 = &v63 - v20;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_70;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_71;
  }

  v24 = &a2[-a1] / v22;
  v78 = a1;
  v77 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || &a2[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = &a4[v26];
    if (v26 < 1)
    {
      v48 = &a4[v26];
    }

    else
    {
      v67 = a4;
      v68 = (v8 + 16);
      v66 = (v8 + 8);
      v46 = -v22;
      v47 = &a4[v26];
      v48 = v45;
      v69 = v46;
      while (2)
      {
        while (1)
        {
          v64 = v48;
          v49 = &a2[v46];
          v73 = &a2[v46];
          v70 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v78 = a2;
              v76 = v64;
              goto LABEL_68;
            }

            v51 = a3;
            v65 = v48;
            v52 = *v68;
            v74 = (v47 + v46);
            v53 = v75;
            (v52)(v71);
            (v52)(v72, v49, v53);
            v54 = sub_21B20CB88();
            v56 = v55;
            if (v54 == sub_21B20CB88() && v56 == v57)
            {
              v58 = 0;
            }

            else
            {
              v58 = sub_21B20DB28();
            }

            v46 = v69;
            a3 = v69 + v51;
            v59 = *v66;
            v60 = v75;
            (*v66)(v72, v75);
            v59(v71, v60);
            if (v58)
            {
              break;
            }

            v61 = v74;
            v48 = v74;
            if (v51 < v47 || a3 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
              v49 = v73;
            }

            else
            {
              v49 = v73;
              if (v51 != v47)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v47 = v48;
            v50 = v61 > v67;
            a2 = v70;
            if (!v50)
            {
              goto LABEL_66;
            }
          }

          if (v51 < v70 || a3 >= v70)
          {
            break;
          }

          a2 = v73;
          v62 = v67;
          v48 = v65;
          if (v51 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v47 <= v62)
          {
            goto LABEL_66;
          }
        }

        a2 = v73;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v65;
        if (v47 > v67)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v78 = a2;
    v76 = v48;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = &a4[v25];
    v76 = &a4[v25];
    if (v25 >= 1 && a2 < a3)
    {
      v28 = *(v8 + 16);
      v70 = v22;
      v71 = (v8 + 16);
      v68 = (v8 + 8);
      v69 = v28;
      do
      {
        v29 = a3;
        v30 = a2;
        v31 = a2;
        v32 = v75;
        v33 = v69;
        v69(v73, v31, v75);
        v33(v74, a4, v32);
        v34 = sub_21B20CB88();
        v36 = v35;
        if (v34 == sub_21B20CB88() && v36 == v37)
        {

          v38 = *v68;
          v39 = v75;
          (*v68)(v74, v75);
          v38(v73, v39);
        }

        else
        {
          v40 = sub_21B20DB28();

          v41 = *v68;
          v42 = v75;
          (*v68)(v74, v75);
          v41(v73, v42);
          if (v40)
          {
            a2 = &v70[v30];
            a3 = v29;
            if (a1 < v30 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v44 = v70;
            goto LABEL_37;
          }
        }

        v43 = a4;
        v44 = v70;
        a4 = &v70[a4];
        a2 = v30;
        a3 = v29;
        if (a1 < v43 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v43)
        {
          swift_arrayInitWithTakeBackToFront();
          v77 = a4;
          goto LABEL_37;
        }

        v77 = a4;
LABEL_37:
        a1 += v44;
        v78 = a1;
      }

      while (a4 < v72 && a2 < a3);
    }
  }

LABEL_68:
  sub_21B1D7E74(&v78, &v77, &v76, MEMORY[0x277CE1950]);
  return 1;
}

uint64_t sub_21B1D7E74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*sub_21B1D7F5C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_21B1D8F20(v7);
  v7[9] = sub_21B1D81C4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D9C84;
}

uint64_t (*sub_21B1D8008(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_21B1D8F48(v7);
  v7[9] = sub_21B1D8694(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D80B4;
}

uint64_t (*sub_21B1D80B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_21B1D8F20(v7);
  v7[9] = sub_21B1D89B8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21B1D9C84;
}

void sub_21B1D8164(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21B1D81C4(void *a1, uint64_t a2, uint64_t a3, char a4))(void **a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for DatasetColumnDescription(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB58, &qword_21B2169E8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_21B1867B4(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D848C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B20398C();
      goto LABEL_16;
    }

    sub_21B2010D8(v25, a4 & 1);
    v29 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void sub_21B1D848C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = (*(*a1 + 4) + 48);
  v5 = *(*a1 + 10);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_21B18BFF8(v5, v6, &qword_27CD6FB58, &qword_21B2169E8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_21B1867B4(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_21B1867B4(v13, v14);
        sub_21B204FFC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_21B18BFF8(v5, v17, &qword_27CD6FB58, &qword_21B2169E8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_21B1867B4(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_21B1867B4(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_21B186488(v9, &qword_27CD6FB58, &qword_21B2169E8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_21B1D9854(*(v20 + 48) + 16 * v19);
    sub_21B1BADD8(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_21B186488(v23, &qword_27CD6FB58, &qword_21B2169E8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_21B1D8694(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB50, &qword_21B2169E0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        (*(v14 + 32))(v19, *(*v5 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D897C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B203BBC();
      goto LABEL_16;
    }

    sub_21B201414(v25, a4 & 1);
    v29 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void (*sub_21B1D89B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB60, &qword_21B2169F0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_21B1B9778(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        (*(v14 + 32))(v19, *(*v5 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_21B1D8CA0;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_21B204AF4();
      goto LABEL_16;
    }

    sub_21B202FA8(v25, a4 & 1);
    v29 = sub_21B1B9778(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

void sub_21B1D8CDC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(*a1 + 24);
  v12 = (*(*a1 + 32) + 48);
  v13 = *(*a1 + 80);
  if (a2)
  {
    v14 = *(v10 + 8);
    sub_21B18BFF8(v13, v14, a3, a4);
    v15 = (*v12)(v14, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 8);
    if (v15 != 1)
    {
      v18 = *(v10 + 2);
      v19 = *(*(v10 + 4) + 32);
      v19(*(v10 + 6), v17, *(v10 + 3));
      v20 = *v18;
      v21 = *(v10 + 11);
      v22 = *(v10 + 6);
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v23 = *(v10 + 5);
        v24 = *(v10 + 1);
        v36 = *v10;
        v19(v23, v22, *(v10 + 3));
        a5(v21, v36, v24, v23, v20);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = *(v10 + 9);
    sub_21B18BFF8(v13, v25, a3, a4);
    v26 = (*v12)(v25, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 9);
    if (v26 != 1)
    {
      v29 = *(v10 + 2);
      v19 = *(*(v10 + 4) + 32);
      v19(*(v10 + 7), v17, *(v10 + 3));
      v20 = *v29;
      v21 = *(v10 + 11);
      v22 = *(v10 + 7);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v19(*(v20 + 56) + *(*(v10 + 4) + 72) * v21, v22, *(v10 + 3));
      goto LABEL_10;
    }
  }

  sub_21B186488(v17, a3, a4);
  if (v16)
  {
    v27 = *(v10 + 11);
    v28 = **(v10 + 2);
    sub_21B1D9854(*(v28 + 48) + 16 * v27);
    a6(v27, v28);
  }

LABEL_10:
  v30 = *(v10 + 9);
  v31 = *(v10 + 10);
  v33 = *(v10 + 7);
  v32 = *(v10 + 8);
  v35 = *(v10 + 5);
  v34 = *(v10 + 6);
  sub_21B186488(v31, a3, a4);
  free(v31);
  free(v30);
  free(v32);
  free(v33);
  free(v34);
  free(v35);

  free(v10);
}

uint64_t (*sub_21B1D8F20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B1D9C64;
}

uint64_t (*sub_21B1D8F48(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B1D8F70;
}

void sub_21B1D8F7C(uint64_t a1, char a2, void *a3)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v7);
  v60 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE30, &qword_21B212328);
  v58 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v52 - v12);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v58 + 80);
  v57 = a1;
  v16 = (v59 + 32);
  v54 = a1 + ((v15 + 32) & ~v15);
  sub_21B18BFF8(v54, v13, &qword_27CD6EE30, &qword_21B212328);
  v17 = v13[1];
  v64 = *v13;
  v18 = v64;
  v65 = v17;
  v19 = *v16;
  v55 = v14;
  v53 = v19;
  v19(v60, v13 + v14, v61);
  v20 = *a3;
  v22 = sub_21B1B9778(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B203BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_21B201414(v25, a2 & 1);
  v27 = sub_21B1B9778(v18, v17);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v17;
      v53((v31[7] + *(v59 + 72) * v22), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_21B18BFF8(v54 + *(v58 + 72) * v36, v13, &qword_27CD6EE30, &qword_21B212328);
          v37 = v13[1];
          v64 = *v13;
          v38 = v64;
          v65 = v37;
          v39 = *v16;
          (*v16)(v60, v13 + v55, v61);
          v40 = *a3;
          v41 = sub_21B1B9778(v38, v37);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_21B201414(v45, 1);
            v41 = sub_21B1B9778(v38, v37);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v38;
          v49[1] = v37;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1D94F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *__return_ptr, _OWORD *))
{
  v38 = a5;
  v7 = a1;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v32 = result;
  v33 = a4;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
    }

    v11 = *(v8 + 8 * v19);
    ++v14;
    if (v11)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v21 = (*(v7 + 48) + ((v19 << 10) | (16 * v20)));
        v23 = *v21;
        v22 = v21[1];
        v24 = *(a4 + 16);

        if (v24 && (v25 = sub_21B1B9778(v23, v22), (v26 & 1) != 0))
        {
          sub_21B17FB4C(*(a4 + 56) + 40 * v25, v35);
          sub_21B17C284(v35, v36);
          v27 = sub_21B1D41A8(v34, v23, v22);
          v29 = v28;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
          if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
          {
            a6(v35, v36);
            sub_21B20CB68();
            sub_21B1D9824(v35);
          }

          (v27)(v34, 0);
          __swift_destroy_boxed_opaque_existential_1(v36);

          v14 = v19;
          v7 = v32;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = sub_21B1D41A8(v35, v23, v22);
          v17 = v16;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
          if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
          {
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            sub_21B20CB78();
            sub_21B186488(v36, &qword_27CD6FB48, &qword_21B2169D8);
          }

          (v15)(v35, 0);

          v14 = v19;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v19 = v14;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B1D97C0()
{
  result = qword_27CD6FB40;
  if (!qword_27CD6FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FB38, &qword_21B2169D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB40);
  }

  return result;
}

uint64_t sub_21B1D98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *__return_ptr, _OWORD *))
{
  v38 = a5;
  v7 = a1;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v32 = result;
  v33 = a4;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
    }

    v11 = *(v8 + 8 * v19);
    ++v14;
    if (v11)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v21 = (*(v7 + 48) + ((v19 << 10) | (16 * v20)));
        v23 = *v21;
        v22 = v21[1];
        v24 = *(a4 + 16);

        if (v24 && (v25 = sub_21B1B9778(v23, v22), (v26 & 1) != 0))
        {
          sub_21B17FB4C(*(a4 + 56) + 40 * v25, v35);
          sub_21B17C284(v35, v36);
          v27 = sub_21B1D4234(v34, v23, v22);
          v29 = v28;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
          if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
          {
            a6(v35, v36);
            sub_21B20CB68();
            __swift_destroy_boxed_opaque_existential_1(v35);
          }

          (v27)(v34, 0);
          __swift_destroy_boxed_opaque_existential_1(v36);

          v14 = v19;
          v7 = v32;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = sub_21B1D4234(v35, v23, v22);
          v17 = v16;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
          if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
          {
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            sub_21B20CB78();
            sub_21B186488(v36, &qword_27CD6FA40, &qword_21B216D60);
          }

          (v15)(v35, 0);

          v14 = v19;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v19 = v14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D9B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21B1D9C10()
{
  result = qword_27CD6FB80;
  if (!qword_27CD6FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB80);
  }

  return result;
}

uint64_t sub_21B1D9C88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = a3 + 32;
    while (1)
    {
      sub_21B17FB4C(v8, &v26);
      v10 = v27;
      v9 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      if ((*(*(v9 + 8) + 8))(v10) == v7 && v11 == a2)
      {
        break;
      }

      v13 = sub_21B20DB28();

      if (v13)
      {
        goto LABEL_11;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v26);
      v8 += 40;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_21B17C284(&v26, &v29);
    sub_21B17C284(&v29, &v26);
    sub_21B17FB4C(&v26, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB98, &qword_21B216AE8);
    if (swift_dynamicCast())
    {
      sub_21B17C284(v21, v23);
      v18 = v24;
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v19 + 8))(&v29, v18, v19);
      v20 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      v17 = v20;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      result = sub_21B186488(v21, &qword_27CD6FBA0, &qword_21B216AF0);
      v17 = 0uLL;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  return result;
}

uint64_t sub_21B1D9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1D9C88(a1, a2, a3, &v12);
  if (!v3)
  {
    if (v14)
    {
      if (v13)
      {
        v10[0] = v12;
        v10[1] = v13;

        sub_21B1DA02C(v10, a3, &v9, &v11);

        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21B1D9FD8();
      swift_allocError();
      *v8 = a1;
      v8[1] = a2;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_21B1D9FD8()
{
  result = qword_27CD6FB88;
  if (!qword_27CD6FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB88);
  }

  return result;
}

uint64_t sub_21B1DA02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + 32;
    while (1)
    {
      sub_21B17FB4C(v9, &v24);
      v11 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      if ((*(*(v10 + 8) + 8))(v11) == v7 && v12 == v6)
      {
        break;
      }

      v14 = sub_21B20DB28();

      if (v14)
      {
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_21B17C284(&v24, v27);
  }

  else
  {
LABEL_9:
    v28 = 0;
    memset(v27, 0, sizeof(v27));
  }

  sub_21B1DA228(v27, &v21);
  if (v23)
  {
    sub_21B17C284(&v21, &v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    (*(v16 + 32))(&v21, v15, v16);
    sub_21B186488(v27, &qword_27CD6FB90, &qword_21B216AE0);
    v17 = v22;

    *a4 = v17;
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    sub_21B186488(&v21, &qword_27CD6FB90, &qword_21B216AE0);
    sub_21B1D9FD8();
    v19 = swift_allocError();
    *v20 = v7;
    v20[1] = v6;
    swift_willThrow();

    result = sub_21B186488(v27, &qword_27CD6FB90, &qword_21B216AE0);
    *a3 = v19;
  }

  return result;
}

uint64_t sub_21B1DA228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB90, &qword_21B216AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DA2A8@<X0>(uint64_t a4@<X8>)
{
  v25 = a4;
  v5 = sub_21B20CF28();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - v12;
  result = sub_21B20CE98();
  if (!v4)
  {
    v15 = v25;
    sub_21B20CF18();
    v16 = *(v6 + 8);
    v17 = v5;
    v18 = v16;
    v16(v10, v17);
    v19 = sub_21B20CEE8();
    v24 = v18;
    v20 = MEMORY[0x277D84F90];
    while (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21B1D26D8(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_21B1D26D8((v21 > 1), v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      v20[v22 + 4] = v19;
      v19 = sub_21B20CEE8();
    }

    sub_21B1DCAA4(v20, v15);

    return v24(v13, v17);
  }

  return result;
}

uint64_t sub_21B1DA538()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21B20D5D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  sub_21B206F78();
  if (!v1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
    v8 = sub_21B20710C(v7);
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v0 = sub_21B195128(v8, v10, v12, 0, 0);
    sub_21B1DAA04(v12);

    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t PoirotTask.runQuery(_:withParameters:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  result = sub_21B1DA538();
  if (!v4)
  {
    v8 = result;
    v9 = *(result + 208);
    v10[3] = type metadata accessor for RecipeProcessor();
    v10[4] = &off_282CA09B8;
    v10[0] = v8;

    sub_21B1938A8(v10, 1, v9);

    __swift_destroy_boxed_opaque_existential_1(v10);
    sub_21B198CB4();
    v10[0] = v6;
    sub_21B1DA2A8(a4);
  }

  return result;
}

uint64_t PoirotTask.runQueryBlock(withName:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  result = sub_21B1DA538();
  if (!v4)
  {
    v10 = result;
    v11 = *(result + 208);
    v14[3] = type metadata accessor for RecipeProcessor();
    v14[4] = &off_282CA09B8;
    v14[0] = v10;

    v12 = sub_21B1938A8(v14, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_21B198CB4();

    sub_21B1D9EA8(a1, a2, v12);
    v14[6] = v13;

    v14[0] = v8;
    sub_21B1DA2A8(a4);
  }

  return result;
}

uint64_t sub_21B1DAA04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF10, &qword_21B212468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1DAA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_21B20D2C8();
  v17 = sub_21B20D2C8();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_21B20C5E8();

    v19 = sub_21B20C678();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  }

  else
  {
    v19 = sub_21B20C678();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  sub_21B1DAD94(v10, v13);
  sub_21B1DAE04(v13, v6);
  sub_21B20C678();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    sub_21B1B18DC(v6);
    result = sub_21B20D7C8();
    __break(1u);
  }

  else
  {
    sub_21B1B18DC(v13);
    return (*(v20 + 32))(a1, v6, v19);
  }

  return result;
}

uint64_t sub_21B1DAD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DAE04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *DatasetRow.init(name:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v6 = result;
  v7 = 0;
  v39 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = (*(v39 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_21B19DB00(*(v39 + 56) + 32 * v19, v38);
      sub_21B19DB00(v38, v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
      if (!swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
      sub_21B17C284(v34, v37);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v23 = (v6[6] + 16 * v19);
      *v23 = v21;
      v23[1] = v22;
      result = sub_21B17C284(v37, v6[7] + 40 * v19);
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v6[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_21B186488(v34, &qword_27CD6FA40, &qword_21B216D60);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    swift_getDynamicType();
    v27 = sub_21B20DD38();
    v29 = v28;
    sub_21B186430();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v6;
        return result;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v29 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v30 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      sub_21B1A37FC(*(v30 + 56) + 40 * v18, v31);
      *(v29 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v22 = (v6[6] + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      result = sub_21B17C284(v31, v6[7] + 40 * v18);
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v6[2] = v25;

      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v6;
        return result;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1DB110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(v2 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_21B17FB4C(*(v2 + 56) + 40 * v11, v27);
      *&v26 = v13;
      *(&v26 + 1) = v14;
      v22 = v26;
      v23 = v27[0];
      v24 = v27[1];
      v25 = v28;
      v15 = v26;
      v16 = *(v3 + 16);

      if (!v16)
      {
        break;
      }

      v17 = sub_21B1B9778(v15, *(&v15 + 1));
      if ((v18 & 1) == 0)
      {
        break;
      }

      sub_21B17FB4C(*(v3 + 56) + 40 * v17, v21);
      sub_21B17C284(v21, &v29);
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      v19 = sub_21B20CE18();
      __swift_destroy_boxed_opaque_existential_1(&v29);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_21B186488(&v22, &qword_27CD6EBA8, &qword_21B2115C0);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v20 = 0;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
LABEL_15:
    sub_21B186488(&v29, &qword_27CD6FBB8, "P~");
    return v20;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
        v20 = 1;
        goto LABEL_15;
      }

      v6 = *(v2 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DatasetRow.name.getter()
{
  v1 = *v0;

  return v1;
}

void *DatasetRow.cells.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FBA8, &qword_21B216B80);
  result = sub_21B20D7E8();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v23 = result + 8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_21B17FB4C(*(v1 + 56) + 40 * v12, v26);
      result = sub_21B17C284(v26, v24);
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v16 = (v3[6] + 16 * v12);
      *v16 = v15;
      v16[1] = v14;
      v17 = v3[7] + 40 * v12;
      v18 = v25;
      v19 = v24[1];
      *v17 = v24[0];
      *(v17 + 16) = v19;
      *(v17 + 32) = v18;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v3[2] = v22;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}