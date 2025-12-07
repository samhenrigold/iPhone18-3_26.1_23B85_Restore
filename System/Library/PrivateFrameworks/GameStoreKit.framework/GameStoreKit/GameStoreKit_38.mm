uint64_t sub_24E9D8110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2247D0, &qword_24F972740);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for LockupCollectionSearchItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = 0;
  v39 = v13 + 40;
  sub_24E61DA68(&v43, (v13 + 40), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 24);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v40 = v11;
  v17 = &v13[*(v11 + 48)];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v43, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24E9D8B54();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_24E601704(v39, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v13[v42], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v20 = v10;
    sub_24F92CC68();
    v21 = v44;
    *v13 = v43;
    *(v13 + 1) = v21;
    *(v13 + 4) = v45;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v46 = 1;
    v23 = sub_24E61D970();
    sub_24F92CC68();
    v33 = v23;
    sub_24E61DA68(&v43, v39, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v43) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    v36 = v22;
    sub_24E61DA68(v7, &v13[v42], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v43) = 3;
    sub_24E9D8BA8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v24 = v35;
    sub_24F92CC18();
    v25 = v40;
    sub_24E6009C8(v24, &v13[v40[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v43) = 4;
    v26 = sub_24F92CBC8();
    v27 = &v13[v25[8]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v43) = 5;
    v29 = sub_24F92CBC8();
    v30 = &v13[v25[9]];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v43) = 6;
    sub_24E9D8BF0();
    sub_24F92CC68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    v46 = 7;
    sub_24E9D8C44();
    sub_24F92CC68();
    *&v13[v25[11]] = v43;
    v46 = 8;
    sub_24F92CC68();
    (*(v19 + 8))(v20, v38);
    sub_24E61DA68(&v43, v17, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E9D8CF4(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24E9D8D58(v13);
  }
}

uint64_t sub_24E9D8994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9D942C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9D89BC(uint64_t a1)
{
  v2 = sub_24E9D8B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9D89F8(uint64_t a1)
{
  v2 = sub_24E9D8B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9D8A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24E9D8B54()
{
  result = qword_27F2247D8;
  if (!qword_27F2247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247D8);
  }

  return result;
}

uint64_t sub_24E9D8BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E9D8BF0()
{
  result = qword_27F2247E0;
  if (!qword_27F2247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247E0);
  }

  return result;
}

unint64_t sub_24E9D8C44()
{
  result = qword_27F21F8D0;
  if (!qword_27F21F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24E602068(&qword_27F21F8D8, &qword_27F21BE90, &qword_24F9538B0, MEMORY[0x277D21F18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F8D0);
  }

  return result;
}

uint64_t sub_24E9D8CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupCollectionSearchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9D8D58(uint64_t a1)
{
  v2 = type metadata accessor for LockupCollectionSearchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9D8DB4()
{
  result = qword_27F2247E8;
  if (!qword_27F2247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247E8);
  }

  return result;
}

unint64_t sub_24E9D8E1C()
{
  result = qword_27F2247F0;
  if (!qword_27F2247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247F0);
  }

  return result;
}

unint64_t sub_24E9D8E74()
{
  result = qword_27F2247F8;
  if (!qword_27F2247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247F8);
  }

  return result;
}

unint64_t sub_24E9D8ECC()
{
  result = qword_27F224800;
  if (!qword_27F224800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224800);
  }

  return result;
}

uint64_t sub_24E9D8F20@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for LockupCollectionSearchItem(0);
  v7 = (v1 + *(v6 + 36));
  v8 = v7[1];
  if (v8)
  {
    v9 = v6;
    v10 = *v7;
    v11 = (v1 + *(v6 + 32));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      v15 = v14[5];
      v16 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
      v17 = v14[7];
      v18 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
      (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      *v5 = v13;
      *(v5 + 1) = v12;
      v5[v14[6]] = 0;
      v5[v14[8]] = 2;
      v19 = &v5[v14[9]];
      *v19 = 0;
      *(v19 + 4) = 256;
      v20 = &v5[v14[10]];
      *(v20 + 32) = 0;
      *v20 = 0u;
      *(v20 + 16) = 0u;

      sub_24E61DA68(v35, v20, qword_27F21B590, &unk_24F93BE30);
      (*(*(v14 - 1) + 56))(v5, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      (*(*(v14 - 1) + 56))(v5, 1, 1, v14);
    }

    type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v24 = v14[5];
    v25 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
    v26 = v14[7];
    v27 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
    (*(*(v27 - 8) + 56))(&a1[v26], 1, 1, v27);
    sub_24E60169C(v1 + *(v9 + 48), v35, qword_27F24EC90, &unk_24F93C1D0);
    *a1 = v10;
    *(a1 + 1) = v8;
    a1[v14[6]] = 2;
    a1[v14[8]] = 2;
    v28 = &a1[v14[9]];
    *v28 = 0;
    *(v28 + 4) = 256;
    v29 = &a1[v14[10]];
    *(v29 + 4) = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    sub_24E61DA68(v35, v29, qword_27F21B590, &unk_24F93BE30);
    v30 = *(*(v14 - 1) + 56);
    v30(a1, 0, 1, v14);
    v31 = type metadata accessor for HeaderPresentation(0);
    sub_24E6009C8(v5, &a1[v31[5]], &qword_27F223138, &unk_24F972860);
    v30(&a1[v31[6]], 1, 1, v14);
    v32 = &a1[v31[7]];
    *(v32 + 6) = 0;
    *(v32 + 1) = 0u;
    *(v32 + 2) = 0u;
    *v32 = 0u;
    v32[56] = -1;
    v33 = v31[8];
    v34 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
    (*(*(v34 - 8) + 56))(&a1[v33], 1, 1, v34);
    a1[v31[9]] = 7;
    a1[v31[10]] = 2;
    a1[v31[11]] = 2;
    a1[v31[12]] = 2;
    return (*(*(v31 - 1) + 56))(a1, 0, 1, v31);
  }

  else
  {
    v21 = type metadata accessor for HeaderPresentation(0);
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_24E9D942C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4CBF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x63416C6961746564 && a2 == 0xEC0000006E6F6974)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24E9D9724(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v21 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() proxyForLocalPlayer];
  v22 = [v15 gameStatService];

  v16 = [a2 gameDescriptor];
  v17 = [a3 internal];
  if (a4)
  {
    a4 = sub_24F92BA98();
  }

  if (a6)
  {
    a6 = sub_24F92B098();
  }

  (*(v12 + 16))(v14, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v14, v11);
  aBlock[4] = sub_24E9DB128;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0F4C;
  aBlock[3] = &block_descriptor_36;
  v20 = _Block_copy(aBlock);

  [v22 getLeaderboardsForGameDescriptor:v16 player:v17 leaderboardIDs:a4 setIdentifier:a6 handler:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

id sub_24E9D99C4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Leaderboard(0);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = v9;
  v46 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v41)
  {
    v50 = v9;
    v45 = a2;
    if (i)
    {
      v51 = v8;
      v8 = i & ~(i >> 63);

      sub_24F4578E0(0, v8, 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v12 = v51;
        v43 = a1;
        v44 = a3;
        if (v46)
        {
          v47 = v10 & 0xFFFFFFFFFFFFFF8;
          v14 = sub_24F92C738();
          v13 = v10;
        }

        else
        {
          v13 = v10;
          v47 = v10 & 0xFFFFFFFFFFFFFF8;
          v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = 0;
        a3 = v13 & 0xC000000000000001;
        a1 = v14 & ~(v14 >> 63);
        while (a1 != v8)
        {
          if (a3)
          {
            v15 = MEMORY[0x253052270](v8);
          }

          else
          {
            if (v8 >= *(v47 + 16))
            {
              goto LABEL_52;
            }

            v15 = *(v13 + 8 * v8 + 32);
          }

          v16 = v15;
          v17 = sub_24E9D9FE4(v8, v15);
          v19 = v18;

          v51 = v12;
          v10 = *(v12 + 16);
          v20 = *(v12 + 24);
          a2 = v10 + 1;
          if (v10 >= v20 >> 1)
          {
            sub_24F4578E0((v20 > 1), v10 + 1, 1);
            v12 = v51;
          }

          ++v8;
          *(v12 + 16) = a2;
          v21 = v12 + 16 * v10;
          *(v21 + 32) = v17;
          *(v21 + 40) = v19;
          v13 = v50;
          if (i == v8)
          {
            v10 = v50;

            a1 = v43;
            a3 = v44;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
LABEL_22:
      v51 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E907170();
      v22 = sub_24F92AF68();
      v24 = v23;

      if (qword_27F211410 != -1)
      {
        swift_once();
      }

      v25 = sub_24F9220D8();
      __swift_project_value_buffer(v25, qword_27F39E880);

      v26 = sub_24F9220B8();
      v8 = sub_24F92BD98();

      if (os_log_type_enabled(v26, v8))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v51 = v28;
        *v27 = 136446722;
        *(v27 + 4) = sub_24E7620D4(0xD000000000000024, 0x800000024F972850, &v51);
        *(v27 + 12) = 2048;
        if (a1)
        {
          if (a1 >> 62)
          {
            v29 = sub_24F92C738();
          }

          else
          {
            v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v29 = 0;
        }

        *(v27 + 14) = v29;

        *(v27 + 22) = 2080;
        v33 = sub_24E7620D4(v22, v24, &v51);

        *(v27 + 24) = v33;
        _os_log_impl(&dword_24E5DD000, v26, v8, "%{public}s: getLeaderboards finished with %ld leaderboards\n%s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v28, -1, -1);
        MEMORY[0x2530542D0](v27, -1, -1);

        v30 = v45;
        if (v45)
        {
LABEL_29:
          v51 = v30;
          v31 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
          return sub_24F92B788();
        }
      }

      else
      {

        v30 = v45;
        if (v45)
        {
          goto LABEL_29;
        }
      }

      if (!v46)
      {
        v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_34;
      }
    }

    v34 = sub_24F92C738();
LABEL_34:

    if (!v34)
    {
      break;
    }

    a2 = 0;
    v35 = v10 & 0xC000000000000001;
    v36 = v10 & 0xFFFFFFFFFFFFFF8;
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35)
      {
        v38 = MEMORY[0x253052270](a2, v10);
      }

      else
      {
        if (a2 >= *(v36 + 16))
        {
          goto LABEL_54;
        }

        v38 = *(v10 + 8 * a2 + 32);
      }

      v8 = v38;
      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      result = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_24F6BA118(result, v49);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_24E618218(0, v37[2] + 1, 1, v37);
      }

      a1 = v37[2];
      v39 = v37[3];
      v8 = a1 + 1;
      if (a1 >= v39 >> 1)
      {
        v37 = sub_24E618218((v39 > 1), a1 + 1, 1, v37);
      }

      v37[2] = v8;
      sub_24E90FDA8(v49, v37 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * a1);
      ++a2;
      v40 = v10 == v34;
      v10 = v50;
      if (v40)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v41 = sub_24F92C738();
    v9 = v10;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_50:

  v51 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  return sub_24F92B798();
}

uint64_t sub_24E9D9FE4(uint64_t a1, void *a2)
{
  sub_24F92C888();
  v3 = sub_24F92CD88();

  v17 = v3;
  MEMORY[0x253050C20](0x3D656C746974203ALL, 0xE800000000000000);
  v4 = [a2 title];
  v5 = sub_24F92B0D8();
  v7 = v6;

  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA4CC50);
  v8 = [a2 baseLeaderboardID];
  v9 = sub_24F92B0D8();
  v11 = v10;

  MEMORY[0x253050C20](v9, v11);

  MEMORY[0x253050C20](0x6669746E65646920, 0xEC0000003D726569);
  v12 = [a2 identifier];
  v13 = sub_24F92B0D8();
  v15 = v14;

  MEMORY[0x253050C20](v13, v15);

  return v17;
}

uint64_t sub_24E9DA190(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  v4 = *(a2 + 32);
  *(v2 + 64) = *(a2 + 48);
  *(v2 + 72) = a1;
  *(v2 + 48) = v4;
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_24E9DA250;

  return sub_24E9DA8EC(v2 + 16);
}

uint64_t sub_24E9DA250(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 72) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24E9DA360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24E9DA388, 0, 0);
}

uint64_t sub_24E9DA388()
{
  v36 = v0;
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E880);

  v5 = v2;

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v33 = v0[5];
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v9 = 136446978;
    *(v9 + 4) = sub_24E7620D4(0xD000000000000024, 0x800000024F972850, &v35);
    *(v9 + 12) = 2080;
    v10 = [v8 gameDescriptor];
    v11 = [v10 bundleIdentifier];

    v12 = sub_24F92B0D8();
    v14 = v13;

    v15 = sub_24E7620D4(v12, v14, &v35);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    if (v33)
    {
      v16 = MEMORY[0x253050F40](v1, MEMORY[0x277D837D0]);
      v18 = v17;
    }

    else
    {
      v16 = 7104878;
      v18 = 0xE300000000000000;
    }

    v21 = v0[3];
    v22 = v0[4];
    v23 = sub_24E7620D4(v16, v18, &v35);

    *(v9 + 24) = v23;
    *(v9 + 32) = 2080;
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      v24 = 7104878;
    }

    if (v22)
    {
      v25 = v3;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_24E7620D4(v24, v25, &v35);

    *(v9 + 34) = v26;
    _os_log_impl(&dword_24E5DD000, v6, v7, "%{public}s: getLeaderboards game=%s leaderboardIDs=%s leaderboardSetID=%s start", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v34, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);

    if (!v0[5])
    {
      goto LABEL_16;
    }

LABEL_7:

    v20 = sub_24F45D828(v19);

    goto LABEL_17;
  }

  if (v0[5])
  {
    goto LABEL_7;
  }

LABEL_16:
  v20 = 0;
