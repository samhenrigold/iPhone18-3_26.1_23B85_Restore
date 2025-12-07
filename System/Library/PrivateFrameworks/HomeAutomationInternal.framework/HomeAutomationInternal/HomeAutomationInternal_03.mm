char *sub_25295CEFC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540598, &unk_252E3D780);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v57 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405A0, &qword_252E3CD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v57 - v5;
  v61 = sub_252E348C4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252E349A4();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = v57 - v12;
  v66 = sub_252E34AB4();
  v13 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeAutomationNLV3Intent(0);
  sub_25295DA40(&qword_27F540470, type metadata accessor for HomeAutomationNLV3Intent, protocol conformance descriptor for HomeAutomationNLV3Intent);
  v16 = sub_252E34BD4();
  v17 = *(v16 + 16);
  if (v17)
  {
    v57[1] = v16;
    v58 = v3;
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v67 = *(v18 + 56);
    v68 = v19;
    v69 = v18;
    v21 = (v18 - 8);
    v62 = (v8 + 32);
    v63 = (v8 + 16);
    v22 = MEMORY[0x277D84F90];
    v64 = v6;
    v65 = v11;
    v23 = v66;
    (v19)(v15, v20, v66);
    while (1)
    {
      v24 = sub_252E34AA4();
      if (*(v24 + 16))
      {
        v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        (*(v8 + 16))(v11, v24 + v25, v71);

        (*v21)(v15, v23);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = v22;
        }

        else
        {
          v26 = sub_2529F829C(0, v22[2] + 1, 1, v22);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_2529F829C((v27 > 1), v28 + 1, 1, v26);
        }

        v26[2] = v28 + 1;
        v22 = v26;
        v29 = v26 + v25 + *(v8 + 72) * v28;
        v11 = v65;
        (*(v8 + 32))(v29, v65, v71);
        v6 = v64;
        v23 = v66;
      }

      else
      {
        (*v21)(v15, v23);
      }

      v20 += v67;
      if (!--v17)
      {
        break;
      }

      (v68)(v15, v20, v23);
    }

    v3 = v58;
    v30 = v22[2];
    if (v30)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
    if (v30)
    {
LABEL_14:
      v32 = *(v8 + 16);
      v31 = v8 + 16;
      v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
      v62 = v22;
      v34 = v22 + v33;
      v68 = *(v31 + 56);
      v69 = v32;
      v65 = (v59 + 32);
      v63 = (v59 + 8);
      v67 = MEMORY[0x277D84F90];
      LODWORD(v66) = *MEMORY[0x277D5E588];
      while (1)
      {
        v37 = v70;
        v36 = v71;
        v69(v70, v34, v71);
        sub_252E34994();
        (*(v31 - 8))(v37, v36);
        v38 = sub_252E34984();
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v3, 1, v38) == 1)
        {
          sub_25293847C(v3, &qword_27F540598, &unk_252E3D780);
          v35 = sub_252E348D4();
          (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
        }

        else
        {
          sub_252E34974();
          (*(v39 + 8))(v3, v38);
          v40 = sub_252E348D4();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v6, 1, v40) != 1)
          {
            v42 = (*(v41 + 88))(v6, v40);
            if (v42 == v66)
            {
              (*(v41 + 96))(v6, v40);
              v44 = v60;
              v43 = v61;
              (*v65)(v60, v6, v61);
              v45 = sub_252E348B4();
              if (v46)
              {
                v47 = v46;
                v48 = v45;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v49 = v67;
                }

                else
                {
                  v49 = sub_2529F7A80(0, *(v67 + 2) + 1, 1, v67);
                }

                v51 = *(v49 + 2);
                v50 = *(v49 + 3);
                v52 = v60;
                v53 = v61;
                if (v51 >= v50 >> 1)
                {
                  v67 = sub_2529F7A80((v50 > 1), v51 + 1, 1, v49);
                  v52 = v60;
                  v53 = v61;
                }

                else
                {
                  v67 = v49;
                }

                (*v63)(v52, v53);
                v54 = v67;
                *(v67 + 2) = v51 + 1;
                v55 = &v54[16 * v51];
                *(v55 + 4) = v48;
                *(v55 + 5) = v47;
              }

              else
              {
                (*v63)(v44, v43);
              }
            }

            else
            {
              (*(v41 + 8))(v6, v40);
            }

            goto LABEL_17;
          }
        }

        sub_25293847C(v6, &qword_27F5405A0, &qword_252E3CD90);
LABEL_17:
        v34 = &v68[v34];
        if (!--v30)
        {

          return v67;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25295D6D0()
{
  v1 = v0;

  v3 = sub_25295B550(v2);
  swift_bridgeObjectRelease_n();
  v0[24] = v3;
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  sub_2529353AC(__dst, v25);
  v4 = sub_252CDFDD4();
  memcpy(v25, __src, 0x1F8uLL);
  sub_252935408(v25);
  if (v4)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    result = sub_252CE2134(0, 0xE000000000000000);
    v6 = 0;
    v7 = v1[24];
    v8 = *(v7 + 16);
    while (1)
    {
      if (v8 == v6)
      {
        v18 = &unk_2864A57E0;
        v19 = &unk_2864A57B8;
        goto LABEL_20;
      }

      if (v6 >= *(v7 + 16))
      {
        break;
      }

      v10 = *(v7 + 32 + v6);
      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 6710895 && v11 == 0xE300000000000000)
      {
        goto LABEL_17;
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_18;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x6573756170 && v13 == 0xE500000000000000)
      {
        goto LABEL_17;
      }

      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_18;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x656D75736572 && v15 == 0xE600000000000000)
      {
LABEL_17:

        v18 = &unk_2864A5790;
        v19 = &unk_2864A5768;
LABEL_20:
        v20 = sub_2529FC02C(v19);
        v21 = sub_2529FC02C(v18);
        sub_252CE3278(v20, v21);

        goto LABEL_21;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
LABEL_18:
        v19 = &unk_2864A5768;
        v18 = &unk_2864A5790;
        goto LABEL_20;
      }

      __src[0] = v10;
      if (StateSemantic.rawValue.getter() == 0x64656B636F64 && v17 == 0xE600000000000000)
      {
        goto LABEL_17;
      }

      v9 = sub_252E37DB4();

      ++v6;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v22 = sub_252DF8EC4(v1[18]);

    v1[18] = v22;
  }

  return result;
}

uint64_t sub_25295D9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540580, &qword_252E3CD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25295DA40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25295DA88(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v2[134] = swift_task_alloc();
  v3 = sub_252E34204();
  v2[135] = v3;
  v2[136] = *(v3 - 8);
  v2[137] = swift_task_alloc();
  v4 = sub_252E33C84();
  v2[138] = v4;
  v2[139] = *(v4 - 8);
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295DBEC, 0, 0);
}

uint64_t sub_25295DBEC()
{
  v1 = swift_asyncLet_begin();
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v1);
  sub_252929E74((v2 + 16), v0 + 696);

  sub_252929E74(v0 + 696, v0 + 776);
  v3 = swift_task_alloc();
  *(v0 + 1136) = v3;
  *v3 = v0;
  v3[1] = sub_25295DCE0;
  v4 = *(v0 + 1120);

  return MEMORY[0x2821BB3C0](v4, v0 + 776);
}

uint64_t sub_25295DCE0()
{
  v2 = *v1;
  *(v2 + 1144) = v0;

  sub_25293847C(v2 + 776, &qword_27F5405A8, &qword_252E3CE28);
  if (v0)
  {
    v3 = sub_25295E218;
  }

  else
  {
    v3 = sub_25295DE0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25295DE0C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  (*(*(v0 + 1112) + 32))(*(v0 + 1128), *(v0 + 1120), *(v0 + 1104));
  __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
  sub_252E33874();
  v5 = sub_252E33C44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  *(v0 + 888) = 0;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  sub_252E33A84();
  sub_25293847C(v0 + 856, &qword_27F5403A0, &unk_252E3CE30);
  sub_25293847C(v4, &qword_27F540390, &qword_252E3C448);
  *(v0 + 960) = v3;
  *(v0 + 968) = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 936));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);

  return MEMORY[0x282200930](v0 + 16, v0 + 1024, sub_25295DFCC, v0 + 736);
}

uint64_t sub_25295DFCC()
{
  *(v1 + 1152) = v0;
  if (v0)
  {
    v2 = sub_25295E448;
  }

  else
  {
    v2 = sub_25295E000;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25295E000()
{
  v1 = v0[139];
  v10 = v0[138];
  v11 = v0[141];
  v9 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  v4 = *(v0[133] + 16);
  v5 = objc_allocWithZone(MEMORY[0x277D5C220]);

  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier_];

  sub_252D15B64(v4, v7);
  sub_252E33B64();
  (*(v2 + 8))(v9, v3);
  (*(v1 + 8))(v11, v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  return MEMORY[0x282200920](v0 + 2, v0 + 128, sub_25295E16C, v0 + 112);
}

uint64_t sub_25295E188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25295E218()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v2 = sub_252E37E54();
  MEMORY[0x2530AD570](v2);

  sub_252CC4050(0xD00000000000002ELL, 0x8000000252E6B060, 0xD000000000000090, 0x8000000252E6B090, 0xD000000000000015, 0x8000000252E6B130, 32);

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));

  return MEMORY[0x282200920](v0 + 16, v0 + 1024, sub_25295E39C, v0 + 656);
}

uint64_t sub_25295E3B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25295E448()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 117);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[139];
  v8 = v0[138];
  v9 = v0[141];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v6 = sub_252E37E54();
  MEMORY[0x2530AD570](v6);

  sub_252CC4050(0xD00000000000002FLL, 0x8000000252E6B150, 0xD000000000000090, 0x8000000252E6B090, 0xD000000000000015, 0x8000000252E6B130, 45);

  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  return MEMORY[0x282200920](v0 + 2, v0 + 128, sub_25295E62C, v0 + 102);
}

uint64_t sub_25295E648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25295E6D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25295E76C;

  return MEMORY[0x2821BB648]();
}

uint64_t sub_25295E76C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25295E8C8, 0, 0);
  }
}

uint64_t sub_25295E8C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_25295E8EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25295E948(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_25295DA88(a1);
}

uint64_t sub_25295E9E4()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type);

  return v0;
}

uint64_t sub_25295EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  if (a1 == 0x614E797469746E65 && a2 == 0xEA0000000000656DLL || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v15);
    v16 = sub_252E36324();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v18 = v15;
LABEL_6:
      result = sub_252938BBC(v18);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v17 + 32))(boxed_opaque_existential_0, v15, v16);
  }

  if (a1 != 0xD000000000000010 || 0x8000000252E66560 != a2)
  {
    result = sub_252E37DB4();
    if ((result & 1) == 0)
    {
      if (a1 == 1836019570 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
        if (!v24)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
        v26 = &qword_27F5405F0;
        v27 = &qword_252E3ECF0;
      }

      else
      {
        if (a1 == 1701670760 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
        {
          v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
          if (!v24)
          {
            goto LABEL_7;
          }

LABEL_19:
          *(a3 + 24) = type metadata accessor for HomeAutomationHomeLocation(0);
          *a3 = v24;
        }

        if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
        {
          sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v10);
          v28 = sub_252E36324();
          v29 = *(v28 - 8);
          if ((*(v29 + 48))(v10, 1, v28) == 1)
          {
            v18 = v10;
            goto LABEL_6;
          }

          *(a3 + 24) = v28;
          v30 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v29 + 32))(v30, v10, v28);
        }

        if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
        {
          v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
          v26 = &qword_27F540600;
          v27 = &qword_252E3CF90;
        }

        else
        {
          if ((a1 != 0x736574617473 || a2 != 0xE600000000000000) && (sub_252E37DB4() & 1) == 0)
          {
            if (a1 != 1852793705 || a2 != 0xE400000000000000)
            {
              result = sub_252E37DB4();
              if ((result & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            v32 = sub_252C8A08C(v31, 0);

            result = type metadata accessor for HomeAutomationAccessoryIcon(0);
            *(a3 + 24) = result;
            *a3 = v32;
            return result;
          }

          v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          v26 = &qword_27F540610;
          v27 = &qword_252E3CF98;
        }
      }

      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      *a3 = v25;
    }
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier, v13);
  v21 = sub_252E36324();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    v18 = v13;
    goto LABEL_6;
  }

  *(a3 + 24) = v21;
  v23 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v22 + 32))(v23, v13, v21);
}

