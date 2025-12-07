uint64_t sub_24AFC36F0()
{
  v1 = v0;
  v2 = type metadata accessor for Request(0);
  sub_24AFCEA38();
  sub_24AFC4564();
  v41 = sub_24AFCED38();
  result = sub_24AFCE9E8();
  if (result)
  {
    v37 = v2;
    v4 = 0;
    v5 = result + 64;
    v6 = 1 << *(result + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(result + 64);
    v9 = (v6 + 63) >> 6;
    v39 = result;
    while (v8)
    {
LABEL_13:
      v12 = (v4 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(result + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(result + 56) + v12);
      v17 = v16[1];
      v40 = *v16;

      MEMORY[0x24C237380](v14, v15);
      MEMORY[0x24C237380](8250, 0xE200000000000000);
      if (qword_2810669F0 != -1)
      {
        swift_once();
      }

      v18 = off_2810669F8;
      v19 = sub_24AFCEBB8();
      v21 = v20;

      if (v18[2] && (sub_24AFCEDA8(), sub_24AFCEBD8(), v22 = sub_24AFCEDC8(), v23 = -1 << *(v18 + 32), v24 = v22 & ~v23, ((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) != 0))
      {
        v38 = v17;
        v25 = ~v23;
        while (1)
        {
          v26 = (v18[6] + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_24AFCED48() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) == 0)
          {
            v17 = v38;
            goto LABEL_6;
          }
        }

        v17 = 0xEA00000000003E44;
        v10 = 0x455443414445523CLL;
      }

      else
      {
LABEL_6:
        v10 = v40;
      }

      v8 &= v8 - 1;

      MEMORY[0x24C237380](v10, v17);

      MEMORY[0x24C237380](10, 0xE100000000000000);

      result = v39;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        v2 = v37;
        v1 = v0;
        goto LABEL_27;
      }

      v8 = *(v5 + 8 * v11);
      ++v4;
      if (v8)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    v28 = (v1 + *(v2 + 28));
    v29 = v28[3];
    v30 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v31 = (*(v30 + 16))(v29, v30);
    if (v32 >> 60 != 15)
    {
      v33 = v31;
      v34 = v32;
      MEMORY[0x24C237380](2570, 0xE200000000000000);
      sub_24AFC45BC();
      v35 = sub_24AFCEA48();
      if (!v36)
      {
        v35 = sub_24AFCEA58();
      }

      MEMORY[0x24C237380](v35);
      sub_24AFC466C(v33, v34);
    }

    return v41;
  }

  return result;
}

uint64_t sub_24AFC3A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AFC3AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AFC3B48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v78 = a4;
  v70 = a3;
  v71 = a2;
  v63 = sub_24AFCEA38();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC6FF0, &qword_24AFCFC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v69 = sub_24AFCEA88();
  v10 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AFCEA98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v68 = type metadata accessor for Request(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v20 + 8))(v21, v20);
  sub_24AFCEA68();
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_24AFC3AE8(v9, &qword_27EFC6FF0, &qword_24AFCFC80);
    sub_24AFC5FA4();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 2;
    swift_willThrow();

    sub_24AFC3AE8(v70, &qword_27EFC7000, &qword_24AFCF710);
    (*(v10 + 8))(v12, v69);
    __swift_destroy_boxed_opaque_existential_1(v71);
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  (*(v10 + 8))(v12, v69);
  v24 = *(v14 + 32);
  v24(v18, v9, v13);
  v25 = v67;
  v24(v67, v18, v13);
  v26 = v68;
  v27 = v72;
  sub_24AFC47A0(v72, v25 + *(v68 + 24));
  v28 = v71;
  sub_24AFC47A0(v71, v25 + v26[7]);
  v29 = v70;
  sub_24AFC5FF8(v70, v25 + v26[8]);
  (*(v14 + 16))(v65, v25, v13);
  v30 = v66;
  sub_24AFCEA08();
  v31 = v28[3];
  v32 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v31);
  (*(*(v32 + 8) + 16))(v75, v31);
  sub_24AFCE9C8();
  v33 = v28[3];
  v34 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v33);
  (*(*(v34 + 8) + 24))(v33);
  sub_24AFCE9F8();
  v35 = v28[3];
  v36 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v35);
  (*(v36 + 16))(v35, v36);
  sub_24AFCEA28();
  sub_24AFC5FF8(v29, &v73);
  if (v74)
  {
    sub_24AFC60CC(&v73, v75);
    v37 = v76;
    v38 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    result = (*(v38 + 24))(v37, v38);
    v39 = 0;
    v40 = result + 64;
    v41 = 1 << *(result + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(result + 64);
    v44 = (v41 + 63) >> 6;
    if (v43)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v45 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (v45 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v45);
      ++v39;
      if (v43)
      {
        v39 = v45;
        do
        {
LABEL_12:
          v43 &= v43 - 1;

          sub_24AFCEA18();
        }

        while (v43);
        continue;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v75);
    v28 = v71;
    v46 = v72;
    v29 = v70;
    v25 = v67;
    v26 = v68;
    v47 = v78;
    if (v78)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v46 = v27;
    sub_24AFC3AE8(&v73, &qword_27EFC7000, &qword_24AFCF710);
    v47 = v78;
    if (v78)
    {
LABEL_17:
      v48 = v78;
      v49 = sub_24AFCE9D8();
      v50 = [v48 appleIDHeadersForRequest_];

      v47 = v78;
      if (v50)
      {
        v78 = v48;
        v51 = v30;
        v52 = sub_24AFCEB38();

        *(v25 + v26[9]) = v52;
        v53 = 1 << *(v52 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v55 = v54 & *(v52 + 64);
        v56 = (v53 + 63) >> 6;

        v57 = 0;
        if (v55)
        {
          goto LABEL_26;
        }

        while (1)
        {
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_32;
          }

          if (v58 >= v56)
          {
            break;
          }

          v55 = *(v52 + 64 + 8 * v58);
          ++v57;
          if (v55)
          {
            v57 = v58;
            do
            {
LABEL_26:
              v55 &= v55 - 1;

              sub_24AFCEA18();
            }

            while (v55);
            continue;
          }
        }

        sub_24AFC3AE8(v70, &qword_27EFC7000, &qword_24AFCF710);
        v28 = v71;
        v46 = v72;
        v30 = v51;
        v25 = v67;
        v26 = v68;
        goto LABEL_30;
      }
    }
  }

  v59 = v47;
  v60 = sub_24AFC6BDC(MEMORY[0x277D84F90]);

  sub_24AFC3AE8(v29, &qword_27EFC7000, &qword_24AFCF710);
  *(v25 + v26[9]) = v60;
LABEL_30:
  (*(v62 + 32))(v25 + v26[5], v30, v63);
  sub_24AFC4438(v25, v64);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_24AFC4438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Request(uint64_t a1)
{
  result = qword_2810669E0;
  if (!qword_2810669E0)
  {
    return swift_getSingletonMetadata();
  }

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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AFC4564()
{
  result = qword_281066B98;
  if (!qword_281066B98)
  {
    sub_24AFCEA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B98);
  }

  return result;
}

unint64_t sub_24AFC45BC()
{
  result = qword_281066B88;
  if (!qword_281066B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B88);
  }

  return result;
}