LABEL_17:
  v0[8] = v20;
  v28 = v0[3];
  v27 = v0[4];
  v29 = swift_task_alloc();
  v0[9] = v29;
  *(v29 + 16) = *(v0 + 3);
  *(v29 + 32) = v20;
  *(v29 + 40) = v28;
  *(v29 + 48) = v27;
  v30 = swift_task_alloc();
  v0[10] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440, &qword_24F951190);
  *v30 = v0;
  v30[1] = sub_24E9DA75C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x800000024FA4CC10, sub_24E9DB084, v29, v31);
}

uint64_t sub_24E9DA75C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E9DA880;
  }

  else
  {

    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DA880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E9DA8EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v1[4] = a1;
  v1[5] = v2;
  v1[6] = v3;
  return MEMORY[0x2822009F8](sub_24E9DA914, 0, 0);
}

uint64_t sub_24E9DA914()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24E9DAA20;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24E9DAA20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24E699570;
  }

  else
  {

    v2 = sub_24E9DAB3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DAB3C()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[10] = v2;
  v3 = [v2 internal];
  v0[11] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_24E69A5C4(0, &qword_27F21C808, 0x277D0C048);
  *v7 = v0;
  v7[1] = sub_24E9DAC98;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v6, v8);
}

uint64_t sub_24E9DAC98()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E795F7C;
  }

  else
  {

    v2 = sub_24E9DADB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9DADB4()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[15] = v2;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24E9DAE6C;
  v7 = v0[11];

  return sub_24E9DA360(v3, v4, v5, v2, v7);
}

uint64_t sub_24E9DAE6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_24E9DB014;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_24E9DAF94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E9DAF94()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_24E9DB014()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24E9DB094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_24E9DB128(unint64_t a1, unint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9D99C4(a1, a2, v6);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PrivacyHeader.__allocating_init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v21 = a3;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    v14 = v26;
    *(v13 + 40) = v25;
    *(v13 + 56) = v14;
    *(v13 + 72) = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    v23 = v15;
    v24 = v17;
    sub_24F92C7F8();
    sub_24E601704(&v25, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v18 = v21;
  *(v13 + 16) = a2;
  *(v13 + 24) = v18;
  *(v13 + 32) = v22 & 1;
  return v13;
}

uint64_t PrivacyHeader.init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v23 = a4;
  v22 = a3;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v24 = v15;
    v25 = v17;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v18 = v30;
  *(v8 + 40) = v29;
  *(v8 + 56) = v18;
  *(v8 + 72) = v31;
  v19 = v22;
  *(v8 + 16) = a2;
  *(v8 + 24) = v19;
  *(v8 + 32) = v23 & 1;
  return v8;
}

char *PrivacyHeader.__allocating_init(deserializing:using:)(uint64_t a1, void (*a2)(void, void))
{
  v121 = a2;
  v95 = sub_24F91F6B8();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v84 - v7;
  MEMORY[0x28223BE20](v8);
  v112 = &v84 - v9;
  v99 = sub_24F92AC28();
  v110 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v84 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v90 = &v84 - v16;
  v17 = sub_24F9285B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F928388();
  v21 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v105 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v84 - v24;
  MEMORY[0x28223BE20](v25);
  v98 = &v84 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  type metadata accessor for LinkableText();
  v114 = a1;
  sub_24F928398();
  v108 = v18;
  v36 = *(v18 + 16);
  v97 = v18 + 16;
  v96 = v36;
  v36(v20, v121, v17);
  sub_24E9DC440(&qword_27F21C360, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v100 = v20;
  sub_24F929548();
  if (v120)
  {
    v89 = v120;
    v107 = v17;
    sub_24F928398();
    v88 = sub_24F928278();
    v39 = *(v21 + 8);
    v37 = (v21 + 8);
    v38 = v39;
    v40 = v113;
    v39(v32, v113);
    v41 = type metadata accessor for Action(0);
    sub_24F928398();
    v42 = v121;
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v121);
    v39(v35, v40);
    sub_24F928398();
    v85 = v41;
    v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v42);
    v39(v35, v40);
    sub_24F928398();
    v43 = v112;
    sub_24F9282B8();
    v39(v29, v40);
    v44 = v110;
    v45 = v99;
    v106 = *(v110 + 48);
    if (v106(v43, 1, v99) == 1)
    {
      v46 = v40;
      sub_24E601704(v43, &qword_27F2213B0, &qword_24F965EC0);
    }

    else
    {
      v50 = *(v44 + 32);
      v84 = v38;
      v51 = v90;
      v50(v90, v43, v45);
      (*(v44 + 16))(v102, v51, v45);
      v96(v100, v42, v107);
      type metadata accessor for PrivacyType(0);
      sub_24E9DC440(&qword_27F224818, 255, type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
      v46 = v113;
      sub_24F92B6A8();

      v52 = v51;
      v38 = v84;
      (*(v44 + 8))(v52, v45);
    }

    v53 = v98;
    sub_24F928398();
    v54 = v103;
    sub_24F9282B8();
    v112 = v37;
    v38(v53, v46);
    if (v106(v54, 1, v45) == 1)
    {
      sub_24E601704(v54, &qword_27F2213B0, &qword_24F965EC0);
      v103 = MEMORY[0x277D84F90];
    }

    else
    {
      v55 = v110;
      v56 = v54;
      v57 = v91;
      (*(v110 + 32))(v91, v56, v45);
      (*(v55 + 16))(v102, v57, v45);
      v96(v100, v121, v107);
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_24E9DC440(&qword_27F224810, 255, type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
      v46 = v113;
      v103 = sub_24F92B6A8();
      (*(v55 + 8))(v57, v45);
    }

    v58 = v101;
    v59 = v114;
    sub_24F928398();
    v60 = v104;
    sub_24F9282B8();
    v61 = v60;
    v38(v58, v46);
    if (v106(v60, 1, v45) == 1)
    {
      sub_24E601704(v60, &qword_27F2213B0, &qword_24F965EC0);
    }

    else
    {
      v62 = v110;
      v63 = v92;
      v64 = (*(v110 + 32))(v92, v61, v45);
      MEMORY[0x28223BE20](v64);
      v65 = v121;
      *(&v84 - 2) = v85;
      *(&v84 - 1) = v65;
      v66 = v111;
      sub_24F92ABB8();
      v111 = v66;

      (*(v62 + 8))(v63, v45);
    }

    v67 = v108;
    v68 = v105;
    sub_24F928398();
    v69 = sub_24F928348();
    if (v70)
    {
      *&v117 = v69;
      *(&v117 + 1) = v70;
    }

    else
    {
      v71 = v93;
      sub_24F91F6A8();
      v72 = sub_24F91F668();
      v74 = v73;
      (*(v94 + 8))(v71, v95);
      *&v117 = v72;
      *(&v117 + 1) = v74;
      v46 = v113;
    }

    sub_24F92C7F8();
    v38(v68, v46);
    v29 = swift_allocObject();
    sub_24E65E064(&v120, &v117);
    if (*(&v118 + 1))
    {
      v75 = v118;
      *(v29 + 40) = v117;
      *(v29 + 56) = v75;
      *(v29 + 9) = v119;
      v76 = v107;
    }

    else
    {
      v77 = v93;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v80 = v79;
      v81 = v77;
      v46 = v113;
      (*(v94 + 8))(v81, v95);
      v115 = v78;
      v116 = v80;
      v76 = v107;
      sub_24F92C7F8();
      sub_24E601704(&v117, &qword_27F235830, &qword_24F93B8C0);
    }

    v38(v59, v46);
    sub_24E601704(&v120, &qword_27F235830, &qword_24F93B8C0);
    v82 = v103;
    *(v29 + 2) = v89;
    *(v29 + 3) = v82;
    v29[32] = v88 & 1;
    (*(v67 + 8))(v121, v76);
  }

  else
  {
    v47 = sub_24F92AC38();
    sub_24E9DC440(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v48 = 0x7478655479646F62;
    v49 = v109;
    v48[1] = 0xE800000000000000;
    v48[2] = v49;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();
    (*(v21 + 8))(v114, v113);
    (*(v108 + 8))(v121, v17);
  }

  return v29;
}

uint64_t PrivacyHeader.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t PrivacyHeader.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

char *sub_24E9DC3CC@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, char **a3@<X8>)
{
  result = PrivacyHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E9DC440(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JSONObject.requiredString(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    v10 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    (*(*(v10 - 8) + 104))(v13, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  return v10;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24E9DC6BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_24E9DC704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9DC788@<X0>(uint64_t a1@<X8>)
{
  sub_24E9DCBF4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v1;
  v12 = *(*v1 + 16);

  sub_24E9DD2A4(v12, &v80);
  v65 = v80;
  v13 = v81;
  v14 = BYTE8(v81);
  v15 = sub_24F925828();
  v16 = sub_24EA91914(v15, v4);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80, &unk_24F93E8E0);
  sub_24F926F28();
  v23 = *(&v87 + 1);
  *(a1 + 88) = v87;
  *(a1 + 96) = v23;
  v67 = 0;
  v68 = 0;
  LOBYTE(v69) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88, &qword_24F9EC890);
  sub_24F926F28();
  v24 = v88;
  v25 = *(&v88 + 1);
  *(a1 + 104) = v87;
  *(a1 + 120) = v24;
  *(a1 + 128) = v25;
  v26 = type metadata accessor for ChallengesSlashHeaderView(0);
  v27 = v26[10];
  *(a1 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *(a1 + v26[11]) = 0x4031000000000000;
  *(a1 + v26[12]) = 0x4020000000000000;
  v28 = (a1 + v26[13]);
  *v28 = 0xD000000000000017;
  v28[1] = 0x800000024FA453F0;
  *a1 = v11;
  *(a1 + 8) = v65;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = *(v1 + 8);
  *(a1 + 48) = *(v1 + 16);
  *(a1 + 56) = v16;
  *(a1 + 64) = v18;
  *(a1 + 72) = v20;
  *(a1 + 80) = v22;
  LOBYTE(v11) = sub_24F9257F8();
  sub_24E9DD870();
  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224828, &qword_24F972B98) + 36);
  *v37 = v11;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = sub_24F9275B8();
  v40 = v39;
  sub_24E9DDB30(v1, &v75, v4, v6, v8, v10);
  v82 = *v77;
  v83 = *&v77[16];
  v84 = v78;
  v80 = v75;
  v81 = v76;
  *&v85 = v79;
  *(&v85 + 1) = v38;
  v86 = v40;
  v41 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224830, &qword_24F972BA0) + 36);
  v42 = v83;
  v43 = v85;
  *(v41 + 64) = v84;
  *(v41 + 80) = v43;
  *(v41 + 96) = v86;
  v44 = v81;
  *v41 = v80;
  *(v41 + 16) = v44;
  *(v41 + 32) = v82;
  *(v41 + 48) = v42;
  v88 = v76;
  v87 = v75;
  v90 = *&v77[16];
  v91 = v78;
  v89 = *v77;
  v92 = v79;
  v93 = v38;
  v94 = v40;
  sub_24E60169C(&v80, &v67, &qword_27F224838, &qword_24F972BA8);
  sub_24E601704(&v87, &qword_27F224838, &qword_24F972BA8);
  LOBYTE(v38) = sub_24F925828();
  sub_24F923318();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224840, &qword_24F972BB0) + 36);
  *v53 = v38;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48;
  *(v53 + 24) = v50;
  *(v53 + 32) = v52;
  *(v53 + 40) = 0;
  v54 = sub_24F927618();
  v56 = v55;
  v57 = *(v1 + 24);
  v58 = *(v1 + 32);
  v59 = *(v1 + 40);
  v60 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v66[64] = 0;
  *&v75 = v54;
  *(&v75 + 1) = v56;
  *&v76 = v57;
  *(&v76 + 1) = v58;
  *v77 = v59;
  *&v77[8] = v60;
  *&v77[16] = KeyPath;
  v77[24] = 0;
  v62 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224848, &qword_24F972BE0) + 36));
  v63 = v76;
  *v62 = v75;
  v62[1] = v63;
  v62[2] = *v77;
  *(v62 + 41) = *&v77[9];
  v67 = v54;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = KeyPath;
  v74 = 0;
  sub_24E60169C(&v75, v66, &qword_27F224850, &qword_24F972BE8);
  return sub_24E601704(&v67, &qword_27F224850, &qword_24F972BE8);
}

void sub_24E9DCBF4()
{
  v1 = v0;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v0 + 64);
  v6 = *(v0 + 56);
  v29 = v6;
  if (v30 == 1)
  {
    if (v6 != 1)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v29, &qword_27F21B1E0, &unk_24F950550);
    (*(v3 + 8))(v5, v2);
    if (v27 != 1)
    {
      return;
    }
  }

  v28 = *(v1 + 80);
  v27 = *(v1 + 72);
  v8 = v27;
  v9 = v28;

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v27, &qword_27F224858, &qword_24F972BF0);
    (*(v3 + 8))(v5, v2);
    v10 = v26;
  }

  swift_getKeyPath();
  v26 = v10;
  sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  v14 = *(v10 + 96);
  v15 = *(v10 + 104);
  v16 = *(v10 + 112);

  if ((v16 & 1) == 0)
  {

    v17 = v8;
    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v18 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v27, &qword_27F224858, &qword_24F972BF0);
      (*(v3 + 8))(v5, v2);
      v17 = v26;
    }

    swift_getKeyPath();
    v26 = v17;
    sub_24F91FD88();

    v19 = *(v17 + 136);

    if ((v19 & 1) == 0)
    {

      v20 = v8;
      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v21 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858, &qword_24F972BF0);
        (*(v3 + 8))(v5, v2);
        v20 = v26;
      }

      swift_getKeyPath();
      v26 = v20;
      sub_24F91FD88();

      v22 = v8;
      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v23 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858, &qword_24F972BF0);
        (*(v3 + 8))(v5, v2);
        v22 = v26;
      }

      swift_getKeyPath();
      v26 = v22;
      sub_24F91FD88();

      v31.origin.x = v12;
      v31.origin.y = v13;
      v31.size.width = v14;
      v31.size.height = v15;
      CGRectGetMinY(v31);

      if ((v9 & 1) == 0)
      {
        sub_24F92BDC8();
        v24 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E601704(&v27, &qword_27F224858, &qword_24F972BF0);
        (*(v3 + 8))(v5, v2);
        v8 = v26;
      }

      swift_getKeyPath();
      v26 = v8;
      sub_24F91FD88();
    }
  }
}

