uint64_t NHOLogForCategory(uint64_t a1)
{
  if (NHOLogForCategory_onceToken[0] != -1)
  {
    NHOLogForCategory_cold_1();
  }

  v2 = NHOLogForCategory_Logging;

  return [v2 logForCategory:a1];
}

uint64_t __NHOLogForCategory_block_invoke()
{
  NHOLogForCategory_Logging = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t NHOSmartStackLastAction.homeID.getter()
{
  v1 = *v0;
  sub_25B161264();
  return v1;
}

uint64_t NHOSmartStackLastAction.homeID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NHOSmartStackLastAction.actionID.getter()
{
  v1 = *(v0 + 24);
  sub_25B161264();
  return v1;
}

uint64_t NHOSmartStackLastAction.actionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NHOSmartStackLastAction.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NHOSmartStackLastAction(0) + 28);
  v4 = sub_25B1614D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NHOSmartStackLastAction(uint64_t a1)
{
  result = qword_27FA39BC0;
  if (!qword_27FA39BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NHOSmartStackLastAction.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NHOSmartStackLastAction(0) + 28);
  v4 = sub_25B1614D4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

Swift::Void __swiftcall NHOSmartStackLastAction.save()()
{
  v1 = v0;
  v2 = sub_25B1614A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  sub_25B161264();
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v8;
  sub_25B108EF8(v6, v7, 0x4449656D6F68, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v33;
  v11 = *(v1 + 16);
  v12 = 0xE900000000000079;
  v13 = 0x726F737365636361;
  v14 = 0x746867694C6C6C61;
  v15 = 0xEB00000000737265;
  v16 = 0x6B616570536C6C61;
  if (v11 != 3)
  {
    v16 = 0x736B636F4C6C6C61;
    v15 = 0xE800000000000000;
  }

  if (v11 == 2)
  {
    v15 = 0xE900000000000073;
  }

  else
  {
    v14 = v16;
  }

  if (*(v1 + 16))
  {
    v13 = 0x65536E6F69746361;
    v12 = 0xE900000000000074;
  }

  if (*(v1 + 16) <= 1u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  if (*(v1 + 16) <= 1u)
  {
    v18 = v12;
  }

  else
  {
    v18 = v15;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v10;
  sub_25B108EF8(v17, v18, 0x6E6F69746361, 0xE600000000000000, v19);
  v20 = v33;
  v21 = v1[3];
  v22 = v1[4];
  sub_25B161264();
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v20;
  sub_25B108EF8(v21, v22, 0x44496E6F69746361, 0xE800000000000000, v23);
  v24 = v33;
  type metadata accessor for NHOSmartStackLastAction(0);
  sub_25B107690(v5);
  v25 = sub_25B161434();
  v27 = v26;
  (*(v3 + 8))(v5, v2);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v24;
  sub_25B108EF8(v25, v27, 1702125924, 0xE400000000000000, v28);
  v29 = sub_25B109658();
  v30 = sub_25B161A74();

  v31 = sub_25B161B24();
  [v29 setValue:v30 forKey:v31];
}

uint64_t sub_25B107690@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE8, &qword_25B162F08);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_25B1615A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25B161494();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B161474();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B161454();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25B161464();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_25B161594();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_25B161484();
  }

  return result;
}

uint64_t static NHOSmartStackLastAction.getLastAction()@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  Action = type metadata accessor for NHOSmartStackLastAction(0);
  v1 = *(Action - 8);
  MEMORY[0x28223BE20](Action);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B1614D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v11 = sub_25B109658();
  v12 = sub_25B161B24();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_25B161E24();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  v83[0] = v81;
  v83[1] = v82;
  if (*(&v82 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB8, &qword_25B162ED0);
    if (swift_dynamicCast())
    {
      v14 = v80;
      if (*(v80 + 16))
      {
        v15 = sub_25B108A28(0x4449656D6F68, 0xE600000000000000);
        if (v16)
        {
          v17 = *(v14 + 56) + 16 * v15;
          v18 = *(v17 + 8);
          v76 = *v17;
          v77 = v18;
          v19 = *(v14 + 16);
          sub_25B161264();
          if (v19 && (v20 = sub_25B108A28(0x6E6F69746361, 0xE600000000000000), (v21 & 1) != 0))
          {
            v22 = *(*(v14 + 56) + 16 * v20);
            v23 = sub_25B161264();
            v24 = v22;
          }

          else
          {
            v24 = 0;
            v23 = 0xE000000000000000;
          }

          NHOSmartStackAction.init(rawValue:)(*&v24);
          v32 = LOBYTE(v83[0]);
          if (LOBYTE(v83[0]) != 5)
          {
            if (*(v14 + 16))
            {
              v33 = sub_25B108A28(0x44496E6F69746361, 0xE800000000000000);
              if (v34)
              {
                v71 = v32;
                v35 = (*(v14 + 56) + 16 * v33);
                v36 = v35[1];
                v70 = *v35;
                v74 = objc_allocWithZone(MEMORY[0x277CCAA68]);
                v75 = v36;
                sub_25B161264();
                v74 = [v74 init];
                if (*(v14 + 16) && (v37 = sub_25B108A28(1702125924, 0xE400000000000000), (v38 & 1) != 0))
                {
                  v73 = *(*(v14 + 56) + 16 * v37);
                  sub_25B161264();
                }

                else
                {
                  v73 = 0;
                }

                v73 = sub_25B161B24();

                v46 = v73;
                v47 = v74;
                v72 = [v74 dateFromString_];

                v48 = v72;
                if (v72)
                {
                  sub_25B1614B4();

                  (*(v5 + 16))(&v3[*(Action + 28)], v10, v4);
                  v49 = v77;
                  *v3 = v76;
                  *(v3 + 1) = v49;
                  v3[16] = v71;
                  v50 = v75;
                  *(v3 + 3) = v70;
                  *(v3 + 4) = v50;
                  sub_25B1614C4();
                  sub_25B161444();
                  v52 = v51;
                  v53 = *(v5 + 8);
                  v77 = v5 + 8;
                  v53(v8, v4);
                  if (v52 < 180.0)
                  {
                    if (qword_27FA39AE0 != -1)
                    {
                      swift_once();
                    }

                    v54 = sub_25B161A14();
                    __swift_project_value_buffer(v54, qword_27FA3A028);
                    v55 = sub_25B1619F4();
                    v56 = sub_25B161D94();
                    v57 = os_log_type_enabled(v55, v56);
                    v25 = v78;
                    if (v57)
                    {
                      v58 = swift_slowAlloc();
                      v76 = v53;
                      v59 = v58;
                      v60 = swift_slowAlloc();
                      *&v83[0] = v60;
                      *v59 = 136315138;
                      *(v59 + 4) = sub_25B108480(0x417473614C746567, 0xEF29286E6F697463, v83);
                      _os_log_impl(&dword_25B105000, v55, v56, "%s valid last action is found and being returned", v59, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v60);
                      MEMORY[0x25F862BF0](v60, -1, -1);
                      MEMORY[0x25F862BF0](v59, -1, -1);

                      v76(v10, v4);
                    }

                    else
                    {

                      v53(v10, v4);
                    }

                    sub_25B10995C(v3, v25);
                    v31 = 0;
                    return (*(v1 + 56))(v25, v31, 1, Action);
                  }

                  if (qword_27FA39AE0 != -1)
                  {
                    swift_once();
                  }

                  v61 = sub_25B161A14();
                  __swift_project_value_buffer(v61, qword_27FA3A028);
                  v62 = sub_25B1619F4();
                  v63 = sub_25B161D84();
                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = swift_slowAlloc();
                    v76 = v53;
                    v65 = v64;
                    v66 = swift_slowAlloc();
                    *&v83[0] = v66;
                    *v65 = 136315650;
                    *(v65 + 4) = sub_25B108480(0x417473614C746567, 0xEF29286E6F697463, v83);
                    *(v65 + 12) = 2048;
                    *(v65 + 14) = v52;
                    *(v65 + 22) = 2048;
                    *(v65 + 24) = 0x4066800000000000;
                    _os_log_impl(&dword_25B105000, v62, v63, "%s last action is %f seconds which is greater than %f seconds and it was removed", v65, 0x20u);
                    __swift_destroy_boxed_opaque_existential_0(v66);
                    MEMORY[0x25F862BF0](v66, -1, -1);
                    v67 = v65;
                    v53 = v76;
                    MEMORY[0x25F862BF0](v67, -1, -1);
                  }

                  v68 = sub_25B161B24();
                  [v11 removeObjectForKey_];

                  sub_25B109900(v3);
                  v53(v10, v4);
LABEL_31:
                  v31 = 1;
                  v25 = v78;
                  return (*(v1 + 56))(v25, v31, 1, Action);
                }
              }
            }
          }
        }
      }

      if (qword_27FA39AE0 != -1)
      {
        swift_once();
      }

      v39 = sub_25B161A14();
      __swift_project_value_buffer(v39, qword_27FA3A028);
      v40 = sub_25B1619F4();
      v41 = sub_25B161D94();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v83[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_25B108480(0x417473614C746567, 0xEF29286E6F697463, v83);
        _os_log_impl(&dword_25B105000, v40, v41, "%s last action found but values could not be loaded and it was removed", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x25F862BF0](v43, -1, -1);
        MEMORY[0x25F862BF0](v42, -1, -1);
      }

      v44 = sub_25B161B24();
      [v11 removeObjectForKey_];

      goto LABEL_31;
    }
  }

  else
  {
    sub_25B1097CC(v83);
  }

  v25 = v78;
  if (qword_27FA39AE0 != -1)
  {
    swift_once();
  }

  v26 = sub_25B161A14();
  __swift_project_value_buffer(v26, qword_27FA3A028);
  v27 = sub_25B1619F4();
  v28 = sub_25B161D94();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v83[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25B108480(0x417473614C746567, 0xEF29286E6F697463, v83);
    _os_log_impl(&dword_25B105000, v27, v28, "%s no last action found to home smart stack", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F862BF0](v30, -1, -1);
    MEMORY[0x25F862BF0](v29, -1, -1);
  }

  v31 = 1;
  return (*(v1 + 56))(v25, v31, 1, Action);
}

unint64_t sub_25B108480(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_25B161264();
  v6 = sub_25B10854C(v11, 0, 0, 1, a1, a2);
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
    sub_25B109C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25B10854C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25B108658(a5, a6);
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
    result = sub_25B161ED4();
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

void *sub_25B108658(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B1086A4(a1, a2);
  sub_25B1087D4(&unk_286C5FAE8);
  return v3;
}

void *sub_25B1086A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25B1088C0(v5, 0);
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

  result = sub_25B161ED4();
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
        v10 = sub_25B161BE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B1088C0(v10, 0);
        result = sub_25B161EA4();
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

uint64_t sub_25B1087D4(uint64_t result)
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

  result = sub_25B108934(result, v11, 1, v3);
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

void *sub_25B1088C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE0, "\bQ");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B108934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BE0, "\bQ");
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

unint64_t sub_25B108A28(uint64_t a1, uint64_t a2)
{
  sub_25B162024();
  sub_25B161BA4();
  v4 = sub_25B162044();

  return sub_25B109080(a1, a2, v4);
}

unint64_t sub_25B108AA0(uint64_t a1)
{
  v1 = a1;
  sub_25B162024();
  sub_25B161BA4();

  v2 = sub_25B162044();

  return sub_25B109138(v1, v2);
}

unint64_t sub_25B108BB4(uint64_t a1)
{
  sub_25B161514();
  sub_25B109BC4(&qword_27FA39BD0, MEMORY[0x277CC9600]);
  v2 = sub_25B161A94();

  return sub_25B109334(a1, v2);
}

uint64_t sub_25B108C38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BF0, &unk_25B162F10);
  v37 = v4;
  result = sub_25B161F44();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_25B161264();
        sub_25B161264();
      }

      sub_25B162024();
      sub_25B161BA4();
      result = sub_25B162044();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25B108EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25B108A28(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25B108C38(v18, a5 & 1);
      v13 = sub_25B108A28(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25B161FD4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25B1094E0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;

  return sub_25B161264();
}

unint64_t sub_25B109080(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25B161FA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25B109138(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE800000000000000;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x65536E6F69746361;
        }

        else
        {
          v8 = 0x726F737365636361;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE900000000000074;
        }

        else
        {
          v9 = 0xE900000000000079;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x746867694C6C6C61;
        v9 = 0xE900000000000073;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6B616570536C6C61;
        }

        else
        {
          v8 = 0x736B636F4C6C6C61;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000737265;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      v10 = 0xE900000000000079;
      if (v5 == 3)
      {
        v11 = 0x6B616570536C6C61;
      }

      else
      {
        v11 = 0x736B636F4C6C6C61;
      }

      if (v5 == 3)
      {
        v6 = 0xEB00000000737265;
      }

      if (v5 == 2)
      {
        v11 = 0x746867694C6C6C61;
        v6 = 0xE900000000000073;
      }

      if (v5)
      {
        v12 = 0x65536E6F69746361;
      }

      else
      {
        v12 = 0x726F737365636361;
      }

      if (v5)
      {
        v10 = 0xE900000000000074;
      }

      v13 = v5 <= 1 ? v12 : v11;
      v14 = v5 <= 1 ? v10 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_25B161FA4();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE800000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25B109334(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25B161514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25B109BC4(&qword_27FA39BD8, MEMORY[0x277CC9610]);
      v15 = sub_25B161AA4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_25B1094E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BF0, &unk_25B162F10);
  v2 = *v0;
  v3 = sub_25B161F34();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_25B161264();
        result = sub_25B161264();
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

id sub_25B109658()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_25B161B34();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000025B166440 == v4)
  {

    goto LABEL_10;
  }

  v6 = sub_25B161FA4();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_25B161B24();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      return v9;
    }
  }