uint64_t sub_24AFC4610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AFC466C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AFC4680(a1, a2);
  }

  return a1;
}

uint64_t sub_24AFC4680(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24AFC46D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AFC4864(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AFC4610(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_24AFC47A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AFC4804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AFC4864(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AFCB988(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AFCECE8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AFC4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AFCEA88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFC4A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFC4C9C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFC4CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AFCEA38();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFC4E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24AFCEA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24AFCEA38();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFC4F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFC4FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AFCEA98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFC5084()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFC50C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AFCEA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AFCEA38();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFC51D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24AFCEA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24AFCEA38();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFC52DC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v66 = a4;
  v70 = a3;
  v71 = a2;
  v62 = sub_24AFCEA38();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC6FF0, &qword_24AFCFC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - v8;
  v10 = sub_24AFCEA88();
  v68 = *(v10 - 1);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AFCEA98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v67 = type metadata accessor for FileUploadRequest(0);
  MEMORY[0x28223BE20](v67);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = v22;
  v24 = v14;
  (*(v21 + 8))(v23, v21);
  sub_24AFCEA68();
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_24AFC3AE8(v9, &qword_27EFC6FF0, &qword_24AFCFC80);
    sub_24AFC5FA4();
    swift_allocError();
    *v25 = 1;
    *(v25 + 8) = 2;
    swift_willThrow();

    sub_24AFC3AE8(v70, &qword_27EFC7000, &qword_24AFCF710);
    (*(v68 + 8))(v12, v69);
    __swift_destroy_boxed_opaque_existential_1(v71);
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  (*(v68 + 8))(v12, v69);
  v27 = *(v14 + 32);
  v27(v18, v9, v13);
  v27(v20, v18, v13);
  v28 = v67;
  v29 = v77;
  sub_24AFC47A0(v77, &v20[*(v67 + 24)]);
  v30 = v71;
  sub_24AFC47A0(v71, &v20[v28[7]]);
  v31 = v70;
  sub_24AFC5FF8(v70, &v20[v28[8]]);
  (*(v24 + 16))(v64, v20, v13);
  v32 = v65;
  sub_24AFCEA08();
  v33 = v30[3];
  v34 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v33);
  (*(*(v34 + 8) + 16))(v74, v33);
  sub_24AFCE9C8();
  v35 = v30[3];
  v36 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v35);
  (*(*(v36 + 8) + 24))(v35);
  sub_24AFCE9F8();
  sub_24AFC5FF8(v31, &v72);
  v60 = v20;
  if (v73)
  {
    sub_24AFC60CC(&v72, v74);
    v37 = v75;
    v38 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    result = (*(v38 + 24))(v37, v38);
    v39 = 0;
    v40 = result + 64;
    v41 = 1 << *(result + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(result + 64);
    v44 = (v41 + 63) >> 6;
    if (v43)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v45 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (v45 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v45);
      ++v39;
      if (v43)
      {
        v39 = v45;
        do
        {
LABEL_12:
          v43 &= v43 - 1;

          sub_24AFCEA18();
        }

        while (v43);
        continue;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v74);
    v31 = v70;
    v30 = v71;
    v28 = v67;
    v20 = v60;
    v46 = v77;
    v47 = v66;
    if (v66)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v46 = v29;
    sub_24AFC3AE8(&v72, &qword_27EFC7000, &qword_24AFCF710);
    v47 = v66;
    if (v66)
    {
LABEL_17:
      v48 = v47;
      v49 = sub_24AFCE9D8();
      v50 = [v48 appleIDHeadersForRequest_];

      v69 = v48;
      v46 = v77;
      if (v50)
      {
        v51 = v32;
        v52 = sub_24AFCEB38();

        *&v20[v28[9]] = v52;
        v53 = 1 << *(v52 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v55 = v54 & *(v52 + 64);
        v56 = (v53 + 63) >> 6;

        v57 = 0;
        if (v55)
        {
          goto LABEL_26;
        }

        while (1)
        {
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_32;
          }

          if (v58 >= v56)
          {
            break;
          }

          v55 = *(v52 + 64 + 8 * v58);
          ++v57;
          if (v55)
          {
            v57 = v58;
            do
            {
LABEL_26:
              v55 &= v55 - 1;

              sub_24AFCEA18();
            }

            while (v55);
            continue;
          }
        }

        sub_24AFC3AE8(v70, &qword_27EFC7000, &qword_24AFCF710);
        v46 = v77;
        v30 = v71;
        v32 = v51;
        v28 = v67;
        v20 = v60;
        goto LABEL_30;
      }
    }
  }

  v59 = sub_24AFC6BDC(MEMORY[0x277D84F90]);

  sub_24AFC3AE8(v31, &qword_27EFC7000, &qword_24AFCF710);
  *&v20[v28[9]] = v59;
LABEL_30:
  (*(v61 + 32))(&v20[v28[5]], v32, v62);
  sub_24AFC6068(v20, v63);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_24AFC5B54()
{
  v1 = v0;
  v2 = sub_24AFCEA98();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FileUploadRequest(0);
  sub_24AFCEA38();
  sub_24AFC5F14(&qword_281066B98, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
  v36 = sub_24AFCED38();
  v37 = v5;
  result = sub_24AFCE9E8();
  if (result)
  {
    v7 = result;
    v29 = v4;
    v30 = v0;
    v31 = v2;
    v8 = 0;
    v9 = result + 64;
    v10 = 1 << *(result + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(result + 64);
    for (i = (v10 + 63) >> 6; v12; result = )
    {
      v14 = v8;
LABEL_10:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (v14 << 10) | (16 * v15);
      v17 = (*(v7 + 48) + v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v7 + 56) + v16);
      v21 = *v20;
      v22 = v20[1];
      v34 = 10;
      v35 = 0xE100000000000000;

      MEMORY[0x24C237380](v18, v19);

      MEMORY[0x24C237380](8250, 0xE200000000000000);
      MEMORY[0x24C237380](v21, v22);

      MEMORY[0x24C237380](v34, v35);
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= i)
      {

        v1 = v30;
        v2 = v31;
        v4 = v29;
        goto LABEL_13;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_24AFCECD8();

    v34 = 0x65746E6F435B0A0ALL;
    v35 = 0xEF20666F2073746ELL;
    v23 = (v1 + *(v4 + 28));
    v24 = v23[3];
    v25 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v26 = v32;
    (*(v25 + 16))(v24, v25);
    sub_24AFC5F14(&qword_281066B90, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = sub_24AFCED38();
    MEMORY[0x24C237380](v27);

    (*(v33 + 8))(v26, v2);
    MEMORY[0x24C237380](93, 0xE100000000000000);
    MEMORY[0x24C237380](v34, v35);

    return v36;
  }

  return result;
}

uint64_t type metadata accessor for FileUploadRequest(uint64_t a1)
{
  result = qword_27EFC7010;
  if (!qword_27EFC7010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AFC5F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AFC5FA4()
{
  result = qword_27EFC6FF8;
  if (!qword_27EFC6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC6FF8);
  }

  return result;
}

uint64_t sub_24AFC5FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7000, &qword_24AFCF710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFC6068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFC60CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void type metadata accessor for AuthChallengeDisposition()
{
  if (!qword_27EFC7008)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFC7008);
    }
  }
}

void sub_24AFC615C(uint64_t a1)
{
  sub_24AFCEA98();
  if (v1 <= 0x3F)
  {
    sub_24AFCEA38();
    if (v2 <= 0x3F)
    {
      sub_24AFC6260(319, qword_281066948, &protocol descriptor for Endpoint);
      if (v3 <= 0x3F)
      {
        sub_24AFC6260(319, &qword_27EFC7020, &protocol descriptor for FileUploadContentRepresentable);
        if (v4 <= 0x3F)
        {
          sub_24AFC62BC(319);
          if (v5 <= 0x3F)
          {
            sub_24AFC6368();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24AFC6260(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_24AFC62BC(uint64_t a1)
{
  if (!qword_281066A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7028, &unk_24AFCFC90);
    v1 = sub_24AFCEC78();
    if (!v2)
    {
      atomic_store(v1, qword_281066A18);
    }
  }
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

void sub_24AFC6368()
{
  if (!qword_2810668A0)
  {
    v0 = sub_24AFCEB48();
    if (!v1)
    {
      atomic_store(v0, &qword_2810668A0);
    }
  }
}

void static Standard.clientInfoValue.getter()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 serverFriendlyDescription];

    if (v2)
    {
      sub_24AFCEB78();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static Standard.clientTime.getter()
{
  v0 = sub_24AFCEAD8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AFCEAC8();
  v4 = sub_24AFCEAB8();
  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  return sub_24AFCED38();
}

uint64_t _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))(a1);
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = *v13;
    v18 = v13[1];

    MEMORY[0x24C237380](8250, 0xE200000000000000);
    MEMORY[0x24C237380](v15, v16);

    MEMORY[0x24C237380](10, 0xE100000000000000);
    MEMORY[0x24C237380](v17, v18);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return 0;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RequestContentRepresentable.description.getter(uint64_t a1, uint64_t a2)
{
  MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0 = _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(a1, *(a2 + 8));
  v4 = (*(a2 + 16))(a1, a2);
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    sub_24AFC45BC();
    v8 = sub_24AFCEA48();
    if (!v9)
    {
      v8 = sub_24AFCEA58();
    }

    MEMORY[0x24C237380](v8);

    MEMORY[0x24C237380](10, 0xE100000000000000);
    sub_24AFC466C(v6, v7);
  }

  return MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0;
}

uint64_t FileUploadContentRepresentable.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AFCEA98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0 = _s23FindMyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0(a1, *(a2 + 8));
  v14 = v8;
  v11 = 0x4C5255656C69660ALL;
  v12 = 0xEA0000000000203ALL;
  (*(a2 + 16))(a1, a2);
  sub_24AFC6CF0();
  v9 = sub_24AFCED38();
  MEMORY[0x24C237380](v9);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x24C237380](v11, v12);

  return MyServerInteraction20ContentRepresentablePAAE11descriptionSSvg_0;
}

uint64_t RequestMethod.hashValue.getter()
{
  v1 = *v0;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v1);
  return sub_24AFCEDC8();
}

uint64_t sub_24AFC69F4()
{
  v1 = *v0;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v1);
  return sub_24AFCEDC8();
}

uint64_t sub_24AFC6A68(uint64_t a1)
{
  v2 = *v1;
  sub_24AFCEDA8();
  MEMORY[0x24C237550](v2);
  return sub_24AFCEDC8();
}

unint64_t sub_24AFC6AAC(uint64_t a1, uint64_t a2)
{
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  v4 = sub_24AFCEDC8();

  return sub_24AFC6B24(a1, a2, v4);
}

unint64_t sub_24AFC6B24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AFCED48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AFC6BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7038, &qword_24AFCF8E8);
    v3 = sub_24AFCED08();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24AFC6AAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24AFC6CF0()
{
  result = qword_281066B90;
  if (!qword_281066B90)
  {
    sub_24AFCEA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066B90);
  }

  return result;
}

unint64_t sub_24AFC6D4C()
{
  result = qword_27EFC7030;
  if (!qword_27EFC7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Standard(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Standard(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Response.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Response.response.getter()
{
  v1 = *(v0 + *(type metadata accessor for Response(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Response(uint64_t a1)
{
  result = qword_281066938;
  if (!qword_281066938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Response.body.getter()
{
  v1 = v0 + *(type metadata accessor for Response(0) + 24);
  v2 = *v1;
  sub_24AFC7178(*v1, *(v1 + 8));
  return v2;
}

void sub_24AFC7178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t Response.transaction.getter()
{
  type metadata accessor for Response(0);
}

void Response.description.getter()
{
  v1 = sub_24AFCEBA8();
  MEMORY[0x28223BE20](v1 - 8);
  v29[1] = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AFCEA98();
  sub_24AFC6CF0();
  *&v41 = sub_24AFCED38();
  *(&v41 + 1) = v3;
  MEMORY[0x24C237380](0x3A73757461747320, 0xE900000000000020);
  v30 = type metadata accessor for Response(0);
  v4 = *(v30 + 20);
  v31 = v0;
  v5 = *(v0 + v4);
  *&v36 = [v5 statusCode];
  v6 = sub_24AFCED38();
  MEMORY[0x24C237380](v6);

  v45 = v41;
  v32 = v5;
  v7 = [v5 allHeaderFields];
  v8 = sub_24AFCEB38();

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    while (1)
    {
      v14 = v9;
LABEL_12:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v14 << 6);
      sub_24AFC7768(*(v8 + 48) + 40 * v18, v34);
      sub_24AFC4610(*(v8 + 56) + 32 * v18, v33);
      v36 = v34[0];
      v37 = v34[1];
      *&v38 = v35;
      sub_24AFC77C4(v33, (&v38 + 8));
      v16 = v14;
LABEL_13:
      v43[0] = v38;
      v43[1] = v39;
      v44 = v40;
      v41 = v36;
      v42 = v37;
      if (!*(&v37 + 1))
      {
        break;
      }

      v36 = v41;
      v37 = v42;
      *&v38 = *&v43[0];
      sub_24AFC77C4((v43 + 8), v34);
      *&v33[0] = 0;
      *(&v33[0] + 1) = 0xE000000000000000;
      MEMORY[0x24C237380](10, 0xE100000000000000);
      v19 = sub_24AFCEC98();
      MEMORY[0x24C237380](v19);

      MEMORY[0x24C237380](8250, 0xE200000000000000);
      sub_24AFCECF8();
      MEMORY[0x24C237380](*&v33[0], *(&v33[0] + 1));

      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_24AFC7828(&v36);
      v9 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = sub_24AFCEB68();
    v21 = [v32 valueForHTTPHeaderField_];

    if (v21)
    {
      sub_24AFCEB78();

      v22 = sub_24AFCEBB8();
      v24 = v23;

      *&v41 = v22;
      *(&v41 + 1) = v24;
      *&v36 = 1852797802;
      *(&v36 + 1) = 0xE400000000000000;
      sub_24AFC77D4();
      LOBYTE(v22) = sub_24AFCEC88();

      if (v22)
      {
        sub_24AFCEB98();
        v25 = sub_24AFCEB88();
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v25 = 0x4241535241504E55;
          v27 = 0xEA0000000000454CLL;
        }

        *&v41 = 2570;
        *(&v41 + 1) = 0xE200000000000000;
        v28 = v27;
      }

      else
      {
        *&v41 = 2570;
        *(&v41 + 1) = 0xE200000000000000;
        v36 = *(v31 + *(v30 + 24));
        sub_24AFC45BC();
        v25 = sub_24AFCEA58();
      }

      MEMORY[0x24C237380](v25, v28);

      MEMORY[0x24C237380](v41, *(&v41 + 1));
    }
  }

  else
  {
LABEL_5:
    if (v13 <= v9 + 1)
    {
      v15 = v9 + 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v12 = 0;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        v36 = 0u;
        goto LABEL_13;
      }

      v12 = *(v8 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

_OWORD *sub_24AFC77C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24AFC77D4()
{
  result = qword_2810668A8[0];
  if (!qword_2810668A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810668A8);
  }

  return result;
}

id Response.statusCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Response(0) + 20));

  return [v1 statusCode];
}

id Response.header.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Response(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t ResponseHeaders.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_24AFCEB68();
  v5 = [v3 valueForHTTPHeaderField_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_24AFCEB78();

  return v6;
}

uint64_t sub_24AFC79A8(uint64_t a1)
{
  result = sub_24AFCEA98();
  if (v2 <= 0x3F)
  {
    result = sub_24AFC7A4C();
    if (v3 <= 0x3F)
    {
      result = sub_24AFCE9B8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24AFC7A4C()
{
  result = qword_281066898;
  if (!qword_281066898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066898);
  }

  return result;
}

uint64_t sub_24AFC7AA4(uint64_t *a1, int a2)
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

uint64_t sub_24AFC7AEC(uint64_t result, int a2, int a3)
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

uint64_t ServerInteractionController.__allocating_init(sessionConfiguration:bundleIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_24AFCBD58(a1, a2, a3);

  return v6;
}

uint64_t ServerInteractionController.init(sessionConfiguration:bundleIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_24AFCBD58(a1, a2, a3);

  return v4;
}

uint64_t ServerInteractionController.__allocating_init(bundleIdentifier:)(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  [v4 setURLCache_];
  [v4 setRequestCachePolicy_];
  [v4 setHTTPCookieStorage_];
  [v4 setHTTPCookieAcceptPolicy_];
  [v4 setURLCredentialStorage_];
  type metadata accessor for ServerInteractionController();
  swift_allocObject();
  v5 = sub_24AFCBD58(v4, a1, a2);

  return v5;
}

uint64_t sub_24AFC7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AFC7CE4, v5, 0);
}

uint64_t sub_24AFC7CE4()
{
  v1 = *(v0 + 56);
  sub_24AFCE9B8();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for Response(0);
  *v4 = v0;
  v4[1] = sub_24AFC7DE8;
  v6 = *(v0 + 16);

  return MEMORY[0x28215EAD8](v6, "ServerInteraction.send", 22, 2, &unk_24AFCF9B0, v2, v5);
}

uint64_t sub_24AFC7DE8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_24AFC7F24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AFC7F24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AFC7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v7[45] = a2;
  v7[46] = a3;
  v7[44] = a1;
  v7[51] = type metadata accessor for Response(0);
  v7[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F8, &qword_24AFCFBE8);
  v7[53] = swift_task_alloc();
  v8 = type metadata accessor for MockEndpoint(0);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v7[57] = type metadata accessor for Request(0);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AFC8124, 0, 0);
}

uint64_t sub_24AFC8124()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 392);
  v38 = *(v0 + 400);
  v39 = *(v0 + 472);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  sub_24AFCD0C8(v4, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v2, v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  v5 = type metadata accessor for SessionDelegate();
  v6 = objc_allocWithZone(v5);
  sub_24AFCD0C8(v0 + 16, v6 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v0 + 56, v6 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, &qword_27EFC7040, &qword_24AFCF9E0);
  *(v0 + 336) = v6;
  *(v0 + 344) = v5;
  v7 = objc_msgSendSuper2((v0 + 336), sel_init);
  *(v0 + 480) = v7;
  sub_24AFC3AE8(v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  sub_24AFC3AE8(v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFC47A0(v3, v0 + 96);
  sub_24AFC47A0(v1, v0 + 136);
  sub_24AFCD0C8(v4, v0 + 176, &qword_27EFC7000, &qword_24AFCF710);
  v8 = *(v38 + 120);
  *(v0 + 488) = v8;
  v9 = v8;
  sub_24AFC3B48((v0 + 96), (v0 + 136), v0 + 176, v8, v39);
  if (qword_281066A00 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v12 = sub_24AFCEB28();
  *(v0 + 496) = v12;
  *(v0 + 504) = __swift_project_value_buffer(v12, qword_281066BA0);
  sub_24AFC3A80(v10, v11, type metadata accessor for Request);
  v13 = sub_24AFCEB08();
  v14 = sub_24AFCEC68();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 464);
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315138;
    v19 = sub_24AFC36F0();
    v21 = v20;
    sub_24AFC4804(v16, type metadata accessor for Request);
    v22 = sub_24AFC46D4(v19, v21, v41);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24AFC2000, v13, v14, "REQUEST: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x24C237990](v18, -1, -1);
    MEMORY[0x24C237990](v17, -1, -1);
  }

  else
  {

    sub_24AFC4804(v16, type metadata accessor for Request);
  }

  v23 = *(v0 + 440);
  sub_24AFC47A0(*(v0 + 384), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7100, &qword_24AFCFBF0);
  v24 = swift_dynamicCast();
  v25 = *(v23 + 56);
  if (v24)
  {
    v26 = *(v0 + 448);
    v28 = *(v0 + 424);
    v27 = *(v0 + 432);
    v25(v28, 0, 1, v27);
    sub_24AFCD198(v28, v26);
    v40 = (*(v26 + *(v27 + 20)) + **(v26 + *(v27 + 20)));
    v29 = swift_task_alloc();
    *(v0 + 528) = v29;
    *v29 = v0;
    v29[1] = sub_24AFC8890;
    v30 = *(v0 + 392);

    return v40(v30);
  }

  else
  {
    v32 = *(v0 + 472);
    v33 = *(v0 + 456);
    v34 = *(v0 + 424);
    v25(v34, 1, 1, *(v0 + 432));
    sub_24AFC3AE8(v34, &qword_27EFC70F8, &qword_24AFCFBE8);
    v35 = *(v33 + 20);
    v36 = v7;
    v37 = swift_task_alloc();
    *(v0 + 512) = v37;
    *v37 = v0;
    v37[1] = sub_24AFC8724;

    return MEMORY[0x28211ECF8](v32 + v35, v7);
  }
}

uint64_t sub_24AFC8724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[32] = v4;
  v6[33] = a1;
  v6[34] = a2;
  v6[35] = a3;
  v6[36] = v3;
  v6[65] = v3;

  if (v3)
  {
    v7 = sub_24AFC955C;
  }

  else
  {
    v7 = sub_24AFC8F24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AFC8890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[37] = v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;
  v5[67] = v3;

  if (v3)
  {
    v6 = sub_24AFC9450;
  }

  else
  {
    v6 = sub_24AFC89DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24AFC89DC()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  sub_24AFC4804(*(v0 + 448), type metadata accessor for MockEndpoint);
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 320);
  *(v0 + 544) = 1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 488);
    v46 = v3;
    if (v6)
    {
      v7 = v6;
      sub_24AFC7178(v2, v1);
      v8 = v3;
      v9 = sub_24AFCE9D8();
      [v7 handleResponse:v5 forRequest:v9 shouldRetry:v0 + 544];

      if (*(v0 + 544))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 496), qword_281066BB8);
        v10 = sub_24AFCEB08();
        v11 = sub_24AFCEC68();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 488);
        if (v12)
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_24AFC2000, v10, v11, "AKAppleIDSession told us to retry", v14, 2u);
          MEMORY[0x24C237990](v14, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 544) = 0;
      sub_24AFC7178(v2, v1);
      v20 = v3;
    }

    v21 = v2;
    v22 = *(v0 + 472);
    v23 = *(v0 + 408);
    v24 = *(v0 + 416);
    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = sub_24AFCEA98();
    (*(*(v27 - 8) + 16))(v26, v22, v27);
    *(v26 + v23[5]) = v5;
    v28 = (v26 + v23[6]);
    *v28 = v21;
    v28[1] = v1;
    *(v26 + v23[7]) = v25;
    sub_24AFC3A80(v26, v24, type metadata accessor for Response);

    v29 = sub_24AFCEB08();
    v30 = sub_24AFCEC68();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 472);
    v33 = *(v0 + 480);
    v34 = *(v0 + 416);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v35 = 136315138;
      Response.description.getter();
      v44 = v33;
      v45 = v32;
      v38 = v37;
      v40 = v39;
      sub_24AFC4804(v34, type metadata accessor for Response);
      v41 = sub_24AFC46D4(v38, v40, v47);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_24AFC2000, v29, v30, "RESPONSE: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x24C237990](v36, -1, -1);
      MEMORY[0x24C237990](v35, -1, -1);

      sub_24AFC4680(v21, v1);
      v42 = v45;
    }

    else
    {

      sub_24AFC4680(v21, v1);
      sub_24AFC4804(v34, type metadata accessor for Response);
      v42 = v32;
    }

    sub_24AFC4804(v42, type metadata accessor for Request);

    v19 = *(v0 + 8);
  }

  else
  {
    v15 = v1;
    v17 = *(v0 + 472);
    v16 = *(v0 + 480);
    sub_24AFC5FA4();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v2, v15);

    sub_24AFC4804(v17, type metadata accessor for Request);

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_24AFC8F24()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 280);
  *(v0 + 544) = 1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 488);
    v46 = v3;
    if (v6)
    {
      v7 = v6;
      sub_24AFC7178(v2, v1);
      v8 = v3;
      v9 = sub_24AFCE9D8();
      [v7 handleResponse:v5 forRequest:v9 shouldRetry:v0 + 544];

      if (*(v0 + 544))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 496), qword_281066BB8);
        v10 = sub_24AFCEB08();
        v11 = sub_24AFCEC68();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 488);
        if (v12)
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_24AFC2000, v10, v11, "AKAppleIDSession told us to retry", v14, 2u);
          MEMORY[0x24C237990](v14, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 544) = 0;
      sub_24AFC7178(v2, v1);
      v20 = v3;
    }

    v21 = v2;
    v22 = *(v0 + 472);
    v23 = *(v0 + 408);
    v24 = *(v0 + 416);
    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = sub_24AFCEA98();
    (*(*(v27 - 8) + 16))(v26, v22, v27);
    *(v26 + v23[5]) = v5;
    v28 = (v26 + v23[6]);
    *v28 = v21;
    v28[1] = v1;
    *(v26 + v23[7]) = v25;
    sub_24AFC3A80(v26, v24, type metadata accessor for Response);

    v29 = sub_24AFCEB08();
    v30 = sub_24AFCEC68();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 472);
    v33 = *(v0 + 480);
    v34 = *(v0 + 416);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v35 = 136315138;
      Response.description.getter();
      v44 = v33;
      v45 = v32;
      v38 = v37;
      v40 = v39;
      sub_24AFC4804(v34, type metadata accessor for Response);
      v41 = sub_24AFC46D4(v38, v40, v47);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_24AFC2000, v29, v30, "RESPONSE: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x24C237990](v36, -1, -1);
      MEMORY[0x24C237990](v35, -1, -1);

      sub_24AFC4680(v21, v1);
      v42 = v45;
    }

    else
    {

      sub_24AFC4680(v21, v1);
      sub_24AFC4804(v34, type metadata accessor for Response);
      v42 = v32;
    }

    sub_24AFC4804(v42, type metadata accessor for Request);

    v19 = *(v0 + 8);
  }

  else
  {
    v15 = v1;
    v17 = *(v0 + 472);
    v16 = *(v0 + 480);
    sub_24AFC5FA4();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v2, v15);

    sub_24AFC4804(v17, type metadata accessor for Request);

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_24AFC9450()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);

  sub_24AFC4804(v1, type metadata accessor for Request);
  sub_24AFC4804(v2, type metadata accessor for MockEndpoint);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AFC955C()
{
  v1 = *(v0 + 472);

  sub_24AFC4804(v1, type metadata accessor for Request);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AFC9648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AFC9670, v5, 0);
}