void sub_24E9DD2A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + 64);
  v9 = *(v2 + 56);
  v39 = v9;
  v10 = v40;
  if (v40 == 1)
  {
    v11 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v39, &qword_27F21B1E0, &unk_24F950550);
    (*(v6 + 8))(v8, v5);
    v11 = v37;
  }

  if (v11 <= 1u)
  {
    if (!v11)
    {
      if (a1 <= 3)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.75;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (a1 <= 3)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.85;
    }

    goto LABEL_13;
  }

  v13 = 1.0;
  if (v11 == 2)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v10)
  {
    v14 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v39, &qword_27F21B1E0, &unk_24F950550);
    (*(v6 + 8))(v8, v5);
    v14 = v37;
  }

  if (v14 <= 1u)
  {
    if (v14)
    {
      v16 = v13 * 156.0;
      v17 = 91.0;
LABEL_21:
      v18 = v13 * v17;
      v19 = v13 * 42.0;
      goto LABEL_23;
    }

LABEL_20:
    v16 = v13 * 120.0;
    v17 = 80.0;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    goto LABEL_20;
  }

  v16 = 156.0;
  v18 = 91.0;
  v19 = 42.0;
LABEL_23:
  v35 = a1;
  v38 = *(v2 + 80);
  v20 = *(v2 + 72);
  v37 = v20;
  v21 = v38;

  if ((v21 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v37, &qword_27F224858, &qword_24F972BF0);
    (*(v6 + 8))(v8, v5);
    v20 = v36;
  }

  swift_getKeyPath();
  v36 = v20;
  sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v23 = *(v20 + 128);
  v24 = *(v20 + 136);

  if ((v24 & 1) == 0)
  {
    sub_24E9DCBF4();
    v26 = v25;
    v28 = v23 - v27;
    if (!v10)
    {

      sub_24F92BDC8();
      v29 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v39, &qword_27F21B1E0, &unk_24F950550);
      (*(v6 + 8))(v8, v5);
      LOBYTE(v9) = v36;
    }

    v30 = v28 - v26;
    if (v9 > 1u)
    {
      v33 = 1.0;
      if (v9 == 2)
      {
LABEL_41:
        v16 = v16 * v33;
        v18 = v18 * v33;
        goto LABEL_42;
      }

      v31 = v30 * 177.0 / 452.0;
    }

    else
    {
      if (v9)
      {
        v34 = v16 + 32.0;
        if (v30 > v16 + 32.0)
        {
          v30 = v30 * 225.0 / 350.0;
          if (v30 <= v34)
          {
            v30 = v16 + 32.0;
          }
        }

        v33 = v30 / v34;
        goto LABEL_41;
      }

      v31 = v30 * 225.0 / 408.0;
      if (v31 >= v16)
      {
        v32 = (v16 + (v31 - v16) / v35) / v16;
        v33 = 1.5;
        if (v32 <= 1.5)
        {
          v33 = v32;
        }

        goto LABEL_41;
      }
    }

    v33 = v31 / v16;
    goto LABEL_41;
  }

LABEL_42:
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
}

double sub_24E9DD870()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 64);
  v5 = *(v0 + 56);
  v19 = v5;
  if (v20 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v19, &qword_27F21B1E0, &unk_24F950550);
    (*(v2 + 8))(v4, v1);
    v6 = v17;
  }

  v8 = 0.0;
  if (v6 == 1)
  {
    v18 = *(v0 + 80);
    v9 = *(v0 + 72);
    v17 = v9;
    v10 = v18;

    if ((v10 & 1) == 0)
    {
      sub_24F92BDC8();
      v11 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v17, &qword_27F224858, &qword_24F972BF0);
      (*(v2 + 8))(v4, v1);
      v9 = v16;
    }

    swift_getKeyPath();
    v16 = v9;
    sub_24E9DEA18(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    sub_24F91FD88();

    v12 = *(v9 + 120);
    v13 = *(v9 + 136);

    if ((v13 & 1) == 0)
    {
      return v12 * 0.12;
    }
  }

  return v8;
}

void sub_24E9DDB30(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(a1 + 17))
  {
    v11 = sub_24F926C38();
    v12 = sub_24F927618();
    v14 = v13;
    sub_24E9DDC14(a3, a4, a5, a6);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = sub_24F925808();
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v23 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = v23;
  *(a2 + 48) = v16;
  *(a2 + 56) = v18;
  *(a2 + 64) = v20;
  *(a2 + 72) = v22;
  *(a2 + 80) = 0;
}

void sub_24E9DDC14(double a1, double a2, double a3, double a4)
{
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v4 + 64);
  v10 = *(v4 + 56);
  v19 = v10;
  if (v20 != 1)
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v19, &qword_27F21B1E0, &unk_24F950550);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v10) = v18[79];
  }

  if (v10 - 2 >= 2)
  {
    if (v10)
    {
      v17 = sub_24F925808();
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v13 = sub_24F925828();
    *(inited + 32) = v13;
    v14 = sub_24F9257F8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v13 = sub_24F925828();
    *(inited + 32) = v13;
    v14 = sub_24F925858();
  }

  v15 = v14;
  *(inited + 33) = v14;
  v16 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v13)
  {
    v16 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v15)
  {
    v17 = sub_24F925848();
LABEL_12:
    v16 = v17;
  }

  sub_24EA91914(v16, a1);
}

uint64_t sub_24E9DDEF4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v52 = *(a1 + 32);
  }

  else
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E9DEA7C(a1);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v52;
  }

  if (v8 > 1u)
  {
    if (v8 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24F93FC20;
      sub_24F926C98();
      *(v13 + 32) = sub_24F9273C8();
      *(v13 + 40) = v14;
      sub_24F926C98();
      *(v13 + 48) = sub_24F9273C8();
      *(v13 + 56) = v15;
      sub_24F926C88();
      sub_24F926D08();

      *(v13 + 64) = sub_24F9273C8();
      *(v13 + 72) = v16;
      sub_24F926C88();
      *(v13 + 80) = sub_24F9273C8();
      *(v13 + 88) = v17;
      sub_24F927878();
      sub_24F927898();
      sub_24F9273D8();
      sub_24F923BD8();
      sub_24F927618();
      sub_24F9238C8();
      v35 = 1;
      v49 = v31;
      v50 = v32;
      *v51 = v33;
      *&v51[16] = v34;
      v47 = v29;
      v48 = v30;
      v51[24] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0, &qword_24F9736E0);
      sub_24E9DEB30();
      sub_24F924E28();
      v44 = v39;
      v45 = v40;
      v11 = v41[0];
      goto LABEL_10;
    }
  }

  else if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F93A400;
    *(v10 + 32) = sub_24F926C98();
    *(v10 + 40) = sub_24F926C88();
    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v10);
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v35 = 0;
    v49 = v25;
    v50 = v26;
    *v51 = v27;
    *&v51[16] = v28;
    v47 = *&v23[8];
    v48 = v24;
    v51[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0, &qword_24F9736E0);
    sub_24E9DEB30();
    sub_24F924E28();
    v44 = v39;
    v45 = v40;
    v11 = v41[0];
LABEL_10:
    *v46 = v11;
    *(&v46[1] + 1) = *(v41 + 9);
    v42 = v37;
    v43 = v38;
    v36[0] = 0;
    BYTE1(v46[3]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224898, &unk_24F972D40);
    sub_24E9DEAAC();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 32) = sub_24F926C98();
  *(v12 + 40) = sub_24F926C88();
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v12);
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v44 = *&v46[9];
  v45 = *&v46[11];
  *v46 = *&v46[13];
  v46[2] = v46[15];
  v42 = *&v46[5];
  v43 = *&v46[7];
  LOBYTE(v37) = 1;
  BYTE1(v46[3]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224898, &unk_24F972D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0, &qword_24F9736E0);
  sub_24E9DEAAC();
  sub_24E9DEB30();
LABEL_11:
  sub_24F924E28();
  v44 = v49;
  v45 = v50;
  *v46 = *v51;
  *(&v46[1] + 2) = *&v51[10];
  v42 = v47;
  v43 = v48;
  v39 = v49;
  v40 = v50;
  v41[0] = *v51;
  *(v41 + 10) = *&v51[10];
  v37 = v47;
  v38 = v48;
  v18 = v48;
  v19 = v49;
  v20 = v50;
  *a2 = v47;
  a2[1] = v18;
  *(a2 + 74) = *&v51[10];
  v21 = *v51;
  a2[3] = v20;
  a2[4] = v21;
  a2[2] = v19;
  sub_24E60169C(&v37, v36, &qword_27F2248B8, &unk_24F972D50);
  return sub_24E601704(&v42, &qword_27F2248B8, &unk_24F972D50);
}

double sub_24E9DE558@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v19 = *v2;
  v20[0] = v4;
  *(v20 + 9) = *(v2 + 25);
  v5 = sub_24F924C88();
  v18 = 0;
  sub_24E9DDEF4(&v19, &v12);
  v23 = v14;
  v24 = v15;
  v25[0] = v16[0];
  *(v25 + 10) = *(v16 + 10);
  v21 = v12;
  v22 = v13;
  *(v27 + 10) = *(v16 + 10);
  v26[2] = v14;
  v26[3] = v15;
  v27[0] = v16[0];
  v26[0] = v12;
  v26[1] = v13;
  sub_24E60169C(&v21, &v11, &qword_27F224890, &unk_24F972D30);
  sub_24E601704(v26, &qword_27F224890, &unk_24F972D30);
  *&v17[39] = v23;
  *&v17[55] = v24;
  *&v17[71] = v25[0];
  *&v17[81] = *(v25 + 10);
  *&v17[7] = v21;
  *&v17[23] = v22;
  v6 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v7 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v7;
  v9 = *v17;
  result = *&v17[16];
  *(a2 + 33) = *&v17[16];
  *(a2 + 49) = v6;
  v10 = v18;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 113) = v17[96];
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_24E9DE6B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24E9DE6FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_24E9DE760()
{
  result = qword_27F224860;
  if (!qword_27F224860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224848, &qword_24F972BE0);
    sub_24E9DE818();
    sub_24E602068(&qword_27F224888, &qword_27F224850, &qword_24F972BE8, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224860);
  }

  return result;
}

unint64_t sub_24E9DE818()
{
  result = qword_27F224868;
  if (!qword_27F224868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224840, &qword_24F972BB0);
    sub_24E9DE8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224868);
  }

  return result;
}

unint64_t sub_24E9DE8A4()
{
  result = qword_27F224870;
  if (!qword_27F224870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224830, &qword_24F972BA0);
    sub_24E9DE95C();
    sub_24E602068(&qword_27F224880, &qword_27F224838, &qword_24F972BA8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224870);
  }

  return result;
}

unint64_t sub_24E9DE95C()
{
  result = qword_27F224878;
  if (!qword_27F224878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224828, &qword_24F972B98);
    sub_24E9DEA18(&qword_27F214DC8, type metadata accessor for ChallengesSlashHeaderView, &protocol conformance descriptor for ChallengesSlashHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224878);
  }

  return result;
}

uint64_t sub_24E9DEA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E9DEAAC()
{
  result = qword_27F2248A8;
  if (!qword_27F2248A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224898, &unk_24F972D40);
    sub_24E9DEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248A8);
  }

  return result;
}

unint64_t sub_24E9DEB30()
{
  result = qword_27F2248B0;
  if (!qword_27F2248B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2248A0, &qword_24F9736E0);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248B0);
  }

  return result;
}

uint64_t ProductPageLinkLayout.init(metrics:iconView:titleText:)@<X0>(double *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E9DEC9C(a1, a4 + 80);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E9DECD4(a1);
  sub_24E612C80(a3, a4 + 40);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t ProductPageLinkLayout.Metrics.init(iconSize:iconMargin:titleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  sub_24E612C80(a1, (a4 + 2));
  sub_24E612C80(a2, (a4 + 7));

  return sub_24E612C80(a3, (a4 + 12));
}

uint64_t ProductPageLinkLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v29 = a2;
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_24F922288();
  v28[2] = v15;
  v17 = v16;
  v30.origin.x = a2;
  v30.origin.y = a3;
  v18 = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  MinY = CGRectGetMinY(v30);
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  v28[1] = v17;
  sub_24F9223C8();
  v21 = MinY + v20;
  v28[0] = MinY + v20;
  v22 = *(v5 + 88);
  v23 = ceil(floor(v17 * 0.5) + v21 - v22 * 0.5);
  v31.origin.x = v29;
  v31.origin.y = v18;
  v31.size.width = a4;
  v31.size.height = a5;
  MinX = CGRectGetMinX(v31);
  v25 = *(v5 + 80);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v32.origin.x = MinX;
  v32.origin.y = v23;
  v32.size.width = v25;
  v32.size.height = v22;
  CGRectGetMaxX(v32);
  v26 = *(v5 + 120);
  __swift_project_boxed_opaque_existential_1(v6 + 12, v6[15]);
  sub_24E8ED7D8(v26);
  sub_24F9223A8();
  (*(v12 + 8))(v14, v11);
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

double _s12GameStoreKit21ProductPageLinkLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922618();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6, v12);
  sub_24F9225F8();
  v15 = [a2 traitCollection];
  v16 = sub_24F92BF98();
  v17 = MEMORY[0x277D228E0];
  if (v16)
  {
    v18 = *(a1 + 8);
    v24[3] = MEMORY[0x277D85048];
    v24[4] = MEMORY[0x277D225F8];
    v24[0] = v18;
    v19 = sub_24F9229A8();
    v26 = v19;
    v27 = v17;
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24E615E00(a1 + 16, v24);
    v26 = v19;
    v27 = v17;
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_24E615E00(a1 + 56, v24);
  v20 = sub_24F9229A8();
  v26 = v20;
  v27 = v17;
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_24E615E00(a1 + 96, v24);
  v26 = v20;
  v27 = v17;
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_24F9225D8();
  v22 = v21;

  (*(v11 + 8))(v14, v10);
  return v22;
}