LABEL_10:
  v11 = [objc_opt_self() standardUserDefaults];

  return v11;
}

uint64_t sub_25B1097CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_25B109900(uint64_t a1)
{
  Action = type metadata accessor for NHOSmartStackLastAction(0);
  (*(*(Action - 8) + 8))(a1, Action);
  return a1;
}

uint64_t sub_25B10995C(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for NHOSmartStackLastAction(0);
  (*(*(Action - 8) + 32))(a2, a1, Action);
  return a2;
}

uint64_t sub_25B1099D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25B1614D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B109A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B1614D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B109B38(uint64_t a1)
{
  result = sub_25B1614D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B109BC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B161514();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B109C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t NHOWidgetFamilyUtilties.NHOWidgetFamily.hashValue.getter()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

uint64_t sub_25B109D04()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

uint64_t sub_25B109D78(uint64_t a1)
{
  v2 = *v1;
  sub_25B162024();
  MEMORY[0x25F862580](v2);
  return sub_25B162044();
}

void *sub_25B109DBC(uint64_t a1, unint64_t a2)
{
  if (a1 == 0x656D6F486F6E614ELL && a2 == 0xEE00746567646957 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB10;
  }

  if (a1 == 0xD000000000000031 && 0x800000025B166460 == a2 || (sub_25B161FA4() & 1) != 0)
  {

    return sub_25B10A140(&unk_286C5FB38);
  }

  else if (a1 == 0xD000000000000029 && 0x800000025B1664A0 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB60;
  }

  else if (a1 == 0xD000000000000029 && 0x800000025B1664D0 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FB88;
  }

  else if (a1 == 0xD00000000000002CLL && 0x800000025B166500 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FBB0;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025B166530 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FBD8;
  }

  else if (a1 == 0xD000000000000027 && 0x800000025B166560 == a2 || (sub_25B161FA4() & 1) != 0)
  {
    return &unk_286C5FC00;
  }

  else
  {
    if (qword_27FA39AD0 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA39FF8);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25B108480(a1, a2, &v10);
      _os_log_impl(&dword_25B105000, v6, v7, "Unknown and unhandled widget kind: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_25B10A140(uint64_t a1)
{
  v2 = sub_25B161584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentLocale];
  sub_25B161534();

  v7 = sub_25B161524();
  v8 = [v7 countryCode];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = sub_25B161B34();
  v11 = v10;

  if (v9 == 21333 && v11 == 0xE200000000000000)
  {
  }

  else
  {
    v13 = sub_25B161FA4();

    if ((v13 & 1) == 0)
    {
LABEL_7:
      if (qword_27FA39AD0 != -1)
      {
        swift_once();
      }

      v14 = sub_25B161A14();
      __swift_project_value_buffer(v14, qword_27FA39FF8);
      v15 = sub_25B1619F4();
      v16 = sub_25B161D74();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_25B105000, v15, v16, "widget Locale requirements not met", v17, 2u);
        MEMORY[0x25F862BF0](v17, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_27FA39AD0 != -1)
  {
    swift_once();
  }

  v18 = sub_25B161A14();
  __swift_project_value_buffer(v18, qword_27FA39FF8);
  v19 = sub_25B1619F4();
  v20 = sub_25B161D74();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25B105000, v19, v20, "widget Locale requirements met", v21, 2u);
    MEMORY[0x25F862BF0](v21, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_25B161264();
  return a1;
}

unint64_t sub_25B10A45C()
{
  result = qword_27FA39BF8;
  if (!qword_27FA39BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOWidgetFamilyUtilties.NHOWidgetFamily(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NHOWidgetFamilyUtilties.NHOWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B10A670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *&xmmword_27FA39C00 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(&xmmword_27FA39C00 + 1) = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  qword_27FA39C10 = result;
  return result;
}

uint64_t NHOAccessoryQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t static NHOAccessoryEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA39C00 + 1);
  v3 = qword_27FA39C10;
  *a1 = xmmword_27FA39C00;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOAccessoryEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA39C00 = v3;
  qword_27FA39C10 = v1;
}

uint64_t (*static NHOAccessoryEntity.defaultQuery.modify(uint64_t a1))()
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B10AA8C@<X0>(void *a1@<X8>)
{
  if (qword_27FA39A70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA39C00 + 1);
  v3 = qword_27FA39C10;
  *a1 = xmmword_27FA39C00;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B10AB2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = qword_27FA39A70;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA39C00 = v1;
  *(&xmmword_27FA39C00 + 1) = v2;
  qword_27FA39C10 = v3;
}

uint64_t sub_25B10ABF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_25B161584();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B1613F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_25B161414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_25B161354();
  __swift_allocate_value_buffer(v10, qword_27FA39C18);
  __swift_project_value_buffer(v10, qword_27FA39C18);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_27FA3E770);
  (*(v4 + 16))(v6, v11, v3);
  sub_25B161574();
  sub_25B161424();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_25B161344();
}

uint64_t static NHOAccessoryEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOAccessoryEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOAccessoryEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161354();
  __swift_project_value_buffer(v1, qword_27FA39C18);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B10B164@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B10B224(uint64_t a1)
{
  if (qword_27FA39A78 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA39C18);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25B10B320(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t sub_25B10B4C4(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t sub_25B10B668(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.room.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t sub_25B10B80C(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t sub_25B10B9B0(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOAccessoryEntity.serviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

void sub_25B10BB00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t NHOAccessoryEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_25B161414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_25B161B04();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_25B1610F4();
  sub_25B161214();
  v9 = sub_25B161224();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  return sub_25B161234();
}

void *sub_25B10BE00@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25B10BE3C(uint64_t a1)
{
  v2 = sub_25B11ADCC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25B10BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25B11B3EC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25B10BF50(uint64_t a1)
{
  v2 = sub_25B11AC24();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOAccessoryQuery.defaultResult()(uint64_t a1)
{
  v2[20] = a1;
  sub_25B161414();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[21] = v3;
  v2[22] = v4;

  return MEMORY[0x2822009F8](sub_25B10C030, 0, 0);
}

uint64_t sub_25B10C030()
{
  if (!sub_25B1612E4())
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  sub_25B114F98();
  sub_25B1611B4();

  v2 = v0[2];
  v1 = v0[3];
  if (!sub_25B1612E4())
  {
LABEL_9:

LABEL_10:
    v9 = v0[20];
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_25B1611B4();

  v3 = v0[4];
  v4 = v0[5];
  if (!sub_25B1612E4())
  {
LABEL_8:

    goto LABEL_9;
  }

  swift_getKeyPath();
  sub_25B1611B4();

  v6 = v0[6];
  v5 = v0[7];
  if (!sub_25B1612E4())
  {
LABEL_7:

    goto LABEL_8;
  }

  v19 = v6;
  swift_getKeyPath();
  sub_25B1611B4();

  v7 = v0[8];
  v8 = v0[9];
  if (sub_25B161BF4())
  {

    goto LABEL_7;
  }

  v18 = v5;
  v12 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v17 = sub_25B161124();
  sub_25B1613E4();
  v15 = sub_25B161124();
  sub_25B1613E4();
  v16 = sub_25B161124();
  sub_25B1613E4();
  v13 = sub_25B161124();
  sub_25B1613E4();
  v14 = sub_25B161124();
  v0[10] = v2;
  v0[11] = v1;
  sub_25B161104();
  v0[12] = v3;
  v0[13] = v4;
  sub_25B161104();
  v0[14] = v19;
  v0[15] = v18;
  sub_25B161104();
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  sub_25B161104();
  v0[18] = v7;
  v0[19] = v8;
  sub_25B161104();
  *v12 = v17;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v13;
  v12[4] = v14;
LABEL_11:

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B10C3DC@<X0>(void *a3@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_25B10C43C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  v3 = sub_25B161804();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_25B161514();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v5 = sub_25B161914();
  *(v2 + 224) = v5;
  *(v2 + 232) = *(v5 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = sub_25B161944();
  *(v2 + 256) = v6;
  *(v2 + 264) = *(v6 - 8);
  *(v2 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0);
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 296) = swift_task_alloc();
  v7 = sub_25B161724();
  *(v2 + 304) = v7;
  *(v2 + 312) = *(v7 - 8);
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = *v1;
  *(v2 + 344) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B10C76C, 0, 0);
}

uint64_t sub_25B10C76C(uint64_t a1)
{
  v37 = v1;
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = *(v1 + 128);
    v3 = *(v1 + 136);
    v4 = qword_27FA39B00;
    sub_25B161264();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v36);
      *(v8 + 12) = 2080;
      v10 = sub_25B108480(v2, v3, &v36);

      *(v8 + 14) = v10;
      v11 = "%s: [NHOAccessoryQuery] Using homeID %s from homeAccessoryIntent.";
LABEL_11:
      _os_log_impl(&dword_25B105000, v6, v7, v11, v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
LABEL_13:

      v15 = 0;
LABEL_14:
      *(v1 + 352) = v2;
      *(v1 + 360) = v3;
      *(v1 + 409) = v15;
      *(v1 + 368) = sub_25B161624();
      sub_25B1616C4();
      *(v1 + 376) = sub_25B1616B4();
      sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
      v17 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B10D12C, v17, v16);
    }

    goto LABEL_12;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    v12 = qword_27FA39B00;
    sub_25B161264();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_25B161A14();
    __swift_project_value_buffer(v13, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v36);
      *(v8 + 12) = 2080;
      v14 = sub_25B108480(v2, v3, &v36);

      *(v8 + 14) = v14;
      v11 = "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlToggleIntent.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B161264();
    sub_25B1611B4();

    v15 = *(v1 + 408);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v19 = sub_25B1619F4();
    v20 = sub_25B161D94();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v36);
      *(v21 + 12) = 2080;
      v23 = sub_25B108480(v2, v3, &v36);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_25B105000, v19, v20, "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlSelectIntent.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v22, -1, -1);
      MEMORY[0x25F862BF0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v24 = sub_25B161A14();
  __swift_project_value_buffer(v24, qword_27FA3A088);
  v25 = sub_25B1619F4();
  v26 = sub_25B161D84();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v36);
    _os_log_impl(&dword_25B105000, v25, v26, "%s: [NHOAccessoryQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  v29 = sub_25B1619F4();
  v30 = sub_25B161D94();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v36);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v36);
    _os_log_impl(&dword_25B105000, v29, v30, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v32, -1, -1);
    MEMORY[0x25F862BF0](v31, -1, -1);
  }

  v33 = *(v1 + 8);
  v34 = MEMORY[0x277D84F90];

  return v33(v34);
}

uint64_t sub_25B10D12C()
{

  *(v0 + 384) = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B10D19C, 0, 0);
}

uint64_t sub_25B10D19C()
{
  sub_25B1614E4();

  v0[2] = sub_25B1616D4();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[18] = v4;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0, MEMORY[0x277D83970]);
  sub_25B161E34();
  v5 = MEMORY[0x277D159D8];
  v6 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_25B10D3CC;
  v8 = v0[40];
  v9 = v0[37];

  return MEMORY[0x28216E6A8](v8, v9, v5, v6);
}

uint64_t sub_25B10D3CC()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_25B10DE70;
  }

  else
  {
    v2 = sub_25B10D4FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B10D4FC()
{
  v100 = v0;
  v1 = sub_25B161714();
  v94 = sub_25B115E2C(v1);
  v2 = sub_25B161704();
  v93 = sub_25B116040(v2);
  if (qword_27FA39B00 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v3 = sub_25B161A14();
    __swift_project_value_buffer(v3, qword_27FA3A088);
    sub_25B161264();
    v4 = sub_25B1619F4();
    v5 = sub_25B161D94();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v97 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v97);
      *(v7 + 12) = 2080;
      v9 = MEMORY[0x25F8621C0](v6, MEMORY[0x277D837D0]);
      v11 = sub_25B108480(v9, v10, &v97);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_25B105000, v4, v5, "%s: [NHOAccessoryQuery] Searching for accessories matching identifiers %s.", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v8, -1, -1);
      MEMORY[0x25F862BF0](v7, -1, -1);
    }

    v12 = *(v0 + 152);
    v87 = *(v12 + 16);
    if (!v87)
    {
      break;
    }

    v13 = 0;
    v86 = v12 + 32;
    v95 = (*(v0 + 200) + 8);
    v92 = *(v0 + 232);
    v90 = *(v0 + 168);
    v91 = (v92 + 8);
    v89 = (v90 + 8);
    v85 = MEMORY[0x277D84F90];
LABEL_7:
    v14 = (v86 + 16 * v13);
    v15 = v14[1];
    v96 = *v14;
    v88 = v13 + 1;
    v16 = -1 << *(v94 + 32);
    if (-v16 < 64)
    {
      v17 = ~(-1 << -v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v94 + 56);
    v19 = (63 - v16) >> 6;
    sub_25B161264();
    sub_25B161264();
    v20 = 0;
    while (1)
    {
      v28 = v20;
      if (!v18)
      {
        break;
      }

LABEL_24:
      v30 = *(v0 + 240);
      v29 = *(v0 + 248);
      v31 = *(v0 + 216);
      v32 = *(v0 + 224);
      v33 = *(v0 + 192);
      v34 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v92 + 16))(v29, *(v94 + 48) + *(v92 + 72) * (v34 | (v20 << 6)), v32);
      (*(v92 + 32))(v30, v29, v32);
      sub_25B1618D4();
      v35 = sub_25B1614F4();
      v37 = v36;
      (*v95)(v31, v33);
      if (v35 == v96 && v37 == v15)
      {
      }

      else
      {
        v39 = sub_25B161FA4();

        if ((v39 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v21 = *(v0 + 409);
      v22 = *(v0 + 240);
      v23 = sub_25B1618F4();
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xE000000000000000;
      }

      sub_25B10E260(v22, v25, v26, v21, &v97);

      v27 = v97;
      if (v97)
      {
        v81 = v98;
        v83 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_25B1150AC(0, *(v85 + 2) + 1, 1, v85);
        }

        v41 = *(v85 + 2);
        v40 = *(v85 + 3);
        if (v41 >= v40 >> 1)
        {
          v85 = sub_25B1150AC((v40 > 1), v41 + 1, 1, v85);
        }

        (*v91)(*(v0 + 240), *(v0 + 224));
        *(v85 + 2) = v41 + 1;
        v42 = &v85[40 * v41];
        *(v42 + 4) = v27;
        *(v42 + 40) = v81;
        *(v42 + 56) = v83;
      }

      else
      {
LABEL_19:
        (*v91)(*(v0 + 240), *(v0 + 224));
      }
    }

    while (1)
    {
      v20 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      if (v20 >= v19)
      {
        break;
      }

      v18 = *(v94 + 56 + 8 * v20);
      ++v28;
      if (v18)
      {
        goto LABEL_24;
      }
    }

    v43 = -1 << *(v93 + 32);
    if (-v43 < 64)
    {
      v44 = ~(-1 << -v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & *(v93 + 56);
    v46 = (63 - v43) >> 6;
    sub_25B161264();
    v47 = 0;
    while (1)
    {
      v55 = v47;
      if (!v45)
      {
        break;
      }

LABEL_52:
      v56 = *(v0 + 208);
      v57 = *(v0 + 184);
      v58 = *(v0 + 192);
      v59 = *(v0 + 176);
      v60 = *(v0 + 160);
      v61 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      (*(v90 + 16))(v57, *(v93 + 48) + *(v90 + 72) * (v61 | (v47 << 6)), v60);
      (*(v90 + 32))(v59, v57, v60);
      sub_25B1617C4();
      v62 = sub_25B1614F4();
      v64 = v63;
      (*v95)(v56, v58);
      if (v62 == v96 && v64 == v15)
      {
      }

      else
      {
        v66 = sub_25B161FA4();

        if ((v66 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v48 = *(v0 + 409);
      v49 = *(v0 + 176);
      v50 = sub_25B1617E4();
      if (v51)
      {
        v52 = v50;
      }

      else
      {
        v52 = 0;
      }

      if (v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0xE000000000000000;
      }

      sub_25B10EF78(v49, v52, v53, v48, &v97);

      v54 = v97;
      if (!v97)
      {
LABEL_47:
        (*v89)(*(v0 + 176), *(v0 + 160));
        continue;
      }

      v82 = v98;
      v84 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_25B1150AC(0, *(v85 + 2) + 1, 1, v85);
      }

      v68 = *(v85 + 2);
      v67 = *(v85 + 3);
      if (v68 >= v67 >> 1)
      {
        v85 = sub_25B1150AC((v67 > 1), v68 + 1, 1, v85);
      }

      (*v89)(*(v0 + 176), *(v0 + 160));
      *(v85 + 2) = v68 + 1;
      v69 = &v85[40 * v68];
      *(v69 + 4) = v54;
      *(v69 + 40) = v82;
      *(v69 + 56) = v84;
    }

    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v47 >= v46)
      {

        v13 = v88;
        if (v88 != v87)
        {
          goto LABEL_7;
        }

        v70 = v85;
        goto LABEL_65;
      }

      v45 = *(v93 + 56 + 8 * v47);
      ++v55;
      if (v45)
      {
        goto LABEL_52;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

  v70 = MEMORY[0x277D84F90];
LABEL_65:

  sub_25B161264();
  v71 = sub_25B1619F4();
  v72 = sub_25B161D94();
  v73 = os_log_type_enabled(v71, v72);
  v75 = *(v0 + 312);
  v74 = *(v0 + 320);
  v76 = *(v0 + 304);
  if (v73)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v97 = v78;
    *v77 = 136315394;
    *(v77 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v97);
    *(v77 + 12) = 2048;
    *(v77 + 14) = *(v70 + 2);

    _os_log_impl(&dword_25B105000, v71, v72, "%s: [NHOAccessoryQuery] Returning %ld accessories.", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x25F862BF0](v78, -1, -1);
    MEMORY[0x25F862BF0](v77, -1, -1);

    (*(v75 + 8))(v74, v76);
  }

  else
  {

    (*(v75 + 8))(v74, v76);
  }

  v79 = *(v0 + 8);

  return v79(v70);
}

uint64_t sub_25B10DE70()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_25B10DF50@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B10DFA8(uint64_t *a1, void *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161154();
}

double sub_25B10E008@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B10E044(uint64_t *a1, uint64_t *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

double sub_25B10E0D4@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B10E110(uint64_t *a1, uint64_t *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

void *sub_25B10E1A0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

uint64_t sub_25B10E1DC(char *a1, uint64_t *a2)
{
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B10E260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v101 = a2;
  v102 = a3;
  v105 = a5;
  v7 = sub_25B161914();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x28223BE20](v7);
  v98 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B161414();
  MEMORY[0x28223BE20](v9 - 8);
  v97 = sub_25B1619A4();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_25B1619B4();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_25B161514();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B1616A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v87 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = *(v14 + 56);
  v109 = &v87 - v32;
  v88 = v31;
  v31();
  v107 = a1;
  sub_25B1618A4();
  v106 = v14;
  v108 = v26;
  if ((a4 & 1) == 0)
  {
    v35 = *(v14 + 16);
    v35(v24, v26, v13);
    v36 = (*(v14 + 88))(v24, v13);
    v37 = *MEMORY[0x277D15640];
    if (v36 != *MEMORY[0x277D15810] && v36 != *MEMORY[0x277D15760] && v36 != *MEMORY[0x277D158D0] && v36 != *MEMORY[0x277D156D8] && v36 != *MEMORY[0x277D15870] && v36 != *MEMORY[0x277D15888] && v36 != v37 && v36 != *MEMORY[0x277D15718] && v36 != *MEMORY[0x277D15898] && v36 != *MEMORY[0x277D15720])
    {
      v33 = v106;
      (*(v106 + 8))(v24, v13);
      goto LABEL_23;
    }

    v38 = v35;
    (*(v106 + 104))(v21, v37, v13);
    sub_25B11B340(&qword_27FA39E18, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_25B161C14();
    sub_25B161C14();
    if (v112 == v110 && v113 == v111)
    {
      v39 = v21;
      v33 = v106;
      (*(v106 + 8))(v39, v13);
    }

    else
    {
      v40 = sub_25B161FA4();
      v41 = v21;
      v33 = v106;
      (*(v106 + 8))(v41, v13);

      if ((v40 & 1) == 0 && (sub_25B1618C4() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v34 = v109;
    sub_25B11B208(v109, &qword_27FA39E08, &qword_25B1637D8);
    v38(v34, v108, v13);
    goto LABEL_22;
  }

  v33 = v14;
  if (ServiceKind.isSupportedByControls.getter() & 1) != 0 && (sub_25B1618C4())
  {
    v34 = v109;
    sub_25B11B208(v109, &qword_27FA39E08, &qword_25B1637D8);
    (*(v14 + 16))(v34, v108, v13);
LABEL_22:
    (v88)(v34, 0, 1, v13);
  }

LABEL_23:
  sub_25B11B268(v109, v30);
  if ((*(v33 + 48))(v30, 1, v13) == 1)
  {
    sub_25B11B208(v30, &qword_27FA39E08, &qword_25B1637D8);
    v42 = v108;
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v43 = sub_25B161A14();
    __swift_project_value_buffer(v43, qword_27FA3A088);
    v45 = v98;
    v44 = v99;
    v46 = v100;
    (*(v99 + 16))(v98, v107, v100);
    v47 = v103;
    (*(v33 + 16))(v103, v42, v13);
    v48 = sub_25B1619F4();
    v49 = sub_25B161D64();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v46;
      v51 = swift_slowAlloc();
      v52 = v45;
      v107 = swift_slowAlloc();
      v112 = v107;
      *v51 = 136315650;
      *(v51 + 4) = sub_25B108480(0xD00000000000003ALL, 0x800000025B166640, &v112);
      *(v51 + 12) = 2080;
      v53 = sub_25B1618E4();
      v55 = v54;
      (*(v44 + 8))(v52, v50);
      v56 = sub_25B108480(v53, v55, &v112);

      *(v51 + 14) = v56;
      *(v51 + 22) = 2080;
      sub_25B11B340(&qword_27FA39E10, MEMORY[0x277D158E0], MEMORY[0x277D15900]);
      v57 = v103;
      v58 = sub_25B161F84();
      v60 = v59;
      v61 = *(v33 + 8);
      v61(v57, v13);
      v62 = sub_25B108480(v58, v60, &v112);

      *(v51 + 24) = v62;
      _os_log_impl(&dword_25B105000, v48, v49, "%s: %s is not supported, service kind is %s", v51, 0x20u);
      v63 = v107;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v63, -1, -1);
      MEMORY[0x25F862BF0](v51, -1, -1);

      v61(v108, v13);
    }

    else
    {

      v72 = *(v33 + 8);
      v72(v47, v13);
      (*(v44 + 8))(v45, v46);
      v72(v42, v13);
    }

    result = sub_25B11B208(v109, &qword_27FA39E08, &qword_25B1637D8);
    v74 = v105;
    v105[4] = 0;
    *v74 = 0u;
    *(v74 + 1) = 0u;
  }

  else
  {
    (*(v33 + 32))(v104, v30, v13);
    v64 = v89;
    sub_25B1618D4();
    v103 = sub_25B1614F4();
    v100 = v65;
    (*(v90 + 8))(v64, v91);
    v66 = sub_25B1618E4();
    v98 = v67;
    v99 = v66;
    LOBYTE(v64) = sub_25B1618B4();
    v68 = v93;
    sub_25B161904();
    v69 = (v92 + 8);
    v70 = (v94 + 8);
    if (v64)
    {
      v71 = v96;
      sub_25B161974();
    }

    else
    {
      v71 = v96;
      sub_25B161984();
    }

    (*v69)(v68, v95);
    v75 = sub_25B161994();
    v77 = v76;
    (*v70)(v71, v97);
    v78 = v104;
    v107 = sub_25B161694();
    v97 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v80 = sub_25B161124();
    sub_25B1613E4();
    v81 = sub_25B161124();
    sub_25B1613E4();
    v82 = sub_25B161124();
    sub_25B1613E4();
    v83 = sub_25B161124();
    sub_25B1613E4();
    v84 = sub_25B161124();
    v112 = v103;
    v113 = v100;
    sub_25B161104();
    v112 = v99;
    v113 = v98;
    sub_25B161104();
    v112 = v75;
    v113 = v77;
    sub_25B161104();
    v112 = v101;
    v113 = v102;
    sub_25B161264();
    sub_25B161104();
    v112 = v107;
    v113 = v97;
    sub_25B161104();
    v85 = *(v106 + 8);
    v85(v78, v13);
    v85(v108, v13);
    result = sub_25B11B208(v109, &qword_27FA39E08, &qword_25B1637D8);
    v86 = v105;
    *v105 = v80;
    v86[1] = v81;
    v86[2] = v82;
    v86[3] = v83;
    v86[4] = v84;
  }

  return result;
}

uint64_t sub_25B10EF78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v145) = a4;
  v143 = a2;
  v144 = a3;
  v155 = a5;
  v6 = sub_25B161804();
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v146 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = &v126 - v9;
  v10 = sub_25B161414();
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_25B1619A4();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_25B1619B4();
  v136 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_25B161514();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25B1616A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v128 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v126 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v126 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v127 = &v126 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v126 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v126 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v126 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CE8, &qword_25B163330);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v126 - v34;
  v36 = sub_25B161754();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v135 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v126 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v147 = &v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v130 = &v126 - v46;
  MEMORY[0x28223BE20](v45);
  v152 = v15;
  v153 = v16;
  v47 = *(v16 + 56);
  v156 = &v126 - v48;
  v129 = v47;
  v47();
  v154 = a1;
  sub_25B161784();
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_25B11B208(v35, &qword_27FA39CE8, &qword_25B163330);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v49 = sub_25B161A14();
    __swift_project_value_buffer(v49, qword_27FA3A088);
    v51 = v150;
    v50 = v151;
    v52 = v146;
    (*(v150 + 16))(v146, v154, v151);
    v53 = sub_25B1619F4();
    v54 = sub_25B161D84();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v156;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v159 = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_25B108480(0xD000000000000034, 0x800000025B166600, &v159);
      *(v57 + 12) = 2080;
      v59 = sub_25B1617D4();
      v61 = v60;
      (*(v51 + 8))(v52, v50);
      v62 = sub_25B108480(v59, v61, &v159);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_25B105000, v53, v54, "%s: %s primary static service could not be obtained", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v58, -1, -1);
      MEMORY[0x25F862BF0](v57, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v52, v50);
    }

    v70 = v56;
LABEL_39:
    result = sub_25B11B208(v70, &qword_27FA39E08, &qword_25B1637D8);
    v112 = v155;
    v155[4] = 0;
    *v112 = 0u;
    *(v112 + 1) = 0u;
    return result;
  }

  v126 = v37;
  (*(v37 + 32))(v41, v35, v36);
  v146 = v36;
  if ((v145 & 1) == 0)
  {
    v71 = v41;
    sub_25B161734();
    v64 = v152;
    v65 = v153;
    (*(v153 + 32))(v27, v30, v152);
    v72 = (*(v65 + 88))(v27, v64);
    v73 = *MEMORY[0x277D15640];
    if (v72 != *MEMORY[0x277D15810] && v72 != *MEMORY[0x277D15760] && v72 != *MEMORY[0x277D158D0] && v72 != *MEMORY[0x277D156D8] && v72 != *MEMORY[0x277D15870] && v72 != *MEMORY[0x277D15888] && v72 != v73 && v72 != *MEMORY[0x277D15718] && v72 != *MEMORY[0x277D15898] && v72 != *MEMORY[0x277D15720])
    {
      v145 = *(v65 + 8);
      v145(v27, v64);
      v66 = v156;
      v41 = v71;
      v67 = v154;
      v69 = v149;
      goto LABEL_30;
    }

    v74 = v127;
    sub_25B161734();
    (*(v65 + 104))(v131, v73, v64);
    sub_25B11B340(&qword_27FA39E18, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_25B161C14();
    sub_25B161C14();
    if (v159 == v157 && v160 == v158)
    {
      v75 = *(v65 + 8);
      v75(v131, v64);
      v145 = v75;
      v75(v74, v64);
    }

    else
    {
      v76 = sub_25B161FA4();
      v77 = *(v65 + 8);
      v77(v131, v64);
      v145 = v77;
      v77(v74, v64);

      if ((v76 & 1) == 0)
      {
        v41 = v71;
        v125 = sub_25B161744();
        v66 = v156;
        v67 = v154;
        v69 = v149;
        if ((v125 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_29:
        v78 = v130;
        sub_25B161734();
        sub_25B11B208(v66, &qword_27FA39E08, &qword_25B1637D8);
        (v129)(v78, 0, 1, v64);
        sub_25B11B2D8(v78, v66, &qword_27FA39E08, &qword_25B1637D8);
        goto LABEL_30;
      }
    }

    v66 = v156;
    v41 = v71;
    v67 = v154;
    v69 = v149;
    goto LABEL_29;
  }

  sub_25B161734();
  v63 = ServiceKind.isSupportedByControls.getter();
  v64 = v152;
  v65 = v153;
  v145 = *(v153 + 8);
  v145(v32, v152);
  v66 = v156;
  v67 = v154;
  if ((v63 & 1) == 0)
  {
    v69 = v149;
    goto LABEL_30;
  }

  v68 = sub_25B161744();
  v69 = v149;
  if (v68)
  {
    goto LABEL_29;
  }

LABEL_30:
  v79 = v147;
  sub_25B11B268(v66, v147);
  if ((*(v65 + 48))(v79, 1, v64) == 1)
  {
    sub_25B11B208(v79, &qword_27FA39E08, &qword_25B1637D8);
    v80 = v146;
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v81 = sub_25B161A14();
    __swift_project_value_buffer(v81, qword_27FA3A088);
    v83 = v150;
    v82 = v151;
    (*(v150 + 16))(v69, v67, v151);
    v84 = v126;
    v85 = v135;
    (*(v126 + 16))(v135, v41, v80);
    v86 = sub_25B1619F4();
    v87 = sub_25B161D64();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v154 = v41;
      v89 = v88;
      v152 = swift_slowAlloc();
      v159 = v152;
      *v89 = 136315650;
      *(v89 + 4) = sub_25B108480(0xD000000000000034, 0x800000025B166600, &v159);
      *(v89 + 12) = 2080;
      LODWORD(v149) = v87;
      v90 = sub_25B1617D4();
      v91 = v69;
      v93 = v92;
      (*(v83 + 8))(v91, v82);
      v94 = sub_25B108480(v90, v93, &v159);

      *(v89 + 14) = v94;
      *(v89 + 22) = 2080;
      v95 = v128;
      sub_25B161734();
      sub_25B11B340(&qword_27FA39E10, MEMORY[0x277D158E0], MEMORY[0x277D15900]);
      v96 = sub_25B161F84();
      v98 = v97;
      v145(v95, v64);
      v99 = *(v84 + 8);
      v99(v85, v80);
      v100 = sub_25B108480(v96, v98, &v159);

      *(v89 + 24) = v100;
      _os_log_impl(&dword_25B105000, v86, v149, "%s: %s is not supported, service kind is %s", v89, 0x20u);
      v101 = v152;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v101, -1, -1);
      MEMORY[0x25F862BF0](v89, -1, -1);

      v99(v154, v80);
    }

    else
    {

      v110 = *(v84 + 8);
      v110(v85, v80);
      (*(v83 + 8))(v69, v82);
      v110(v41, v80);
    }

    v70 = v156;
    goto LABEL_39;
  }

  v154 = v41;
  (*(v65 + 32))(v148, v79, v64);
  v102 = v132;
  sub_25B1617C4();
  v103 = sub_25B1614F4();
  v150 = v104;
  v151 = v103;
  (*(v133 + 8))(v102, v134);
  v149 = sub_25B1617D4();
  v147 = v105;
  LOBYTE(v102) = sub_25B161794();
  v106 = v137;
  sub_25B1617F4();
  v107 = (v136 + 8);
  v108 = (v138 + 8);
  v109 = v140;
  if (v102)
  {
    sub_25B161974();
  }

  else
  {
    sub_25B161984();
  }

  (*v107)(v106, v139);
  v113 = sub_25B161994();
  v115 = v114;
  (*v108)(v109, v141);
  v116 = v148;
  v141 = sub_25B161694();
  v118 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v119 = sub_25B161124();
  sub_25B1613E4();
  v120 = sub_25B161124();
  sub_25B1613E4();
  v121 = sub_25B161124();
  sub_25B1613E4();
  v122 = sub_25B161124();
  sub_25B1613E4();
  v123 = sub_25B161124();
  v159 = v151;
  v160 = v150;
  sub_25B161104();
  v159 = v149;
  v160 = v147;
  sub_25B161104();
  v159 = v113;
  v160 = v115;
  sub_25B161104();
  v159 = v143;
  v160 = v144;
  sub_25B161264();
  sub_25B161104();
  v159 = v141;
  v160 = v118;
  sub_25B161104();
  v145(v116, v152);
  (*(v126 + 8))(v154, v146);
  result = sub_25B11B208(v156, &qword_27FA39E08, &qword_25B1637D8);
  v124 = v155;
  *v155 = v119;
  v124[1] = v120;
  v124[2] = v121;
  v124[3] = v122;
  v124[4] = v123;
  return result;
}

uint64_t NHOAccessoryQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 280) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  *(v4 + 304) = swift_task_alloc();
  v5 = sub_25B161414();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CD0, &qword_25B163320);
  *(v4 + 336) = v6;
  *(v4 + 344) = *(v6 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v7 = sub_25B161804();
  *(v4 + 368) = v7;
  *(v4 + 376) = *(v7 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  v8 = sub_25B161914();
  *(v4 + 400) = v8;
  *(v4 + 408) = *(v8 - 8);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  v9 = sub_25B161664();
  *(v4 + 432) = v9;
  *(v4 + 440) = *(v9 - 8);
  *(v4 + 448) = swift_task_alloc();
  v10 = sub_25B161944();
  *(v4 + 456) = v10;
  *(v4 + 464) = *(v10 - 8);
  *(v4 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v4 + 496) = swift_task_alloc();
  v11 = sub_25B161724();
  *(v4 + 504) = v11;
  *(v4 + 512) = *(v11 - 8);
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = *v3;
  *(v4 + 544) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_25B110548, 0, 0);
}

