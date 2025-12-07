uint64_t sub_257DF8054()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {

    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_257DF85B0;
  }

  else
  {

    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_257DF8184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_257DF8184(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 528);
  v4 = (*(v2 + 520) - 1) & *(v2 + 520);
  if (v4)
  {
    v5 = *(v2 + 512);
LABEL_7:
    *(v2 + 528) = v3;
    *(v2 + 520) = v4;
    v7 = *(v5 + 48);
    v8 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v9 = *(v7 + v8);
    *(v2 + 536) = v9;
    v10 = *(v7 + v8 + 8);
    *(v2 + 544) = v10;
    v11 = (*(v5 + 56) + v8);
    v12 = *v11;
    *(v2 + 552) = v11[1];

    sub_257ECC3F0();
    sub_257ECD4A0();

    sub_257C58BFC(v2 + 16, v2 + 112);
    v13 = sub_257ECDA20();
    v14 = sub_257ECFBD0();
    sub_257C58D88(v2 + 16);

    if (os_log_type_enabled(v13, v14))
    {
      v34 = v12;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v17 = *(v2 + 104);
      *(v2 + 424) = 0x746E65766520554FLL;
      *(v2 + 432) = 0xE900000000000020;
      *(v2 + 440) = v16;
      v18 = 0xD00000000000001DLL;
      v19 = "rContactWithObject";
      if (v17 == 2)
      {
        v18 = 0xD000000000000022;
        v19 = "activity.updated";
      }

      if (v17 <= 1)
      {
        v20 = 0xD000000000000022;
      }

      else
      {
        v20 = v18;
      }

      if (v17 <= 1)
      {
        v21 = "activity.updated";
      }

      else
      {
        v21 = v19;
      }

      v22 = *(v2 + 464);
      v32 = *(v2 + 456);
      v33 = *(v2 + 480);
      MEMORY[0x259C72150](v20, v21 | 0x8000000000000000);

      v23 = sub_257BF1FC8(*(v2 + 424), *(v2 + 432), (v2 + 440));

      *(v15 + 4) = v23;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_257BF1FC8(v9, v10, (v2 + 440));
      _os_log_impl(&dword_257BAC000, v13, v14, "Dispatching %s to %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v16, -1, -1);
      MEMORY[0x259C74820](v15, -1, -1);

      v24 = *(v22 + 8);
      v24(v33, v32);
      v12 = v34;
    }

    else
    {
      v25 = *(v2 + 480);
      v27 = *(v2 + 456);
      v26 = *(v2 + 464);

      v24 = *(v26 + 8);
      v24(v25, v27);
    }

    *(v2 + 560) = v24;
    v28 = *(v2 + 32);
    *(v2 + 208) = *(v2 + 16);
    *(v2 + 224) = v28;
    *(v2 + 281) = *(v2 + 89);
    v29 = *(v2 + 80);
    *(v2 + 256) = *(v2 + 64);
    *(v2 + 272) = v29;
    *(v2 + 240) = *(v2 + 48);
    v35 = (v12 + *v12);
    v30 = swift_task_alloc();
    *(v2 + 568) = v30;
    *v30 = v2;
    v30[1] = sub_257DF8054;

    v35();
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 512);
      if (v6 >= (((1 << *(v2 + 105)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v31 = *(v2 + 8);

    v31();
  }
}

uint64_t sub_257DF85B0()
{
  v25 = v0;

  sub_257ECD4A0();

  sub_257C58BFC(v0 + 16, v0 + 304);
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();

  sub_257C58D88(v0 + 16);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  if (v3)
  {
    v6 = *(v0 + 536);
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = sub_257BF1FC8(v6, v5, &v19);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = *(v0 + 64);
    v22 = *(v0 + 48);
    v23 = v12;
    v24[0] = *(v0 + 80);
    *(v24 + 9) = *(v0 + 89);
    v13 = *(v0 + 32);
    v20 = *(v0 + 16);
    v21 = v13;
    v14 = MAGOUEvent.description.getter();
    v16 = sub_257BF1FC8(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_257BAC000, v1, v2, "%s failed to handle %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v10, -1, -1);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  else
  {
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
  }

  v4(v7, v8);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t MAGOUEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BEA57C(MEMORY[0x277D84F90]);
  return v0;
}

double MAGOUEventHandler.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7CEC(&unk_257EEAF30, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  swift_endAccess();
  return result;
}

Swift::Void __swiftcall MAGOUEventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_257C03F6C(countAndFlagsBits, object);
  v6 = v5;

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C093E8();
    }

    sub_257C09E7C();
    *(v2 + 16) = v8;
  }

  swift_endAccess();
}

uint64_t MAGOUEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DF8A84(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257DF8B9C(uint64_t a1)
{
  v2 = sub_257ED0190();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_257DFC318(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_257DF8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ED0190();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_257DFC058(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Occupant(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_257DF8CFC(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_257ED01C0();
    v9 = v8;
    v10 = sub_257ED0250();
    v12 = v11;
    v13 = MEMORY[0x259C72D00](v7, v9, v10, v11);
    sub_257C58A64(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_257C58A64(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_257ED0190();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_257DFC100(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_257C58A64(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_257DF8E30(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_257DF8ED4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_257DF8F80(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_257DF9028(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x259C72E20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_257ED0210();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void Collection<>.findGroup(containing:from:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v49 = *(a1 + 16);
  v50 = *(a1 + 32);
  v51 = *(a1 + 48);
  v52 = *(a1 + 64);
  v9 = [*a1 type];
  if (!v9)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v9;
  v11 = sub_257ECF500();
  v13 = v12;
  if (v11 == sub_257ECF500() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_257ED0640();

  if (v16)
  {
LABEL_11:
    v53[0] = v8;
    v54 = v49;
    v55 = v50;
    v56 = v51;
    v57 = v52;
    sub_257DF9918(v53, a2, a4, a5);
    return;
  }

  v17 = [v8 type];
  if (!v17)
  {
    goto LABEL_33;
  }

  v10 = v17;
  v18 = sub_257ECF500();
  v20 = v19;
  if (v18 == sub_257ECF500() && v20 == v21)
  {
    goto LABEL_10;
  }

  v22 = sub_257ED0640();

  if (v22)
  {
    goto LABEL_11;
  }

  v23 = [v8 type];
  if (!v23)
  {
    goto LABEL_34;
  }

  v10 = v23;
  v24 = sub_257ECF500();
  v26 = v25;
  if (v24 == sub_257ECF500() && v26 == v27)
  {
    goto LABEL_10;
  }

  v28 = sub_257ED0640();

  if (v28)
  {
    goto LABEL_11;
  }

  v29 = [v8 type];
  if (!v29)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v10 = v29;
  v30 = sub_257ECF500();
  v32 = v31;
  if (v30 == sub_257ECF500() && v32 == v33)
  {
LABEL_10:

    goto LABEL_11;
  }

  v34 = sub_257ED0640();

  if (v34)
  {
    goto LABEL_11;
  }

  v35 = [v8 type];
  if (!v35)
  {
    goto LABEL_36;
  }

  v36 = v35;
  v37 = sub_257ECF500();
  v39 = v38;
  if (v37 == sub_257ECF500() && v39 == v40)
  {
    goto LABEL_24;
  }

  v41 = sub_257ED0640();

  if (v41)
  {
    goto LABEL_26;
  }

  v42 = [v8 type];
  if (!v42)
  {
    goto LABEL_37;
  }

  v36 = v42;
  v43 = sub_257ECF500();
  v45 = v44;
  if (v43 == sub_257ECF500() && v45 == v46)
  {
LABEL_24:

LABEL_26:
    v53[0] = v8;
    v54 = v49;
    v55 = v50;
    v56 = v51;
    v57 = v52;
    sub_257DF9D40(v53, a3, a4, a5);
    return;
  }

  v47 = sub_257ED0640();

  if (v47)
  {
    goto LABEL_26;
  }
}

id Dictionary<>.occupants(of:)(id *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578, &qword_257EDCCF8);
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15, v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for Occupant(0);
  v20 = *(v19 - 8);
  *&v25 = MEMORY[0x28223BE20](v19, v21, v22, v23, v24).n128_u64[0];
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 identifier];
  if (result)
  {
    v29 = result;
    sub_257ECCCD0();

    if (*(a2 + 16) && (v30 = sub_257C042F8(v11), (v31 & 1) != 0))
    {
      v32 = *(*(a2 + 56) + 8 * v30);
      v33 = *(v5 + 8);

      v33(v11, v4);
      sub_257DF8C18(v32, v18);

      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        sub_257C587D8(v18, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8, &unk_257EDB240);
        v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_257ED6D30;
        (*(v5 + 16))(v35 + v34, v27, v4);
        v36 = sub_257BF2F8C(v35);
        swift_setDeallocating();
        v33((v35 + v34), v4);
        swift_deallocClassInstance();
        sub_257CA8124(v27);
        return v36;
      }
    }

    else
    {
      (*(v5 + 8))(v11, v4);
      (*(v20 + 56))(v18, 1, 1, v19);
    }

    sub_257BE4084(v18, &qword_27F8F6578, &qword_257EDCCF8);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257DF98A4(char **a1, float32x4_t a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C67294(v3);
  }

  v4 = *(v3 + 2);
  v6[0] = (v3 + 32);
  v6[1] = v4;
  sub_257DFB0CC(v6, a2);
  *a1 = v3;
}

id sub_257DF9918(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v63 = &v50 - v30;
  v57 = *(a2 + 16);
  if (v57)
  {
    v53 = a3;
    v54 = a4;
    v55 = v4;
    v56 = v29;
    v50 = v16;
    v51 = v10;
    v52 = v9;
    v31 = 0;
    v58 = *a1;
    v59 = a2 + 32;
    v61 = v29 + 16;
    v32 = (v29 + 8);
    while (1)
    {
      v60 = v31;
      v33 = *(v59 + 8 * v31);

      result = [v58 identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v35 = result;
      sub_257ECCCD0();

      if (*(v33 + 16))
      {
        sub_257DFC36C(&qword_27F8F57B0, MEMORY[0x277CC9600]);
        v36 = sub_257ECF3F0();
        v37 = -1 << *(v33 + 32);
        v38 = v36 & ~v37;
        v62 = v33 + 56;
        if ((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          break;
        }
      }

LABEL_3:
      v31 = v60 + 1;

      (*v32)(v63, v17);
      if (v31 == v57)
      {
        return 0;
      }
    }

    v39 = ~v37;
    v40 = *(v56 + 72);
    v41 = *(v56 + 16);
    while (1)
    {
      v41(v23, *(v33 + 48) + v40 * v38, v17);
      sub_257DFC36C(&qword_27F8F57B8, MEMORY[0x277CC9610]);
      v42 = sub_257ECF450();
      v43 = *v32;
      (*v32)(v23, v17);
      if (v42)
      {
        break;
      }

      v38 = (v38 + 1) & v39;
      if (((*(v62 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v43(v63, v17);
    v44 = sub_257DFA794(v33, v53, v54);

    if (*(v44 + 16))
    {
      v45 = sub_257C56FFC(v44);

      return v45;
    }

    v46 = v50;
    sub_257ECD4A0();
    v47 = sub_257ECDA20();
    v48 = sub_257ECFBE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_257BAC000, v47, v48, "Warning: group of found objects is unexpectedly empty", v49, 2u);
      MEMORY[0x259C74820](v49, -1, -1);
    }

    (*(v51 + 8))(v46, v52);
  }

  return 0;
}

void sub_257DF9D40(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v106 = a3;
  v103 = sub_257ECDA30();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v6, v7, v8, v9);
  v101 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCCF0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  *&v121 = &v101 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v112 = &v101 - v30;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610, &unk_257EDCD60);
  MEMORY[0x28223BE20](v115, v31, v32, v33, v34);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v113 = &v101 - v42;
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v104 = &v101 - v48;
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v105 = &v101 - v54;
  v55 = *a1;
  v56 = a2 + 64;
  v57 = 1 << *(a2 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(a2 + 64);
  v60 = (v57 + 63) >> 6;
  *&v119 = v12 + 16;
  v114 = v12;
  *&v120 = v12 + 8;
  v116 = a2;

  v61 = 0;
  v109 = a2 + 64;
  v111 = v36;
  v110 = v55;
  for (i = v60; ; v60 = i)
  {
    if (!v59)
    {
      while (1)
      {
        v62 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v62 >= v60)
        {

          return;
        }

        v59 = *(v56 + 8 * v62);
        ++v61;
        if (v59)
        {
          v61 = v62;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_11:
    v63 = __clz(__rbit64(v59)) | (v61 << 6);
    v64 = v116;
    v65 = *(v116 + 48);
    *&v118 = *(v114 + 72);
    v66 = v113;
    v117 = *(v114 + 16);
    v117(v113, v65 + v118 * v63, v11);
    v67 = *(*(v64 + 56) + 8 * v63);
    v68 = v115;
    *(v66 + *(v115 + 48)) = v67;
    sub_257DFC400(v66, v36);
    v69 = *&v36[*(v68 + 48)];

    v70 = [v55 identifier];
    if (!v70)
    {
      goto LABEL_29;
    }

    v71 = v70;
    v72 = v112;
    sub_257ECCCD0();

    LOBYTE(v71) = sub_257ECCCC0();
    v73 = *v120;
    (*v120)(v72, v11);
    if (v71)
    {

      goto LABEL_22;
    }

    v74 = [v55 identifier];
    if (!v74)
    {
      goto LABEL_30;
    }

    v75 = v74;
    sub_257ECCCD0();

    if (*(v69 + 16))
    {
      sub_257DFC36C(&qword_27F8F57B0, MEMORY[0x277CC9600]);
      v76 = sub_257ECF3F0();
      v77 = -1 << *(v69 + 32);
      v78 = v76 & ~v77;
      if ((*(v69 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
      {
        break;
      }
    }

LABEL_5:
    v59 &= v59 - 1;
    v73(v121, v11);
    v36 = v111;
    sub_257BE4084(v111, &unk_27F8F6610, &unk_257EDCD60);
    v55 = v110;
    v56 = v109;
  }

  v79 = ~v77;
  while (1)
  {
    v117(v18, *(v69 + 48) + v78 * v118, v11);
    sub_257DFC36C(&qword_27F8F57B8, MEMORY[0x277CC9610]);
    v80 = sub_257ECF450();
    v73(v18, v11);
    if (v80)
    {
      break;
    }

    v78 = (v78 + 1) & v79;
    if (((*(v69 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v73(v121, v11);

  v36 = v111;
LABEL_22:
  v81 = v104;
  sub_257DFC400(v36, v104);
  v82 = v105;
  v83 = sub_257DFC400(v81, v105);
  MEMORY[0x28223BE20](v83, v84, v85, v86, v87);
  *(&v101 - 2) = v82;
  v88 = v107;
  v89 = v106;
  sub_257ECF750();
  v128 = v123;
  v129 = v124;
  v130 = v125;
  v131 = v126;
  v132 = v127;
  v90 = v123;
  if (v123)
  {
    v121 = v132;
    v120 = v131;
    v119 = v130;
    v118 = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60, &unk_257EDB290);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_257ED6D30;
    *(v91 + 32) = v90;
    v92 = v119;
    *(v91 + 48) = v118;
    *(v91 + 64) = v92;
    v93 = v121;
    *(v91 + 80) = v120;
    *(v91 + 96) = v93;
    v94 = *(v82 + *(v115 + 48));
    v95 = v90;
    v96 = sub_257DFA794(v94, v89, v88);
    v122 = v91;
    sub_257EB0DAC(v96);
    sub_257C56FFC(v122);

    sub_257BE4084(&v128, &qword_27F8F9C90, &unk_257EDCBD0);
    sub_257BE4084(v82, &unk_27F8F6610, &unk_257EDCD60);
  }

  else
  {
    v97 = v101;
    sub_257ECD4A0();
    v98 = sub_257ECDA20();
    v99 = sub_257ECFBE0();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_257BAC000, v98, v99, "Warning: could not find DetectedObject expected to match given ID", v100, 2u);
      MEMORY[0x259C74820](v100, -1, -1);
    }

    (*(v102 + 8))(v97, v103);
    sub_257BE4084(v82, &unk_27F8F6610, &unk_257EDCD60);
  }
}

void Collection<>.closest(to:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float32x4_t a7@<Q0>)
{
  v22 = a7;
  v10 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  (*(v12 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v10);
  v23 = sub_257ECF880();

  sub_257DF98A4(&v23, v22);

  if (v23[1].i64[0])
  {
    v13 = v23[2].i64[0];
    v14 = v23[3];
    v21 = v23[4];
    v22 = v14;
    v15 = v23[5];
    v19 = v23[6];
    v20 = v15;
    v16 = v13;

    v17 = v21;
    *(a6 + 16) = v22;
    *(a6 + 32) = v17;
    v18 = v19;
    *(a6 + 48) = v20;
    *(a6 + 64) = v18;
  }

  else
  {

    v16 = 0;
    *(a6 + 72) = 0;
    *(a6 + 56) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 8) = 0u;
  }

  *a6 = v16;
}

uint64_t sub_257DFA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = a3;
  v24 = v3;
  v15 = sub_257C83814(sub_257DFC3B0, v21, a1);
  if (*(v15 + 16) != *(a1 + 16))
  {
    sub_257ECD4A0();

    v16 = sub_257ECDA20();
    v17 = sub_257ECFBE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218496;
      v19 = *(a1 + 16);
      *(v18 + 4) = v19 - *(v15 + 16);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v19;

      *(v18 + 22) = 2048;
      *(v18 + 24) = *(v15 + 16);

      _os_log_impl(&dword_257BAC000, v16, v17, "Warning: %ld/%ld object IDs did not have a corresponding DetectedObject. Continuing with %ld found objects.", v18, 0x20u);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v14, v7);
  }

  return v15;
}

id sub_257DFA998(id *a1, uint64_t a2)
{
  v3 = sub_257ECCCF0();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 identifier];
  if (result)
  {
    v13 = result;
    sub_257ECCCD0();

    v14 = sub_257ECCCC0();
    (*(v4 + 8))(v11, v3);
    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Dictionary<>.occupants(of:)(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578, &qword_257EDCCF8);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v67 - v8;
  v75 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v75, v10, v11, v12, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v68 = &v67 - v21;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v71 = &v67 - v28;
  v29 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a1 + 56);
  v33 = (v30 + 63) >> 6;
  v81 = *MEMORY[0x277D36D38];
  v80 = *MEMORY[0x277D36D68];
  v73 = (v27 + 8);
  v67 = (v27 + 16);
  v69 = v27;
  v70 = (v27 + 32);
  v82 = a1;

  v34 = 0;
  v72 = MEMORY[0x277D84F90];
  v79 = xmmword_257ED9BD0;
  v77 = v33;
  v78 = a1 + 56;
  v74 = v9;
  while (v32)
  {
LABEL_12:
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v37 = *(*(v82 + 48) + 80 * (v36 | (v34 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8, &qword_257EDCD38);
    inited = swift_initStackObject();
    *(inited + 16) = v79;
    v40 = v80;
    v39 = v81;
    *(inited + 32) = v81;
    *(inited + 40) = v40;
    v41 = v37;
    v42 = v39;
    v43 = v40;
    v44 = [v41 type];
    v83 = v44;
    MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
    *(&v67 - 2) = &v83;
    LOBYTE(v37) = sub_257DF8E30(sub_257C5883C, (&v67 - 4), inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0, &qword_257EDCD40);
    swift_arrayDestroy();

    if (v37)
    {
      v49 = [v41 identifier];
      if (!v49)
      {
        goto LABEL_28;
      }

      v50 = v49;
      sub_257ECCCD0();

      v51 = v74;
      if (*(v76 + 16) && (v52 = sub_257C042F8(v15), (v53 & 1) != 0))
      {
        v54 = *(*(v76 + 56) + 8 * v52);
        v55 = *v73;

        v55(v15, v75);
        v56 = sub_257ED0190();
        v57 = 1;
        if (v56 != 1 << *(v54 + 32))
        {
          sub_257DFC058(v56, *(v54 + 36), v54, v51);
          v57 = 0;
        }

        v58 = type metadata accessor for Occupant(0);
        v59 = *(v58 - 8);
        (*(v59 + 56))(v51, v57, 1, v58);

        if ((*(v59 + 48))(v51, 1, v58) == 1)
        {
          sub_257BE4084(v51, &qword_27F8F6578, &qword_257EDCCF8);
        }

        else
        {
          v60 = v68;
          v61 = v75;
          (*v67)(v68, v51, v75);
          sub_257CA8124(v51);
          v62 = *v70;
          (*v70)(v71, v60, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_257BFD690(0, *(v72 + 2) + 1, 1, v72);
          }

          v64 = *(v72 + 2);
          v63 = *(v72 + 3);
          if (v64 >= v63 >> 1)
          {
            v72 = sub_257BFD690((v63 > 1), v64 + 1, 1, v72);
          }

          v65 = v71;
          v66 = v72;
          *(v72 + 2) = v64 + 1;
          v62(&v66[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v64], v65, v75);
        }
      }

      else
      {

        (*v73)(v15, v75);
      }
    }

    else
    {
    }

    v33 = v77;
    v29 = v78;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      sub_257C5714C(v72);

      return;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_257DFB0CC(uint64_t *a1, float32x4_t a2)
{
  v3 = a1[1];
  v4 = sub_257ED05F0();
  if (v4 < v3)
  {
    if (v3 >= -1)
    {
      v5 = v4;
      if (v3 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_257ECF850();
        *(v6 + 16) = v3 / 2;
      }

      v9[0] = v6 + 32;
      v9[1] = v3 / 2;
      v7 = v6;
      sub_257DFB374(v9, a2, v10, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_257DFB1D0(0, v3, 1, a1, a2);
  }
}

void sub_257DFB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3;
    v8 = a1 - a3;
LABEL_5:
    v9 = *(v6 + 80 * v5);
    v10 = v8;
    v31 = v7;
    while (1)
    {
      v11 = *(v7 - 80);
      v12 = v9;
      v13 = v11;
      sub_257E4FDE8(a5);
      v28 = v14;
      sub_257E4FDE8(a5);
      v29 = v15;

      v16 = vsubq_f32(v28, a5);
      v17 = vmulq_f32(v16, v16);
      v18 = vsubq_f32(v29, a5);
      v19 = vmulq_f32(v18, v18);
      *v17.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v17.i8, *v19.i8), vzip2_s32(*v17.i8, *v19.i8))));
      if ((vcgt_f32(vdup_lane_s32(*v17.i8, 1), *v17.i8).u32[0] & 1) == 0)
      {
LABEL_4:
        ++v5;
        v7 = v31 + 80;
        --v8;
        if (v5 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v7;
      v20 = *(v7 + 16);
      v21 = *(v7 + 32);
      v22 = *(v7 + 48);
      v23 = *(v7 + 64);
      v24 = *(v7 - 32);
      *(v7 + 32) = *(v7 - 48);
      *(v7 + 48) = v24;
      *(v7 + 64) = *(v7 - 16);
      v25 = *(v7 - 64);
      *v7 = *(v7 - 80);
      *(v7 + 16) = v25;
      *(v7 - 64) = v20;
      *(v7 - 48) = v21;
      *(v7 - 32) = v22;
      *(v7 - 16) = v23;
      *(v7 - 80) = v9;
      v7 -= 80;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_257DFB374(uint64_t *a1, float32x4_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v9 = sub_257C66E20(v9);
    }

    v110 = *(v9 + 16);
    if (v110 >= 2)
    {
      do
      {
        v111 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v110 - 1);
        v112 = *(v9 + 16 * v110);
        v113 = v9;
        v114 = *(v9 + 16 * (v110 - 1) + 32);
        v9 = *(v9 + 16 * (v110 - 1) + 40);
        sub_257DFBBE0((v111 + 80 * v112), (v111 + 80 * v114), (v111 + 80 * v9), v7, a2);
        if (v5)
        {
          break;
        }

        if (v9 < v112)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_257C66E20(v113);
        }

        if (v110 - 2 >= *(v113 + 2))
        {
          goto LABEL_118;
        }

        v115 = &v113[16 * v110];
        *v115 = v112;
        *(v115 + 1) = v9;
        sub_257C66D94(v6);
        v9 = v113;
        v110 = *(v113 + 2);
        v6 = a4;
      }

      while (v110 > 1);
    }

LABEL_102:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = *v6;
      v13 = *(*v6 + 80 * v8);
      v118 = v8;
      v14 = *(*v6 + 80 * v11);
      v15 = v13;
      sub_257E4FDE8(a2);
      v126 = v16;
      sub_257E4FDE8(a2);
      v132 = v17;

      v10 = v118;
      v18 = vsubq_f32(v126, a2);
      v19 = vmulq_f32(v18, v18);
      v20 = vsubq_f32(v132, a2);
      v21 = vmulq_f32(v20, v20);
      *v19.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v19.i8, *v21.i8), vzip2_s32(*v19.i8, *v21.i8))));
      v123 = vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8);
      v11 = v118 + 2;
      if (v118 + 2 < v7)
      {
        v22 = v12 + 80 * v118 + 112;
        while (1)
        {
          v23 = v11;
          v24 = *(v22 - 32);
          v25 = *(v22 + 48);
          v26 = v24;
          sub_257E4FDE8(a2);
          v127 = v27;
          sub_257E4FDE8(a2);
          v133 = v28;

          v29 = vsubq_f32(v127, a2);
          v30 = vmulq_f32(v29, v29);
          v31 = vsubq_f32(v133, a2);
          v32 = vmulq_f32(v31, v31);
          *v30.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v32.i8), vzip2_s32(*v30.i8, *v32.i8))));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(*v30.i8, 1), *v30.i8), v123)).u8[0] & 1) == 0)
          {
            break;
          }

          v11 = v23 + 1;
          v22 += 80;
          if (v7 == v23 + 1)
          {
            v11 = v7;
            goto LABEL_11;
          }
        }

        v11 = v23;
LABEL_11:
        v10 = v118;
      }

      if (v123.i8[0])
      {
        if (v11 < v10)
        {
          goto LABEL_121;
        }

        if (v10 < v11)
        {
          v7 = v10;
          v33 = v9;
          v34 = 80 * v11 - 80;
          v35 = 80 * v7 + 64;
          v36 = v11;
          do
          {
            if (v7 != --v36)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_127;
              }

              v37 = v39 + v34;
              v131 = *(v39 + v35 - 32);
              v134 = *(v39 + v35 - 48);
              v129 = *(v39 + v35);
              v130 = *(v39 + v35 - 16);
              v38 = *(v39 + v35 - 64);
              memmove((v39 + v35 - 64), (v39 + v34), 0x50uLL);
              *v37 = v38;
              *(v37 + 16) = v134;
              *(v37 + 32) = v131;
              *(v37 + 48) = v130;
              *(v37 + 64) = v129;
              v6 = a4;
            }

            ++v7;
            v34 -= 80;
            v35 += 80;
          }

          while (v7 < v36);
          v9 = v33;
          v10 = v118;
        }
      }
    }

    v40 = v6[1];
    if (v11 < v40)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_120;
      }

      if (v11 - v10 < a5)
      {
        break;
      }
    }

    v7 = 80;
LABEL_39:
    if (v11 < v10)
    {
      goto LABEL_119;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCB00(0, *(v9 + 16) + 1, 1, v9);
    }

    v64 = *(v9 + 16);
    v63 = *(v9 + 24);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v9 = sub_257BFCB00((v63 > 1), v64 + 1, 1, v9);
    }

    *(v9 + 16) = v65;
    v66 = v9 + 16 * v64;
    *(v66 + 32) = v10;
    *(v66 + 40) = v11;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v125 = v11;
    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v9 + 32);
          v70 = *(v9 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_59:
          if (v72)
          {
            goto LABEL_108;
          }

          v85 = (v9 + 16 * v65);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_111;
          }

          v91 = (v9 + 32 + 16 * v68);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_115;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v95 = (v9 + 16 * v65);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_73:
        if (v90)
        {
          goto LABEL_110;
        }

        v98 = v9 + 16 * v68;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_80:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v107 = *(v9 + 32 + 16 * v106);
        v108 = *(v9 + 32 + 16 * v68 + 8);
        sub_257DFBBE0((*v6 + 80 * v107), (*v6 + 80 * *(v9 + 32 + 16 * v68)), (*v6 + 80 * v108), v67, a2);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v108 < v107)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v106 >= *(v9 + 16))
        {
          goto LABEL_105;
        }

        v109 = v9 + 16 * v106;
        *(v109 + 32) = v107;
        *(v109 + 40) = v108;
        sub_257C66D94(v68);
        v65 = *(v9 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v9 + 32 + 16 * v65;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_106;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_107;
      }

      v80 = (v9 + 16 * v65);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_109;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_112;
      }

      if (v84 >= v76)
      {
        v102 = (v9 + 32 + 16 * v68);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_116;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v125;
    if (v125 >= v7)
    {
      goto LABEL_92;
    }
  }

  v7 = 80;
  if (__OFADD__(v10, a5))
  {
    goto LABEL_122;
  }

  if (v10 + a5 < v40)
  {
    v40 = v10 + a5;
  }

  if (v40 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v11 == v40)
  {
    goto LABEL_39;
  }

  v116 = v9;
  v41 = *v6;
  v42 = *v6 + 80 * v11;
  v119 = v10;
  v43 = v10 - v11;
  v121 = v40;
LABEL_32:
  v124 = v11;
  v44 = *(v41 + 80 * v11);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = *(v46 - 80);
    v48 = v44;
    v49 = v47;
    sub_257E4FDE8(a2);
    v128 = v50;
    sub_257E4FDE8(a2);
    v135 = v51;

    v52 = vsubq_f32(v128, a2);
    v53 = vmulq_f32(v52, v52);
    v54 = vsubq_f32(v135, a2);
    v55 = vmulq_f32(v54, v54);
    *v53.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v55, v55, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v55.i8), vzip2_s32(*v53.i8, *v55.i8))));
    if ((vcgt_f32(vdup_lane_s32(*v53.i8, 1), *v53.i8).u32[0] & 1) == 0)
    {
LABEL_31:
      v11 = v124 + 1;
      v42 += 80;
      --v43;
      v7 = 80;
      if (v124 + 1 != v121)
      {
        goto LABEL_32;
      }

      v11 = v121;
      v9 = v116;
      v6 = a4;
      v10 = v119;
      if (v121 < v119)
      {
        goto LABEL_119;
      }

      goto LABEL_40;
    }

    if (!v41)
    {
      break;
    }

    v44 = *v46;
    v56 = *(v46 + 16);
    v57 = *(v46 + 32);
    v58 = *(v46 + 48);
    v59 = *(v46 + 64);
    v60 = *(v46 - 32);
    *(v46 + 32) = *(v46 - 48);
    *(v46 + 48) = v60;
    *(v46 + 64) = *(v46 - 16);
    v61 = *(v46 - 64);
    *v46 = *(v46 - 80);
    *(v46 + 16) = v61;
    *(v46 - 64) = v56;
    *(v46 - 48) = v57;
    *(v46 - 32) = v58;
    *(v46 - 16) = v59;
    *(v46 - 80) = v44;
    v46 -= 80;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_257DFBBE0(void **__dst, id *__src, id *a3, void **a4, float32x4_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 80;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 80;
  if (v10 < v12)
  {
    if (a4 != __dst || &__dst[10 * v10] <= a4)
    {
      memmove(a4, __dst, 80 * v10);
    }

    v44 = &v5[10 * v10];
    if (v9 < 80)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_31;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      v15 = *v5;
      v16 = *v7;
      v17 = v15;
      sub_257E4FDE8(a5);
      v39 = v18;
      sub_257E4FDE8(a5);
      v41 = v19;

      v20 = vsubq_f32(v39, a5);
      v21 = vmulq_f32(v20, v20);
      v22 = vsubq_f32(v41, a5);
      v23 = vmulq_f32(v22, v22);
      *v21.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vadd_f32(vzip1_s32(*v21.i8, *v23.i8), vzip2_s32(*v21.i8, *v23.i8))));
      if (vcgt_f32(vdup_lane_s32(*v21.i8, 1), *v21.i8).u32[0])
      {
        break;
      }

      v13 = v5;
      v14 = v8 == v5;
      v5 += 10;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 10;
      if (v5 >= v44)
      {
        goto LABEL_6;
      }
    }

    v13 = v7;
    v14 = v8 == v7;
    v7 += 10;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v8, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[10 * v12] <= a4)
  {
    memmove(a4, __src, 80 * v12);
  }

  v44 = &v5[10 * v12];
  if (v11 >= 80 && v7 > v8)
  {
LABEL_20:
    __srca = v7 - 10;
    v6 -= 10;
    v24 = v44;
    do
    {
      v25 = *(v24 - 10);
      v24 -= 10;
      v26 = v6 + 10;
      v27 = *(v7 - 10);
      v28 = v25;
      v29 = v27;
      sub_257E4FDE8(a5);
      v40 = v30;
      sub_257E4FDE8(a5);
      v42 = v31;

      v32 = vsubq_f32(v40, a5);
      v33 = vmulq_f32(v32, v32);
      v34 = vsubq_f32(v42, a5);
      v35 = vmulq_f32(v34, v34);
      *v33.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v33.i8, *v35.i8), vzip2_s32(*v33.i8, *v35.i8))));
      if (vcgt_f32(vdup_lane_s32(*v33.i8, 1), *v33.i8).u32[0])
      {
        if (v26 != v7)
        {
          memmove(v6, __srca, 0x50uLL);
        }

        if (v44 <= v5 || (v7 -= 10, __srca <= v8))
        {
          v7 = __srca;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v26 != v44)
      {
        memmove(v6, v24, 0x50uLL);
      }

      v6 -= 10;
      v44 = v24;
    }

    while (v24 > v5);
    v44 = v24;
  }