unint64_t sub_24E9DF464()
{
  result = qword_27F2248D0;
  if (!qword_27F2248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248D0);
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

uint64_t sub_24E9DF4FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9DF544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9DF5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9DF610(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_24E9DF6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = sub_24F924248();
  MEMORY[0x28223BE20](v61);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248F0, &qword_24F972FA8);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v55 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248F8, &qword_24F972FB0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v55 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900, &qword_24F972FB8);
  MEMORY[0x28223BE20](v57);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224908, &qword_24F972FC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  if ((*(a1 + 32) & 8) != 0)
  {
    sub_24F9271E8();
    v27 = sub_24F9271F8();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
  }

  else
  {
    v26 = sub_24F9271F8();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  v28 = sub_24F9232F8();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  swift_beginAccess();
  v29 = *(a1 + 80);
  if (v29)
  {
    v30 = type metadata accessor for Action(0);
    v31 = sub_24E9E0804(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
  }

  *&v68 = v29;
  *(&v69 + 1) = v30;
  *&v70 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224910, &qword_24F972FC8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224918, &qword_24F972FD0);
  v33 = sub_24E9E05D8();
  v66 = v32;
  v67 = v33;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v34 = sub_24F924258();
  *&v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24F924B38();
  (*(*(v37 - 8) + 104))(&v6[v35], v36, v37);
  __asm { FMOV            V0.2D, #12.0 }

  *v6 = _Q0;
  *&v6[*(v61 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v43 = sub_24F926D08();

  sub_24E645844(v6, v56);
  sub_24E9E0804(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v44 = sub_24F927348();
  sub_24E6458F0(v6);
  *(&v70 + 1) = v44;
  *&v71 = v43;
  sub_24E602068(&qword_27F224938, &qword_27F2248F0, &qword_24F972FA8, MEMORY[0x277D7EB00]);
  sub_24E62A2EC();
  v45 = v59;
  v46 = v60;
  sub_24F926178();
  sub_24E64594C(&v68);
  (*(v58 + 8))(v11, v46);
  sub_24F927618();
  sub_24F9242E8();
  (*(v62 + 32))(v16, v45, v63);
  v47 = &v16[*(v57 + 36)];
  v48 = v73;
  *(v47 + 4) = v72;
  *(v47 + 5) = v48;
  *(v47 + 6) = v74;
  v49 = v69;
  *v47 = v68;
  *(v47 + 1) = v49;
  v50 = v71;
  *(v47 + 2) = v70;
  *(v47 + 3) = v50;
  sub_24E9E06BC(v16, v19);
  sub_24E60169C(v25, v22, &qword_27F224908, &qword_24F972FC0);
  v51 = v64;
  sub_24E9E072C(v19, v64);
  v52 = v65;
  sub_24E60169C(v22, v65, &qword_27F224908, &qword_24F972FC0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224940, &qword_24F972FE0);
  sub_24E9E072C(v51, v52 + *(v53 + 48));
  sub_24E9E079C(v19);
  sub_24E601704(v25, &qword_27F224908, &qword_24F972FC0);
  sub_24E9E079C(v51);
  return sub_24E601704(v22, &qword_27F224908, &qword_24F972FC0);
}

uint64_t sub_24E9DFED8(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224918, &qword_24F972FD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224948, &qword_24F972FE8);
  sub_24E9E0094(a1, &v8[*(v9 + 44)]);
  v10 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_24F9248B8();
  sub_24E9E05D8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F224918, &qword_24F972FD0);
}

uint64_t sub_24E9E0094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224950, &qword_24F973020);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224958, &qword_24F973028);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-v12];
  v14 = *(a1 + 24);
  v47 = *(a1 + 16);
  v48 = v14;
  sub_24E600AEC();

  v15 = sub_24F925E18();
  v17 = v16;
  LOBYTE(v14) = v18;
  LODWORD(v47) = sub_24F9251C8();
  v43 = sub_24F925C58();
  v44 = v19;
  v21 = v20;
  v42 = v22;
  sub_24E600B40(v15, v17, v14 & 1);

  if ((*(a1 + 32) & 2) != 0)
  {
    v25 = sub_24F926DF8();
    v26 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = sub_24F926E78();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v7 = v25;
    LODWORD(v25) = sub_24F9251C8();
    *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224968, &qword_24F973068) + 36)) = v25;
    LOBYTE(v25) = sub_24F925838();
    sub_24F923318();
    v30 = v45;
    v31 = v7 + *(v45 + 36);
    *v31 = v25;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_24E9E085C(v7, v13);
    v23 = 0;
    v24 = v30;
  }

  else
  {
    v23 = 1;
    v24 = v45;
  }

  (*(v46 + 56))(v13, v23, 1, v24);
  sub_24E60169C(v13, v10, &qword_27F224958, &qword_24F973028);
  v37 = v43;
  v36 = v44;
  *a2 = v43;
  *(a2 + 8) = v21;
  v38 = v42 & 1;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224960, &qword_24F973030);
  sub_24E60169C(v10, a2 + *(v39 + 48), &qword_27F224958, &qword_24F973028);
  sub_24E5FD138(v37, v21, v38);

  sub_24E601704(v13, &qword_27F224958, &qword_24F973028);
  sub_24E601704(v10, &qword_27F224958, &qword_24F973028);
  sub_24E600B40(v37, v21, v38);
}

uint64_t sub_24E9E0460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248E8, &qword_24F972FA0);
  return sub_24E9DF6E0(v3, a2 + *(v4 + 44));
}

uint64_t sub_24E9E04B4(uint64_t a1)
{
  sub_24E66D28C();

  return sub_24F9218E8();
}

unint64_t sub_24E9E04FC()
{
  result = qword_27F2248D8;
  if (!qword_27F2248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2248D8);
  }

  return result;
}

unint64_t sub_24E9E05D8()
{
  result = qword_27F224920;
  if (!qword_27F224920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224918, &qword_24F972FD0);
    sub_24E602068(&qword_27F224928, &qword_27F224930, &qword_24F972FD8, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224920);
  }

  return result;
}

uint64_t sub_24E9E06BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900, &qword_24F972FB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E072C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900, &qword_24F972FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9E079C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224900, &qword_24F972FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9E0804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9E085C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224950, &qword_24F973020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *TodayCardMediaHero.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_24F9285B8();
  v5 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v70 = sub_24F928388();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  sub_24F929608();

  sub_24F928398();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_24F929548();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_24F928398();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork(0);
  sub_24E9E1210(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v26 = v25;
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = v27;
  sub_24F928398();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video(0);
  sub_24E9E1210(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v32 = sub_24F92B698();
  v58 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
  sub_24F928398();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_24E9E115C();
  sub_24F929548();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_24F92C738();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_24F92AC38();
      sub_24E9E1210(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMedia.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
    return v51;
  }
}

unint64_t sub_24E9E115C()
{
  result = qword_27F224988;
  if (!qword_27F224988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224980, &qword_24F974D30);
    sub_24E9E1210(&qword_27F224990, type metadata accessor for TodayCardArtworkSizedLayoutMetrics, &protocol conformance descriptor for TodayCardArtworkSizedLayoutMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224988);
  }

  return result;
}