unint64_t sub_25295F0B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252960BA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25295F0E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E797469746E65;
  v5 = 0xE500000000000000;
  v6 = 0x7365707974;
  if (v2 != 6)
  {
    v6 = 0x736574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 1701670760;
  if (v2 != 4)
  {
    v7 = 1701869940;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1836019570;
  if (v2 != 2)
  {
    v9 = 0x73656E6F7ALL;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000252E66560;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_25295F1CC()
{
  v1 = *v0;
  v2 = 0x614E797469746E65;
  v3 = 0x7365707974;
  if (v1 != 6)
  {
    v3 = 0x736574617473;
  }

  v4 = 1701670760;
  if (v1 != 4)
  {
    v4 = 1701869940;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1836019570;
  if (v1 != 2)
  {
    v5 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_25295F2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252960BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25295F2E0(uint64_t a1)
{
  v2 = sub_252960350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25295F31C(uint64_t a1)
{
  v2 = sub_252960350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25295F358()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);

  return v0;
}

uint64_t sub_25295F410(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_25295F494(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25295F548(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540628, &qword_252E3CFA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252960350();
  sub_252E37F84();
  LOBYTE(v14) = 0;
  sub_252E36324();
  sub_252960308(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_252E37CD4();
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
    v13 = 2;
    v10 = type metadata accessor for HomeAutomationHomeLocation(0);
    v11 = sub_252960308(&qword_27F540520, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA10);
    v12[2] = v10;
    sub_252E37CD4();
    v12[1] = v11;
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
    sub_252960730();
    sub_252E37D54();
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
    v13 = 4;
    sub_252E37CD4();
    LOBYTE(v14) = 5;
    sub_252E37CD4();
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
    v13 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    sub_2529607E4();
    sub_252E37D54();
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
    sub_252960898();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_25295F9A0(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25295FA50(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v22 = &v21 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405E0, &unk_252E3CF80);
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - v13;
  v24 = a1;
  v25 = v1;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252960350();
  sub_252E37F74();
  if (v2)
  {
    v20 = v25;

    type metadata accessor for HomeAutomationEntityResponse(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v7;
    sub_252E36324();
    LOBYTE(v27) = 0;
    sub_252960308(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v15 = v14;
    sub_252E37BE4();
    v17 = v25;
    sub_2529439A0(v22, v25 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
    LOBYTE(v27) = 1;
    sub_252E37BE4();
    sub_2529439A0(v10, v17 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);
    type metadata accessor for HomeAutomationHomeLocation(0);
    v26 = 2;
    sub_252960308(&qword_27F540518, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA38);
    v22 = 0;
    sub_252E37BE4();
    *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
    v26 = 3;
    sub_2529603A4();
    sub_252E37C64();
    v18 = v25;
    *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones) = v27;
    v26 = 4;
    sub_252E37BE4();
    *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home) = v27;
    LOBYTE(v27) = 5;
    v19 = v21;
    sub_252E37BE4();
    sub_2529439A0(v19, v18 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    v26 = 6;
    sub_252960458();
    sub_252E37C64();
    *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
    v26 = 7;
    sub_25296050C();
    sub_252E37C64();
    (*(v12 + 8))(v15, v23);
    v20 = v25;
    *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states) = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

uint64_t sub_2529601F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationEntityResponse(0);
  v5 = swift_allocObject();
  result = sub_25295FA50(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252960308(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252960350()
{
  result = qword_27F5405E8;
  if (!qword_27F5405E8)
  {
    result = swift_getWitnessTable(byte_252E3D0A4, &type metadata for HomeAutomationEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5405E8);
  }

  return result;
}

unint64_t sub_2529603A4()
{
  result = qword_27F5405F8;
  if (!qword_27F5405F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    v4[0] = sub_252960308(&qword_27F540518, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA38);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5405F8);
  }

  return result;
}

unint64_t sub_252960458()
{
  result = qword_27F540608;
  if (!qword_27F540608)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    v4[0] = sub_252960308(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540608);
  }

  return result;
}

unint64_t sub_25296050C()
{
  result = qword_27F540618;
  if (!qword_27F540618)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    v4[0] = sub_252960308(&qword_27F540620, type metadata accessor for HomeAutomationEntityState, byte_252E3E948);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540618);
  }

  return result;
}

uint64_t sub_2529605C0(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  swift_beginAccess();
  sub_252956C1C(a1 + v3, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName);
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home);
  v5 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  sub_252956C1C(a1 + v5, v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);

  return v1;
}

unint64_t sub_252960730()
{
  result = qword_27F540630;
  if (!qword_27F540630)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    v4[0] = sub_252960308(&qword_27F540520, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA10);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540630);
  }

  return result;
}

unint64_t sub_2529607E4()
{
  result = qword_27F540638;
  if (!qword_27F540638)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    v4[0] = sub_252960308(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540638);
  }

  return result;
}

unint64_t sub_252960898()
{
  result = qword_27F540640;
  if (!qword_27F540640)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    v4[0] = sub_252960308(&qword_27F540648, type metadata accessor for HomeAutomationEntityState, byte_252E3E920);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationEntityResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationEntityResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252960AA0()
{
  result = qword_27F540650;
  if (!qword_27F540650)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for HomeAutomationEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540650);
  }

  return result;
}

unint64_t sub_252960AF8()
{
  result = qword_27F540658;
  if (!qword_27F540658)
  {
    result = swift_getWitnessTable(byte_252E3CFB4, &type metadata for HomeAutomationEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540658);
  }

  return result;
}

unint64_t sub_252960B50()
{
  result = qword_27F540660;
  if (!qword_27F540660)
  {
    result = swift_getWitnessTable(byte_252E3CFDC, &type metadata for HomeAutomationEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540660);
  }

  return result;
}

unint64_t sub_252960BA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252960BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  sub_252E33944();
  v4[93] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[94] = v5;
  v4[95] = *(v5 - 8);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v6 = sub_252E36324();
  v4[102] = v6;
  v4[103] = *(v6 - 8);
  v4[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252960DAC, 0, 0);
}

uint64_t sub_252960DAC()
{
  v59 = v0;
  memcpy(v0 + 2, (v0[92] + 112), 0x1F8uLL);
  if (sub_252956B94(v0 + 2) != 1)
  {
    v1 = v0[9];
    if (*(v1 + 16))
    {
      v2 = v0[103];
      v3 = v0[102];
      v4 = v0[101];
      v5 = v0[100];
      LOWORD(v58) = *(v1 + 32);
      HueSemantic.rawValue.getter();
      sub_252E362F4();
      v6 = *(v2 + 56);
      v6(v5, 0, 1, v3);
      (*(v2 + 32))(v4, v5, v3);
      v6(v4, 0, 1, v3);
      v7 = *(v2 + 48);
      goto LABEL_16;
    }
  }

  v8 = v0[90];
  v6 = *(v0[103] + 56);
  v6(v0[100], 1, 1, v0[102]);
  v9 = [v8 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 value];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v12 = [v11 stringValue];

    if (v12)
    {
      v13 = sub_252E36F34();
      v11 = v14;

      v9 = v13;
      goto LABEL_11;
    }

    v9 = 0;
  }

  v11 = 0;
LABEL_11:
  sub_252C55FB4(v9, v11, &v57);

  v15 = v0[102];
  v16 = v0[101];
  if (v57 == 709)
  {
    v17 = v0[101];
    v18 = 1;
  }

  else
  {
    LOWORD(v58) = v57;
    HueSemantic.rawValue.getter();
    sub_252E362F4();
    v17 = v16;
    v18 = 0;
  }

  v6(v17, v18, 1, v15);
  v19 = v0[100];
  v7 = *(v0[103] + 48);
  if (v7(v19, 1, v0[102]) != 1)
  {
    sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
  }

LABEL_16:
  v20 = v0[102];
  v21 = v0[101];
  if (v7(v21, 1, v20) == 1)
  {
    sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
    sub_2529318DC();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[104];
    v26 = v0[103];
    v27 = v0[99];
    v28 = v0[91];
    (*(v26 + 32))(v25, v21, v20);
    type metadata accessor for HomeAutomationIntentContext.Builder(0);
    swift_allocObject();
    v29 = sub_2529930C0();
    *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest) = 1;
    (*(v26 + 16))(v27, v25, v20);
    v6(v27, 0, 1, v20);
    v30 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
    swift_beginAccess();
    sub_252956BAC(v27, v29 + v30);
    swift_endAccess();
    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    v31 = type metadata accessor for HomeAutomationIntentContext(0);
    swift_allocObject();
    v32 = sub_252996D9C(v29);
    v0[105] = v32;

    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D84F90];
    *(v33 + 16) = MEMORY[0x277D84F90];
    if (v28)
    {
      v55 = v32;
      v35 = sub_252C285F0();
      v36 = v35;
      v58 = v34;
      v37 = v35 & 0xFFFFFFFFFFFFFF8;
      if (v35 >> 62)
      {
LABEL_44:
        v38 = sub_252E378C4();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = 0;
      while (v38 != v39)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x2530ADF00](v39, v36);
        }

        else
        {
          if (v39 >= *(v37 + 16))
          {
            goto LABEL_43;
          }

          v40 = *(v36 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v43 = sub_252DA124C(0);

        ++v39;
        if (v43)
        {
          MEMORY[0x2530AD700]();
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v34 = v58;
          v39 = v42;
        }
      }

      v32 = v55;
    }

    type metadata accessor for HomeAutomationEntityResponses();
    v44 = swift_allocObject();
    v0[106] = v44;
    *(v44 + 16) = 0;
    swift_setDeallocating();
    v45 = swift_deallocClassInstance();
    *(v44 + 24) = v34;
    v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v45);
    sub_252929E74((v46 + 288), (v0 + 65));

    v47 = v0[68];
    v48 = v0[69];
    __swift_project_boxed_opaque_existential_1(v0 + 65, v47);
    v49 = (*(v48 + 120))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v0 + 65);
    v50 = v0[92];
    if (v49)
    {
      v0[107] = v50[8];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
      v51 = swift_allocObject();
      strcpy((v51 + 32), "intentContext");
      *(v51 + 46) = -4864;
      *(v51 + 72) = v31;
      v56 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
      v0[108] = v51;
      *(v51 + 16) = xmmword_252E3C290;
      *(v51 + 48) = v32;

      v52 = swift_task_alloc();
      v0[109] = v52;
      *v52 = v0;
      v52[1] = sub_252961604;

      return v56(0xD000000000000017, 0x8000000252E66630, v51);
    }

    else
    {
      v53 = *__swift_project_boxed_opaque_existential_1(v50 + 3, v50[6]);

      v54 = swift_task_alloc();
      v0[121] = v54;
      *v54 = v0;
      v54[1] = sub_25296237C;

      return sub_252C0DCF0(0, v53, v32, v44);
    }
  }
}

uint64_t sub_252961604(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 880) = a1;
  *(v3 + 888) = v1;

  if (v1)
  {
    v4 = sub_252961ABC;
  }

  else
  {

    v4 = sub_25296173C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25296173C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = swift_task_alloc();
  *(v0 + 896) = v6;
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v3;
  *(v0 + 1064) = sub_252DC6D48(v5, v4);
  sub_252E33924();
  sub_252E33F54();
  v7 = v1;
  if (v4)
  {
    v8 = *(v0 + 728);
    v9 = swift_task_alloc();
    *(v0 + 904) = v9;
    *v9 = v0;
    v9[1] = sub_2529619A4;

    return sub_252DC810C(v8);
  }

  else
  {
    v11 = *(v0 + 880);
    *(v0 + 928) = v11;
    v12 = *(v0 + 896);
    __swift_project_boxed_opaque_existential_1((*(v0 + 736) + 72), *(*(v0 + 736) + 96));
    v13 = swift_task_alloc();
    *(v0 + 936) = v13;
    *(v13 + 16) = v11;
    v14 = swift_task_alloc();
    *(v0 + 944) = v14;
    *(v14 + 16) = &unk_252E3D190;
    *(v14 + 24) = v12;
    v15 = v11;
    v16 = swift_task_alloc();
    *(v0 + 952) = v16;
    *v16 = v0;
    v16[1] = sub_252961BE0;
    v17 = *(v0 + 784);

    return sub_252A199A8(v0 + 640, &unk_252E400A0, v13, &unk_252E3D1A0, v14, v17, 0, 0);
  }
}

uint64_t sub_2529619A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 912) = a1;
  *(v3 + 920) = v1;

  if (v1)
  {
    v4 = sub_25296222C;
  }

  else
  {
    v4 = sub_252962098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252961ABC()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252961BE0()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {

    v3 = sub_252961F4C;
  }

  else
  {

    v3 = sub_252961D54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252961D54()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[116];
  v17 = v0[110];
  v9 = v0[98];
  v10 = v0[95];
  v11 = v0[94];
  (*(v4 + 112))(v7, v0 + 80, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  (*(v10 + 8))(v9, v11);

  v12 = v0[104];
  v13 = v0[103];
  v14 = v0[102];

  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252961F4C()
{
  v1 = v0[116];
  v2 = v0[98];
  v3 = v0[95];
  v4 = v0[94];

  (*(v3 + 8))(v2, v4);
  v5 = v0[110];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252962098()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 880);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 912));

    v2 = v3;
  }

  *(v0 + 928) = v2;
  v4 = *(v0 + 896);
  __swift_project_boxed_opaque_existential_1((*(v0 + 736) + 72), *(*(v0 + 736) + 96));
  v5 = swift_task_alloc();
  *(v0 + 936) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 944) = v6;
  *(v6 + 16) = &unk_252E3D190;
  *(v6 + 24) = v4;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 952) = v8;
  *v8 = v0;
  v8[1] = sub_252961BE0;
  v9 = *(v0 + 784);

  return sub_252A199A8(v0 + 640, &unk_252E400A0, v5, &unk_252E3D1A0, v6, v9, 0, 0);
}

uint64_t sub_25296222C()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 728);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 880);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);

  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25296237C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 976) = a1;
  *(v3 + 984) = v1;

  if (v1)
  {
    v4 = sub_252962864;
  }

  else
  {
    v4 = sub_2529624D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529624D8()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = swift_allocObject();
  *(v0 + 992) = v4;
  *(v4 + 16) = v1;
  v5 = v1;
  *(v0 + 1065) = sub_252DC6D48(v3, v2);
  if (v2)
  {
    v6 = *(v0 + 976);
    v7 = *(v0 + 728);
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 1000) = v9;
    *v9 = v0;
    v9[1] = sub_25296274C;

    return sub_252E174F4(v7);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 736);
    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v13 = *(v11 + 96);
    __swift_project_boxed_opaque_existential_1((v11 + 72), v13);
    sub_252AD7CC4();
    v14 = swift_task_alloc();
    *(v0 + 1024) = v14;
    *v14 = v0;
    v14[1] = sub_25296296C;
    v15 = *(v0 + 776);

    return sub_252BDB88C(v0 + 560, &unk_252E3D180, v4, v15, 0, 0, 0, v13);
  }
}

uint64_t sub_25296274C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1008) = a1;
  *(v3 + 1016) = v1;

  if (v1)
  {
    v4 = sub_252962C30;
  }

  else
  {
    v4 = sub_252962AD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252962864()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25296296C()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  (*(v2[95] + 8))(v2[97], v2[94]);
  if (v0)
  {
    v3 = sub_25296339C;
  }

  else
  {
    v3 = sub_2529631DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252962AD4()
{
  v1 = (v0 + 704);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  *(v0 + 704) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 736);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 1040) = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 1048) = v11;
  *v11 = v0;
  v11[1] = sub_252962D5C;
  v12 = *(v0 + 1065);
  v13 = *(v0 + 768);

  return sub_252BDB88C(v0 + 600, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_252962C30()
{
  v1 = *(v0 + 728);

  v2 = *(v0 + 976);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252962D5C()
{
  v2 = *v1;
  *(*v1 + 1056) = v0;

  (*(v2[95] + 8))(v2[96], v2[94]);
  if (v0)
  {
    v3 = sub_252963094;
  }

  else
  {

    v3 = sub_252962EB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252962EB4()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1008);
  v9 = *(v0 + 976);
  v10 = *(v0 + 728);
  (*(v4 + 112))(v7, v0 + 600, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 600));

  v11 = *(v0 + 976);

  v12 = *(v0 + 832);
  v13 = *(v0 + 824);
  v14 = *(v0 + 816);

  (*(v13 + 8))(v12, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252963094()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 728);

  v3 = *(v0 + 976);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2529631DC()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 70, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 70);

  v8 = v0[122];

  v9 = v0[104];
  v10 = v0[103];
  v11 = v0[102];

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_25296339C()
{

  v1 = v0[122];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2529634B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_25296359C;

  return sub_252A22D70(v8, a2, a3, a4);
}

uint64_t sub_25296359C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_25295A398;
  }

  else
  {
    v2 = sub_2529636B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529636B0()
{
  sub_2529645E8(v0[3], v0[2]);
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_25296373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-v10];
  v12 = type metadata accessor for HomeAutomationSetColorParameters(0);
  v13 = v12[6];

  *(a1 + v13) = a2;
  v14 = v12[7];

  *(a1 + v14) = a3;
  v15 = sub_25294833C(1u, 0, 0);
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v15 dictionary];
  if (!v17)
  {

LABEL_7:
    v25 = sub_252E36324();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v30[0] = 0;
  v20 = [v19 dataWithPropertyList:v18 format:200 options:0 error:v30];
  v21 = v30[0];
  if (!v20)
  {
    v26 = v21;
    v27 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v22 = sub_252E32D34();
  v24 = v23;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v22, v24);
  v25 = sub_252E36324();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
LABEL_8:
  sub_252956C98(v11, a1 + v12[8]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
  return sub_252956C98(v9, a1);
}

uint64_t sub_252963A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252963A78, 0, 0);
}

uint64_t sub_252963A78()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4 && (sub_252C28D24(v0[3]) & 1) != 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v5 = v0[2];
      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544D18);
      sub_252CC3D90(0xD000000000000035, 0x8000000252E6B3B0, 0xD00000000000008FLL, 0x8000000252E6B320);
      sub_252C24354(v2, v5);

      v7 = v0[1];

      return v7();
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6B2F0, 0xD00000000000008FLL, 0x8000000252E6B320);
    v9 = v2;
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_252963D44;
    v11 = v0[4];
    v12 = v0[2];
    v13 = v0[3];
  }

  else
  {
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_252963EC4;
    v12 = v0[2];
    v13 = v0[3];
    v11 = 0;
  }

  return sub_252960BF0(v12, v13, v11);
}

uint64_t sub_252963D44()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_252963FB8;
  }

  else
  {

    v3 = sub_252963E60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252963E60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252963EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252963FB8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252964020()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return swift_deallocClassInstance();
}

uint64_t sub_2529640C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252960BF0(a1, a2, a3);
}

uint64_t sub_252964178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252963A54(a1, a2, a3);
}

uint64_t sub_25296422C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252963A54(a1, a2, a3);
}

void *sub_2529642E0@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SetColorResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252964344(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_5:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 5;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_2529643E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_25296447C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_2529634B4(a1, v4, v5, v6);
}

uint64_t sub_252964530(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252A1E27C(a1, v4);
}