LABEL_31:
  v36 = (v44 - v5) / 80;
  if (v7 != v5 || v7 >= &v5[10 * v36])
  {
    memmove(v7, v5, 80 * v36);
  }

  return 1;
}

uint64_t sub_257DFBFB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = (v2 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = sub_257ECF500();
    v7 = v6;
    if (v5 == sub_257ECF500() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_257ED0640();
    }
  }

  return v3 & 1;
}

uint64_t sub_257DFC058@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for Occupant(0) - 8) + 72) * result;

  return sub_257CA80C0(v6, a4);
}

void sub_257DFC100(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C72D40](a1, a2, v11);
      sub_257BD2C2C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_257BD2C2C(0, a5, a6);
    if (sub_257ED01F0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_257ED0200();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_257ECFF40();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_257ECFF50();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_257DFC318(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_257DFC36C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_257ECCCF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257DFC400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610, &unk_257EDCD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_257DFC4E4(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v40 = sub_257ECF120();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v2, v3, v4, v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68, &qword_257EEAFB0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16, v17, v18, v19);
  v21 = &v37 - v20;
  v22 = sub_257ECF130();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD52CC();
  (*(v23 + 104))(v29, *MEMORY[0x277D851B8], v22);
  v30 = sub_257ECFD90();
  (*(v23 + 8))(v29, v22);
  (*(v15 + 16))(v21, v37, v14);
  v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v38;
  (*(v15 + 32))(v32 + v31, v21, v14);
  aBlock[4] = sub_257DFD1C0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_55;
  v33 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECF150();
  v44 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  v35 = v39;
  v34 = v40;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v35, v33);
  _Block_release(v33);

  (*(v43 + 8))(v35, v34);
  (*(v41 + 8))(v13, v42);

  return result;
}

