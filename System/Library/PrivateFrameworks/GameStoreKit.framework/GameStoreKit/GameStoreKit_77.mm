void *_s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = sub_24F9285B8();
  v66 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_24F92AC28();
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = *a2;
  if (!*a2)
  {
    v24 = MEMORY[0x277D84F90];

    return sub_24E609724(v24);
  }

  v81 = *(a2 + 8);
  v23 = *(a2 + 24);
  sub_24E60169C(a1, v15, &qword_27F212F48, &unk_24F93A2D0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F212F48, &unk_24F93A2D0);
LABEL_9:
    v84 = v22;
    v85 = v81;
    LOBYTE(v86) = v23 & 1;
    return sub_24EDCA028(&v84);
  }

  (*(v17 + 32))(v21, v15, v16);
  if (sub_24F928328())
  {
    (*(v17 + 8))(v21, v16);
    goto LABEL_9;
  }

  v78 = v21;
  v63 = v17;
  v70 = v8;
  v71 = v16;
  v69 = v9;
  v26 = MEMORY[0x277D84F90];
  v27 = sub_24E609724(MEMORY[0x277D84F90]);
  v76 = *(v22 + 16);
  v77 = v27;
  if (!v76)
  {
LABEL_28:
    v41 = *(v26 + 2);
    v42 = v71;
    if (v41)
    {
      v43 = (v26 + 32);
      v44 = (v63 + 8);
      *&v81 = v64 + 6;
      v67 = (v64 + 2);
      v68 = (v64 + 4);
      v65 = (v63 + 8);
      v66 += 2;
      v63 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      ++v64;
      v46 = v69;
      v45 = v70;
      do
      {
        sub_24E772674(v43, &v84);
        v47 = v80;
        sub_24F928398();
        sub_24F9282B8();
        v48 = *v44;
        (*v44)(v47, v42);
        if ((*v81)(v45, 1, v46) == 1)
        {
          sub_24E7726D0(&v84);
          sub_24E601704(v45, &qword_27F2213B0, &qword_24F965EC0);
        }

        else
        {
          v76 = v48;
          v49 = v79;
          (*v68)(v79, v45, v46);
          (*v67)(v72, v49, v46);
          (*v66)(v73, v75, v74);
          sub_24EDCB6C8();
          v50 = sub_24F92B6A8();
          v51 = sub_24F45D748(v50);

          v52 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v52;
          v55 = sub_24E76D6EC(&v84);
          v56 = v52[2];
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_50;
          }

          v59 = v54;
          if (v52[3] >= v58)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8ADDC8();
            }
          }

          else
          {
            sub_24E899498(v58, isUniquelyReferenced_nonNull_native);
            v60 = sub_24E76D6EC(&v84);
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_52;
            }

            v55 = v60;
          }

          v46 = v69;
          v45 = v70;
          v62 = v83;
          v77 = v83;
          if (v59)
          {
            *(v83[7] + 8 * v55) = v51;
          }

          else
          {
            sub_24E772674(&v84, v82);
            sub_24EC2579C(v55, v82, v51, v62);
          }

          (*v64)(v79, v46);
          sub_24E7726D0(&v84);
          v42 = v71;
          v44 = v65;
          v48 = v76;
        }

        v43 += 136;
        --v41;
      }

      while (v41);
    }

    else
    {

      v48 = *(v63 + 8);
    }

    v48(v78, v42);
    return v77;
  }

  v28 = 0;
  v29 = v22 + 48;
  while (v28 < *(v22 + 16))
  {
    v30 = v22;
    v31 = *v29;
    v32 = *(*v29 + 16);
    v33 = *(v26 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_47;
    }

    *&v81 = *(v29 - 8);

    swift_bridgeObjectRetain_n();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v26 + 3) >> 1, v36 >= v34))
    {
      if (*(v31 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v26 = sub_24E6165F4(v35, v37, 1, v26);
      v36 = *(v26 + 3) >> 1;
      if (*(v31 + 16))
      {
LABEL_24:
        if (v36 - *(v26 + 2) < v32)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v26 + 2);
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_51;
          }

          *(v26 + 2) = v40;
        }

        goto LABEL_13;
      }
    }

    if (v32)
    {
      goto LABEL_48;
    }

LABEL_13:
    v28 = (v28 + 1);

    v29 += 24;
    v22 = v30;
    if (v76 == v28)
    {
      goto LABEL_28;
    }
  }

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
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void *_s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(uint64_t a1)
{
  v2 = sub_24E608B90(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &qword_24F987810;
  v32 = v7;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_24E772674(*(a1 + 48) + 136 * v12, v39);
    v13 = *(*(a1 + 56) + 8 * v12);
    v36[6] = v39[6];
    v36[7] = v39[7];
    v36[2] = v39[2];
    v36[3] = v39[3];
    v36[4] = v39[4];
    v36[5] = v39[5];
    v36[0] = v39[0];
    v36[1] = v39[1];
    v37 = v40;
    v38 = v13;
    v14 = v9;
    sub_24E60169C(v36, v33, &qword_27F22A670, v9);

    v16 = v34;
    v15 = v35;

    sub_24E7726D0(v33);
    v17 = sub_24EDC5B94(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_24E76D644(v16, v15);
    v21 = v2[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v2[3] < v24)
    {
      sub_24E899E48(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_24E76D644(v16, v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v9 = v14;
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_24E8AE2C4();
    v19 = v30;
    v9 = v14;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      *(v2[7] + 8 * v10) = v17;

      goto LABEL_5;
    }

LABEL_17:
    v2[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v2[6] + 16 * v19);
    *v27 = v16;
    v27[1] = v15;
    *(v2[7] + 8 * v19) = v17;
    v28 = v2[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v2[2] = v29;
LABEL_5:
    v6 &= v6 - 1;
    sub_24E601704(v36, &qword_27F22A670, v9);
    v7 = v32;
    v3 = a1 + 64;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24EDCB04C()
{
  result = qword_27F22FCD0;
  if (!qword_27F22FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCD0);
  }

  return result;
}

unint64_t sub_24EDCB0A0()
{
  result = qword_27F22FCE0;
  if (!qword_27F22FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCE0);
  }

  return result;
}

unint64_t sub_24EDCB14C()
{
  result = qword_27F22FCE8;
  if (!qword_27F22FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCE8);
  }

  return result;
}

unint64_t sub_24EDCB1A4()
{
  result = qword_27F22FCF0;
  if (!qword_27F22FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCF0);
  }

  return result;
}

unint64_t sub_24EDCB1FC()
{
  result = qword_27F22FCF8;
  if (!qword_27F22FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCF8);
  }

  return result;
}

unint64_t sub_24EDCB254()
{
  result = qword_27F22FD00;
  if (!qword_27F22FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD00);
  }

  return result;
}

uint64_t sub_24EDCB2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_24EDCB300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDCB3B4()
{
  result = qword_27F22FD08;
  if (!qword_27F22FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD08);
  }

  return result;
}

unint64_t sub_24EDCB40C()
{
  result = qword_27F22FD10;
  if (!qword_27F22FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD10);
  }

  return result;
}

unint64_t sub_24EDCB464()
{
  result = qword_27F22FD18;
  if (!qword_27F22FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD18);
  }

  return result;
}

uint64_t sub_24EDCB4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x567363697274656DLL && a2 == 0xEC00000065756C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24EDCB620()
{
  result = qword_27F22FD20;
  if (!qword_27F22FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD20);
  }

  return result;
}

unint64_t sub_24EDCB674()
{
  result = qword_27F22FD28;
  if (!qword_27F22FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD28);
  }

  return result;
}

unint64_t sub_24EDCB6C8()
{
  result = qword_27F22FD30;
  if (!qword_27F22FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD30);
  }

  return result;
}

uint64_t sub_24EDCB76C(unsigned __int8 a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDCB7D0()
{
  sub_24F92D068();
  sub_24EDCB744(v2, *v0);
  return sub_24F92D0B8();
}

uint64_t sub_24EDCB810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24EDCDD48(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateActivityInstanceAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24EDCC2B0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F99F0B0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EDCBA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v8 = sub_24F928AE8();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[19] = v9;
  *v9 = v4;
  v9[1] = sub_24EDCBB74;

  return sub_24EDCC478(a2, a3, a4);
}

uint64_t sub_24EDCBB74()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24EDCBCC0, 0, 0);
  }
}

uint64_t sub_24EDCBCC0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  sub_24E60169C(v2 + *(updated + 24), v0 + 56, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80((v0 + 56), v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v7 = type metadata accessor for UpdateActivityInstanceActionImplementation(0, v1, v5, v6);
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_24EDCBDCC;
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);

  return sub_24F1487B0(v9, v0 + 16, v10, v7, WitnessTable);
}

uint64_t sub_24EDCBDCC()
{
  v2 = *v1;
  v2[21] = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  if (v0)
  {
    v3 = sub_24EDCBF8C;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v3 = sub_24EDCBF00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDCBF00()
{
  (*(v0[17] + 104))(v0[12], *MEMORY[0x277D21CA8], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDCBF8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDCC058()
{
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  v2 = v0 + ((*(*(updated - 8) + 80) + 24) & ~*(*(updated - 8) + 80));

  v3 = type metadata accessor for ActivityDefinitionDetail(0);
  v4 = *(v3 + 32);
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 56);
  v8 = sub_24F920818();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + *(updated + 24)));
  v10 = *(updated + 28);
  v11 = sub_24F928AD8();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_24EDCC2B0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EDCC314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdateActivityInstanceAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EDCBA64(a1, v1 + v6, v7, v4);
}

uint64_t sub_24EDCC430()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDCC478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v4 = sub_24F920418();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_24F9203B8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v7 = sub_24F91F4A8();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for GameActivityDraftBuilder();
  v9 = swift_task_alloc();
  v3[39] = v9;
  *v9 = v3;
  v9[1] = sub_24EDCC79C;

  return MEMORY[0x28217F228](v3 + 12, v8, v8);
}

uint64_t sub_24EDCC79C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_24EDCDAC4;
  }

  else
  {
    v2 = sub_24EDCC8B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDCC8B0()
{
  v1 = v0[12];
  v0[41] = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[42] = v2;
  if (!v2)
  {
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    __swift_project_value_buffer(v17, qword_27F39E8B0);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BDB8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "UpdateActivityInstanceActionImplementation failed to fetch  MultiplayerActivityDraft", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v21 = v0[17];

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError(0, v21, v22, v23);
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();

    goto LABEL_13;
  }

  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[30];
  v6 = v0[31];
  type metadata accessor for UpdateActivityInstanceAction(0);

  sub_24F91F488();
  sub_24E60169C(v3, v4, &qword_27F228530, &unk_24F93C6E0);
  v7 = *(v6 + 48);
  v0[43] = v7;
  v0[44] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v4, 1, v5) == 1)
  {
    sub_24E601704(v0[37], &qword_27F228530, &unk_24F93C6E0);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8B0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "UpdateActivityInstanceActionImplementation failed to instantiate party URL", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[38];
    v13 = v0[17];

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError(0, v13, v14, v15);
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
LABEL_13:

    v25 = v0[1];

    return v25();
  }

  v27 = v0[37];
  v28 = v0[34];
  v29 = v0[30];
  v30 = v0[31];
  v31 = *(v30 + 32);
  v0[45] = v31;
  v0[46] = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v31(v28, v27, v29);
  v32 = type metadata accessor for ASKBagContract(0);
  v33 = swift_task_alloc();
  v0[47] = v33;
  *v33 = v0;
  v33[1] = sub_24EDCCD90;

  return MEMORY[0x28217F228](v0 + 13, v32, v32);
}

uint64_t sub_24EDCCD90()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24EDCDBD4;
  }

  else
  {
    v2 = sub_24EDCCEA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDCCEA4()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for ActivityDefinitionDetail(0);
  if (!*(v1 + *(v2 + 48) + 8))
  {
    ASKBagContract.language.getter();
    v1 = *(v0 + 120);
  }

  v95 = v2;
  if (*(v1 + *(v2 + 52) + 8))
  {
  }

  else
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = sub_24F92B098();
    sub_24F92A448();

    sub_24F92A3F8();
    (*(v3 + 8))(v4, v5);
    if (!*(v0 + 88))
    {

      if (qword_27F211420 != -1)
      {
        swift_once();
      }

      v60 = sub_24F9220D8();
      __swift_project_value_buffer(v60, qword_27F39E8B0);
      v61 = sub_24F9220B8();
      v62 = sub_24F92BDB8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_24E5DD000, v61, v62, "UpdateActivityDefinitionActionImplementation partyURLString is missing.", v63, 2u);
        MEMORY[0x2530542D0](v63, -1, -1);
      }

      v16 = *(v0 + 304);
      v64 = *(v0 + 272);
      v65 = *(v0 + 240);
      v66 = *(v0 + 248);
      v67 = *(v0 + 136);

      type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError(0, v67, v68, v69);
      swift_getWitnessTable();
      swift_allocError();
      *v70 = 3;
      swift_willThrow();

      (*(v66 + 8))(v64, v65);
      goto LABEL_26;
    }
  }

  v7 = *(v0 + 344);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 240);

  sub_24F91F488();

  sub_24E60169C(v8, v9, &qword_27F228530, &unk_24F93C6E0);
  if (v7(v9, 1, v10) == 1)
  {
    v11 = *(v0 + 280);

    sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E8B0);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BDB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "UpdateActivityDefinitionActionImplementation can not instantiate activity instance data as we do not have a storefront and locale metadata.", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    v18 = *(v0 + 272);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 136);

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError(0, v21, v22, v23);
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    sub_24E601704(v17, &qword_27F228530, &unk_24F93C6E0);
    (*(v20 + 8))(v18, v19);