uint64_t sub_25B110548(uint64_t a1)
{
  v15 = v1;
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = 0;
    v3 = *(v1 + 256);
    v4 = *(v1 + 264);
LABEL_7:
    *(v1 + 609) = v2;
    *(v1 + 560) = v4;
    *(v1 + 552) = v3;
    *(v1 + 568) = sub_25B161624();
    sub_25B1616C4();
    *(v1 + 576) = sub_25B1616B4();
    sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v6 = sub_25B161CC4();

    return MEMORY[0x2822009F8](sub_25B110AD0, v6, v5);
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = 0;
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    goto LABEL_7;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v3 = *(v1 + 64);
    v4 = *(v1 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B1611B4();

    v2 = *(v1 + 608);
    goto LABEL_7;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v7 = sub_25B161A14();
  __swift_project_value_buffer(v7, qword_27FA3A088);
  v8 = sub_25B1619F4();
  v9 = sub_25B161D94();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v14);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v14);
    _os_log_impl(&dword_25B105000, v8, v9, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v11, -1, -1);
    MEMORY[0x25F862BF0](v10, -1, -1);
  }

  (*(*(v1 + 320) + 56))(*(v1 + 304), 1, 1, *(v1 + 312));
  sub_25B11629C();
  sub_25B1611F4();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_25B110AD0()
{

  *(v0 + 584) = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B110B44, 0, 0);
}