id sub_257DFC900(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v16[-v6];
  v8 = swift_projectBox();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    sub_257C1C614(v8, v7);
    v11 = sub_257ECCB70();
    v12 = *(v11 - 8);
    v13 = 0;
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      v13 = sub_257ECCAE0();
      (*(v12 + 8))(v7, v11);
    }

    sub_257BE9040(MEMORY[0x277D84F90]);
    v14 = sub_257ECF3C0();

    v15 = [v10 openSensitiveURL:v13 withOptions:v14];

    v16[7] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68, &qword_257EEAFB0);
    return sub_257ECF8D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DFCB40(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = sub_257ECC890();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DFCC48, 0, 0);
}

uint64_t sub_257DFCC48()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v1;
    sub_257EB69B8();
  }

  v3 = swift_allocBox();
  v5 = v4;
  sub_257ECCB60();
  sub_257ECC880();
  if ((".SavoyeLetPlainCC" & 0x2F00000000000000) == 0x2000000000000000)
  {
  }

  else
  {
    v18 = v3;
    v6 = v0[4];
    sub_257ECC870();
    MEMORY[0x259C6F380](7824750, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A60, &qword_257EEAFA8);
    sub_257ECC830();
    *(swift_allocObject() + 16) = xmmword_257ED9BD0;
    sub_257ECC820();

    sub_257ECC820();
    sub_257ECC840();
    sub_257ECC850();
    v7 = sub_257ECCB70();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    v10 = v9(v6, 1, v7);
    v12 = v0[4];
    v11 = v0[5];
    if (v10 == 1)
    {
      sub_257ECCB60();
      v13 = v9(v12, 1, v7);
      v14 = v5;
      if (v13 != 1)
      {
        sub_257C1C684(v0[4]);
        v14 = v5;
      }
    }

    else
    {
      (*(v8 + 32))(v0[5], v0[4], v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      v14 = v5;
    }

    sub_257CB4B80(v0[5], v14);
    v3 = v18;
  }

  v0[9] = v3;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_257DFD014;
  v16 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0xD000000000000021, 0x8000000257F06910, sub_257DFD1B8, v3, v16);
}

uint64_t sub_257DFD014()
{

  return MEMORY[0x2822009F8](sub_257DFD110, 0, 0);
}

uint64_t sub_257DFD110()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_257DFD1C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68, &qword_257EEAFB0);
  v1 = *(v0 + 16);

  return sub_257DFC900(v1);
}

double block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

MAGSettingsLoader __swiftcall MAGSettingsLoader.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MAGSettingsLoader()
{
  result = qword_27F8F9A70;
  if (!qword_27F8F9A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F9A70);
  }

  return result;
}

uint64_t sub_257DFD370(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_257ECF120();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_257ECF190();
  v16 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v17, v18, v19, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v31 = sub_257ECFD30();
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  v23[6] = a4;
  aBlock[4] = sub_257E2876C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_56;
  v24 = _Block_copy(aBlock);
  v25 = a4;
  v26 = v4;

  v27 = a3;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  v28 = v31;
  MEMORY[0x259C72880](0, v22, v15, v24);
  _Block_release(v24);

  (*(v33 + 8))(v15, v9);
  return (*(v16 + 8))(v22, v32);
}

void sub_257DFD6C4()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  aBlock = *v0;
  v63 = v1;
  LOBYTE(v64) = v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  sub_257ECFD50();

  if (v68 && v68 != 1)
  {

    goto LABEL_12;
  }

  v9 = sub_257ED0640();

  if (v9)
  {
LABEL_12:
    v17 = sub_257DFF054();
    v18 = *&v17[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

    v19 = *&v18[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_257ECF4C0();
    v24 = sub_257ECF4C0();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    if (!v25)
    {
      sub_257ECF500();
      v25 = sub_257ECF4C0();
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = objc_allocWithZone(MEMORY[0x277D75088]);
    v66 = sub_257E2D170;
    v67 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v28 = &block_descriptor_605;
    goto LABEL_15;
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  aBlock = *v0;
  v63 = v15;
  LOBYTE(v64) = v16;
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);

  sub_257ECFD50();

  if (!v68 || v68 != 1)
  {
    v31 = sub_257ED0640();

    if (v31)
    {
      goto LABEL_17;
    }

    v54 = sub_257DFF054();
    v55 = *&v54[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

    v19 = *&v55[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    v56 = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    v58 = sub_257ECF4C0();
    v59 = sub_257ECF4C0();
    v25 = [v57 localizedStringForKey:v58 value:0 table:v59];

    if (!v25)
    {
      sub_257ECF500();
      v25 = sub_257ECF4C0();
    }

    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = objc_allocWithZone(MEMORY[0x277D75088]);
    v66 = sub_257E2BC80;
    v67 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v28 = &block_descriptor_593;
LABEL_15:
    v64 = sub_257D96328;
    v65 = v28;
    v29 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v30 = [v27 initWithName:v25 actionHandler:v29];

    _Block_release(v29);

    *(v20 + 32) = v30;
    goto LABEL_22;
  }

LABEL_17:
  v32 = sub_257DFF054();
  v33 = *&v32[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

  v61 = *&v33[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_257ED9BE0;
  type metadata accessor for MAGUtilities();
  v35 = swift_getObjCClassFromMetadata();
  v36 = objc_opt_self();
  v37 = [v36 bundleForClass_];
  v38 = sub_257ECF4C0();
  v39 = sub_257ECF4C0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  if (!v40)
  {
    sub_257ECF500();
    v40 = sub_257ECF4C0();
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = objc_allocWithZone(MEMORY[0x277D75088]);
  v66 = sub_257E2BCA4;
  v67 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_257D96328;
  v65 = &block_descriptor_597;
  v43 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v44 = [v42 initWithName:v40 actionHandler:v43];

  _Block_release(v43);

  *(v34 + 32) = v44;
  v45 = [v36 bundleForClass_];
  v46 = sub_257ECF4C0();
  v47 = sub_257ECF4C0();
  v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

  if (!v48)
  {
    sub_257ECF500();
    v48 = sub_257ECF4C0();
  }

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = objc_allocWithZone(MEMORY[0x277D75088]);
  v66 = sub_257E2BCC8;
  v67 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_257D96328;
  v65 = &block_descriptor_601;
  v51 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v52 = [v50 initWithName:v48 actionHandler:v51];

  _Block_release(v51);

  *(v34 + 40) = v52;
  v19 = v61;
LABEL_22:
  sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
  v53 = sub_257ECF7F0();

  [v19 setAccessibilityCustomActions_];
}

void sub_257DFE168()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
      v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
      swift_beginAccess();
      v5 = *(v3 + v4);
      v6 = v1;
      v7 = v2;
      [v5 stopPulse];
      v8 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
      swift_beginAccess();
      [*(v3 + v8) stopPulse];
      v9 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
      swift_beginAccess();
      [*(v3 + v9) stopPulse];
      v10 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
      swift_beginAccess();
      [*(v3 + v10) stopPulse];
      v11 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
      swift_beginAccess();
      v6[v11] = 1;
      v12 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
      v13 = v6;
      [v12 setHidden_];
      if (v6[v11] == 1)
      {
        [*&v13[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
      }

      v14 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
      swift_beginAccess();
      v7[v14] = 1;
      v15 = *&v7[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
      v16 = v7;
      [v15 setHidden_];
      if (v7[v14] == 1)
      {
        [*&v16[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
      }

      v17 = (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
      v24[0] = *v17;
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[4];
      v24[3] = v17[3];
      v24[4] = v20;
      v24[1] = v18;
      v24[2] = v19;
      *v17 = 0u;
      v17[1] = 0u;
      v17[2] = 0u;
      v17[3] = 0u;
      v17[4] = 0u;
      sub_257BE4084(v24, &qword_27F8F9C90, &unk_257EDCBD0);
      v21 = (v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement);
      *v21 = 0;
      v21[1] = 0xE000000000000000;

      v22 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
      v23 = sub_257ECF4C0();
      [v22 setText_];
    }
  }
}

double sub_257DFE438(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);

  return result;
}

uint64_t (*sub_257DFE48C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_257E28C64(v4, a2);
  return sub_257E2D164;
}

uint64_t (*sub_257DFE504(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_257E28D08(v4, a2);
  return sub_257DFE57C;
}

void sub_257DFE580(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_257DFE5CC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView) && UIAccessibilityIsVoiceOverRunning())
  {
    v2 = sub_257DFF59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v27 = ObjCClassFromMetadata;
    v6 = [v5 bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    if (!v9)
    {
      sub_257ECF500();
      v9 = sub_257ECF4C0();
    }

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(MEMORY[0x277D75088]);
    v32 = sub_257E2CADC;
    v33 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_257D96328;
    v31 = &block_descriptor_1006;
    v12 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v13 = [v11 initWithName:v9 actionHandler:v12];

    _Block_release(v12);

    *(v3 + 32) = v13;
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v14 = sub_257ECF7F0();

    [v2 setAccessibilityCustomActions_];

    v15 = *(v0 + v1);
    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_257ED9BF0;
      v17 = v15;
      v18 = [v5 bundleForClass_];
      v19 = sub_257ECF4C0();
      v20 = sub_257ECF4C0();
      v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

      if (!v21)
      {
        sub_257ECF500();
        v21 = sub_257ECF4C0();
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = objc_allocWithZone(MEMORY[0x277D75088]);
      v32 = sub_257E2CB18;
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_257D96328;
      v31 = &block_descriptor_1010;
      v24 = _Block_copy(&aBlock);
      sub_257ECC3F0();
      v25 = [v23 initWithName:v21 actionHandler:v24];

      _Block_release(v24);

      *(v16 + 32) = v25;
      v26 = sub_257ECF7F0();

      [v17 setAccessibilityCustomActions_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257DFEA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BE0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(MEMORY[0x277D75088]);
  v25 = sub_257E2C348;
  v26 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D96328;
  v24 = &block_descriptor_847;
  v9 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v10 = [v8 initWithName:v6 actionHandler:v9];

  _Block_release(v9);

  *(v0 + 32) = v10;
  v11 = [v2 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_257ECF500();
    v14 = sub_257ECF4C0();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = objc_allocWithZone(MEMORY[0x277D75088]);
  v25 = sub_257E2C350;
  v26 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D96328;
  v24 = &block_descriptor_851;
  v17 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v18 = [v16 initWithName:v14 actionHandler:v17];

  _Block_release(v17);

  *(v0 + 40) = v18;
  sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
  v19 = sub_257ECF7F0();

  [v20 setAccessibilityCustomActions_];
}

uint64_t sub_257DFEEEC()
{
  result = sub_257ECF4C0();
  qword_281548090 = result;
  return result;
}

uint64_t sub_257DFEF24()
{
  result = sub_257ECF4C0();
  qword_281548098 = result;
  return result;
}

id sub_257DFEF64()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  }

  else
  {
    type metadata accessor for ControlContainerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = qword_281544FE0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    [v6 setUserInteractionEnabled_];

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) = 1;
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_257DFF074(uint64_t a1)
{
  v2 = sub_257DFEF64();
  v3 = sub_257DFF3FC();
  v4 = [v3 view];

  if (v4)
  {
    v5 = type metadata accessor for MFContainedCardView();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_dynamicConstraints] = MEMORY[0x277D84F90];
    v7 = &v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView];
    *v7 = v2;
    *(v7 + 1) = &off_28690A258;
    *&v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] = v4;
    v25.receiver = v6;
    v25.super_class = v5;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = *&v9[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView];
    v11 = v9;
    [v11 addSubview_];
    [v11 addSubview_];
    sub_257DD0E2C();

    v12 = v11;
    v13 = sub_257ECF4C0();
    [v12 setAccessibilityIdentifier_];

    v14 = objc_allocWithZone(type metadata accessor for MFMainCardViewController());
    v15 = v12;
    v16 = sub_257EB1D60(v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_257E2C364;
    v24[5] = v17;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_257DFF3BC;
    v24[3] = &block_descriptor_863;
    v18 = _Block_copy(v24);
    v19 = v16;

    [v19 setAccessibilityMagicTapBlock_];
    _Block_release(v18);

    v20 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
    v21 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
    v22 = v19;
    [v22 addChildViewController_];
    v23 = *(a1 + v20);
    [v23 didMoveToParentViewController_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_257DFF31C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  v3 = Strong;
  v4 = v2;

  if (v2)
  {
    v5 = [v4 isHidden];
    if ((v5 & 1) == 0)
    {
      [DetectionModeView toggleDetection]_0();
    }

    v2 = (v5 ^ 1);
  }

  return v2;
}

uint64_t sub_257DFF3BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id sub_257DFF41C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_257DFF480(uint64_t a1)
{
  type metadata accessor for CameraTrayViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureDelegate + 8] = &off_28690DFA8;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeDelegate + 8] = &off_286912058;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_settingsDelegate + 8] = &off_286911E48;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_switchActivityDelegate + 8] = &off_286911E38;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameDelegate + 8] = &off_286912000;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeDelegate + 8] = &off_286911BD0;
  swift_unknownObjectWeakAssign();
  return v1;
}

id sub_257DFF59C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MFLivePreviewView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257DFF620()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didActivateCardVisibilityGesture_];
    [v4 setNumberOfTouchesRequired_];
    [v4 setNumberOfTapsRequired_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_257DFF708()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) != 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    goto LABEL_14;
  }

  v3 = sub_257DFF3FC();
  sub_257D91C68();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v12 && v12 == 1)
  {
  }

  else
  {
    v4 = sub_257ED0640();

    if ((v4 & 1) == 0)
    {
LABEL_14:
      v10 = sub_257DFF3FC();
      v11 = sub_257D83290();

      [v11 setUserInteractionEnabled_];
      return;
    }
  }

  v5 = sub_257DFF59C();
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    [v7 setAutomaticallyDimsOverCaptureRegion_];

    v9 = [v8 connection];
    if (v9)
    {
      [v9 setEnabled_];
    }

    goto LABEL_14;
  }

  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DFF9F8(char a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECF190();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v12, v13, v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  *(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) = a1 & 1;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v18 = sub_257ECFD30();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = a1 & 1;
  aBlock[4] = sub_257E2C358;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_859;
  v20 = _Block_copy(aBlock);
  v21 = v2;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v17, v10, v20);
  _Block_release(v20);

  (*(v24 + 8))(v10, v4);
  return (*(v11 + 8))(v17, v23);
}

void sub_257DFFD40(uint64_t a1, char a2)
{
  v4 = sub_257DFF3FC();
  v5 = sub_257D832B0();

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v11 ^ 1;
  }

  [v5 setEnabled_];

  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v8 = sub_257D832B0();

  v9 = a2 ^ 1;
  [v8 setUserInteractionEnabled_];

  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) == 1)
  {
    v10 = sub_257DFEF64();
    [v10 setUserInteractionEnabled_];
  }
}

id sub_257DFFEAC()
{
  v0 = [objc_opt_self() defaultConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v2 = MEMORY[0x277D837D0];
  sub_257ED0280();
  *(inited + 96) = v2;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_257ED0280();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 29527;
  sub_257ED0280();
  v3 = sub_257BEA014(&unk_286906150);
  sub_257BE4084(&unk_286906170, &qword_27F8F9EF0, &unk_257EEBE90);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB2E0, &unk_257EE23D0);
  *(inited + 216) = v3;
  sub_257BE88A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0, &qword_257EE0A60);
  swift_arrayDestroy();
  v4 = sub_257ECF3C0();

  v5 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v0 setFeedback_];
  [v0 setMinimumInterval_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithConfiguration_];
  [v6 _setOutputMode_];

  return v6;
}

id sub_257E00134()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FocusIndicatorView()) init];
    [v4 sizeToFit];
    [v4 setAlpha_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257E001D8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
    v5 = sub_257CA9DF0();
    [v4 setFont_];

    v6 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E002B8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v3 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
      v4 = sub_257CA9DF0();
      [v3 setFont_];

      v5 = [objc_opt_self() whiteColor];
      [v3 setTextColor_];
    }

    else
    {
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_257CC8CC0(v6);
  }

  sub_257CC9350(v2);
  return v3;
}