uint64_t sub_24AFC9670()
{
  v1 = *(v0 + 56);
  sub_24AFCE9B8();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for Response(0);
  *v4 = v0;
  v4[1] = sub_24AFC9774;
  v6 = *(v0 + 16);

  return MEMORY[0x28215EAD8](v6, "ServerInteraction.upload", 24, 2, &unk_24AFCF9C8, v2, v5);
}

uint64_t sub_24AFC9774()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_24AFCD204, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AFC98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  v7[36] = type metadata accessor for Response(0);
  v7[37] = swift_task_alloc();
  v8 = sub_24AFCEA98();
  v7[38] = v8;
  v7[39] = *(v8 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = type metadata accessor for FileUploadRequest(0);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AFC9A14, 0, 0);
}

uint64_t sub_24AFC9A14()
{
  v36 = v0;
  v1 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v33 = *(v0 + 280);
  v34 = *(v0 + 344);
  v2 = *(v0 + 256);
  v31 = *(v0 + 264);
  v32 = *(v0 + 272);
  v3 = *(v0 + 248);
  sub_24AFCD0C8(v3, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v2, v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  v4 = type metadata accessor for SessionDelegate();
  v5 = objc_allocWithZone(v4);
  sub_24AFCD0C8(v0 + 16, v5 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFCD0C8(v0 + 56, v5 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, &qword_27EFC7040, &qword_24AFCF9E0);
  *(v0 + 216) = v5;
  *(v0 + 224) = v4;
  v6 = objc_msgSendSuper2((v0 + 216), sel_init);
  *(v0 + 352) = v6;
  sub_24AFC3AE8(v0 + 56, &qword_27EFC7040, &qword_24AFCF9E0);
  sub_24AFC3AE8(v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
  sub_24AFC47A0(v31, v0 + 96);
  sub_24AFC47A0(v32, v0 + 136);
  sub_24AFCD0C8(v3, v0 + 176, &qword_27EFC7000, &qword_24AFCF710);
  v7 = *(v33 + 120);
  *(v0 + 360) = v7;
  v8 = v7;
  sub_24AFC52DC((v1 + 96), (v1 + 136), v1 + 176, v7, v34);
  if (qword_281066A00 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 336);
  v9 = *(v1 + 344);
  v11 = sub_24AFCEB28();
  *(v1 + 368) = v11;
  *(v1 + 376) = __swift_project_value_buffer(v11, qword_281066BA0);
  sub_24AFC3A80(v9, v10, type metadata accessor for FileUploadRequest);
  v12 = sub_24AFCEB08();
  v13 = sub_24AFCEC68();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 336);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136315138;
    v18 = sub_24AFC5B54();
    v20 = v19;
    sub_24AFC4804(v15, type metadata accessor for FileUploadRequest);
    v21 = sub_24AFC46D4(v18, v20, v35);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AFC2000, v12, v13, "REQUEST: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x24C237990](v17, -1, -1);
    MEMORY[0x24C237990](v16, -1, -1);
  }

  else
  {

    sub_24AFC4804(v15, type metadata accessor for FileUploadRequest);
  }

  v22 = *(v1 + 344);
  v23 = *(v1 + 272);
  v24 = *(*(v1 + 328) + 20);
  *(v1 + 424) = v24;
  v25 = v23[3];
  v26 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v25);
  (*(v26 + 16))(v25, v26);
  v27 = v6;
  v28 = swift_task_alloc();
  *(v1 + 384) = v28;
  *v28 = v1;
  v28[1] = sub_24AFC9ECC;
  v29 = *(v1 + 320);

  return MEMORY[0x28211ED20](v22 + v24, v29, v6);
}