LABEL_26:
    sub_24E601704(v16, &qword_27F228530, &unk_24F93C6E0);

    v71 = *(v0 + 8);
    goto LABEL_29;
  }

  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 176);
  v91 = *(v0 + 168);
  v30 = *(v0 + 160);
  (*(v0 + 360))(v25, *(v0 + 280), v28);
  (*(v27 + 16))(v26, v25, v28);
  *(v0 + 40) = sub_24F9201E8();
  *(v0 + 48) = sub_24EDCDDB8(&qword_27F223D08, MEMORY[0x277D0C9B8], MEMORY[0x277D0C9B0]);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_24F9201D8();
  sub_24F9203C8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_24F9203A8();
  if ((*(v29 + 48))(v30, 1, v91) == 1)
  {
    sub_24E601704(*(v0 + 160), &qword_27F2142B8, &unk_24F954820);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v31 = sub_24F9220D8();
    __swift_project_value_buffer(v31, qword_27F39E8B0);
    v32 = sub_24F9220B8();
    v33 = sub_24F92BDB8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24E5DD000, v32, v33, "UpdateActivityInstanceActionImplementation failed to instantiate GameACtivityInstance from party url", v34, 2u);
      MEMORY[0x2530542D0](v34, -1, -1);
    }

    v16 = *(v0 + 304);
    v92 = *(v0 + 288);
    v96 = *(v0 + 272);
    v88 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 248);
    v38 = *(v0 + 200);
    v37 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 136);

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError(0, v40, v41, v42);
    swift_getWitnessTable();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();

    (*(v38 + 8))(v37, v39);
    v44 = *(v36 + 8);
    v44(v88, v35);
    sub_24E601704(v92, &qword_27F228530, &unk_24F93C6E0);
    v44(v96, v35);
    goto LABEL_26;
  }

  v45 = *(v0 + 328);
  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  if (*(v45 + 16) && (v46 = *(v0 + 328), v47 = *(v0 + 176), v48 = *(v0 + 168), v49 = *(v0 + 152), (*(v47 + 16))(v49, *(v0 + 184), v48), (*(v47 + 56))(v49, 0, 1, v48), , sub_24F34E2DC(v49), , (v50 = *(v46 + 16)) != 0))
  {
    v98 = *(v0 + 304);
    v89 = *(v0 + 288);
    v93 = *(v0 + 272);
    v86 = *(v0 + 264);
    v51 = *(v0 + 248);
    v52 = *(v0 + 200);
    v84 = *(v0 + 208);
    v85 = *(v0 + 240);
    v83 = *(v0 + 192);
    v53 = *(v0 + 176);
    v81 = *(v0 + 168);
    v82 = *(v0 + 184);
    v54 = *(v0 + 144);
    sub_24EDCDD48(*(v0 + 120), v54, type metadata accessor for ActivityDefinitionDetail);
    (*(*(v95 - 8) + 56))(v54, 0, 1);
    swift_getKeyPath();
    v55 = swift_task_alloc();
    *(v55 + 16) = v50;
    *(v55 + 24) = v54;
    *(v0 + 112) = v50;
    sub_24EDCDDB8(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

    sub_24F91FD78();

    (*(v53 + 8))(v82, v81);
    (*(v52 + 8))(v84, v83);
    v56 = *(v51 + 8);
    v56(v86, v85);
    sub_24E601704(v89, &qword_27F228530, &unk_24F93C6E0);
    v56(v93, v85);
    sub_24E601704(v98, &qword_27F228530, &unk_24F93C6E0);

    v57 = &qword_27F2142A0;
    v58 = &unk_24F94CF90;
    v59 = v54;
  }

  else
  {
    v97 = *(v0 + 272);
    v99 = *(v0 + 304);
    v90 = *(v0 + 264);
    v94 = *(v0 + 288);
    v73 = *(v0 + 240);
    v72 = *(v0 + 248);
    v74 = *(v0 + 200);
    v87 = *(v0 + 208);
    v75 = *(v0 + 184);
    v76 = *(v0 + 192);
    v77 = *(v0 + 168);
    v78 = *(v0 + 176);

    (*(v78 + 8))(v75, v77);
    (*(v74 + 8))(v87, v76);
    v79 = *(v72 + 8);
    v79(v90, v73);
    sub_24E601704(v94, &qword_27F228530, &unk_24F93C6E0);
    v79(v97, v73);
    v59 = v99;
    v57 = &qword_27F228530;
    v58 = &unk_24F93C6E0;
  }

  sub_24E601704(v59, v57, v58);

  v71 = *(v0 + 8);
LABEL_29:

  return v71();
}

uint64_t sub_24EDCDAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDCDBD4()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  sub_24E601704(v1, &qword_27F228530, &unk_24F93C6E0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EDCDD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDCDDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ReviewSummary.SubtitleArtworkAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t ReviewSummary.__allocating_init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v13 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v33 = *a7;
  v19 = v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id;
  sub_24E60169C(a1, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v20 = v41;
    *v19 = v40;
    *(v19 + 16) = v20;
    *(v19 + 32) = v42;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v32 = a6;
    v22 = a8;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v38 = v21;
    v39 = v24;
    a8 = v22;
    v13 = a9;
    a6 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_24F91F008();
  v27 = *(*(v26 - 8) + 32);
  v27(v18 + v25, v34, v26);
  v27(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v35, v26);
  v28 = (v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork) = a6;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment) = v33;
  sub_24E65E0D4(v13, v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = a8;
  return v18;
}

uint64_t ReviewSummary.init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v35 = a9;
  v36 = a8;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a7;
  sub_24E60169C(a1, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v16 + 8))(v18, v15);
    v37 = v20;
    v38 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v23 = v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id;
  v24 = v43;
  *v23 = v42;
  *(v23 + 16) = v24;
  *(v23 + 32) = v44;
  v25 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_24F91F008();
  v27 = *(*(v26 - 8) + 32);
  v27(v10 + v25, a2, v26);
  v27(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, a3, v26);
  v28 = (v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;
  v30 = v35;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork) = v34;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment) = v19;
  sub_24E65E0D4(v30, v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = v36;
  return v10;
}

uint64_t ReviewSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewSummary.init(deserializing:using:)(a1, a2);
  return v4;
}

char *ReviewSummary.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = *v3;
  v149 = v3;
  v144 = v5;
  v147 = sub_24F9285B8();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v128 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v110 - v12;
  v139 = sub_24F91EE98();
  v135 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v134 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_24F91EEA8();
  v133 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v15 - 8);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v131 = &v110 - v22;
  v137 = sub_24F91F008();
  v140 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v125 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v129 = &v110 - v25;
  v26 = sub_24F91F6B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_24F928388();
  v30 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v122 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v110 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v110 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v110 - v41;
  v148 = a1;
  sub_24F928398();
  v43 = sub_24F928348();
  if (v44)
  {
    v150 = v43;
    v151 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v27 + 8))(v29, v26);
    v150 = v45;
    v151 = v47;
  }

  sub_24F92C7F8();
  v48 = *(v30 + 8);
  v49 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v42, v155);
  v50 = v148;
  v51 = &v149[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id];
  v52 = v153;
  *v51 = v152;
  *(v51 + 16) = v52;
  v143 = v51;
  *(v51 + 32) = v154;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v48(v39, v155);
  if (!v55)
  {
    v74 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v75 = 2036625250;
    v75[1] = 0xE400000000000000;
    v75[2] = v144;
    (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D22530], v74);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v50, v155);
    goto LABEL_13;
  }

  v121 = v53;
  sub_24F928398();
  v119 = sub_24F928348();
  v57 = v56;
  v58 = v155;
  v48(v36, v155);
  if (!v57)
  {

    v76 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v78 = v50;
    swift_allocError();
    v79 = v77;
    *v77 = 0x69546F4E79646F62;
    v80 = 0xEB00000000656C74;
LABEL_12:
    v81 = v144;
    v77[1] = v80;
    v77[2] = v81;
    (*(*(v76 - 8) + 104))(v79, *MEMORY[0x277D22530], v76);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v78, v58);
    goto LABEL_13;
  }

  v120 = v57;
  v59 = v141;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v48(v59, v58);
  if (!v62)
  {
    v78 = v50;

    v76 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v79 = v77;
    *v77 = 0x656C746974627573;
    v80 = 0xE800000000000000;
    goto LABEL_12;
  }

  v112 = v60;
  v118 = v49;
  v141 = v48;
  KeyPath = swift_getKeyPath();
  v63 = *(v133 + 104);
  LODWORD(v133) = *MEMORY[0x277CC8BB0];
  v116 = v63;
  v63(v138);
  v64 = *(v135 + 104);
  v65 = v134;
  LODWORD(v135) = *MEMORY[0x277CC8B98];
  v115 = v64;
  v64(v134);
  sub_24F91EEB8();
  v66 = sub_24F91F4A8();
  v67 = *(v66 - 8);
  v114 = *(v67 + 56);
  v113 = v67 + 56;
  v114(v132, 1, 1, v66);
  v68 = sub_24EDCF79C();
  v69 = v131;
  v132 = v68;
  v70 = v136;
  sub_24F91EFD8();
  if (v70)
  {

    (*(v140 + 56))(v69, 1, 1, v137);
    sub_24E601704(v69, &qword_27F215340, &qword_24F943530);
    v71 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v72 = MEMORY[0x277D84F90];
    *v73 = 2036625250;
    v73[1] = 0xE400000000000000;
    v73[2] = v144;
    v73[3] = v72;
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D22540], v71);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
  }

  else
  {
    v136 = v62;
    v84 = v140;
    v85 = *(v140 + 56);
    v86 = v137;
    KeyPath = 0;
    v130 = (v140 + 56);
    v121 = v85;
    v85(v69, 0, 1, v137);
    v111 = *(v84 + 32);
    v111(v129, v69, v86);
    v131 = swift_getKeyPath();
    v116(v138, v133, v142);
    v115(v65, v135, v139);
    sub_24F91EEB8();
    v114(v128, 1, 1, v66);
    v87 = v127;
    v88 = KeyPath;
    sub_24F91EFD8();
    if (!v88)
    {
      v121(v87, 0, 1, v86);
      v93 = v125;
      v111(v125, v87, v86);
      v94 = *(v140 + 16);
      v82 = v149;
      v94(&v149[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle], v129, v86);
      v94(&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle], v93, v86);
      v95 = &v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle];
      v96 = v136;
      *v95 = v112;
      v95[1] = v96;
      sub_24F929608();
      v97 = v122;
      v98 = v148;
      sub_24F928398();
      v99 = v145 + 16;
      v144 = *(v145 + 16);
      v100 = v124;
      v144(v124, v146, v147);
      v143 = v99;
      v101 = v123;
      sub_24F929548();
      sub_24E65E0D4(v101, &v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics]);
      type metadata accessor for Artwork(0);
      sub_24F928398();
      v102 = v146;
      v144(v100, v146, v147);
      sub_24EDD02A8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v103 = v100;
      sub_24F929548();
      *&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork] = v152;
      sub_24F928398();
      sub_24EDCF7F0();
      sub_24F928208();
      (v141)(v97, v155);
      v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment] = v152;
      type metadata accessor for FlowPreviewActionsConfiguration();
      v104 = v98;
      sub_24F928398();
      v105 = v102;
      v106 = v102;
      v107 = v147;
      v144(v103, v106, v147);
      sub_24EDD02A8(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
      sub_24F929548();
      (*(v145 + 8))(v105, v107);
      (v141)(v104, v155);
      v108 = *(v140 + 8);
      v109 = v137;
      v108(v125, v137);
      v108(v129, v109);
      *&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration] = v152;
      return v82;
    }

    v121(v87, 1, 1, v86);
    sub_24E601704(v87, &qword_27F215340, &qword_24F943530);
    v89 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v90 = MEMORY[0x277D84F90];
    *v91 = 0x69546F4E79646F62;
    v92 = v144;
    v91[1] = 0xEB00000000656C74;
    v91[2] = v92;
    v91[3] = v90;
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x277D22540], v89);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
    (*(v140 + 8))(v129, v86);
  }

LABEL_13:
  sub_24E6585F8(v143);
  v82 = v149;
  swift_deallocPartialClassInstance();
  return v82;
}

unint64_t sub_24EDCF79C()
{
  result = qword_27F22FE48;
  if (!qword_27F22FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE48);
  }

  return result;
}

unint64_t sub_24EDCF7F0()
{
  result = qword_27F22FE50;
  if (!qword_27F22FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE50);
  }

  return result;
}

uint64_t sub_24EDCF85C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F008();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReviewSummary.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);

  return v1;
}

uint64_t ReviewSummary.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_24F91F008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id);
  return v0;
}

uint64_t ReviewSummary.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_24F91F008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id);

  return swift_deallocClassInstance();
}