uint64_t sub_25B110B44()
{
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[34] = v4;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0, MEMORY[0x277D83970]);
  sub_25B161E34();
  v5 = MEMORY[0x277D159D8];
  v6 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[74] = v7;
  *v7 = v0;
  v7[1] = sub_25B110D64;
  v8 = v0[65];
  v9 = v0[62];

  return MEMORY[0x28216E6A8](v8, v9, v5, v6);
}

uint64_t sub_25B110D64()
{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = sub_25B111DDC;
  }

  else
  {
    v2 = sub_25B110EA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B110EA8()
{
  v143 = v0;
  v1 = sub_25B1616E4();
  v2 = sub_25B117D70(v1);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v0 + 440);
    v6 = sub_25B115B44(*(v2 + 16), 0);
    v7 = sub_25B11A68C(&v138, &v6[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4, v3);
    v8 = v138;
    sub_25B161264();
    sub_25B11A930(v8);
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = *(v0 + 600);
  v138 = v6;
  sub_25B117F84(&v138);
  if (v9)
  {
  }

  else
  {

    v11 = v138;
    if (qword_27FA39B00 != -1)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v12 = sub_25B161A14();
      __swift_project_value_buffer(v12, qword_27FA3A088);
      sub_25B161274();
      v13 = sub_25B1619F4();
      v14 = sub_25B161D94();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v138 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v138);
        *(v15 + 12) = 2048;
        *(v15 + 14) = *(v11 + 16);

        _os_log_impl(&dword_25B105000, v13, v14, "%s: [NHOAccessoryQuery] Home has %ld rooms.", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x25F862BF0](v16, -1, -1);
        MEMORY[0x25F862BF0](v15, -1, -1);
      }

      else
      {
      }

      sub_25B161264();
      v17 = sub_25B1619F4();
      v18 = sub_25B161D94();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = *(v0 + 288);
        v19 = *(v0 + 296);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v138 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v138);
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_25B108480(v20, v19, &v138);
        _os_log_impl(&dword_25B105000, v17, v18, "%s: [NHOAccessoryQuery] Will search for accessory matching %s.", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v22, -1, -1);
        MEMORY[0x25F862BF0](v21, -1, -1);
      }

      v113 = *(v11 + 16);
      if (!v113)
      {
        break;
      }

      v114 = 0;
      v23 = 0;
      v24 = *(v0 + 440);
      v111 = v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v123 = *(v0 + 408);
      v121 = *(v0 + 376);
      v122 = (v123 + 8);
      v120 = (v121 + 8);
      v107 = (*(v0 + 344) + 16);
      v112 = v24;
      v108 = *(v0 + 344);
      v109 = (v24 + 8);
      v25 = MEMORY[0x277D84F90];
      v110 = v11;