id sub_257E00408()
{
  v0 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
  v1 = sub_257CA9DF0();
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v0;
  v5 = [v3 initWithWhite:0.1 alpha:1.0];
  [v4 setBackgroundColor_];

  return v4;
}

id sub_257E00504()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v4 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
      v5 = sub_257CA9DF0();
      [v4 setFont_];

      v6 = [objc_opt_self() whiteColor];
      [v4 setTextColor_];

      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = v4;
      v8 = [v7 initWithWhite:0.1 alpha:1.0];
      [v3 setBackgroundColor_];
    }

    else
    {
      v3 = 0;
    }

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_257CC8CC0(v9);
  }

  sub_257CC9350(v2);
  return v3;
}

uint64_t sub_257E00684@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D5C5AC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_257E006B0()
{
  v49 = sub_257ECF130();
  v1 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v2, v3, v4, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_257ECFD10();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v8, v9, v10, v11);
  v45 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DD8, &qword_257EEBB20);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v13, v14, v15, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DE0, &qword_257EEBB28);
  v20 = *(v19 - 8);
  v51 = v19;
  v52 = v20;
  MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v26 = &v45 - v25;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DE8, &qword_257EEBB30);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v27, v28, v29, v30);
  v46 = &v45 - v31;
  v47 = v0;
  v32 = v0;
  v33 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF0, &qword_257EEBB38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  *(inited + 32) = *(v32 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher);
  v57 = v33;

  sub_257ECC3F0();
  sub_257EB0ED4(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF8, &qword_257EEBB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E00, &qword_257EEBB48);
  sub_257BD2D4C(&unk_2815441D8, &qword_27F8F9DF8, &qword_257EEBB40, MEMORY[0x277CBCD90]);
  sub_257BD2D4C(&qword_281543FC0, &unk_27F8F9E00, &qword_257EEBB48, MEMORY[0x277D83970]);
  sub_257ECDC90();
  v35 = v45;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v36 = v49;
  (*(v1 + 104))(v7, *MEMORY[0x277D851C0], v49);
  v37 = sub_257ECFD90();
  (*(v1 + 8))(v7, v36);
  v57 = v37;
  sub_257BD2D4C(&qword_281544288, &qword_27F8F9DD8, &qword_257EEBB20, MEMORY[0x277CBCD48]);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v38 = v48;
  sub_257ECDE00();

  (*(v53 + 8))(v35, v55);
  (*(v50 + 8))(v18, v38);
  sub_257BD2D4C(&qword_281544290, &qword_27F8F9DE0, &qword_257EEBB28, MEMORY[0x277CBCD20]);
  v39 = v46;
  v40 = v51;
  sub_257ECDE10();
  (*(v52 + 8))(v26, v40);
  swift_allocObject();
  v41 = v47;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544348, &qword_27F8F9DE8, &qword_257EEBB30, MEMORY[0x277CBCC18]);
  v42 = v54;
  v43 = sub_257ECDE50();

  (*(v56 + 8))(v39, v42);
  *(v41 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription) = v43;

  return result;
}

void *sub_257E00D08(uint64_t *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v26 = sub_257ECFD30();
    v22 = swift_allocObject();
    v22[2] = v18;
    v22[3] = v19;
    v22[4] = v21;
    aBlock[4] = sub_257E2C2D4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_836;
    v23 = _Block_copy(aBlock);

    v25 = v21;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v26;
    MEMORY[0x259C72880](0, v17, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    return (*(v27 + 8))(v17, v11);
  }

  return result;
}

void sub_257E01044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v14 == 7 && (v4 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5890] mediaType:*MEMORY[0x277CE5EA8] position:0]) != 0)
  {
    v5 = v4;
    v6 = [v4 localizedName];
    sub_257ECF500();
  }

  else
  {
  }

  sub_257BDAB08();
  v7 = sub_257ED0100();
  v9 = v8;

  v10 = sub_257DFF054();
  v11 = sub_257EB1B80();

  v12 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v13 = sub_257EB1BE0();

  sub_257DFD370(v7, v9, v11, v13);
}

unint64_t sub_257E01274()
{
  v0 = sub_257BEA590(MEMORY[0x277D84F90]);
  for (i = 0; i != 16; ++i)
  {
    v2 = sub_257C040E4(*(&unk_286903790 + i + 32));
    if (v3)
    {
      v4 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_257C0956C();
      }

      sub_257C0761C(v4, v0);
    }
  }

  return v0;
}

id sub_257E0131C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  }

  else
  {
    v4 = objc_allocWithZone(PersonDetectionManager);
    LODWORD(v5) = 1017370378;
    LODWORD(v6) = 1209170944;
    LODWORD(v7) = 2.0;
    v8 = [v4 initWithCenterDetectionSize:25.0 labellingTolerance:25.0 significantAreaThresholdMM:v5 closeDetectionFactor:{v6, v7}];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void *sub_257E013B4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ANSTPersonDetectionManager();
    swift_allocObject();
    v2 = ANSTPersonDetectionManager.init()();
    *(v3 + v1) = v2;
    sub_257ECC3F0();
  }

  sub_257ECC3F0();
  return v2;
}

void sub_257E01458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  *(v2 + 32) = sub_257DFF59C();
  v3 = type metadata accessor for MFPassthroughView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] = 1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer] = 0x403E000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews] = v2;
  v14.receiver = v4;
  v14.super_class = v3;
  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView] = v5;
  v7 = v5;

  [v1 setView_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D64014();
  v8 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  if (sub_257E08680())
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v8 setAlpha_];

  v10 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v10)
  {
    v11 = v10;
    v12 = sub_257E08680();
    v13 = 0.0;
    if (v12)
    {
      v13 = 1.0;
    }

    [v11 setAlpha_];
  }
}

id sub_257E01688(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257E016E8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  v2 = [v1 systemRedColor];
  [v0 setBackgroundColor_];

  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = sub_257ECF4C0();
  [v4 setText_];

  v6 = [objc_opt_self() boldSystemFontOfSize_];
  [v4 setFont_];

  v7 = [v1 whiteColor];
  [v4 setTextColor_];

  v8 = v4;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257EDBE40;
  v11 = [v8 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v8 centerYAnchor];
  v15 = [v0 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v8 leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:8.0];

  *(v10 + 48) = v19;
  v20 = [v8 trailingAnchor];

  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-8.0];

  *(v10 + 56) = v22;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v23 = sub_257ECF7F0();

  [v9 activateConstraints_];

  return v0;
}

void sub_257E01ACC()
{
  v1 = v0;
  v2 = sub_257ECF130();
  v243 = *(v2 - 8);
  v244 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v242 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v241 = &v230 - v13;
  v14 = sub_257ECF120();
  v239 = *(v14 - 8);
  v240 = v14;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v238 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_257ECF190();
  v237 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v20, v21, v22, v23);
  v236 = &v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppViewController(0);
  v261.receiver = v0;
  v261.super_class = v25;
  objc_msgSendSuper2(&v261, sel_viewDidLoad);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v26 = qword_281548348;
  v27 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
  swift_beginAccess();
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v248 = *v27;
  v249 = v28;
  LOBYTE(v250) = v29;
  v30 = qword_2815447E0;

  if (v30 != -1)
  {
    v31 = swift_once();
  }

  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70, &unk_257EE35B0);
  sub_257ECFD50();

  v36 = v260;
  if (v260 != 12)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v248 + 2))
  {
    v36 = v248[32];

LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v248) = v36;
    sub_257ECC3F0();
    sub_257ECDD70();
    goto LABEL_9;
  }

LABEL_9:
  v37 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionExitStatus;
  v38 = swift_beginAccess();
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  v248 = *v37;
  v249 = v39;
  LOBYTE(v250) = v40;
  MEMORY[0x28223BE20](v38, v41, v42, v43, v44);

  sub_257ECFD50();

  LOBYTE(v39) = v259;
  sub_257D71A24(v259);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v39;
  sub_257ECC3F0();
  sub_257ECDD70();
  v45 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionExitStatus;
  v46 = swift_beginAccess();
  v47 = *(v45 + 8);
  v48 = *(v45 + 16);
  v248 = *v45;
  v249 = v47;
  LOBYTE(v250) = v48;
  MEMORY[0x28223BE20](v46, v49, v50, v51, v52);

  sub_257ECFD50();

  LOBYTE(v45) = v258;
  sub_257D71A04(v258);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v45;
  sub_257ECC3F0();
  sub_257ECDD70();
  v53 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionExitStatus;
  v54 = swift_beginAccess();
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  v248 = *v53;
  v249 = v55;
  LOBYTE(v250) = v56;
  MEMORY[0x28223BE20](v54, v57, v58, v59, v60);

  sub_257ECFD50();

  LOBYTE(v53) = v257;
  sub_257D71A84(v257);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v53;
  sub_257ECC3F0();
  sub_257ECDD70();
  v61 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakExitStatus;
  v62 = swift_beginAccess();
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  v248 = *v61;
  v249 = v63;
  LOBYTE(v250) = v64;
  MEMORY[0x28223BE20](v62, v65, v66, v67, v68);

  sub_257ECFD50();

  LOBYTE(v61) = v256;
  sub_257D71A44(v256);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v61;
  sub_257ECC3F0();
  sub_257ECDD70();
  v69 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionExitStatus;
  v70 = swift_beginAccess();
  v71 = *(v69 + 8);
  v72 = *(v69 + 16);
  v248 = *v69;
  v249 = v71;
  LOBYTE(v250) = v72;
  MEMORY[0x28223BE20](v70, v73, v74, v75, v76);

  sub_257ECFD50();

  LOBYTE(v69) = v255;
  sub_257D71A64(v255);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v69;
  sub_257ECC3F0();
  sub_257ECDD70();
  v77 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingExitStatus;
  v78 = swift_beginAccess();
  v79 = *(v77 + 8);
  v80 = *(v77 + 16);
  v248 = *v77;
  v249 = v79;
  LOBYTE(v250) = v80;
  MEMORY[0x28223BE20](v78, v81, v82, v83, v84);

  sub_257ECFD50();

  v85 = v254;
  sub_257D719C4(v254);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v248) = v85;
  sub_257ECC3F0();
  sub_257ECDD70();
  v86 = [v1 view];
  if (!v86)
  {
    __break(1u);
    goto LABEL_56;
  }

  v87 = v86;
  v85 = sub_257DFF59C();
  [v87 addSubview_];

  v88 = [v1 view];
  if (!v88)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v89 = v88;
  v90 = sub_257E00134();
  [v89 addSubview_];

  v91 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  v92 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  v93 = objc_opt_self();
  v94 = v92;
  v95 = [v93 systemBlackColor];
  [v94 setBackgroundColor_];

  v246 = v91;
  v85 = *&v1[v91];
  v96 = sub_257ECF4C0();
  v97 = objc_opt_self();
  v98 = [v97 systemImageNamed_];

  if (v98)
  {
    v99 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
    v100 = [v98 imageByApplyingSymbolConfiguration_];

    if (v100)
    {
      v101 = [v100 imageWithRenderingMode_];

      v102 = [v93 whiteColor];
      v98 = [v101 imageWithTintColor_];
    }

    else
    {
      v98 = 0;
    }
  }

  v103 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v104 = *(v85 + v103);
  *(v85 + v103) = v98;
  v105 = v98;

  sub_257E5673C();
  v106 = v246;
  [*&v1[v246] addTarget:v1 action:sel_didTapPipWindowButton_ forControlEvents:64];
  v107 = [v1 view];
  if (!v107)
  {
    goto LABEL_57;
  }

  v108 = v107;
  [v107 addSubview_];

  v109 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v110 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton;
  v111 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton] = v109;
  v112 = v109;

  if (v112)
  {
    [v112 setIsAccessibilityElement_];
  }

  v235 = v110;
  v113 = *&v1[v110];
  v114 = &selRef_imageByApplyingSymbolConfiguration_;
  if (v113)
  {
    v85 = v113;
    [v85 setTranslatesAutoresizingMaskIntoConstraints_];
    v115 = [v93 systemYellowColor];
    [v85 setBackgroundColor_];

    v116 = [v85 layer];
    [v85 frame];
    [v116 setCornerRadius_];

    v117 = [objc_opt_self() &selRef_endUpdates + 2];
    v118 = sub_257ECF4C0();
    v119 = [v97 systemImageNamed:v118 withConfiguration:v117];

    v234 = v117;
    if (v119)
    {
      v120 = [v119 imageWithRenderingMode_];
      v121 = [v93 systemBlackColor];
      v122 = [v120 imageWithTintColor_];

      v114 = &selRef_imageByApplyingSymbolConfiguration_;
    }

    else
    {
      v122 = 0;
    }

    [v85 setImage:v122 forState:0];

    v123 = [v85 imageView];
    if (v123)
    {
      v124 = v123;
      v125 = [v123 v114[2]];

      [v125 setMasksToBounds_];
    }

    v233 = v119;
    [v85 addTarget:v1 action:sel_didTapCloseImageWellButton_ forControlEvents:64];
    v126 = [v1 view];
    if (!v126)
    {
      goto LABEL_59;
    }

    v127 = v126;
    [v126 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_257EDBE40;
    v129 = [v85 rightAnchor];
    v130 = v246;
    v131 = [*&v1[v246] rightAnchor];
    v132 = [v129 constraintEqualToAnchor:v131 constant:-4.0];

    *(v128 + 32) = v132;
    v133 = [v85 topAnchor];
    v134 = [*&v1[v130] topAnchor];
    v135 = [v133 constraintEqualToAnchor:v134 constant:2.0];

    *(v128 + 40) = v135;
    v136 = [v85 widthAnchor];
    v137 = [v136 constraintGreaterThanOrEqualToConstant_];

    *(v128 + 48) = v137;
    v138 = [v85 heightAnchor];

    v139 = [v138 constraintGreaterThanOrEqualToConstant_];
    *(v128 + 56) = v139;
    v140 = objc_opt_self();
    sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
    v141 = sub_257ECF7F0();

    [v140 activateConstraints_];
  }

  v142 = *&v1[v246];
  if (sub_257E08680())
  {
    v143 = 1.0;
  }

  else
  {
    v143 = 0.0;
  }

  [v142 setAlpha_];

  v144 = *(v235 + v1);
  if (v144)
  {
    v145 = v144;
    if (sub_257E08680())
    {
      v146 = 1.0;
    }

    else
    {
      v146 = 0.0;
    }

    [v145 setAlpha_];
  }

  sub_257E03838();
  *(swift_allocObject() + 16) = v1;
  sub_257ECC3F0();
  v147 = v1;
  sub_257ECD2A0();

  v148 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  [*&v147[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v147[v148] setAutoresizingMask_];
  [*&v147[v148] setClipsToBounds_];
  [*&v147[v148] setAccessibilityTraits_];
  v149 = *&v147[v148];
  v85 = *&v147[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView];
  *&v147[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView] = v149;
  v150 = v149;

  v151 = [v147 view];
  if (!v151)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v152 = v151;
  [v151 setClipsToBounds_];

  sub_257E1A3A0();
  v153 = *&v147[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v154 = v248;
  if (v248)
  {
    v155 = [v248 hasTorch];
  }

  else
  {
    v155 = 0;
  }

  *(v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_flashlightIsAvailable) = v155;
  v156 = sub_257DFF3FC();
  v157 = sub_257D832B0();

  [v157 setEnabled_];
  v158 = *&v147[v148];
  v85 = [v158 layer];
  objc_opt_self();
  v159 = swift_dynamicCastObjCClass();
  if (!v159)
  {
    goto LABEL_60;
  }

  v160 = v159;
  [v159 setAutomaticallyDimsOverCaptureRegion_];

  [v160 setVideoGravity_];
  v161 = objc_opt_self();
  v162 = [v161 mainScreen];
  [v162 bounds];
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v170 = v169;

  v263.origin.x = v164;
  v263.origin.y = v166;
  v263.size.width = v168;
  v263.size.height = v170;
  Width = CGRectGetWidth(v263);
  v172 = [v161 mainScreen];
  [v172 scale];
  v174 = v173;

  v175 = Width * v174;
  v176 = [v161 mainScreen];
  [v176 bounds];
  v178 = v177;
  v180 = v179;
  v182 = v181;
  v184 = v183;

  v264.origin.x = v178;
  v264.origin.y = v180;
  v264.size.width = v182;
  v264.size.height = v184;
  Height = CGRectGetHeight(v264);
  v186 = [v161 mainScreen];
  [v186 scale];
  v188 = v187;

  v189 = Height * v188;
  v190 = [objc_opt_self() currentDevice];
  v191 = [v190 orientation];

  if (v189 >= v175)
  {
    v193 = *&v147[v148];
    v85 = [v193 layer];
    objc_opt_self();
    v194 = swift_dynamicCastObjCClass();
    if (v194)
    {
LABEL_45:
      v195 = v189 / v175;
      goto LABEL_48;
    }

LABEL_60:

    sub_257ED0410();
    __break(1u);
    return;
  }

  v192 = v191 - 1;
  v193 = *&v147[v148];
  v85 = [v193 layer];
  objc_opt_self();
  v194 = swift_dynamicCastObjCClass();
  if (v192 <= 1)
  {
    if (!v194)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  if (!v194)
  {
    goto LABEL_60;
  }

  v195 = v175 / v189;
LABEL_48:
  v196 = v194;
  [v194 setAutomaticallyDimsOverCaptureRegion_];

  [v196 setPrimaryCaptureRectAspectRatio:v195 centerPoint:{0.5, 0.5}];
  v197 = *&v147[v148];
  v85 = [v197 layer];
  objc_opt_self();
  v198 = swift_dynamicCastObjCClass();
  if (!v198)
  {
    goto LABEL_60;
  }

  [v198 setAutomaticallyDimsOverCaptureRegion_];

  swift_unknownObjectWeakAssign();
  [*&v147[v148] setIsAccessibilityElement_];
  v199 = *&v147[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
  v231 = v147;
  Strong = swift_unknownObjectWeakLoadStrong();
  v201 = *(v199 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  *(v199 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer) = Strong;

  sub_257E8845C();
  v202 = *(v153 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v252 = sub_257E03EE0;
  v253 = 0;
  v248 = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v235 = &v250;
  v250 = sub_257D231C0;
  v251 = &block_descriptor_1039;
  v203 = _Block_copy(&v248);
  v204 = v202;
  v205 = v236;
  sub_257ECF150();
  v247 = MEMORY[0x277D84F90];
  v233 = sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  v234 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  v206 = v238;
  v207 = v240;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v205, v206, v203);
  _Block_release(v203);

  v239 = *(v239 + 8);
  (v239)(v206, v207);
  v237 = *(v237 + 8);
  (v237)(v205, v245);
  v208 = swift_allocObject();
  v209 = v231;
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257DB05D0(sub_257E2CD7C, v208);

  v246 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v210 = sub_257ECFD30();
  v211 = swift_allocObject();
  *(v211 + 16) = v209;
  v212 = v209;
  v252 = sub_257E2CD84;
  v253 = v211;
  v248 = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = sub_257D231C0;
  v251 = &block_descriptor_1046;
  v213 = _Block_copy(&v248);
  v214 = v212;

  sub_257ECF150();
  v248 = MEMORY[0x277D84F90];
  sub_257ED0180();
  MEMORY[0x259C72880](0, v205, v206, v213);
  _Block_release(v213);

  (v239)(v206, v207);
  (v237)(v205, v245);
  v215 = [objc_opt_self() sharedApplication];
  [v215 setIdleTimerDisabled_];

  v216 = objc_opt_self();
  v217 = [v216 defaultCenter];
  [v217 addObserver:v214 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x277D76878] object:0];

  v218 = [v216 defaultCenter];
  [v218 addObserver:v214 selector:sel_applicationWillAddDeactivationReasonWithNotification_ name:*MEMORY[0x277D77338] object:0];

  v219 = [v216 defaultCenter];
  [v219 addObserver:v214 selector:sel_applicationDidRemoveDeactivationReasonWithNotification_ name:*MEMORY[0x277D77308] object:0];

  v220 = [v216 defaultCenter];
  if (qword_281543EE0 != -1)
  {
    swift_once();
  }

  [v220 addObserver:v214 selector:? name:? object:?];

  v221 = [v216 defaultCenter];
  if (qword_281543EE8 != -1)
  {
    swift_once();
  }

  [v221 addObserver:v214 selector:? name:? object:?];

  v222 = sub_257ECC810();
  v223 = v241;
  (*(*(v222 - 8) + 56))(v241, 1, 1, v222);
  sub_257E1A15C();
  sub_257BE4084(v223, &qword_27F8F9E30, &qword_257EEBBA0);
  v224 = [v216 defaultCenter];
  [v224 addObserver:v214 selector:sel_updateAppearanceForReduceTransparency_ name:*MEMORY[0x277D764C8] object:0];

  v225 = swift_allocObject();
  *(v225 + 16) = v214;
  v214;
  sub_257BBD7E4(sub_257E2CD8C, v225);
  sub_257ECDE80();

  v227 = v242;
  v226 = v243;
  v228 = v244;
  (*(v243 + 104))(v242, *MEMORY[0x277D851A8], v244);
  v229 = sub_257ECFD90();
  (*(v226 + 8))(v227, v228);
  sub_257ECDEA0();

  sub_257E07014();
}

void sub_257E03838()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(MEMORY[0x277D75088]);
  v15[4] = sub_257E2CE64;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_257D96328;
  v15[3] = &block_descriptor_1161;
  v12 = _Block_copy(v15);
  sub_257ECC3F0();
  v13 = [v11 initWithName:v9 actionHandler:v12];

  _Block_release(v12);

  *(v2 + 32) = v13;
  sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
  v14 = sub_257ECF7F0();

  [v5 setAccessibilityCustomActions_];
}

uint64_t sub_257E03AC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257E03B80, 0, 0);
}

uint64_t sub_257E03B80()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257E03C1C;

  return sub_257CD5940();
}