char *sub_24EDCFBC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ReviewSummary.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t JetFontAttribute.Value.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24EDCFCC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "chase";
  }

  else
  {
    v4 = "reviewSummaryTitle";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "reviewSummaryTitle";
  }

  else
  {
    v6 = "chase";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

void sub_24EDCFD78(unint64_t *a1@<X8>)
{
  v2 = "reviewSummaryTitle";
  v3 = 0xD000000000000011;
  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = "chase";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_24EDCFE64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDCFEE0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EDCFF48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDD012C(uint64_t a1)
{
  sub_24EDCF79C();

  return sub_24F91EC68();
}

uint64_t sub_24EDD0178(uint64_t a1)
{
  sub_24EDCF79C();

  return sub_24F91EC68();
}

unint64_t sub_24EDD020C()
{
  result = qword_27F22FE58;
  if (!qword_27F22FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE58);
  }

  return result;
}

uint64_t sub_24EDD02A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ReviewSummary(uint64_t a1)
{
  result = qword_27F22FE90;
  if (!qword_27F22FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDD0340()
{
  result = qword_27F22FE68;
  if (!qword_27F22FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE68);
  }

  return result;
}

unint64_t sub_24EDD0398()
{
  result = qword_27F22FE70;
  if (!qword_27F22FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE70);
  }

  return result;
}

unint64_t sub_24EDD03F0()
{
  result = qword_27F22FE78;
  if (!qword_27F22FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE78);
  }

  return result;
}

unint64_t sub_24EDD0448()
{
  result = qword_27F22FE80;
  if (!qword_27F22FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE80);
  }

  return result;
}

unint64_t sub_24EDD04A0()
{
  result = qword_27F22FE88;
  if (!qword_27F22FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE88);
  }

  return result;
}

void sub_24EDD04FC(uint64_t a1)
{
  sub_24F91F008();
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_24EDD068C()
{
  result = qword_27F22FEA0;
  if (!qword_27F22FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEA0);
  }

  return result;
}

unint64_t sub_24EDD06E0()
{
  result = qword_27F22FEA8;
  if (!qword_27F22FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEA8);
  }

  return result;
}

unint64_t sub_24EDD0734()
{
  result = qword_27F22FEB0;
  if (!qword_27F22FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEB0);
  }

  return result;
}

unint64_t sub_24EDD0788()
{
  result = qword_27F22FEB8[0];
  if (!qword_27F22FEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22FEB8);
  }

  return result;
}

void sub_24EDD07E0(uint64_t a1)
{
  sub_24EDD0C80();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EDD0880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 9) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 17) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24EDD0A0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 25) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (a1 + 9) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 17) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 16) = 0;
    *v19 = a2 & 0x7FFFFFFF;
    *(v19 + 8) = 0;
  }

  else
  {
    *(v19 + 8) = a2 - 1;
  }
}

void sub_24EDD0C80()
{
  if (!qword_27F22FF40[0])
  {
    v0 = sub_24F923388();
    if (!v1)
    {
      atomic_store(v0, qword_27F22FF40);
    }
  }
}

uint64_t sub_24EDD0CE8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EDD0D70(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 2] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24EDD0EF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t sub_24EDD1154()
{
  result = qword_27F22FFC8;
  if (!qword_27F22FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FFC8);
  }

  return result;
}

double sub_24EDD11EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFD0, &qword_24F99F870);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFD8, &qword_24F99F878);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-v12];
  *v9 = sub_24F927618();
  v9[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFE0, &qword_24F99F880);
  sub_24EDD153C(v3, *(a1 + 16), *(a1 + 24), v15);
  v16 = v9 + *(v7 + 44);
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #24.0 }

  *v16 = _Q0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v9, v13, &qword_27F22FFD0, &qword_24F99F870);
  v25 = &v13[*(v11 + 44)];
  v26 = v36;
  v25[4] = v35;
  v25[5] = v26;
  v25[6] = v37;
  v27 = *&v32[24];
  *v25 = *&v32[8];
  v25[1] = v27;
  v28 = v34;
  v25[2] = v33;
  v25[3] = v28;
  if ((*v3 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_8;
    }

LABEL_7:
    swift_once();
    goto LABEL_8;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v13, a2, &qword_27F22FFD8, &qword_24F99F878);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFE8, &qword_24F99F888) + 36));
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  result = *&v40;
  v29[2] = v40;
  return result;
}

uint64_t sub_24EDD153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OverlayControlsModule(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v14, a1 + *(v15 + 40), a2, v12);
  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFF0, &qword_24F99F890);
  v20 = sub_24EDD30E8();
  return MEMORY[0x25304CBA0](v14, sub_24EDD30BC, v18, v19, a2, v20, a3);
}

uint64_t sub_24EDD1744@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v80 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230058, &unk_24F99F8C0);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230048, &qword_24F99F8B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230038, &qword_24F99F8B0);
  MEMORY[0x28223BE20](v73);
  v11 = &v72 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230028, &qword_24F99F8A8);
  MEMORY[0x28223BE20](v74);
  v13 = &v72 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230018, &qword_24F99F8A0);
  MEMORY[0x28223BE20](v75);
  v78 = &v72 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008, &qword_24F99F898);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - v15;
  v16 = sub_24F925838();
  v17 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v17 = sub_24F925848();
  }

  v79 = a2;
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_24F927308();
  (*(*(v26 - 8) + 16))(v6, v72, v26);
  v27 = &v6[*(v4 + 36)];
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  v28 = sub_24F925858();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24E6009C8(v6, v9, &qword_27F230058, &unk_24F99F8C0);
  v38 = &v9[*(v7 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_24F925818();
  v40 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v39)
  {
    v40 = sub_24F925848();
  }

  sub_24F923318();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_24E6009C8(v9, v11, &qword_27F230048, &qword_24F99F8B8);
  v49 = &v11[*(v73 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_24F925828();
  v51 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v50)
  {
    v51 = sub_24F925848();
  }

  sub_24F923318();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24E6009C8(v11, v13, &qword_27F230038, &qword_24F99F8B0);
  v60 = &v13[*(v74 + 36)];
  *v60 = v51;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v61 = v78;
  sub_24E6009C8(v13, v78, &qword_27F230028, &qword_24F99F8A8);
  v62 = (v61 + *(v75 + 36));
  v63 = v86;
  v62[4] = v85;
  v62[5] = v63;
  v62[6] = v87;
  v64 = v82;
  *v62 = v81;
  v62[1] = v64;
  v65 = v84;
  v62[2] = v83;
  v62[3] = v65;
  if ((*v79 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_16;
    }

LABEL_15:
    swift_once();
    goto LABEL_16;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_24F927618();
  sub_24F9238C8();
  v66 = v77;
  sub_24E6009C8(v61, v77, &qword_27F230018, &qword_24F99F8A0);
  v67 = (v66 + *(v76 + 36));
  v68 = v89;
  *v67 = v88;
  v67[1] = v68;
  v67[2] = v90;
  v69 = v66;
  v70 = v80;
  sub_24E6009C8(v69, v80, &qword_27F230008, &qword_24F99F898);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFF0, &qword_24F99F890);
  *(v70 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_24EDD1E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
  sub_24F923378();
  return v1;
}

double sub_24EDD1EEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v64 = sub_24F924B38();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230060, &qword_24F99F8D0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v61 - v7);
  *&v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230068, &qword_24F99F8D8);
  v9 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230070, &qword_24F99F8E0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230078, &qword_24F99F8E8);
  MEMORY[0x28223BE20](v65);
  v17 = &v61 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230080, &qword_24F99F8F0);
  MEMORY[0x28223BE20](v66);
  v67 = &v61 - v18;
  *v8 = sub_24F927618();
  v8[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230088, &qword_24F99F8F8);
  sub_24EDD26E0(v3, *(a1 + 16), *(a1 + 24), v20);
  v21 = sub_24EDD34E0();
  sub_24F926B78();
  sub_24EDD35C4(v8);
  v68 = v3;
  sub_24EDD1E90();
  *&v70 = v6;
  *(&v70 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v61;
  sub_24F9269C8();

  (*(v9 + 8))(v11, v22);
  v23 = &v15[*(v13 + 44)];
  v24 = sub_24F924258();
  v25 = *MEMORY[0x277CE0118];
  v26 = v63;
  v27 = *(v63 + 104);
  v28 = v64;
  v27(&v23[*(v24 + 20)], v25, v64);
  __asm { FMOV            V0.2D, #24.0 }

  v61 = _Q0;
  *v23 = _Q0;
  v34 = v62;
  v27(v62, v25, v28);
  *(&v71 + 1) = v24;
  *&v72 = sub_24EDD362C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
  (*(v26 + 16))(boxed_opaque_existential_1 + *(v24 + 20), v34, v28);
  *boxed_opaque_existential_1 = v61;
  (*(v26 + 8))(v34, v28);
  sub_24E60169C(&v70, v17, &qword_27F2300A8, &qword_24F99F910);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300B0, &qword_24F99F918);
  sub_24E60169C(v15, &v17[v36[9]], &qword_27F230070, &qword_24F99F8E0);
  v37 = &v17[v36[10]];
  *v37 = sub_24F923398() & 1;
  *(v37 + 1) = v38;
  v37[16] = v39 & 1;
  v40 = &v17[v36[11]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v41 = qword_27F24E488;
  v42 = sub_24F923398();
  v44 = v43;
  v46 = v45;
  v47 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300B8, &qword_24F99F948) + 36)];
  *v47 = v41;
  v47[8] = v42 & 1;
  *(v47 + 2) = v44;
  v47[24] = v46 & 1;
  LOBYTE(v41) = sub_24F923398();
  v49 = v48;
  LOBYTE(v44) = v50;
  sub_24E601704(&v70, &qword_27F2300A8, &qword_24F99F910);
  sub_24E601704(v15, &qword_27F230070, &qword_24F99F8E0);
  v51 = &v17[*(v65 + 36)];
  *v51 = v41 & 1;
  *(v51 + 1) = v49;
  v51[16] = v44 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v52 = v67;
  sub_24E6009C8(v17, v67, &qword_27F230078, &qword_24F99F8E8);
  v53 = (v52 + *(v66 + 36));
  v54 = v75;
  v53[4] = v74;
  v53[5] = v54;
  v53[6] = v76;
  v55 = v71;
  *v53 = v70;
  v53[1] = v55;
  v56 = v73;
  v53[2] = v72;
  v53[3] = v56;
  if ((*v68 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_10;
    }

LABEL_9:
    swift_once();
    goto LABEL_10;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_24F927618();
  sub_24F9238C8();
  v57 = v69;
  sub_24E6009C8(v52, v69, &qword_27F230080, &qword_24F99F8F0);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300C0, &unk_24F99F950) + 36));
  v59 = v78;
  *v58 = v77;
  v58[1] = v59;
  result = *&v79;
  v58[2] = v79;
  return result;
}

uint64_t sub_24EDD26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OverlayControlsFocusableModule(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v14, a1 + *(v15 + 44), a2, v12);
  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008, &qword_24F99F898);
  v20 = sub_24EDD31A0();
  return MEMORY[0x25304CBA0](v14, sub_24EDD3784, v18, v19, a2, v20, a3);
}

double sub_24EDD28E8@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230058, &unk_24F99F8C0);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230048, &qword_24F99F8B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230038, &qword_24F99F8B0);
  MEMORY[0x28223BE20](v72);
  v11 = &v71 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230028, &qword_24F99F8A8);
  MEMORY[0x28223BE20](v73);
  v13 = &v71 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230018, &qword_24F99F8A0);
  MEMORY[0x28223BE20](v74);
  v75 = &v71 - v14;
  v15 = sub_24F925838();
  v16 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v15)
  {
    v16 = sub_24F925848();
  }

  v76 = a2;
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_24F927308();
  (*(*(v25 - 8) + 16))(v6, v71, v25);
  v26 = &v6[*(v4 + 36)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  v27 = sub_24F925858();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24E6009C8(v6, v9, &qword_27F230058, &unk_24F99F8C0);
  v37 = &v9[*(v7 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_24F925818();
  v39 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v38)
  {
    v39 = sub_24F925848();
  }

  sub_24F923318();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_24E6009C8(v9, v11, &qword_27F230048, &qword_24F99F8B8);
  v48 = &v11[*(v72 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_24F925828();
  v50 = sub_24F925848();
  sub_24F925848();
  v51 = sub_24F925848();
  v52 = v76;
  if (v51 != v49)
  {
    v50 = sub_24F925848();
  }

  sub_24F923318();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_24E6009C8(v11, v13, &qword_27F230038, &qword_24F99F8B0);
  v61 = &v13[*(v73 + 36)];
  *v61 = v50;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v62 = v75;
  sub_24E6009C8(v13, v75, &qword_27F230028, &qword_24F99F8A8);
  v63 = (v62 + *(v74 + 36));
  v64 = v83;
  v63[4] = v82;
  v63[5] = v64;
  v63[6] = v84;
  v65 = v79;
  *v63 = v78;
  v63[1] = v65;
  v66 = v81;
  v63[2] = v80;
  v63[3] = v66;
  if ((*v52 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_16;
    }

LABEL_15:
    swift_once();
    goto LABEL_16;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_24F927618();
  sub_24F9238C8();
  v67 = v77;
  sub_24E6009C8(v62, v77, &qword_27F230018, &qword_24F99F8A0);
  v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008, &qword_24F99F898) + 36));
  v69 = v86;
  *v68 = v85;
  v68[1] = v69;
  result = *&v87;
  v68[2] = v87;
  return result;
}

uint64_t sub_24EDD2FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for OverlayControlsModule(0, v5, *(v4 + 24), a4);
  (*(*(v5 - 8) + 8))(v4 + *(v6 + 40) + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v5);

  return swift_deallocObject();
}

unint64_t sub_24EDD30E8()
{
  result = qword_27F22FFF8;
  if (!qword_27F22FFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFF0, &qword_24F99F890);
    sub_24EDD31A0();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FFF8);
  }

  return result;
}

unint64_t sub_24EDD31A0()
{
  result = qword_27F230000;
  if (!qword_27F230000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230008, &qword_24F99F898);
    sub_24EDD322C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230000);
  }

  return result;
}