uint64_t sub_24E9E1210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardMediaHero.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_24E60169C(a4, v12 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v22, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    v13 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v13;
    *(v12 + 64) = v21;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v18[1] = v14;
    v18[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v22, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 16) = 9;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaHero.init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v21[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_videos) = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24E60169C(a4, v21 - v14, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v28, &v22, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 9;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t sub_24E9E1748()
{
}

uint64_t TodayCardMediaHero.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaHero.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaHero(uint64_t a1)
{
  result = qword_27F224998;
  if (!qword_27F224998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9E19FC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638, &unk_24F973260);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_24E65864C(*(v1 + 48) + 40 * v14, v28);
    sub_24E643A9C(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_24E65864C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_24E601704(v25, &qword_27F224A00, &unk_24F973240);

LABEL_22:

      return;
    }

    sub_24E643A9C(v26 + 8, v24);
    sub_24E601704(v25, &qword_27F224A00, &unk_24F973240);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_24E76D644(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_24E9E1CDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
    v2 = sub_24F92CB58();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_24E65864C(*(a1 + 48) + 40 * v11, v27);
    sub_24E643A9C(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_24E65864C(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_24E643A9C(v25 + 8, v20);
    sub_24E601704(v24, &qword_27F224A00, &unk_24F973240);
    v21 = v18;
    sub_24E612B0C(v20, v22);
    v12 = v21;
    sub_24E612B0C(v22, v23);
    sub_24E612B0C(v23, &v21);
    v13 = sub_24E76D644(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_24E612B0C(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_24E612B0C(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_24E601704(v24, &qword_27F224A00, &unk_24F973240);
}

void sub_24E9E1FB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B0, &unk_24F973250);
    v2 = sub_24F92CB58();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        sub_24E65864C(*(a1 + 48) + 40 * v10, v24);
        sub_24E643A9C(*(a1 + 56) + 32 * v10, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_24E65864C(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_24E601704(v21, &qword_27F224A00, &unk_24F973240);

          goto LABEL_23;
        }

        sub_24E643A9C(v22 + 8, v20);
        sub_24E601704(v21, &qword_27F224A00, &unk_24F973240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v11 = sub_24E76D644(v18, v19);
        v12 = v11;
        if (v13)
        {
          v8 = (v2[6] + 16 * v11);
          *v8 = v18;
          v8[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
          v14 = (v2[6] + 16 * v11);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v11) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_24E9E2340(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F4578E0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_24E9E247C(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  a2(0, v8, 0);
  v9 = v16;
  if (v8)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        a2(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v14;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t sub_24E9E25A8(unint64_t a1, __n128 a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_24F92C978();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for QuickActionButtonView();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_24F92C738();
    sub_24F92C978();
  }

  return v9;
}

uint64_t sub_24E9E270C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_24F457D24(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_24E643A9C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F457D24((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t ASKBagContract.language.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - v2;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F758();
  v8 = sub_24F91F718();
  if (!v9)
  {
    v8 = sub_24F91F708();
  }

  v10 = v8;
  v11 = v9;
  if (qword_27F210830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92A448();
  MEMORY[0x28223BE20](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v11;
  sub_24F92A408();

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t ASKBagContract.gameActivityPartyStartUrl.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  v4 = sub_24F92B098();
  sub_24F92A448();

  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t ASKBagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

__n128 ASKBagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

double ASKBagContract.fetchTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210840 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.hideableSystemApps.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210850 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_24E9E247C(v7, sub_24F457900, &qword_27F251730, &unk_24F964AF0);

  return v4;
}

uint64_t ASKBagContract.tabs.getter()
{
  if (qword_27F210868 != -1)
  {
    swift_once();
  }

  v0 = qword_27F2337C8;
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v2 = ASKBagContract.tabs(withFallback:bagKey:)(v1, v0);

  return v2;
}

uint64_t ASKBagContract.tabs(withFallback:bagKey:)(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v2 = sub_24F9285B8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F928388();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249C0, &qword_24F9730E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v60 - v10;
  v68 = type metadata accessor for StoreTab(0);
  v12 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v60 - v15);
  MEMORY[0x28223BE20](v17);
  v67 = v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v60 - v21;
  sub_24F92A428();
  sub_24F92A408();
  (*(v20 + 8))(v22, v19);
  v23 = *(v75[0] + 16);
  v64 = v12;
  if (v23)
  {
    v66 = v11;
    v60[1] = v75[0];
    v24 = v75[0] + 32;
    v65 = (v5 + 16);
    v25 = (v5 + 8);
    v26 = (v12 + 48);
    v72 = MEMORY[0x277D84F90];
    v63 = v4;
    v27 = v69;
    do
    {
      sub_24E643A9C(v24, v75);
      sub_24E643A9C(v75, v74);
      sub_24F928378();
      v28 = v71;
      (*v65)(v70, v27, v71);
      sub_24F9285A8();
      sub_24E9E822C(v29);
      v30 = v4;
      v31 = v66;
      v32 = v30;
      v33 = v68;
      sub_24F929548();
      (*v25)(v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v75);
      if ((*v26)(v31, 1, v33) == 1)
      {
        sub_24E601704(v31, &qword_27F2249C0, &qword_24F9730E0);
        v4 = v32;
      }

      else
      {
        sub_24E9E82E8(v31, v67, v34);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v72;
        }

        else
        {
          v36 = sub_24E6181F0(0, v72[2] + 1, 1, v72);
        }

        v38 = v36[2];
        v37 = v36[3];
        if (v38 >= v37 >> 1)
        {
          v36 = sub_24E6181F0((v37 > 1), v38 + 1, 1, v36);
        }

        v36[2] = v38 + 1;
        v39 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v72 = v36;
        sub_24E9E82E8(v67, v36 + v39 + *(v64 + 72) * v38, v35);
        v4 = v63;
      }

      v24 += 32;
      --v23;
    }

    while (v23);

    v41 = v72;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v42 = v41[2];
  v44 = v61;
  v43 = v62;
  if (v42)
  {
    v74[0] = MEMORY[0x277D84FA0];
    v45 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v46 = *(v64 + 72);
    v72 = v41;
    v47 = v41 + v45;
    v43 = MEMORY[0x277D84F90];
    do
    {
      sub_24E9E8284(v47, v16, v40);
      v48 = v74[0];
      v49 = *v16;
      v50 = v16[1];

      LOBYTE(v49) = sub_24F4D3A40(v49, v50, v48);

      if (v49)
      {
        sub_24E9E834C(v16, v51);
      }

      else
      {
        v52 = *v16;
        v53 = v16[1];
        sub_24E8E2880(*v16, v53);
        sub_24ED7E57C(v75, v52, v53);
        sub_24E8E29C4(v75[0], v75[1]);
        sub_24E9E82E8(v16, v44, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458454(0, *(v43 + 16) + 1, 1);
          v43 = v73;
        }

        v58 = *(v43 + 16);
        v57 = *(v43 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_24F458454((v57 > 1), v58 + 1, 1);
          v43 = v73;
        }

        *(v43 + 16) = v58 + 1;
        sub_24E9E82E8(v44, v43 + v45 + v58 * v46, v56);
      }

      v47 += v46;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

  return v43;
}

uint64_t ASKBagContract.metricsConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0, &unk_24F9730E8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  if (qword_27F2108A0 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

double ASKBagContract.sessionDurationPageRender.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2108B0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double ASKBagContract.impressionableThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2108F0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double sub_24E9E4050(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();
  (*(v6 + 8))(v8, v5);
  return *&v10[1];
}

double ASKBagContract.fastImpressionsTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.onboardingCardsMap.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0, &unk_24F9730E8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  if (qword_27F210938 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v8)
  {
    return 0;
  }

  sub_24E9E19FC(v8);
  v5 = v4;

  return v5;
}

double ASKBagContract.onboardingCardExpirationThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210940 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.arcadeProductFamilyId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F2109B8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_27F2109D8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4(v3, v0);
  return v6[0];
}

uint64_t ASKBagContract.arcadeProductId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  if (qword_27F2109C0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_27F2109E0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  v4(v3, v0);
  return v6[0];
}

uint64_t sub_24E9E4F48@<X0>(void *a1@<X0>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  result = (*(v7 + 8))(v9, v6);
  v11 = v14;
  if (v14)
  {
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return result;
}

double ASKBagContract.arcadeSubscribePageDismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2109E8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.challengeAttemptOptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D0, &unk_24F9730E8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  if (qword_27F210A28 != -1)
  {
    swift_once();
  }

  sub_24F92A358();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (!v8 || (sub_24E9E1FB8(v8), v5 = v4, , !v5))
  {
    v5 = sub_24E60C660(&unk_2861C0368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221078, &unk_24F965A00);
    swift_arrayDestroy();
  }

  return v5;
}

double ASKBagContract.playTogetherPlayersGroupTimeThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210A40 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

void *ASKBagContract.resilientDeepLinkPatterns.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210A88 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C03B8;
}

uint64_t sub_24E9E5BA0(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B0, &qword_24F9730D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A3A8();
  sub_24F92A3F8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t ASKBagContract.installAttributionTimerDelaySeconds.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  if (qword_27F210AB8 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_24E9E5F20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v6 + 8))(v8, v5);
  return v10[1];
}

void *ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210AF8 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C03E8;
}

double ASKBagContract.productPageDownloadingOrderingTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210B20 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C40], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

GameStoreKit::ASKBagContract::AdPlacementBagValue_optional __swiftcall ASKBagContract.AdPlacementBagValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASKBagContract.AdPlacementBagValue.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C2D686372616573;
  v3 = 0x7961646F74;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x722D686372616573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E9E6684()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9E6780(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E9E6868()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E9E696C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69646E61;
  v4 = 0x6C2D686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xD000000000000011;
  v8 = 0x800000024FA40510;
  if (v2 != 3)
  {
    v7 = 0xD000000000000021;
    v8 = 0x800000024FA40530;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x722D686372616573;
    v3 = 0xEE0073746C757365;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *ASKBagContract.enabledAdPlacements.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  if (qword_27F210B28 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_24F92A428();
    sub_24F92A3F8();
    v4 = *(v1 + 8);
    v1 += 8;
    v4(v3, v0);
    if (!v14)
    {
      return MEMORY[0x277D84F90];
    }

    v0 = sub_24E9E2340(v14);

    if (!v0)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = 0;
    v6 = *(v0 + 16);
    v7 = MEMORY[0x277D84F90];
    v3 = &unk_2861C0448;
LABEL_5:
    v8 = v0 + 40 + 16 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        return v7;
      }

      if (v5 >= *(v0 + 16))
      {
        break;
      }

      ++v5;
      v9 = v8 + 16;

      v1 = sub_24F92CB88();

      v8 = v9;
      if (v1 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24E618240(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_24E618240((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v7[v11 + 32] = v1;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t ASKBagContract.downloadProgressDisplayRemainingTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8, &qword_24F9730F8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  if (qword_27F210B40 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  v8 = v19;
  if (qword_27F2100E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27F2253B8);
  v10 = (*(v1 + 16))(v3, v9, v0);
  v11 = ASKBuildTypeGetCurrent(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F9479A0;
  *(v12 + 32) = @"debug";
  *(v12 + 40) = @"convergence";
  *(v12 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v13 = @"debug";
  v14 = @"convergence";
  v15 = @"internal";
  v16 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v11, v16);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F928868();

    (*(v1 + 8))(v3, v0);
    if (v20 != 1)
    {
      return v19;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t ASKBagContract.downloadProgressDisplayWaitTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8, &qword_24F9730F8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  if (qword_27F210B48 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  v8 = v19;
  if (qword_27F2100E0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27F2253A0);
  v10 = (*(v1 + 16))(v3, v9, v0);
  v11 = ASKBuildTypeGetCurrent(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F9479A0;
  *(v12 + 32) = @"debug";
  *(v12 + 40) = @"convergence";
  *(v12 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v13 = @"debug";
  v14 = @"convergence";
  v15 = @"internal";
  v16 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v11, v16);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F928868();

    (*(v1 + 8))(v3, v0);
    if (v20 != 1)
    {
      return v19;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

double ASKBagContract.arcadeDownloadPacksGetAllCTADismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210B60 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_24E9E77F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v6 + 8))(v8, v5);
  return v10;
}

void *ASKBagContract.productPageParameterAllowList.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F210BA8 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_2861C04E0;
}

uint64_t sub_24E9E7BB8(void *a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_24E9E7E68(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v6 + 8))(v8, v5);
  return v10[15];
}

uint64_t sub_24E9E7FC8(void *a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v8 = sub_24E9E2340(v11);

    if (v8)
    {
      return v8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t ASKBagContract.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ASKBagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_24E9E8220@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_24E9E822C(__n128 a1)
{
  result = qword_27F2249C8;
  if (!qword_27F2249C8)
  {
    type metadata accessor for StoreTab(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2249C8);
  }

  return result;
}

uint64_t sub_24E9E8284(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for StoreTab(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9E82E8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for StoreTab(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9E834C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for StoreTab(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E9E83AC()
{
  result = qword_27F2249E8;
  if (!qword_27F2249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2249E8);
  }

  return result;
}

uint64_t type metadata accessor for ASKBagContract(uint64_t a1)
{
  result = qword_27F2249F0;
  if (!qword_27F2249F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9E8454(uint64_t a1)
{
  result = sub_24F92A498();
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

uint64_t FlowPreviewAction.__allocating_init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, char *a2, char a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_presentationContext) = v13;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a4, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 16) = v21;
    *(v20 + 32) = v29;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v16 + 8))(a4, v15);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  return v12;
}

uint64_t FlowPreviewAction.init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_presentationContext) = v18;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v25 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t FlowPreviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t FlowPreviewAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowPreviewAction(uint64_t a1)
{
  result = qword_27F224A08;
  if (!qword_27F224A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9E8F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0, &unk_24F973400);
  result = swift_allocObject();
  *(result + 16) = sub_24E9E8F8C;
  *(result + 24) = 0;
  qword_27F224A20 = result;
  return result;
}

void sub_24E9E8F8C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_24F92C138())
  {

    v5 = 4.0;
    goto LABEL_12;
  }

  v6 = sub_24F92B0D8();
  v8 = v7;
  if (v6 != sub_24F92B0D8() || v8 != v9)
  {
    v11 = sub_24F92CE08();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_24F92C178();

  v5 = 0.0;
  if (v12)
  {
    v5 = 1.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F210090 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F224A20;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  result = sub_24E612C80(a3, a5 + 80);
  *(a5 + 120) = v8;
  return result;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v30 = a2;
  v27 = sub_24F92CDB8();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
  sub_24F922288();
  v28 = v17;
  v29 = v16;
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v25[3] = a1;
  sub_24F922288();
  v26 = v18;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMidY(v33);
  sub_24F922228();
  v19 = v6[13];
  v25[2] = v6[14];
  __swift_project_boxed_opaque_existential_1(v6 + 10, v19);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922218();
  CGRectGetMaxX(v34);
  v31 = v6[15];

  sub_24F9220E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670, &unk_24F980F40);
  sub_24E9E955C();
  sub_24F9223A8();
  v20 = v13 + 8;
  v21 = *(v13 + 8);
  v25[1] = v20;
  v22 = v27;
  v21(v15, v27);

  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMidY(v35);
  sub_24F922228();
  v23 = v6[8];
  v26 = v6[9];
  __swift_project_boxed_opaque_existential_1(v6 + 5, v23);
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922218();
  CGRectGetMaxX(v36);
  v31 = v6[15];

  sub_24F9220E8();
  sub_24F9223A8();
  v21(v15, v22);

  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMidY(v37);
  sub_24F922228();
  return sub_24F922128();
}

unint64_t sub_24E9E955C()
{
  result = qword_27F224A30;
  if (!qword_27F224A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234670, &unk_24F980F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224A30);
  }

  return result;
}

void MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_24F922288();
  v11 = v9;
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  v12 = v3[15];

  sub_24F9220E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670, &unk_24F980F40);
  sub_24E9E955C();
  sub_24F9223A8();
  v10 = *(v6 + 8);
  v10(v8, v5);

  v12 = v3[15];

  sub_24F9220E8();
  sub_24F9223A8();
  v10(v8, v5);
}

uint64_t sub_24E9E984C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E9E9894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9E9928(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9E99F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9E9AC8(uint64_t a1)
{
  sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    sub_24E9E9C64(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E9E9C64(319, &qword_27F224A48, type metadata accessor for TruncationState, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24E654514();
        if (v4 <= 0x3F)
        {
          sub_24E9E9C64(319, &qword_27F224A50, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E9E9C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24E9E9CE4@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TextWithAffordance(0);
  sub_24E60169C(v1 + *(v10 + 24), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24E9E9EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for TextWithAffordance(0);
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v78 = v4;
  v79 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A58, &qword_24F973478);
  MEMORY[0x28223BE20](v66);
  v6 = &v57 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A60, &qword_24F973480);
  MEMORY[0x28223BE20](v65);
  v69 = &v57 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A68, &qword_24F973488);
  MEMORY[0x28223BE20](v70);
  v73 = &v57 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A70, &qword_24F973490);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v57 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A78, &qword_24F973498);
  v10 = MEMORY[0x28223BE20](v72);
  v75 = &v57 - v11;
  v61 = (*(v1 + 8))(v10);
  v60 = v12;
  v14 = v13;
  v59 = v15;
  sub_24F927628();
  sub_24F9242E8();
  v16 = v14 & 1;
  v92 = v14 & 1;
  v17 = (v2 + *(v3 + 28));
  v19 = *v17;
  v18 = v17[1];
  v64 = v19;
  v83 = v19;
  v84 = v18;
  v63 = v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80, &unk_24F9734A0);
  sub_24F926F38();
  v58 = v82;
  v80 = v3;
  v20 = v2 + *(v3 + 32);
  v21 = *(v20 + 1);
  v22 = *v20;
  LOBYTE(v83) = *v20;
  v84 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v82)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = *v2;
  }

  v68 = v22;
  LOBYTE(v83) = v22;
  v84 = v21;
  v67 = v23;
  sub_24F926F38();
  v25 = (v82 & 1) == 0;
  v26 = sub_24F927618();
  v28 = v27;
  v29 = *(v66 + 36);
  v66 = v21;
  v30 = &v6[v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A88, &qword_24F9734B0);
  sub_24E9EA720(v2, v30 + *(v31 + 36));
  *v30 = v26;
  v30[1] = v28;
  v32 = v60;
  *v6 = v61;
  *(v6 + 1) = v32;
  v6[16] = v16;
  *(v6 + 3) = v59;
  v33 = v90;
  *(v6 + 6) = v89;
  *(v6 + 7) = v33;
  *(v6 + 8) = v91;
  v34 = v86;
  *(v6 + 2) = v85;
  *(v6 + 3) = v34;
  v35 = v88;
  *(v6 + 4) = v87;
  *(v6 + 5) = v35;
  *(v6 + 18) = v58;
  *(v6 + 19) = v24;
  v6[160] = v25;
  v36 = sub_24F924CA8();
  v37 = sub_24F924968();
  v38 = v69;
  v39 = &v69[*(v65 + 9)];
  sub_24E9EAE3C(v2, v39);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A90, &unk_24F9734B8) + 36));
  *v40 = v36;
  v40[1] = v37;
  sub_24E9EBCDC(v6, v38);
  v65 = type metadata accessor for TextWithAffordance;
  v41 = v79;
  sub_24E9ED9A0(v2, v79, type metadata accessor for TextWithAffordance);
  v42 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v43 = swift_allocObject();
  sub_24E9EBD50(v41, v43 + v42);
  v44 = v73;
  sub_24E6009C8(v38, v73, &qword_27F224A60, &qword_24F973480);
  v45 = (v44 + *(v70 + 36));
  *v45 = sub_24E9EBDB4;
  v45[1] = v43;
  v45[2] = 0;
  v45[3] = 0;
  v83 = v64;
  v84 = v63;
  sub_24F926F38();
  v46 = v82;
  swift_getKeyPath();
  v83 = v46;
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState, &protocol conformance descriptor for TruncationState);
  sub_24F91FD88();

  LOBYTE(v43) = *(v46 + 16);

  LOBYTE(v83) = v43;
  sub_24E9ED9A0(v2, v41, v65);
  v47 = swift_allocObject();
  sub_24E9EBD50(v41, v47 + v42);
  sub_24E9EC9D8();
  v48 = v74;
  sub_24F926AB8();

  sub_24E601704(v44, &qword_27F224A68, &qword_24F973488);
  KeyPath = swift_getKeyPath();
  v50 = v75;
  v51 = &v75[*(v72 + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0, &qword_24F973530);
  sub_24E9E9CE4((v51 + *(v52 + 28)));
  *v51 = KeyPath;
  (*(v76 + 32))(v50, v48, v77);
  v53 = sub_24F927718();
  LOBYTE(v83) = v68;
  v84 = v66;
  sub_24F926F38();
  LOBYTE(v43) = v82;
  v54 = v81;
  sub_24E6009C8(v50, v81, &qword_27F224A78, &qword_24F973498);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE8, &qword_24F973538);
  v56 = v54 + *(result + 36);
  *v56 = v53;
  *(v56 + 8) = v43;
  return result;
}

uint64_t sub_24E9EA720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B98, &qword_24F973640);
  MEMORY[0x28223BE20](v3);
  v5 = (&v48 - v4);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224BA0, &qword_24F973648);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224BA8, &qword_24F973650);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for TextFadeOutMask(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24E9EACF8();
  v15 = type metadata accessor for TextWithAffordance(0);
  v16 = v15;
  v53 = v8;
  if (v14)
  {
    v17 = v15[10];
    v18 = *(a1 + v15[11]);
    v19 = v15[13];
    v20 = v15[14];
    v50 = v3;
    v21 = *(a1 + v19);
    v22 = *(a1 + v20 + 8);
    v49 = *(a1 + v20);
    v23 = (a1 + v17);
    v24 = *(a1 + v17 + 16);
    v56 = *v23;
    v57 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60, &qword_24F94A150);
    sub_24F926F38();
    v25 = v54;
    v26 = v55;
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    *(v13 + v11[5]) = v18;
    *(v13 + v11[6]) = v21;
    v27 = (v13 + v11[7]);
    *v27 = v49;
    v27[1] = v22;
    v28 = (v13 + v11[8]);
    *v28 = v25;
    v28[1] = v26;
    *(v13 + v11[9]) = 0x403E000000000000;
    sub_24E9ED9A0(v13, v7, type metadata accessor for TextFadeOutMask);
    swift_storeEnumTagMultiPayload();
    sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask, &unk_24F973670);
    sub_24F924E28();
    sub_24E60169C(v10, v5, &qword_27F224BA8, &qword_24F973650);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    sub_24E9ED8EC();
    sub_24F924E28();
    sub_24E601704(v10, &qword_27F224BA8, &qword_24F973650);
    return sub_24E9EDA08(v13);
  }

  v30 = (a1 + v15[8]);
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v56) = v31;
  *(&v56 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v54 == 1)
  {
    v33 = (a1 + v16[9]);
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v56) = v34;
    *(&v56 + 1) = v35;
    sub_24F926F38();
    if (v54 == 1)
    {
      v36 = v16[10];
      v37 = *(a1 + v16[11]);
      v38 = *(a1 + v16[13]);
      v39 = (a1 + v16[15]);
      v40 = v39[1];
      v50 = *v39;
      v41 = (a1 + v36);
      v42 = *(a1 + v36 + 16);
      v56 = *v41;
      v57 = v42;
      v43 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60, &qword_24F94A150);
      sub_24F926F38();
      v44 = v54;
      v45 = v55;
      *v13 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      *(v13 + v11[5]) = v43;
      *(v13 + v11[6]) = v38;
      v46 = (v13 + v11[7]);
      *v46 = v50;
      v46[1] = v40;
      v47 = (v13 + v11[8]);
      *v47 = v44;
      v47[1] = v45;
      *(v13 + v11[9]) = 0x403E000000000000;
      sub_24E9ED9A0(v13, v7, type metadata accessor for TextFadeOutMask);
      swift_storeEnumTagMultiPayload();
      sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask, &unk_24F973670);
      sub_24F924E28();
      sub_24E60169C(v10, v5, &qword_27F224BA8, &qword_24F973650);
      goto LABEL_3;
    }
  }

  *v5 = *(a1 + v16[11]);
  swift_storeEnumTagMultiPayload();
  sub_24E9ED8EC();

  return sub_24F924E28();
}

uint64_t sub_24E9EACF8()
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80, &unk_24F9734A0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState, &protocol conformance descriptor for TruncationState);
  sub_24F91FD88();

  v0 = *(v3 + 16);

  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_24E9EAE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF0, &qword_24F973540);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8, &qword_24F973548);
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  v10 = sub_24E9EACF8();
  v11 = type metadata accessor for TextWithAffordance(0);
  v12 = v11;
  if (v10)
  {
    sub_24E9EB0B4(*(a1 + *(v11 + 56)), *(a1 + *(v11 + 56) + 8), 1, v9);
  }

  else
  {
    v14 = (a1 + *(v11 + 32));
    v15 = *v14;
    v16 = *(v14 + 1);
    v24 = v15;
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if (v23 != 1 || (v17 = (a1 + *(v12 + 36)), v18 = *v17, v19 = *(v17 + 1), v24 = v18, v25 = v19, sub_24F926F38(), v23 != 1))
    {
      v13 = 1;
      goto LABEL_8;
    }

    sub_24E9EB0B4(*(a1 + *(v12 + 60)), *(a1 + *(v12 + 60) + 8), 0, v9);
  }

  sub_24E9ECCBC(v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_24E9ECD2C();
  sub_24F924E28();
  sub_24E601704(v9, &qword_27F224AF8, &qword_24F973548);
  v13 = 0;
LABEL_8:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B00, &qword_24F973550);
  return (*(*(v20 - 8) + 56))(a2, v13, 1, v20);
}