uint64_t sub_257E03C1C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257E03D58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257E03D58(__n128 a1)
{
  v2 = v1[7];
  sub_257ECD4B0();
  v3 = v2;
  v4 = sub_257ECDA20();
  v5 = sub_257ECFC00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_257BAC000, v4, v5, "Video caption service prewarm() failed: %@", v8, 0xCu);
    sub_257BE4084(v9, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v9, -1, -1);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[4] + 8))(v1[5], v1[3]);

  v12 = v1[1];

  return v12();
}

double sub_257E03EE0()
{
  v0 = sub_257ECF120();
  v51 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257CA930C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348;
  v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__setCameraType;
  swift_beginAccess();
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v56 = *v9;
  v57 = v10;
  v58 = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *(&v49 - 2) = &v56;
  sub_257ECFD50();

  v18 = &qword_281545000;
  if (v52 == 1)
  {
    v50 = v0;
    v19 = v8 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    v20 = swift_beginAccess();
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v56 = *v19;
    v57 = v21;
    v58 = v22;
    MEMORY[0x28223BE20](v20, v23, v24, v25, v26);
    *(&v49 - 2) = &v56;

    sub_257ECFD50();

    if (sub_257C592D0(v53[0], v7))
    {

      v18 = &qword_281545000;
      goto LABEL_13;
    }

    v0 = v50;
    v18 = &qword_281545000;
  }

  if (*(v7 + 16))
  {
    v27 = *(v7 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = v8 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  LOBYTE(v53[0]) = v27;
  v29 = sub_257ECF110();
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  *(&v49 - 2) = v53;
  *(&v49 - 1) = v28;
  sub_257ECFD40();
  v34 = *(v51 + 8);
  v34(v6, v0);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v53[0]) = 1;
  v35 = sub_257ECF110();
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  *(&v49 - 2) = v53;
  *(&v49 - 1) = v9;
  sub_257ECFD40();
  v34(v6, v0);
  swift_endAccess();
LABEL_13:
  v40 = v8 + v18[214];
  v41 = swift_beginAccess();
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v53[0] = *v40;
  v53[1] = v42;
  v54 = v43;
  MEMORY[0x28223BE20](v41, v44, v45, v46, v47);
  *(&v49 - 2) = v53;

  sub_257ECFD50();

  LOBYTE(v40) = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v53[0]) = v40;
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

void sub_257E043B8(uint64_t a1, uint64_t a2)
{
  v107 = sub_257ECF1B0();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v3, v4, v5, v6);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v105 = &v95 - v13;
  v14 = sub_257ECF120();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16, v17, v18, v19);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECF190();
  v110 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v109 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = v21;
    v30 = v14;
    v31 = Strong;
    sub_257ECC3F0();

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v34 = *(v32 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v35 = aBlock;
    }

    else
    {
      v35 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v35;
    sub_257ECDD70();
    v14 = v30;
    v21 = v29;
  }

  v111 = v15;
  v102 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v36 = sub_257ECFD30();
  v118 = sub_257E2CE5C;
  v119 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v115 = 1107296256;
  v116 = sub_257D231C0;
  v117 = &block_descriptor_1128;
  v37 = v22;
  v38 = _Block_copy(&aBlock);
  sub_257ECC3F0();

  v108 = a2;
  v39 = v109;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  v40 = sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  v42 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  v101 = v41;
  v103 = v40;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v39, v21, v38);
  v43 = v38;
  v44 = v37;
  _Block_release(v43);

  v46 = v111 + 8;
  v45 = *(v111 + 8);
  v45(v21, v14);
  v47 = v110 + 8;
  v48 = *(v110 + 8);
  v48(v39, v44);
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    sub_257D45978();
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v51 = qword_281548348;
  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) == 1)
  {
    v96 = qword_281548348;
    v97 = v48;
    v98 = v45;
    v99 = v42;
    v110 = v47;
    v100 = v44;
    v52 = v21;
    v111 = v46;
    v53 = v14;
    swift_beginAccess();
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v54;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
      v56 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
      v57 = *&v55[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController];
      if (v57)
      {
        v58 = v57;
        [v58 willMoveToParentViewController_];
        v59 = objc_opt_self();
        v60 = swift_allocObject();
        *(v60 + 16) = v58;
        v118 = sub_257BEE444;
        v119 = v60;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v116 = sub_257D231C0;
        v117 = &block_descriptor_1145;
        v61 = _Block_copy(&aBlock);
        v62 = v58;

        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        v118 = sub_257BEE44C;
        v119 = v63;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v116 = sub_257DFE438;
        v117 = &block_descriptor_1151;
        v64 = _Block_copy(&aBlock);
        v65 = v62;

        [v59 animateWithDuration:0x20000 delay:v61 options:v64 animations:0.25 completion:0.0];
        _Block_release(v64);
        _Block_release(v61);

        v66 = *&v55[v56];
        *&v55[v56] = 0;

        v55 = v66;
      }
    }

    v67 = sub_257ECFD30();
    v68 = v104;
    sub_257ECF1A0();
    v69 = v105;
    sub_257ECF220();
    v70 = *(v106 + 8);
    v71 = v107;
    v70(v68, v107);
    v118 = sub_257BEDAC8;
    v119 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v115 = 1107296256;
    v116 = sub_257D231C0;
    v117 = &block_descriptor_1139;
    v72 = _Block_copy(&aBlock);
    v73 = v109;
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257ED0180();
    MEMORY[0x259C727E0](v69, v73, v52, v72);
    _Block_release(v72);

    v98(v52, v53);
    v97(v73, v100);
    v70(v69, v71);
    v51 = v96;
  }

  v74 = (v51 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage);
  swift_beginAccess();
  v75 = v74[1];
  v76 = v74[2];
  v113[0] = *v74;
  v113[1] = v75;
  v113[2] = v76;
  v77 = qword_2815447E0;
  sub_257ECC3F0();

  if (v77 != -1)
  {
    v78 = swift_once();
  }

  MEMORY[0x28223BE20](v78, v79, v80, v81, v82);
  *(&v95 - 2) = v113;
  sub_257ECFD50();

  v83 = v112[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v113[0] = v83;
  sub_257ECDD70();
  swift_beginAccess();
  v84 = swift_unknownObjectWeakLoadStrong();
  if (v84)
  {
    v85 = v84;
    v86 = *(v84 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v92 = v112[0];
    if (v112[0])
    {
      v93 = v74[1];
      v94 = v74[2];
      v112[0] = *v74;
      v112[1] = v93;
      v112[2] = v94;
      MEMORY[0x28223BE20](v87, v88, v89, v90, v91);
      *(&v95 - 2) = v112;

      sub_257ECFD50();

      sub_257D337D8(0, *&v112[3]);
    }
  }
}

void sub_257E04F58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_257DFF3FC();

    v4 = sub_257D832B0();
    [v4 setEnabled_];
  }
}

void sub_257E04FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = aBlock - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E78, &qword_257EEBD00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = aBlock - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v18 = aBlock[0];
  sub_257E053D4(aBlock[0]);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  sub_257ECDE10();
  (*(v3 + 8))(v9, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544380, &unk_27F8F9E78, &qword_257EEBD00, MEMORY[0x277CBCC18]);
  v19 = sub_257ECDE50();

  (*(v11 + 8))(v17, v10);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription) = v19;

  sub_257E2AE58();
  v20 = sub_257DFF59C();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_257E2CDA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257E06E58;
  aBlock[3] = &block_descriptor_1063;
  v22 = _Block_copy(aBlock);

  [v20 _setAccessibilityFrameBlock_];
  _Block_release(v22);
}

double sub_257E053D4(uint64_t a1)
{
  v136 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v129 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v125 = *(v8 - 8);
  v126 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v124 = &v119 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E88, &qword_257EEBD08);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v14, v15, v16, v17);
  v127 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E90, &unk_257EEBD10);
  v132 = *(v19 - 8);
  v133 = v19;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v131 = &v119 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48, &qword_257EE2658);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v25, v26, v27, v28);
  v120 = &v119 - v29;
  v30 = sub_257ECF120();
  v135 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v37 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    v118 = v35;
    swift_once();
    v35 = v118;
  }

  v123 = v35;
  v134 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v38 = v142;
  v137 = qword_281548348;
  v39 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
  swift_beginAccess();
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  v139 = *v39;
  v140 = v40;
  LOBYTE(v141) = v41;
  v42 = qword_2815447E0;

  if (v42 != -1)
  {
    v43 = swift_once();
  }

  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  *(&v119 - 2) = &v139;
  sub_257ECFD50();

  if (v38)
  {
    if (v38 == 1)
    {
      v48 = 0x6F685369746C756DLL;
    }

    else
    {
      v48 = 0x746E656D75636F64;
    }

    if (v38 == 1)
    {
      v49 = 0xE900000000000074;
    }

    else
    {
      v49 = 0xE800000000000000;
    }
  }

  else
  {
    v48 = 0x6853656C676E6973;
    v49 = 0xEA0000000000746FLL;
  }

  v50 = 0x6F685369746C756DLL;
  v51 = 0xE900000000000074;
  if (v138 != 1)
  {
    v50 = 0x746E656D75636F64;
    v51 = 0xE800000000000000;
  }

  if (v138)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0x6853656C676E6973;
  }

  if (v138)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0xEA0000000000746FLL;
  }

  if (v48 == v52 && v49 == v53)
  {

LABEL_25:
    v60 = v137;
    v61 = v123;
    goto LABEL_33;
  }

  v54 = sub_257ED0640();

  if (v54)
  {
    goto LABEL_25;
  }

  v62 = *(v39 + 8);
  v63 = *(v39 + 16);
  v139 = *v39;
  v140 = v62;
  LOBYTE(v141) = v63;
  MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
  *(&v119 - 2) = &v139;

  sub_257ECFD50();

  if (v138 && v138 != 1)
  {

    v64 = v137;
    goto LABEL_31;
  }

  v64 = v137;
  v65 = sub_257ED0640();

  if (v65)
  {
LABEL_31:
    swift_beginAccess();
    LOBYTE(v138) = 0;
    v71 = sub_257ECF110();
    MEMORY[0x28223BE20](v71, v72, v73, v74, v75);
    *(&v119 - 2) = &v138;
    *(&v119 - 1) = v39;
    sub_257ECFD40();
    v61 = v123;
    (*(v135 + 8))(v37, v123);
    v66 = swift_endAccess();
    goto LABEL_32;
  }

  v61 = v123;
LABEL_32:
  v76 = *(v39 + 8);
  v77 = *(v39 + 16);
  v139 = *v39;
  v140 = v76;
  LOBYTE(v141) = v77;
  MEMORY[0x28223BE20](v66, v67, v68, v69, v70);
  *(&v119 - 2) = &v139;

  sub_257ECFD50();

  v78 = v138;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v139) = v78;
  sub_257ECC3F0();
  sub_257ECDD70();
  v60 = v64;
LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v139) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v79 = v60 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReviewing;
  swift_beginAccess();
  LOBYTE(v138) = 0;
  v80 = sub_257ECF110();
  MEMORY[0x28223BE20](v80, v81, v82, v83, v84);
  *(&v119 - 2) = &v138;
  *(&v119 - 1) = v79;
  sub_257ECFD40();
  v85 = *(v135 + 8);
  v85(v37, v61);
  swift_endAccess();
  v86 = v60 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  LODWORD(v138) = 0;
  v87 = sub_257ECF110();
  MEMORY[0x28223BE20](v87, v88, v89, v90, v91);
  *(&v119 - 2) = &v138;
  *(&v119 - 1) = v86;
  sub_257ECFD40();
  v85(v37, v61);
  v92 = swift_endAccess();
  if (v136)
  {
    v97 = *(v86 + 8);
    v98 = *(v86 + 16);
    v139 = *v86;
    v140 = v97;
    v141 = v98;
    MEMORY[0x28223BE20](v92, v93, v94, v95, v96);
    *(&v119 - 2) = &v139;

    sub_257ECFD50();

    sub_257D32D68(*&v138);
  }

  v99 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription;
  v100 = v134;
  if (!*(v134 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription))
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
    v101 = v120;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48, &qword_257EE2658, MEMORY[0x277CBCEC8]);
    v102 = v122;
    v103 = sub_257ECDE50();

    (*(v121 + 8))(v101, v102);
    *(v100 + v99) = v103;
  }

  v104 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton;
  if (*(v100 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton))
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *(v100 + v104) = 0;

  v135 = v104;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v105 = v124;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  v106 = v126;
  v107 = sub_257ECDD90();
  (*(v125 + 8))(v105, v106);
  v138 = *(v100 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue);
  v108 = v138;
  v139 = v107;
  v109 = sub_257ECFCF0();
  v110 = v129;
  (*(*(v109 - 8) + 56))(v129, 1, 1, v109);
  v111 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360, &qword_257EEC930);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360, &qword_257EEC930, MEMORY[0x277CBCD90]);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v112 = v127;
  sub_257ECDE20();
  sub_257BE4084(v110, &unk_27F8F8740, &qword_257EEBBB0);

  sub_257BD2D4C(&qword_27F8F9EB0, &qword_27F8F9E88, &qword_257EEBD08, MEMORY[0x277CBCB50]);
  v113 = v130;
  v114 = v131;
  sub_257ECDE10();
  (*(v128 + 8))(v112, v113);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9EB8, &unk_27F8F9E90, &unk_257EEBD10, MEMORY[0x277CBCC18]);
  v115 = v133;
  v116 = sub_257ECDE50();

  (*(v132 + 8))(v114, v115);
  *(v100 + v135) = v116;

  sub_257D6B520();
  return sub_257E2554C(v136);
}