unint64_t sub_24EDD322C()
{
  result = qword_27F230010;
  if (!qword_27F230010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230018, &qword_24F99F8A0);
    sub_24EDD32B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230010);
  }

  return result;
}

unint64_t sub_24EDD32B8()
{
  result = qword_27F230020;
  if (!qword_27F230020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230028, &qword_24F99F8A8);
    sub_24EDD3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230020);
  }

  return result;
}

unint64_t sub_24EDD3344()
{
  result = qword_27F230030;
  if (!qword_27F230030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230038, &qword_24F99F8B0);
    sub_24EDD33D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230030);
  }

  return result;
}

unint64_t sub_24EDD33D0()
{
  result = qword_27F230040;
  if (!qword_27F230040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230048, &qword_24F99F8B8);
    sub_24EDD345C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230040);
  }

  return result;
}

unint64_t sub_24EDD345C()
{
  result = qword_27F230050;
  if (!qword_27F230050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230058, &unk_24F99F8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230050);
  }

  return result;
}

unint64_t sub_24EDD34E0()
{
  result = qword_27F230090;
  if (!qword_27F230090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230060, &qword_24F99F8D0);
    sub_24E602068(&qword_27F230098, &qword_27F2300A0, &unk_24F99F900, MEMORY[0x277CE11A8]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230090);
  }

  return result;
}

uint64_t sub_24EDD35C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230060, &qword_24F99F8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDD362C()
{
  result = qword_27F212868;
  if (!qword_27F212868)
  {
    sub_24F924258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212868);
  }

  return result;
}

uint64_t sub_24EDD368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for OverlayControlsFocusableModule(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t sub_24EDD37B0(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

unint64_t sub_24EDD386C()
{
  result = qword_27F2300C8;
  if (!qword_27F2300C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFE8, &qword_24F99F888);
    sub_24EDD38F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300C8);
  }

  return result;
}

unint64_t sub_24EDD38F8()
{
  result = qword_27F2300D0;
  if (!qword_27F2300D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFD8, &qword_24F99F878);
    sub_24EDD3984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300D0);
  }

  return result;
}

unint64_t sub_24EDD3984()
{
  result = qword_27F2300D8;
  if (!qword_27F2300D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFD0, &qword_24F99F870);
    sub_24EDD3A3C();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300D8);
  }

  return result;
}

unint64_t sub_24EDD3A3C()
{
  result = qword_27F2300E0;
  if (!qword_27F2300E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300E8, &qword_24F99F960);
    sub_24E602068(&qword_27F2300F0, &qword_27F2300F8, &qword_24F99F968, MEMORY[0x277CE11A8]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300E0);
  }

  return result;
}

unint64_t sub_24EDD3B24()
{
  result = qword_27F230100;
  if (!qword_27F230100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300C0, &unk_24F99F950);
    sub_24EDD3BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230100);
  }

  return result;
}

unint64_t sub_24EDD3BB0()
{
  result = qword_27F230108;
  if (!qword_27F230108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230080, &qword_24F99F8F0);
    sub_24EDD3C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230108);
  }

  return result;
}

unint64_t sub_24EDD3C3C()
{
  result = qword_27F230110;
  if (!qword_27F230110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230078, &qword_24F99F8E8);
    sub_24EDD3CC8();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230110);
  }

  return result;
}

unint64_t sub_24EDD3CC8()
{
  result = qword_27F230118;
  if (!qword_27F230118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300B8, &qword_24F99F948);
    sub_24E602068(&qword_27F230120, &qword_27F2300B0, &qword_24F99F918, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230118);
  }

  return result;
}

uint64_t VideoPlayerState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDD3E10()
{
  result = qword_27F230128;
  if (!qword_27F230128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230128);
  }

  return result;
}

uint64_t sub_24EDD3E74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24F92D068();
    sub_24F92B218();

    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v21 = 0xE700000000000000;
      v20 = 0x636972656E6567;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x6D754E656E6F6870;
      }

      else
      {
        v22 = 0x6464416C69616D65;
      }

      if (v15 == 1)
      {
        v23 = 0xEB00000000726562;
      }

      else
      {
        v23 = 0xEC00000073736572;
      }

      if (v20 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_24F92CE08();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x6D754E656E6F6870;
      v21 = 0xEB00000000726562;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0x6464416C69616D65;
    v21 = 0xEC00000073736572;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE700000000000000;
    if (v20 != 0x636972656E6567)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4178(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v49 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v41 = result;
    v12 = (*(result + 48) + ((v8 | (v2 << 6)) << 6));
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v58 = v12[2];
    v59 = v13;
    v56 = v15;
    v57 = v14;
    v16 = v12[1];
    v52 = *v12;
    v53 = v16;
    v17 = v12[3];
    v54 = v12[2];
    v55 = v17;
    v18 = a2;
    sub_24F92D068();
    sub_24E8056D8(&v56, v50);
    PageFacets.Facet.Option.hash(into:)(v51);
    v19 = sub_24F92D0B8();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_48:
      sub_24E805734(&v56);
      return 0;
    }

    v36 = v9;
    v37 = v7;
    v38 = v2;
    v39 = v3;
    v22 = ~v20;
    v23 = *(&v56 + 1);
    v48 = v57;
    v46 = v56;
    v47 = *(&v57 + 1);
    v42 = v59;
    v43 = v58;
    v44 = *(&v59 + 1);
    v45 = *(&v58 + 1);
    v40 = v18;
    v24 = *(v18 + 48);
    while (1)
    {
      v25 = (v24 + (v21 << 6));
      v26 = v25[1];
      v27 = v25[2];
      v29 = v25[3];
      v28 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      v32 = v25[7];
      if (v26)
      {
        if (!v23)
        {
          goto LABEL_16;
        }

        v33 = *v25 == v46 && v26 == v23;
        if (!v33 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v23)
      {
        goto LABEL_16;
      }

      v34 = v27 == v48 && v29 == v47;
      if (!v34 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v30)
      {
        if (!v45)
        {
          goto LABEL_16;
        }

        v35 = v28 == v43 && v30 == v45;
        if (!v35 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v45)
      {
        goto LABEL_16;
      }

      if (v32)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_45;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v44 || (v31 != v42 || v32 != v44) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_45:
    sub_24E805734(&v56);
    a2 = v40;
    result = v41;
    v2 = v38;
    v3 = v39;
    v6 = v36;
    v7 = v37;
  }

  while (v36);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_24F92D068();

    sub_24F92B218();
    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4630(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v25 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24F92D068();
    v28 = v12;
    sub_24F92B218();

    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0x656C6C6174736E69;
      v21 = 0xED0000796C6E4F64;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x6E4F656461637261;
      }

      else
      {
        v22 = 0xD000000000000015;
      }

      if (v15 == 1)
      {
        v23 = 0xEA0000000000796CLL;
      }

      else
      {
        v23 = 0x800000024FA3F9F0;
      }

      if (v20 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_24F92CE08();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x6E4F656461637261;
      v21 = 0xEA0000000000796CLL;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0xD000000000000015;
    v21 = 0x800000024FA3F9F0;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xED0000796C6E4F64;
    if (v20 != 0x656C6C6174736E69)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v25 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_24EDD4930(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_24EDD62C0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    sub_24F922F88();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &unk_27F23B790;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_24EDD68B0(&unk_27F23B790, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      v18 = sub_24F92AEE8();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_24EDD68B0(&qword_27F21E520, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      while ((sub_24F92AFF8() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &unk_27F23B790;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_24EDD4C24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v27 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_24F92D068();
      v15 = v14 ? 7304045 : 1701736302;
      v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19) ? 7304045 : 1701736302;
        v22 = *(*(a2 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
        if (v21 == v15 && v22 == v16)
        {
          break;
        }

        v24 = sub_24F92CE08();

        if (v24)
        {
          goto LABEL_35;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v25;
      v3 = v26;
      v8 = v27;
    }

    while (v27);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4E4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24F92D068();
    MEMORY[0x253052A00](v13);
    result = sub_24F92D0B8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4FBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_24F92D058();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EDD5110(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92AA48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_24EDD68B0(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
        v26 = sub_24F92AEE8();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_24EDD68B0(&qword_27F21BCA8, MEMORY[0x277D224C0], MEMORY[0x277D224D8]);
          v31 = sub_24F92AFF8();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

double CallProviderConversationHandle.conversationHandle.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CallProviderConversationHandle(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t type metadata accessor for CallProviderConversationHandle(uint64_t a1)
{
  result = qword_27F230160;
  if (!qword_27F230160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 CallProviderConversationHandle.conversationHandle.setter(__n128 *a1)
{
  v3 = (v1 + *(type metadata accessor for CallProviderConversationHandle(0) + 20));

  result = *a1;
  *v3 = *a1;
  return result;
}

unint64_t CallProviderConversationHandle.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider(0);
  *(inited + 80) = sub_24EDD68B0(&qword_27F225B48, type metadata accessor for CallProvider, &protocol conformance descriptor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EDD64C0(v2, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA5DE60;
  v6 = (v2 + *(type metadata accessor for CallProviderConversationHandle(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  *(inited + 128) = &type metadata for ConversationHandle;
  *(inited + 136) = sub_24EDD5814();
  *(inited + 104) = v7;
  *(inited + 112) = v8;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_24EDD5814()
{
  result = qword_27F230130;
  if (!qword_27F230130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230130);
  }

  return result;
}

uint64_t static CallProviderConversationHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (_s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for CallProviderConversationHandle(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = *v7;
    v9 = v7[1];

    if (sub_24EA15AB8(v5, v8))
    {
      v10 = sub_24EDD3E74(v6, v9);

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_24EDD5950()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_24EDD5990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA5DE60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDD5A74(uint64_t a1)
{
  v2 = sub_24EDD63C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDD5AB0(uint64_t a1)
{
  v2 = sub_24EDD63C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230138, &qword_24F99FA38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDD63C4();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  type metadata accessor for CallProvider(0);
  sub_24EDD68B0(&qword_27F225B60, type metadata accessor for CallProvider, &protocol conformance descriptor for CallProvider);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CallProviderConversationHandle(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_24EDD6418();

    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for CallProvider(0);
  MEMORY[0x28223BE20](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230150, &qword_24F99FA40);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CallProviderConversationHandle(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDD63C4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  LOBYTE(v20) = 0;
  sub_24EDD68B0(&qword_27F225B70, type metadata accessor for CallProvider, &protocol conformance descriptor for CallProvider);
  v14 = v18;
  sub_24F92CC68();
  sub_24EA45FDC(v19, v12);
  v21 = 1;
  sub_24EDD646C();
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v20;
  sub_24EDD64C0(v12, v16, type metadata accessor for CallProviderConversationHandle);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EDD6528(v12, type metadata accessor for CallProviderConversationHandle);
}

uint64_t sub_24EDD601C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static CallProvider.== infix(_:_:)(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = *(a1 + v6);
    v9 = *(v7 + 8);
    v10 = (a2 + v6);
    v11 = *v10;
    v12 = v10[1];

    if (sub_24EA15AB8(v8, v11))
    {
      v13 = sub_24EDD3E74(v9, v12);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_24EDD6100@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider(0);
  *(inited + 80) = sub_24EDD68B0(&qword_27F225B48, type metadata accessor for CallProvider, &protocol conformance descriptor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EDD64C0(v4, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA5DE60;
  v8 = (v4 + *(a1 + 20));
  v9 = *v8;
  v10 = v8[1];
  *(inited + 128) = &type metadata for ConversationHandle;
  *(inited + 136) = sub_24EDD5814();
  *(inited + 104) = v9;
  *(inited + 112) = v10;

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

void sub_24EDD62C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_24F92C738())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = sub_24F92C788();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_24EDD63C4()
{
  result = qword_27F230140;
  if (!qword_27F230140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230140);
  }

  return result;
}

unint64_t sub_24EDD6418()
{
  result = qword_27F230148;
  if (!qword_27F230148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230148);
  }

  return result;
}

unint64_t sub_24EDD646C()
{
  result = qword_27F230158;
  if (!qword_27F230158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230158);
  }

  return result;
}

uint64_t sub_24EDD64C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDD6528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDD659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallProvider(0);
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

uint64_t sub_24EDD666C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallProvider(0);
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

uint64_t sub_24EDD6724(uint64_t a1)
{
  result = type metadata accessor for CallProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EDD67AC()
{
  result = qword_27F230170;
  if (!qword_27F230170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230170);
  }

  return result;
}

unint64_t sub_24EDD6804()
{
  result = qword_27F230178;
  if (!qword_27F230178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230178);
  }

  return result;
}

unint64_t sub_24EDD685C()
{
  result = qword_27F230180;
  if (!qword_27F230180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230180);
  }

  return result;
}

uint64_t sub_24EDD68B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EDD6928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24EDD6970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDD69EC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000024FA5DE80;
  v5 = v1[1];
  v21 = *v1;
  v4 = v21;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  strcpy((inited + 88), "nameComponent");
  *(inited + 102) = -4864;
  v7 = v1[2];
  v8 = v1[3];
  v20[0] = v5;
  v20[1] = v7;
  v9 = v1[4];
  v10 = v1[5];
  v20[2] = v8;
  v20[3] = v9;
  v11 = v1[6];
  v20[4] = v10;
  v20[5] = v11;
  *(inited + 128) = &type metadata for JSPersonNameComponentsFormatter.Components;
  *(inited + 136) = sub_24EDD6DBC();
  v12 = swift_allocObject();
  *(inited + 104) = v12;
  v13 = v1[2];
  v12[1] = v1[1];
  v12[2] = v13;
  v14 = v1[6];
  v12[5] = v1[5];
  v12[6] = v14;
  v15 = v1[4];
  v12[3] = v1[3];
  v12[4] = v15;
  sub_24E614DB0(&v21, v19);
  sub_24E606840(v20, v19);
  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24EDD6BBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6E49726579616C70;
  *(inited + 40) = 0xEB00000000736F66;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90, &unk_24F9482A0);
  v7 = sub_24EDD6E70(&qword_27F212F98, &qword_27F212F90, &unk_24F9482A0, sub_24E606DFC);
  *(inited + 48) = a1;
  *(inited + 80) = v7;
  strcpy((inited + 88), "contactInfos");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230190, &unk_24F99FE10);
  *(inited + 136) = sub_24EDD6E70(&qword_27F230198, &qword_27F230190, &unk_24F99FE10, sub_24EDD6EEC);
  *(inited + 104) = a2;

  v8 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v9 = sub_24E80FFAC(v8);

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a3[4] = result;
  *a3 = v9;
  return result;
}

unint64_t sub_24EDD6DBC()
{
  result = qword_27F230188;
  if (!qword_27F230188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230188);
  }

  return result;
}

uint64_t sub_24EDD6E10()
{

  return swift_deallocObject();
}

uint64_t sub_24EDD6E70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24EDD6EEC()
{
  result = qword_27F2301A0;
  if (!qword_27F2301A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2301A0);
  }

  return result;
}

uint64_t sub_24EDD6F40(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ZoomableViewModifier(255);
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EDE1A8C(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
  swift_getWitnessTable();
  return sub_24F926B08();
}

double static ZoomCoordinator.overlayContentWidth.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 != 1)
  {
    return 374.0;
  }

  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

uint64_t View.tapToDismiss(enabled:)(uint64_t a1, uint64_t a2)
{
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return sub_24F926B08();
}

double static ZoomCoordinator.containerSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

void ZoomCoordinator.ScrollGeometry.init(contentOffsetY:contentInsetTop:contentHeight:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

void static ZoomCoordinator.iPadMaxContainerWidth.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
  }
}

void sub_24EDD7424()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F2301A8 = v1 == 0;
}

uint64_t static ZoomCoordinator.isPhone.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_27F2301A8;
}

uint64_t static ZoomCoordinator.isPhone.setter(char a1)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27F2301A8 = a1 & 1;
  return result;
}

uint64_t (*static ZoomCoordinator.isPhone.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24EDD7600@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_27F2301A8;
  return result;
}

uint64_t sub_24EDD767C(char *a1)
{
  v1 = *a1;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27F2301A8 = v1;
  return result;
}

uint64_t sub_24EDD7704()
{
  result = MEMORY[0x25304D060](0.4, 0.9, 0.0);
  qword_27F2301B0 = result;
  return result;
}

uint64_t static ZoomCoordinator.animation.getter()
{
  if (qword_27F210750 != -1)
  {
    swift_once();
  }
}

double static ZoomCoordinator.coordinators.getter()
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t (*static ZoomCoordinator.coordinators.modify(uint64_t a1))(void)
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_24EDD78FC@<D0>(void *a1@<X8>)
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27F2301B8;

  return result;
}

uint64_t sub_24EDD797C(void **a1)
{
  v1 = *a1;
  v2 = qword_27F210758;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27F2301B8 = v1;
}

__n128 sub_24EDD7A54@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_24EDD7B3C()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_24EDD7BF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 16), v10))
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDD7D50(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD7A04(v4);
  return sub_24EDD7E88;
}

double sub_24EDD7E94@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

double sub_24EDD7F78()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 48);
}

void sub_24EDD802C(double a1)
{
  swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDD8158(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EC7B5F4(v4);
  return sub_24EDD8290;
}

double sub_24EDD829C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = *(v3 + 56);
  *(a2 + 16) = result;
  return result;
}

double sub_24EDD8360(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  sub_24EDD8464(&v3);
  return result;
}

double sub_24EDD83A0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = result;
  return result;
}

void sub_24EDD8464(double *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  if (v1[7] == v3 && v1[8] == v2 && v1[9] == v4)
  {
    v1[7] = v3;
    v1[8] = v2;
    v1[9] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDD85B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EC7B6D0(v4);
  return sub_24EDD86E8;
}

double sub_24EDD86F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

double sub_24EDD87D8()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 80);
}

void sub_24EDD888C(double a1)
{
  swift_beginAccess();
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDD89B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EB9739C(v4);
  return sub_24EDD8AF0;
}

uint64_t sub_24EDD8B74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EDE1F5C(a1, v10, type metadata accessor for TransientToolbarItem);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_24EDE035C(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_24EDD8C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_24EDE1F5C(v2 + v4, a2, type metadata accessor for TransientToolbarItem);
}

uint64_t sub_24EDD8CC0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_24EDE035C(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_24EDD8D7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EDD8DE4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EDD8E2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EDD8F80()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_24EDD903C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDD9168(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD8EE4(v4);
  return sub_24EDD92A0;
}

uint64_t sub_24EDD930C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t sub_24EDD9430@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  return sub_24E60169C(v5 + v3, a1, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t sub_24EDD9508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v1 + v3, v7, &qword_27F235830, &qword_24F93B8C0);
  v4 = sub_24EDE07CC(v7, a1);
  sub_24E601704(v7, &qword_27F235830, &qword_24F93B8C0);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v7, &qword_27F235830, &qword_24F93B8C0);
    swift_beginAccess();
    sub_24E74EE5C(v7, v1 + v3);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t sub_24EDD96C4(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a2, v5, &qword_27F235830, &qword_24F93B8C0);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E74EE5C(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t (*sub_24EDD974C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD92AC(v4);
  return sub_24EDD9884;
}

double sub_24EDD98F0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_24EDD99B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD78();

  return result;
}

double sub_24EDD9A84()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

uint64_t sub_24EDD9B44(uint64_t a1)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD78();
}

uint64_t sub_24EDD9C14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_24EDD9C84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9890(v4);
  return sub_24EDD9DBC;
}

uint64_t (*sub_24EDD9E90(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9DC8(v4);
  return sub_24EDD9FC8;
}

double sub_24EDDA048@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;

  return result;
}

uint64_t keypath_set_31Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24EDDA18C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24EDDA27C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_24F92CE08() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t sub_24EDDA3D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t (*sub_24EDDA444(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9FD4(v4);
  return sub_24EDDA57C;
}

double sub_24EDDA5E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_24EDDA6D4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_24EDDA790(double a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDDA8C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDDA588(v4);
  return sub_24EDDA9FC;
}

uint64_t ZoomCoordinator.DashboardVisibilityState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

void sub_24EDDAB08(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

void sub_24EDDAC08(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v4 = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  swift_beginAccess();
  *a1 = *(v4 + v3);
}

void sub_24EDDACCC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t (*sub_24EDDADF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDDAA94(v4);
  return sub_24EDDAF30;
}

void sub_24EDDAF3C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v3);
}

void *sub_24EDDAFD0()
{
  type metadata accessor for ZoomCoordinator(0);
  swift_allocObject();
  result = sub_24EDDB2C8();
  off_27F2301C0 = result;
  return result;
}

uint64_t static ZoomCoordinator.shared.getter()
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24EDDB0C0(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a3;
  *a3 = a1;
  return a4(v8);
}

uint64_t (*static ZoomCoordinator.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24EDDB1C0@<X0>(void *a1@<X8>)
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27F2301C0;
}

double sub_24EDDB240(void **a1)
{
  v1 = *a1;
  v2 = qword_27F210760;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27F2301C0 = v1;

  return result;
}

uint64_t sub_24EDDB2C8()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  type metadata accessor for TransientToolbarItem(0);
  swift_storeEnumTagMultiPayload();
  v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay) = 0;
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions) = v3;
  v5 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__navigationCancelCommandNotificationId);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__activeTabIdentifier);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility) = 1;
  sub_24F91FDB8();
  return v0;
}