uint64_t sub_2529645E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25296464C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *sub_2529646B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = (a1 + 512);
  v5 = -1;
  do
  {
    if (v3 == ++v5)
    {
      goto LABEL_349;
    }

    if (*(*(v4 - 10) + 16))
    {
      break;
    }

    if (*(*(v4 - 9) + 16))
    {
      break;
    }

    if (*(*(v4 - 8) + 16))
    {
      break;
    }

    if (*(*(v4 - 7) + 16))
    {
      break;
    }

    if (*(*(v4 - 6) + 16))
    {
      break;
    }

    if (*(*(v4 - 5) + 16))
    {
      break;
    }

    if (*(*(v4 - 4) + 16))
    {
      break;
    }

    if (*(*(v4 - 3) + 16))
    {
      break;
    }

    if (*(*(v4 - 2) + 16))
    {
      break;
    }

    if (*(*(v4 - 1) + 16))
    {
      break;
    }

    v6 = *v4;
    v4 += 63;
  }

  while (!*(v6 + 16));
  if (qword_27F53F520 != -1)
  {
LABEL_318:
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E08);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD00000000000001ELL;
  __dst[1] = 0x8000000252E6B510;
  v8 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A1, 0x8000000252E6B530);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = 504;
  v12 = 32;
  do
  {
    v13 = 504 * v9 + 32;
    v14 = v9;
    while (1)
    {
      if (v14 >= v3)
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:

        v123 = v196[2];
        if (!v123)
        {
LABEL_251:

          v135 = v195[2];
          if (!v135)
          {
            goto LABEL_275;
          }

          if (!v195[2])
          {
            goto LABEL_374;
          }

          memcpy(__dst, v195 + 4, sizeof(__dst));
          result = sub_2529353AC(__dst, v199);
          v136 = 0;
          v10 = MEMORY[0x277D84F90];
          v137 = 59;
          v71 = MEMORY[0x277D84F90];
          while (v136 < v195[2])
          {
            v138 = v195[v137];
            v139 = *(v138 + 16);
            v140 = *(v71 + 2);
            v141 = v140 + v139;
            if (__OFADD__(v140, v139))
            {
              goto LABEL_354;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || v141 > *(v71 + 3) >> 1)
            {
              if (v140 <= v141)
              {
                v142 = v140 + v139;
              }

              else
              {
                v142 = v140;
              }

              result = sub_2529F8360(result, v142, 1, v71);
              v71 = result;
            }

            if (*(v138 + 16))
            {
              if ((*(v71 + 3) >> 1) - *(v71 + 2) < v139)
              {
                goto LABEL_357;
              }

              swift_arrayInitWithCopy();

              if (v139)
              {
                v143 = *(v71 + 2);
                v77 = __OFADD__(v143, v139);
                v144 = v143 + v139;
                if (v77)
                {
                  goto LABEL_358;
                }

                *(v71 + 2) = v144;
              }
            }

            else
            {

              if (v139)
              {
                goto LABEL_355;
              }
            }

            ++v136;
            v137 += 63;
            if (v135 == v136)
            {
              goto LABEL_270;
            }
          }

LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
          goto LABEL_356;
        }

        if (!v196[2])
        {
          goto LABEL_368;
        }

        memcpy(__dst, v196 + 4, sizeof(__dst));
        sub_2529353AC(__dst, v199);
        v124 = 0;
        v10 = MEMORY[0x277D84F90];
        v125 = 58;
        v25 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v124 >= v196[2])
          {
            goto LABEL_345;
          }

          v126 = v196[v125];
          v2 = *(v126 + 16);
          v127 = *(v25 + 16);
          v128 = v127 + v2;
          if (__OFADD__(v127, v2))
          {
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
            goto LABEL_348;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v128 <= *(v25 + 24) >> 1)
          {
            if (!*(v126 + 16))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (v127 <= v128)
            {
              v129 = v127 + v2;
            }

            else
            {
              v129 = v127;
            }

            result = sub_2529F8360(result, v129, 1, v25);
            v25 = result;
            if (!*(v126 + 16))
            {
LABEL_217:

              if (v2)
              {
                goto LABEL_347;
              }

              goto LABEL_218;
            }
          }

          if ((*(v25 + 24) >> 1) - *(v25 + 16) < v2)
          {
            goto LABEL_351;
          }

          swift_arrayInitWithCopy();

          if (v2)
          {
            v130 = *(v25 + 16);
            v77 = __OFADD__(v130, v2);
            v131 = v130 + v2;
            if (v77)
            {
              goto LABEL_352;
            }

            *(v25 + 16) = v131;
          }

LABEL_218:
          ++v124;
          v125 += 63;
          if (v123 == v124)
          {
            goto LABEL_247;
          }
        }
      }

      memcpy(__dst, (v2 + v13), sizeof(__dst));
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_211;
      }

      if (*(__dst[51] + 16))
      {
        break;
      }

      ++v14;
      v13 += 504;
      if (v9 == v3)
      {
        goto LABEL_27;
      }
    }

    sub_2529353AC(__dst, v199);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v201 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, v10[2] + 1, 1);
      v10 = v201;
    }

    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      sub_2529AA480((v16 > 1), v17 + 1, 1);
      v10 = v201;
    }

    v10[2] = v17 + 1;
    memcpy(&v10[63 * v17 + 4], __dst, 0x1F8uLL);
  }

  while (v9 != v3);
LABEL_27:
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v11 = 504;
  do
  {
    v20 = 504 * v18 + 32;
    v21 = v18;
    while (1)
    {
      if (v21 >= v3)
      {
        goto LABEL_212;
      }

      memcpy(__dst, (v2 + v20), sizeof(__dst));
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_213;
      }

      if (*(__dst[52] + 16))
      {
        break;
      }

      ++v21;
      v20 += 504;
      if (v18 == v3)
      {
        goto LABEL_39;
      }
    }

    sub_2529353AC(__dst, v199);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v19;
    if ((v22 & 1) == 0)
    {
      sub_2529AA480(0, v19[2] + 1, 1);
      v19 = v201;
    }

    v1 = v19[2];
    v23 = v19[3];
    if (v1 >= v23 >> 1)
    {
      sub_2529AA480((v23 > 1), v1 + 1, 1);
      v19 = v201;
    }

    v19[2] = v1 + 1;
    memcpy(&v19[63 * v1 + 4], __dst, 0x1F8uLL);
  }

  while (v18 != v3);
LABEL_39:
  v24 = 0;
  v198 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v24 + 32;
    v26 = v24;
    while (1)
    {
      if (v26 >= v3)
      {
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:

        v132 = sub_252DF8F1C(v25);

        memcpy(v199, __dst, sizeof(v199));
        v108 = sub_252E1EBE8(v199);

        sub_252935408(__dst);
        v133 = *(v108 + 448);
        *&v199[32] = *(v108 + 432);
        *&v199[48] = v133;
        *&v199[64] = *(v108 + 464);
        *&v199[80] = *(v108 + 480);
        v134 = *(v108 + 416);
        *v199 = *(v108 + 400);
        *&v199[16] = v134;
        *(v108 + 400) = v10;
        *(v108 + 408) = v10;
        *(v108 + 416) = v10;
        *(v108 + 424) = v10;
        *(v108 + 432) = v132;
        goto LABEL_208;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_234;
      }

      if (*(__dst[50] + 16))
      {
        break;
      }

      ++v26;
      v25 += 504;
      if (v24 == v3)
      {
        goto LABEL_51;
      }
    }

    sub_2529353AC(__dst, v199);
    v27 = v198;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v198;
    if ((v28 & 1) == 0)
    {
      sub_2529AA480(0, v198[2] + 1, 1);
      v27 = v201;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      sub_2529AA480((v29 > 1), v30 + 1, 1);
      v27 = v201;
    }

    v27[2] = v30 + 1;
    v198 = v27;
    memcpy(&v27[63 * v30 + 4], __dst, 0x1F8uLL);
  }

  while (v24 != v3);
LABEL_51:
  v31 = 0;
  v197 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v31 + 32;
    v32 = v31;
    while (1)
    {
      if (v32 >= v3)
      {
        goto LABEL_235;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_236;
      }

      if (*(__dst[53] + 16))
      {
        break;
      }

      ++v32;
      v25 += 504;
      if (v31 == v3)
      {
        goto LABEL_63;
      }
    }

    sub_2529353AC(__dst, v199);
    v33 = v197;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v197;
    if ((v34 & 1) == 0)
    {
      sub_2529AA480(0, v197[2] + 1, 1);
      v33 = v201;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      sub_2529AA480((v35 > 1), v36 + 1, 1);
      v33 = v201;
    }

    v33[2] = v36 + 1;
    v197 = v33;
    memcpy(&v33[63 * v36 + 4], __dst, 0x1F8uLL);
  }

  while (v31 != v3);
LABEL_63:
  v37 = 0;
  v196 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v37 + 32;
    v38 = v37;
    while (1)
    {
      if (v38 >= v3)
      {
        goto LABEL_237;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v37 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_238;
      }

      if (*(__dst[54] + 16))
      {
        break;
      }

      ++v38;
      v25 += 504;
      if (v37 == v3)
      {
        goto LABEL_75;
      }
    }

    sub_2529353AC(__dst, v199);
    v39 = v196;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v196;
    if ((v40 & 1) == 0)
    {
      sub_2529AA480(0, v196[2] + 1, 1);
      v39 = v201;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      sub_2529AA480((v41 > 1), v42 + 1, 1);
      v39 = v201;
    }

    v39[2] = v42 + 1;
    v196 = v39;
    memcpy(&v39[63 * v42 + 4], __dst, 0x1F8uLL);
  }

  while (v37 != v3);
LABEL_75:
  v43 = 0;
  v195 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v43 + 32;
    v44 = v43;
    while (1)
    {
      if (v44 >= v3)
      {
        goto LABEL_239;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v43 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_240;
      }

      if (*(__dst[55] + 16))
      {
        break;
      }

      ++v44;
      v25 += 504;
      if (v43 == v3)
      {
        goto LABEL_87;
      }
    }

    sub_2529353AC(__dst, v199);
    v45 = v195;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v195;
    if ((v46 & 1) == 0)
    {
      sub_2529AA480(0, v195[2] + 1, 1);
      v45 = v201;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      sub_2529AA480((v47 > 1), v48 + 1, 1);
      v45 = v201;
    }

    v45[2] = v48 + 1;
    v195 = v45;
    memcpy(&v45[63 * v48 + 4], __dst, 0x1F8uLL);
  }

  while (v43 != v3);
LABEL_87:
  v49 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v49 + 32;
    v50 = v49;
    while (1)
    {
      if (v50 >= v3)
      {
        goto LABEL_241;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v49 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_242;
      }

      if (*(__dst[57] + 16))
      {
        break;
      }

      ++v50;
      v25 += 504;
      if (v49 == v3)
      {
        goto LABEL_99;
      }
    }

    sub_2529353AC(__dst, v199);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v11;
    if ((v51 & 1) == 0)
    {
      sub_2529AA480(0, *(v11 + 16) + 1, 1);
      v11 = v201;
    }

    v53 = *(v11 + 16);
    v52 = *(v11 + 24);
    v54 = v11;
    if (v53 >= v52 >> 1)
    {
      sub_2529AA480((v52 > 1), v53 + 1, 1);
      v54 = v201;
    }

    *(v54 + 16) = v53 + 1;
    memcpy((v54 + 504 * v53 + 32), __dst, 0x1F8uLL);
    v11 = v54;
  }

  while (v49 != v3);
LABEL_99:
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  do
  {
    v25 = 504 * v55 + 32;
    v57 = v55;
    while (1)
    {
      if (v57 >= v3)
      {
        goto LABEL_243;
      }

      memcpy(__dst, (v2 + v25), sizeof(__dst));
      v55 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_244;
      }

      if (*(__dst[59] + 16))
      {
        break;
      }

      ++v57;
      v25 += 504;
      if (v55 == v3)
      {
        goto LABEL_111;
      }
    }

    sub_2529353AC(__dst, v199);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v56;
    if ((v58 & 1) == 0)
    {
      sub_2529AA480(0, v56[2] + 1, 1);
      v56 = v201;
    }

    v60 = v56[2];
    v59 = v56[3];
    v61 = v56;
    if (v60 >= v59 >> 1)
    {
      sub_2529AA480((v59 > 1), v60 + 1, 1);
      v61 = v201;
    }

    v61[2] = v60 + 1;
    memcpy(&v61[63 * v60 + 4], __dst, 0x1F8uLL);
    v56 = v61;
  }

  while (v55 != v3);
LABEL_111:
  v194 = v56;
  v25 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v62 = v12 + 504 * v25;
    v63 = v25;
    while (1)
    {
      if (v63 >= v3)
      {
        goto LABEL_245;
      }

      memcpy(__dst, (v2 + v62), sizeof(__dst));
      v25 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_246;
      }

      if (*(__dst[60] + 16))
      {
        break;
      }

      ++v63;
      v62 += 504;
      if (v25 == v3)
      {
        goto LABEL_123;
      }
    }

    v193 = v19;
    v64 = v12;
    sub_2529353AC(__dst, v199);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v1;
    v66 = v11;
    if ((v65 & 1) == 0)
    {
      sub_2529AA480(0, *(v1 + 16) + 1, 1);
      v1 = v201;
    }

    v68 = *(v1 + 16);
    v67 = *(v1 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_2529AA480((v67 > 1), v68 + 1, 1);
      v1 = v201;
    }

    *(v1 + 16) = v68 + 1;
    memcpy((v1 + 504 * v68 + 32), __dst, 0x1F8uLL);
    v11 = v66;
    v12 = v64;
    v19 = v193;
  }

  while (v25 != v3);