void *sub_257E06254(char *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v27 = sub_257ECFD30();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    aBlock[4] = sub_257E2CDAC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_1069;
    v23 = _Block_copy(aBlock);
    v26 = v21;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v25 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v27;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    return (*(v12 + 8))(v18, v25);
  }

  return result;
}

void sub_257E06584(char a1, uint64_t a2)
{
  if (a1 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_257ECF500();
    v10 = v9;

    sub_257E067A8(v8, v10);

    v11 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
    if (sub_257E08680())
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    [v11 setAlpha_];

    v13 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v13)
    {
      v16 = v13;
      if (sub_257E08680())
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      [v16 setAlpha_];
    }
  }

  else
  {
    sub_257E06A24();
    [*(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    v15 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v15)
    {

      [v15 setAlpha_];
    }
  }
}

void sub_257E067A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_257E001D8();
  v5 = sub_257ECF4C0();
  [v4 setText_];

  v6 = sub_257E002B8();
  if (v6)
  {
    v7 = v6;
    v8 = sub_257ECF4C0();
    [v7 setText_];
  }

  v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel) sizeToFit];
  v10 = *(v3 + v9);
  sub_257CF2390();

  v11 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel;
  v12 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel);
  if (v12)
  {
    [v12 sizeToFit];
    v13 = *(v3 + v11);
    if (v13)
    {
      v14 = v13;
      sub_257CF2390();
      sub_257CC8CC0(v13);
    }
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_257E2CDB8;
  v26 = v16;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D231C0;
  v24 = &block_descriptor_1073;
  v17 = _Block_copy(&v21);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_257E2CDD8;
  v26 = v18;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257E106F4;
  v24 = &block_descriptor_1077;
  v19 = _Block_copy(&v21);

  v20 = [v15 runningPropertyAnimatorWithDuration:0x10000 delay:v17 options:v19 animations:0.2 completion:0.0];
  _Block_release(v19);
  _Block_release(v17);
}

void sub_257E06A24()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 finishAnimationAtPosition_];
    }
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_257E2CDE0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_257D231C0;
  v8[3] = &block_descriptor_1085;
  v6 = _Block_copy(v8);

  v7 = [v4 runningPropertyAnimatorWithDuration:0x20000 delay:v6 options:0 animations:0.4 completion:0.2];
  _Block_release(v6);
}

void sub_257E06B6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = sub_257DFF59C();
  [v3 frame];

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    goto LABEL_5;
  }

  v13 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] traitCollection];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 != 1)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (!*MEMORY[0x277D76620])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v14 = *MEMORY[0x277D76620];
  v15 = sub_257CA7574();
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;

  v21 = [v13 horizontalSizeClass];
  if (v21 != 1 || v18 > 375.0 && v18 / v20 > 0.42)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (sub_257ECF030())
  {
LABEL_22:

    return;
  }

  v4 = sub_257DFF054();
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = v5;
  [v5 alpha];
  v8 = v7;

  if (v8 == 0.0)
  {
    goto LABEL_22;
  }

  v9 = *(*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  v10 = *&v9[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint];
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    [v12 constant];
  }

  else
  {
    v22 = *(*&v9[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView);
    v12 = v9;
    [v22 frame];
    CGRectGetHeight(v23);
  }
}

double sub_257E06E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257E06EC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDED0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v21 - v16;
  sub_257ECDEE0();
  (*(v4 + 104))(v10, *MEMORY[0x277CD8F78], v3);
  v18 = sub_257ECDEC0();
  v19 = *(v4 + 8);
  v19(v10, v3);
  result = (v19)(v17, v3);
  *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) = v18 & 1;
  return result;
}

void sub_257E07014()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277CB8598]);
  v8[4] = sub_257E2CD94;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_257E2D168;
  v8[3] = &block_descriptor_1053;
  v3 = _Block_copy(v8);
  sub_257ECC3F0();
  v4 = [v2 initWithEventHandler_];
  _Block_release(v3);

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addInteraction_];

    v7 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E071A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);

  v4 = sub_257ECF7F0();

  [v2 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EDBE40;
  v6 = sub_257DFF054();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 alpha];
  v10 = v9;

  v11 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] bottomAnchor];
  v12 = [v1 view];
  v13 = v12;
  if (v10 == 0.0)
  {
    if (!v12)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = [v12 bottomAnchor];

    v15 = [v11 constraintEqualToAnchor:v14 constant:-10.0];
    goto LABEL_11;
  }

  if (v12)
  {
    v16 = [v12 bottomAnchor];

    v17 = qword_281544FE0;
    v37 = *(*(*(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController) + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
    if (v17 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = qword_2815447E0;

    if (v18 != -1)
    {
      v19 = swift_once();
    }

    MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
    sub_257ECFD50();

    sub_257DD1E80(v38);
    v25 = v24;

    v15 = [v11 &selRef_CIImage + 6];
LABEL_11:
    *(v5 + 32) = v15;
    v26 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
    v27 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] trailingAnchor];
    v28 = [v1 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 trailingAnchor];

      v31 = [v27 &selRef_CIImage + 6];
      *(v5 + 40) = v31;
      v32 = [*&v1[v26] widthAnchor];
      v33 = [v32 constraintEqualToConstant_];

      *(v5 + 48) = v33;
      v34 = [*&v1[v26] heightAnchor];
      v35 = [v34 constraintEqualToConstant_];

      *(v5 + 56) = v35;
      *&v1[v3] = v5;

      v36 = sub_257ECF7F0();

      [v2 activateConstraints_];

      return;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

double sub_257E0768C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3 == 1 && (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0)
  {
    v1 = sub_257DFF3FC();
    v2 = sub_257D859BC();

    if (v2 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

void sub_257E07834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v81 - v7;
  v9 = sub_257ECCC80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppViewController(0);
  v81.receiver = v0;
  v81.super_class = v17;
  objc_msgSendSuper2(&v81, sel_viewWillLayoutSubviews);
  v18 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  if (sub_257E08680())
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  [v18 setAlpha_];

  v20 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v20)
  {
    v21 = v20;
    if (sub_257E08680())
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    [v21 setAlpha_];
  }

  type metadata accessor for ImageCache();
  sub_257C7487C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_257BE4084(v8, &qword_27F8F7838, &qword_257EE35C0);
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    sub_257C77984();
    (*(v10 + 8))(v16, v9);
  }

  v23 = sub_257DFF59C();
  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_31;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v23 setFrame_];
  v34 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v35 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (!v35)
  {
    return;
  }

  v36 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    v39 = [v1 view];
    if (v39)
    {
      v40 = v39;
      [v39 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      [v37 setFrame_];
      v49 = [v38 superview];
      if (v49)
      {
        v50 = v49;
        [v49 bounds];
        [v38 setFrame_];
      }

      goto LABEL_19;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_19:
  v51 = *&v1[v34];
  if (!v51)
  {
    return;
  }

  v52 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = [v1 view];
    if (v55)
    {
      v56 = v55;
      [v55 bounds];
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;

      [v53 setFrame_];
      v65 = [v54 superview];
      if (v65)
      {
        v66 = v65;
        [v65 bounds];
        [v54 setFrame_];
      }

      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:
  v67 = *&v1[v34];
  if (v67)
  {
    v68 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
    if (v68)
    {
      v69 = v67;
      v70 = v68;
      v71 = [v1 view];
      if (v71)
      {
        v72 = v71;
        [v71 bounds];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        [v69 setFrame_];
        sub_257E7DAB4();

        return;
      }

LABEL_33:
      __break(1u);
    }
  }
}

void sub_257E07D5C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v63 - v8;
  v10 = type metadata accessor for AppViewController(0);
  v65.receiver = v1;
  v65.super_class = v10;
  objc_msgSendSuper2(&v65, sel_viewWillAppear_, a1 & 1);
  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_257ECF900();
  v12 = v1;
  v13 = sub_257ECF8F0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_257C3FBD4(0, 0, v9, &unk_257EEBC28, v14);

  sub_257E0E5D4();
  if (v12[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] == 1)
  {
    v12[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] = 0;
    sub_257E0EF78(0);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v64 == 1)
  {
    if (qword_27F8F4618 == -1)
    {
      if ((byte_27F8F78A0 & 1) == 0)
      {
LABEL_8:
        swift_getKeyPath();
        swift_getKeyPath();
        v64 = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        sub_257DE3FF0();
        goto LABEL_9;
      }
    }

    else
    {
      swift_once();
      if ((byte_27F8F78A0 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    if (AXDeviceSupportsBackTap())
    {
      sub_257D231EC();
    }

    goto LABEL_14;
  }

LABEL_9:
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A0 == 1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v64 == 1)
  {
    sub_257E1A7A4();
  }

  v16 = *&v12[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureEventHandler];
  v17 = v12;
  v18 = [v17 description];
  v19 = sub_257ECF500();
  v21 = v20;

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_257EEBC30;
  *(v23 + 24) = v22;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v16 + 16);
  *(v16 + 16) = 0x8000000000000000;
  sub_257EC6E08(&unk_257EDB6B8, v23, v19, v21, isUniquelyReferenced_nonNull_native);

  *(v16 + 16) = v63;
  swift_endAccess();

  v25 = *&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arEventHandler];
  v26 = v17;
  v27 = [v26 description];
  v28 = sub_257ECF500();
  v30 = v29;

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_257EEBC40;
  *(v32 + 24) = v31;
  swift_beginAccess();
  swift_retain_n();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v25 + 16);
  *(v25 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v32, v28, v30, v33);

  *(v25 + 16) = v63;
  swift_endAccess();

  v34 = *&v26[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_ouEventHandler];
  v35 = v26;
  v36 = [v35 description];
  v37 = sub_257ECF500();
  v39 = v38;

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_257EEBC50;
  *(v41 + 24) = v40;
  swift_beginAccess();
  swift_retain_n();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v34 + 16);
  *(v34 + 16) = 0x8000000000000000;
  sub_257EC7CEC(&unk_257EEAF30, v41, v37, v39, v42);

  *(v34 + 16) = v63;
  swift_endAccess();

  v43 = *&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakEventHandler];
  v44 = v35;
  v45 = [v44 description];
  v46 = sub_257ECF500();
  v48 = v47;

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = &unk_257EEBC60;
  *(v50 + 24) = v49;
  swift_beginAccess();
  swift_retain_n();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v43 + 16);
  *(v43 + 16) = 0x8000000000000000;
  sub_257EC6A70(&unk_257EEBC68, v50, v46, v48, v51);

  *(v43 + 16) = v63;
  swift_endAccess();

  v52 = *&v44[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_advancedEventHandler];
  v53 = v44;
  v54 = [v53 description];
  v55 = sub_257ECF500();
  v57 = v56;

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = &unk_257EEBC70;
  *(v59 + 24) = v58;
  swift_beginAccess();
  swift_retain_n();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v52 + 16);
  *(v52 + 16) = 0x8000000000000000;
  sub_257EC7964(&unk_257EDE220, v59, v55, v57, v60);

  *(v52 + 16) = v63;
  swift_endAccess();

  sub_257E071A8();
  sub_257E2010C();
  v61 = *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  if (v61)
  {
    v62 = v61;
    sub_257BDB830();
  }

  sub_257E1F554();
  sub_257E1FD28();
}

BOOL sub_257E08680()
{
  swift_beginAccess();
  v0 = qword_27F8FA070 != 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  sub_257ECFD50();

  if (v11 && v11 == 1)
  {
  }

  else
  {
    v7 = sub_257ED0640();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_257DFF3FC();
  v9 = sub_257D859BC();

  if (v9 < 1)
  {
    return 0;
  }

  if (sub_257D71788() & 1) == 0 || (sub_257D71788() & 1) != 0 && (byte_27F912FE8)
  {
    return 1;
  }

  return v0;
}

double sub_257E088B8(char a1)
{
  v250 = sub_257ECFDF0();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v3, v4, v5, v6);
  v248 = v244 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E38, &qword_257EEBBA8);
  v253 = *(v254 - 8);
  MEMORY[0x28223BE20](v254, v8, v9, v10, v11);
  v252 = v244 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v251 = v244 - v18;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247, v19, v20, v21, v22);
  v245 = v244 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v24 - 8, v25, v26, v27, v28);
  v277 = v244 - v29;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E48, &qword_257EEBBB8);
  v283 = *(v279 - 8);
  MEMORY[0x28223BE20](v279, v30, v31, v32, v33);
  v276 = v244 - v34;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E50, &unk_257EEBBC0);
  v284 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v35, v36, v37, v38);
  v278 = v244 - v39;
  v275 = sub_257ECF130();
  v264 = *(v275 - 8);
  MEMORY[0x28223BE20](v275, v40, v41, v42, v43);
  v274 = v244 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_257ECFD10();
  v272 = *(v273 - 1);
  MEMORY[0x28223BE20](v273, v45, v46, v47, v48);
  v271 = v244 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v265 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v50, v51, v52, v53);
  v55 = v244 - v54;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  MEMORY[0x28223BE20](v262, v56, v57, v58, v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
  MEMORY[0x28223BE20](v65, v66, v67, v68, v69);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E60, &qword_257EEBBD0);
  v266 = *(v267 - 1);
  MEMORY[0x28223BE20](v267, v70, v71, v72, v73);
  v261 = v244 - v74;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54E0, &unk_257ED9EB0);
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270, v75, v76, v77, v78);
  v268 = v244 - v79;
  v80 = type metadata accessor for AppViewController(0);
  v291.receiver = v1;
  v291.super_class = v80;
  objc_msgSendSuper2(&v291, sel_viewDidAppear_, a1 & 1);
  v263 = v1;
  sub_257DF5CD8(0, 0xE000000000000000);
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v81 = xmmword_281548330;
    swift_beginAccess();
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
    sub_257ECDD30();
    swift_endAccess();

    v244[1] = v81;
    swift_beginAccess();
    sub_257ECC3F0();
    sub_257ECDD30();
    swift_endAccess();

    v82 = qword_281548348;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
    v282 = v82;
    v286 = v83;
    sub_257ECDD30();
    swift_endAccess();
    v84 = MEMORY[0x277CBCEC8];
    sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
    sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, v84);
    v285 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v84);
    v85 = v261;
    v281 = v55;
    sub_257ECDC60();
    v86 = v271;
    sub_257ECFD00();
    v87 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v88 = v264;
    v89 = v274;
    v90 = v275;
    (v264[13])(v274, *MEMORY[0x277D851C0], v275);
    v91 = sub_257ECFD90();
    (v88[1])(v89, v90);
    v292 = v91;
    sub_257BD2D4C(&unk_281544490, &qword_27F8F9E60, &qword_257EEBBD0, MEMORY[0x277CBCB00]);
    v92 = sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
    v93 = v268;
    v94 = v267;
    v275 = v87;
    v274 = v92;
    sub_257ECDE00();

    (*(v272 + 8))(v86, v273);
    (*(v266 + 8))(v85, v94);
    v95 = swift_allocObject();
    v96 = v263;
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    *(v97 + 16) = sub_257E2C36C;
    *(v97 + 24) = v95;
    sub_257BD2D4C(&unk_2815442A8, &unk_27F8F54E0, &unk_257ED9EB0, MEMORY[0x277CBCD20]);
    v98 = v270;
    v99 = sub_257ECDE50();

    (*(v269 + 8))(v93, v98);
    *&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription] = v99;

    v100 = v287;
    if (qword_27F8F4618 != -1)
    {
      swift_once();
    }

    if (byte_27F8F78A0 == 1)
    {
      v101 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription;
      if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription])
      {
        sub_257ECC3F0();
        sub_257ECDCC0();
      }

      v102 = v281;
      *&v96[v101] = 0;

      swift_beginAccess();
      sub_257ECDD30();
      swift_endAccess();
      v103 = sub_257ECDD90();
      (*(v265 + 8))(v102, v100);
      v292 = v103;
      v290 = *&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue];
      v104 = v290;
      v105 = sub_257ECFCF0();
      v106 = v277;
      (*(*(v105 - 8) + 56))(v277, 1, 1, v105);
      v107 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8, &unk_257EEBB10);
      sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8, &unk_257EEBB10, MEMORY[0x277CBCD90]);
      v108 = v276;
      sub_257ECDE20();
      sub_257BE4084(v106, &unk_27F8F8740, &qword_257EEBBB0);

      sub_257BD2D4C(&qword_281544410, &qword_27F8F9E48, &qword_257EEBBB8, MEMORY[0x277CBCB50]);
      v109 = v278;
      v110 = v279;
      sub_257ECDE10();
      (*(v283 + 8))(v108, v110);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&qword_281544358, &unk_27F8F9E50, &unk_257EEBBC0, MEMORY[0x277CBCC18]);
      v111 = v280;
      v112 = sub_257ECDE50();

      v284[1](v109, v111);
      *&v96[v101] = v112;
    }

    v113 = &v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions];
    swift_beginAccess();
    v264 = v113;
    v114 = *v113;
    if ((*v113 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_257ED01D0();
      sub_257ECDCD0();
      sub_257E2C2E0(&unk_27F8F9E20, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      sub_257ECFAA0();
      v116 = v292;
      v115 = v293;
      v117 = v294;
      v118 = v295;
      v55 = v296;
    }

    else
    {
      v119 = -1 << *(v114 + 32);
      v115 = v114 + 56;
      v117 = ~v119;
      v120 = -v119;
      v121 = v120 < 64 ? ~(-1 << v120) : -1;
      v55 = (v121 & *(v114 + 56));
      swift_bridgeObjectRetain_n();
      v118 = 0;
      v116 = v114;
    }

    v273 = v117;
    v122 = (v117 + 64) >> 6;
    if (v116 < 0)
    {
      break;
    }

LABEL_15:
    v123 = v118;
    v124 = v55;
    v125 = v118;
    if (v55)
    {
LABEL_19:
      v126 = (v124 - 1) & v124;
      v127 = *(*(v116 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v124)))));
      sub_257ECC3F0();
      if (v127)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v125 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v125 >= v122)
      {
        goto LABEL_25;
      }

      v124 = *(v115 + 8 * v125);
      ++v123;
      if (v124)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v128 = sub_257ED0230();
    if (!v128)
    {
      break;
    }

    v288 = v128;
    sub_257ECDCD0();
    swift_dynamicCast();
    v125 = v118;
    v126 = v55;
    if (!v289)
    {
      break;
    }