LABEL_19:
      if (v23 < *(v11 + 16))
      {
        v115 = v23 + 1;
        v116 = v25;
        (*(v112 + 16))(*(v0 + 448), v111 + *(v112 + 72) * v23, *(v0 + 432));
        v26 = sub_25B161644();
        v27 = sub_25B115E2C(v26);
        v28 = v27;
        v29 = 0;
        v30 = v27 + 56;
        v31 = -1 << *(v27 + 32);
        if (-v31 < 64)
        {
          v32 = ~(-1 << -v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & *(v27 + 56);
        v34 = (63 - v31) >> 6;
        v117 = MEMORY[0x277D84F90];
        v126 = v34;
        v128 = v27 + 56;
        v118 = v27;
LABEL_24:
        v35 = v29;
        while (v33)
        {
          v29 = v35;
LABEL_32:
          v36 = *(v0 + 609);
          v38 = *(v0 + 416);
          v37 = *(v0 + 424);
          v39 = *(v0 + 400);
          v40 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v11 = v123;
          (*(v123 + 16))(v37, *(v28 + 48) + *(v123 + 72) * (v40 | (v29 << 6)), v39);
          (*(v123 + 32))(v38, v37, v39);
          v41 = sub_25B161654();
          sub_25B10E260(v38, v41, v42, v36, &v138);

          v43 = v138;
          if (v138)
          {
            v130 = v139;
            v132 = v140;
            v134 = v141;
            v136 = v142;
            sub_25B161654();
            v44 = sub_25B161B64();
            v46 = v45;

            *(v0 + 80) = v44;
            *(v0 + 88) = v46;
            *(v0 + 96) = sub_25B161B64();
            *(v0 + 104) = v47;
            v11 = sub_25B11A938();
            v48 = sub_25B161E14();

            if (v48 & 1) != 0 || (sub_25B1618E4(), v49 = sub_25B161B64(), v124 = v43, v51 = v50, , *(v0 + 112) = v49, *(v0 + 120) = v51, *(v0 + 128) = sub_25B161B64(), *(v0 + 136) = v52, v53 = sub_25B161E14(), , v43 = v124, , (v53))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = sub_25B1150AC(0, *(v117 + 2) + 1, 1, v117);
              }

              v28 = v118;
              v11 = v132;
              v55 = *(v117 + 2);
              v54 = *(v117 + 3);
              if (v55 >= v54 >> 1)
              {
                v117 = sub_25B1150AC((v54 > 1), v55 + 1, 1, v117);
              }

              (*v122)(*(v0 + 416), *(v0 + 400));
              *(v117 + 2) = v55 + 1;
              v56 = &v117[40 * v55];
              v30 = v128;
              *(v56 + 4) = v43;
              *(v56 + 5) = v130;
              *(v56 + 6) = v132;
              *(v56 + 7) = v134;
              *(v56 + 8) = v136;
              v34 = v126;
              goto LABEL_24;
            }

            (*v122)(*(v0 + 416), *(v0 + 400));
            sub_25B11A98C(v124, v130, v132, v134, v136);
            v35 = v29;
            v28 = v118;
          }

          else
          {
            (*v122)(*(v0 + 416), *(v0 + 400));
            v35 = v29;
          }

          v34 = v126;
          v30 = v128;
        }

        while (1)
        {
          v29 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
            goto LABEL_78;
          }

          if (v29 >= v34)
          {
            break;
          }

          v33 = *(v30 + 8 * v29);
          ++v35;
          if (v33)
          {
            goto LABEL_32;
          }
        }

        v57 = sub_25B161634();
        v58 = sub_25B116040(v57);
        v59 = v58;
        v60 = 0;
        v61 = v58 + 56;
        v62 = -1 << *(v58 + 32);
        if (-v62 < 64)
        {
          v63 = ~(-1 << -v62);
        }

        else
        {
          v63 = -1;
        }

        v64 = v63 & *(v58 + 56);
        v65 = (63 - v62) >> 6;
        v125 = v65;
        v127 = v58 + 56;
        v119 = v58;
LABEL_45:
        v66 = v60;
        while (v64)
        {
          v60 = v66;
LABEL_53:
          v67 = *(v0 + 609);
          v69 = *(v0 + 384);
          v68 = *(v0 + 392);
          v70 = *(v0 + 368);
          v71 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          v11 = v121;
          (*(v121 + 16))(v68, *(v59 + 48) + *(v121 + 72) * (v71 | (v60 << 6)), v70);
          (*(v121 + 32))(v69, v68, v70);
          v72 = sub_25B161654();
          sub_25B10EF78(v69, v72, v73, v67, &v138);

          if (v138)
          {
            v137 = v138;
            v129 = v139;
            v131 = v140;
            v133 = v141;
            v135 = v142;
            sub_25B161654();
            v74 = sub_25B161B64();
            v76 = v75;

            *(v0 + 144) = v74;
            *(v0 + 152) = v76;
            *(v0 + 160) = sub_25B161B64();
            *(v0 + 168) = v77;
            v11 = sub_25B11A938();
            v78 = sub_25B161E14();

            if (v78 & 1) != 0 || (sub_25B1617D4(), v79 = sub_25B161B64(), v81 = v80, , *(v0 + 176) = v79, *(v0 + 184) = v81, *(v0 + 192) = sub_25B161B64(), *(v0 + 200) = v82, v83 = sub_25B161E14(), , , (v83))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = sub_25B1150AC(0, *(v117 + 2) + 1, 1, v117);
              }

              v59 = v119;
              v85 = *(v117 + 2);
              v84 = *(v117 + 3);
              if (v85 >= v84 >> 1)
              {
                v117 = sub_25B1150AC((v84 > 1), v85 + 1, 1, v117);
              }

              (*v120)(*(v0 + 384), *(v0 + 368));
              *(v117 + 2) = v85 + 1;
              v86 = &v117[40 * v85];
              *(v86 + 4) = v137;
              *(v86 + 5) = v129;
              *(v86 + 6) = v131;
              *(v86 + 7) = v133;
              *(v86 + 8) = v135;
              v65 = v125;
              v61 = v127;
              goto LABEL_45;
            }

            (*v120)(*(v0 + 384), *(v0 + 368));
            sub_25B11A98C(v137, v129, v131, v133, v135);
            v66 = v60;
            v59 = v119;
          }

          else
          {
            (*v120)(*(v0 + 384), *(v0 + 368));
            v66 = v60;
          }

          v65 = v125;
          v61 = v127;
        }

        while (1)
        {
          v60 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v60 >= v65)
          {

            v87 = *(v117 + 2);
            if (v87)
            {
              v88 = __OFADD__(v114, v87);
              v89 = v114 + v87;
              v11 = v110;
              v25 = v116;
              if (v88)
              {
                goto LABEL_80;
              }

              v114 = v89;
              v91 = *(v0 + 352);
              v90 = *(v0 + 360);
              v92 = *(v0 + 336);
              sub_25B161264();
              sub_25B161654();
              sub_25B1613E4();

              sub_25B11629C();
              sub_25B1611E4();
              (*v107)(v91, v90, v92);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_25B115850(0, v116[2] + 1, 1, v116, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
              }

              v94 = v25[2];
              v93 = v25[3];
              if (v94 >= v93 >> 1)
              {
                v25 = sub_25B115850((v93 > 1), v94 + 1, 1, v25, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
              }

              v95 = *(v0 + 448);
              v96 = *(v0 + 432);
              v97 = *(v0 + 352);
              v98 = *(v0 + 336);
              (*(v108 + 8))(*(v0 + 360), v98);
              (*v109)(v95, v96);
              v25[2] = v94 + 1;
              (*(v108 + 32))(v25 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v94, v97, v98);
            }

            else
            {
              (*v109)(*(v0 + 448), *(v0 + 432));

              v11 = v110;
              v25 = v116;
            }

            v23 = v115;
            if (v115 != v113)
            {
              goto LABEL_19;
            }

            goto LABEL_71;
          }

          v64 = *(v61 + 8 * v60);
          ++v66;
          if (v64)
          {
            goto LABEL_53;
          }
        }

LABEL_78:
        __break(1u);
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
    }

    v114 = 0;
    v25 = MEMORY[0x277D84F90];
LABEL_71:
    sub_25B161264();
    v99 = sub_25B1619F4();
    v100 = sub_25B161D94();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v138 = v102;
      *v101 = 136315650;
      *(v101 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665C0, &v138);
      *(v101 + 12) = 2048;
      *(v101 + 14) = v114;
      *(v101 + 22) = 2048;
      *(v101 + 24) = v25[2];

      _os_log_impl(&dword_25B105000, v99, v100, "%s: [NHOAccessoryQuery] Returning %ld accessories found across %ld rooms.", v101, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x25F862BF0](v102, -1, -1);
      MEMORY[0x25F862BF0](v101, -1, -1);
    }

    else
    {
    }

    v103 = *(v0 + 520);
    v104 = *(v0 + 504);
    v105 = *(v0 + 512);
    (*(*(v0 + 320) + 56))(*(v0 + 304), 1, 1, *(v0 + 312));
    sub_25B11629C();
    sub_25B1611F4();
    (*(v105 + 8))(v103, v104);

    v106 = *(v0 + 8);

    return v106();
  }
}

uint64_t sub_25B111DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NHOAccessoryQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 152) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  *(v2 + 160) = swift_task_alloc();
  v3 = sub_25B161414();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CD0, &qword_25B163320);
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v5 = sub_25B161514();
  *(v2 + 224) = v5;
  *(v2 + 232) = *(v5 - 8);
  *(v2 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CE8, &qword_25B163330);
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v6 = sub_25B161754();
  *(v2 + 264) = v6;
  *(v2 + 272) = *(v6 - 8);
  *(v2 + 280) = swift_task_alloc();
  v7 = sub_25B161804();
  *(v2 + 288) = v7;
  *(v2 + 296) = *(v7 - 8);
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  v8 = sub_25B161914();
  *(v2 + 328) = v8;
  *(v2 + 336) = *(v8 - 8);
  *(v2 + 344) = swift_task_alloc();
  v9 = sub_25B161664();
  *(v2 + 352) = v9;
  *(v2 + 360) = *(v9 - 8);
  *(v2 + 368) = swift_task_alloc();
  v10 = sub_25B161944();
  *(v2 + 376) = v10;
  *(v2 + 384) = *(v10 - 8);
  *(v2 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0);
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 424) = swift_task_alloc();
  v11 = sub_25B161724();
  *(v2 + 432) = v11;
  *(v2 + 440) = *(v11 - 8);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = *v1;
  *(v2 + 472) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B1123C8, 0, 0);
}

uint64_t sub_25B1123C8(uint64_t a1)
{
  v36 = v1;
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v3 = *(v1 + 128);
    v2 = *(v1 + 136);
    v4 = qword_27FA39B00;
    sub_25B161264();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v35);
      *(v8 + 12) = 2080;
      v10 = sub_25B108480(v3, v2, &v35);

      *(v8 + 14) = v10;
      v11 = "%s: [NHOAccessoryQuery] Using homeID %s from homeAccessoryIntent.";