LABEL_123:
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v69 = v10[2];
  if (!v69)
  {

    v84 = v19[2];
    if (v84)
    {

      if (v19[2])
      {
        memcpy(__dst, v19 + 4, sizeof(__dst));
        sub_2529353AC(__dst, v199);
        v86 = 0;
        v87 = MEMORY[0x277D84F90];
        v1 = 448;
        v88 = &_s18FuzzyMatchingValueVN;
        while (1)
        {
          if (v86 >= v19[2])
          {
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:

            v148 = *(v11 + 16);
            if (v148)
            {

              if (*(v11 + 16))
              {
                memcpy(__dst, (v11 + 32), sizeof(__dst));
                result = sub_2529353AC(__dst, v199);
                v149 = 0;
                v88 = MEMORY[0x277D84F90];
                v150 = 488;
                while (v149 < *(v11 + 16))
                {
                  v151 = v11;
                  v152 = *(v11 + v150);
                  v153 = *(v152 + 16);
                  Kind = v88[1].Kind;
                  v155 = Kind + v153;
                  if (__OFADD__(Kind, v153))
                  {
                    goto LABEL_360;
                  }

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (!result || v155 > (v88[1].Description >> 1))
                  {
                    if (Kind <= v155)
                    {
                      v156 = Kind + v153;
                    }

                    else
                    {
                      v156 = Kind;
                    }

                    result = sub_2529F8360(result, v156, 1, v88);
                    v88 = result;
                  }

                  if (*(v152 + 16))
                  {
                    if (((v88[1].Description >> 1) - v88[1].Kind) < v153)
                    {
                      goto LABEL_363;
                    }

                    swift_arrayInitWithCopy();

                    if (v153)
                    {
                      v157 = v88[1].Kind;
                      v77 = __OFADD__(v157, v153);
                      v158 = v157 + v153;
                      if (v77)
                      {
                        goto LABEL_364;
                      }

                      v88[1].Kind = v158;
                    }
                  }

                  else
                  {

                    if (v153)
                    {
                      goto LABEL_361;
                    }
                  }

                  ++v149;
                  v150 += 504;
                  v11 = v151;
                  if (v148 == v149)
                  {
                    goto LABEL_294;
                  }
                }

LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
LABEL_367:
                __break(1u);
LABEL_368:
                __break(1u);
LABEL_369:
                __break(1u);
LABEL_370:
                __break(1u);
LABEL_371:
                __break(1u);
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
LABEL_376:
                __break(1u);
              }

              __break(1u);
LABEL_378:
              __break(1u);
              return result;
            }

LABEL_299:

            v162 = v194[2];
            if (v162)
            {

              if (v194[2])
              {
                v163 = 63;
                memcpy(__dst, v194 + 4, sizeof(__dst));
                result = sub_2529353AC(__dst, v199);
                v164 = 0;
                v165 = MEMORY[0x277D84F90];
                v166 = MEMORY[0x277D84F90];
                while (v164 < v194[2])
                {
                  v167 = v194[v163];
                  v168 = *(v167 + 16);
                  v169 = *(v166 + 16);
                  v170 = v169 + v168;
                  if (__OFADD__(v169, v168))
                  {
                    goto LABEL_366;
                  }

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (!result || v170 > *(v166 + 24) >> 1)
                  {
                    if (v169 <= v170)
                    {
                      v171 = v169 + v168;
                    }

                    else
                    {
                      v171 = v169;
                    }

                    result = sub_2529F8360(result, v171, 1, v166);
                    v166 = result;
                  }

                  if (*(v167 + 16))
                  {
                    if ((*(v166 + 24) >> 1) - *(v166 + 16) < v168)
                    {
                      goto LABEL_369;
                    }

                    swift_arrayInitWithCopy();

                    if (v168)
                    {
                      v172 = *(v166 + 16);
                      v77 = __OFADD__(v172, v168);
                      v173 = v172 + v168;
                      if (v77)
                      {
                        goto LABEL_370;
                      }

                      *(v166 + 16) = v173;
                    }
                  }

                  else
                  {

                    if (v168)
                    {
                      goto LABEL_367;
                    }
                  }

                  ++v164;
                  v163 += 63;
                  if (v162 == v164)
                  {

                    v174 = sub_252DF8F1C(v166);

                    memcpy(v199, __dst, sizeof(v199));
                    v175 = sub_252E1EBE8(v199);

                    sub_252935408(__dst);
                    v176 = *(v175 + 448);
                    *&v199[32] = *(v175 + 432);
                    *&v199[48] = v176;
                    *&v199[64] = *(v175 + 464);
                    *&v199[80] = *(v175 + 480);
                    v177 = *(v175 + 416);
                    *v199 = *(v175 + 400);
                    *&v199[16] = v177;
                    *(v175 + 400) = v165;
                    *(v175 + 408) = v165;
                    *(v175 + 416) = v165;
                    *(v175 + 424) = v165;
                    *(v175 + 432) = v165;
                    *(v175 + 440) = v165;
                    *(v175 + 448) = v165;
                    *(v175 + 456) = v165;
                    *(v175 + 464) = v165;
                    *(v175 + 472) = v174;
                    *(v175 + 480) = v165;
                    goto LABEL_165;
                  }
                }

                goto LABEL_365;
              }

              goto LABEL_378;
            }

LABEL_324:

            v178 = *(v1 + 16);
            if (v178)
            {
              memcpy(__dst, (v1 + 32), sizeof(__dst));
              result = sub_2529353AC(__dst, v199);
              v179 = 0;
              v25 = MEMORY[0x277D84F90];
              v180 = 512;
              while (v179 < *(v1 + 16))
              {
                v181 = *(v1 + v180);
                v182 = *(v181 + 16);
                v183 = *(v25 + 16);
                v184 = v183 + v182;
                if (__OFADD__(v183, v182))
                {
                  goto LABEL_372;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (!result || v184 > *(v25 + 24) >> 1)
                {
                  if (v183 <= v184)
                  {
                    v185 = v183 + v182;
                  }

                  else
                  {
                    v185 = v183;
                  }

                  result = sub_2529F8360(result, v185, 1, v25);
                  v25 = result;
                }

                if (*(v181 + 16))
                {
                  if ((*(v25 + 24) >> 1) - *(v25 + 16) < v182)
                  {
                    goto LABEL_375;
                  }

                  swift_arrayInitWithCopy();

                  if (v182)
                  {
                    v186 = *(v25 + 16);
                    v77 = __OFADD__(v186, v182);
                    v187 = v186 + v182;
                    if (v77)
                    {
                      goto LABEL_376;
                    }

                    *(v25 + 16) = v187;
                  }
                }

                else
                {

                  if (v182)
                  {
                    goto LABEL_373;
                  }
                }

                ++v179;
                v180 += 504;
                if (v178 == v179)
                {
                  goto LABEL_343;
                }
              }

              goto LABEL_371;
            }

LABEL_348:

            sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E6B5E0, 0xD0000000000000A1, 0x8000000252E6B530);

LABEL_349:

            return v2;
          }

          v11 = *(v19 + v1);
          v2 = *(v11 + 16);
          v89 = *(v87 + 2);
          v90 = v89 + v2;
          if (__OFADD__(v89, v2))
          {
            goto LABEL_273;
          }

          v91 = swift_isUniquelyReferenced_nonNull_native();
          if (v91 && v90 <= *(v87 + 3) >> 1)
          {
            if (!*(v11 + 16))
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v89 <= v90)
            {
              v92 = v89 + v2;
            }

            else
            {
              v92 = v89;
            }

            v87 = sub_2529F8360(v91, v92, 1, v87);
            if (!*(v11 + 16))
            {
LABEL_146:

              if (v2)
              {
                goto LABEL_274;
              }

              goto LABEL_147;
            }
          }

          if ((*(v87 + 3) >> 1) - *(v87 + 2) < v2)
          {
            __break(1u);
LABEL_294:

            v159 = sub_252DF8F1C(v88);

            memcpy(v199, __dst, sizeof(v199));
            v80 = sub_252E1EBE8(v199);

            sub_252935408(__dst);
            v160 = *(v80 + 448);
            *&v199[32] = *(v80 + 432);
            *&v199[48] = v160;
            *&v199[64] = *(v80 + 464);
            *&v199[80] = *(v80 + 480);
            v161 = *(v80 + 416);
            *v199 = *(v80 + 400);
            *&v199[16] = v161;
            v83 = MEMORY[0x277D84F90];
            *(v80 + 400) = MEMORY[0x277D84F90];
            *(v80 + 408) = v83;
            *(v80 + 416) = v83;
            *(v80 + 424) = v83;
            *(v80 + 432) = v83;
            *(v80 + 440) = v83;
            *(v80 + 448) = v83;
            *(v80 + 456) = v159;
LABEL_164:
            *(v80 + 464) = v83;
            *(v80 + 472) = v83;
            *(v80 + 480) = v83;
            goto LABEL_165;
          }

          swift_arrayInitWithCopy();

          if (v2)
          {
            v93 = *(v87 + 2);
            v77 = __OFADD__(v93, v2);
            v94 = v93 + v2;
            if (v77)
            {
              __break(1u);
LABEL_296:
              __break(1u);
              goto LABEL_297;
            }

            *(v87 + 2) = v94;
          }

LABEL_147:
          ++v86;
          v1 += 504;
          if (v84 == v86)
          {

            v95 = sub_252DF8F1C(v87);

            memcpy(v199, __dst, sizeof(v199));
            v80 = sub_252E1EBE8(v199);

            sub_252935408(__dst);
            v96 = *(v80 + 448);
            *&v199[32] = *(v80 + 432);
            *&v199[48] = v96;
            *&v199[64] = *(v80 + 464);
            *&v199[80] = *(v80 + 480);
            v97 = *(v80 + 416);
            *v199 = *(v80 + 400);
            *&v199[16] = v97;
            v83 = MEMORY[0x277D84F90];
            *(v80 + 400) = MEMORY[0x277D84F90];
            *(v80 + 408) = v83;
            *(v80 + 416) = v95;
LABEL_163:
            *(v80 + 424) = v83;
            *(v80 + 432) = v83;
            *(v80 + 440) = v83;
            *(v80 + 448) = v83;
            *(v80 + 456) = v83;
            goto LABEL_164;
          }
        }
      }

      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
      goto LABEL_353;
    }

    v98 = v198[2];
    if (v98)
    {

      if (!v198[2])
      {
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
        goto LABEL_359;
      }

      memcpy(__dst, v198 + 4, sizeof(__dst));
      sub_2529353AC(__dst, v199);
      v99 = 0;
      v10 = MEMORY[0x277D84F90];
      v100 = 54;
      v101 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v99 >= v198[2])
        {
          goto LABEL_296;
        }

        v102 = v198[v100];
        v2 = *(v102 + 16);
        v1 = *(v101 + 2);
        v3 = v1 + v2;
        if (__OFADD__(v1, v2))
        {
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

        v103 = swift_isUniquelyReferenced_nonNull_native();
        if (v103 && v3 <= *(v101 + 3) >> 1)
        {
          if (*(v102 + 16))
          {
            goto LABEL_182;
          }
        }

        else
        {
          if (v1 <= v3)
          {
            v104 = v1 + v2;
          }

          else
          {
            v104 = v1;
          }

          v101 = sub_2529F8360(v103, v104, 1, v101);
          if (*(v102 + 16))
          {
LABEL_182:
            if ((*(v101 + 3) >> 1) - *(v101 + 2) < v2)
            {
              __break(1u);
              goto LABEL_318;
            }

            swift_arrayInitWithCopy();

            if (v2)
            {
              v105 = *(v101 + 2);
              v77 = __OFADD__(v105, v2);
              v106 = v105 + v2;
              if (v77)
              {
                __break(1u);
LABEL_321:
                __break(1u);
                goto LABEL_322;
              }

              *(v101 + 2) = v106;
            }

            goto LABEL_171;
          }
        }

        if (v2)
        {
          goto LABEL_298;
        }

LABEL_171:
        ++v99;
        v100 += 63;
        if (v98 == v99)
        {

          v107 = sub_252DF8F1C(v101);

          memcpy(v199, __dst, sizeof(v199));
          v108 = sub_252E1EBE8(v199);

          sub_252935408(__dst);
          v109 = *(v108 + 448);
          *&v199[32] = *(v108 + 432);
          *&v199[48] = v109;
          *&v199[64] = *(v108 + 464);
          *&v199[80] = *(v108 + 480);
          v110 = *(v108 + 416);
          *v199 = *(v108 + 400);
          *&v199[16] = v110;
          *(v108 + 400) = v107;
          *(v108 + 408) = v10;
          *(v108 + 416) = v10;
          *(v108 + 424) = v10;
          goto LABEL_207;
        }
      }
    }

    v111 = v197[2];
    if (v111)
    {

      if (!v197[2])
      {
        goto LABEL_362;
      }

      memcpy(__dst, v197 + 4, sizeof(__dst));
      sub_2529353AC(__dst, v199);
      v112 = 0;
      v10 = MEMORY[0x277D84F90];
      v113 = 57;
      v25 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v112 >= v197[2])
        {
          goto LABEL_321;
        }

        v114 = v197[v113];
        v2 = *(v114 + 16);
        v1 = *(v25 + 16);
        v115 = v1 + v2;
        if (__OFADD__(v1, v2))
        {
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
          goto LABEL_324;
        }

        v116 = swift_isUniquelyReferenced_nonNull_native();
        if (v116 && v115 <= *(v25 + 24) >> 1)
        {
          if (*(v114 + 16))
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (v1 <= v115)
          {
            v117 = v1 + v2;
          }

          else
          {
            v117 = v1;
          }

          v25 = sub_2529F8360(v116, v117, 1, v25);
          if (*(v114 + 16))
          {
LABEL_202:
            if ((*(v25 + 24) >> 1) - *(v25 + 16) < v2)
            {
              goto LABEL_342;
            }

            swift_arrayInitWithCopy();

            if (v2)
            {
              v118 = *(v25 + 16);
              v77 = __OFADD__(v118, v2);
              v119 = v118 + v2;
              if (v77)
              {
                __break(1u);
LABEL_345:
                __break(1u);
                goto LABEL_346;
              }

              *(v25 + 16) = v119;
            }

            goto LABEL_191;
          }
        }

        if (v2)
        {
          goto LABEL_323;
        }

LABEL_191:
        ++v112;
        v113 += 63;
        if (v111 == v112)
        {

          v120 = sub_252DF8F1C(v25);

          memcpy(v199, __dst, sizeof(v199));
          v108 = sub_252E1EBE8(v199);

          sub_252935408(__dst);
          v121 = *(v108 + 448);
          *&v199[32] = *(v108 + 432);
          *&v199[48] = v121;
          *&v199[64] = *(v108 + 464);
          *&v199[80] = *(v108 + 480);
          v122 = *(v108 + 416);
          *v199 = *(v108 + 400);
          *&v199[16] = v122;
          *(v108 + 400) = v10;
          *(v108 + 408) = v10;
          *(v108 + 416) = v10;
          *(v108 + 424) = v120;
LABEL_207:
          *(v108 + 432) = v10;
LABEL_208:
          *(v108 + 440) = v10;
          goto LABEL_209;
        }
      }
    }

    goto LABEL_214;
  }

  if (!v10[2])
  {
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:

    v188 = sub_252DF8F1C(v25);

    memcpy(v199, __dst, sizeof(v199));
    v189 = sub_252E1EBE8(v199);

    sub_252935408(__dst);
    v190 = *(v189 + 448);
    *&v199[32] = *(v189 + 432);
    *&v199[48] = v190;
    *&v199[64] = *(v189 + 464);
    *&v199[80] = *(v189 + 480);
    v191 = *(v189 + 416);
    *v199 = *(v189 + 400);
    *&v199[16] = v191;
    v192 = MEMORY[0x277D84F90];
    *(v189 + 400) = MEMORY[0x277D84F90];
    *(v189 + 408) = v192;
    *(v189 + 416) = v192;
    *(v189 + 424) = v192;
    *(v189 + 432) = v192;
    *(v189 + 440) = v192;
    *(v189 + 448) = v192;
    *(v189 + 456) = v192;
    *(v189 + 464) = v192;
    *(v189 + 472) = v192;
    *(v189 + 480) = v188;
    goto LABEL_165;
  }

  memcpy(__dst, v10 + 4, sizeof(__dst));
  sub_2529353AC(__dst, v199);
  v70 = 0;
  v71 = MEMORY[0x277D84F90];
  v1 = 440;
  while (2)
  {
    if (v70 >= v10[2])
    {
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v11 = *(v10 + v1);
    v2 = *(v11 + 16);
    v72 = *(v71 + 2);
    v73 = v72 + v2;
    if (__OFADD__(v72, v2))
    {
      goto LABEL_249;
    }

    v74 = swift_isUniquelyReferenced_nonNull_native();
    if (v74 && v73 <= *(v71 + 3) >> 1)
    {
      if (!*(v11 + 16))
      {
LABEL_126:

        if (v2)
        {
          goto LABEL_250;
        }

LABEL_127:
        ++v70;
        v1 += 504;
        if (v69 == v70)
        {

          v79 = sub_252DF8F1C(v71);

          memcpy(v199, __dst, sizeof(v199));
          v80 = sub_252E1EBE8(v199);

          sub_252935408(__dst);

          v81 = *(v80 + 448);
          *&v199[32] = *(v80 + 432);
          *&v199[48] = v81;
          *&v199[64] = *(v80 + 464);
          *&v199[80] = *(v80 + 480);
          v82 = *(v80 + 416);
          *v199 = *(v80 + 400);
          *&v199[16] = v82;
          v83 = MEMORY[0x277D84F90];
          *(v80 + 400) = MEMORY[0x277D84F90];
          *(v80 + 408) = v79;
          *(v80 + 416) = v83;
          goto LABEL_163;
        }

        continue;
      }
    }

    else
    {
      if (v72 <= v73)
      {
        v75 = v72 + v2;
      }

      else
      {
        v75 = v72;
      }

      v71 = sub_2529F8360(v74, v75, 1, v71);
      if (!*(v11 + 16))
      {
        goto LABEL_126;
      }
    }

    break;
  }

  if ((*(v71 + 3) >> 1) - *(v71 + 2) >= v2)
  {
    swift_arrayInitWithCopy();

    if (v2)
    {
      v76 = *(v71 + 2);
      v77 = __OFADD__(v76, v2);
      v78 = v76 + v2;
      if (v77)
      {
        __break(1u);
        goto LABEL_272;
      }

      *(v71 + 2) = v78;
    }

    goto LABEL_127;
  }

  __break(1u);
LABEL_270:

  v145 = sub_252DF8F1C(v71);

  memcpy(v199, __dst, sizeof(v199));
  v108 = sub_252E1EBE8(v199);

  sub_252935408(__dst);
  v146 = *(v108 + 448);
  *&v199[32] = *(v108 + 432);
  *&v199[48] = v146;
  *&v199[64] = *(v108 + 464);
  *&v199[80] = *(v108 + 480);
  v147 = *(v108 + 416);
  *v199 = *(v108 + 400);
  *&v199[16] = v147;
  *(v108 + 400) = v10;
  *(v108 + 408) = v10;
  *(v108 + 416) = v10;
  *(v108 + 424) = v10;
  *(v108 + 432) = v10;
  *(v108 + 440) = v145;
LABEL_209:
  *(v108 + 448) = v10;
  *(v108 + 456) = v10;
  *(v108 + 464) = v10;
  *(v108 + 472) = v10;
  *(v108 + 480) = v10;
LABEL_165:
  sub_252937BEC(v199);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E3C290;

  sub_252E1E4F8(v2 + 32);

  return v2;
}

uint64_t sub_252966374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetRvcAttributeTypeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_2529663A8(void *a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v7 = result;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = type metadata accessor for HomeStore(0);
  v10 = static HomeStore.shared.getter(v9);
  v11 = HomeStore.accessories(matching:supporting:)(v8, 0);
  v13 = v12;

  if (v13)
  {
    v14 = v11;
    v15 = 1;
    goto LABEL_69;
  }

  v16 = [a1 userTask];
  if (!v16)
  {
    sub_252929F10(v11, 0);
    sub_252C515AC();
    return 0;
  }

  v17 = v16;
  v18 = [v16 attribute];

  if (v18 != 27)
  {
    goto LABEL_68;
  }

  v19 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
LABEL_67:
    v20 = sub_252E378C4();
    if (!v20)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_68;
    }
  }

  v21 = 0;
  v70 = v11 + 32;
  v71 = v11 & 0xC000000000000001;
  v22 = *MEMORY[0x277CCE8C8];
  v68 = (v3 + 8);
  v69 = v22;
  v56 = "Modified user task: ";
  v61 = ". Returning .robotVacuumCleaner";
  v62 = "tity with accessoryID ";
  v60 = "MatterAccessory.swift";
  v59 = "for accessoryID ";
  v58 = "MatterAccessoryManager.swift";
  v57 = "deviceEntity(for:)";
  v23 = &off_279711000;
  v66 = v5;
  v67 = v2;
  v63 = v11;
  v64 = v20;
  v65 = v19;
  while (1)
  {
    if (v71)
    {
      v24 = MEMORY[0x2530ADF00](v21, v11);
      v25 = __OFADD__(v21, 1);
      v26 = v21 + 1;
      if (v25)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_66;
      }

      v25 = __OFADD__(v21, 1);
      v26 = v21 + 1;
      if (v25)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v27 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v75 = v24;
    v28 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
    v29 = [v28 v23[297]];
    if (!v29)
    {
      goto LABEL_62;
    }

    v30 = [v28 v23[297]];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 unsignedLongLongValue];

      if (!v32)
      {
        goto LABEL_62;
      }
    }

    v74 = v26;
    v33 = sub_252E37434();
    v3 = v34;
    if (v33 == sub_252E36F34() && v3 == v35)
    {
    }

    else
    {
      v37 = sub_252E37DB4();

      if ((v37 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if ([v28 isBridged])
    {
LABEL_62:
      sub_252929F10(v11, 0);

      return 0;
    }

    v38 = *(v75 + v27);
    type metadata accessor for MatterAccessory(0);
    swift_allocObject();
    v72 = sub_252D677E0(v38);
    v39 = [*(v72 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    sub_252E32E64();

    v11 = sub_252E32E24();
    v76 = v40;
    v41 = (*v68)(v5, v2);
    v42 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v41);
    v43 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v73 = v42;
    v2 = *&v42[v43];
    v44 = v2 >> 62 ? sub_252E378C4() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v44)
    {
      break;
    }

LABEL_39:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544EC8);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v60 | 0x8000000000000000);
    v48 = v76;
    MEMORY[0x2530AD570](v11, v76);
    sub_252CC4050(v77, v78, 0xD00000000000007CLL, v59 | 0x8000000000000000, 0xD000000000000012, v58 | 0x8000000000000000, 375);

    v49 = v64;
    v21 = v74;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v3 = __swift_project_value_buffer(v47, qword_27F544CB8);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v57 | 0x8000000000000000);
    MEMORY[0x2530AD570](v11, v48);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v62 | 0x8000000000000000);
    sub_252CC4050(v77, v78, 0xD000000000000075, v61 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);

    v5 = v66;
    v2 = v67;
    v50 = v49;
    v19 = v65;