uint64_t sub_24E9EB0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TextWithAffordance(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v44 = a2;
  v42 = type metadata accessor for TextWithAffordance;
  sub_24E9ED9A0(v4, v13, type metadata accessor for TextWithAffordance);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = v14 + v12;
  v16 = swift_allocObject();
  sub_24E9EBD50(v13, v16 + v14);
  *(v16 + v15) = a3;
  sub_24E600AEC();

  sub_24F926FB8();
  v17 = *(v4 + *(v10 + 56));
  KeyPath = swift_getKeyPath();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B58, &qword_24F973578) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = swift_getKeyPath();
  v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B48, &qword_24F973570) + 36);
  *v21 = v20;
  *(v21 + 8) = 1;
  *(v21 + 16) = 0;
  v22 = *(v4 + *(v10 + 60));
  v23 = swift_getKeyPath();
  v24 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B38, &qword_24F973568) + 36));
  *v24 = v23;
  v24[1] = v22;

  LOBYTE(v17) = sub_24F925858();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B28, &qword_24F973560) + 36);
  *v33 = v17;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  sub_24F923918();
  sub_24F9278A8();
  sub_24F923908();
  v34 = sub_24F923928();

  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B18, &qword_24F973558) + 36)) = v34;
  sub_24E9ED9A0(v4, v13, v42);
  v35 = swift_allocObject();
  sub_24E9EBD50(v13, v35 + v14);
  v36 = sub_24F927618();
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8, &qword_24F973548);
  v40 = (a4 + *(result + 36));
  *v40 = sub_24E9ED3CC;
  v40[1] = v35;
  v40[2] = v36;
  v40[3] = v38;
  return result;
}

void sub_24E9EB410(uint64_t a1)
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A80, &unk_24F9734A0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24E9ED864(&qword_27F224A98, type metadata accessor for TruncationState, &protocol conformance descriptor for TruncationState);
  sub_24F91FD88();

  v1 = *(v2 + 16);

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F48();
  }
}

void sub_24E9EB54C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for TextWithAffordance(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F48();
  }
}

double sub_24E9EB5D0(uint64_t a1, char a2)
{
  type metadata accessor for TextWithAffordance(0);
  sub_24F927718();
  sub_24F923B18();

  return result;
}

uint64_t sub_24E9EB658(uint64_t a1, char a2)
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

double sub_24E9EB6DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v20[1] = a1;
  v5 = sub_24F9239C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextWithAffordance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F926C98();
  sub_24E9ED9A0(a2, v12, type metadata accessor for TextWithAffordance);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v13 + v11 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24E9EBD50(v12, v15 + v13);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v26 = v21;
  v27 = sub_24E9ED694;
  v28 = v15;
  v29 = 0;
  v30 = 0;
  sub_24F923998();
  v24 = v16;
  v25 = v17;
  sub_24E9ED9A0(v22, v12, type metadata accessor for TextWithAffordance);
  v18 = swift_allocObject();
  sub_24E9EBD50(v12, v18 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80, &unk_24F973630);
  type metadata accessor for CGSize(0);
  sub_24E9ED7E0();
  sub_24E9ED864(&qword_27F224B90, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_24F926AB8();

  return result;
}

uint64_t sub_24E9EB9D4(uint64_t a1)
{
  sub_24F923998();
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60, &qword_24F94A150);
  return sub_24F926F48();
}

uint64_t sub_24E9EBA5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for TextWithAffordance(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60, &qword_24F94A150);
  return sub_24F926F48();
}

uint64_t sub_24E9EBAD8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E9EBCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A58, &qword_24F973478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9EBD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAffordance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E9EBDB4()
{
  v1 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24E9EB410(v2);
}

double sub_24E9EBE14@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for TextFadeOutMask(0) + 20));
  v6 = sub_24F9249A8();
  v8[0] = 0;
  sub_24E9EC1D4(a1, &v29);
  v22 = *&v30[176];
  v23 = *&v30[192];
  v24 = *&v30[208];
  v18 = *&v30[112];
  v19 = *&v30[128];
  v20 = *&v30[144];
  v21 = *&v30[160];
  v14 = *&v30[48];
  v15 = *&v30[64];
  v16 = *&v30[80];
  v17 = *&v30[96];
  v10 = v29;
  v11 = *v30;
  v12 = *&v30[16];
  v13 = *&v30[32];
  v26[12] = *&v30[176];
  v26[13] = *&v30[192];
  v26[14] = *&v30[208];
  v26[8] = *&v30[112];
  v26[9] = *&v30[128];
  v26[10] = *&v30[144];
  v26[11] = *&v30[160];
  v26[4] = *&v30[48];
  v26[5] = *&v30[64];
  v26[6] = *&v30[80];
  v26[7] = *&v30[96];
  v26[0] = v29;
  v26[1] = *v30;
  v25 = v30[224];
  v27 = v30[224];
  v26[2] = *&v30[16];
  v26[3] = *&v30[32];
  sub_24E60169C(&v10, __src, &qword_27F224BF0, &qword_24F9736C8);
  sub_24E601704(v26, &qword_27F224BF0, &qword_24F9736C8);
  *&v9[199] = v22;
  *&v9[215] = v23;
  *&v9[231] = v24;
  *&v9[135] = v18;
  *&v9[151] = v19;
  *&v9[167] = v20;
  *&v9[183] = v21;
  *&v9[71] = v14;
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[119] = v17;
  *&v9[7] = v10;
  *&v9[23] = v11;
  *&v9[39] = v12;
  *&v9[55] = v13;
  *(&__src[26] + 1) = *&v9[192];
  *(&__src[28] + 1) = *&v9[208];
  *(&__src[30] + 1) = *&v9[224];
  *(&__src[18] + 1) = *&v9[128];
  *(&__src[20] + 1) = *&v9[144];
  *(&__src[22] + 1) = *&v9[160];
  *(&__src[24] + 1) = *&v9[176];
  *(&__src[10] + 1) = *&v9[64];
  *(&__src[12] + 1) = *&v9[80];
  *(&__src[14] + 1) = *&v9[96];
  *(&__src[16] + 1) = *&v9[112];
  *(&__src[2] + 1) = *v9;
  *(&__src[4] + 1) = *&v9[16];
  *(&__src[6] + 1) = *&v9[32];
  v9[247] = v25;
  __src[0] = v6;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  *(&__src[32] + 1) = *&v9[240];
  *(&__src[8] + 1) = *&v9[48];
  *(&__src[33] + 1) = 256;
  *a2 = v5;
  memcpy(a2 + 1, __src, 0x10BuLL);
  *&v30[193] = *&v9[192];
  *&v30[209] = *&v9[208];
  v31 = *&v9[224];
  *&v30[129] = *&v9[128];
  *&v30[145] = *&v9[144];
  *&v30[161] = *&v9[160];
  *&v30[177] = *&v9[176];
  *&v30[65] = *&v9[64];
  *&v30[81] = *&v9[80];
  *&v30[97] = *&v9[96];
  *&v30[113] = *&v9[112];
  *&v30[1] = *v9;
  *&v30[17] = *&v9[16];
  *&v30[33] = *&v9[32];
  v29 = v6;
  v30[0] = 0;
  v32 = *&v9[240];
  *&v30[49] = *&v9[48];
  v33 = 256;
  swift_retain_n();
  sub_24E60169C(__src, v8, &qword_27F224BF8, &unk_24F9736D0);
  sub_24E601704(&v29, &qword_27F224BF8, &unk_24F9736D0);

  return result;
}