uint64_t sub_24AFC9ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[49] = a1;
  v6[50] = a2;
  v6[51] = a3;
  v6[52] = v3;

  v7 = v5[44];
  (*(v5[39] + 8))(v5[40], v5[38]);

  if (v3)
  {
    v8 = sub_24AFCA518;
  }

  else
  {
    v8 = sub_24AFCA08C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AFCA08C()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  *(v0 + 428) = 1;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 360);
    if (v3)
    {
      v4 = *(v0 + 408);
      v5 = v3;
      v6 = v4;
      v7 = sub_24AFCE9D8();
      [v5 handleResponse:v2 forRequest:v7 shouldRetry:v0 + 428];

      if (*(v0 + 428))
      {
        if (qword_281066A08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 368), qword_281066BB8);
        v8 = sub_24AFCEB08();
        v9 = sub_24AFCEC68();
        v10 = os_log_type_enabled(v8, v9);
        v11 = *(v0 + 360);
        if (v10)
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_24AFC2000, v8, v9, "AKAppleIDSession told us to retry", v12, 2u);
          MEMORY[0x24C237990](v12, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      *(v0 + 428) = 0;
    }

    v21 = *(v0 + 392);
    v20 = *(v0 + 400);
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    (*(*(v0 + 312) + 16))(v25, *(v0 + 344), *(v0 + 304));
    *(v25 + v23[5]) = v2;
    v26 = (v25 + v23[6]);
    *v26 = v21;
    v26[1] = v20;
    *(v25 + v23[7]) = v24;
    sub_24AFC3A80(v25, v22, type metadata accessor for Response);

    v27 = sub_24AFCEB08();
    v28 = sub_24AFCEC68();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 344);
    v31 = *(v0 + 352);
    v32 = *(v0 + 296);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      Response.description.getter();
      v36 = v35;
      v38 = v37;
      sub_24AFC4804(v32, type metadata accessor for Response);
      v39 = sub_24AFC46D4(v36, v38, v41);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_24AFC2000, v27, v28, "RESPONSE: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x24C237990](v34, -1, -1);
      MEMORY[0x24C237990](v33, -1, -1);
    }

    else
    {

      sub_24AFC4804(v32, type metadata accessor for Response);
    }

    sub_24AFC4804(v30, type metadata accessor for FileUploadRequest);

    v19 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 408);
    v15 = *(v0 + 392);
    v16 = *(v0 + 344);
    v17 = *(v0 + 352);
    sub_24AFC5FA4();
    swift_allocError();
    *v18 = v14;
    *(v18 + 8) = 1;
    swift_willThrow();
    sub_24AFC4680(v15, v13);

    sub_24AFC4804(v16, type metadata accessor for FileUploadRequest);

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_24AFCA518()
{
  v1 = *(v0 + 344);

  sub_24AFC4804(v1, type metadata accessor for FileUploadRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ServerInteractionController.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ServerInteractionController.send(endpoint:content:credential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24AFCA6AC, v4, 0);
}

uint64_t sub_24AFCA6AC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_24AFCE9B8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = type metadata accessor for Response(0);
  *v5 = v0;
  v5[1] = sub_24AFCA7CC;
  v7 = *(v0 + 56);

  return MEMORY[0x28215EAD8](v7, "ServerInteraction.send", 22, 2, &unk_24AFCF9D8, v3, v6);
}