LABEL_54:

    v11 = v63;
LABEL_55:
    v23 = &off_279711000;
    if (v21 == v50)
    {
      sub_252929F10(v11, 0);
      return 1;
    }
  }

  v45 = 0;
  v19 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v19)
    {
      v3 = MEMORY[0x2530ADF00](v45, v2);
      v5 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v45 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v3 = *(v2 + 8 * v45 + 32);

      v5 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    sub_252E36744();

    if (v78)
    {
      if (v77 == v11 && v78 == v76)
      {

        goto LABEL_45;
      }

      v46 = sub_252E37DB4();

      if (v46)
      {
        break;
      }
    }

    ++v45;
    if (v5 == v44)
    {
      goto LABEL_39;
    }
  }

LABEL_45:

  v51 = sub_252BF8258();
  v5 = v66;
  v2 = v67;
  v50 = v64;
  v19 = v65;
  v21 = v74;
  if (!v51)
  {
LABEL_51:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v54 = sub_252E36AD4();
    v73 = __swift_project_value_buffer(v54, qword_27F544CB8);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, v56 | 0x8000000000000000);
    MEMORY[0x2530AD570](v11, v76);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v62 | 0x8000000000000000);
    sub_252CC4050(v77, v78, 0xD000000000000075, v61 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

    goto LABEL_54;
  }

  if (!*(v51 + 2))
  {

    goto LABEL_51;
  }

  v52 = v51;

  if (!*(v52 + 2))
  {
    __break(1u);
    return result;
  }

  v53 = *(v52 + 4);

  v11 = v63;
  if (v53 == 46)
  {
    goto LABEL_55;
  }

LABEL_68:
  v14 = v11;
  v15 = 0;
LABEL_69:
  sub_252929F10(v14, v15);
  return 0;
}

id sub_252966CB0(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_252956B94(__dst) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544DA8);
    sub_252CC4050(0xD000000000000050, 0x8000000252E6B640, 0xD000000000000093, 0x8000000252E6B6A0, 0xD000000000000018, 0x8000000252E68F80, 38);
    type metadata accessor for HomeAutomationError(0);
    sub_2529671A8();
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v6 = *&__dst[144];
    v32 = *&__dst[96];
    v33 = *&__dst[112];
    v34 = *&__dst[128];
    v28 = *&__dst[32];
    v29 = *&__dst[48];
    v31 = *&__dst[80];
    v30 = *&__dst[64];
    v27 = *&__dst[16];
    v26 = *__dst;
    memcpy(__src, &__dst[152], sizeof(__src));
    memcpy(v24, a2, sizeof(v24));
    sub_2529353AC(v24, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F80DC(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2529F80DC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 50;
    v22[6] = v32;
    v22[7] = v33;
    v22[8] = v34;
    v22[0] = v26;
    v22[1] = v27;
    v22[2] = v28;
    v22[3] = v29;
    v22[4] = v30;
    v22[5] = v31;
    *&v22[9] = v6;
    memcpy(&v22[9] + 8, __src, 0x160uLL);
    memcpy(v21, v22, 0x1F8uLL);
    sub_2529353AC(v22, v23);
    v9 = sub_252BADB6C();
    memcpy(v23, v21, sizeof(v23));
    sub_252935408(v23);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C70);
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v21[0] = 0xD000000000000014;
    *(&v21[0] + 1) = 0x8000000252E6B740;
    v11 = [v9 description];
    v12 = sub_252E36F34();
    v14 = v13;

    MEMORY[0x2530AD570](v12, v14);

    sub_252CC3D90(*&v21[0], *(&v21[0] + 1), 0xD000000000000093, 0x8000000252E6B6A0);

    v15 = [a1 filters];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for HomeFilter();
      v17 = sub_252E37264();
    }

    else
    {
      v17 = 0;
    }

    v18 = [a1 time];
    v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v5 setUserTask_];
    if (v17)
    {
      type metadata accessor for HomeFilter();
      v19 = sub_252E37254();
    }

    else
    {
      v19 = 0;
    }

    [v5 setFilters_];

    [v5 setTime_];
    v21[6] = v32;
    v21[7] = v33;
    v21[8] = v34;
    v21[2] = v28;
    v21[3] = v29;
    v21[4] = v30;
    v21[5] = v31;
    *&v21[9] = v6;
    v21[0] = v26;
    v21[1] = v27;
    memcpy(&v21[9] + 8, __src, 0x160uLL);
    sub_252935408(v21);
  }

  return v5;
}

unint64_t sub_2529671A8()
{
  result = qword_27F540430;
  if (!qword_27F540430)
  {
    v3 = type metadata accessor for HomeAutomationError(255);
    result = swift_getWitnessTable(byte_252E51C7C, v3, v0, v1);
    atomic_store(result, &qword_27F540430);
  }

  return result;
}

uint64_t Entity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_252E32E84();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - v9;
  v11 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_252950A0C();
  sub_252E37F74();
  if (v2)
  {
    type metadata accessor for Entity(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v8;
    v13 = v22;
    v29 = 0;
    sub_25296A654(&qword_27F540498, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_252E37C64();
    (*(v13 + 32))(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v7, v5);
    v28 = 1;
    sub_252950A60();
    sub_252E37C64();
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v25;
    v27 = 2;
    v14 = sub_252E37C04();
    v16 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v16 = v14;
    v16[1] = v17;
    v26 = 3;
    v18 = sub_252E37BA4();
    v20 = v19;
    (*(v12 + 8))(v10, v23);
    v21 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v21 = v18;
    v21[1] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v3;
}

uint64_t type metadata accessor for Entity(uint64_t a1)
{
  result = qword_2814B03C8;
  if (!qword_2814B03C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Entity.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2529676B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540668, &qword_252E3D228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252950A0C();
  sub_252E37F84();
  v12 = 0;
  sub_252E32E84();
  sub_25296A654(&qword_27F540670, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_252E37D54();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
    v10[15] = 1;
    sub_2529678F0();
    sub_252E37D54();
    v10[14] = 2;
    sub_252E37CF4();
    v10[13] = 3;
    sub_252E37C94();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2529678F0()
{
  result = qword_27F540678;
  if (!qword_27F540678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeEntityType, &type metadata for HomeEntityType, v0, v1);
    atomic_store(result, &qword_27F540678);
  }

  return result;
}

uint64_t sub_252967944(uint64_t a1)
{
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

  return sub_252E37044();
}

uint64_t sub_252967A0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a1 && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a2)
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4();
  }
}

uint64_t sub_252967A40(uint64_t a1)
{
  v13 = sub_252E32E24();
  v14 = v3;
  v12 = &v13;
  v4 = sub_2529ED970(sub_25296A69C, v11, a1);

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }

    v13 = v7;
    v14 = v8;
    MEMORY[0x28223BE20](v6);
    v10[2] = &v13;

    v5 = sub_2529ED970(sub_25296A724, v10, a1);
  }

  return v5 & 1;
}

uint64_t sub_252967B6C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D00);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6BA50);
    MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
    v18 = "s filters = true for ";
    v19 = 0xD000000000000016;
    goto LABEL_30;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
  v7 = *(*v2 + 192);
  while (2)
  {
    v22 = v5;
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v7(v9))
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        if (v22)
        {
          goto LABEL_20;
        }

        return 0;
      }
    }

    v11 = [v10 isExcludeFilter];
    sub_252956D08();
    v12 = sub_252E37674();
    if (v11)
    {
      v23 = v11;
      v13 = v12;
      v14 = sub_252E37694();

      if (v14)
      {
        return 0;
      }
    }

    else
    {
    }

    v5 = 1;
    if (v6 != v4)
    {
      continue;
    }

    break;
  }

LABEL_20:
  if (qword_27F53F4C8 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D00);
  sub_252E379F4();
  v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v16 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v24 = v17;
  v25 = v16;
  v18 = " is not contained in ";
  v19 = 0xD000000000000010;
LABEL_30:
  MEMORY[0x2530AD570](v19, v18 | 0x8000000000000000);
  sub_252CC3D90(v24, v25, 0xD00000000000006CLL, 0x8000000252E6B9A0);

  return 1;
}

uint64_t sub_252967EAC(void *a1)
{
  v2 = v1;
  v4 = [a1 entityIdentifiers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E37264();

    if (*(v6 + 16) && ((*(*v2 + 176))(v6) & 1) == 0)
    {
      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544D00);
      sub_252E379F4();
      v20 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v19 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v29 = v20;
      v31 = v19;
      MEMORY[0x2530AD570](1029990688, 0xE400000000000000);
      sub_252E32E84();
      sub_25296A654(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_252E37D94();
      MEMORY[0x2530AD570](v21);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6BA10);
      v22 = MEMORY[0x2530AD730](v6, MEMORY[0x277D837D0]);
      v24 = v23;

      MEMORY[0x2530AD570](v22, v24);
      goto LABEL_19;
    }
  }

  v7 = [a1 homeEntityName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_252E36F34();
    v11 = v10;

    if ((*(*v2 + 168))(v9, v11))
    {

      goto LABEL_8;
    }

    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D00);
    sub_252E379F4();
    v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v29 = v17;
    v31 = v16;
    MEMORY[0x2530AD570](0x20656D616E207327, 0xEF20746F6E207369);
    MEMORY[0x2530AD570](v9, v11);
LABEL_19:

    v25 = v29;
    v26 = v31;
LABEL_23:
    sub_252CC3D90(v25, v26, 0xD00000000000006CLL, 0x8000000252E6B9A0);

    return 0;
  }

LABEL_8:
  if ([a1 entityType])
  {
    v12 = [a1 entityType];
    if (v12 != *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {
      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544D00);
      v30 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v32 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](0x20746F6E20736920, 0xEA00000000002061);
      v28 = sub_252BEBD04([a1 entityType]);
      MEMORY[0x2530AD570](v28);

      v25 = v30;
      v26 = v32;
      goto LABEL_23;
    }
  }

  v13 = *(*v2 + 200);

  return v13(a1);
}

uint64_t sub_252968368()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
  if (v2 <= 3)
  {
LABEL_16:
    if (v2 == 1)
    {
LABEL_46:
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v22.n128_f64[0] = HomeFilter.Builder.init()();
      v24 = (*(*v23 + 632))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v22);
      goto LABEL_133;
    }

    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_47;
      }

      v10 = type metadata accessor for HomeStore(0);
      v11 = static HomeStore.shared.getter(v10);
      v5 = sub_2529D9884();

      if (v5 >> 62)
      {
        v12 = sub_252E378C4();
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_21:
          v13 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x2530ADF00](v13, v5);
              v15 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_119;
              }

              v14 = *(v5 + 8 * v13 + 32);

              v15 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }
            }

            if (sub_252E32E54())
            {
              break;
            }

            ++v13;
            if (v15 == v12)
            {
              goto LABEL_130;
            }
          }

          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v78 = v77;
          v79 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v80 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v61 = (*(*v78 + 680))(v79, v80);

          v62 = sub_2529A2E84();
          if (v62)
          {
            v81 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
LABEL_109:
            v94 = v62 + v81;
            v74 = *v94;
            v76 = *(v94 + 8);
            goto LABEL_110;
          }

          goto LABEL_111;
        }
      }

LABEL_130:

      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v105.n128_f64[0] = HomeFilter.Builder.init()();
      v24 = (*(*v106 + 680))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v105);
      goto LABEL_133;
    }

LABEL_72:
    v39 = type metadata accessor for HomeStore(0);
    v40 = static HomeStore.shared.getter(v39);
    v5 = sub_2529D984C();

    if (v5 >> 62)
    {
      v41 = sub_252E378C4();
      if (v41)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v41 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_74:
        v42 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x2530ADF00](v42, v5);
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v42 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_120;
            }

            v43 = *(v5 + 8 * v42 + 32);

            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }
          }

          if (sub_252E32E54())
          {
            break;
          }

          ++v42;
          if (v44 == v41)
          {
            goto LABEL_132;
          }
        }

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v83 = v82;
        v84 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v85 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v55 = (*(*v83 + 648))(v84, v85);
LABEL_106:
        v86 = v55;

        v87 = (*(*v86 + 632))(0, 0);

        goto LABEL_114;
      }
    }

LABEL_132:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v107.n128_f64[0] = HomeFilter.Builder.init()();
    v24 = (*(*v108 + 648))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v107);
    goto LABEL_133;
  }

  if (v2 > 5)
  {
LABEL_31:
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        v16 = type metadata accessor for HomeStore(0);
        v17 = static HomeStore.shared.getter(v16);
        v5 = sub_2529D9D50();

        if (v5 >> 62)
        {
          v18 = sub_252E378C4();
        }

        else
        {
          v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v18)
        {
          v19 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v5);
              v21 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v19 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v20 = *(v5 + 8 * v19 + 32);

              v21 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }
            }

            if (sub_252E32E54())
            {
              break;
            }

            ++v19;
            if (v21 == v18)
            {
              goto LABEL_84;
            }
          }

          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v70 = v69;
          v71 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v72 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v73 = (*(*v70 + 576))(v71, v72);

          v61 = (*(*v73 + 592))(7);

          v68 = [*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          goto LABEL_101;
        }

LABEL_84:

        v46 = static HomeStore.shared.getter(v45);
        v47 = sub_2529D9D50();
        v5 = sub_2529D70E4(v47);

        if (v5 >> 62)
        {
          v48 = sub_252E378C4();
          if (v48)
          {
LABEL_86:
            v49 = 0;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v31 = MEMORY[0x2530ADF00](v49, v5);
                v50 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  goto LABEL_95;
                }
              }

              else
              {
                if (v49 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_121;
                }

                v31 = *(v5 + 8 * v49 + 32);

                v50 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
LABEL_95:
                  __break(1u);
LABEL_96:

                  type metadata accessor for HomeFilter.Builder();
                  swift_allocObject();
                  HomeFilter.Builder.init()();
                  v52 = v51;
                  v53 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v54 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

                  v55 = (*(*v52 + 680))(v53, v54);
                  goto LABEL_106;
                }
              }

              if (sub_252E32E54())
              {
                break;
              }

              ++v49;
              if (v50 == v48)
              {
                goto LABEL_135;
              }
            }

            type metadata accessor for HomeFilter.Builder();
            swift_allocObject();
            HomeFilter.Builder.init()();
            v90 = v89;
            v91 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v92 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            v93 = (*(*v90 + 576))(v91, v92);

            v61 = (*(*v93 + 592))(7);

            sub_252CDB4B0();
            if (!v62)
            {
              goto LABEL_111;
            }

            goto LABEL_108;
          }
        }

        else
        {
          v48 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            goto LABEL_86;
          }
        }

LABEL_135:

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v110.n128_f64[0] = HomeFilter.Builder.init()();
        v112 = (*(*v111 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v110);

        v101 = (*(*v112 + 592))(7);
        goto LABEL_136;
      }

LABEL_47:
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v25.n128_f64[0] = HomeFilter.Builder.init()();
      v24 = (*(*v26 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v25);
      goto LABEL_133;
    }