LABEL_11:
      _os_log_impl(&dword_25B105000, v6, v7, v11, v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
LABEL_13:

      v15 = 0;
LABEL_14:
      *(v1 + 480) = v3;
      *(v1 + 488) = v2;
      *(v1 + 537) = v15;
      *(v1 + 496) = sub_25B161624();
      sub_25B1616C4();
      sub_25B161264();
      *(v1 + 504) = sub_25B1616B4();
      sub_25B11B340(&qword_27FA39CA8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
      v17 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B112E2C, v17, v16);
    }

    goto LABEL_12;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v3 = *(v1 + 96);
    v2 = *(v1 + 104);
    v12 = qword_27FA39B00;
    sub_25B161264();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_25B161A14();
    __swift_project_value_buffer(v13, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v35);
      *(v8 + 12) = 2080;
      v14 = sub_25B108480(v3, v2, &v35);

      *(v8 + 14) = v14;
      v11 = "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlToggleIntent.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C78, &qword_27FA39C80, &qword_25B163280, sub_25B115CC8);
    sub_25B1611B4();

    sub_25B1610F4();

    v3 = *(v1 + 64);
    v2 = *(v1 + 72);
    swift_getKeyPath();
    sub_25B115D5C(&qword_27FA39C90, &qword_27FA39C98, &unk_25B1632B0, sub_25B115DD8);
    sub_25B161264();
    sub_25B1611B4();

    v15 = *(v1 + 536);
    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v19 = sub_25B1619F4();
    v20 = sub_25B161D94();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v35);
      *(v21 + 12) = 2080;
      v23 = sub_25B108480(v3, v2, &v35);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_25B105000, v19, v20, "%s: [NHOAccessoryQuery] Using homeID %s from accessoryControlSelectIntent.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v22, -1, -1);
      MEMORY[0x25F862BF0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v24 = sub_25B161A14();
  __swift_project_value_buffer(v24, qword_27FA3A088);
  v25 = sub_25B1619F4();
  v26 = sub_25B161D84();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v35);
    _os_log_impl(&dword_25B105000, v25, v26, "%s: [NHOAccessoryQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  v29 = sub_25B1619F4();
  v30 = sub_25B161D94();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v35);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_25B108480(7104878, 0xE300000000000000, &v35);
    _os_log_impl(&dword_25B105000, v29, v30, "%s: [NHOAccessoryQuery] Could not find HMHome for %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v32, -1, -1);
    MEMORY[0x25F862BF0](v31, -1, -1);
  }

  (*(*(v1 + 176) + 56))(*(v1 + 160), 1, 1, *(v1 + 168));
  sub_25B11629C();
  sub_25B1611F4();

  v33 = *(v1 + 8);

  return v33();
}

uint64_t sub_25B112E2C()
{

  *(v0 + 512) = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B112E9C, 0, 0);
}

uint64_t sub_25B112E9C()
{
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  sub_25B161934();
  v0[18] = v4;
  sub_25B11B340(&qword_27FA39CB8, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0, MEMORY[0x277D83970]);
  sub_25B161E34();
  v5 = MEMORY[0x277D159D8];
  v6 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[65] = v7;
  *v7 = v0;
  v7[1] = sub_25B1130C4;
  v8 = v0[56];
  v9 = v0[53];

  return MEMORY[0x28216E6A8](v8, v9, v5, v6);
}

uint64_t sub_25B1130C4()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_25B114408;
  }

  else
  {

    v2 = sub_25B113210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B113210()
{
  v163 = v0;
  v1 = sub_25B1616E4();
  v2 = sub_25B117D70(v1);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v0 + 360);
    v6 = sub_25B115B44(*(v2 + 16), 0);
    v7 = sub_25B11A68C(&v160, &v6[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4, v3);
    v8 = v160;
    sub_25B161264();
    sub_25B11A930(v8);
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = *(v0 + 528);
  v160 = v6;
  sub_25B117F84(&v160);
  if (v9)
  {
  }

  swift_bridgeObjectRelease_n();

  v11 = v160;
  if (qword_27FA39B00 == -1)
  {
    goto LABEL_10;
  }

LABEL_101:
  swift_once();
LABEL_10:
  v12 = sub_25B161A14();
  __swift_project_value_buffer(v12, qword_27FA3A088);
  sub_25B161274();
  v13 = sub_25B1619F4();
  v14 = sub_25B161D94();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v160 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v160);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v11 + 16);

    _os_log_impl(&dword_25B105000, v13, v14, "%s: [NHOAccessoryQuery] Home has %ld rooms.", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F862BF0](v16, -1, -1);
    MEMORY[0x25F862BF0](v15, -1, -1);
  }

  else
  {
  }

  v134 = *(v11 + 16);
  if (!v134)
  {

    v114 = 0;
    v21 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v135 = 0;
  v17 = 0;
  v18 = *(v0 + 360);
  v132 = v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v151 = *(v0 + 336);
  v19 = *(v0 + 232);
  v149 = (v19 + 48);
  v20 = *(v0 + 272);
  v142 = (v19 + 32);
  v143 = (v19 + 8);
  v148 = (v20 + 56);
  v147 = (v20 + 48);
  v141 = (v20 + 32);
  v145 = v20;
  v140 = (v20 + 8);
  v150 = *(v0 + 296);
  v146 = (v150 + 8);
  v123 = (*(v0 + 200) + 16);
  v133 = v18;
  v130 = (v18 + 8);
  v124 = *(v0 + 200);
  v21 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v131 = v11;
  do
  {
    if (v17 >= *(v11 + 16))
    {
      goto LABEL_99;
    }

    v159 = v22;
    v136 = v17 + 1;
    v137 = v21;
    (*(v133 + 16))(*(v0 + 368), v132 + *(v133 + 72) * v17, *(v0 + 352));
    v23 = sub_25B161644();
    v24 = sub_25B115E2C(v23);
    v25 = v24;
    v26 = v24 + 56;
    v27 = -1 << *(v24 + 32);
    if (-v27 < 64)
    {
      v28 = ~(-1 << -v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v24 + 56);
    v11 = (63 - v27) >> 6;
    v144 = MEMORY[0x277D84F90];
    v30 = 0;
    if (v29)
    {
      while (2)
      {
        v37 = v30;
LABEL_35:
        (*(v151 + 16))(*(v0 + 344), *(v25 + 48) + *(v151 + 72) * (__clz(__rbit64(v29)) | (v37 << 6)), *(v0 + 328));
        sub_25B11B340(&qword_27FA39CF0, MEMORY[0x277D164A0], MEMORY[0x277D16498]);
        v41 = sub_25B161774();
        v42 = *(v41 + 16);
        v43 = v159[2];
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_95;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v159;
        if (!isUniquelyReferenced_nonNull_native || v44 > v159[3] >> 1)
        {
          if (v43 <= v44)
          {
            v47 = v43 + v42;
          }

          else
          {
            v47 = v43;
          }

          v46 = sub_25B1152D0(isUniquelyReferenced_nonNull_native, v47, 1, v159);
        }

        v159 = v46;
        if (*(v41 + 16))
        {
          if ((v46[3] >> 1) - v46[2] < v42)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v48 = v159[2];
            v49 = __OFADD__(v48, v42);
            v50 = v48 + v42;
            if (v49)
            {
              goto LABEL_98;
            }

            v159[2] = v50;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_96;
          }
        }

        v29 &= v29 - 1;
        v31 = *(v0 + 537);
        v32 = *(v0 + 344);
        v33 = *(v0 + 328);
        v34 = sub_25B161654();
        sub_25B10E260(v32, v34, v35, v31, &v160);

        (*(v151 + 8))(v32, v33);
        v36 = v160;
        if (v160)
        {
          v157 = v162;
          v153 = v161;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_25B1150AC(0, *(v144 + 2) + 1, 1, v144);
          }

          v39 = *(v144 + 2);
          v38 = *(v144 + 3);
          if (v39 >= v38 >> 1)
          {
            v144 = sub_25B1150AC((v38 > 1), v39 + 1, 1, v144);
          }

          *(v144 + 2) = v39 + 1;
          v40 = &v144[40 * v39];
          *(v40 + 4) = v36;
          *(v40 + 40) = v153;
          *(v40 + 56) = v157;
          v30 = v37;
          if (v29)
          {
            continue;
          }
        }

        else
        {
          v30 = v37;
          if (v29)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v37 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v37 >= v11)
      {
        break;
      }

      v29 = *(v26 + 8 * v37);
      ++v30;
      if (v29)
      {
        goto LABEL_35;
      }
    }

    v51 = sub_25B161634();
    v52 = sub_25B116040(v51);
    v53 = 0;
    v11 = v52 + 56;
    v158 = v52;
    v54 = -1 << *(v52 + 32);
    if (-v54 < 64)
    {
      v55 = ~(-1 << -v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(v52 + 56);
    v57 = (63 - v54) >> 6;
    v152 = v57;
LABEL_51:
    v58 = v53;
    if (!v56)
    {
      goto LABEL_53;
    }

    do
    {
      v53 = v58;
LABEL_56:
      v59 = *(v0 + 400);
      v61 = *(v0 + 312);
      v60 = *(v0 + 320);
      v62 = *(v0 + 288);
      v63 = *(v0 + 224);
      v154 = *(v150 + 16);
      v154(v60, *(v158 + 48) + *(v150 + 72) * (__clz(__rbit64(v56)) | (v53 << 6)), v62);
      (*(v150 + 32))(v61, v60, v62);
      sub_25B1617A4();
      if ((*v149)(v59, 1, v63) == 1)
      {
        sub_25B11B208(*(v0 + 400), &qword_27FA39C68, &unk_25B1645B0);
        v64 = 1;
        goto LABEL_63;
      }

      (*v142)(*(v0 + 240), *(v0 + 400), *(v0 + 224));
      v65 = sub_25B1617B4();
      v66 = *(v0 + 240);
      if (*(v65 + 16))
      {
        v67 = sub_25B117B18(*(v0 + 240));
        if (v68)
        {
          v69 = *(v0 + 240);
          v70 = *(v0 + 224);
          (*(v145 + 16))(*(v0 + 248), *(v65 + 56) + *(v145 + 72) * v67, *(v0 + 264));
          (*v143)(v69, v70);

          v64 = 0;
          goto LABEL_63;
        }

        v66 = *(v0 + 240);
      }

      v71 = *(v0 + 224);

      (*v143)(v66, v71);
      v64 = 1;
LABEL_63:
      v56 &= v56 - 1;
      v72 = *(v0 + 256);
      v73 = *(v0 + 264);
      v74 = *(v0 + 248);
      (*v148)(v74, v64, 1, v73);
      sub_25B11B2D8(v74, v72, &qword_27FA39CE8, &qword_25B163330);
      v75 = (*v147)(v72, 1, v73);
      v76 = *(v0 + 256);
      if (v75 == 1)
      {
        (*v146)(*(v0 + 312), *(v0 + 288));
        sub_25B11B208(v76, &qword_27FA39CE8, &qword_25B163330);
      }

      else
      {
        v77 = *(v0 + 280);
        (*v141)(v77, *(v0 + 256), *(v0 + 264));
        if (!sub_25B1145A0(v77, v159, MEMORY[0x277D15AC0], &qword_27FA39DC8, MEMORY[0x277D15AC0], MEMORY[0x277D15AD0]))
        {
          v92 = *(v0 + 537);
          v93 = *(v0 + 312);
          v94 = sub_25B161654();
          sub_25B10EF78(v93, v94, v95, v92, &v160);

          v96 = v160;
          v57 = v152;
          if (v160)
          {
            v156 = v162;
            v139 = v161;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = sub_25B1150AC(0, *(v144 + 2) + 1, 1, v144);
            }

            v100 = *(v144 + 2);
            v99 = *(v144 + 3);
            if (v100 >= v99 >> 1)
            {
              v144 = sub_25B1150AC((v99 > 1), v100 + 1, 1, v144);
            }

            v101 = *(v0 + 312);
            v102 = *(v0 + 288);
            (*v140)(*(v0 + 280), *(v0 + 264));
            (*v146)(v101, v102);
            *(v144 + 2) = v100 + 1;
            v103 = &v144[40 * v100];
            *(v103 + 4) = v96;
            *(v103 + 40) = v139;
            *(v103 + 56) = v156;
          }

          else
          {
            v97 = *(v0 + 312);
            v98 = *(v0 + 288);
            (*v140)(*(v0 + 280), *(v0 + 264));
            (*v146)(v97, v98);
          }

          goto LABEL_51;
        }

        v154(*(v0 + 304), *(v0 + 312), *(v0 + 288));
        v78 = sub_25B1619F4();
        v79 = sub_25B161D94();
        v80 = os_log_type_enabled(v78, v79);
        v81 = *(v0 + 304);
        v82 = *(v0 + 312);
        v83 = *(v0 + 288);
        v155 = *(v0 + 280);
        v138 = *(v0 + 264);
        if (v80)
        {
          log = v78;
          v84 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v160 = v127;
          *v84 = 136315394;
          *(v84 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v160);
          *(v84 + 12) = 2080;
          v125 = v79;
          v85 = sub_25B1617D4();
          v86 = v83;
          v128 = v83;
          v129 = v82;
          v88 = v87;
          v89 = *v146;
          (*v146)(v81, v86);
          v90 = sub_25B108480(v85, v88, &v160);

          *(v84 + 14) = v90;
          _os_log_impl(&dword_25B105000, log, v125, "%s Skipping %s because it is covered by a service group", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v127, -1, -1);
          MEMORY[0x25F862BF0](v84, -1, -1);

          (*v140)(v155, v138);
          v89(v129, v128);
        }

        else
        {

          v91 = *v146;
          (*v146)(v81, v83);
          (*v140)(v155, v138);
          v91(v82, v83);
        }
      }

      v58 = v53;
      v57 = v152;
    }

    while (v56);
    while (1)
    {
LABEL_53:
      v53 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_94;
      }

      if (v53 >= v57)
      {
        break;
      }

      v56 = *(v11 + 8 * v53);
      ++v58;
      if (v56)
      {
        goto LABEL_56;
      }
    }

    v104 = *(v144 + 2);
    if (!v104)
    {
      (*v130)(*(v0 + 368), *(v0 + 352));

      v11 = v131;
      v21 = v137;
      goto LABEL_16;
    }

    v49 = __OFADD__(v135, v104);
    v135 += v104;
    v11 = v131;
    v21 = v137;
    if (v49)
    {
      goto LABEL_100;
    }

    v106 = *(v0 + 208);
    v105 = *(v0 + 216);
    v107 = *(v0 + 192);
    sub_25B161264();
    sub_25B161654();
    sub_25B1613E4();

    sub_25B11629C();
    sub_25B1611E4();
    (*v123)(v106, v105, v107);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_25B115850(0, v137[2] + 1, 1, v137, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
    }

    v109 = v21[2];
    v108 = v21[3];
    if (v109 >= v108 >> 1)
    {
      v21 = sub_25B115850((v108 > 1), v109 + 1, 1, v21, &qword_27FA39DE0, &qword_25B1637C0, &qword_27FA39CD0, &qword_25B163320);
    }

    v110 = *(v0 + 368);
    v111 = *(v0 + 352);
    v112 = *(v0 + 208);
    v113 = *(v0 + 192);
    (*(v124 + 8))(*(v0 + 216), v113);
    (*v130)(v110, v111);
    v21[2] = v109 + 1;
    (*(v124 + 32))(v21 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v109, v112, v113);
LABEL_16:
    v17 = v136;
    v22 = v159;
  }

  while (v136 != v134);

  v114 = v135;
LABEL_87:

  sub_25B161264();
  v115 = sub_25B1619F4();
  v116 = sub_25B161D94();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v160 = v118;
    *v117 = 136315650;
    *(v117 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v160);
    *(v117 + 12) = 2048;
    *(v117 + 14) = v114;
    *(v117 + 22) = 2048;
    *(v117 + 24) = v21[2];

    _os_log_impl(&dword_25B105000, v115, v116, "%s: [NHOAccessoryQuery] Returning %ld accessories found across %ld rooms.", v117, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x25F862BF0](v118, -1, -1);
    MEMORY[0x25F862BF0](v117, -1, -1);
  }

  else
  {
  }

  v120 = *(v0 + 440);
  v119 = *(v0 + 448);
  v121 = *(v0 + 432);
  (*(*(v0 + 176) + 56))(*(v0 + 160), 1, 1, *(v0 + 168));
  sub_25B11629C();
  sub_25B1611F4();
  (*(v120 + 8))(v119, v121);

  v122 = *(v0 + 8);

  return v122();
}