uint64_t sub_24AFCA7CC()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_24AFCA920, v3, 0);
  }

  else
  {

    sub_24AFC3AE8((v2 + 2), &qword_27EFC7040, &qword_24AFCF9E0);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AFCA920()
{

  sub_24AFC3AE8(v0 + 16, &qword_27EFC7040, &qword_24AFCF9E0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ServerInteractionController.upload(endpoint:content:credential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24AFCA9C4, v4, 0);
}

uint64_t sub_24AFCA9C4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_24AFCE9B8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = type metadata accessor for Response(0);
  *v5 = v0;
  v5[1] = sub_24AFCAAE4;
  v7 = *(v0 + 56);

  return MEMORY[0x28215EAD8](v7, "ServerInteraction.upload", 24, 2, &unk_24AFCF9F0, v3, v6);
}

uint64_t sub_24AFCAAE4()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_24AFCD1FC, v3, 0);
  }

  else
  {

    sub_24AFC3AE8((v2 + 2), &qword_27EFC7040, &qword_24AFCF9E0);
    v4 = v2[1];

    return v4();
  }
}

uint64_t ServerInteractionController.description.getter(uint64_t a1)
{
  v1 = type metadata accessor for ServerInteractionController();
  v2 = sub_24AFCC0BC();
  v3 = sub_24AFCED18();
  MEMORY[0x24C237380](v3);

  MEMORY[0x24C237380](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C2374C0](v1, v2);
  MEMORY[0x24C237380](v4);

  MEMORY[0x24C237380](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AFCACFC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ServerInteractionController();
  v4 = sub_24AFCED18();
  MEMORY[0x24C237380](v4);

  MEMORY[0x24C237380](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C2374C0](v3, a2);
  MEMORY[0x24C237380](v5);

  MEMORY[0x24C237380](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AFCADB8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24AFCAE88;

  return sub_24AFCC854(v9);
}

uint64_t sub_24AFCAE88(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v11 = *v2;

  (v5)[2](v5, a1, a2);
  _Block_release(v5);

  v9 = *(v11 + 8);

  return v9();
}

id sub_24AFCB044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AFCB0DC()
{
  v0 = sub_24AFCEB28();
  __swift_allocate_value_buffer(v0, qword_281066BB8);
  __swift_project_value_buffer(v0, qword_281066BB8);
  return sub_24AFCEB18();
}

uint64_t sub_24AFCB158()
{
  v0 = sub_24AFCEB28();
  __swift_allocate_value_buffer(v0, qword_281066BA0);
  __swift_project_value_buffer(v0, qword_281066BA0);
  return sub_24AFCEB18();
}

uint64_t sub_24AFCB1D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24AFCD200;

  return v6();
}

uint64_t sub_24AFCB2C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24AFCB3A8;

  return v7();
}