LABEL_60:
    v33 = type metadata accessor for HomeStore(0);
    v34 = static HomeStore.shared.getter(v33);
    v5 = sub_2529DA8AC();

    if (v5 >> 62)
    {
      v35 = sub_252E378C4();
      if (v35)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_62:
        v36 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x2530ADF00](v36, v5);
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v36 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_116;
            }

            v37 = *(v5 + 8 * v36 + 32);

            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }
          }

          if (sub_252E32E54())
          {
            break;
          }

          ++v36;
          if (v38 == v35)
          {
            goto LABEL_125;
          }
        }

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v57 = v56;
        v58 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v59 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v60 = (*(*v57 + 576))(v58, v59);

        v61 = (*(*v60 + 592))(6);

        v62 = sub_252BEAC3C();
        if (v62)
        {
LABEL_108:
          v81 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
          goto LABEL_109;
        }

LABEL_111:
        v74 = 0;
        goto LABEL_112;
      }
    }

LABEL_125:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v98.n128_f64[0] = HomeFilter.Builder.init()();
    v100 = (*(*v99 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v98);

    v101 = (*(*v100 + 592))(6);
LABEL_136:
    v109 = v101;
    goto LABEL_137;
  }

  if (v2 == 4)
  {
    v27 = type metadata accessor for HomeStore(0);
    v28 = static HomeStore.shared.getter(v27);
    v5 = sub_2529D9D18();

    if (v5 >> 62)
    {
      goto LABEL_122;
    }

    v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      while (1)
      {
        v30 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x2530ADF00](v30, v5);
          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_54:

          if (sub_252E32E54())
          {
            goto LABEL_96;
          }

          ++v30;
          if (v32 == v29)
          {
            goto LABEL_123;
          }
        }

        if (v30 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

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
        v29 = sub_252E378C4();
        if (!v29)
        {
          goto LABEL_123;
        }
      }

      v31 = *(v5 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

LABEL_123:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v96.n128_f64[0] = HomeFilter.Builder.init()();
    v24 = (*(*v97 + 664))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v96);
LABEL_133:
    v109 = v24;
LABEL_137:

    v95 = (*(*v109 + 760))(v113);
    goto LABEL_138;
  }

  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = sub_2529DA828();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_127;
  }

  v6 = sub_252E378C4();
  if (!v6)
  {
LABEL_127:

    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v102.n128_f64[0] = HomeFilter.Builder.init()();
    v104 = (*(*v103 + 576))(*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v102);

    v101 = (*(*v104 + 592))(5);
    goto LABEL_136;
  }

LABEL_6:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    if (sub_252E32E54())
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_127;
    }
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v64 = v63;
  v65 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v66 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v67 = (*(*v64 + 576))(v65, v66);

  v61 = (*(*v67 + 592))(5);

  v68 = [*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
LABEL_101:
  v74 = v68;
  if (!v74)
  {
LABEL_112:
    v76 = 0;
    goto LABEL_113;
  }

  type metadata accessor for Home(0);
  swift_allocObject();
  v75 = sub_2529E65BC(v74);
  v74 = *(v75 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v76 = *(v75 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
LABEL_110:

LABEL_113:
  v87 = (*(*v61 + 632))(v74, v76);

LABEL_114:
  v95 = (*(*v87 + 760))(v88);

LABEL_138:

  return v95;
}

uint64_t sub_252969660()
{
  sub_252E37EC4();
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252969738()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529697FC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_2529698AC(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_25296996C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25296A608(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25296999C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000252E66720;
  }

  if (*v1)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_252969A1C()
{
  v1 = 0x696669746E656469;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x7954797469746E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252969A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25296A608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252969ACC(uint64_t a1)
{
  v2 = sub_252950A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252969B08(uint64_t a1)
{
  v2 = sub_252950A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252969B44()
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](0);
  return sub_252E37F14();
}

uint64_t sub_252969B88(uint64_t a1)
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](0);
  return sub_252E37F14();
}

uint64_t Entity.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Entity.init(from:)(a1);
  return v2;
}

uint64_t _s22HomeAutomationInternal6EntityC4nameSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

  return v1;
}

uint64_t Entity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_252969D2C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252969DF8(uint64_t a1)
{
  v2 = *v1;
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

  return sub_252E37044();
}

uint64_t sub_252969EB8(uint64_t a1)
{
  sub_252E37EC4();
  v2 = *v1;
  sub_252E32E84();
  sub_25296A654(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252969F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_252E32E54() & 1) == 0 || *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  return sub_252E37DB4();
}

uint64_t sub_25296A080@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_252E32E54() & 1) == 0 || *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  return sub_252E37DB4();
}

uint64_t sub_25296A1D4(uint64_t a1)
{
  result = sub_252E32E84();
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

uint64_t getEnumTagSinglePayload for DeltaRoleSemantic(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeltaRoleSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25296A504()
{
  result = qword_27F540690;
  if (!qword_27F540690)
  {
    result = swift_getWitnessTable(asc_252E3D44C, &type metadata for EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540690);
  }

  return result;
}

unint64_t sub_25296A55C()
{
  result = qword_27F540698;
  if (!qword_27F540698)
  {
    result = swift_getWitnessTable(byte_252E3D384, &type metadata for EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540698);
  }

  return result;
}

unint64_t sub_25296A5B4()
{
  result = qword_27F5406A0;
  if (!qword_27F5406A0)
  {
    result = swift_getWitnessTable(asc_252E3D3AC, &type metadata for EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5406A0);
  }

  return result;
}

unint64_t sub_25296A608(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25296A654(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25296A6D0()
{
  result = qword_27F5406A8;
  if (!qword_27F5406A8)
  {
    result = swift_getWitnessTable(byte_252E3D524, &type metadata for EntityCodableError, v0, v1);
    atomic_store(result, &qword_27F5406A8);
  }

  return result;
}

HomeAutomationInternal::RestrictedGuestCheckFlow::RestrictedGuestCheckFlowExitValue_optional __swiftcall RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue.rawValue.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD00000000000002DLL;
  v4 = 0xD00000000000002FLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25296A860(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_25296A950@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "assistantIdentifier";
  v5 = "proceedAsNonRestrictedUser";
  v6 = 0xD00000000000002DLL;
  v7 = "estrictedGuestUserDueToRemote";
  v8 = 0xD00000000000002FLL;
  result = 0xD00000000000001CLL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001CLL;
    v7 = "estrictedGuestUserDueToSchedule";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "ueToNoTargetedHome";
  if (v3 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v10 = "unableToProceedAtAll";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000022;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_25296AA00@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DC0);
  BYTE8(v5) = 0;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6BAA0);
  *&v5 = *(v1 + 528);
  sub_252E37AE4();
  sub_252CC3D90(*(&v5 + 1), 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  *a1 = *(v1 + 528);
  return result;
}

uint64_t sub_25296AB2C(void *__src, void *a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DC0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v14 = 0xD000000000000016;
  v15 = 0x8000000252E6BD50;
  memcpy(v13, __src, sizeof(v13));
  v7 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(v14, v15, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000013;
  v13[1] = 0x8000000252E6BD70;
  v8 = [a2 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC3D90(v13[0], v13[1], 0xD00000000000007FLL, 0x8000000252E6BAD0);

  memcpy((v3 + 16), __dst, 0x1F8uLL);
  *(v3 + 520) = a2;
  *(v3 + 528) = 1;
  return v3;
}

uint64_t sub_25296AD24()
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544DC0);
  sub_252E34104();
  sub_25296BF38(&qword_27F5406B0, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
  v1 = sub_252E37D94();
  MEMORY[0x2530AD570](v1);

  sub_252CC3D90(0x203A7475706E69, 0xE700000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  return 1;
}

uint64_t sub_25296AE4C(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DC0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E6BB50, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  type metadata accessor for RestrictedGuestCheckFlow();
  sub_25296BF38(&qword_27F5406B8, v3, type metadata accessor for RestrictedGuestCheckFlow, protocol conformance descriptor for RestrictedGuestCheckFlow);
  return sub_252E33614();
}

uint64_t sub_25296AF60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E36AD4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25296B02C, 0, 0);
}

uint64_t sub_25296B02C()
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(v0[9], qword_27F544DC0);
  sub_252CC3D90(0x2065747563657865, 0xED0000636E797361, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 288), (v0 + 2));

  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = (*(v5 + 168))(v4, v5);
  v7 = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v6 & 1) == 0)
  {
    v9 = v0[8];
    v10 = "execute deferred to async";
    v11 = 0xD000000000000018;
    goto LABEL_7;
  }

  v8 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0(v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = " is within access schedule";
    v11 = 0xD00000000000004ALL;
LABEL_7:
    sub_252CC3D90(v11, v10 | 0x8000000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v9 + 528) = 2;
LABEL_8:
    sub_252E33B24();
LABEL_9:

    v12 = v0[1];

    return v12();
  }

  v14 = *(v9 + 520);
  v15 = sub_25296BF80(v14);
  v0[13] = v15;

  if (!v15)
  {
    v39 = v0[8];
    sub_252CC3D90(0xD000000000000018, 0x8000000252E6BB90, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v39 + 528) = 0;
    goto LABEL_8;
  }

  v16 = v0[10];
  v54 = v0[9];
  v55 = v0[12];
  v17 = [v15 currentUser];
  v0[14] = v17;
  v18 = [v15 homeAccessControlForUser_];
  v0[15] = v18;
  v19 = [v15 description];
  v56 = v15;
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  sub_252CC3D90(0x203A656D6F68, 0xE600000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v53 = v17;
  v23 = [v17 description];
  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  sub_252CC3D90(0x203A72657375, 0xE600000000000000, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  sub_252E379F4();

  v27 = [v18 description];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  sub_252CC3D90(0x6F43737365636361, 0xEF203A6C6F72746ELL, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v31 = v18;
  v32 = [v18 isRestrictedGuest];
  v52 = *(v16 + 16);
  v52(v55, v1, v54);
  sub_252E379F4();

  if (v32)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v33, v34);

  sub_252CC3D90(0xD000000000000013, 0x8000000252E6BBB0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  v35 = *(v16 + 8);
  v35(v55, v54);
  if ((v32 & 1) == 0)
  {
    *(v0[8] + 528) = 2;
    sub_252E33B24();

    goto LABEL_25;
  }

  v36 = [v56 homeLocationStatus];
  sub_252E379F4();

  if (v36 <= 1)
  {
    if (v36 == 1)
    {
      v37 = 0xE600000000000000;
      v38 = 0x656D6F487461;
      goto LABEL_31;
    }

LABEL_29:
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    goto LABEL_31;
  }

  if (v36 != 2)
  {
    if (v36 == 3)
    {
      v37 = 0xEA0000000000656DLL;
      v38 = 0x6F4879627261656ELL;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v37 = 0xE400000000000000;
  v38 = 2036430689;
LABEL_31:
  MEMORY[0x2530AD570](v38, v37);

  sub_252CC3D90(0xD000000000000014, 0x8000000252E6BBD0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

  if ((v36 | 2) != 2)
  {
    v43 = v0[11];
    v44 = v0[9];
    v45 = v31;
    v46 = [v31 isRestrictedGuestInAllowedPeriod];
    v52(v43, v1, v44);
    sub_252E379F4();

    if (v46)
    {
      v47 = 1702195828;
    }

    else
    {
      v47 = 0x65736C6166;
    }

    v48 = v35;
    if (v46)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v47, v49);

    sub_252CC3D90(0xD000000000000022, 0x8000000252E6BBF0, 0xD00000000000007FLL, 0x8000000252E6BAD0);

    v48(v43, v44);
    v50 = v0[8];
    if ((v46 & 1) == 0)
    {
      *(v50 + 528) = 4;
      v51 = swift_task_alloc();
      v0[17] = v51;
      *v51 = v0;
      v51[1] = sub_25296BA28;
      v41 = v0[7];
      v42 = v56;
      goto LABEL_33;
    }

    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E6BC20, 0xD00000000000007FLL, 0x8000000252E6BAD0);
    *(v50 + 528) = 5;
    sub_252E33B24();

LABEL_25:
    goto LABEL_9;
  }

  *(v0[8] + 528) = 3;
  v40 = swift_task_alloc();
  v0[16] = v40;
  *v40 = v0;
  v40[1] = sub_25296B8B0;
  v41 = v0[7];
  v42 = v56;
LABEL_33:

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingResponse(forHome:)(v41, v42);
}

uint64_t sub_25296B8B0()
{

  return MEMORY[0x2822009F8](sub_25296B9AC, 0, 0);
}

uint64_t sub_25296B9AC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25296BA28()
{

  return MEMORY[0x2822009F8](sub_25296C3F4, 0, 0);
}

uint64_t RestrictedGuestCheckFlow.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return v0;
}

uint64_t RestrictedGuestCheckFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_25296BBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25296BC70;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_25296BC70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25296BD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DC0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E6BB50, 0xD00000000000007FLL, 0x8000000252E6BAD0);
  type metadata accessor for RestrictedGuestCheckFlow();
  return sub_252E33614();
}

uint64_t sub_25296BE54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_25296AF60(a1);
}

uint64_t sub_25296BF38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

id sub_25296BF80(void *a1)
{
  v1 = [a1 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v4 = sub_252DD5A58(v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_252C758E0(v4);

  v6 = sub_252DD6238(v5);

  if (!v6)
  {
    v7 = type metadata accessor for HomeStore(0);
    v8 = static HomeStore.shared.getter(v7);
    v6 = sub_2529D9114();

    if (!v6)
    {
      v10 = static HomeStore.shared.getter(v9);
      v6 = sub_2529F1BFC();

      if (!v6)
      {
        return 0;
      }
    }
  }

  v11 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v11;
}

unint64_t sub_25296C0A8()
{
  result = qword_27F5406C0;
  if (!qword_27F5406C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue, &type metadata for RestrictedGuestCheckFlow.RestrictedGuestCheckFlowExitValue, v0, v1);
    atomic_store(result, &qword_27F5406C0);
  }

  return result;
}

uint64_t dispatch thunk of RestrictedGuestCheckFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for HomeAppEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAppEntityType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25296C3F8()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_25296C454(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_25296C49C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25296C514(uint64_t a1, uint64_t a2)
{
  v4 = sub_25296D814();
  v5 = sub_25296D868();
  v6 = sub_25296D8BC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t sub_25296C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v41[1] = a1;
  v6 = sub_252E34AB4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406E0, &qword_252E3D778);
  MEMORY[0x28223BE20](v8 - 8);
  v41[0] = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540598, &unk_252E3D780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v41 - v14;
  v42 = sub_252E349A4();
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v48 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25296D240(a3, v15);
  v18 = *(a4 + 16);
  if (v18)
  {
    v19 = (a4 + 32);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v19++;
      v22 = sub_252A9AD58(v21);
      v24 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2529F7A80(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v26 >= v25 >> 1)
      {
        v20 = sub_2529F7A80((v25 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v26 + 1;
      v27 = &v20[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      --v18;
    }

    while (v18);
  }

  v28 = sub_252E34984();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = sub_252E34914();
  (*(*(v29 - 8) + 56))(v41[0], 1, 1, v29);
  v30 = v48;
  sub_252E34954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540240, &unk_252E3C070);
  v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252E3C290;
  v33 = v42;
  (*(v16 + 16))(v32 + v31, v30, v42);

  v34 = v44;
  sub_252E34A94();
  v35 = v47;
  swift_beginAccess();
  v36 = *(v35 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 16) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_2529F823C(0, v36[2] + 1, 1, v36);
    *(v35 + 16) = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_2529F823C((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  (*(v45 + 32))(v36 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39, v34, v46);
  *(v35 + 16) = v36;
  swift_endAccess();
  return (*(v16 + 8))(v48, v33);
}

uint64_t sub_25296CB00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v20[2] = a3;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v20 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *MEMORY[0x277D5E5C8];
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *v21;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = sub_252E34604();
      v16 = v15;
      *v7 = v11;
      v7[1] = v12;
      v17 = sub_252E34944();
      v18 = *(v17 - 8);
      (*(v18 + 104))(v7, v9, v17);
      (*(v18 + 56))(v7, 0, 1, v17);

      sub_25296C588(v14, v16, v7, MEMORY[0x277D84F90]);

      sub_25296D1D8(v7);
      v10 += 2;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_25296CCC4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406C8, "&}\a");
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v27 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406D0, "&}\a");
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27 - v4;
  v5 = sub_252E34C44();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406D8, &qword_252E3D770);
  swift_allocObject();
  sub_252E345F4();
  v14 = sub_252E34604();
  v16 = v15;
  sub_252E34924();
  v17 = *MEMORY[0x277D5E5D8];
  v18 = sub_252E34944();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v13, v17, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  sub_25296C588(v14, v16, v13, MEMORY[0x277D84F90]);

  sub_25296D1D8(v13);
  swift_beginAccess();

  sub_252B4F270(v20);

  sub_252E34C34();
  v21 = v28;
  sub_252E34C04();
  v32[3] = v5;
  v32[4] = MEMORY[0x277D5E728];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(v6 + 16))(boxed_opaque_existential_0, v21, v5);
  v23 = sub_252E35844();
  (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  v24 = sub_252E34CA4();
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  sub_252E358A4();
  v25 = *(v6 + 8);
  v25(v21, v5);
  return (v25)(v10, v5);
}

uint64_t sub_25296D174()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25296D1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25296D240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25296D2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    if (qword_27F53F7A0 != -1)
    {
      swift_once();
    }

    v7 = *MEMORY[0x277D5E5D8];
    do
    {
      ++v6;
      v8 = sub_252E34604();
      v10 = v9;
      sub_252E34924();
      v11 = sub_252E34944();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v4, v7, v11);
      (*(v12 + 56))(v4, 0, 1, v11);
      sub_25296C588(v8, v10, v4, MEMORY[0x277D84F90]);

      sub_25296D1D8(v4);
      --v5;
    }

    while (v5);
  }

  return v14[1];
}