LABEL_23:
    sub_257ECDCC0();

    v118 = v125;
    v55 = v126;
    if ((v116 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_257C02520(v116);

  *v264 = MEMORY[0x277D84FA0];

  v129 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v130 = v287;
  v131 = v265;
  v132 = v281;
  *&v96[v129] = 0;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v133 = sub_257ECDD90();
  v135 = *(v131 + 8);
  v134 = v131 + 8;
  v273 = v135;
  v135(v132, v130);
  v262 = v133;
  v289 = v133;
  v288 = *&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue];
  v136 = v288;
  v137 = sub_257ECFCF0();
  v138 = *(v137 - 8);
  v139 = v277;
  v272 = *(v138 + 56);
  v271 = (v138 + 56);
  (v272)(v277, 1, 1, v137);
  v140 = v136;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8, &unk_257EEBB10);
  v142 = sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8, &unk_257EEBB10, MEMORY[0x277CBCD90]);
  v143 = v276;
  v270 = v141;
  v269 = v142;
  sub_257ECDE20();
  sub_257BE4084(v139, &unk_27F8F8740, &qword_257EEBBB0);

  v144 = sub_257BD2D4C(&qword_281544410, &qword_27F8F9E48, &qword_257EEBBB8, MEMORY[0x277CBCB50]);
  v145 = v278;
  v146 = v279;
  v268 = v144;
  sub_257ECDE10();
  v147 = *(v283 + 8);
  v283 += 8;
  v267 = v147;
  (v147)(v143, v146);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = sub_257BD2D4C(&qword_281544358, &unk_27F8F9E50, &unk_257EEBBC0, MEMORY[0x277CBCC18]);
  v149 = v280;
  v266 = v148;
  v150 = sub_257ECDE50();

  v151 = v284[1];
  ++v284;
  v151(v145, v149);
  *&v96[v129] = v150;

  v152 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v152] = 0;

  swift_beginAccess();
  v153 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v154 = v287;
  v155 = sub_257ECDD90();
  v273(v153, v154);
  v261 = v155;
  v288 = v140;
  v289 = v155;
  v156 = v277;
  (v272)(v277, 1, 1, v137);
  v157 = v140;
  v158 = v276;
  sub_257ECDE20();
  sub_257BE4084(v156, &unk_27F8F8740, &qword_257EEBBB0);

  v159 = v278;
  v160 = v279;
  sub_257ECDE10();
  (v267)(v158, v160);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v161 = v280;
  v162 = sub_257ECDE50();

  v151(v159, v161);
  *&v96[v152] = v162;

  v163 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v163] = 0;

  swift_beginAccess();
  v164 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v165 = v287;
  v166 = sub_257ECDD90();
  v273(v164, v165);
  v260 = v166;
  v288 = v157;
  v289 = v166;
  v167 = v277;
  (v272)(v277, 1, 1, v137);
  v168 = v157;
  v169 = v276;
  sub_257ECDE20();
  sub_257BE4084(v167, &unk_27F8F8740, &qword_257EEBBB0);

  v170 = v278;
  v171 = v279;
  sub_257ECDE10();
  (v267)(v169, v171);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v172 = v280;
  v173 = sub_257ECDE50();

  v151(v170, v172);
  *&v96[v163] = v173;

  v174 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v174] = 0;

  swift_beginAccess();
  v175 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v176 = v287;
  v177 = sub_257ECDD90();
  v273(v175, v176);
  v259 = v177;
  v288 = v168;
  v289 = v177;
  v178 = v277;
  (v272)(v277, 1, 1, v137);
  v179 = v168;
  v180 = v276;
  sub_257ECDE20();
  sub_257BE4084(v178, &unk_27F8F8740, &qword_257EEBBB0);

  v181 = v278;
  v182 = v279;
  sub_257ECDE10();
  (v267)(v180, v182);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v183 = v280;
  v184 = sub_257ECDE50();

  v151(v181, v183);
  *&v96[v174] = v184;

  v185 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v185] = 0;

  swift_beginAccess();
  v186 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v187 = v287;
  v188 = sub_257ECDD90();
  v273(v186, v187);
  v258 = v188;
  v288 = v179;
  v289 = v188;
  v189 = v277;
  (v272)(v277, 1, 1, v137);
  v190 = v179;
  v191 = v276;
  sub_257ECDE20();
  sub_257BE4084(v189, &unk_27F8F8740, &qword_257EEBBB0);

  v192 = v278;
  v193 = v279;
  sub_257ECDE10();
  (v267)(v191, v193);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v194 = v280;
  v195 = sub_257ECDE50();

  v151(v192, v194);
  *&v96[v185] = v195;

  v196 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v196] = 0;

  swift_beginAccess();
  v197 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v198 = v287;
  v199 = sub_257ECDD90();
  v273(v197, v198);
  v257 = v199;
  v288 = v190;
  v289 = v199;
  v200 = v277;
  (v272)(v277, 1, 1, v137);
  v201 = v190;
  v202 = v276;
  sub_257ECDE20();
  sub_257BE4084(v200, &unk_27F8F8740, &qword_257EEBBB0);

  v203 = v278;
  v204 = v279;
  sub_257ECDE10();
  (v267)(v202, v204);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v205 = v280;
  v206 = sub_257ECDE50();

  v151(v203, v205);
  *&v96[v196] = v206;

  v207 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v207] = 0;

  swift_beginAccess();
  v208 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v209 = v287;
  v210 = sub_257ECDD90();
  v273(v208, v209);
  v256 = v210;
  v288 = v201;
  v289 = v210;
  v211 = v277;
  (v272)(v277, 1, 1, v137);
  v212 = v201;
  v213 = v276;
  sub_257ECDE20();
  sub_257BE4084(v211, &unk_27F8F8740, &qword_257EEBBB0);

  v214 = v278;
  v215 = v279;
  sub_257ECDE10();
  (v267)(v213, v215);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v216 = v280;
  v217 = sub_257ECDE50();

  v151(v214, v216);
  *&v96[v207] = v217;

  v218 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription;
  v219 = v134;
  if (*&v96[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v96[v218] = 0;

  swift_beginAccess();
  v220 = v281;
  sub_257ECDD30();
  swift_endAccess();
  v221 = v287;
  v222 = sub_257ECDD90();
  v265 = v219;
  v273(v220, v221);
  v255 = v222;
  v288 = v212;
  v289 = v222;
  v223 = v277;
  (v272)(v277, 1, 1, v137);
  v224 = v276;
  sub_257ECDE20();
  sub_257BE4084(v223, &unk_27F8F8740, &qword_257EEBBB0);

  v225 = v278;
  v226 = v279;
  sub_257ECDE10();
  (v267)(v224, v226);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v227 = v280;
  v228 = sub_257ECDE50();

  v151(v225, v227);
  *&v96[v218] = v228;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v289)
  {
    v276 = v289;
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v284 = objc_opt_self();
    v229 = [v284 mainRunLoop];
    v289 = v229;
    v278 = sub_257ED0080();
    v230 = *(v278 - 1);
    v277 = *(v230 + 56);
    v279 = v230 + 56;
    v231 = v251;
    (v277)(v251, 1, 1, v278);
    v283 = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
    v280 = sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v232 = v245;
    sub_257ECDDF0();
    sub_257BE4084(v231, &unk_27F8F4DB0, &unk_257ED8210);

    v273(v220, v221);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v275 = MEMORY[0x277CBCD60];
    v274 = sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
    v233 = v247;
    sub_257ECDE50();

    v234 = *(v246 + 8);
    v234(v232, v233);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v235 = [v284 mainRunLoop];
    v289 = v235;
    (v277)(v231, 1, 1, v278);
    sub_257ECDDF0();
    sub_257BE4084(v231, &unk_27F8F4DB0, &unk_257ED8210);

    v273(v220, v221);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257ECDE50();

    v234(v232, v233);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    v236 = [objc_opt_self() defaultCenter];
    v237 = v248;
    sub_257ECFE00();

    sub_257E2C2E0(&qword_281543EB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v238 = v250;
    v239 = sub_257ECDD90();
    (*(v249 + 8))(v237, v238);
    v289 = v239;
    v240 = [v284 mainRunLoop];
    v288 = v240;
    (v277)(v231, 1, 1, v278);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E68, &qword_257EEBBD8);
    sub_257BD2D4C(&qword_2815441F0, &qword_27F8F9E68, &qword_257EEBBD8, MEMORY[0x277CBCD90]);
    v241 = v252;
    sub_257ECDDF0();
    sub_257BE4084(v231, &unk_27F8F4DB0, &unk_257ED8210);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544278, &unk_27F8F9E38, &qword_257EEBBA8, v275);
    v242 = v254;
    sub_257ECDE50();

    (*(v253 + 8))(v241, v242);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    sub_257E1A59C();
  }

  else
  {
  }

  return result;
}

void sub_257E0B3A8(char *a1, char a2, uint64_t a3, double a4, double a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4 + -0.5;
    if (a4 + -0.5 > 0.5)
    {
      v11 = 0.5;
    }

    if (v11 <= -0.5)
    {
      v11 = -0.5;
    }

    if (a5 <= 0.5)
    {
      v13 = 2.5;
      if (a5 * 1.4 + 0.3 <= 2.5)
      {
        v13 = a5 * 1.4 + 0.3;
      }
    }

    else
    {
      v12 = (a5 + -0.5) * 3.0 + 1.0;
      v13 = 2.5;
      if (v12 <= 2.5)
      {
        if ((a2 & 1) == 0)
        {
LABEL_9:
          if (v12 <= 0.3)
          {
            v12 = 0.3;
          }

          v14 = v8;
          sub_257E1C034(&v14, v11, v12);
        }

LABEL_12:

        return;
      }
    }

    v12 = v13;
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }
}

void sub_257E0B4B8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C4E8;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_885;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 72);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0BA74(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C5FC;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_966;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 76);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0C030(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C5D0;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_958;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 77);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0C5EC(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
    sub_257ECFD50();

    v9 = sub_257C592D0(1u, v10);

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) = v9;
  }
}

void sub_257E0C784(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
    sub_257ECFD50();

    v9 = sub_257C592E8(1, v10);

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) = v9;
  }
}

void sub_257E0C91C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C58C;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_938;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 73);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0CED8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C560;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_930;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 74);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0D494(char a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_257D36B68();
    sub_257C9F3E4();
  }

  else
  {
    sub_257D383B4();
    v20 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
    if (v20)
    {
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v21 = v20;
      v30 = v13;
      v22 = v21;
      v29 = sub_257ECFD30();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      aBlock[4] = sub_257E2C558;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_924;
      v28 = _Block_copy(aBlock);
      v24 = v22;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      sub_257ED0180();
      v26 = v28;
      v25 = v29;
      MEMORY[0x259C72880](0, v19, v11, v28);
      _Block_release(v26);

      (*(v5 + 8))(v11, v4);
      (*(v30 + 8))(v19, v12);
    }
  }
}

void sub_257E0D7C4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v52 = sub_257ECFD30();
    v22 = swift_allocObject();
    v50 = v19;
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v62 = sub_257E2C520;
    v63 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_257D231C0;
    v61 = &block_descriptor_910;
    v23 = _Block_copy(&aBlock);
    v53 = v21;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v52;
    MEMORY[0x259C72880](0, v18, v10, v23);
    _Block_release(v23);

    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v18, v51);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    swift_beginAccess();
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    aBlock = v25[15];
    v59 = v26;
    v60 = v27;
    v61 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v49[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v35 = v55;
    if (!v55)
    {
      goto LABEL_13;
    }

    v36 = v54;
    v37 = swift_beginAccess();
    v38 = v25[12];
    v39 = v25[13];
    v54 = v25[11];
    v55 = v38;
    v56 = v39;
    MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
    *&v49[-16] = &v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v44 = v57;
    if (*(v57 + 16))
    {
      v45 = sub_257C03F6C(v36, v35);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(v44 + 56) + 296 * v45 + 75);

        if (v50 != v48)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v54) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0DD80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v10 == 1)
    {
      v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService;
      v5 = sub_257D21CB8(0, 0, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      [v5 setAutoFocusEnabled_];
      v6 = *&v3[v4];
      v7 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8)
      {
        v9 = v8;
        [v9 runWithConfiguration:v5 options:1];
      }
    }

    else
    {
      v5 = v3;
    }
  }
}

void *sub_257E0DF44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v7 = sub_257ECF120();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_257ECF190();
  v14 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v15, v16, v17, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v24 = sub_257ECFD30();
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v23;
    aBlock[4] = a4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = v27;
    v26 = _Block_copy(aBlock);
    v27 = v23;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v20, v13, v26);
    _Block_release(v26);

    (*(v29 + 8))(v13, v7);
    return (*(v14 + 8))(v20, v28);
  }

  return result;
}

double sub_257E0E268(char a1)
{
  if (a1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = qword_2815447E0;

    if (v1 != -1)
    {
      v2 = swift_once();
    }

    MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    if (v12)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v11;
      v9[3] = v12;
      v9[4] = v8;

      sub_257ECC3F0();
      sub_257D61CE8(v11, v12, 0, sub_257C7E064, v9);

      v10 = sub_257DFF3FC();
      sub_257C7C61C();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

void sub_257E0E4C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v4)
    {
      sub_257D34520();
    }
  }
}

void sub_257E0E5D4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI;
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI) & 1) == 0)
  {
    v2 = [v0 childViewControllers];
    sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
    v3 = sub_257ECF810();

    v4 = sub_257DFF054();
    v12 = v4;
    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    v11[2] = &v12;
    v9 = sub_257DFC4AC(sub_257E2D178, v11, v3);

    if ((v9 & 1) == 0)
    {
      sub_257E1009C();
      sub_257E11B34();
      sub_257E11128();
      sub_257DFEA6C();
      sub_257DFD6C4();
      *(v0 + v1) = 1;
      sub_257E0EF78(0);
      sub_257E0E708();
      sub_257E0EBEC();
      sub_257D3C144(v10);
      sub_257D3C600();
      sub_257E1AAFC();
    }
  }
}