double sub_24EDDB3DC()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_24F91FD88();

  return v1 + *(v0 + 40) + 20.0;
}

double sub_24EDDB4E4()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v0 + 32);
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
  }

  else
  {
    v5 = 374.0;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FD88();

  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];

  return (v1 + v2 * 0.5) / v5;
}

void sub_24EDDB74C()
{
  v1 = v0;
  v2 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  *&v28[0] = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  v5 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *(v1 + v5) = MEMORY[0x277D84F90];

  *&v28[0] = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v6 = objc_opt_self();
    v7 = [v6 mainScreen];
    [v7 bounds];
    v9 = v8;

    if (byte_27F2301A8 == 1)
    {
      v10 = [v6 mainScreen];
      [v10 bounds];
      v12 = v11;

      v13 = v12 * 0.5;
    }

    else
    {
      v13 = 187.0;
    }

    v14 = v9 - v13;
  }

  else
  {
    v14 = 187.0;
  }

  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;

  v18 = v17 * 0.5;
  swift_beginAccess();
  v30.size.width = 0.0;
  v30.size.height = 0.0;
  v30.origin.x = v14;
  v30.origin.y = v18;
  if (CGRectEqualToRect(*(v1 + 16), v30))
  {
    *(v1 + 16) = v14;
    *(v1 + 24) = v18;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v27[-6] = v1;
    *&v27[-5] = v14;
    *&v27[-4] = v18;
    v27[-3] = 0;
    v27[-2] = 0;
    *&v28[0] = v1;
    sub_24F91FD78();
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24EDD9508(v28);
  swift_beginAccess();
  if (*(v1 + 48) == 0.0)
  {
    *(v1 + 48) = 0;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    v27[-2] = v1;
    v27[-1] = 0;
    v27[7] = v1;
    sub_24F91FD78();
  }

  swift_beginAccess();
  if (*(v1 + 80) == 0.0)
  {
    *(v1 + 80) = 0;
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21);
    v27[-2] = v1;
    v27[-1] = 0;
    v27[4] = v1;
    sub_24F91FD78();
  }

  *v4 = 0;
  v4[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v4, v1 + v22);
  swift_endAccess();
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v4, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v1 + v24) = MEMORY[0x277D84F90];

  v25 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  if (*(v1 + v25))
  {
    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    v27[-2] = v1;
    LOBYTE(v27[-1]) = 0;
    v27[0] = v1;
    sub_24F91FD78();
  }

  else
  {
    *(v1 + v25) = 0;
  }
}