void sub_24E9EC1D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v49 = type metadata accessor for TextFadeOutMask(0);
  v11 = *(a1 + *(v49 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 32) = v11;
  v50 = v11;
  swift_retain_n();
  *(v12 + 40) = sub_24F926C98();
  v48 = MEMORY[0x25304CD70](v12);
  sub_24E9EBAD8(v10);
  v13 = *(v5 + 104);
  v47 = *MEMORY[0x277CDFA90];
  v46 = v13;
  v13(v7);
  LOBYTE(v11) = sub_24F923F68();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  if (v11)
  {
    sub_24F9278C8();
  }

  else
  {
    sub_24F9278B8();
  }

  sub_24E9EBAD8(v10);
  v46(v7, v47, v4);
  v15 = sub_24F923F68();
  v14(v7, v4);
  v14(v10, v4);
  if (v15)
  {
    sub_24F9278B8();
  }

  else
  {
    sub_24F9278C8();
  }

  sub_24F923BD8();
  v16 = v49;
  sub_24F927618();
  sub_24F9238C8();
  v84 = v90;
  v85 = v91;
  *&v86 = v92;
  v17 = (a1 + *(v16 + 28));
  v18 = v17[1];
  v68 = *v17;
  v69 = v18;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  LOBYTE(v18) = v22;
  v48 = v23;
  sub_24F927618();
  sub_24F9238C8();
  LOBYTE(v18) = v18 & 1;
  v24 = *(a1 + *(v16 + 24));
  KeyPath = swift_getKeyPath();

  v26 = sub_24F925838();
  sub_24F923318();
  v27 = v86;
  v28 = v87;
  v56[2] = v86;
  v56[3] = v87;
  v29 = v88;
  v56[4] = v88;
  v30 = v84;
  v56[0] = v84;
  v56[1] = v85;
  v32 = v54;
  v31 = v55;
  v61 = v54;
  v62 = v55;
  v33 = v53;
  v60 = v53;
  *(a2 + 24) = v85;
  *(a2 + 8) = v30;
  *(a2 + 72) = v29;
  v34 = v89;
  v57 = v89;
  *&v58 = v19;
  *(&v58 + 1) = v21;
  LOBYTE(v59) = v18;
  v35 = v48;
  *(&v59 + 1) = v48;
  *&v63 = 0;
  *(&v63 + 1) = KeyPath;
  *&v64 = v24;
  BYTE8(v64) = v26;
  *&v65 = v36;
  *(&v65 + 1) = v37;
  *&v66 = v38;
  *(&v66 + 1) = v39;
  v67 = 0;
  *a2 = v50;
  *(a2 + 88) = v34;
  *(a2 + 56) = v28;
  *(a2 + 40) = v27;
  v40 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v40;
  v41 = v63;
  *(a2 + 160) = v62;
  *(a2 + 176) = v41;
  v42 = v61;
  *(a2 + 128) = v60;
  *(a2 + 144) = v42;
  v43 = v66;
  *(a2 + 208) = v65;
  *(a2 + 224) = v43;
  v44 = v64;
  *(a2 + 240) = 0;
  *(a2 + 192) = v44;
  v68 = v19;
  v69 = v21;
  v70 = v18;
  v72 = v33;
  v73 = v32;
  v74 = v31;
  v71 = v35;
  v75 = 0;
  v76 = KeyPath;
  v77 = v24;
  v78 = v26;
  v79 = v36;
  v80 = v37;
  v81 = v38;
  v82 = v39;
  v83 = 0;

  sub_24E60169C(v56, v51, &qword_27F2248A0, &qword_24F9736E0);
  sub_24E60169C(&v58, v51, &qword_27F224C00, &qword_24F9736E8);
  sub_24E601704(&v68, &qword_27F224C00, &qword_24F9736E8);
  v51[2] = v86;
  v51[3] = v87;
  v51[4] = v88;
  v52 = v89;
  v51[0] = v84;
  v51[1] = v85;
  sub_24E601704(v51, &qword_27F2248A0, &qword_24F9736E0);
}

void *sub_24E9EC6C8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C88();
  v10 = 0;
  sub_24E9EBE14(v2, __src);
  memcpy(__dst, __src, 0x113uLL);
  memcpy(v12, __src, 0x113uLL);
  sub_24E60169C(__dst, v7, &qword_27F224BE8, &qword_24F9736C0);
  sub_24E601704(v12, &qword_27F224BE8, &qword_24F9736C0);
  memcpy(&v9[7], __dst, 0x113uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x11AuLL);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24E9EC958(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24E9EB54C(a1, a2, v6);
}

unint64_t sub_24E9EC9D8()
{
  result = qword_27F224AA0;
  if (!qword_27F224AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A68, &qword_24F973488);
    sub_24E9ECA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AA0);
  }

  return result;
}

unint64_t sub_24E9ECA64()
{
  result = qword_27F224AA8;
  if (!qword_27F224AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A60, &qword_24F973480);
    sub_24E9ECB1C();
    sub_24E602068(&qword_27F224AD8, &qword_27F224A90, &unk_24F9734B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AA8);
  }

  return result;
}

unint64_t sub_24E9ECB1C()
{
  result = qword_27F224AB0;
  if (!qword_27F224AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A58, &qword_24F973478);
    sub_24E9ECBD4();
    sub_24E602068(&qword_27F224AD0, &qword_27F224A88, &qword_24F9734B0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AB0);
  }

  return result;
}

unint64_t sub_24E9ECBD4()
{
  result = qword_27F224AB8;
  if (!qword_27F224AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AC0, &unk_24F9734F0);
    sub_24E6312D8();
    sub_24E9ECC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AB8);
  }

  return result;
}

unint64_t sub_24E9ECC60()
{
  result = qword_27F224AC8;
  if (!qword_27F224AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224AC8);
  }

  return result;
}

uint64_t sub_24E9ECCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AF8, &qword_24F973548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9ECD2C()
{
  result = qword_27F224B08;
  if (!qword_27F224B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AF8, &qword_24F973548);
    sub_24E9ECDE4();
    sub_24E602068(&qword_27F224B70, &qword_27F224B78, &qword_24F973598, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B08);
  }

  return result;
}

unint64_t sub_24E9ECDE4()
{
  result = qword_27F224B10;
  if (!qword_27F224B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B18, &qword_24F973558);
    sub_24E9ECE9C();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B10);
  }

  return result;
}

unint64_t sub_24E9ECE9C()
{
  result = qword_27F224B20;
  if (!qword_27F224B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B28, &qword_24F973560);
    sub_24E9ECF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B20);
  }

  return result;
}

unint64_t sub_24E9ECF28()
{
  result = qword_27F224B30;
  if (!qword_27F224B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B38, &qword_24F973568);
    sub_24E9ECFE0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B30);
  }

  return result;
}

unint64_t sub_24E9ECFE0()
{
  result = qword_27F224B40;
  if (!qword_27F224B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B48, &qword_24F973570);
    sub_24E9ED098();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B40);
  }

  return result;
}

unint64_t sub_24E9ED098()
{
  result = qword_27F224B50;
  if (!qword_27F224B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B58, &qword_24F973578);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B50);
  }

  return result;
}

uint64_t sub_24E9ED17C()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24E9ED334()
{
  v1 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_24E9EB5D0(v2, v3);
}

double sub_24E9ED3CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9EB6DC(a1, v6, a2);
}

uint64_t sub_24E9ED44C()
{
  v1 = type metadata accessor for TextWithAffordance(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923F78();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_24E9ED694()
{
  v1 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_24F9239C8();

  return sub_24E9EB9D4(v0 + v2);
}

uint64_t sub_24E9ED760(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for TextWithAffordance(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9EBA5C(a1, a2, v6);
}

unint64_t sub_24E9ED7E0()
{
  result = qword_27F224B88;
  if (!qword_27F224B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224B80, &unk_24F973630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224B88);
  }

  return result;
}

uint64_t sub_24E9ED864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E9ED8EC()
{
  result = qword_27F224BB0;
  if (!qword_27F224BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224BA8, &qword_24F973650);
    sub_24E9ED864(&qword_27F224BB8, type metadata accessor for TextFadeOutMask, &unk_24F973670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BB0);
  }

  return result;
}

uint64_t sub_24E9ED9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9EDA08(uint64_t a1)
{
  v2 = type metadata accessor for TextFadeOutMask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9EDA78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E9EDB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24E9EDC18(uint64_t a1)
{
  sub_24E9E9C64(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E9EDCF4()
{
  result = qword_27F224BD0;
  if (!qword_27F224BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224AE8, &qword_24F973538);
    sub_24E9EDDAC();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BD0);
  }

  return result;
}

unint64_t sub_24E9EDDAC()
{
  result = qword_27F224BD8;
  if (!qword_27F224BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A78, &qword_24F973498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224A68, &qword_24F973488);
    sub_24E9EC9D8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0, &qword_24F973530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224BD8);
  }

  return result;
}

uint64_t Promise.pipe(to:)(uint64_t a1)
{
  swift_retain_n();
  sub_24ED90514(v2);
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

GameStoreKit::PerformanceTestType_optional __swiftcall PerformanceTestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t PerformanceTestType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A69736572;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

uint64_t sub_24E9EE074(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657A69736572;
  }

  else
  {
    v2 = 0x6C6C6F726373;
  }

  if (*a2)
  {
    v3 = 0x657A69736572;
  }

  else
  {
    v3 = 0x6C6C6F726373;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24E9EE0F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9EE164(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E9EE1B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9EE224@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24E9EE284(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6F726373;
  if (*v1)
  {
    v2 = 0x657A69736572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

unsigned __int8 *PerformanceTestCase.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v111 = a3;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v106 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v102 - v11;
  MEMORY[0x28223BE20](v12);
  v107 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v102 - v24;
  v108 = a4;
  v109 = a1;
  *a4 = a1;
  a4[1] = a2;

  v26 = v111;
  sub_24F928398();
  sub_24E9EF1BC();
  v27 = v110;
  sub_24F928218();
  v110 = v27;
  if (v27)
  {

    v28 = *(v8 + 8);
    v28(v26, v7);
    v28(v25, v7);
  }

  v102 = v19;
  v103 = v16;
  v31 = *(v8 + 8);
  v30 = (v8 + 8);
  v32 = v25;
  v33 = v7;
  v104 = v31;
  v31(v32, v7);
  v34 = v108;
  *(v108 + 17) = v112[0];
  v35 = sub_24F92B358();

  if (v35)
  {
    v36 = v30;
    *(v34 + 16) = 0;
    v37 = v7;
    v38 = v34;
    v39 = v102;
  }

  else
  {
    v40 = v111;
    sub_24F928398();
    sub_24E9EF210();
    v41 = v110;
    sub_24F928218();
    v39 = v102;
    if (v41)
    {
      v42 = v33;
      v43 = v33;
      v44 = v104;
      v104(v40, v43);
      v44(v22, v42);
    }

    v110 = 0;
    v37 = v33;
    v36 = v30;
    v104(v22, v33);
    v38 = v34;
    *(v34 + 16) = v112[0];
  }

  v45 = v111;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v49 = v39;
  v50 = v37;
  v51 = v104;
  v104(v49, v37);
  if (v48)
  {
    v52 = v103;
    if (v46 == 5457241 && v48 == 0xE300000000000000)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_24F92CE08();
    }

    v54 = v36;
  }

  else
  {
    v53 = 0;
    v52 = v103;
    v54 = v36;
  }

  *(v38 + 18) = v53 & 1;
  sub_24F928398();
  v55 = type metadata accessor for PerformanceTestCase(0);
  sub_24F928268();
  v51(v52, v50);
  v56 = v107;
  sub_24F928398();
  v57 = sub_24F928348();
  v59 = v58;
  result = (v51)(v56, v50);
  if (!v59)
  {
    goto LABEL_78;
  }

  v60 = HIBYTE(v59) & 0xF;
  v61 = v57 & 0xFFFFFFFFFFFFLL;
  if ((v59 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v59) & 0xF;
  }

  else
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    goto LABEL_78;
  }

  if ((v59 & 0x1000000000000000) != 0)
  {
    v64 = sub_24F2DA4C8(v57, v59, 10);

    if ((v64 & 0x100000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if ((v59 & 0x2000000000000000) != 0)
  {
    v112[0] = v57;
    v112[1] = v59 & 0xFFFFFFFFFFFFFFLL;
    if (v57 == 43)
    {
      if (v60)
      {
        if (--v60)
        {
          LODWORD(v64) = 0;
          v74 = v112 + 1;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v64;
            if (v76 != v76)
            {
              break;
            }

            LODWORD(v64) = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_99:
      __break(1u);
      return result;
    }

    if (v57 != 45)
    {
      if (v60)
      {
        LODWORD(v64) = 0;
        v79 = v112;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v64;
          if (v81 != v81)
          {
            break;
          }

          LODWORD(v64) = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    if (v60)
    {
      if (--v60)
      {
        LODWORD(v64) = 0;
        v68 = v112 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = 10 * v64;
          if (v70 != v70)
          {
            break;
          }

          LODWORD(v64) = v70 - v69;
          if (__OFSUB__(v70, v69))
          {
            break;
          }

          ++v68;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    result = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_24F92C928();
  }

  v63 = *result;
  if (v63 == 43)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v71 = result + 1;
          while (1)
          {
            v72 = *v71 - 48;
            if (v72 > 9)
            {
              goto LABEL_76;
            }

            v73 = 10 * v64;
            if (v73 != v73)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_76;
            }

            ++v71;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_76;
    }

    goto LABEL_98;
  }

  if (v63 == 45)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v65 = result + 1;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              goto LABEL_76;
            }

            v67 = 10 * v64;
            if (v67 != v67)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v67 - v66;
            if (__OFSUB__(v67, v66))
            {
              goto LABEL_76;
            }

            ++v65;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_68:
        LOBYTE(v60) = 0;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v61)
  {
    LODWORD(v64) = 0;
    if (result)
    {
      while (1)
      {
        v77 = *result - 48;
        if (v77 > 9)
        {
          goto LABEL_76;
        }

        v78 = 10 * v64;
        if (v78 != v78)
        {
          goto LABEL_76;
        }

        LODWORD(v64) = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          goto LABEL_76;
        }

        ++result;
        if (!--v61)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_76:
  LODWORD(v64) = 0;
  LOBYTE(v60) = 1;
LABEL_77:
  v113 = v60;
  v82 = v60;

  if (v82)
  {
LABEL_78:
    LODWORD(v64) = 0;
  }

LABEL_79:
  *(v38 + v55[9]) = v64;
  v83 = v105;
  sub_24F928398();
  v84 = sub_24F928348();
  v86 = v85;
  v87 = v104;
  v111 = v54;
  v104(v83, v50);
  v88 = v50;
  if (v86)
  {
    v89 = sub_24E9EEEE0(v84, v86);
    if ((v89 & 0x100000000) != 0)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }
  }

  else
  {
    v90 = 0;
  }

  v91 = v106;
  *(v38 + v55[10]) = v90;
  v92 = v38;
  v93 = v103;
  sub_24F928398();
  v94 = sub_24F928348();
  v96 = v95;
  v87(v93, v88);
  v97 = (v92 + v55[11]);
  *v97 = v94;
  v97[1] = v96;
  sub_24F928398();
  v98 = sub_24F928348();
  v100 = v99;
  v87(v91, v88);
  if (v100)
  {
    if (v98 == 5457241 && v100 == 0xE300000000000000)
    {
      v101 = 1;
    }

    else
    {
      v101 = sub_24F92CE08();
    }
  }

  else
  {
    v101 = 0;
  }

  result = (v87)(v45, v88);
  *(v92 + v55[12]) = v101 & 1;
  return result;
}

unint64_t sub_24E9EEBE0(unint64_t result, unint64_t a2, __n128 a3)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24F92C928();
        v4 = v27;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v4) = 0;
LABEL_62:
          v29 = v4;
          v25 = v4;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_24F2D9F38(result, a2, 10, a3);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_24E9EEEE0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F2DA4C8(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24F92C928();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_24E9EF1BC()
{
  result = qword_27F224C18;
  if (!qword_27F224C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C18);
  }

  return result;
}

unint64_t sub_24E9EF210()
{
  result = qword_27F224C20;
  if (!qword_27F224C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C20);
  }

  return result;
}

uint64_t type metadata accessor for PerformanceTestCase(uint64_t a1)
{
  result = qword_27F224C30;
  if (!qword_27F224C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformanceTestCase.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PerformanceTestCase.pushToURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PerformanceTestCase(0) + 32);

  return sub_24E99091C(v3, a1);
}

uint64_t PerformanceTestCase.searchTerm.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceTestCase(0) + 44));

  return v1;
}

unint64_t sub_24E9EF3F4()
{
  result = qword_27F224C28;
  if (!qword_27F224C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224C28);
  }

  return result;
}

uint64_t sub_24E9EF46C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9EF53C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9EF5EC(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E9EFBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24F929EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = a1;
  v11[3] = a2;
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  sub_24E600AEC();
  if (sub_24F92C5F8())
  {
    sub_24ED02030(a1, a2, a3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v3 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    (*(v8 + 104))(v10, *MEMORY[0x277D221D0], v7);
    sub_24F92ACD8();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24E9F0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v25 = a1;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224C50, &qword_24F973828);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_24F9293A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);

    sub_24F929398();
    v21 = *(v10 + 48);
    if (v21(v8, 1, v9) == 1)
    {
      (*(v10 + 104))(v12, *MEMORY[0x277D21E78], v9);
      if (v21(v8, 1, v9) != 1)
      {
        sub_24E601704(v8, &qword_27F224C50, &qword_24F973828);
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
    }

    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v24 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    v22 = sub_24F92ACA8();
    (*(v10 + 8))(v12, v9);
    (*(v17 + 8))(v19, v16);
    return v22;
  }
}

uint64_t sub_24E9F0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *(v5 + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 24));
    v15 = sub_24F92AC98();
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t sub_24E9F1180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    sub_24E9F13C0(v4, 0xD000000000000013, 0x800000024FA3FB80);
    v14 = v13;
    sub_24E601704(v4, &unk_27F22EC30, &qword_24F939880);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

void sub_24E9F13C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_24F91F638();
  sub_24E728A00(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_24E601704(v11, &unk_27F22EC30, &qword_24F939880);
    return;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_24F91F558();
  v20 = floor(v19 / 31536000.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;
  if (v20 >= 1)
  {
    v22 = "TimeAgo.YearsAgo";
LABEL_8:
    sub_24E9EFBA8(0xD000000000000010, (v22 - 32) | 0x8000000000000000, v21);
LABEL_17:
    v26 = *(v13 + 8);
    v26(v15, v12);
    v26(v18, v12);
    return;
  }

  v23 = floor(v19 / 86400.0);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 >= 7)
  {
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v24 = 0x64204D4D4DLL;
    v25 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v23 >= 1)
  {
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v24 = 69;
    v25 = 0xE100000000000000;
LABEL_16:
    sub_24E9F0240(v24, v25, v8, a2, a3);
    sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    goto LABEL_17;
  }

  v27 = floor(v19 / 3600.0);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v27 < 9.22337204e18)
  {
    v21 = v27;
    if (v27 < 1)
    {

      if (sub_24ED05810(a2, a3) == 5)
      {
        v28 = 0xD000000000000020;
        v29 = 0x800000024FA4CFF0;
      }

      else
      {
        v28 = 0x2E6F6741656D6954;
        v29 = 0xEF776F4E7473754ALL;
      }

      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      localizedString(_:comment:)(*&v28, v30);
      goto LABEL_17;
    }

    v22 = "TimeAgo.HoursAgo";
    goto LABEL_8;
  }

LABEL_35:
  __break(1u);
}