void sub_257E0E708()
{
  v1 = sub_257E001D8();
  [v1 setAlpha_];

  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 addSubview_];

  v5 = *&v0[v2];
  v6 = [v5 topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  if (qword_281544A68 != -1)
  {
    swift_once();
  }

  v11 = *&qword_2815482F8;
  v12 = [v6 constraintEqualToAnchor:v10 constant:*&qword_2815482F8];

  v13 = *&v5[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard];
  *&v5[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard] = v12;

  v14 = *&v0[v2];
  v15 = [v14 bottomAnchor];
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 bottomAnchor];
  v20 = [v15 constraintEqualToAnchor:v19 constant:-v11];

  v21 = *&v14[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard];
  *&v14[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257EDBE40;
  v23 = [*&v0[v2] leadingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintGreaterThanOrEqualToAnchor:v26 constant:v11];
  *(v22 + 32) = v27;
  v28 = [*&v0[v2] trailingAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintLessThanOrEqualToAnchor:v31 constant:-v11];
  *(v22 + 40) = v32;
  v33 = [*&v0[v2] centerXAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  v36 = [v34 centerXAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v22 + 48) = v37;
  v38 = *(*&v0[v2] + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard);
  if (!v38)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v39 = objc_opt_self();
  *(v22 + 56) = v38;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v40 = v38;
  v41 = sub_257ECF7F0();

  [v39 activateConstraints_];

  v42 = sub_257DFF054();
  swift_unknownObjectWeakAssign();
}

void sub_257E0EBEC()
{
  v1 = sub_257E002B8();
  if (!v1)
  {
    return;
  }

  v31 = v1;
  [v31 setAlpha_];
  [v31 setHidden_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v31 centerXAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX;
  v10 = *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = v8;

  v11 = [v31 centerYAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  v16 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY;
  v17 = *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257EDED10;
  v19 = *&v31[v9];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v18 + 32) = v19;
  v20 = *&v31[v16];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v18 + 40) = v20;
  v21 = v20;
  v22 = v19;
  v23 = [v31 widthAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 heightAnchor];

  v28 = [v23 constraintLessThanOrEqualToAnchor:v27 multiplier:0.8];
  *(v18 + 48) = v28;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v29 = sub_257ECF7F0();

  [v26 activateConstraints_];

  v30 = sub_257DFF054();
  swift_unknownObjectWeakAssign();
}

void sub_257E0EF78(char a1)
{
  v2 = v1;
  v4 = sub_257DFF3FC();
  sub_257C7C61C();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription))
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v5 = sub_257DFF054();
  v6 = *&v5[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_containedCard];

  sub_257DD1100();
  v7 = *(*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  LOBYTE(v6) = v7[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition];
  v8 = v7;
  sub_257E79DDC(v6);
  v9 = *&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint];
  if (v9)
  {
    v10 = v9;
    sub_257DD1E80(0);
    [v10 setConstant_];

    v8 = v10;
  }

  v12 = sub_257DFEF64();
  sub_257C7F9D0(a1 & 1);

  v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  sub_257D839A4();

  if (qword_281544FE0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v14 = qword_281548348;
  v15 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v88[2] = *v15;
  v88[3] = v16;
  v88[4] = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  v24 = &v86;
  sub_257ECFD50();

  v25 = v86;
  v26 = (v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  v27 = swift_beginAccess();
  v28 = *v26;
  v29 = v26[1];
  v30 = v26[2];
  *&v86 = v28;
  *(&v86 + 1) = v29;
  v87 = v30;
  MEMORY[0x28223BE20](v27, v31, v32, v33, v34);

  sub_257ECFD50();

  *&v86 = v25;
  sub_257EB0FD8(v88[0]);
  v35 = v86;
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer;
  v84 = v2;
  v36 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  sub_257C7EFF8(v36, v37);
  v39 = v38;

  v2 = v39 & 0xFFFFFFFFFFFFFF8;
  if (v39 >> 62)
  {
    v40 = sub_257ED0210();
    if (v40)
    {
LABEL_10:
      v41 = 0;
      v24 = (v39 & 0xC000000000000001);
      v42 = MEMORY[0x277D84F90];
      do
      {
        v43 = v41;
        while (1)
        {
          if (v24)
          {
            v44 = MEMORY[0x259C72E20](v43, v39);
          }

          else
          {
            if (v43 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v44 = *(v39 + 8 * v43 + 32);
          }

          v45 = v44;
          v41 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          swift_getObjectType();
          v46 = swift_conformsToProtocol2();
          if (v46)
          {
            if (v45)
            {
              break;
            }
          }

          ++v43;
          if (v41 == v40)
          {
            goto LABEL_32;
          }
        }

        v81 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_257BFD91C(0, *(v42 + 16) + 1, 1, v42);
        }

        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        v50 = v49 + 1;
        v51 = v81;
        if (v49 >= v48 >> 1)
        {
          v53 = sub_257BFD91C((v48 > 1), v49 + 1, 1, v42);
          v50 = v49 + 1;
          v51 = v81;
          v42 = v53;
        }

        *(v42 + 16) = v50;
        v52 = (v42 + 16 * v49);
        v52[4] = v45;
        v52[5] = v51;
      }

      while (v41 != v40);
      goto LABEL_32;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_10;
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_32:

  v54 = *(v42 + 16);
  if (v54)
  {
    v55 = 0;
    v56 = v84;
    do
    {
      if (v55 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v57 = v55 + 1;
      v86 = *(v42 + 32 + 16 * v55);
      v58 = v86;
      sub_257E0F72C(&v86, v35, v84);

      v55 = v57;
    }

    while (v54 != v57);
  }

  else
  {
    v56 = v84;
  }

  v59 = *(v56 + v82);
  sub_257C7EFF8(v59, v60);
  v42 = v61;

  v24 = (v42 & 0xFFFFFFFFFFFFFF8);
  if (v42 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v63 = MEMORY[0x277D84F90];
    if (i)
    {
      v64 = 0;
      v65 = MEMORY[0x277D84F90];
LABEL_42:
      v66 = v64;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x259C72E20](v66, v42);
        }

        else
        {
          if (v66 >= *(v24 + 2))
          {
            goto LABEL_73;
          }

          v67 = *(v42 + 8 * v66 + 32);
        }

        v68 = v67;
        v64 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        swift_getObjectType();
        v69 = swift_conformsToProtocol2();
        if (v69 && v68)
        {
          v83 = v69;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          if ((v70 & 1) == 0)
          {
            v65 = sub_257BFD91C(0, v65[2] + 1, 1, v65);
          }

          v72 = v65[2];
          v71 = v65[3];
          v73 = v72 + 1;
          v74 = v83;
          if (v72 >= v71 >> 1)
          {
            v76 = sub_257BFD91C((v71 > 1), v72 + 1, 1, v65);
            v73 = v72 + 1;
            v74 = v83;
            v65 = v76;
          }

          v65[2] = v73;
          v75 = &v65[2 * v72];
          v75[4] = v68;
          v75[5] = v74;
          if (v64 != i)
          {
            goto LABEL_42;
          }

          goto LABEL_59;
        }

        ++v66;
        if (v64 == i)
        {
          goto LABEL_59;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v65 = MEMORY[0x277D84F90];
LABEL_59:

    v88[0] = v63;
    v77 = v65[2];
    if (!v77)
    {
      break;
    }

    v78 = 0;
    v63 = MEMORY[0x277D84F90];
    v24 = v84;
    while (v78 < v65[2])
    {
      v86 = *&v65[2 * v78 + 4];
      v42 = v86;
      sub_257E0FC80(&v86, &v85);

      if (v85)
      {
        v42 = v88;
        MEMORY[0x259C72300]();
        if (*(v88[0] + 16) >= *(v88[0] + 24) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();
        v63 = v88[0];
      }

      if (v77 == ++v78)
      {
        goto LABEL_68;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v24 = v84;
LABEL_68:

  *(v24 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers) = v63;

  sub_257E006B0();
  sub_257E071A8();
  v79 = *(v24 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v79)
  {
    v80 = v79;
    sub_257BDB830();
  }
}

void sub_257E0F72C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v8 = *(v5 + 56);
  v8(v55, ObjectType, v5);
  if (!sub_257C3EF48(v55[0], a2))
  {
    goto LABEL_15;
  }

  v8(v55, ObjectType, v5);
  v9 = LOBYTE(v55[0]);
  v10 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  swift_beginAccess();
  v11 = *(a3 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_257C040E4(v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
    v14 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v14 = MEMORY[0x277D84FA0];
LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v15 = sub_257ED0210();
    goto LABEL_14;
  }

LABEL_13:
  v15 = *(v14 + 16);
LABEL_14:

  if (v15)
  {
    return;
  }

LABEL_15:
  v8(&v56, ObjectType, v5);
  v17 = v56;
  v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  swift_beginAccess();
  v51 = v18;
  v52 = v8;
  v19 = *(a3 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_257C040E4(v17);
    if ((v21 & 1) == 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    v22 = *(*(v19 + 56) + 8 * v20);

    if (v22)
    {
      v48 = v5;
      if ((v22 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_257ED01D0();
        sub_257ECDCD0();
        sub_257E2C2E0(&unk_27F8F9E20, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
        sub_257ECFAA0();
        v23 = v55[0];
        v24 = v55[1];
        v25 = v55[2];
        v26 = v55[3];
        v27 = v55[4];
      }

      else
      {
        v28 = -1 << *(v22 + 32);
        v24 = v22 + 56;
        v25 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v22 + 56);

        v26 = 0;
        v23 = v22;
      }

      v49 = v6;
      v50 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v31 = sub_257ED0230();
        if (!v31)
        {
          break;
        }

        v53[0] = v31;
        sub_257ECDCD0();
        swift_dynamicCast();
        v32 = v26;
        v33 = v27;
        if (!*v54)
        {
          break;
        }

        while (1)
        {
          sub_257ECDCC0();

          v26 = v32;
          v27 = v33;
          v23 = v50;
          if (v50 < 0)
          {
            break;
          }

LABEL_28:
          v34 = v26;
          v35 = v27;
          v32 = v26;
          if (!v27)
          {
            while (1)
            {
              v32 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v32 >= ((v25 + 64) >> 6))
              {
                goto LABEL_35;
              }

              v35 = *(v24 + 8 * v32);
              ++v34;
              if (v35)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
            return;
          }

LABEL_32:
          v33 = (v35 - 1) & v35;
          v36 = *(*(v23 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v35)))));
          sub_257ECC3F0();
          if (!v36)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_35:
      sub_257C02520(v50);
      v5 = v48;
      v6 = v49;
      v8 = v52;
      goto LABEL_36;
    }
  }

LABEL_37:
  v37 = ObjectType;
  v38 = v8;
  v39 = v5;
  v38(&v56, ObjectType, v5);
  v40 = v56;
  v41 = sub_257E01214(v54);
  v43 = sub_257DFE504(v53, v40);
  if (*v42 >= 2uLL)
  {
    v44 = v42;

    *v44 = MEMORY[0x277D84FA0];
  }

  (v43)(v53, 0);
  (v41)(v54, 0);
  v52(v54, v37, v39);
  v45 = sub_257E353D8(v54, v6);
  v52(&v56, v37, v39);
  v46 = v56;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(a3 + v51);
  *(a3 + v51) = 0x8000000000000000;
  sub_257EC7D14(v45, v46, isUniquelyReferenced_nonNull_native);
  *(a3 + v51) = v53[0];
  swift_endAccess();
}

void *sub_257E0FC80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E10, &qword_257EEBB98);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v39 = &v37[-v16];
  v17 = *a1;
  v18 = a1[1];
  ObjectType = swift_getObjectType();
  v20 = v18[7];
  v20(&v44, ObjectType, v18);
  v21 = sub_257E42730(&v44, v17);
  if (v21)
  {
    v22 = v21;
    v20(&v44, ObjectType, v18);
    if (v44 == 4 || (v20(&v44, ObjectType, v18), v44 == 13) || (v20(&v44, ObjectType, v18), v44 == 10) || (result = (v20)(&v44, ObjectType, v18), v44 == 9))
    {
      v44 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF8, &qword_257EEBB40);
      sub_257BD2D4C(&unk_2815441D8, &qword_27F8F9DF8, &qword_257EEBB40, MEMORY[0x277CBCD90]);
      v24 = v39;
      sub_257ECDE10();
      sub_257BD2D4C(&qword_27F8F9E18, &qword_27F8F9E10, &qword_257EEBB98, MEMORY[0x277CBCC18]);
      v25 = v41;
      v26 = sub_257ECDD90();

      result = (*(v40 + 8))(v24, v25);
      v22 = v26;
    }
  }

  else
  {
    v40 = v4;
    v41 = v3;
    sub_257ECD420();
    v27 = v17;
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v30 = 136315138;
      v38 = v29;
      v31 = (v20)(&v43, ObjectType, v18);
      v32 = sub_257D14A40(v31);
      v34 = sub_257BF1FC8(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_257BAC000, v28, v38, "Could not create description publisher for control: %s", v30, 0xCu);
      v35 = v39;
      v36 = __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x259C74820](v35, -1, -1, v36);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    result = (*(v40 + 8))(v10, v41);
    v22 = 0;
  }

  *v42 = v22;
  return result;
}

void sub_257E1009C()
{
  v1 = v0;
  v2 = sub_257DFF054();
  [v1 addChildViewController_];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
  v6 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v4 addSubview_];

  v8 = [*&v1[v5] view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = [*&v1[v5] view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  sub_257EB6FD8(v12, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  [*&v1[v5] didMoveToParentViewController_];
  v14 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView;
  v15 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *&v1[v5];
  v17 = v15;
  if (![v16 view])
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v18 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  v19 = swift_beginAccess();
  MEMORY[0x259C72300](v19);
  if (*((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();

  v20 = *&v1[v14];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = *(*&v1[v5] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer);
  v22 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  swift_beginAccess();
  v23 = v20;
  v24 = v21;
  MEMORY[0x259C72300]();
  if (*((*(v20 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
}

void sub_257E10374(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator);
  if (v8)
  {
    [v8 stopAnimation_];
  }

  v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView;
  v10 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *(v3 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v3 + v9) = 0;

  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v13 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView;
  v14 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v14 bounds];
  [v12 setFrame_];
  [v12 setAutoresizingMask_];
  [v12 setClipsToBounds_];
  [v12 setAlpha_];
  v15 = *(v3 + v13);
  if (!v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v15 addSubview_];
  v16 = *(v3 + v9);
  *(v3 + v9) = v12;
  v17 = v12;

  v18 = [objc_opt_self() effectWithBlurRadius_];
  if (a1)
  {
    v19 = 0.1;
  }

  else
  {
    v19 = 0.35;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:v19];
  v21 = *(v3 + v7);
  *(v3 + v7) = v20;
  v22 = v20;

  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v36 = sub_257E2C248;
    v37 = v23;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257E106F4;
    v35 = &block_descriptor_822;
    v24 = _Block_copy(&v32);
    sub_257BBD7E4(a2, a3);

    [v22 addCompletion_];
    _Block_release(v24);
  }

  v25 = *(v3 + v7);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  *(v26 + 24) = v18;
  v36 = sub_257E2C27C;
  v37 = v26;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257D231C0;
  v35 = &block_descriptor_828;
  v27 = _Block_copy(&v32);
  v28 = v17;
  v29 = v25;
  v30 = v18;

  [v29 addAnimations_];
  _Block_release(v27);

  v31 = *(v3 + v7);
  if (v31)
  {
    [v31 startAnimation];

    return;
  }

LABEL_19:
  __break(1u);
}

double sub_257E106F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);

  return result;
}

void sub_257E10748(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (!*(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView))
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_257E2C1EC;
    v37 = v28;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257D231C0;
    v35 = &block_descriptor_796;
    v29 = _Block_copy(&v32);

    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v36 = sub_257E2D174;
    v37 = v30;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257E106F4;
    v35 = &block_descriptor_802;
    v31 = _Block_copy(&v32);
    sub_257BBD7E4(a2, a3);

    v20 = [v27 runningPropertyAnimatorWithDuration:0 delay:v29 options:v31 animations:0.05 completion:a4];
    _Block_release(v31);
    _Block_release(v29);
    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator;
  v11 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator);
  if (v11)
  {
    [v11 stopAnimation_];
  }

  v12 = [objc_opt_self() effectWithBlurRadius_];
  if (a1)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 0.3;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:v13];
  v15 = *(v5 + v10);
  *(v5 + v10) = v14;
  v16 = v14;

  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v12;
  v36 = sub_257E2C1F4;
  v37 = v18;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257D231C0;
  v35 = &block_descriptor_809;
  v19 = _Block_copy(&v32);
  v20 = v12;

  [v16 addAnimations_];
  _Block_release(v19);

  v21 = *(v5 + v10);
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v23[4] = a3;
  v36 = sub_257E2C1FC;
  v37 = v23;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257E106F4;
  v35 = &block_descriptor_816;
  v24 = _Block_copy(&v32);
  v25 = v21;
  sub_257BBD7E4(a2, a3);

  [v25 addCompletion_];
  _Block_release(v24);

  v26 = *(v5 + v10);
  if (v26)
  {
    [v26 startAnimationAfterDelay_];
LABEL_12:

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_257E10B98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_257E10E2C(v2);
  }
}

void sub_257E10BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setEffect_];
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v9 = v7;
    sub_257E10E2C(v8);
  }
}

void sub_257E10CAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 removeFromSuperview];
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView];
    *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView] = 0;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v13)
    {
      sub_257D34520();
    }
  }

  if (a3)
  {
    a3();
  }
}

void sub_257E10E38(char a1, float a2)
{
  v5 = v2;
  v6 = sub_257DFF59C();
  v7 = [v6 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    sub_257ED0410();
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setAutomaticallyDimsOverCaptureRegion_];

  *&v10 = a2;
  [v9 setOpacity_];

  v11 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  v12 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v13 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v11)
  {
    if (v13)
    {
      v19 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
      sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
      v14 = v11;
      v15 = v19;
      v16 = sub_257ECFF50();

      if (v16)
      {
        v17 = *(v5 + v12);
        if (v17)
        {

          [v17 setHidden_];
        }
      }

      return;
    }
  }

  else if (v13)
  {
    return;
  }

  v18 = v13;
}