uint64_t sub_24AFCB3A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AFCB49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC70D0, &qword_24AFCFB78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24AFCD0C8(a3, v23 - v10, &unk_27EFC70D0, &qword_24AFCFB78);
  v12 = sub_24AFCEC28();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFC3AE8(v11, &unk_27EFC70D0, &qword_24AFCFB78);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24AFCEC18();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24AFCEC08();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24AFCEBC8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24AFC3AE8(a3, &unk_27EFC70D0, &qword_24AFCFB78);

    return v21;
  }

LABEL_8:
  sub_24AFC3AE8(a3, &unk_27EFC70D0, &qword_24AFCFB78);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24AFCB798(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFCB890;

  return v6(a1);
}

uint64_t sub_24AFCB890()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24AFCB988(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AFCB9D4(a1, a2);
  sub_24AFCBB04(&unk_285E428F8);
  return v3;
}

void *sub_24AFCB9D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AFCBBF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AFCECE8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AFCEBF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AFCBBF0(v10, 0);
        result = sub_24AFCECC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AFCBB04(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AFCBC64(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AFCBBF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F0, &qword_24AFCFBE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AFCBC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC70F0, &qword_24AFCFBE0);
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

uint64_t sub_24AFCBD58(uint64_t a1, uint64_t a2, id a3)
{
  swift_defaultActor_initialize();
  if (a3)
  {
    v6 = objc_allocWithZone(MEMORY[0x277CF0188]);
    v7 = sub_24AFCEB68();

    a3 = [v6 initWithIdentifier_];
  }

  *(v3 + 120) = a3;
  *(v3 + 112) = [objc_opt_self() sessionWithConfiguration_];
  return v3;
}

uint64_t sub_24AFCBE34(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCD200;

  return sub_24AFC7F88(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_24AFCBF0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCD200;

  return sub_24AFC98B0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_24AFCBFE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AFCB3A8;

  return sub_24AFC7F88(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_24AFCC0BC()
{
  result = qword_27EFC7048;
  if (!qword_27EFC7048)
  {
    type metadata accessor for ServerInteractionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7048);
  }

  return result;
}

uint64_t dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24AFCD200;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ServerInteractionController.upload(endpoint:content:credential:pinningCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 120) + **(*v5 + 120));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24AFCD200;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_23FindMyServerInteraction0cD10ControllerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24AFCC438(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AFCC480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AFCC4C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AFCC510()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFCB3A8;

  return sub_24AFCADB8(v2, v3, v5, v4);
}

uint64_t sub_24AFCC5D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFCD200;

  return sub_24AFCB1D8(v2, v3, v4);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFCC6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFCD200;

  return sub_24AFCB2C0(a1, v4, v5, v6);
}

uint64_t sub_24AFCC79C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFCD200;

  return sub_24AFCB798(a1, v4);
}