void sub_24EDDBDA0(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator(0);
  swift_allocObject();
  v6 = sub_24EDDB2C8();
  swift_getKeyPath();
  v35[0] = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v8 = v1[2];
  v7 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  swift_beginAccess();
  v36.origin.x = v8;
  v36.origin.y = v7;
  v36.size.width = v10;
  v36.size.height = v9;
  if (CGRectEqualToRect(*(v6 + 16), v36))
  {
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v10;
    *(v6 + 40) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v33 - 6) = v6;
    *(&v33 - 5) = v8;
    *(&v33 - 4) = v7;
    *(&v33 - 3) = v10;
    *(&v33 - 2) = v9;
    v35[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v35[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v12 = v1[6];
  swift_beginAccess();
  if (*(v6 + 48) == v12)
  {
    *(v6 + 48) = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    *(&v33 - 2) = v6;
    *(&v33 - 1) = v12;
    v35[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v35[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v15 = v1[7];
  v14 = v1[8];
  v16 = v1[9];
  swift_beginAccess();
  if (*(v6 + 56) == v15 && *(v6 + 64) == v14 && *(v6 + 72) == v16)
  {
    *(v6 + 56) = v15;
    *(v6 + 64) = v14;
    *(v6 + 72) = v16;
  }

  else
  {
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    *(&v33 - 4) = v6;
    *(&v33 - 3) = v15;
    *(&v33 - 2) = v14;
    *(&v33 - 1) = v16;
    v35[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v35[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v18 = v1[10];
  swift_beginAccess();
  if (*(v6 + 80) == v18)
  {
    *(v6 + 80) = v18;
  }

  else
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    *(&v33 - 2) = v6;
    *(&v33 - 1) = v18;
    v35[0] = v6;
    sub_24F91FD78();
  }

  v20 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v1 + v20, v5, type metadata accessor for TransientToolbarItem);
  v21 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v5, v6 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v1 + v22, v5, type metadata accessor for TransientToolbarItem);
  v23 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v5, v6 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v6 + v26) = v25;

  swift_getKeyPath();
  v35[0] = v2;
  sub_24F91FD88();

  v27 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v29 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  if (v28 == *(v6 + v29))
  {
    *(v6 + v29) = v28;
  }

  else
  {
    v30 = swift_getKeyPath();
    MEMORY[0x28223BE20](v30);
    *(&v33 - 2) = v6;
    *(&v33 - 8) = v28;
    v35[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v35[0] = v2;
  sub_24F91FD88();

  v31 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v2 + v31, v35, &qword_27F235830, &qword_24F93B8C0);
  sub_24EDD9508(v35);
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = off_27F2301B8;
  off_27F2301B8 = 0x8000000000000000;
  sub_24E820E4C(v6, v33, isUniquelyReferenced_nonNull_native);
  off_27F2301B8 = v34;
  swift_endAccess();
}

void sub_24EDDC5F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v39);
  if (swift_dynamicCast())
  {
    v7 = v38[43];
    v8 = v38[44];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  sub_24EDDA254(v7, v8);
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_27F2301B8;
  if (*(off_27F2301B8 + 2) && (v10 = sub_24E76D934(a1), (v11 & 1) != 0))
  {
    v12 = *(v9[7] + 8 * v10);
    swift_endAccess();
    swift_getKeyPath();
    v39[0] = v12;
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);

    sub_24F91FD88();

    swift_beginAccess();
    v14 = v12[2];
    v13 = v12[3];
    v16 = v12[4];
    v15 = v12[5];
    swift_beginAccess();
    v40.origin.x = v14;
    v40.origin.y = v13;
    v40.size.width = v16;
    v40.size.height = v15;
    if (CGRectEqualToRect(*(v2 + 16), v40))
    {
      *(v2 + 16) = v14;
      *(v2 + 24) = v13;
      *(v2 + 32) = v16;
      *(v2 + 40) = v15;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v38[-6] = v2;
      *&v38[-5] = v14;
      *&v38[-4] = v13;
      *&v38[-3] = v16;
      *&v38[-2] = v15;
      v39[0] = v2;
      sub_24F91FD78();
    }

    swift_getKeyPath();
    v39[0] = v12;
    sub_24F91FD88();

    swift_beginAccess();
    v18 = v12[6];
    swift_beginAccess();
    if (*(v2 + 48) == v18)
    {
      *(v2 + 48) = v18;
    }

    else
    {
      v19 = swift_getKeyPath();
      MEMORY[0x28223BE20](v19);
      v38[-2] = v2;
      *&v38[-1] = v18;
      v39[0] = v2;
      sub_24F91FD78();
    }

    swift_getKeyPath();
    v39[0] = v12;
    sub_24F91FD88();

    swift_beginAccess();
    v21 = v12[7];
    v20 = v12[8];
    v22 = v12[9];
    swift_beginAccess();
    if (*(v2 + 56) == v21 && *(v2 + 64) == v20 && *(v2 + 72) == v22)
    {
      *(v2 + 56) = v21;
      *(v2 + 64) = v20;
      *(v2 + 72) = v22;
    }

    else
    {
      v23 = swift_getKeyPath();
      MEMORY[0x28223BE20](v23);
      v38[-4] = v2;
      *&v38[-3] = v21;
      *&v38[-2] = v20;
      *&v38[-1] = v22;
      v39[0] = v2;
      sub_24F91FD78();
    }

    swift_getKeyPath();
    v39[0] = v12;
    sub_24F91FD88();

    swift_beginAccess();
    v24 = v12[10];
    swift_beginAccess();
    if (*(v2 + 80) == v24)
    {
      *(v2 + 80) = v24;
    }

    else
    {
      v25 = swift_getKeyPath();
      MEMORY[0x28223BE20](v25);
      v38[-2] = v2;
      *&v38[-1] = v24;
      v39[0] = v2;
      sub_24F91FD78();
    }

    v26 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
    swift_beginAccess();
    sub_24EDE1F5C(v12 + v26, v6, type metadata accessor for TransientToolbarItem);
    v27 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
    swift_beginAccess();
    sub_24EDE035C(v6, v2 + v27);
    swift_endAccess();
    v28 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
    swift_beginAccess();
    sub_24EDE1F5C(v12 + v28, v6, type metadata accessor for TransientToolbarItem);
    v29 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
    swift_beginAccess();
    sub_24EDE035C(v6, v2 + v29);
    swift_endAccess();
    v30 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
    swift_beginAccess();
    v31 = *(v12 + v30);
    v32 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
    swift_beginAccess();
    *(v2 + v32) = v31;

    swift_getKeyPath();
    v39[0] = v12;
    sub_24F91FD88();

    v33 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
    swift_beginAccess();
    v34 = *(v12 + v33);
    v35 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
    swift_beginAccess();
    if (v34 == *(v2 + v35))
    {
      *(v2 + v35) = v34;
    }

    else
    {
      v36 = swift_getKeyPath();
      MEMORY[0x28223BE20](v36);
      v38[-2] = v2;
      LOBYTE(v38[-1]) = v34;
      v39[0] = v2;
      sub_24F91FD78();
    }

    swift_getKeyPath();
    v39[0] = v12;
    sub_24F91FD88();

    v37 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
    swift_beginAccess();
    sub_24E60169C(v12 + v37, v39, &qword_27F235830, &qword_24F93B8C0);
    sub_24EDD9508(v39);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t ZoomCoordinator.deinit()
{
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem, type metadata accessor for TransientToolbarItem);
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem, type metadata accessor for TransientToolbarItem);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID, &qword_27F235830, &qword_24F93B8C0);

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ZoomCoordinator.__deallocating_deinit()
{
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem, type metadata accessor for TransientToolbarItem);
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem, type metadata accessor for TransientToolbarItem);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID, &qword_27F235830, &qword_24F93B8C0);

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDDD0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230278, &qword_24F9A0480);
  MEMORY[0x28223BE20](v37);
  v38 = &v30 - v4;
  v5 = type metadata accessor for ZoomableViewModifier(0);
  v31 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v32 = v6;
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230280, &qword_24F9A0488);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - v7;
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[6];
  sub_24E60169C(v2 + v12, v49, &qword_27F2171D0, &unk_24F980290);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_24E601704(v49, &qword_27F2171D0, &unk_24F980290);
    memset(v51, 0, sizeof(v51));
    v52 = 0;
  }

  sub_24E60169C(v2 + v5[8], &v47, &qword_27F2171C8, &unk_24F945310);
  if (v48)
  {
    sub_24E612C80(&v47, v49);
  }

  else
  {
    sub_24EDDD7F4(v49);
    if (v48)
    {
      sub_24E601704(&v47, &qword_27F2171C8, &unk_24F945310);
    }
  }

  v13 = v2 + v5[5];
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v14, 0);
    (*(v9 + 8))(v11, v8);
    if ((v47 & 1) == 0)
    {
LABEL_20:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230288, &qword_24F9A0490);
      (*(*(v28 - 8) + 16))(v38, v35, v28);
      swift_storeEnumTagMultiPayload();
      sub_24EDE1E34();
      sub_24E602068(&qword_27F230298, &qword_27F230288, &qword_24F9A0490, MEMORY[0x277CE04B0]);
      sub_24F924E28();
      __swift_destroy_boxed_opaque_existential_1(v49);
      return sub_24E601704(v51, &qword_27F235830, &qword_24F93B8C0);
    }
  }

  sub_24E60169C(v3 + v5[7], &v42, qword_27F21B590, &unk_24F93BE30);
  if (v43)
  {
    sub_24E612C80(&v42, &v44);
    goto LABEL_17;
  }

  sub_24E60169C(v3 + v12, &v40, &qword_27F2171D0, &unk_24F980290);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    sub_24F928D78();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (!v43)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_24E601704(&v40, &qword_27F2171D0, &unk_24F980290);
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  if (v43)
  {
LABEL_16:
    sub_24E601704(&v42, qword_27F21B590, &unk_24F93BE30);
  }

LABEL_17:
  if (!*(&v45 + 1))
  {
    sub_24E601704(&v44, qword_27F21B590, &unk_24F93BE30);
    goto LABEL_20;
  }

  sub_24E612C80(&v44, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230288, &qword_24F9A0490);
  sub_24E602068(&qword_27F230298, &qword_27F230288, &qword_24F9A0490, MEMORY[0x277CE04B0]);
  v16 = v34;
  sub_24F926B78();
  v35 = sub_24F927618();
  v30 = v17;
  v18 = v33;
  sub_24EDE1F5C(v3, v33, type metadata accessor for ZoomableViewModifier);
  sub_24E60169C(v51, &v44, &qword_27F235830, &qword_24F93B8C0);
  sub_24E615E00(&v47, &v42);
  sub_24E615E00(v49, &v40);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_24EDE2164(v18, v22 + v19);
  v23 = v22 + v20;
  v24 = v45;
  *v23 = v44;
  *(v23 + 16) = v24;
  *(v23 + 32) = v46;
  sub_24E612C80(&v42, v22 + v21);
  sub_24E612C80(&v40, v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  v25 = v35;
  v26 = (v16 + *(v36 + 36));
  *v26 = sub_24EDE21C8;
  v26[1] = v22;
  v27 = v30;
  v26[2] = v25;
  v26[3] = v27;
  sub_24EDE228C(v16, v38);
  swift_storeEnumTagMultiPayload();
  sub_24EDE1E34();
  sub_24F924E28();
  sub_24E601704(v16, &qword_27F230280, &qword_24F9A0488);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_24E601704(v51, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t sub_24EDDD7F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230300, &qword_24F9A04E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230308, &qword_24F9A04E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11 - 8];
  v13 = *(type metadata accessor for ZoomableViewModifier(0) + 24);
  sub_24E60169C(v1 + v13, v29, &qword_27F2171D0, &unk_24F980290);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    v14 = type metadata accessor for CenteredCapsuleButton(0);
    v15 = swift_dynamicCast();
    (*(*(v14 - 8) + 56))(v12, v15 ^ 1u, 1, v14);
  }

  else
  {
    sub_24E601704(v29, &qword_27F2171D0, &unk_24F980290);
    v14 = type metadata accessor for CenteredCapsuleButton(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  type metadata accessor for CenteredCapsuleButton(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14))
  {
    sub_24E60169C(v1 + v13, v29, &qword_27F2171D0, &unk_24F980290);
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      v16 = type metadata accessor for OverlayCapsuleLockup(0);
      v17 = swift_dynamicCast();
      (*(*(v16 - 8) + 56))(v9, v17 ^ 1u, 1, v16);
    }

    else
    {
      sub_24E601704(v29, &qword_27F2171D0, &unk_24F980290);
      v16 = type metadata accessor for OverlayCapsuleLockup(0);
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    }

    type metadata accessor for OverlayCapsuleLockup(0);
    v18 = (*(*(v16 - 8) + 48))(v9, 1, v16);
    sub_24E601704(v9, &qword_27F230300, &qword_24F9A04E0);
    sub_24E601704(v12, &qword_27F230308, &qword_24F9A04E8);
    if (v18)
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
      v19 = sub_24F924258();
      a1[3] = v19;
      a1[4] = sub_24EDE1A8C(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v4 + 16))(boxed_opaque_existential_1 + *(v19 + 20), v6, v3);
      __asm { FMOV            V0.2D, #30.0 }

      *boxed_opaque_existential_1 = _Q0;
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_24E601704(v12, &qword_27F230308, &qword_24F9A04E8);
  }

  a1[3] = sub_24F9271D8();
  a1[4] = sub_24EDE1A8C(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v27 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 104))(v27, *MEMORY[0x277CE0118], v3);
}

uint64_t sub_24EDDDD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v39 = a4;
  v42 = a3;
  v47 = a2;
  v38 = a1;
  v48 = a6;
  v8 = sub_24F9239C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ZoomableViewModifier(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v14;
  v41 = v14;
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302B0, &qword_24F9A04A0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v18 = &v37 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302B8, &qword_24F9A04A8);
  MEMORY[0x28223BE20](v45);
  v37 = &v37 - v19;
  v46 = type metadata accessor for ZoomableViewModifier;
  sub_24EDE1F5C(a2, v16, type metadata accessor for ZoomableViewModifier);
  (*(v9 + 16))(v11, v38, v8);
  sub_24E60169C(a3, &v50, &qword_27F235830, &qword_24F93B8C0);
  sub_24E615E00(v39, v54);
  v39 = *(v13 + 80);
  v20 = (v39 + 16) & ~v39;
  v38 = v39 | 7;
  v21 = (v15 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_24EDE2164(v16, v23 + v20);
  (*(v9 + 32))(v23 + v21, v11, v8);
  v24 = v23 + v22;
  v25 = v51;
  *v24 = v50;
  *(v24 + 16) = v25;
  *(v24 + 32) = v52;
  sub_24E612C80(v54, v23 + ((v22 + 47) & 0xFFFFFFFFFFFFFFF8));
  v26 = v40;
  v49 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302C0, &qword_24F9A04B0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302C8, &qword_24F9A04B8);
  v28 = sub_24EDE2624();
  v53[5] = v27;
  v53[6] = v28;
  swift_getOpaqueTypeConformance2();
  sub_24F926F88();
  sub_24E602068(&qword_27F2302E8, &qword_27F2302B0, &qword_24F9A04A0, MEMORY[0x277CDF028]);
  v29 = v37;
  v30 = v43;
  sub_24F9265E8();
  (*(v44 + 8))(v18, v30);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_24E615E00(v26, v53);
  sub_24EDE26DC();
  sub_24E620DE8();
  v31 = v48;
  sub_24F926178();
  sub_24E6A56E8(&v50);
  sub_24E601704(v29, &qword_27F2302B8, &qword_24F9A04A8);
  sub_24E60169C(v42, &v50, &qword_27F235830, &qword_24F93B8C0);
  sub_24EDE1F5C(v47, v16, v46);
  v32 = (v39 + 56) & ~v39;
  v33 = swift_allocObject();
  v34 = v51;
  *(v33 + 16) = v50;
  *(v33 + 32) = v34;
  *(v33 + 48) = v52;
  sub_24EDE2164(v16, v33 + v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302F8, &qword_24F9A04C8);
  v36 = (v31 + *(result + 36));
  *v36 = sub_24EDDF338;
  v36[1] = 0;
  v36[2] = sub_24EDE2938;
  v36[3] = v33;
  return result;
}