uint64_t sub_25B114408()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_25B1145A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_25B11B340(a4, a5, a6);
  }

  while ((sub_25B161AA4() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_25B1146A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B114758;

  return NHOAccessoryQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_25B114758()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B11484C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B1612F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C38, &qword_25B1630C0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C40, &qword_25B163118);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t sub_25B11496C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOAccessoryQuery.entities(for:)(a1);
}

uint64_t sub_25B114A00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B3EC;

  return NHOAccessoryQuery.suggestedEntities()(a1);
}

uint64_t sub_25B114A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25B114B58;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_25B114B58(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_25B114C58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B11AB00();
  *v5 = v2;
  v5[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_25B114D0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOAccessoryQuery.defaultResult()(a1);
}

uint64_t sub_25B114DAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B161164();
  *a1 = result;
  return result;
}

uint64_t sub_25B114E44@<X0>(uint64_t *a3@<X8>)
{
  sub_25B161274();
  v4 = sub_25B161164();

  *a3 = v4;
  return result;
}

uint64_t sub_25B114ED4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B114F00@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B114F2C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

unint64_t sub_25B114F98()
{
  result = qword_27FA39C58;
  if (!qword_27FA39C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C58);
  }

  return result;
}

char *sub_25B1150AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E20, &qword_25B1637E0);
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

char *sub_25B1151CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DD8, &qword_25B1637B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25B1152D0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DD0, &qword_25B1637B0);
  v10 = *(sub_25B161754() - 8);
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
  v15 = *(sub_25B161754() - 8);
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

char *sub_25B1154A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DC0, &qword_25B1637A8);
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

void *sub_25B1155EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DA0, &qword_25B163788);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DA8, &qword_25B163790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B115720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D98, &qword_25B163780);
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

void *sub_25B115850(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_25B115A38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D78, &qword_25B163768);
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

void *sub_25B115B44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DE8, &qword_25B1637C8);
  v4 = *(sub_25B161664() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_25B115C40@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
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

unint64_t sub_25B115CC8()
{
  result = qword_27FA39C88;
  if (!qword_27FA39C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C88);
  }

  return result;
}

void *sub_25B115D1C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

uint64_t sub_25B115D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B115DD8()
{
  result = qword_27FA39CA0;
  if (!qword_27FA39CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CA0);
  }

  return result;
}

uint64_t sub_25B115E2C(uint64_t a1)
{
  v2 = sub_25B161914();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
  result = MEMORY[0x25F862260](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_25B116F04(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B116040(uint64_t a1)
{
  v2 = sub_25B161804();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48], MEMORY[0x277D15D50]);
  result = MEMORY[0x25F862260](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_25B1162F0(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_25B116254@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_25B11629C()
{
  result = qword_27FA39CD8;
  if (!qword_27FA39CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CD8);
  }

  return result;
}

uint64_t sub_25B1162F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48], MEMORY[0x277D15D50]);
  v33 = a2;
  v11 = sub_25B161A94();
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
      sub_25B11B340(&qword_27FA39E30, MEMORY[0x277D15D48], MEMORY[0x277D15D68]);
      v21 = sub_25B161AA4();
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
    sub_25B1165D0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B1165D0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_25B161804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_25B116BA8(v12);
    }

    else
    {
      sub_25B11688C(v12);
    }

    v13 = *v3;
    sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48], MEMORY[0x277D15D50]);
    v14 = sub_25B161A94();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25B11B340(&qword_27FA39E30, MEMORY[0x277D15D48], MEMORY[0x277D15D68]);
        v22 = sub_25B161AA4();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D15D48], &qword_27FA39E38, &qword_25B1637E8);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B11688C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161804();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E38, &qword_25B1637E8);
  v7 = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48], MEMORY[0x277D15D50]);
      result = sub_25B161A94();
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

uint64_t sub_25B116BA8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161804();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E38, &qword_25B1637E8);
  result = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39E28, MEMORY[0x277D15D48], MEMORY[0x277D15D50]);
      result = sub_25B161A94();
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

uint64_t sub_25B116F04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161914();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
  v33 = a2;
  v11 = sub_25B161A94();
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
      sub_25B11B340(&qword_27FA39E48, MEMORY[0x277D164A0], MEMORY[0x277D164B0]);
      v21 = sub_25B161AA4();
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
    sub_25B1171E4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B1171E4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_25B161914();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_25B1177BC(v12);
    }

    else
    {
      sub_25B1174A0(v12);
    }

    v13 = *v3;
    sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
    v14 = sub_25B161A94();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25B11B340(&qword_27FA39E48, MEMORY[0x277D164A0], MEMORY[0x277D164B0]);
        v22 = sub_25B161AA4();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D164A0], &qword_27FA39E50, &qword_25B1637F0);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B1174A0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161914();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E50, &qword_25B1637F0);
  v7 = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
      result = sub_25B161A94();
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

uint64_t sub_25B1177BC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161914();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E50, &qword_25B1637F0);
  result = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39E40, MEMORY[0x277D164A0], MEMORY[0x277D164A8]);
      result = sub_25B161A94();
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