uint64_t sub_25296D4D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    if (qword_27F53F810 != -1)
    {
      swift_once();
    }

    v9 = *MEMORY[0x277D5E5D8];
    do
    {
      v10 = *v8++;
      v11 = sub_252E34604();
      v13 = v12;
      v17[15] = v10;
      AccessoryTypeSemantic.rawValue.getter();
      sub_252E34924();
      v14 = sub_252E34944();
      v15 = *(v14 - 8);
      (*(v15 + 104))(v6, v9, v14);
      (*(v15 + 56))(v6, 0, 1, v14);
      sub_25296C588(v11, v13, v6, MEMORY[0x277D84F90]);

      sub_25296D1D8(v6);
      --v7;
    }

    while (v7);
  }

  return v2;
}

unint64_t sub_25296D6A8()
{
  result = qword_27F5406E8;
  if (!qword_27F5406E8)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F5406E8);
  }

  return result;
}

unint64_t sub_25296D700()
{
  result = qword_27F5406F0;
  if (!qword_27F5406F0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5406F8, &qword_252E3D7D8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5406F0);
  }

  return result;
}

unint64_t sub_25296D768()
{
  result = qword_27F540700;
  if (!qword_27F540700)
  {
    result = swift_getWitnessTable(asc_252E3D7A8, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F540700);
  }

  return result;
}

unint64_t sub_25296D7C0()
{
  result = qword_27F540708;
  if (!qword_27F540708)
  {
    result = swift_getWitnessTable(byte_252E3D8B8, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F540708);
  }

  return result;
}

unint64_t sub_25296D814()
{
  result = qword_27F540710;
  if (!qword_27F540710)
  {
    result = swift_getWitnessTable(byte_252E3D818, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F540710);
  }

  return result;
}

unint64_t sub_25296D868()
{
  result = qword_27F540718;
  if (!qword_27F540718)
  {
    result = swift_getWitnessTable(byte_252E3D7E0, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F540718);
  }

  return result;
}

unint64_t sub_25296D8BC()
{
  result = qword_27F540720;
  if (!qword_27F540720)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for MediaPlayerReformedVerb, v0, v1);
    atomic_store(result, &qword_27F540720);
  }

  return result;
}

uint64_t sub_25296D934(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 28 || (sub_25296DA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_25296DD0C(a1, 55);
}

uint64_t sub_25296D9E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChineseGetPM25Handler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_25296DA1C()
{
  v0 = sub_252E32EE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E32F04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v12 + 16), v21);

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_252E33844();
  sub_252E32EF4();
  (*(v5 + 8))(v7, v4);
  sub_252E32ED4();
  (*(v1 + 8))(v3, v0);
  v13 = sub_252E32EB4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_25296E4D4(v11);
    v15 = 0;
  }

  else
  {
    v16 = sub_252E32EA4();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v21[0] = v16;
    v21[1] = v18;
    v20[1] = 20035;
    v20[2] = 0xE200000000000000;
    sub_252947DBC();
    v15 = sub_252E377C4();
  }

  return v15 & 1;
}

uint64_t sub_25296DD0C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = [a1 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v9 = sub_252E36F04();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = v10;
  [v11 setTaskType_];
  [v11 setAttribute_];
  [v11 setValue_];

  v12 = HomeStore.accessories(matching:supporting:)(v7, v11);
  v14 = v13;

  if (v14)
  {
    if (qword_27F53F488 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_6;
  }

  if (v12 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_25:
    sub_252929F10(v12, 0);
    return 0;
  }

  v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_9:

  v17 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v17, v12);
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_28;
    }

LABEL_16:
    v19 = [a1 filters];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for HomeFilter();
      v21 = sub_252E37264();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = a2;
    v23 = sub_252D51310(v21);

    v24 = sub_252C75958(v23);

    v25 = sub_252D51460(inited);
    swift_setDeallocating();
    v26 = sub_252C75958(v25);

    v27 = sub_2529F9A94(v26, v24);

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = sub_252E378C4();
    }

    else
    {
      v28 = *(v27 + 16);
    }

    if (v28)
    {
      sub_252929F10(v12, 0);
      sub_252929F10(v12, 0);
      return 1;
    }

    ++v17;
    if (v18 == v16)
    {
      sub_252929F10(v12, 0);
      goto LABEL_25;
    }
  }

  if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_6:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544C40);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E6BEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6BE60, 0xD00000000000002ALL, 0x8000000252E6BF20, 34);
  sub_252929F10(v12, 1);

  return 0;
}

id sub_25296E16C(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v6[3] = 55;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v7, v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6BE20);
  if (v6)
  {
    v8 = v6[3];
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v19 = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(v20, v21, 0xD00000000000008ELL, 0x8000000252E6BE60);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v10 = sub_252D6CB58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 time];
  v15 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v15 setUserTask_];
  if (v13)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37254();
  }

  else
  {
    v16 = 0;
  }

  [v15 setFilters_];

  [v15 setTime_];

  return v15;
}

uint64_t sub_25296E4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25296E5EC()
{
  result = qword_27F540738;
  if (!qword_27F540738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeEntityType, &type metadata for HomeEntityType, v0, v1);
    atomic_store(result, &qword_27F540738);
  }

  return result;
}

uint64_t sub_25296E640()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
  v9 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v9 || unk_2864A0BF0 == v9)
  {
  }

  else
  {
    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + 32))
  {
    return 0;
  }

  v13 = *(v1 + 24);
  sub_252956C1C(v1 + v8, v7);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v7, 1, v14) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    goto LABEL_12;
  }

  v29 = v13;
  sub_252E36304();
  (*(v15 + 8))(v7, v14);
  v17 = sub_252E36FA4();
  v19 = v18;

  if (v17 == 0x737569736C6563 && v19 == 0xE700000000000000)
  {
LABEL_25:

    goto LABEL_26;
  }

  v21 = sub_252E37DB4();

  if ((v21 & 1) == 0)
  {
LABEL_12:
    sub_252956C1C(v1 + v8, v5);
    if (v16(v5, 1, v14) == 1)
    {
      sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      goto LABEL_26;
    }

    sub_252E36304();
    (*(v15 + 8))(v5, v14);
    v22 = sub_252E36FA4();
    v24 = v23;

    if (v22 != 99 || v24 != 0xE100000000000000)
    {
      sub_252E37DB4();

      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  sub_252E360C4();
  swift_allocObject();
  sub_252E360B4();
  sub_252E36194();

  sub_252E36184();

  v12 = sub_252E36174();

  swift_beginAccess();
  v26 = *(v1 + 16);
  if (v26)
  {
    v27 = v26;
    sub_252E36144();
  }

  return v12;
}

uint64_t sub_25296EAA8(void *a1)
{
  v3 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v3 || unk_2864A0BF0 == v3)
  {
  }

  else
  {
    v5 = sub_252E37DB4();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = (v1 + *a1);
  if (v6[8] == 1)
  {
    return 0;
  }

  return *v6;
}

uint64_t sub_25296EBC4@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  if (sub_25296E640())
  {
    sub_252E360D4();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v21 = *(v12 + 32);
      v21(v20, v10, v11);
      v22 = v32;
      v21(v32, v20, v11);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  if (sub_25296F030())
  {
    sub_252E361C4();

    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      v23 = *(v12 + 32);
      v23(v18, v8, v11);
      v22 = v32;
      v23(v32, v18, v11);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  if (sub_25296F198())
  {
    sub_252E36284();

    if ((*(v12 + 48))(v5, 1, v11) != 1)
    {
      v24 = *(v12 + 32);
      v24(v15, v5, v11);
      v22 = v32;
      v24(v32, v15, v11);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v12 + 56))(v5, 1, 1, v11);
  }

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (*(v1 + 32))
  {
    v25 = 1;
    v22 = v32;
    return (*(v12 + 56))(v22, v25, 1, v11);
  }

  v27 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D839F8];
  *(v28 + 16) = xmmword_252E3C290;
  v30 = MEMORY[0x277D83A80];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  *(v28 + 32) = v27;
  sub_252E36F64();
  v22 = v32;
  sub_252E37024();

LABEL_13:
  v25 = 0;
  return (*(v12 + 56))(v22, v25, 1, v11);
}

uint64_t sub_25296F030()
{
  v1 = v0;
  if (sub_25296F310() == 1)
  {
  }

  else
  {
    v2 = sub_252E37DB4();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  sub_252E361B4();
  swift_allocObject();
  sub_252E361A4();
  sub_252E36134();

  v3 = sub_252E36124();

  swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4;

    sub_252E360F4();
  }

  return v3;
}

uint64_t sub_25296F198()
{
  v1 = v0;
  v2 = sub_252A47810(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  v3 = qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2;
  if (v3 || v2 != 5)
  {
    v4 = sub_252E37DB4();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  sub_252E36274();
  swift_allocObject();
  sub_252E36264();
  sub_252E36254();

  v5 = sub_252E36244();

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v6;
    sub_252E36234();
  }

  return v5;
}

uint64_t sub_25296F310()
{
  result = sub_252A47810(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == result || unk_2864A0BF0 == result)
  {
    return 0;
  }

  if (result != 1)
  {
    if (result == 5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_25296F370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
  v11 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v11 || unk_2864A0BF0 == v11)
  {

    goto LABEL_8;
  }

  v14 = sub_252E37DB4();

  if (v14)
  {
LABEL_8:
    if (*(v2 + 32))
    {
      goto LABEL_9;
    }

    v17 = *(v2 + 24);
    if ((~*&v17 & 0x7FF0000000000000) != 0)
    {
      if (v17 > -9.22337204e18)
      {
        if (v17 < 9.22337204e18)
        {
          v39 = *(v2 + 24);
          v40 = v17;
          v38 = sub_252E37D94();
          v19 = v18;
          sub_252956C1C(v2 + v10, v9);
          v20 = sub_252E36324();
          v21 = *(v20 - 8);
          v22 = *(v21 + 48);
          if (v22(v9, 1, v20) == 1)
          {
            sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            v36[1] = v19;
            v37 = a1;
            sub_252E36304();
            (*(v21 + 8))(v9, v20);
            v23 = sub_252E36FA4();
            v25 = v24;

            if (v23 == 0x737569736C6563 && v25 == 0xE700000000000000)
            {

              a1 = v37;
LABEL_31:
              v32 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
              v33 = swift_allocObject();
              v34 = MEMORY[0x277D839F8];
              *(v33 + 16) = xmmword_252E3C290;
              v35 = MEMORY[0x277D83A80];
              *(v33 + 56) = v34;
              *(v33 + 64) = v35;
              *(v33 + 32) = v32;
              sub_252E36F64();
              goto LABEL_32;
            }

            v27 = sub_252E37DB4();

            a1 = v37;
            if (v27)
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          sub_252956C1C(v2 + v10, v7);
          if (v22(v7, 1, v20) == 1)
          {
            sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
LABEL_32:
            sub_252E37024();

            return (*(v21 + 56))(a1, 0, 1, v20);
          }

          sub_252E36304();
          (*(v21 + 8))(v7, v20);
          v28 = sub_252E36FA4();
          v30 = v29;

          if (v28 == 99 && v30 == 0xE100000000000000)
          {
          }

          else
          {
            v31 = sub_252E37DB4();

            if ((v31 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_30;
        }

LABEL_36:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_9:
  v15 = sub_252E36324();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, 1, 1, v15);
}

uint64_t *HomeAutomationAbstractMeasurement.__allocating_init(value:unit:targetIsBelowMinimumTargetTemperatureThreshold:targetIsAboveMaximumTargetTemperatureThreshold:targetIsBelowMinimumHeatingThreshold:targetIsAboveMaximumCoolingThreshold:minimumTargetTemperature:maximumTargetTemperature:minimumHeatingTemperature:maximumCoolingTemperature:requestType:)(uint64_t a1, char a2, uint64_t a3, char a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  v48 = a6;
  v46 = a5;
  v56 = a18;
  v55 = a14;
  v54 = a13;
  v52 = a12;
  v53 = a8;
  v51 = a11;
  v49 = a10;
  v50 = a7;
  v47 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v45[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v45[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v45[-v28];
  type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  swift_allocObject();
  v30 = sub_252D857C4();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2 & 1;
  if (a4)
  {
    v31 = sub_252E36324();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = v56;
    v33 = v55;
    v34 = v54;
  }

  else
  {
    v32 = v56;
    v33 = v55;
    v34 = v54;
    sub_252E37024();

    v35 = sub_252E36324();
    (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
  }

  sub_2529439A0(v29, v27);
  v36 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252956C98(v27, v30 + v36);
  swift_endAccess();
  *(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = v46 & 1;
  *(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = v48 & 1;
  *(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = v50 & 1;
  *(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = v53 & 1;
  v37 = v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v37 = v47;
  *(v37 + 8) = v49 & 1;
  v38 = v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v38 = v51;
  *(v38 + 8) = v52 & 1;
  v39 = v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v39 = v34;
  *(v39 + 8) = v33 & 1;
  v40 = v30 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v40 = a15;
  *(v40 + 8) = a16 & 1;
  if (v32)
  {
    sub_252E37024();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = sub_252E36324();
  (*(*(v42 - 8) + 56))(v24, v41, 1, v42);
  sub_2529439A0(v24, v27);
  v43 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252956C98(v27, v30 + v43);
  swift_endAccess();
  type metadata accessor for HomeAutomationAbstractMeasurement(0);
  swift_allocObject();
  return sub_252D859B8(v30);
}

unint64_t HomeAutomationAbstractMeasurement.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v34 = 0xD000000000000022;
  v35 = 0x8000000252E6BF50;
  v32 = 0x203A65756C6176;
  v33 = 0xE700000000000000;
  if (sub_25296E640())
  {
    v5 = sub_252E36164();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  v30 = v5;
  v31 = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
  v8 = sub_252E36F94();
  MEMORY[0x2530AD570](v8);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0x203A74696E75202CLL;
  v33 = 0xE800000000000000;
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v4);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E6BF80);
  v10 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) == 0;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  v29[0] = v4;
  v29[1] = v2;
  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E6BFC0);
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v13, v14);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD00000000000001CLL;
  v33 = 0x8000000252E6C000;
  v15 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature + 8);
  v30 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature);
  v31 = v15;
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD00000000000001CLL;
  v33 = 0x8000000252E6C020;
  v17 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature + 8);
  v30 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature);
  v31 = v17;
  v18 = sub_252E36F94();
  MEMORY[0x2530AD570](v18);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD000000000000028;
  v33 = 0x8000000252E6C040;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD000000000000028;
  v33 = 0x8000000252E6C070;
  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v22);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD00000000000001DLL;
  v33 = 0x8000000252E6C0A0;
  v23 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature + 8);
  v30 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature);
  v31 = v23;
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD00000000000001DLL;
  v33 = 0x8000000252E6C0C0;
  v25 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature + 8);
  v30 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature);
  v31 = v25;
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0x736575716572202CLL;
  v33 = 0xEF203A6570795474;
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v29[0]);
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v32, v33);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v34;
}

uint64_t HomeAutomationAbstractMeasurement.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  if (sub_25296E640())
  {

    sub_252E36154();
    v8 = sub_252E36324();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*(v9 + 8))(v7, v8);
      sub_252E37EE4();
      sub_252E37044();
    }

    v12 = sub_252E36164();
  }

  else
  {
    if (!sub_25296F030())
    {
      if (*(v1 + 32) == 1)
      {
        return sub_252E37EE4();
      }

      v18 = *(v1 + 24);
      sub_252E37EE4();
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      return MEMORY[0x2530AE3C0](v19);
    }

    sub_252E36104();
    v10 = sub_252E36324();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*(v11 + 8))(v5, v10);
      sub_252E37EE4();
      sub_252E37044();
    }

    v12 = sub_252E36114();
  }

  v15 = v12;
  v16 = v13;

  if (v16)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x2530AE3C0](v17);
  }
}