void sub_24EDDE2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_24F925048();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = off_27F2301C0;

  sub_24F925258();
  sub_24F9239B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  sub_24EDDEABC(v13, v15, v17, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  swift_beginAccess();
  v56.origin.x = v21;
  v56.origin.y = v23;
  v56.size.width = v25;
  v56.size.height = v27;
  if (CGRectEqualToRect(*(v11 + 16), v56))
  {
    *(v11 + 2) = v21;
    *(v11 + 3) = v23;
    *(v11 + 4) = v25;
    *(v11 + 5) = v27;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v43 - 6) = v11;
    *(&v43 - 5) = v21;
    *(&v43 - 4) = v23;
    *(&v43 - 3) = v25;
    *(&v43 - 2) = v27;
    *&v48 = v11;
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);
    sub_24F91FD78();
  }

  v29 = off_27F2301C0;
  swift_getKeyPath();
  *&v48 = v29;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);

  sub_24F91FD88();

  v30 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v29 + v30, v54, &qword_27F235830, &qword_24F93B8C0);

  sub_24E60169C(v54, &v48, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v44, &v51, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v49 + 1))
  {
    sub_24E601704(v54, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v52 + 1))
    {
      sub_24E601704(&v48, &qword_27F235830, &qword_24F93B8C0);
      goto LABEL_12;
    }

LABEL_14:
    sub_24E601704(&v48, &qword_27F21B438, &unk_24F95FB00);
LABEL_15:
    v40 = off_27F2301C0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24F93DE60;
    sub_24E615E00(v43, v41 + 32);
    v42 = swift_getKeyPath();
    MEMORY[0x28223BE20](v42);
    *(&v43 - 2) = v40;
    *(&v43 - 1) = v41;
    *&v48 = v40;

    sub_24F91FD78();

    sub_24E60169C(v44, &v48, &qword_27F235830, &qword_24F93B8C0);

    sub_24EDD9508(&v48);
    goto LABEL_16;
  }

  sub_24E60169C(&v48, v47, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v52 + 1))
  {
    sub_24E601704(v54, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v47);
    goto LABEL_14;
  }

  v45[0] = v51;
  v45[1] = v52;
  v46 = v53;
  v31 = MEMORY[0x253052150](v47, v45);
  sub_24E6585F8(v45);
  sub_24E601704(v54, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(v47);
  sub_24E601704(&v48, &qword_27F235830, &qword_24F93B8C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v32 = off_27F2301C0;
  v33 = swift_getKeyPath();
  MEMORY[0x28223BE20](v33);
  v34 = MEMORY[0x277D84F90];
  *(&v43 - 2) = v32;
  *(&v43 - 1) = v34;
  *&v48 = v32;

  sub_24F91FD78();

  v50 = 0;
  v48 = 0u;
  v49 = 0u;

  sub_24EDD9508(&v48);

  v35 = sub_24F92B858();
  (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
  sub_24E615E00(v43, &v48);
  sub_24E60169C(v44, v54, &qword_27F235830, &qword_24F93B8C0);
  sub_24F92B7F8();
  v36 = sub_24F92B7E8();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  sub_24E612C80(&v48, v37 + 32);
  v39 = v54[1];
  *(v37 + 72) = v54[0];
  *(v37 + 88) = v39;
  *(v37 + 104) = v55;
  sub_24EA998B8(0, 0, v6, &unk_24F9A04D8, v37);
LABEL_16:
}

void sub_24EDDEABC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  sub_24F7699B0(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDFA90], v8);
  v17 = sub_24F923F68();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  if (v16)
  {
    if (v17)
    {
      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_27F2301A8 == 1)
      {
        v19 = [objc_opt_self() mainScreen];
        [v19 bounds];
        v21 = v20;

        v22 = v21 + 10.0;
      }

      else
      {
        v22 = 384.0;
      }

      v42.size.height = a4;
      v34 = a1;
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      height = v42.size.height;
      v26 = v22 - CGRectGetWidth(v42) - (v34 + v34);
      v36 = v34;
      v37 = a2;
      v38 = a3;
      v39 = height;
      goto LABEL_19;
    }

    v27 = objc_opt_self();
    v28 = [v27 mainScreen];
    [v28 bounds];
    v30 = v29;

    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27F2301A8 == 1)
    {
      v31 = [v27 mainScreen];
      [v31 bounds];
      v33 = v32;
    }

    else
    {
      v33 = 374.0;
    }

    v26 = v33 - v30 + 10.0;
LABEL_18:
    v36 = a1;
    v37 = a2;
    v38 = a3;
    v39 = a4;
LABEL_19:
    CGRectOffset(*&v36, v26, 0.0);
    return;
  }

  if (v17)
  {
    v23 = [objc_opt_self() mainScreen];
    [v23 bounds];
    v25 = v24;

    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    v26 = v25 - CGRectGetWidth(v41) - (a1 + a1);
    goto LABEL_18;
  }
}

uint64_t sub_24EDDEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_24F92B7F8();
  v5[12] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDDEF44, v7, v6);
}

uint64_t sub_24EDDEF44()
{

  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  swift_beginAccess();
  v3 = off_27F2301C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v2, v4 + 32);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v0[2] = v3;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);

  sub_24F91FD78();

  sub_24E60169C(v1, (v0 + 2), &qword_27F235830, &qword_24F93B8C0);

  sub_24EDD9508((v0 + 2));

  v6 = v0[1];

  return v6();
}

double sub_24EDDF158(void *a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F926C98();
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = sub_24F927348();
  sub_24F9248B8();
  v13[1] = v6;
  v13[2] = v11;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302C8, &qword_24F9A04B8);
  sub_24EDE2624();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);

  return result;
}

uint64_t sub_24EDDF338@<X0>(double *a1@<X8>)
{
  v2 = sub_24F925048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925258();
  sub_24F9239B8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_24EDDF444(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_24E60169C(a2, &v22, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v23 + 1))
  {
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
    return;
  }

  v30[0] = v22;
  v30[1] = v23;
  v31 = v24;
  sub_24E65864C(v30, v29);
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_27F2301C0;
  swift_getKeyPath();
  *&v22 = v6;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);

  sub_24F91FD88();

  v7 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v6 + v7, v28, &qword_27F235830, &qword_24F93B8C0);

  sub_24E60169C(v29, &v22, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v28, &v25, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v23 + 1))
  {
    sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v26 + 1))
    {
      sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
      goto LABEL_11;
    }

LABEL_15:
    sub_24E601704(&v22, &qword_27F21B438, &unk_24F95FB00);
LABEL_16:
    sub_24E6585F8(v30);
    return;
  }

  sub_24E60169C(&v22, v21, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v26 + 1))
  {
    sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v21);
    goto LABEL_15;
  }

  v19[0] = v25;
  v19[1] = v26;
  v20 = v27;
  v8 = MEMORY[0x253052150](v21, v19);
  sub_24E6585F8(v19);
  sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(v21);
  sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v9 = off_27F2301C0;

  sub_24EDDEABC(v2, v3, v4, v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_beginAccess();
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v15;
  v32.size.height = v17;
  if (CGRectEqualToRect(*(v9 + 16), v32))
  {
    sub_24E6585F8(v30);
    *(v9 + 2) = v11;
    *(v9 + 3) = v13;
    *(v9 + 4) = v15;
    *(v9 + 5) = v17;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v29[0] = v9;
    sub_24F91FD78();

    sub_24E6585F8(v30);
  }
}

void sub_24EDDF8A8()
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_27F2301C0;
  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  swift_beginAccess();
  if (v0[v1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator, &protocol conformance descriptor for ZoomCoordinator);

    sub_24F91FD78();
  }

  else
  {
    v0[v1] = 0;
  }
}

uint64_t sub_24EDDFA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v15[1] = a1;
  v3 = sub_24F923488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8, &qword_24F992060);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  sub_24F923478();
  sub_24F927268();
  (*(v4 + 8))(v6, v3);
  if (v13 == 1 && (sub_24F769A00(v11, v12) & 1) != 0)
  {
    sub_24F9235A8();
  }

  else
  {
    sub_24F9235B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230240, &unk_24F9A0398);
  sub_24E602068(&qword_27F230248, &qword_27F230240, &unk_24F9A0398, MEMORY[0x277CE04B0]);
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  sub_24F9269D8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EDDFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[1] = a1;
  v28 = a6;
  v29 = a7;
  v12 = type metadata accessor for ZoomableViewModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24F924038();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  sub_24E60169C(a2, v14 + v12[6], &qword_27F2171D0, &unk_24F980290);
  sub_24E60169C(a3, v14 + v12[7], qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(a4, v14 + v12[8], &qword_27F2171C8, &unk_24F945310);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v22 = v14 + v12[5];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v28;
  MEMORY[0x25304C420](v14, a5, v12, v28);
  sub_24EDE1ADC(v14, type metadata accessor for ZoomableViewModifier);
  v24 = sub_24EDE1A8C(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  sub_24E7896B8();
  v25 = *(v16 + 8);
  v25(v18, v15);
  sub_24E7896B8();
  return (v25)(v21, v15);
}

uint64_t sub_24EDDFF8C@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = sub_24F924038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v20 = a1;
  MEMORY[0x25304C420](&KeyPath, a2, &type metadata for OverlayTapToDismiss, a3);

  v14 = sub_24EB67FB4();
  v17[2] = a3;
  v17[3] = v14;
  swift_getWitnessTable();
  sub_24E7896B8();
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_24E7896B8();
  return (v15)(v13, v7);
}

__n128 sub_24EDE01A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;
  return result;
}

void sub_24EDE022C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 48) = v2;
}

double sub_24EDE0284(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  sub_24EDD8464(&v3);
  return result;
}

void sub_24EDE0308()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 80) = v2;
}

uint64_t sub_24EDE035C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransientToolbarItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE0474@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0B70();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.shouldZoomOnSegue.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0B70();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE0598;
}

uint64_t (*EnvironmentValues.isPresentedInOverlay.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0BC4();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE064C;
}

uint64_t sub_24EDE0678(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_24F924868();
  return v3;
}

uint64_t (*EnvironmentValues.isTopmostViewInOverlay.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0C18();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE0790;
}

uint64_t sub_24EDE07CC(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, v9, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a2, &v11, &qword_27F235830, &qword_24F93B8C0);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_24E601704(v9, &qword_27F235830, &qword_24F93B8C0);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_24E601704(v9, &qword_27F21B438, &unk_24F95FB00);
    v4 = 1;
    return v4 & 1;
  }

  sub_24E60169C(v9, v8, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v12 + 1))
  {
    sub_24E6585F8(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x253052150](v8, v6);
  sub_24E6585F8(v6);
  sub_24E6585F8(v8);
  sub_24E601704(v9, &qword_27F235830, &qword_24F93B8C0);
  v4 = v3 ^ 1;
  return v4 & 1;
}

void sub_24EDE09F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

__n128 sub_24EDE0AB0()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_beginAccess();
  result = v4;
  *(v1 + 56) = v4;
  *(v1 + 72) = v2;
  return result;
}

void sub_24EDE0B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

unint64_t sub_24EDE0B70()
{
  result = qword_27F230210;
  if (!qword_27F230210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230210);
  }

  return result;
}

unint64_t sub_24EDE0BC4()
{
  result = qword_27F230218;
  if (!qword_27F230218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230218);
  }

  return result;
}

unint64_t sub_24EDE0C18()
{
  result = qword_27F230220;
  if (!qword_27F230220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230220);
  }

  return result;
}

unint64_t sub_24EDE0C70()
{
  result = qword_27F230228;
  if (!qword_27F230228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230228);
  }

  return result;
}

uint64_t keypath_get_67Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_24EDE1F5C(v4 + v5, a3, type metadata accessor for TransientToolbarItem);
}

double sub_24EDE0D98@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_24EDE0E00@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0B70();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EDE0EB4(uint64_t a1)
{
  result = type metadata accessor for TransientToolbarItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24EDE1808(void *a1)
{
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void sub_24EDE1910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_24EDE196C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230240, &unk_24F9A0398);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8, &qword_24F992060);
  sub_24E602068(&qword_27F230248, &qword_27F230240, &unk_24F9A0398, MEMORY[0x277CE04B0]);
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EDE1A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EDE1ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDE1B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24EDE1C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_24EDE1D04(uint64_t a1)
{
  sub_24E6C55A0(319);
  if (v1 <= 0x3F)
  {
    sub_24EB999AC();
    if (v2 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F230260, &unk_27F23A6A0, &unk_24F9549D0);
      if (v3 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0);
        if (v4 <= 0x3F)
        {
          sub_24E8EF898(319, &qword_27F230268, &qword_27F230270, &qword_24F9A0428);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24EDE1E34()
{
  result = qword_27F230290;
  if (!qword_27F230290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230280, &qword_24F9A0488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230288, &qword_24F9A0490);
    sub_24E602068(&qword_27F230298, &qword_27F230288, &qword_24F9A0490, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2302A0, &qword_27F2302A8, &qword_24F9A0498, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230290);
  }

  return result;
}

uint64_t sub_24EDE1F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDE1FC4()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v3 + v2;
  sub_24E62A5EC(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  v7 = (v4 + v1[6]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = v6 + 7;
  v9 = (v4 + v1[7]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = (v4 + v1[8]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  if (*(v0 + v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v10));
  }

  v12 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + v12));
  __swift_destroy_boxed_opaque_existential_1((v0 + v13));

  return swift_deallocObject();
}

uint64_t sub_24EDE2164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoomableViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE21C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ZoomableViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_24EDDDD20(a1, v2 + v6, v2 + v7, v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), v2 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a2);
}