void sub_24E9F1BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xD000000000000011;

  v7 = sub_24ED0585C(a2, a3);
  v8 = "IAP_DURATION_MONTH";
  if (v7 > 2u)
  {
    if (v7 != 3)
    {
      return;
    }

    goto LABEL_14;
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
LABEL_15:
    sub_24E9EFBA8(v6, v8 | 0x8000000000000000, a1);
    return;
  }

  v8 = "IAP_DURATION_WEEK";
  if (v7 > 1u)
  {
    v6 = 0xD000000000000012;
    goto LABEL_14;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    v6 = 0xD000000000000012;
    goto LABEL_15;
  }

  v8 = "IAP_DURATION_DAY";
  if (v7 == 1)
  {
    goto LABEL_14;
  }

  v11 = sub_24F92CE08();

  if (v11)
  {
    goto LABEL_15;
  }

  v6 = 0xD000000000000010;
  v8 = "GameStoreKit.ModernLocalizer";
  if (!v7)
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = sub_24F92CE08();

  if (v12)
  {
    goto LABEL_15;
  }
}

uint64_t ShelfBasedCollectionViewController.stateStore.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4, a1);
  v2 = v4[0];

  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(&v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(&v4);
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 128))(v8, a2);
  v6 = __swift_assign_boxed_opaque_existential_1((v5 + 88), a1);
  v4(v8, 0, v6);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

void (*ShelfBasedCollectionViewController.pageGridProvider.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x118uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[33] = a3;
  v7[34] = v3;
  v7[32] = a2;
  (*(a3 + 112))(a2, a3);
  sub_24E615E00(v8 + 88, v8 + 216);
  sub_24E9F1FC8(v8);
  return sub_24E9F2428;
}

void sub_24E9F2428(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[33];
  v4 = (*a1)[32];
  v5 = *a1 + 27;
  if (a2)
  {
    sub_24E615E00(v5, v2);
    ShelfBasedCollectionViewController.pageGridProvider.setter(v2, v4, v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 27);
  }

  else
  {
    ShelfBasedCollectionViewController.pageGridProvider.setter(v5, v4, v3);
  }

  free(v2);
}

uint64_t ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

uint64_t ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4, a1);
  v2 = v4[21];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4, a1);
  v2 = v4[23];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.collectionElementsObserver.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4, a1);
  v2 = v4[25];
  swift_unknownObjectRetain();
  sub_24E9F1FC8(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.layoutSectionProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_24E615E00(&v5, a2);
  return sub_24E9F1FC8(v4);
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.prepareLayoutDependencies()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 160))();
  v5 = *(v2 + 128);
  v6 = v5(v46, v3, v2);
  *v7 = v4;

  v6(v46, 0);
  (*(v2 + 168))(v46, v3, v2);
  v8 = v5(v45, v3, v2);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1((v9 + 8));
  sub_24E612C80(v46, v10 + 8);
  v8(v45, 0);
  (*(v2 + 176))(v46, v3, v2);
  v11 = v5(v45, v3, v2);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1((v12 + 88));
  sub_24E612C80(v46, v13 + 88);
  v11(v45, 0);
  (*(v2 + 184))(v46, v3, v2);
  v14 = v5(v45, v3, v2);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1((v15 + 128));
  sub_24E612C80(v46, v16 + 128);
  v14(v45, 0);
  v17 = (*(v2 + 192))(v3, v2);
  v19 = v18;
  v20 = v5(v46, v3, v2);
  *(v21 + 168) = v17;
  *(v21 + 176) = v19;
  swift_unknownObjectRelease();
  v20(v46, 0);
  v22 = (*(v2 + 200))(v3, v2);
  v24 = v23;
  v25 = v5(v46, v3, v2);
  *(v26 + 184) = v22;
  *(v26 + 192) = v24;
  swift_unknownObjectRelease();
  v25(v46, 0);
  v27 = (*(v2 + 208))(v3, v2);
  v29 = v28;
  v30 = v5(v46, v3, v2);
  *(v31 + 200) = v27;
  *(v31 + 208) = v29;
  swift_unknownObjectRelease();
  v30(v46, 0);
  (*(v2 + 216))(v46, v3, v2);
  v32 = v5(v45, v3, v2);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1((v33 + 48));
  sub_24E612C80(v46, v34 + 48);
  v32(v45, 0);
  v35 = (*(v2 + 136))(v3, v2);
  (*(v2 + 64))(v35, v3, v2);
  v36 = (*(v2 + 144))(v3, v2);
  (*(v2 + 88))(v36, v3, v2);
  v37 = *(v2 + 32);
  v38 = v37(v3, v2);
  if (v38)
  {
    v39 = v38;
    v40 = (*(v2 + 56))(v3, v2);
    [v39 setDataSource_];
  }

  v41 = (*(v2 + 80))(v3, v2);
  if (v41)
  {
    v42 = v41;
    v43 = v37(v3, v2);
    if (v43)
    {
      v44 = v43;
      [v43 setCollectionViewLayout_];
    }
  }
}

uint64_t sub_24E9F2B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  sub_24E615E00(a1, v7);
  return ShelfBasedCollectionViewController.pageGridProvider.setter(v7, v5, v4);
}

__n128 sub_24E9F2BB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_24E9F2BBC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F2C00@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E9F2C54(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  *(v3 + v6) = a2;
  v7 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  swift_beginAccess();
  *(v3 + v7) = v5;
  v8 = CornerStyle.apply(withRadius:to:)(v3, a2);
  return (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(v8);
}

uint64_t sub_24E9F2D20()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F2D64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((a1 & 2) == 0)
  {
    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = 3;
  if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((a1 & 4) != 0 && (v4 & 4) == 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = [v1 layer];
  [v5 setMaskedCorners_];

  return (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
}

void (*sub_24E9F2E64(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24E9F2EEC;
}

void sub_24E9F2EEC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + *(v3 + 32));
    if (v5)
    {
      if ((v5 & 2) != 0)
      {
        v6 = 3;
        if ((v5 & 8) == 0)
        {
LABEL_14:
          if ((v5 & 4) == 0 || (v6 & 4) != 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          v6 |= 4uLL;
LABEL_17:
          v7 = [*(v3 + 24) layer];
          [v7 setMaskedCorners_];

          (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v6 = 1;
      if ((v5 & 8) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v6 = 2;
        if ((v5 & 8) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = 0;
      if ((v5 & 8) != 0)
      {
LABEL_13:
        v6 |= 8uLL;
        goto LABEL_14;
      }
    }

    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:

  free(v3);
}

void *sub_24E9F2FF0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24E9F303C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview_];
  }
}

void (*sub_24E9F30D4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_24E9F3170;
}

void sub_24E9F3170(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_24E9F303C(v3);
    v5 = *(v2 + 24);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    if (v8)
    {
      [v8 removeFromSuperview];
      v9 = *(v7 + v6);
      v7 = *(v2 + 32);
      v6 = *(v2 + 40);
    }

    else
    {
      v9 = 0;
    }

    *(v7 + v6) = v3;
    v5 = v3;

    if (!v3)
    {
      goto LABEL_9;
    }

    [*(v2 + 32) addSubview_];
  }

LABEL_9:

  free(v2);
}

void sub_24E9F322C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  if (*(v0 + v1) >= COERCE_DOUBLE(1))
  {
    swift_beginAccess();
    v5 = *(v0 + v2);
    if (v5)
    {
      v6 = *(v0 + v2);
    }

    else
    {
      type metadata accessor for BorderView();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v8 = *(v0 + v2);
      v9 = v7;
      if (v8)
      {
        [v8 removeFromSuperview];
        v8 = *(v0 + v2);
      }

      *(v0 + v2) = v7;
      v6 = v7;

      [v0 addSubview_];
      v5 = 0;
    }

    v10 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = v5;
    v13 = v11;
    v14 = v6;
    v15 = [v14 layer];
    v16 = [v13 CGColor];
    [v15 setBorderColor_];

    v17 = *(v0 + v1);
    v18 = [v14 layer];
    [v18 setBorderWidth_];

    v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
    v20 = [v14 layer];
    v21 = v20;
    if (v19)
    {
      if ((v19 & 2) != 0)
      {
        v22 = 3;
        if ((v19 & 8) == 0)
        {
LABEL_23:
          if ((v19 & 4) == 0 || (v22 & 4) != 0)
          {
            goto LABEL_26;
          }

LABEL_25:
          v22 |= 4uLL;
LABEL_26:
          [v20 setMaskedCorners_];

          swift_beginAccess();
          v23 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
          swift_beginAccess();
          CornerStyle.apply(withRadius:to:)(v14, *(v0 + v23));

          return;
        }

        goto LABEL_22;
      }

      v22 = 1;
      if ((v19 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v19 & 2) != 0)
      {
        v22 = 2;
        if ((v19 & 8) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = 0;
      if ((v19 & 8) != 0)
      {
LABEL_22:
        v22 |= 8uLL;
        goto LABEL_23;
      }
    }

    if ((v19 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;
}

uint64_t sub_24E9F3540(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
}

id sub_24E9F35D4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24E9F3628(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
}

uint64_t (*sub_24E9F36C0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9F3724;
}

double sub_24E9F3728()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9F376C(double a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x277D85000] & *v1) + 0xE8))(v4);
}

uint64_t (*sub_24E9F37F0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9F46BC;
}

uint64_t sub_24E9F3854(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xE8))(result);
  }

  return result;
}

id RoundedCornerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoundedCornerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle] = 1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners] = -1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RoundedCornerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  return v10;
}

id RoundedCornerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *RoundedCornerView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  v9 = v4;
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v7 = v5;
  v6(&v9, a2);

  return v7;
}