unint64_t sub_25B117B18(uint64_t a1)
{
  sub_25B161514();
  sub_25B11B340(&qword_27FA39BD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_25B161A94();

  return sub_25B117BB0(a1, v2);
}

unint64_t sub_25B117BB0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25B161514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25B11B340(&qword_27FA39BD8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_25B161AA4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25B117D70(uint64_t a1)
{
  v2 = sub_25B161664();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488], MEMORY[0x277D15490]);
  result = MEMORY[0x25F862260](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_25B119840(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B117F84(uint64_t *a1)
{
  v2 = *(sub_25B161664() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B11B1B4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B11802C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B11802C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B161F74();
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
        sub_25B161664();
        v6 = sub_25B161C94();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B161664() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B118464(v8, v9, a1, v4);
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
    return sub_25B118158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B118158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B161664();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_25B161654();
      v27 = v26;
      if (v25 == sub_25B161654() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_25B161FA4();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B118464(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_25B161664();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_25B119020(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_25B119748(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_25B1196BC(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_25B119748(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_25B161654();
      v37 = v36;
      v38 = sub_25B161654();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_25B161FA4();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_25B161654();
        v52 = v51;
        if (v50 == sub_25B161654() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_25B161FA4();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B1151CC(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_25B1151CC((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
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

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_25B119020(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_25B119748(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_25B1196BC(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_25B161654();
    v69 = v68;
    if (v5 == sub_25B161654() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_25B161FA4();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
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

uint64_t sub_25B119020(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_25B161664();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_25B161654();
            v52 = v51;
            if (v50 == sub_25B161654() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_25B161FA4();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_25B161654();
        v32 = v31;
        if (v30 == sub_25B161654() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_25B161FA4();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_25B11975C(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_25B1196BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25B119748(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25B11975C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25B161664();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25B119840(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161664();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488], MEMORY[0x277D15490]);
  v33 = a2;
  v11 = sub_25B161A94();
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
      sub_25B11B340(&qword_27FA39DF8, MEMORY[0x277D15488], MEMORY[0x277D154A8]);
      v21 = sub_25B161AA4();
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
    sub_25B119B20(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B119B20(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_25B161664();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_25B11A330(v12);
    }

    else
    {
      sub_25B11A014(v12);
    }

    v13 = *v3;
    sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488], MEMORY[0x277D15490]);
    v14 = sub_25B161A94();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25B11B340(&qword_27FA39DF8, MEMORY[0x277D15488], MEMORY[0x277D154A8]);
        v22 = sub_25B161AA4();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B119DDC(MEMORY[0x277D15488], &qword_27FA39E00, &qword_25B1637D0);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B119DDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_25B161E74();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_25B11A014(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161664();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E00, &qword_25B1637D0);
  v7 = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488], MEMORY[0x277D15490]);
      result = sub_25B161A94();
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

uint64_t sub_25B11A330(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161664();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E00, &qword_25B1637D0);
  result = sub_25B161E84();
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
      sub_25B11B340(&qword_27FA39DF0, MEMORY[0x277D15488], MEMORY[0x277D15490]);
      result = sub_25B161A94();
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

uint64_t sub_25B11A68C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_25B161664();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_25B11A938()
{
  result = qword_27FA39CE0;
  if (!qword_27FA39CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CE0);
  }

  return result;
}

uint64_t sub_25B11A98C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B11A9FC()
{
  result = qword_27FA39CF8;
  if (!qword_27FA39CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CF8);
  }

  return result;
}

unint64_t sub_25B11AA54()
{
  result = qword_27FA39D00;
  if (!qword_27FA39D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D00);
  }

  return result;
}

unint64_t sub_25B11AAAC()
{
  result = qword_27FA39D08;
  if (!qword_27FA39D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D08);
  }

  return result;
}

unint64_t sub_25B11AB00()
{
  result = qword_27FA39D10;
  if (!qword_27FA39D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D10);
  }

  return result;
}

unint64_t sub_25B11AB70()
{
  result = qword_27FA39D18;
  if (!qword_27FA39D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D18);
  }

  return result;
}

unint64_t sub_25B11ABC8()
{
  result = qword_27FA39D20;
  if (!qword_27FA39D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D20);
  }

  return result;
}

unint64_t sub_25B11AC24()
{
  result = qword_27FA39D28;
  if (!qword_27FA39D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D28);
  }

  return result;
}

unint64_t sub_25B11ACC0()
{
  result = qword_27FA39D40;
  if (!qword_27FA39D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D40);
  }

  return result;
}

unint64_t sub_25B11AD1C()
{
  result = qword_27FA39D48;
  if (!qword_27FA39D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D48);
  }

  return result;
}

unint64_t sub_25B11AD74()
{
  result = qword_27FA39D50;
  if (!qword_27FA39D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D50);
  }

  return result;
}

unint64_t sub_25B11ADCC()
{
  result = qword_27FA39D58;
  if (!qword_27FA39D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D58);
  }

  return result;
}

unint64_t sub_25B11AE24()
{
  result = qword_27FA39D60;
  if (!qword_27FA39D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D60);
  }

  return result;
}

uint64_t sub_25B11AEBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *sub_25B11AF14@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B11AF54@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B11AF94@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B11AFD4@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B11B014@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
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

uint64_t sub_25B11B068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B11B0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B11B11C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25B11B164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B11B1C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

uint64_t sub_25B11B208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B11B268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B11B2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B11B340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HMServiceGroup.widgetSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v159 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v159 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v159 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v188 = &v159 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v193 = &v159 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v159 - v20;
  v166 = v22;
  v23 = (v22 + 56);
  v24 = *(v22 + 56);
  v165 = a1;
  v24(a1, 1, 1, v3);
  v189 = v1;
  v25 = [v1 services];
  sub_25B11C668();
  v26 = sub_25B161C64();

  v28 = v26;
  if (v26 >> 62)
  {
LABEL_48:
    v158 = v28;
    v29 = sub_25B161E54();
    v28 = v158;
    if (v29)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_3:
      v161 = v15;
      v162 = v12;
      v159 = v9;
      v160 = v6;
      v163 = v24;
      v164 = v23;
      v9 = 0;
      v185 = v28 & 0xC000000000000001;
      v183 = *MEMORY[0x277D15810];
      v168 = v28 & 0xFFFFFFFFFFFFFF8;
      v180 = *MEMORY[0x277D15760];
      v184 = "accessory entity";
      v187 = (v166 + 16);
      v182 = (v166 + 88);
      v179 = *MEMORY[0x277D158D0];
      v178 = *MEMORY[0x277D156D8];
      v177 = *MEMORY[0x277D15870];
      v176 = *MEMORY[0x277D15888];
      v15 = (v166 + 8);
      v170 = (v166 + 104);
      v191 = *MEMORY[0x277D15640];
      v174 = *MEMORY[0x277D15718];
      v173 = *MEMORY[0x277D15898];
      v171 = *MEMORY[0x277D15720];
      *&v27 = 136315906;
      v172 = v27;
      *&v27 = 136315650;
      v167 = v27;
      v186 = v3;
      v190 = v21;
      v181 = v28;
      v175 = v29;
      v192 = (v166 + 8);
      while (1)
      {
        if (v185)
        {
          v30 = MEMORY[0x25F862410](v9);
        }

        else
        {
          if (v9 >= *(v168 + 16))
          {
            goto LABEL_47;
          }

          v30 = *(v28 + 8 * v9 + 32);
        }

        v31 = v30;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (qword_27FA39AF0 != -1)
        {
          swift_once();
        }

        v32 = sub_25B161A14();
        v33 = __swift_project_value_buffer(v32, qword_27FA3A058);
        v34 = v31;
        v6 = v189;
        v195 = v33;
        v35 = sub_25B1619F4();
        v36 = sub_25B161D64();

        v37 = os_log_type_enabled(v35, v36);
        v194 = (v9 + 1);
        if (v37)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v198[0] = v39;
          *v38 = v172;
          *(v38 + 4) = sub_25B108480(0xD00000000000001CLL, v184 | 0x8000000000000000, v198);
          *(v38 + 12) = 2080;
          v40 = [v34 name];
          v41 = sub_25B161B34();
          v43 = v42;

          v44 = sub_25B108480(v41, v43, v198);

          *(v38 + 14) = v44;
          *(v38 + 22) = 2080;
          v45 = [v34 serviceType];
          v46 = sub_25B161B34();
          v48 = v47;

          v49 = sub_25B108480(v46, v48, v198);

          *(v38 + 24) = v49;
          *(v38 + 32) = 2080;
          v50 = [v6 name];
          v51 = sub_25B161B34();
          v53 = v52;

          v54 = sub_25B108480(v51, v53, v198);
          v3 = v186;

          *(v38 + 34) = v54;
          _os_log_impl(&dword_25B105000, v35, v36, "%s: Checking service %s of type %s for accessory %s", v38, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v39, -1, -1);
          v55 = v38;
          v21 = v190;
          MEMORY[0x25F862BF0](v55, -1, -1);
        }

        v15 = v192;
        sub_25B161DD4();
        v23 = *v187;
        v56 = v193;
        (*v187)(v193, v21, v3);
        v57 = (*v182)(v56, v3);
        if (v57 == v183 || v57 == v180 || v57 == v179 || v57 == v178 || v57 == v177 || v57 == v176 || v57 == v191 || v57 == v174 || v57 == v173 || v57 == v171)
        {
          (*v170)(v188, v191, v3);
          sub_25B11DA20(&qword_27FA39E18, MEMORY[0x277D158F8]);
          sub_25B161C14();
          sub_25B161C14();
          if (v198[0] == v196 && v198[1] == v197)
          {
            v77 = 1;
          }

          else
          {
            v77 = sub_25B161FA4();
          }

          v58 = *v15;
          (*v15)(v188, v3);

          if (v77)
          {
            v169 = v58;

            v93 = v161;
            v94 = v190;
            v23(v161, v190, v3);
            v95 = v162;
            v23(v162, v94, v3);
            v96 = v6;
            v97 = sub_25B1619F4();
            v98 = sub_25B161D64();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v198[0] = v100;
              *v99 = v172;
              *(v99 + 4) = sub_25B108480(0xD00000000000001CLL, v184 | 0x8000000000000000, v198);
              *(v99 + 12) = 2080;
              v101 = ServiceKind.debugDescription.getter();
              LODWORD(v195) = v98;
              v102 = v101;
              v104 = v103;
              v105 = v93;
              v106 = v169;
              v169(v105, v186);
              v107 = sub_25B108480(v102, v104, v198);

              *(v99 + 14) = v107;
              *(v99 + 22) = 2080;
              v108 = sub_25B161694();
              v110 = v109;
              v106(v95, v186);
              v111 = sub_25B108480(v108, v110, v198);

              *(v99 + 24) = v111;
              *(v99 + 32) = 2080;
              v112 = v190;
              v113 = [v96 name];
              v114 = sub_25B161B34();
              v116 = v115;

              v117 = sub_25B108480(v114, v116, v198);

              *(v99 + 34) = v117;
              _os_log_impl(&dword_25B105000, v97, v195, "%s: Found supported service kind %s(%s) for serviceGroup %s", v99, 0x2Au);
              swift_arrayDestroy();
              v118 = v100;
              v3 = v186;
              MEMORY[0x25F862BF0](v118, -1, -1);
              v119 = v99;
              v94 = v112;
              MEMORY[0x25F862BF0](v119, -1, -1);
            }

            else
            {

              v153 = v169;
              v169(v95, v3);
              v153(v93, v3);
            }

            v154 = v165;
            sub_25B11D9B8(v165);
            (*(v166 + 32))(v154, v94, v3);
            return (v163)(v154, 0, 1, v3);
          }

          v78 = HMService.primaryControlCharacteristic.getter();
          if (v78)
          {
            v120 = v6;
            v121 = v58;
            v122 = v78;

            v123 = v159;
            v124 = v190;
            v23(v159, v190, v3);
            v125 = v160;
            v23(v160, v124, v3);
            v126 = v34;
            v127 = v120;
            v128 = sub_25B1619F4();
            v129 = sub_25B161D64();

            if (os_log_type_enabled(v128, v129))
            {
              v130 = v123;
              v131 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              v198[0] = v195;
              *v131 = 136316162;
              *(v131 + 4) = sub_25B108480(0xD00000000000001CLL, v184 | 0x8000000000000000, v198);
              *(v131 + 12) = 2080;
              LODWORD(v194) = v129;
              v132 = ServiceKind.debugDescription.getter();
              v193 = v126;
              v133 = v132;
              v135 = v134;
              v121(v130, v3);
              v136 = sub_25B108480(v133, v135, v198);

              *(v131 + 14) = v136;
              *(v131 + 22) = 2080;
              v137 = sub_25B161694();
              v139 = v138;
              v121(v125, v3);
              v140 = sub_25B108480(v137, v139, v198);

              *(v131 + 24) = v140;
              *(v131 + 32) = 2080;
              v141 = v193;
              v142 = [v193 name];
              v143 = sub_25B161B34();
              v145 = v144;

              v146 = sub_25B108480(v143, v145, v198);

              *(v131 + 34) = v146;
              *(v131 + 42) = 2080;
              v147 = [v127 name];
              v148 = sub_25B161B34();
              v150 = v149;

              v151 = sub_25B108480(v148, v150, v198);

              *(v131 + 44) = v151;
              _os_log_impl(&dword_25B105000, v128, v194, "%s: Found supported service kind %s(%s) having a primary control characteristic with service %s for serviceGroup %s", v131, 0x34u);
              v152 = v195;
              swift_arrayDestroy();
              MEMORY[0x25F862BF0](v152, -1, -1);
              MEMORY[0x25F862BF0](v131, -1, -1);
            }

            else
            {

              v121(v125, v3);
              v121(v123, v3);
            }

            v156 = v165;
            sub_25B11D9B8(v165);
            v157 = v163;
            (*(v166 + 32))(v156, v190, v3);
            return (v157)(v156, 0, 1, v3);
          }

          v12 = v34;
          v79 = v6;
          v80 = sub_25B1619F4();
          v24 = sub_25B161D64();

          if (os_log_type_enabled(v80, v24))
          {
            v6 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v198[0] = v81;
            *v6 = v167;
            *(v6 + 1) = sub_25B108480(0xD00000000000001CLL, v184 | 0x8000000000000000, v198);
            *(v6 + 6) = 2080;
            v82 = [v12 name];
            v169 = v58;
            v83 = v82;
            v84 = sub_25B161B34();
            v86 = v85;

            v87 = sub_25B108480(v84, v86, v198);
            v15 = v192;

            *(v6 + 14) = v87;
            *(v6 + 11) = 2080;
            v88 = [v79 name];
            v23 = sub_25B161B34();
            v90 = v89;

            v91 = sub_25B108480(v23, v90, v198);

            *(v6 + 3) = v91;
            _os_log_impl(&dword_25B105000, v80, v24, "%s: Did not find primary control characteristic for service %s for serviceGroup %s, continuing to next service", v6, 0x20u);
            swift_arrayDestroy();
            v92 = v81;
            v3 = v186;
            MEMORY[0x25F862BF0](v92, -1, -1);
            MEMORY[0x25F862BF0](v6, -1, -1);

            v21 = v190;
            v169(v190, v3);
            goto LABEL_6;
          }

          v21 = v190;
        }

        else
        {
          v58 = *v15;
          (*v15)(v193, v3);
          v12 = v34;
          v24 = v6;
          v59 = sub_25B1619F4();
          v6 = sub_25B161D64();

          if (os_log_type_enabled(v59, v6))
          {
            v60 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v198[0] = v169;
            *v60 = v172;
            *(v60 + 4) = sub_25B108480(0xD00000000000001CLL, v184 | 0x8000000000000000, v198);
            *(v60 + 12) = 2080;
            v61 = [v12 serviceType];
            v195 = v58;
            v62 = v61;
            v63 = sub_25B161B34();
            v65 = v64;

            v66 = sub_25B108480(v63, v65, v198);

            *(v60 + 14) = v66;
            *(v60 + 22) = 2080;
            v67 = [v12 name];
            v68 = sub_25B161B34();
            v70 = v69;

            v71 = sub_25B108480(v68, v70, v198);
            v15 = v192;

            *(v60 + 24) = v71;
            *(v60 + 32) = 2080;
            v72 = [v24 name];
            v23 = sub_25B161B34();
            v24 = v73;

            v74 = sub_25B108480(v23, v24, v198);

            *(v60 + 34) = v74;
            _os_log_impl(&dword_25B105000, v59, v6, "%s: ServiceType %s for service %s for serviceGroup %s is not supported.", v60, 0x2Au);
            v75 = v169;
            swift_arrayDestroy();
            v21 = v190;
            MEMORY[0x25F862BF0](v75, -1, -1);
            v76 = v60;
            v3 = v186;
            MEMORY[0x25F862BF0](v76, -1, -1);

            v195(v21, v3);
            goto LABEL_6;
          }
        }

        v58(v21, v3);
LABEL_6:
        ++v9;
        v28 = v181;
        if (v194 == v175)
        {
        }
      }
    }
  }
}