uint64_t sub_24EDE228C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230280, &qword_24F9A0488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE22FC()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923F78();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  else
  {
  }

  v10 = v7 + v6;
  sub_24E62A5EC(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v11 = (v8 + v1[6]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v10 + 7;
  v13 = (v8 + v1[7]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + v1[8]);
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  (*(v5 + 8))(v0 + v6, v4);
  if (*(v0 + v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v14));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v14 + 47) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

void sub_24EDE2518()
{
  v1 = *(type metadata accessor for ZoomableViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24F9239C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_24EDDE2F0(v0 + v2, v0 + v5, v0 + v6, v0 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_24EDE2624()
{
  result = qword_27F2302D0;
  if (!qword_27F2302D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302C8, &qword_24F9A04B8);
    sub_24E602068(&qword_27F2302D8, &qword_27F2302E0, &qword_24F9A04C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2302D0);
  }

  return result;
}

unint64_t sub_24EDE26DC()
{
  result = qword_27F2302F0;
  if (!qword_27F2302F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302B8, &qword_24F9A04A8);
    sub_24E602068(&qword_27F2302E8, &qword_27F2302B0, &qword_24F9A04A0, MEMORY[0x277CDF028]);
    sub_24EDE1A8C(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2302F0);
  }

  return result;
}

uint64_t sub_24EDE27C4()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = (v3 + v1[6]);
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = (v3 + v1[7]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v7 = (v3 + v1[8]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return swift_deallocObject();
}

void sub_24EDE2938(double *a1)
{
  type metadata accessor for ZoomableViewModifier(0);

  sub_24EDDF444(a1, v1 + 16);
}

uint64_t sub_24EDE29AC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  return swift_deallocObject();
}

uint64_t sub_24EDE29FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EDDEEAC(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_24EDE2AB4()
{
  result = qword_27F230310;
  if (!qword_27F230310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230318, &unk_24F9A04F0);
    sub_24EDE1E34();
    sub_24E602068(&qword_27F230298, &qword_27F230288, &qword_24F9A0490, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230310);
  }

  return result;
}

uint64_t GameCenterReengagement.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterReengagement.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GameCenterReengagement.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v145 = a2;
  v125 = sub_24F91FEF8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v123 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = &v118 - v10;
  MEMORY[0x28223BE20](v11);
  v146 = &v118 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v118 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v118 - v16;
  v148 = sub_24F91F6B8();
  v143 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v121 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v118 - v23;
  MEMORY[0x28223BE20](v24);
  v126 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v132 = &v118 - v27;
  MEMORY[0x28223BE20](v28);
  v137 = &v118 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v118 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v118 - v34;
  v135 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction) = 0;
  v136 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction) = 0;
  v154 = a1;
  sub_24F928398();
  v36 = sub_24F928348();
  v147 = v6;
  v141 = v32;
  v142 = v19;
  if (v37)
  {
    v149 = v36;
    v150 = v37;
    sub_24F92C7F8();
    v38 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v38;
    (v38)(v35, v19);
    v39 = v7;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v41 = v7;
    v42 = v19;
    v43 = v3;
    v45 = v44;
    (*(v143 + 8))(v18, v148);
    v149 = v40;
    v150 = v45;
    v3 = v43;
    v39 = v41;
    sub_24F92C7F8();
    v46 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v46;
    (v46)(v35, v42);
  }

  v144 = v39;
  v47 = v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_id;
  v48 = v152;
  *v47 = v151;
  *(v47 + 16) = v48;
  v134 = v47;
  *(v47 + 32) = v153;
  sub_24F929608();
  sub_24F928398();
  v49 = v3;
  v50 = (v39 + 16);
  v51 = *(v39 + 16);
  v52 = v145;
  v53 = v147;
  v51(v140, v145, v147);
  v54 = v138;
  sub_24F929548();
  v139 = v49;
  v133 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics;
  sub_24E65E0D4(v54, v49 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics);
  v138 = v50;
  v130 = v51;
  v51(v146, v52, v53);
  v55 = v154;
  v56 = v137;
  sub_24F928398();
  v57 = sub_24F928348();
  v59 = v58;
  v60 = v142;
  v61 = v148;
  v62 = v144;
  (v148)(v56, v142);
  if (!v59)
  {
    v75 = sub_24F92AC38();
    sub_24EDE42D8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v148 = v61;
    v76 = v147;
    v78 = v77;
    v79 = type metadata accessor for GameCenterReengagement(0);
    *v78 = 0x656C746974;
    v78[1] = 0xE500000000000000;
    v78[2] = v79;
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x277D22530], v75);
    swift_willThrow();
    v80 = *(v62 + 8);
    v80(v145, v76);
    (v148)(v55, v60);
    v80(v146, v76);
    goto LABEL_10;
  }

  v129 = v59;
  v120 = v57;
  v63 = v141;
  sub_24F928398();
  v119 = sub_24F928348();
  v65 = v64;
  (v61)(v63, v60);
  v66 = v132;
  sub_24F928398();
  v67 = JSONObject.appStoreColor.getter();
  (v61)(v66, v60);
  if (!v67)
  {

    v81 = sub_24F92AC38();
    sub_24EDE42D8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v82 = v147;
    v84 = v83;
    v85 = type metadata accessor for GameCenterReengagement(0);
    *v84 = 0x756F72676B636162;
    v84[1] = 0xEF726F6C6F43646ELL;
    v84[2] = v85;
    (*(*(v81 - 8) + 104))(v84, *MEMORY[0x277D22530], v81);
    swift_willThrow();
    v86 = *(v144 + 8);
    v86(v145, v82);
    (v61)(v55, v60);
    v86(v146, v82);
    goto LABEL_10;
  }

  v137 = v65;
  v68 = v126;
  sub_24F928398();
  v69 = v127;
  v71 = v146;
  v70 = v147;
  v72 = v130;
  v130(v127, v146, v147);
  v73 = v128;
  Achievement.init(deserializing:using:)(v68, v69, v131);
  if (v73)
  {

    v74 = *(v144 + 8);
    v74(v145, v70);
    (v148)(v154, v142);
    v74(v71, v70);
LABEL_10:
    v87 = v139;

    sub_24E6585F8(v134);
    sub_24EB05BC8(v87 + v133);
    type metadata accessor for GameCenterReengagement(0);
    swift_deallocPartialClassInstance();
    return v87;
  }

  v89 = v122;
  sub_24F928398();
  v90 = v123;
  v72(v123, v71, v70);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v91 = Lockup.init(deserializing:using:)(v89, v90);
  v132 = 0;
  v136 = v91;
  v92 = v121;
  sub_24F928398();
  v93 = sub_24F928348();
  v95 = v94;
  v96 = v92;
  v97 = v142;
  v98 = v148;
  (v148)(v96, v142);
  v99 = v137;
  v100 = v129;
  v148 = v98;
  if (v95)
  {
    v101 = v141;
    sub_24F928398();
    v102 = sub_24F928348();
    v104 = v103;
    (v98)(v101, v97);
    v99 = v137;
  }

  else
  {
    v104 = 0;
    v102 = v93;
    v101 = v141;
  }

  v87 = v139;
  v139[2] = v102;
  v87[3] = v104;
  v87[4] = v93;
  v87[5] = v95;
  v87[6] = v120;
  v87[7] = v100;
  v87[8] = v119;
  v87[9] = v99;
  v87[10] = v67;
  type metadata accessor for Artwork(0);
  v138 = v67;
  v105 = v154;
  sub_24F928398();
  v130(v140, v146, v147);
  sub_24EDE42D8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v87[11] = v151;
  v106 = v124;
  (*(v124 + 16))(v87 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement, v131, v125);
  v107 = v136;
  *(v87 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup) = v136;
  v108 = *(v107 + 264);
  v109 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction;
  swift_beginAccess();
  *(v87 + v109) = v108;

  type metadata accessor for Action(0);
  sub_24F928398();
  v110 = v101;
  v111 = v146;
  v140 = static Action.tryToMakeInstance(byDeserializing:using:)(v110, v146);

  v112 = *(v144 + 8);
  v113 = v147;
  v112(v145, v147);
  v114 = v105;
  v115 = v142;
  v116 = v148;
  (v148)(v114, v142);
  v116(v141, v115);
  (*(v106 + 8))(v131, v125);
  v112(v111, v113);
  v117 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction;
  swift_beginAccess();
  *(v87 + v117) = v140;

  return v87;
}

uint64_t type metadata accessor for GameCenterReengagement(uint64_t a1)
{
  result = qword_27F230330;
  if (!qword_27F230330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameCenterReengagement.badgeGlyph.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterReengagement.badge.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GameCenterReengagement.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t GameCenterReengagement.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t GameCenterReengagement.achievement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement;
  v4 = sub_24F91FEF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_24EDE3D54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_24EDE3DD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_24EDE3E84()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup(0);
    *(v2 + 64) = sub_24EDE42D8(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GameCenterReengagement.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement;
  v2 = sub_24F91FEF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_id);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics);
  return v0;
}

uint64_t GameCenterReengagement.__deallocating_deinit()
{
  GameCenterReengagement.deinit();

  return swift_deallocClassInstance();
}

void *sub_24EDE410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GameCenterReengagement(0);
  v7 = swift_allocObject();
  result = GameCenterReengagement.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EDE41C4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup(0);
    *(v2 + 64) = sub_24EDE42D8(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_24EDE4280(uint64_t a1)
{
  result = sub_24EDE42D8(&qword_27F230328, type metadata accessor for GameCenterReengagement, &protocol conformance descriptor for GameCenterReengagement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EDE42D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_getTm_4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_24EDE43F0(uint64_t a1)
{
  sub_24F91FEF8();
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t SearchHintsIntent.term.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall SearchHintsIntent.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = objc_opt_self();
  result.super.isa = [v5 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v8 = [v5 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v4, v3}];
    result.super.isa = swift_unknownObjectRelease();
    if (v8)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EDE47E4()
{
  result = qword_27F230340;
  if (!qword_27F230340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230340);
  }

  return result;
}

unint64_t sub_24EDE4840()
{
  result = qword_27F230348;
  if (!qword_27F230348)
  {
    type metadata accessor for SearchHintSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230348);
  }

  return result;
}

uint64_t sub_24EDE48AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24EDE48F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EDE4958(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230360, &qword_24F9A08E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 2);
  v19 = *(v1 + 1);
  v20 = v9;
  v10 = *(v1 + 4);
  v21 = *(v1 + 3);
  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE4FEC();

  sub_24F92D128();
  *&v15 = v7;
  *(&v15 + 1) = v8;
  LOBYTE(v14[0]) = 0;
  sub_24E94B538();
  v11 = v13[1];
  sub_24F92CD48();

  if (!v11)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v23 = 1;
    sub_24E94B1E0(&v19, v14);
    sub_24E94B5E0();
    sub_24F92CD48();
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    sub_24E94B218(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EDE4B78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230350, &qword_24F9A08D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE4FEC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v33;
  LOBYTE(v17[0]) = 0;
  sub_24E94B6E8();
  sub_24F92CC68();
  v10 = v19;
  v16 = v18;
  v24 = 1;
  sub_24E94B790();
  sub_24F92CC68();
  (*(v8 + 8))(v7, v4);
  v11 = v25;
  v29 = v25;
  v30 = v26;
  v12 = v27;
  v13 = v28;
  v31 = v27;
  v32 = v28;
  v14 = v16;
  *&v17[0] = v16;
  *(&v17[0] + 1) = v10;
  v17[1] = v25;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v28;
  v9[2] = v26;
  v9[3] = v12;
  v9[4] = v13;
  *v9 = v17[0];
  v9[1] = v11;
  sub_24EDE5040(v17, &v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v14;
  v19 = v10;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  return sub_24EDE5078(&v18);
}

uint64_t sub_24EDE4DF4()
{
  if (*v0)
  {
    return 0x656E6961746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24EDE4E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDE4F24(uint64_t a1)
{
  v2 = sub_24EDE4FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE4F60(uint64_t a1)
{
  v2 = sub_24EDE4FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EDE4FEC()
{
  result = qword_27F230358;
  if (!qword_27F230358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230358);
  }

  return result;
}

unint64_t sub_24EDE50BC()
{
  result = qword_27F230368;
  if (!qword_27F230368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230368);
  }

  return result;
}

unint64_t sub_24EDE5114()
{
  result = qword_27F230370;
  if (!qword_27F230370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230370);
  }

  return result;
}

unint64_t sub_24EDE516C()
{
  result = qword_27F230378;
  if (!qword_27F230378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230378);
  }

  return result;
}

uint64_t sub_24EDE51C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v18 = a1[4];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_24F92B098();
  v10 = sub_24F92B098();
  [v4 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  v11 = sub_24F92B098();
  v12 = sub_24F92B098();
  v13 = sub_24F91F9D8();
  v14 = [v4 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13];

  v15 = swift_dynamicCastUnknownClass();
  if (v15)
  {
    v16 = v15;
    v18(v15, v6, v7, a2);
    return v16;
  }

  else
  {

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

unint64_t sub_24EDE5368()
{
  result = qword_27F230400;
  if (!qword_27F230400)
  {
    type metadata accessor for CopyTextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230400);
  }

  return result;
}

uint64_t sub_24EDE53CC(uint64_t a1)
{
  v1 = sub_24F928AE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() generalPasteboard];
  v6 = sub_24F92B098();
  [v5 setString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v2 + 104))(v4, *MEMORY[0x277D21CA8], v1);
  return sub_24F92A988();
}

uint64_t sub_24EDE5534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EDEB704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EDE555C(uint64_t a1)
{
  v2 = sub_24EDE58C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5598(uint64_t a1)
{
  v2 = sub_24EDE58C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.GridItemWidth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230408, &qword_24F9A0A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE58C8();
  sub_24F92D108();
  if (!v2)
  {
    v12 = 0;
    sub_24E620E90();
    sub_24F92CC68();
    v9 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}