uint64_t sub_24AFCC854(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AFCC874, 0, 0);
}

uint64_t sub_24AFCC874()
{
  if (qword_281066A08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_24AFCEB28();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_281066BB8);
  v3 = v1;
  v4 = sub_24AFCEB08();
  v5 = sub_24AFCEC68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24AFC2000, v4, v5, "received challenge: %@", v7, 0xCu);
    sub_24AFC3AE8(v8, &unk_27EFC70E0, &qword_24AFCFBD8);
    MEMORY[0x24C237990](v8, -1, -1);
    MEMORY[0x24C237990](v7, -1, -1);
  }

  v10 = *(v0 + 176);

  v11 = [v10 protectionSpace];
  *(v0 + 200) = v11;
  v12 = [v11 authenticationMethod];
  v13 = sub_24AFCEB78();
  v15 = v14;

  if (v13 == sub_24AFCEB78() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_24AFCED48();

    if ((v17 & 1) == 0)
    {
      sub_24AFCD0C8(*(v0 + 184) + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, v0 + 16, &qword_27EFC7000, &qword_24AFCF710);
      v18 = *(v0 + 40);
      if (v18)
      {
        v29 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v18 = RequestCredential.urlCredential.getter(v18, v29);

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        goto LABEL_22;
      }

      v31 = v0 + 16;
LABEL_21:
      sub_24AFC3AE8(v31, &qword_27EFC7000, &qword_24AFCF710);
      goto LABEL_22;
    }
  }

  sub_24AFCD0C8(*(v0 + 184) + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_pinningCredential, v0 + 96, &qword_27EFC7040, &qword_24AFCF9E0);
  if (!*(v0 + 120))
  {
    v27 = *(v0 + 184);
    sub_24AFC3AE8(v0 + 96, &qword_27EFC7040, &qword_24AFCF9E0);
    sub_24AFCD0C8(v27 + OBJC_IVAR____TtC23FindMyServerInteractionP33_C6B3C350C31B0B220EF4B9CE0C9359C115SessionDelegate_credential, v0 + 136, &qword_27EFC7000, &qword_24AFCF710);
    v18 = *(v0 + 160);
    if (v18)
    {
      v28 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v18 = RequestCredential.urlCredential.getter(v18, v28);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_22:
      v30 = 0;
      goto LABEL_23;
    }

    v31 = v0 + 136;
    goto LABEL_21;
  }

  sub_24AFC60CC((v0 + 96), v0 + 56);
  v18 = [v11 serverTrust];
  *(v0 + 208) = v18;
  if (v18)
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v19);
    v21 = [v11 host];
    v22 = sub_24AFCEB78();
    v24 = v23;

    *(v0 + 216) = v24;
    v33 = (*(v20 + 8) + **(v20 + 8));
    v25 = swift_task_alloc();
    *(v0 + 224) = v25;
    *v25 = v0;
    v25[1] = sub_24AFCCD8C;

    return v33(v22, v24, v18, v19, v20);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v30 = 2;