uint64_t HomeAutomationAbstractMeasurement.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationAbstractMeasurement.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_2529707B4()
{
  sub_252E37EC4();
  HomeAutomationAbstractMeasurement.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_25297081C(uint64_t a1)
{
  sub_252E37EC4();
  HomeAutomationAbstractMeasurement.hash(into:)(v2);
  return sub_252E37F14();
}

uint64_t _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  MEMORY[0x28223BE20](v4);
  v61 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v8 = MEMORY[0x28223BE20](v7);
  v62 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v58[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v60 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v63 = &v58[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v58[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v58[-v26];
  if (sub_25296E640())
  {
    v28 = sub_25296E640();
    if (v28)
    {
      v29 = v28;

      sub_252E36154();

      v63 = v29;
      sub_252E36154();
      v30 = *(v7 + 48);
      sub_252956C1C(v27, v11);
      sub_252956C1C(v25, &v11[v30]);
      v31 = v64;
      v32 = *(v65 + 48);
      if (v32(v11, 1, v64) == 1)
      {
        sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
        if (v32(&v11[v30], 1, v31) == 1)
        {
          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
LABEL_24:
          v44 = COERCE_DOUBLE(sub_252E36164());
          v46 = v45;
          v47 = COERCE_DOUBLE(sub_252E36164());
          v49 = v48;

LABEL_27:

          v38 = v46 & v49;
          if ((v46 & 1) == 0 && (v49 & 1) == 0)
          {
            v38 = v44 == v47;
          }

          return v38 & 1;
        }

        goto LABEL_14;
      }

      sub_252956C1C(v11, v22);
      if (v32(&v11[v30], 1, v31) == 1)
      {
        sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
        (*(v65 + 8))(v22, v31);
LABEL_14:
        sub_25293847C(v11, &qword_27F540758, &unk_252E4D160);
        goto LABEL_22;
      }

      v40 = v65;
      v41 = &v11[v30];
      v42 = v61;
      (*(v65 + 32))(v61, v41, v31);
      sub_252971108(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      LODWORD(v62) = sub_252E36EF4();
      v43 = *(v40 + 8);
      v43(v42, v31);
      sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
      v43(v22, v31);
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      if (v62)
      {
        goto LABEL_24;
      }

LABEL_22:

      v38 = 0;
      return v38 & 1;
    }
  }

  if (sub_25296F030())
  {
    if (sub_25296F030())
    {

      v33 = v63;
      sub_252E36104();

      sub_252E36104();
      v34 = *(v7 + 48);
      v35 = v62;
      sub_252956C1C(v33, v62);
      sub_252956C1C(v17, v35 + v34);
      v36 = v64;
      v37 = *(v65 + 48);
      if (v37(v35, 1, v64) == 1)
      {
        sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v33, &qword_27F540298, &unk_252E3C270);
        if (v37(v35 + v34, 1, v36) == 1)
        {
          sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
          goto LABEL_26;
        }
      }

      else
      {
        v39 = v60;
        sub_252956C1C(v35, v60);
        if (v37(v35 + v34, 1, v36) != 1)
        {
          v50 = v39;
          v51 = v65;
          v52 = v35 + v34;
          v53 = v61;
          (*(v65 + 32))(v61, v52, v36);
          sub_252971108(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v59 = sub_252E36EF4();
          v54 = *(v51 + 8);
          v54(v53, v36);
          sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
          sub_25293847C(v63, &qword_27F540298, &unk_252E3C270);
          v54(v50, v36);
          sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
          if ((v59 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_26:
          v44 = COERCE_DOUBLE(sub_252E36114());
          v46 = v55;
          v47 = COERCE_DOUBLE(sub_252E36114());
          v49 = v56;

          goto LABEL_27;
        }

        sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v63, &qword_27F540298, &unk_252E3C270);
        (*(v65 + 8))(v39, v36);
      }

      sub_25293847C(v35, &qword_27F540758, &unk_252E4D160);
      goto LABEL_22;
    }
  }

  v38 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    v38 = (*(a1 + 24) == *(a2 + 24)) & ~v38;
  }

  return v38 & 1;
}

uint64_t sub_252971108(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25297116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0x6F70736552776F6CLL && a2 == 0xEC0000007365736ELL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E90;
    v8 = 0;
    v9 = 1;
    v10 = 0x403F000000000000;
LABEL_7:
    v11 = 0;
LABEL_8:
    v12 = sub_252AD1B74(v7, v8, v9, v10, v11);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationHumidityResponses();
    a3[3] = result;
    *a3 = v12;
    return result;
  }

  if (a1 == 0x65526C616D726F6ELL && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E91;
    v8 = 0x403F000000000000;
    v9 = 0;
    v10 = 0x4049800000000000;
    goto LABEL_7;
  }

  if (a1 == 0x7073655268676968 && a2 == 0xED00007365736E6FLL || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F542E92;
    v8 = 0x4049800000000000;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t sub_252971350(void *a1)
{
  swift_allocObject();
  sub_252929E74(a1, v5);
  sub_252929E74(v5, v4);
  v2 = sub_252C87A18(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

uint64_t sub_252971424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_252E33DB4();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529714E8, 0, 0);
}

uint64_t sub_2529714E8()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  sub_252E34044();
  v4 = sub_252E33DA4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_252E34034();
  *(v0 + 336) = v7;
  v8 = sub_252E34024();
  *(v0 + 344) = v8;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v4, v6);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E6C4E0, 0xD000000000000096, 0x8000000252E6C510);

  if (v4 == 0x6B73615472657375 && v6 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    v10 = *(v0 + 304);
    sub_252929E74(v10 + 24, v0 + 136);
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v11);
    v13 = *(v10 + 104);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v8;
    v15 = *(v12 + 80);
    v16 = v7;
    v17 = v8;
    v15(v13, sub_252974EE4, v14, v11, v12);

    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_40:

    v18 = *(v0 + 8);
    goto LABEL_41;
  }

  if ((v4 != 0x737265746C6966 || v6 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    type metadata accessor for HomeAutomationError(0);
    sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v26 = v4;
    v26[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v18 = *(v0 + 8);
LABEL_41:

    return v18();
  }

  sub_252974E7C(*(v0 + 288), v0 + 176);
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 288);

    sub_252974E7C(v19, v0 + 208);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = *(v0 + 272);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_25;
  }

  v20 = [v8 filters];
  if (!v20)
  {
LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v22 = v20;
  v23 = sub_252E37264();

  if (v23 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_17:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x2530ADF00](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v23 + 32);
  }

  v21 = v25;

LABEL_25:
  *(v0 + 352) = v21;
  v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v20);
  sub_252929E74((v27 + 288), v0 + 16);

  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v28);
  v30 = (*(v29 + 120))(v28, v29);
  v31 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v30 & 1) == 0)
  {
    v53 = v21;
    if (v21 && [v21 entityType] == 5)
    {
      v44 = 5;
    }

    else
    {
      v44 = sub_252A6D5D4(v21);
    }

    v45 = *(v0 + 304);
    sub_252929E74(v45 + 24, v0 + 56);
    v47 = *(v0 + 80);
    v46 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v47);
    v48 = *(v45 + 104);
    v49 = swift_allocObject();
    v49[2] = v7;
    v49[3] = v8;
    v49[4] = v44;
    v50 = *(v46 + 80);
    v51 = v7;
    v52 = v8;
    v50(v48, sub_252974ED8, v49, v47, v46);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    goto LABEL_40;
  }

  v32 = sub_252B680FC(v31);
  swift_beginAccess();
  v33 = v8;
  MEMORY[0x2530AD700]();
  if (*((*(v32 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v34 = [v33 userTask];
  *(v0 + 128) = v21;
  v54 = MEMORY[0x277D84F90];
  v35 = v21;
  if (v21)
  {
    v36 = v35;
    MEMORY[0x2530AD700]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v37 = *(v0 + 304);
  sub_25293847C(v0 + 128, &qword_27F5407A0, &unk_252E3DC50);
  v38 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  *(v0 + 360) = v38;
  v39 = v38;
  [v39 setUserTask_];
  v40 = sub_252E37254();

  [v39 setFilters_];

  [v39 setTime_];
  v41 = *(v37 + 104);
  v42 = swift_task_alloc();
  *(v0 + 368) = v42;
  *v42 = v0;
  v42[1] = sub_252971D40;
  v43 = *(v0 + 280);

  return sub_252C80F04(v43, v39, v41);
}

uint64_t sub_252971D40()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_252971ED4;
  }

  else
  {

    v3 = sub_252971E5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252971E5C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252971ED4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);

  v4 = *(v0 + 8);

  return v4();
}

void sub_252971F58(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  sub_252AA9CA8(a2, v8, a3, a4);
}

uint64_t sub_252972004()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_252972078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821BA198](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252972174()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(sub_252B680FC(v2) + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v13);
  (*(v1 + 8))(v4, v0);
  memcpy(v14, v13, sizeof(v14));
  memcpy(v15, v13, sizeof(v15));
  if (sub_252956B94(v15) != 1)
  {
    v8 = BYTE1(v15[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_252E379F4();

    v13[0] = 0xD000000000000026;
    v13[1] = 0x8000000252E6C420;
    v12[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(v13[0], v13[1], 0xD000000000000094, 0x8000000252E6C260);

    if (v8 == 3)
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_20;
    }

    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
LABEL_12:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v8 == 3)
      {
        sub_252E33A04();
        return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
      }
    }

    if (v8 == 2)
    {
      sub_252E339E4();
      return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
    }

LABEL_20:
    sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD000000000000094, 0x8000000252E6C260);
    sub_252E339F4();
    return sub_25293847C(v14, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000026;
  v13[1] = 0x8000000252E6C3F0;
  v6 = sub_252E340C4();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(v13[0], v13[1], 0xD000000000000094, 0x8000000252E6C260);

  return sub_252E33A04();
}

uint64_t sub_252972624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529726E8(a1, a2, a3);
}

uint64_t sub_2529726E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[414] = a3;
  v3[413] = a2;
  v3[412] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v3[415] = swift_task_alloc();
  v4 = sub_252E34164();
  v3[416] = v4;
  v3[417] = *(v4 - 8);
  v3[418] = swift_task_alloc();
  v5 = sub_252E33DB4();
  v3[419] = v5;
  v3[420] = *(v5 - 8);
  v3[421] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252972844, 0, 0);
}

uint64_t sub_252972844()
{
  v73 = v0;
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v4 = sub_252E34024();
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_252E34034();
  v9 = sub_252B680FC(v8);
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_8:

    goto LABEL_10;
  }

  memcpy((v0 + 16), (v10 + 504 * v11 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  sub_252B680FC(v12);
  v13 = sub_252B63488();

  if (v13)
  {
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v72, (v0 + 16), 0x1F8uLL);
    v14 = sub_252E1EBE8(v72);

    v15 = *(v14 + 416);
    *(v0 + 3040) = *(v14 + 400);
    *(v0 + 3056) = v15;
    v16 = *(v14 + 432);
    v17 = *(v14 + 448);
    v18 = *(v14 + 464);
    *(v0 + 3120) = *(v14 + 480);
    *(v0 + 3104) = v18;
    v19 = MEMORY[0x277D84F90];
    *(v0 + 3072) = v16;
    *(v0 + 3088) = v17;
    *(v14 + 400) = v19;
    *(v14 + 408) = v19;
    *(v14 + 416) = v19;
    *(v14 + 424) = v19;
    *(v14 + 432) = v19;
    *(v14 + 440) = v19;
    *(v14 + 448) = v19;
    *(v14 + 456) = v19;
    *(v14 + 464) = v19;
    *(v14 + 472) = v19;
    *(v14 + 480) = v19;
    sub_252937BEC(v0 + 3040);
    *(v14 + 384) = v19;

    sub_252E1E4F8(v72);

    v20 = memcpy((v0 + 2032), v72, 0x1F8uLL);
    v21 = sub_252B680FC(v20);
    swift_beginAccess();
    v22 = *(v21 + 16);
    sub_2529353AC(v0 + 2032, v0 + 2536);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2529F7FB0(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7FB0((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    memcpy(&v22[504 * v25 + 32], (v0 + 2032), 0x1F8uLL);
    *(v21 + 16) = v22;
    swift_endAccess();
    sub_252935408(v0 + 2032);
    sub_252935408(v0 + 16);
    goto LABEL_8;
  }

  sub_252935408(v0 + 16);
LABEL_10:
  v26 = *(v0 + 3344);
  v27 = *(v0 + 3336);
  v28 = *(v0 + 3328);
  sub_252E340E4();
  sub_252AB3FEC(v26, 0, v72);
  (*(v27 + 8))(v26, v28);
  memcpy((v0 + 1528), v72, 0x1F8uLL);
  memcpy((v0 + 1024), v72, 0x1F8uLL);
  if (sub_252956B94((v0 + 1024)) == 1)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 3344);
    v30 = *(v0 + 3320);
    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544DA8);
    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v32 = sub_252AD2138(v29);
    MEMORY[0x2530AD570](v32);

    sub_252CC4050(v72[0], v72[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 59);

    v33 = sub_252E33DE4();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    type metadata accessor for ControlHomeIntent();
    sub_252E33F44();

LABEL_37:

    v55 = *(v0 + 8);
    goto LABEL_48;
  }

  if (v5 == 0x6B73615472657375 && v7 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v34 = v4;

    v35 = [v8 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeUserTask();
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 3288);
      ControlHomeIntent.withUpdated(task:)(v36);

LABEL_28:
      v46 = *(v0 + 1033);
      if ((v46 - 2) >= 2)
      {
        v51 = *(v0 + 3320);
        if (*(v0 + 1033))
        {
          v52 = *MEMORY[0x277D5BED0];
        }

        else
        {
          *(sub_252B680FC(v37) + 76) = 1;

          v52 = *MEMORY[0x277D5BED8];
        }

        v53 = sub_252E33DE4();
        v54 = *(v53 - 8);
        (*(v54 + 104))(v51, v52, v53);
        (*(v54 + 56))(v51, 0, 1, v53);
        type metadata accessor for ControlHomeIntent();
      }

      else
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v47 = *(v0 + 3320);
        v48 = sub_252E36AD4();
        __swift_project_value_buffer(v48, qword_27F544DA8);
        v72[0] = 0;
        v72[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E6C360);
        *(v0 + 3376) = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
        v49 = sub_252E36F94();
        MEMORY[0x2530AD570](v49);

        sub_252CC4050(v72[0], v72[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 101);

        v50 = sub_252E33DE4();
        (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
        type metadata accessor for ControlHomeIntent();
      }

      sub_252E33F44();

      sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
      goto LABEL_37;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544DA8);
    v39 = "ve been ingnored: ";
    v40 = 0xD000000000000026;
    goto LABEL_46;
  }

  if (v5 == 0x737265746C6966 && v7 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v41 = v4;

    v42 = [v8 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeFilter();
    if (swift_dynamicCast())
    {
      v43 = *(v0 + 3280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_252E3C130;
      *(v44 + 32) = v43;
      v45 = v43;
      sub_252DE1F7C(v44);

      swift_setDeallocating();
      swift_arrayDestroy();
LABEL_27:
      v37 = swift_deallocClassInstance();
      goto LABEL_28;
    }
  }

  else
  {
    if ((v5 != 0x6174616D6F747561 || v7 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
    {
      type metadata accessor for HomeAutomationError(0);
      sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
      swift_allocError();
      *v71 = v5;
      v67 = v71 + 1;
      v68 = v4;
      goto LABEL_47;
    }

    v56 = v4;

    v57 = [v8 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeFilter();
    if (swift_dynamicCast())
    {
      v58 = *(v0 + 3272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_252E3C130;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      HomeFilter.Builder.init()();
      v61 = *(*v60 + 752);
      v62 = v58;
      v63 = v61(v58);

      v65 = (*(*v63 + 760))(v64);

      *(v59 + 32) = v65;
      sub_252DE1F7C(v59);

      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_27;
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v66 = sub_252E36AD4();
  __swift_project_value_buffer(v66, qword_27F544DA8);
  v39 = "nResponse(input:resolveRecord:)";
  v40 = 0xD000000000000024;
LABEL_46:
  sub_252CC3D90(v40, v39 | 0x8000000000000000, 0xD000000000000094, 0x8000000252E6C260);
  type metadata accessor for HomeAutomationError(0);
  sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
  swift_allocError();
  v7 = v8;
  v68 = v8;
LABEL_47:
  *v67 = v7;
  swift_storeEnumTagMultiPayload();
  v69 = v68;
  swift_willThrow();

  sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);

  v55 = *(v0 + 8);
LABEL_48:

  return v55();
}