LABEL_23:
  v32 = *(v0 + 8);

  return v32(v30, v18);
}

uint64_t sub_24AFCCD8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_24AFCCF34;
  }

  else
  {

    *(v4 + 240) = a1;
    v5 = sub_24AFCCEBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AFCCEBC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v3 = *(v0 + 8);

  return v3(0, v1);
}

uint64_t sub_24AFCCF34()
{
  v1 = v0[29];

  v2 = v1;
  v3 = sub_24AFCEB08();
  v4 = sub_24AFCEC68();
  MEMORY[0x24C237850](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[25];
  v8 = v0[26];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24AFC2000, v3, v4, "Trust evaluation returned error: %@", v9, 0xCu);
    sub_24AFC3AE8(v10, &unk_27EFC70E0, &qword_24AFCFBD8);
    MEMORY[0x24C237990](v10, -1, -1);
    MEMORY[0x24C237990](v9, -1, -1);

    MEMORY[0x24C237850](v6);
  }

  else
  {

    MEMORY[0x24C237850](v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v13 = v0[1];

  return v13(2, 0);
}

uint64_t sub_24AFCD0C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
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

uint64_t sub_24AFCD198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MockEndpoint.urlComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MockEndpoint.init(mockResponseBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D0, &qword_24AFCFC10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_24AFCEA78();
  v9 = sub_24AFCEA88();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
    result = type metadata accessor for MockEndpoint(0);
    v12 = (a3 + *(result + 20));
    *v12 = a1;
    v12[1] = a2;
  }

  return result;
}

uint64_t type metadata accessor for MockEndpoint(uint64_t a1)
{
  result = qword_281066AA0;
  if (!qword_281066AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AFCD408@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AFCEA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24AFCD470(uint64_t a1)
{
  result = sub_24AFCEA88();
  if (v2 <= 0x3F)
  {
    result = sub_24AFCD4F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24AFCD4F4()
{
  result = qword_281066890;
  if (!qword_281066890)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_281066890);
  }

  return result;
}

uint64_t sub_24AFCD544()
{
  v0 = sub_24AFCDE58(&unk_285E42898);
  result = swift_arrayDestroy();
  off_2810669F8 = v0;
  return result;
}

uint64_t sub_24AFCD594(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  v8 = sub_24AFCEDC8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AFCED48() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AFCD944(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AFCD6E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  result = sub_24AFCECB8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AFCEDA8();
      sub_24AFCEBD8();
      result = sub_24AFCEDC8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AFCD944(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AFCD6E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AFCDAC4();
      goto LABEL_16;
    }

    sub_24AFCDC20(v8 + 1);
  }

  v10 = *v4;
  sub_24AFCEDA8();
  sub_24AFCEBD8();
  result = sub_24AFCEDC8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AFCED48();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AFCED58();
  __break(1u);
  return result;
}

void *sub_24AFCDAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  v2 = *v0;
  v3 = sub_24AFCECA8();
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

  return result;
}

uint64_t sub_24AFCDC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71D8, &qword_24AFCFC78);
  result = sub_24AFCECB8();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AFCEDA8();

      sub_24AFCEBD8();
      result = sub_24AFCEDC8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AFCDE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2373D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AFCD594(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_24AFCDF18(uint64_t a1)
{
  sub_24AFCEA98();
  if (v1 <= 0x3F)
  {
    sub_24AFCEA38();
    if (v2 <= 0x3F)
    {
      sub_24AFC6260(319, qword_281066948, &protocol descriptor for Endpoint);
      if (v3 <= 0x3F)
      {
        sub_24AFC6260(319, &qword_281066A10, &protocol descriptor for RequestContentRepresentable);
        if (v4 <= 0x3F)
        {
          sub_24AFC62BC(319);
          if (v5 <= 0x3F)
          {
            sub_24AFC6368();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id RequestCredential.urlCredential.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CCACF0]);
  v5 = sub_24AFCEB68();

  v6 = sub_24AFCEB68();

  v7 = [v4 initWithUser:v5 password:v6 persistence:0];

  return v7;
}

unint64_t sub_24AFCE114()
{
  _s12FindMyCommon18SearchpartyAccountV0aB17ServerInteractionE8usernameSSvg_0();
  MEMORY[0x24C237380](58, 0xE100000000000000);
  MyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0 = _s12FindMyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0();
  MEMORY[0x24C237380](MyCommon18SearchpartyAccountV0aB17ServerInteractionE8passwordSSvg_0);

  v1 = sub_24AFCEB58();
  v3 = v2;

  v4 = sub_24AFCEAA8();
  v6 = v5;
  sub_24AFC4680(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v4, v6);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v8 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v8;
}

unint64_t sub_24AFCE26C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x24C237380](58, 0xE100000000000000);
  MEMORY[0x24C237380](a3, a4);
  v6 = sub_24AFCEB58();
  v8 = v7;

  v9 = sub_24AFCEAA8();
  v11 = v10;
  sub_24AFC4680(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v9, v11);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v13 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v13;
}

unint64_t RequestCredential.authHeaders.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  MEMORY[0x24C237380](58, 0xE100000000000000);
  v4 = (*(a2 + 16))(a1, a2);
  MEMORY[0x24C237380](v4);

  v5 = sub_24AFCEB58();
  v7 = v6;

  v8 = sub_24AFCEAA8();
  v10 = v9;
  sub_24AFC4680(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E0, &qword_24AFCFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AFCFD00;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x24C237380](v8, v10);

  *(inited + 48) = 0x206369736142;
  *(inited + 56) = 0xE600000000000000;
  v12 = sub_24AFC6BDC(inited);
  swift_setDeallocating();
  sub_24AFCE624(inited + 32);
  return v12;
}

uint64_t BasicCredential.username.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BasicCredential.password.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FindMyServerInteraction::BasicCredential __swiftcall BasicCredential.init(username:password:)(Swift::String username, Swift::String password)
{
  *v2 = username;
  v2[1] = password;
  result.password = password;
  result.username = username;
  return result;
}

uint64_t sub_24AFCE5B8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24AFCE5E8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24AFCE624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC71E8, &qword_24AFCFD18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AFCE6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AFCE71C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of PinningCredential.urlCredential(host:serverTrust:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24AFCE8AC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_24AFCE8AC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}