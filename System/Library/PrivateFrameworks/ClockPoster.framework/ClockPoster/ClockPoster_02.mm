uint64_t sub_1E48E6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_1E499814C();
  v5[11] = sub_1E499813C();
  v7 = sub_1E499811C();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E48E6810, v7, v6);
}

uint64_t sub_1E48E6810()
{
  if (qword_1ECF7EB68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E48E68DC;
  v2 = *(v0 + 72);

  return sub_1E4980FA4(v2);
}

uint64_t sub_1E48E68DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E48E6A04, v6, v5);
}

uint64_t sub_1E48E6A04()
{

  sub_1E49981FC();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1E48E2FB0(v0 + 2);
    v3 = v2;
    v4 = type metadata accessor for WorldViewModel.Pin(0);
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    v6 = v0[16];
    if (!v5)
    {
      v7 = (v3 + *(v4 + 40));
      *v7 = v0[15];
      v7[1] = v6;
    }

    (v1)(v0 + 2, 0);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E48E6B68()
{
  sub_1E48C9E10(v0 + 16);

  v1 = *(v0 + 296);
  v2 = *(v0 + 312);
  v3 = *(v0 + 264);
  v9[6] = *(v0 + 280);
  v9[7] = v1;
  v9[8] = v2;
  v10 = *(v0 + 328);
  v4 = *(v0 + 232);
  v9[2] = *(v0 + 216);
  v9[3] = v4;
  v9[4] = *(v0 + 248);
  v9[5] = v3;
  v5 = *(v0 + 200);
  v9[0] = *(v0 + 184);
  v9[1] = v5;
  sub_1E48EB6DC(v9);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin, &qword_1ECF7F848, &qword_1E499D520);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime, &qword_1ECF809D0, &qword_1E499D6C0);

  v6 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v7 = sub_1E499700C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_1E48E6CD0()
{
  sub_1E48E6B68();

  return swift_deallocClassInstance();
}

void sub_1E48E6D50(uint64_t a1)
{
  sub_1E48E6F44(319, &qword_1ECF7F7E8, type metadata accessor for WorldViewModel.Pin);
  if (v1 <= 0x3F)
  {
    sub_1E48E6F44(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1E499700C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1E48E6F0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48E6F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E48E6FC0(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    sub_1E4996F4C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        sub_1E48E70BC(319, &qword_1ECF7F800, MEMORY[0x1E69E63B0]);
        if (v4 <= 0x3F)
        {
          sub_1E48E70BC(319, &qword_1ECF7F808, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E48E70BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster0A8FaceLookO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E48E7150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48E7198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E48E7208(uint64_t a1)
{
  result = sub_1E48E7230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E48E7230()
{
  result = qword_1ECF7F810;
  if (!qword_1ECF7F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F810);
  }

  return result;
}

unint64_t sub_1E48E7288(void *a1)
{
  a1[1] = sub_1E48E72C8();
  a1[2] = sub_1E48E731C();
  a1[3] = sub_1E48E7370();
  result = sub_1E48E73C4();
  a1[4] = result;
  return result;
}

unint64_t sub_1E48E72C8()
{
  result = qword_1ECF7F818;
  if (!qword_1ECF7F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F818);
  }

  return result;
}

unint64_t sub_1E48E731C()
{
  result = qword_1ECF7F820;
  if (!qword_1ECF7F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F820);
  }

  return result;
}

unint64_t sub_1E48E7370()
{
  result = qword_1ECF7F828;
  if (!qword_1ECF7F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F828);
  }

  return result;
}

unint64_t sub_1E48E73C4()
{
  result = qword_1ECF7F830;
  if (!qword_1ECF7F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F830);
  }

  return result;
}

uint64_t sub_1E48E7460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_1E48E74B0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E48E2600(v2);
  return sub_1E48C2910;
}

void sub_1E48E7520(CGFloat a1, CFTimeInterval a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for WorldViewModel.Pin(0);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v41 = v2;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  v38 = *(*(v2 + 336) + 16);
  if (!v38)
  {
    v25 = 1;
    goto LABEL_24;
  }

  v33 = v8;
  v34 = 0;
  v13 = 0;
  v14 = 0.0;
  v35 = 0x100000001;
  do
  {
    swift_getKeyPath();
    v40 = v3;
    v16 = (v3 + v12);
    sub_1E4996FCC();

    v17 = *(v3 + 336);
    if (v13 >= *(v17 + 16))
    {
      __break(1u);
LABEL_26:
      v16 = sub_1E48EA4BC(v16);
      goto LABEL_20;
    }

    v37 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v36 = *(v39 + 72);
    sub_1E48EC724(v17 + v37 + v36 * v13, v11, type metadata accessor for WorldViewModel.Pin);
    v18 = v9;
    v19 = &v11[*(v9 + 32)];
    v20 = *v19 + -22.0;
    swift_getKeyPath();
    v40 = v3;
    sub_1E4996FCC();

    v21 = v20 + *(v3 + 144);
    v22 = v19[1] + -22.0;
    swift_getKeyPath();
    v40 = v3;
    sub_1E4996FCC();

    v43.origin.y = v22 + *(v3 + 152);
    v43.size.width = 44.0;
    v43.origin.x = v21;
    v43.size.height = 44.0;
    v42.x = a1;
    v42.y = a2;
    if (!CGRectContainsPoint(v43, v42))
    {
      sub_1E48EC6B4(v11, type metadata accessor for WorldViewModel.Pin);
      v15 = v14;
      v9 = v18;
      goto LABEL_4;
    }

    v23 = &v11[*(v18 + 36)];
    v15 = *v23;
    v24 = v23[8];
    sub_1E48EC6B4(v11, type metadata accessor for WorldViewModel.Pin);
    v9 = v18;
    if (v24)
    {
      v35 = 0x100000000;
    }

    else
    {
      if ((v35 & 0x100000000) != 0)
      {
        if ((v35 & 1) == 0)
        {
          v35 = 0x100000000;
          v15 = v14;
          goto LABEL_4;
        }
      }

      else if (v14 < v15)
      {
        HIDWORD(v35) = 0;
        v15 = v14;
        goto LABEL_4;
      }

      v35 = 0;
    }

    v34 = v13;
LABEL_4:
    ++v13;
    v14 = v15;
  }

  while (v38 != v13);
  if (v35)
  {
    v25 = 1;
    v8 = v33;
    goto LABEL_24;
  }

  a2 = CACurrentMediaTime();
  swift_getKeyPath();
  v40 = v3;
  sub_1E4996FCC();

  v40 = v3;
  swift_getKeyPath();
  sub_1E4996FEC();

  swift_beginAccess();
  v16 = *(v3 + 336);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 336) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v27 = v34;
  v28 = v37;
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v34 >= v16[2])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29 = v34 * v36;
  v30 = (v16 + v37 + *(v9 + 36) + v34 * v36);
  *v30 = a2;
  *(v30 + 8) = 0;
  *(v3 + 336) = v16;
  swift_endAccess();
  v40 = v3;
  swift_getKeyPath();
  sub_1E4996FDC();

  swift_getKeyPath();
  v40 = v3;
  sub_1E4996FCC();

  v31 = *(v3 + 336);
  if (v27 >= *(v31 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v32 = v31 + v28 + v29;
  v8 = v33;
  sub_1E48EC724(v32, v33, type metadata accessor for WorldViewModel.Pin);
  v25 = 0;
LABEL_24:
  (*(v39 + 56))(v8, v25, 1, v9);
  sub_1E48E439C(v8);
  sub_1E48C1338(v8, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E7AD4()
{
  v1 = v0;
  v2 = type metadata accessor for WorldViewModel.Pin(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  MEMORY[0x1E691B7A0](0x203D20736E6950, 0xE700000000000000, v4);
  MEMORY[0x1E691B7A0](91, 0xE100000000000000);
  swift_getKeyPath();
  v12 = v0;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  v7 = *(v0 + 336);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      sub_1E48EC724(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v6, type metadata accessor for WorldViewModel.Pin);
      sub_1E48E7D14(v6, v13, v1);
      ++v9;
      sub_1E48EC6B4(v6, type metadata accessor for WorldViewModel.Pin);
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = sub_1E48EC6B4(v6, type metadata accessor for WorldViewModel.Pin);
    __break(1u);
  }

  else
  {
LABEL_5:

    MEMORY[0x1E691B7A0](93, 0xE100000000000000);
    return v13[0];
  }

  return result;
}

uint64_t sub_1E48E7D14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for WorldViewModel.Pin(0);
  v73 = v6;
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v55[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v55[-v19];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v55[-v22];
  v24 = (a1 + *(v6 + 40));
  v25 = v24[1];
  if (v25)
  {
    v26 = *v24;
    if (*(a1 + 16))
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1E49985BC();

      v71 = 0xD000000000000010;
      v72 = 0x80000001E49A7070;
      MEMORY[0x1E691B7A0](v26, v25);
      v27 = 41;
      v28 = 0xE100000000000000;
LABEL_6:
      MEMORY[0x1E691B7A0](v27, v28);
      MEMORY[0x1E691B7A0](v71, v72);

      if (*(a1 + 17))
      {
        MEMORY[0x1E691B7A0](0x7463656C6573202CLL, 0xEA00000000006465);
      }

      MEMORY[0x1E691B7A0](0xD000000000000011, 0x80000001E49A7030);
      v29 = v73;
      goto LABEL_13;
    }

    v71 = 0x746943646C726F57;
    v72 = 0xEA00000000002879;
    MEMORY[0x1E691B7A0](v26, v25, v21);
    v30 = 41;
    v31 = 0xE100000000000000;
  }

  else
  {
    if (*(a1 + 16))
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1E49985BC();
      MEMORY[0x1E691B7A0](0xD000000000000011, 0x80000001E49A7050);
      sub_1E499822C();
      MEMORY[0x1E691B7A0](44, 0xE100000000000000);
      sub_1E499822C();
      v27 = 10558;
      v28 = 0xE200000000000000;
      goto LABEL_6;
    }

    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD000000000000018, 0x80000001E49A6FF0);
    sub_1E499822C();
    MEMORY[0x1E691B7A0](44, 0xE100000000000000);
    sub_1E499822C();
    v30 = 10558;
    v31 = 0xE200000000000000;
  }

  MEMORY[0x1E691B7A0](v30, v31);
  MEMORY[0x1E691B7A0](v71, v72);

  v29 = v73;
  if (*(a1 + 17))
  {
    MEMORY[0x1E691B7A0](0x7463656C6573202CLL, 0xEA00000000006465);
  }

LABEL_13:
  v64 = a2;
  v62 = a1;
  sub_1E48EC724(a1, v23, type metadata accessor for WorldViewModel.Pin);
  v32 = v66;
  v67 = *(v66 + 56);
  v67(v23, 0, 1, v29);
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v71 = a3;
  v60 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  v61 = v33;
  sub_1E4996FCC();

  v34 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v35 = *(v68 + 48);
  sub_1E48C12D0(v23, v11, &qword_1ECF7F848, &qword_1E499D520);
  v36 = v73;
  sub_1E48C12D0(a3 + v34, &v11[v35], &qword_1ECF7F848, &qword_1E499D520);
  v37 = *(v32 + 48);
  if (v37(v11, 1, v36) != 1)
  {
    v39 = v57;
    sub_1E48C12D0(v11, v57, &qword_1ECF7F848, &qword_1E499D520);
    if (v37(&v11[v35], 1, v36) != 1)
    {
      v40 = &v11[v35];
      v41 = v39;
      v42 = v59;
      sub_1E48EC64C(v40, v59, type metadata accessor for WorldViewModel.Pin);
      v56 = sub_1E48EAD30(v41, v42);
      sub_1E48EC6B4(v42, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v23, &qword_1ECF7F848, &qword_1E499D520);
      v36 = v73;
      sub_1E48EC6B4(v41, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v11, &qword_1ECF7F848, &qword_1E499D520);
      v38 = v69;
      if (!v56)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_1E48C1338(v23, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v39, type metadata accessor for WorldViewModel.Pin);
LABEL_18:
    sub_1E48C1338(v11, &qword_1ECF7F850, &qword_1E499D578);
    v38 = v69;
    goto LABEL_21;
  }

  sub_1E48C1338(v23, &qword_1ECF7F848, &qword_1E499D520);
  if (v37(&v11[v35], 1, v36) != 1)
  {
    goto LABEL_18;
  }

  sub_1E48C1338(v11, &qword_1ECF7F848, &qword_1E499D520);
  v38 = v69;
LABEL_20:
  MEMORY[0x1E691B7A0](0xD000000000000012, 0x80000001E49A7010);
LABEL_21:
  sub_1E48EC724(v62, v38, type metadata accessor for WorldViewModel.Pin);
  v43 = 1;
  v67(v38, 0, 1, v36);
  swift_getKeyPath();
  v70 = a3;
  sub_1E4996FCC();

  swift_beginAccess();
  v44 = *(a3 + 336);
  v45 = *(v44 + 16);
  v46 = v63;
  v47 = v65;
  if (v45)
  {
    sub_1E48EC724(v44 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * (v45 - 1), v65, type metadata accessor for WorldViewModel.Pin);
    v43 = 0;
  }

  v67(v47, v43, 1, v36);
  v48 = v69;
  v49 = *(v68 + 48);
  sub_1E48C12D0(v69, v46, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(v47, v46 + v49, &qword_1ECF7F848, &qword_1E499D520);
  if (v37(v46, 1, v36) != 1)
  {
    v50 = v58;
    sub_1E48C12D0(v46, v58, &qword_1ECF7F848, &qword_1E499D520);
    if (v37((v46 + v49), 1, v36) != 1)
    {
      v52 = v46 + v49;
      v53 = v59;
      sub_1E48EC64C(v52, v59, type metadata accessor for WorldViewModel.Pin);
      v54 = sub_1E48EAD30(v50, v53);
      sub_1E48EC6B4(v53, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v65, &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48C1338(v48, &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48EC6B4(v50, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v46, &qword_1ECF7F848, &qword_1E499D520);
      if (v54)
      {
        return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
      }

      goto LABEL_29;
    }

    sub_1E48C1338(v65, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48C1338(v48, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v50, type metadata accessor for WorldViewModel.Pin);
LABEL_28:
    sub_1E48C1338(v46, &qword_1ECF7F850, &qword_1E499D578);
LABEL_29:
    MEMORY[0x1E691B7A0](44, 0xE100000000000000);
    return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
  }

  sub_1E48C1338(v47, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C1338(v48, &qword_1ECF7F848, &qword_1E499D520);
  if (v37((v46 + v49), 1, v36) != 1)
  {
    goto LABEL_28;
  }

  sub_1E48C1338(v46, &qword_1ECF7F848, &qword_1E499D520);
  return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
}

uint64_t sub_1E48E87F8(uint64_t a1)
{
  result = sub_1E48E7460(&qword_1ECF7F250, type metadata accessor for WorldViewModel, &unk_1E499D488);
  *(a1 + 8) = result;
  return result;
}

void sub_1E48E8854(uint64_t *a1)
{
  v2 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E4952DD4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E48E88FC(v5);
  *a1 = v3;
}

void sub_1E48E88FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1E49987EC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for WorldViewModel.Pin(0);
        v6 = sub_1E49980EC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E48E8D2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1E48E8A28(0, v2, 1, a1);
  }
}

void sub_1E48E8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for WorldViewModel.Pin(0);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v31 - v15);
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v38 = v12 + 1;
    v39 = v17;
    v19 = v17 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v22;
      v35 = v21;
      while (1)
      {
        sub_1E48EC724(v22, v16, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC724(v19, v12, type metadata accessor for WorldViewModel.Pin);
        v23 = *(v40 + 36);
        v24 = (v16 + v23);
        if ((*(v16 + v23 + 8) & 1) == 0)
        {
          break;
        }

        if (*(v38 + v23))
        {
          v25 = *v16 < *v12;
          if (*v16 == *v12)
          {
            v26 = v16[1];
            v27 = *v38;
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        sub_1E48EC6B4(v12, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
        if (!v39)
        {
LABEL_24:
          __break(1u);
          return;
        }

LABEL_21:
        sub_1E48EC64C(v22, v9, type metadata accessor for WorldViewModel.Pin);
        swift_arrayInitWithTakeFrontToBack();
        sub_1E48EC64C(v9, v19, type metadata accessor for WorldViewModel.Pin);
        v19 += v20;
        v22 += v20;
        if (__CFADD__(v21++, 1))
        {
          goto LABEL_5;
        }
      }

      v28 = (v12 + v23);
      if (v28[1])
      {
        sub_1E48EC6B4(v12, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
LABEL_5:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        continue;
      }

      break;
    }

    v26 = *v24;
    v27 = *v28;
LABEL_13:
    v25 = v26 < v27;
LABEL_14:
    v29 = v25;
    sub_1E48EC6B4(v12, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
    if ((v29 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v39)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }
}

void sub_1E48E8D2C(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v4;
  v140 = a1;
  v158 = type metadata accessor for WorldViewModel.Pin(0);
  v9 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v145 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v134 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v134 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v134 - v17);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v137 = (&v134 - v26);
  v27 = *(a3 + 8);
  v151 = v9;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v5 = *v140;
    if (!*v140)
    {
      goto LABEL_171;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v151;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_135:
      v159 = v29;
      v129 = *(v29 + 16);
      if (v129 >= 2)
      {
        while (*a3)
        {
          v130 = v29;
          v29 = *(v29 + 16 * v129);
          v131 = v130;
          v132 = *&v130[16 * v129 + 24];
          sub_1E48E98D8(*a3 + v54[9] * v29, *a3 + v54[9] * *&v130[16 * v129 + 16], *a3 + v54[9] * v132, v5);
          if (v6)
          {
            goto LABEL_143;
          }

          if (v132 < v29)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_1E48E9FB4(v131);
          }

          if (v129 - 2 >= *(v131 + 2))
          {
            goto LABEL_159;
          }

          v133 = &v131[16 * v129];
          *v133 = v29;
          v133[1] = v132;
          v159 = v131;
          sub_1E48E9F28(v129 - 1);
          v29 = v159;
          v129 = *(v159 + 16);
          if (v129 <= 1)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_169;
      }

LABEL_143:

      return;
    }

LABEL_165:
    v29 = sub_1E48E9FB4(v29);
    goto LABEL_135;
  }

  v149 = v24;
  v135 = a4;
  v28 = 0;
  v136 = v25;
  v134 = (v25 + 8);
  v146 = v23 + 1;
  v154 = v23;
  v155 = v15 + 1;
  v29 = MEMORY[0x1E69E7CC0];
  v141 = a3;
  v157 = v15;
  v147 = v18;
  while (2)
  {
    v30 = a3;
    v31 = v28;
    a3 = v28 + 1;
    v142 = v28;
    if (v28 + 1 >= v27)
    {
      goto LABEL_51;
    }

    v148 = v27;
    v32 = *v30;
    v33 = v151[9];
    v34 = v137;
    sub_1E48EC724(*v30 + v33 * a3, v137, type metadata accessor for WorldViewModel.Pin);
    v152 = v33;
    v35 = v32 + v33 * v31;
    v36 = v136;
    sub_1E48EC724(v35, v136, type metadata accessor for WorldViewModel.Pin);
    v37 = *(v158 + 36);
    v38 = (v34 + v37);
    v39 = *(v34 + v37 + 8);
    v138 = v29;
    v139 = v6;
    if (v39)
    {
      if ((*(v134 + v37) & 1) == 0)
      {
        v44 = 1;
LABEL_17:
        LODWORD(v150) = v44;
        goto LABEL_18;
      }

      v40 = *v34 < *v36;
      if (*v34 != *v36)
      {
LABEL_14:
        v44 = v40;
        goto LABEL_17;
      }

      v41 = v34[1];
      v42 = *v134;
LABEL_13:
      v40 = v41 < v42;
      goto LABEL_14;
    }

    v43 = (v36 + v37);
    if ((v43[1] & 1) == 0)
    {
      v41 = *v38;
      v42 = *v43;
      goto LABEL_13;
    }

    LODWORD(v150) = 0;
LABEL_18:
    sub_1E48EC6B4(v36, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC6B4(v34, type metadata accessor for WorldViewModel.Pin);
    v45 = v142 + 2;
    v46 = v152 * (v142 + 2);
    v5 = v32 + v46;
    v47 = v152 * a3;
    v48 = v32 + v152 * a3;
    v6 = v158;
    v29 = v149;
    do
    {
      v50 = v45;
      v52 = a3;
      v53 = v47;
      v54 = v46;
      v153 = v45;
      if (v45 >= v148)
      {
        break;
      }

      sub_1E48EC724(v5, v29, type metadata accessor for WorldViewModel.Pin);
      v55 = v29;
      v56 = v154;
      sub_1E48EC724(v48, v154, type metadata accessor for WorldViewModel.Pin);
      v57 = *(v6 + 36);
      v58 = (v55 + v57);
      if (*(v55 + v57 + 8))
      {
        if (*(v146 + v57))
        {
          v29 = v149;
          v59 = *v149 < *v154;
          v18 = v147;
          if (*v149 == *v154)
          {
            v59 = v149[1] < *v146;
          }

          v49 = v59;
          goto LABEL_21;
        }

        v49 = 1;
      }

      else
      {
        v60 = (v56 + v57);
        v49 = (v60[1] & 1) == 0 && *v58 < *v60;
      }

      v29 = v149;
      v18 = v147;
LABEL_21:
      sub_1E48EC6B4(v154, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v29, type metadata accessor for WorldViewModel.Pin);
      v50 = v153;
      v45 = v153 + 1;
      v5 += v152;
      v48 += v152;
      ++a3;
      v47 = v53 + v152;
      v46 = v54 + v152;
      v51 = v150 == v49;
      v6 = v158;
    }

    while (v51);
    if (!v150)
    {
      goto LABEL_48;
    }

    v31 = v142;
    if (v50 < v142)
    {
      goto LABEL_162;
    }

    if (v142 >= v50)
    {
      a3 = v50;
      v29 = v138;
      v6 = v139;
      v30 = v141;
    }

    else
    {
      v61 = v142;
      v62 = v142 * v152;
      do
      {
        if (v61 != v52)
        {
          v5 = *v141;
          if (!*v141)
          {
            goto LABEL_168;
          }

          sub_1E48EC64C(v5 + v62, v145, type metadata accessor for WorldViewModel.Pin);
          if (v62 < v53 || v5 + v62 >= v54 + v5)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1E48EC64C(v145, v5 + v53, type metadata accessor for WorldViewModel.Pin);
          v50 = v153;
        }

        ++v61;
        v53 -= v152;
        v54 = (v54 - v152);
        v62 += v152;
      }

      while (v61 < v52--);
LABEL_48:
      a3 = v50;
      v29 = v138;
      v6 = v139;
      v30 = v141;
      v31 = v142;
    }

    v15 = v157;
LABEL_51:
    v54 = v30;
    v64 = v30[1];
    if (a3 >= v64)
    {
      goto LABEL_82;
    }

    if (__OFSUB__(a3, v31))
    {
      goto LABEL_161;
    }

    if (a3 - v31 >= v135)
    {
LABEL_82:
      if (a3 < v31)
      {
        goto LABEL_160;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1E48EA0AC(0, *(v29 + 16) + 1, 1, v29);
      }

      v83 = *(v29 + 16);
      v82 = *(v29 + 24);
      v84 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        v29 = sub_1E48EA0AC((v82 > 1), v83 + 1, 1, v29);
      }

      *(v29 + 16) = v84;
      v85 = v29 + 16 * v83;
      *(v85 + 32) = v142;
      *(v85 + 40) = a3;
      v5 = *v140;
      if (!*v140)
      {
        goto LABEL_170;
      }

      v153 = a3;
      if (!v83)
      {
LABEL_3:
        a3 = v54;
        v27 = v54[1];
        v28 = v153;
        if (v153 >= v27)
        {
          goto LABEL_133;
        }

        continue;
      }

      while (1)
      {
        a3 = v84 - 1;
        if (v84 >= 4)
        {
          break;
        }

        if (v84 == 3)
        {
          v86 = *(v29 + 32);
          v87 = *(v29 + 40);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_102:
          if (v89)
          {
            goto LABEL_149;
          }

          v102 = (v29 + 16 * v84);
          v104 = *v102;
          v103 = v102[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_152;
          }

          v108 = (v29 + 32 + 16 * a3);
          v110 = *v108;
          v109 = v108[1];
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v106, v111))
          {
            goto LABEL_156;
          }

          if (v106 + v111 >= v88)
          {
            if (v88 < v111)
            {
              a3 = v84 - 2;
            }

            goto LABEL_123;
          }

          goto LABEL_116;
        }

        v112 = (v29 + 16 * v84);
        v114 = *v112;
        v113 = v112[1];
        v96 = __OFSUB__(v113, v114);
        v106 = v113 - v114;
        v107 = v96;
LABEL_116:
        if (v107)
        {
          goto LABEL_151;
        }

        v115 = v29 + 16 * a3;
        v117 = *(v115 + 32);
        v116 = *(v115 + 40);
        v96 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v96)
        {
          goto LABEL_154;
        }

        if (v118 < v106)
        {
          goto LABEL_3;
        }

LABEL_123:
        v123 = a3 - 1;
        if (a3 - 1 >= v84)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v54)
        {
          goto LABEL_167;
        }

        v124 = v29;
        v125 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v123);
        v126 = *(v125 + 16 * a3 + 8);
        sub_1E48E98D8(*v54 + v151[9] * v29, *v54 + v151[9] * *(v125 + 16 * a3), *v54 + v151[9] * v126, v5);
        if (v6)
        {
          goto LABEL_143;
        }

        if (v126 < v29)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_1E48E9FB4(v124);
        }

        if (v123 >= *(v124 + 2))
        {
          goto LABEL_146;
        }

        v127 = &v124[16 * v123];
        *(v127 + 4) = v29;
        *(v127 + 5) = v126;
        v159 = v124;
        sub_1E48E9F28(a3);
        v29 = v159;
        v84 = *(v159 + 16);
        v15 = v157;
        if (v84 <= 1)
        {
          goto LABEL_3;
        }
      }

      v90 = v29 + 32 + 16 * v84;
      v91 = *(v90 - 64);
      v92 = *(v90 - 56);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_147;
      }

      v95 = *(v90 - 48);
      v94 = *(v90 - 40);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_148;
      }

      v97 = (v29 + 16 * v84);
      v99 = *v97;
      v98 = v97[1];
      v96 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v96)
      {
        goto LABEL_150;
      }

      v96 = __OFADD__(v88, v100);
      v101 = v88 + v100;
      if (v96)
      {
        goto LABEL_153;
      }

      if (v101 >= v93)
      {
        v119 = (v29 + 32 + 16 * a3);
        v121 = *v119;
        v120 = v119[1];
        v96 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v96)
        {
          goto LABEL_157;
        }

        if (v88 < v122)
        {
          a3 = v84 - 2;
        }

        goto LABEL_123;
      }

      goto LABEL_102;
    }

    break;
  }

  v65 = v31 + v135;
  if (__OFADD__(v31, v135))
  {
    goto LABEL_163;
  }

  if (v65 >= v64)
  {
    v65 = v64;
  }

  if (v65 < v31)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (a3 == v65)
  {
    goto LABEL_82;
  }

  v138 = v29;
  v139 = v6;
  v66 = *v54;
  v67 = v151[9];
  v68 = *v54 + v67 * (a3 - 1);
  v69 = -v67;
  v70 = v31 - a3;
  v143 = v67;
  v144 = v65;
  v5 = v66 + a3 * v67;
  v71 = v158;
  while (2)
  {
    v152 = v68;
    v153 = a3;
    v148 = v5;
    v150 = v70;
    v72 = v68;
LABEL_63:
    sub_1E48EC724(v5, v18, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC724(v72, v15, type metadata accessor for WorldViewModel.Pin);
    v73 = *(v71 + 36);
    v74 = (v18 + v73);
    if ((*(v18 + v73 + 8) & 1) == 0)
    {
      v78 = (v15 + v73);
      if (v78[1])
      {
        sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v18, type metadata accessor for WorldViewModel.Pin);
LABEL_61:
        a3 = v153 + 1;
        v68 = v152 + v143;
        v70 = v150 - 1;
        v5 = v148 + v143;
        if (v153 + 1 == v144)
        {
          a3 = v144;
          v29 = v138;
          v6 = v139;
          v54 = v141;
          v31 = v142;
          goto LABEL_82;
        }

        continue;
      }

      v76 = *v74;
      v77 = *v78;
LABEL_69:
      v75 = v76 < v77;
LABEL_70:
      v79 = v75;
      sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v18, type metadata accessor for WorldViewModel.Pin);
      if ((v79 & 1) == 0)
      {
        v71 = v158;
        goto LABEL_61;
      }

      if (!v66)
      {
        goto LABEL_166;
      }

      goto LABEL_77;
    }

    break;
  }

  if (*(v155 + v73))
  {
    v75 = *v18 < *v15;
    if (*v18 == *v15)
    {
      v76 = v18[1];
      v77 = *v155;
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
  sub_1E48EC6B4(v18, type metadata accessor for WorldViewModel.Pin);
  if (v66)
  {
LABEL_77:
    v80 = v156;
    sub_1E48EC64C(v5, v156, type metadata accessor for WorldViewModel.Pin);
    v71 = v158;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E48EC64C(v80, v72, type metadata accessor for WorldViewModel.Pin);
    v72 += v69;
    v5 += v69;
    v81 = __CFADD__(v70++, 1);
    v15 = v157;
    if (v81)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

void sub_1E48E98D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = type metadata accessor for WorldViewModel.Pin(0);
  MEMORY[0x1EEE9AC00](v58);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v50 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v50 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_84;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_85;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = a4;
  if (v21 < v20 / v19)
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v22;
    v59 = a4 + v22;
    if (v22 < 1 || a2 >= a3)
    {
      goto LABEL_82;
    }

    v56 = v14 + 1;
    while (1)
    {
      sub_1E48EC724(a2, v17, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC724(a4, v14, type metadata accessor for WorldViewModel.Pin);
      v25 = *(v58 + 36);
      v26 = (v17 + v25);
      if ((*(v17 + v25 + 8) & 1) == 0)
      {
        break;
      }

      if ((*(v56 + v25) & 1) == 0)
      {
        sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v17, type metadata accessor for WorldViewModel.Pin);
        goto LABEL_34;
      }

      v27 = *v17 < *v14;
      if (*v17 == *v14)
      {
        v28 = v17[1];
        v29 = *v56;
LABEL_29:
        v27 = v28 < v29;
      }

      v31 = v27;
      sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v17, type metadata accessor for WorldViewModel.Pin);
      if ((v31 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_34:
      if (a1 < a2 || a1 >= a2 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v19;
LABEL_46:
      a1 += v19;
      v61 = a1;
      if (a4 >= v57 || a2 >= a3)
      {
        goto LABEL_82;
      }
    }

    v30 = (v14 + v25);
    if (v30[1])
    {
      sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v17, type metadata accessor for WorldViewModel.Pin);
LABEL_38:
      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = a4 + v19;
      a4 += v19;
      goto LABEL_46;
    }

    v28 = *v26;
    v29 = *v30;
    goto LABEL_29;
  }

  v23 = v20 / v19 * v19;
  if (a4 < a2 || a2 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v32 = a4 + v23;
  if (v23 < 1)
  {
    goto LABEL_79;
  }

  v51 = v9 + 1;
  v33 = -v19;
  v34 = a4 + v23;
  v55 = a4;
  v56 = v9;
  v35 = v57;
  do
  {
    v36 = v9;
    v50 = v32;
    v37 = a2 + v33;
    v53 = a2;
    v54 = a2 + v33;
    while (1)
    {
      if (a2 <= a1)
      {
        v61 = a2;
        v32 = v50;
        goto LABEL_81;
      }

      v38 = a3;
      v52 = v32;
      v39 = v33;
      v40 = v34 + v33;
      sub_1E48EC724(v34 + v33, v35, type metadata accessor for WorldViewModel.Pin);
      v41 = v37;
      v42 = v36;
      sub_1E48EC724(v41, v36, type metadata accessor for WorldViewModel.Pin);
      v43 = *(v58 + 36);
      v44 = (v35 + v43);
      if ((*(v35 + v43 + 8) & 1) == 0)
      {
        v49 = (v36 + v43);
        v45 = v55;
        v48 = (v49[1] & 1) == 0 && *v44 < *v49;
        goto LABEL_67;
      }

      v45 = v55;
      if ((*(v51 + v43) & 1) == 0)
      {
        v48 = 1;
LABEL_67:
        v47 = v39;
        goto LABEL_68;
      }

      v46 = *v35 < *v42;
      v47 = v39;
      if (*v35 == *v42)
      {
        v46 = v35[1] < *v51;
      }

      v48 = v46;
LABEL_68:
      a3 += v47;
      sub_1E48EC6B4(v56, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v57, type metadata accessor for WorldViewModel.Pin);
      if (v48)
      {
        break;
      }

      v32 = v40;
      if (v38 < v34 || a3 >= v34)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v40;
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v36 = v56;
        v35 = v57;
        if (v38 != v34)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v40;
        }
      }

      v34 = v32;
      v37 = v54;
      v33 = v39;
      a2 = v53;
      if (v40 <= v55)
      {
        goto LABEL_79;
      }
    }

    if (v38 < v53 || a3 >= v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v9 = v56;
      v35 = v57;
    }

    else
    {
      v9 = v56;
      v35 = v57;
      if (v38 != v53)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = v52;
    v33 = v39;
    a2 = v54;
  }

  while (v34 > v45);
LABEL_79:
  v61 = a2;
LABEL_81:
  v59 = v32;
LABEL_82:
  sub_1E48E9FC8(&v61, &v60, &v59);
}

uint64_t sub_1E48E9F28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E48E9FB4(v3);
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

uint64_t sub_1E48E9FC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for WorldViewModel.Pin(0);
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

char *sub_1E48EA0AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F890, &unk_1E49A0290);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E48EA1B0(double a1, double a2)
{
  v5 = *v2;
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a1, a2);
  v6 = sub_1E499896C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    if (*v10 == a1 && v10[1] == a2)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E4957F3C();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 16 * v8);
  sub_1E48EA2E0(v8);
  result = v15;
  *v2 = v16;
  return result;
}

void sub_1E48EA2E0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E499851C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_1E499892C();
        if (v11 == 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v11;
        }

        MEMORY[0x1E691C170](*&v13);
        if (v12 == 0.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v12;
        }

        MEMORY[0x1E691C170](*&v14);
        v15 = sub_1E499896C() & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_17;
        }

        if (v2 >= v15)
        {
LABEL_17:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1E48EA50C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WorldViewModel.Pin(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_1E48EC724(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for WorldViewModel.Pin);
      v23 = v22;
      v24 = v30;
      sub_1E48EC64C(v23, v30, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC64C(v24, a2, type metadata accessor for WorldViewModel.Pin);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1E48EA770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v62 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F888, &qword_1E499D638);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v66 = v4;
    v67 = &v62 - v17;
    v18 = 0;
    v63 = v15;
    v64 = a1;
    v21 = *(a1 + 64);
    v20 = a1 + 64;
    v19 = v21;
    v22 = 1 << *(v20 - 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v65 = v5;
    while (v24)
    {
      v69 = (v24 - 1) & v24;
      v26 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_19:
      v31 = (*(v64 + 48) + 16 * v26);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(v64 + 56) + *(v5 + 72) * v26;
      v35 = v68;
      sub_1E48EC724(v34, v68, type metadata accessor for WorldViewModel.Pin);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
      v37 = *(v36 + 48);
      v38 = v63;
      *v63 = v32;
      *(v38 + 1) = v33;
      v15 = v38;
      sub_1E48EC64C(v35, &v38[v37], type metadata accessor for WorldViewModel.Pin);
      (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
LABEL_20:
      v39 = v67;
      sub_1E48C15C8(v15, v67, &qword_1ECF7F888, &qword_1E499D638);
      v40 = v39;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        return;
      }

      v42 = *v40;
      v43 = v40[1];
      sub_1E48EC64C(v40 + *(v41 + 48), v10, type metadata accessor for WorldViewModel.Pin);
      v44 = sub_1E4948350(v42, v43);
      if ((v45 & 1) == 0)
      {
        goto LABEL_43;
      }

      v5 = v65;
      sub_1E48EC724(*(a2 + 56) + *(v65 + 72) * v44, v7, type metadata accessor for WorldViewModel.Pin);
      v46 = v66;
      if (*v7 != *v10)
      {
        goto LABEL_42;
      }

      if (v7[1] != v10[1])
      {
        goto LABEL_42;
      }

      if (*(v7 + 16) != *(v10 + 16))
      {
        goto LABEL_42;
      }

      if (*(v7 + 17) != *(v10 + 17))
      {
        goto LABEL_42;
      }

      if ((MEMORY[0x1E691A740](v7 + v66[7], v10 + v66[7]) & 1) == 0)
      {
        goto LABEL_42;
      }

      v47 = v46[8];
      v48 = v7 + v47;
      v49 = *(v7 + v47);
      v50 = (v10 + v47);
      if (v49 != *v50 || *(v48 + 1) != v50[1])
      {
        goto LABEL_42;
      }

      v51 = v46[9];
      v52 = (v7 + v51);
      v53 = *(v7 + v51 + 8);
      v54 = (v10 + v51);
      v55 = *(v10 + v51 + 8);
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (*v52 != *v54)
        {
          LOBYTE(v55) = 1;
        }

        if (v55)
        {
LABEL_42:
          sub_1E48EC6B4(v7, type metadata accessor for WorldViewModel.Pin);
LABEL_43:
          sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
          return;
        }
      }

      v56 = v46[10];
      v57 = v7 + v56;
      v58 = *(v7 + v56 + 8);
      v59 = v10 + v56;
      v60 = *(v59 + 1);
      if (v58)
      {
        if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1E499884C() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v60)
      {
        goto LABEL_42;
      }

      sub_1E48EC6B4(v7, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
      v24 = v69;
    }

    if (v25 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v27 - 1;
    while (1)
    {
      v29 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
        (*(*(v61 - 8) + 56))(v15, 1, 1, v61);
        v69 = 0;
        v18 = v28;
        goto LABEL_20;
      }

      v30 = *(v20 + 8 * v29);
      ++v18;
      if (v30)
      {
        v69 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) | (v29 << 6);
        v18 = v29;
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

BOOL sub_1E48EAD30(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v2 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v6 = type metadata accessor for WorldViewModel.Pin(0);
  if ((MEMORY[0x1E691A740](a1 + v6[7], a2 + v6[7]) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[8];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 != *v10 || v9 != v10[1])
  {
    return 0;
  }

  v12 = v6[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[10];
  v18 = *(a1 + v17 + 8);
  v19 = *(a2 + v17 + 8);
  if (v18)
  {
    return v19 && (*(a1 + v17) == *(a2 + v17) && v18 == v19 || (sub_1E499884C() & 1) != 0);
  }

  return !v19;
}

BOOL sub_1E48EAE74(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v6 != 1)
  {
    if (v7[1])
    {
      return 0;
    }

    v9 = *v5;
    v10 = *v7;
    return v9 < v10;
  }

  if ((v7[1] & 1) == 0)
  {
    return 1;
  }

  v8 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v9 = a1[1];
    v10 = a2[1];
    return v9 < v10;
  }

  return v8;
}

__n128 sub_1E48EAF00@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || sub_1E499873C())
  {
    *&v37 = a1;
    v39.n128_u64[0] = v12;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE2BB458;
    v14 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v13 + v14, v8, &qword_1ECF7F008, &qword_1E499B170);
    v15 = *(v10 + 48);
    v16 = v15(v8, 1, v9);
    *&v38 = v10;
    if (v16 == 1)
    {
      v17 = v39.n128_u64[0];
      sub_1E4904BF4(v39.n128_i64[0]);
      v18 = v17;
      if (v15(v8, 1, v9) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      v18 = v39.n128_u64[0];
      (*(v10 + 32))(v39.n128_u64[0], v8, v9);
    }

    v19 = sub_1E499706C();
    v20 = sub_1E499830C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v36 = v9;
      v23 = v22;
      *&v41[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1E48CA094(0x70614D646C726F57, 0xE800000000000000, v41);
      *(v21 + 12) = 2082;
      if (a2)
      {
        v24 = v37;
      }

      else
      {
        v24 = 0x3E4C4C554E3CLL;
      }

      if (a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      v26 = sub_1E48CA094(v24, v25, v41);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1E48B0000, v19, v20, "[%{public}s] Cannot map world type from %{public}s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v23, -1, -1);
      MEMORY[0x1E691CED0](v21, -1, -1);

      (*(v38 + 8))(v39.n128_u64[0], v36);
    }

    else
    {

      (*(v38 + 8))(v18, v9);
    }
  }

  if (qword_1ECF7EB78 != -1)
  {
    swift_once();
  }

  v41[2] = xmmword_1ECF81A08;
  v41[3] = *&qword_1ECF81A18;
  v41[6] = xmmword_1ECF81A48;
  *v42 = *&byte_1ECF81A58;
  *&v42[16] = xmmword_1ECF81A68;
  *&v42[32] = qword_1ECF81A78;
  v41[4] = xmmword_1ECF81A28;
  v41[5] = xmmword_1ECF81A38;
  v41[0] = xmmword_1ECF819E8;
  v41[1] = *&qword_1ECF819F8;
  v38 = *&v42[8];
  v39 = *&v42[24];
  v36 = xmmword_1ECF81A38;
  v37 = xmmword_1ECF81A48;
  v27 = byte_1ECF81A58;
  v28 = xmmword_1ECF81A28;
  v34 = xmmword_1ECF81A08;
  v35 = *&qword_1ECF81A18;
  v29 = *&qword_1ECF819F8;
  v30 = xmmword_1ECF819E8;
  sub_1E48CCDD4(v41, &v40);
  *a3 = v30;
  *(a3 + 16) = v29;
  v31 = v35;
  *(a3 + 32) = v34;
  *(a3 + 48) = v31;
  *(a3 + 64) = v28;
  v32 = v37;
  *(a3 + 80) = v36;
  *(a3 + 96) = v32;
  *(a3 + 112) = v27;
  result = v39;
  *(a3 + 120) = v38;
  *(a3 + 136) = result;
  return result;
}

void sub_1E48EB38C(char a1)
{
  if (*(v1 + 176) == (a1 & 1))
  {
    *(v1 + 176) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }
}

unint64_t sub_1E48EB508()
{
  result = qword_1ECF7F860;
  if (!qword_1ECF7F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F860);
  }

  return result;
}

unint64_t sub_1E48EB55C()
{
  result = qword_1ECF7F868;
  if (!qword_1ECF7F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F868);
  }

  return result;
}

unint64_t sub_1E48EB5B0()
{
  result = qword_1ECF7F878;
  if (!qword_1ECF7F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F878);
  }

  return result;
}

uint64_t sub_1E48EB604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E48E6778(a1, v4, v5, v7, v6);
}

uint64_t sub_1E48EB76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E48EB7D0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) = *(v0 + 24);
}

uint64_t sub_1E48EB830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v20 - v12, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(a2, &v13[v15], &qword_1ECF7F848, &qword_1E499D520);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &qword_1ECF7F848, &qword_1E499D520);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1E48EC64C(&v13[v15], v7, type metadata accessor for WorldViewModel.Pin);
      v18 = sub_1E48EAD30(v10, v7);
      sub_1E48EC6B4(v7, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v13, &qword_1ECF7F848, &qword_1E499D520);
      v17 = !v18;
      return v17 & 1;
    }

    sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF7F850, &qword_1E499D578);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &qword_1ECF7F848, &qword_1E499D520);
  v17 = 0;
  return v17 & 1;
}

void sub_1E48EBB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = type metadata accessor for City(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_1E48EC724(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for City);
    sub_1E48DF2E4(v9, a2, v18);
    sub_1E48EC6B4(v9, type metadata accessor for City);
    if (v3)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 56 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1E48EBCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v21 - v12, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(a2, &v13[v15], &qword_1ECF809D0, &qword_1E499D6C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E48E7460(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v18 = sub_1E4997E9C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF7F898, &qword_1E499D6F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1E48EC048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48EC0CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48EC184()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 264);
  v4 = *(v2 + 280);
  v17[4] = *(v2 + 248);
  v17[5] = v3;
  v5 = *(v2 + 232);
  v17[2] = *(v2 + 216);
  v17[3] = v5;
  v18 = *(v2 + 328);
  v6 = *(v2 + 312);
  v17[7] = *(v2 + 296);
  v17[8] = v6;
  v17[6] = v4;
  v7 = *(v2 + 200);
  v17[0] = *(v2 + 184);
  v17[1] = v7;
  v8 = *v1;
  *(v2 + 200) = *(v1 + 16);
  *(v2 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  *(v2 + 264) = *(v1 + 80);
  *(v2 + 248) = v11;
  *(v2 + 232) = v10;
  *(v2 + 216) = v9;
  v12 = *(v1 + 96);
  v13 = *(v1 + 112);
  v14 = *(v1 + 128);
  *(v2 + 328) = *(v1 + 144);
  *(v2 + 296) = v13;
  *(v2 + 312) = v14;
  *(v2 + 280) = v12;
  sub_1E48CCDD4(v1, v16);
  return sub_1E48EB6DC(v17);
}

void sub_1E48EC240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 177) = v2;
}

__n128 sub_1E48EC294()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 144) = result;
  *(v1 + 160) = v3;
  return result;
}

void sub_1E48EC2B8()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}

void sub_1E48EC2F4()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_1E48EC330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48DDDB8(a1, v4, v5, v6);
}

uint64_t sub_1E48EC3E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48DE5D8(a1, v4, v5, v6);
}

uint64_t objectdestroy_148Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48EC4D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48DF70C(a1, v4, v5, v6);
}

uint64_t sub_1E48EC58C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48E0444(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E48EC64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48EC6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48EC714(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E48EC724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48EC78C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1E48EC7A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v3 = *(v0 + 32);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v3;
  *(v2 + 24) = v1;
}

uint64_t getEnumTagSinglePayload for WorldViewModelContext.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorldViewModelContext.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E48EC974()
{
  result = qword_1ECF7F8D8;
  if (!qword_1ECF7F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8D8);
  }

  return result;
}

unint64_t sub_1E48EC9CC()
{
  result = qword_1ECF7F8E0;
  if (!qword_1ECF7F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8E0);
  }

  return result;
}

unint64_t sub_1E48ECA24()
{
  result = qword_1ECF7F8E8;
  if (!qword_1ECF7F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8E8);
  }

  return result;
}

void sub_1E48ECB88()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ComplicationsLabel();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E691BDE0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 superview];
      if (v7)
      {
        v8 = v7;

        v5 = v8;
      }

      else
      {
        [v0 addSubview_];
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  [v0 bounds];
  sub_1E48ECD8C(1, v9, v10);
}

void sub_1E48ECD8C(char a1, double a2, CGFloat a3)
{
  v4 = v3;
  v42 = OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews;
  v7 = *(v3 + OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews);
  if (v7 >> 62)
  {
LABEL_48:
    v8 = sub_1E49986EC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v43 = MEMORY[0x1E69E7CC0];

    sub_1E4906F38(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    v9 = v43;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E691BDE0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      [v11 sizeThatFits_];
      v14 = v13;
      v16 = v15;

      v18 = *(v43 + 16);
      v17 = *(v43 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E4906F38((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v43 + 16) = v18 + 1;
      v19 = v43 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v10);
  }

  v20 = *(v9 + 16);
  if (v20)
  {
    a3 = *(v9 + 40);
    v21 = v20 - 1;
    if (v21)
    {
      v22 = (v9 + 56);
      v23 = *(v9 + 40);
      do
      {
        v24 = *v22;
        v22 += 2;
        v25 = v24;
        if (v23 < v24)
        {
          a3 = v25;
          v23 = v25;
        }

        --v21;
      }

      while (v21);
    }
  }

  else
  {
    a3 = 0.0;
  }

  v7 = *(v4 + v42);
  if (v7 >> 62)
  {
    v26 = sub_1E49986EC();
  }

  else
  {
    v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_contentsSpacing;

  a2 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if (v26)
  {
    v29 = 0;
    v30 = v9 + 32;
    while (2)
    {
      v31 = (v30 + 16 * v29);
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1E691BDE0](v29, v7);
        }

        else
        {
          if (v29 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v32 = *(v7 + 8 * v29 + 32);
        }

        v33 = v32;
        v34 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (v29 >= *(v9 + 16))
        {
          goto LABEL_46;
        }

        v28 = *v31;
        if (a1)
        {
          [v32 setFrame_];
        }

        v35 = *(v4 + v42);
        if (v35 >> 62)
        {
          v38 = sub_1E49986EC();
          v37 = v38 - 1;
          if (__OFSUB__(v38, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v37 = v36 - 1;
          if (__OFSUB__(v36, 1))
          {
            goto LABEL_47;
          }
        }

        if (v29 != v37)
        {
          break;
        }

        ++v29;
        v31 += 2;
        if (v34 == v26)
        {
          goto LABEL_43;
        }
      }

      v44.origin.y = 0.0;
      v44.origin.x = v27;
      v44.size.width = v28;
      v44.size.height = a3;
      MaxX = CGRectGetMaxX(v44);

      v30 = v9 + 32;
      v27 = MaxX + *(v4 + v40);
      ++v29;
      if (v34 != v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_43:

  v45.origin.x = v27;
  v45.origin.y = 0.0;
  v45.size.width = v28;
  v45.size.height = a3;
  CGRectGetMaxX(v45);
  v46.origin.x = v27;
  v46.origin.y = 0.0;
  v46.size.width = v28;
  v46.size.height = a3;
  CGRectGetMaxY(v46);
}

id sub_1E48ED13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationsLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ComplicationsLabelContent(uint64_t a1)
{
  result = qword_1ECF7F918;
  if (!qword_1ECF7F918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48ED28C(uint64_t a1)
{
  sub_1E48ED348(319, &qword_1ECF7F928, "string color ");
  if (v1 <= 0x3F)
  {
    sub_1E48ED348(319, &qword_1ECF7F938, "name color ");
    if (v2 <= 0x3F)
    {
      sub_1E48ED3C4(319);
      if (v3 <= 0x3F)
      {
        sub_1E48ED460(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E48ED348(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1E48ED3C4(uint64_t a1)
{
  if (!qword_1ECF7F940)
  {
    sub_1E4996D8C();
    sub_1E4996F4C();
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF7F940);
    }
  }
}

void sub_1E48ED460(uint64_t a1)
{
  if (!qword_1ECF7F948)
  {
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECF7F948);
    }
  }
}

uint64_t sub_1E48ED4DC(uint64_t a1, uint64_t a2)
{
  v70 = sub_1E4996F4C();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v65 - v6;
  v7 = sub_1E4996D8C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ComplicationsLabelContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v65 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v65 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F950, &qword_1E499D988);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v65 - v23;
  v26 = (&v65 + *(v25 + 56) - v23);
  sub_1E48EDB7C(a1, &v65 - v23);
  sub_1E48EDB7C(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E48EDB7C(v24, v18);
      v54 = *v18;
      v53 = v18[1];
      v30 = v18[2];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v26[2];
        if (v54 != *v26 || v53 != v26[1])
        {
LABEL_19:
          v56 = sub_1E499884C();

          if ((v56 & 1) == 0)
          {

LABEL_34:
            sub_1E48EDC48(v24);
            goto LABEL_35;
          }

          goto LABEL_30;
        }

LABEL_29:

LABEL_30:
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        v51 = sub_1E499848C();

        goto LABEL_31;
      }
    }

    else
    {
      sub_1E48EDB7C(v24, v21);
      v29 = *v21;
      v28 = v21[1];
      v30 = v21[2];
      if (!swift_getEnumCaseMultiPayload())
      {
        v31 = v26[2];
        if (v29 != *v26 || v28 != v26[1])
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E48EDB7C(v24, v15);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F958, qword_1E499D990);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v36 = *&v15[v35];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v65 = *(v26 + v35);
      v66 = v36;
      v38 = v68;
      v37 = v69;
      (*(v68 + 4))(v9, v26, v69);
      v39 = *(v72 + 32);
      v40 = v70;
      v39(v71, &v15[v34], v70);
      v41 = v26 + v34;
      v42 = v67;
      v39(v67, v41, v40);
      v43 = sub_1E4996D2C();
      v44 = *(v38 + 1);
      v45 = v37;
      v44(v15, v37);
      if (v43)
      {
        v46 = v65;
        v47 = v40;
        v48 = MEMORY[0x1E691A740](v71, v42);
        v49 = v42;
        v50 = v66;
        if (v48)
        {
          sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
          v51 = sub_1E499848C();

          v68 = v44;
          v52 = *(v72 + 8);
          v52(v49, v47);
          v52(v71, v47);
          v68(v9, v45);
LABEL_31:
          sub_1E48EDC48(v24);
          return v51 & 1;
        }

        v61 = *(v72 + 8);
        v61(v49, v47);
        v62 = v71;
        v63 = v47;
      }

      else
      {

        v61 = *(v72 + 8);
        v61(v42, v40);
        v62 = v71;
        v63 = v40;
      }

      v61(v62, v63);
      v44(v9, v45);
      goto LABEL_34;
    }

    (*(v72 + 8))(&v15[v34], v70);
    (*(v68 + 1))(v15, v69);
LABEL_27:
    sub_1E48EDBE0(v24);
LABEL_35:
    v51 = 0;
    return v51 & 1;
  }

  sub_1E48EDB7C(v24, v12);
  v30 = *v12;
  v57 = v12[8];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_25:

    goto LABEL_27;
  }

  v58 = *v26;
  v59 = *(v26 + 8);
  sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
  v60 = sub_1E499848C();

  if ((v60 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1E48EDC48(v24);
  v51 = v57 ^ v59 ^ 1;
  return v51 & 1;
}

uint64_t sub_1E48EDB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationsLabelContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48EDBE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F950, &qword_1E499D988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48EDC48(uint64_t a1)
{
  v2 = type metadata accessor for ComplicationsLabelContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1E48EDD08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 16);
  *(v3 + 64) = v5;
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v1 + 24);

  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  *(v4 + 48) = v6;
  return sub_1E48EDDD0;
}

void sub_1E48EDDD0(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  swift_beginAccess();
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    *(v6 + 24) = v4;

    swift_beginAccess();
    os_unfair_lock_unlock(v5 + 4);
    swift_endAccess();
  }

  else
  {
    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    *(v6 + 24) = v4;

    swift_beginAccess();
    os_unfair_lock_unlock(v5 + 4);
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E48EDED0()
{
  type metadata accessor for ClockFaceContextStore();
  swift_allocObject();
  result = sub_1E48EDF0C();
  qword_1ECF81908 = result;
  return result;
}

uint64_t sub_1E48EDF0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F970, &qword_1E499D9F0);
  v4 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v1 + 16) = v4;
  v7 = [objc_opt_self() standardUserDefaults];

  v8 = sub_1E4997EAC();

  v9 = [v7 dataForKey_];

  if (v9)
  {
    v10 = sub_1E4996B8C();
    v12 = v11;

    sub_1E4996AFC();
    swift_allocObject();
    sub_1E4996AEC();
    sub_1E48EF524();
    v19 = v10;
    sub_1E4996ADC();
    v13 = *(v20 + 16);
    if (v13)
    {
      v14 = v20 + 32;
      do
      {
        sub_1E48EFCBC(v14, &v20);
        LOBYTE(v25[0]) = v20;
        v15 = v23;
        v16 = v24;
        v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
        sub_1E48EF5E0(v17, v25, &v21, v1, v15, v16);
        sub_1E48EFCF4(&v20);
        v14 += 152;
        --v13;
      }

      while (v13);
    }

    sub_1E48CD2C8(v19, v12);
  }

  return v1;
}

void sub_1E48EE450()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v3 + 4);
  swift_endAccess();

  v5 = 0;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = MEMORY[0x1E69E7CC0];
  v31 = v10;
  while (v9)
  {
    v12 = v5;
LABEL_11:
    v32 = v12;
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    v34 = *(*(v4 + 48) + v13);
    v14 = *(*(v4 + 56) + 8 * v13);
    v33 = (v9 - 1) & v9;
    v15 = 1 << *(v14 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (!v17)
    {
LABEL_16:
      if (v18 <= v19 + 1)
      {
        v21 = v19 + 1;
      }

      else
      {
        v21 = v18;
      }

      v22 = v21 - 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          v17 = 0;
          v36 = 0u;
          v37 = 0u;
          v19 = v22;
          memset(v35, 0, sizeof(v35));
          goto LABEL_25;
        }

        v17 = *(v14 + 64 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    while (1)
    {
      v20 = v19;
LABEL_24:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      sub_1E48C8304(*(v14 + 48) + 104 * v24, v40);
      sub_1E48CD210(*(v14 + 56) + 40 * v24, v39);
      v35[4] = v40[4];
      v35[5] = v40[5];
      LOBYTE(v35[6]) = v41;
      v35[0] = v40[0];
      v35[1] = v40[1];
      v35[2] = v40[2];
      v35[3] = v40[3];
      sub_1E48B7448(v39, &v35[6] + 8);
LABEL_25:
      v48[0] = v35[6];
      v48[1] = v36;
      v48[2] = v37;
      v44 = v35[2];
      v45 = v35[3];
      v46 = v35[4];
      v47 = v35[5];
      v42 = v35[0];
      v43 = v35[1];
      if (!v37)
      {
        break;
      }

      *(&v35[3] + 8) = v45;
      *(&v35[4] + 8) = v46;
      *(&v35[5] + 8) = v47;
      BYTE8(v35[6]) = v48[0];
      *(v35 + 8) = v42;
      *(&v35[1] + 8) = v43;
      *(&v35[2] + 8) = v44;
      sub_1E48B7448((v48 + 8), &v36);
      LOBYTE(v35[0]) = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1E490615C(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_1E490615C((v25 > 1), v26 + 1, 1, v11);
      }

      *(v11 + 2) = v26 + 1;
      v27 = &v11[152 * v26];
      *(v27 + 2) = v35[0];
      *(v27 + 3) = v35[1];
      *(v27 + 6) = v35[4];
      *(v27 + 7) = v35[5];
      *(v27 + 4) = v35[2];
      *(v27 + 5) = v35[3];
      v28 = v35[6];
      v29 = v36;
      v30 = v37;
      *(v27 + 22) = v38;
      *(v27 + 9) = v29;
      *(v27 + 10) = v30;
      *(v27 + 8) = v28;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    v5 = v32;
    v9 = v33;
    v10 = v31;
    v6 = v4 + 64;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t (*sub_1E48EE7F8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 16);

  v4[5] = sub_1E48EDD08(v4);
  return sub_1E48EE87C;
}

void sub_1E48EE87C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1E48EE8D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E48EE92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9C0, &qword_1E499DB98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1E48F0198();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  v13 = a2;
  v21 = 2;
  sub_1E48F01EC();
  sub_1E499878C();
  v10 = v14;
  v22[0] = v14;
  v21 = 1;
  sub_1E48EB55C();
  sub_1E499878C();
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[0] = v14;
  v23[1] = v15;
  v24 = v20;
  v23[2] = v16;
  if (v10 == 3)
  {
    v12 = sub_1E48CD1BC();
    v21 = 0;
    *(&v15 + 1) = &type metadata for SolarContext;
    *&v16 = v12;
    __swift_allocate_boxed_opaque_existential_0(&v14);
    sub_1E48F0294();
    sub_1E499878C();
    (*(v6 + 8))(v8, v5);
    sub_1E48B7448(&v14, &v25);
    sub_1E48EFCBC(v22, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    return sub_1E48EFCF4(v22);
  }

  else
  {
    sub_1E48F0240();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    return sub_1E48C8360(v23);
  }
}

uint64_t sub_1E48EEC30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9E8, &qword_1E499DBA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48F0198();
  sub_1E49989CC();
  v10[15] = *v3;
  v10[14] = 2;
  sub_1E48F0338();
  sub_1E49987DC();
  if (!v2)
  {
    v10[13] = 1;
    sub_1E48EB5B0();
    sub_1E49987DC();
    __swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
    v10[12] = 0;
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E48EEE08(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F980, &qword_1E499DB80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EFE24();
  sub_1E49989CC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F990, &qword_1E499DB88);
  sub_1E48F00CC(&qword_1ECF7F998, sub_1E48EFE78, MEMORY[0x1E69E6300]);
  sub_1E49987DC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E48EEF94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1802465132;
  if (v2 != 1)
  {
    v3 = 1684957547;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x747865746E6F63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1802465132;
  if (*a2 != 1)
  {
    v6 = 1684957547;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x747865746E6F63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E48EF078()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E48EF10C(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E48EF18C(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

unint64_t sub_1E48EF21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E48EFECC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E48EF24C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1802465132;
  if (v2 != 1)
  {
    v4 = 1684957547;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x747865746E6F63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1E48EF29C()
{
  v1 = 1802465132;
  if (*v0 != 1)
  {
    v1 = 1684957547;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

unint64_t sub_1E48EF2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E48EFECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E48EF31C(uint64_t a1)
{
  v2 = sub_1E48F0198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48EF358(uint64_t a1)
{
  v2 = sub_1E48F0198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1E48EF3DC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1E499884C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1E48EF464(uint64_t a1)
{
  v2 = sub_1E48EFE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48EF4A0(uint64_t a1)
{
  v2 = sub_1E48EFE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E48EF4DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E48EFF18(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E48EF524()
{
  result = qword_1ECF7F978;
  if (!qword_1ECF7F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F978);
  }

  return result;
}

uint64_t sub_1E48EF578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48EF5E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v13);
  v44[3] = a5;
  v44[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v15 = *a2;
  v16 = *(a4 + 16);
  v17 = *(v16 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();

  if (!*(v18 + 16))
  {

    goto LABEL_5;
  }

  sub_1E4948258(v15);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_5:
    v22 = *(a4 + 16);
    v23 = *(v22 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    swift_beginAccess();
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v24;
    sub_1E4986350(MEMORY[0x1E69E7CC8], v15, isUniquelyReferenced_nonNull_native);
    v27 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v27 + 4);
    swift_endAccess();
    *(v22 + 24) = v24;

    v28 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v28 + 4);
    swift_endAccess();
  }

  v29 = sub_1E48EE7F8(v43);
  v30 = sub_1E48C9C9C(v42, v15);
  if (*v31)
  {
    sub_1E48C8304(a3, v41);
    sub_1E48CD210(v44, v40);
    sub_1E496F86C(v40, v41);
  }

  (v30)(v42, 0);
  (v29)(v43, 0);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E48EE450();
  v41[0] = v32;
  sub_1E48CD274();
  v33 = sub_1E4996B1C();
  v35 = v34;

  v36 = [objc_opt_self() standardUserDefaults];
  v37 = sub_1E4996B7C();

  v38 = sub_1E4997EAC();

  [v36 setObject:v37 forKey:v38];

  sub_1E48CD2C8(v33, v35);
  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E48EFD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E48EFDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48EFE24()
{
  result = qword_1ECF7F988;
  if (!qword_1ECF7F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F988);
  }

  return result;
}

unint64_t sub_1E48EFE78()
{
  result = qword_1ECF7F9A0;
  if (!qword_1ECF7F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9A0);
  }

  return result;
}

unint64_t sub_1E48EFECC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E499873C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1E48EFF18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9A8, &qword_1E499DB90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EFE24();
  sub_1E49989BC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F990, &qword_1E499DB88);
    sub_1E48F00CC(&qword_1ECF7F9B0, sub_1E48F0144, MEMORY[0x1E69E6330]);
    sub_1E499878C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

uint64_t sub_1E48F00CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F990, &qword_1E499DB88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48F0144()
{
  result = qword_1ECF7F9B8;
  if (!qword_1ECF7F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9B8);
  }

  return result;
}

unint64_t sub_1E48F0198()
{
  result = qword_1ECF7F9C8;
  if (!qword_1ECF7F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9C8);
  }

  return result;
}

unint64_t sub_1E48F01EC()
{
  result = qword_1ECF7F9D0;
  if (!qword_1ECF7F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9D0);
  }

  return result;
}

unint64_t sub_1E48F0240()
{
  result = qword_1ECF7F9D8;
  if (!qword_1ECF7F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9D8);
  }

  return result;
}

unint64_t sub_1E48F0294()
{
  result = qword_1ECF7F9E0;
  if (!qword_1ECF7F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9E0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E691CED0);
  }

  return result;
}

unint64_t sub_1E48F0338()
{
  result = qword_1ECF7F9F0;
  if (!qword_1ECF7F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9F0);
  }

  return result;
}

unint64_t sub_1E48F03C0()
{
  result = qword_1ECF7F9F8;
  if (!qword_1ECF7F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9F8);
  }

  return result;
}

unint64_t sub_1E48F0418()
{
  result = qword_1ECF7FA00;
  if (!qword_1ECF7FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA00);
  }

  return result;
}

unint64_t sub_1E48F0470()
{
  result = qword_1ECF7FA08;
  if (!qword_1ECF7FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA08);
  }

  return result;
}

unint64_t sub_1E48F04C8()
{
  result = qword_1ECF7FA10;
  if (!qword_1ECF7FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA10);
  }

  return result;
}

unint64_t sub_1E48F0520()
{
  result = qword_1ECF7FA18;
  if (!qword_1ECF7FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA18);
  }

  return result;
}

unint64_t sub_1E48F0578()
{
  result = qword_1ECF7FA20;
  if (!qword_1ECF7FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA20);
  }

  return result;
}

unint64_t sub_1E48F05D0()
{
  result = qword_1ECF7FA28;
  if (!qword_1ECF7FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA28);
  }

  return result;
}

uint64_t sub_1E48F0638@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA80, &qword_1E499E090);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA88, &qword_1E499E098);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *(v1 + 112);
  v18 = *(*v17 + 104);
  v19 = *(v17 + v18);
  swift_beginAccess();
  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  v20 = *(*v17 + 120);
  v21 = *(v17 + v20);
  if ((v21 & 1) == 0)
  {
    *(v17 + v20) = 1;
  }

  v22 = v18;
  v23 = *(v17 + v18);
  swift_beginAccess();
  os_unfair_lock_unlock(v23 + 4);
  swift_endAccess();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v25 = *(*(v24 - 8) + 56);
  v25(v16, 1, 1, v24);
  if ((v21 & 1) == 0)
  {
    sub_1E48F0C2C();
    sub_1E48F0F44();
    v26 = type metadata accessor for Alarm(0);
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v25(v13, 0, 1, v24);
    sub_1E48F38C0(v13, v16);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v28 = *(v27 - 8);
  v29 = v28;
  v41 = *(v28 + 56);
  v42 = v28 + 56;
  v41(v10, 1, 1, v27);
  v30 = v22;
  v31 = *(v17 + v22);
  swift_beginAccess();
  os_unfair_lock_lock(v31 + 4);
  v32 = swift_endAccess();
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v39 - 2) = v17;
  *(&v39 - 1) = v34;
  v39 = v34;
  (*(v45 + 104))(v44, *MEMORY[0x1E69E8650], v46, v33);
  v35 = v43;
  sub_1E49981BC();
  sub_1E48C1338(v10, &qword_1ECF7FA88, &qword_1E499E098);
  v41(v35, 0, 1, v27);
  sub_1E48F3850(v35, v10);
  v36 = *(v17 + v30);
  swift_beginAccess();
  os_unfair_lock_unlock(v36 + 4);
  swift_endAccess();
  v37 = v47;
  sub_1E48C12D0(v10, v47, &qword_1ECF7FA88, &qword_1E499E098);
  result = (*(v29 + 48))(v37, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v10, &qword_1ECF7FA88, &qword_1E499E098);
    (*(v29 + 32))(v40, v37, v27);
    return sub_1E48C1338(v39, &qword_1ECF81510, &unk_1E499E0A0);
  }

  return result;
}

uint64_t sub_1E48F0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E4996D2C())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E48F0BF0()
{
  type metadata accessor for AlarmDataProvider();
  v0 = swift_allocObject();
  result = sub_1E48F2BEC();
  qword_1ECF81910 = v0;
  return result;
}

double sub_1E48F0C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v20 - v1;
  sub_1E4997EEC();
  v20[1] = sub_1E4997EEC();
  v3 = sub_1E4997EEC();
  v20[2] = v4;
  v20[3] = v3;
  v5 = sub_1E4997EAC();
  v6 = sub_1E499816C();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v8;
  v10 = v5;
  sub_1E498DD1C(0, 0, v2, &unk_1E499E0D8, v9);

  v11 = sub_1E4997EAC();
  v7(v2, 1, 1, v6);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v12;
  v14 = v11;
  sub_1E498DD1C(0, 0, v2, &unk_1E499E0E0, v13);

  v15 = sub_1E4997EAC();
  v7(v2, 1, 1, v6);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = v16;
  v18 = v15;
  sub_1E498DD1C(0, 0, v2, &unk_1E499E0E8, v17);

  return result;
}

void sub_1E48F0F44()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    v1 = [*(v0 + 120) nextAlarm];
    if (v1)
    {
      v2 = v1;
      *(v0 + 128) = 1;
      v3 = swift_allocObject();
      swift_weakInit();
      v6[4] = sub_1E48F3930;
      v6[5] = v3;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1E48F1B14;
      v6[3] = &block_descriptor_2;
      v4 = _Block_copy(v6);

      v5 = [v2 addCompletionBlock_];
      _Block_release(v4);
    }
  }
}

uint64_t sub_1E48F1060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA90, &unk_1E499E0F0);
  v5[14] = swift_task_alloc();
  v6 = sub_1E499840C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F1158, 0, 0);
}

uint64_t sub_1E48F1158()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E499841C();

  sub_1E49983FC();
  swift_beginAccess();
  v2 = sub_1E48F3BB8(&qword_1ECF7FA98, 255, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1E48F129C;
  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E48F129C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E48F1518;
  }

  else
  {
    v2 = sub_1E48F13B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E48F13CC()
{
  v1 = v0[14];
  v2 = sub_1E49968EC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v4 = v0[14];
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_1E48C1338(v4, &qword_1ECF7FA90, &unk_1E499E0F0);
    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1E48F15A4, Strong, 0);
}

uint64_t sub_1E48F1518()
{
  *(v0 + 88) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1E48F15A4()
{
  v1 = v0[20];
  if ((*(v1 + 128) & 1) != 0 || (v2 = [*(v1 + 120) nextAlarm]) == 0)
  {
    v7 = sub_1E48F3C10;
  }

  else
  {
    v3 = v2;
    *(v1 + 128) = 1;
    v4 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1E48F3C14;
    v0[7] = v4;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1E48F1B14;
    v0[5] = &block_descriptor_55;
    v5 = _Block_copy(v0 + 2);

    v6 = [v3 addCompletionBlock_];
    _Block_release(v5);

    v7 = sub_1E48F171C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E48F171C()
{
  v1 = v0[14];

  sub_1E48C1338(v1, &qword_1ECF7FA90, &unk_1E499E0F0);
  v2 = sub_1E48F3BB8(&qword_1ECF7FA98, 255, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1E48F129C;
  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

double sub_1E48F181C(void *a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1E499816C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = a1;
    v12[6] = a2;
    v13 = a1;
    v14 = a2;
    sub_1E498DD1C(0, 0, v7, &unk_1E499E0B8, v12);
  }

  return result;
}

uint64_t sub_1E48F1968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E48F198C, a4, 0);
}

uint64_t sub_1E48F198C()
{
  sub_1E48F19F0(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E48F19F0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  *(v2 + 128) = 0;
  sub_1E48F1BA0(a1, a2, &v13 - v6);
  v8 = *(v2 + 112);
  v9 = *(*v8 + 104);
  v10 = *(v8 + v9);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  sub_1E49759A8(v7);
  v11 = *(v8 + v9);
  swift_beginAccess();
  os_unfair_lock_unlock(v11 + 4);
  swift_endAccess();
  return sub_1E48C1338(v7, &qword_1ECF7F728, &unk_1E499CAB0);
}

void sub_1E48F1B14(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1E48F1BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a1;
  v125 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v102 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v123 = v7;
  v124 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4996ECC();
  v121 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4996EDC();
  v119 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v102 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v102 - v23;
  v25 = sub_1E4996D8C();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v102 - v29;
  MEMORY[0x1EEE9AC00](v31);
  if (a2)
  {
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE2BB458;
    v39 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v38 + v39, v6, &qword_1ECF7F008, &qword_1E499B170);
    v41 = v123;
    v40 = v124;
    v42 = *(v124 + 6);
    v43 = v42(v6, 1, v123);
    v44 = v122;
    if (v43 == 1)
    {
      sub_1E4904BF4(v122);
      if (v42(v6, 1, v41) != 1)
      {
        sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v40 + 32))(v122, v6, v41);
    }

    v68 = a2;
    v69 = sub_1E499706C();
    v70 = sub_1E499830C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v126 = v72;
      *v71 = 136446210;
      swift_getErrorValue();
      v73 = sub_1E49988BC();
      v75 = sub_1E48CA094(v73, v74, &v126);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1E48B0000, v69, v70, "Error getting alarm data., %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x1E691CED0](v72, -1, -1);
      MEMORY[0x1E691CED0](v71, -1, -1);
    }

    (*(v40 + 8))(v44, v41);
LABEL_18:
    v76 = type metadata accessor for Alarm(0);
    return (*(*(v76 - 8) + 56))(v125, 1, 1, v76);
  }

  v115 = v18;
  v116 = v21;
  v122 = v15;
  v123 = v13;
  v118 = v10;
  v124 = v24;
  v45 = v121;
  if (!v120)
  {
    goto LABEL_20;
  }

  v112 = v33;
  v111 = v37;
  v113 = v36;
  v110 = v35;
  v117 = &v102 - v34;
  v114 = v32;
  swift_unknownObjectRetain();
  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46 || (v105 = v46, (v47 = [v46 nextTrigger]) == 0))
  {
    swift_unknownObjectRelease();
LABEL_20:
    v78 = type metadata accessor for Alarm(0);
    v79 = *(*(v78 - 8) + 56);
    v80 = v78;
    v81 = v125;

    return v79(v81, 1, 1, v80);
  }

  v48 = v47;
  v49 = [v47 triggerDate];

  sub_1E4996D3C();
  v50 = v112;
  v51 = *(v112 + 32);
  v52 = v30;
  v53 = v114;
  v107 = v112 + 32;
  v106 = v51;
  v51(v117, v52, v114);
  v54 = v122;
  sub_1E4996EAC();
  v55 = v45;
  v56 = *(v45 + 104);
  v57 = v12;
  v104 = *MEMORY[0x1E6969A48];
  v58 = v118;
  v103 = v56;
  v56(v12);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v59 = v113;
  sub_1E493BA48(v113);
  v60 = v124;
  sub_1E4996E9C();
  v61 = *(v50 + 8);
  v109 = v50 + 8;
  v108 = v61;
  v61(v59, v53);
  v62 = *(v55 + 8);
  v121 = v55 + 8;
  v102 = v62;
  v62(v57, v58);
  v63 = v119 + 8;
  v64 = *(v119 + 8);
  v64(v54, v123);
  v65 = v116;
  sub_1E48C12D0(v60, v116, &qword_1ECF809D0, &qword_1E499D6C0);
  v66 = *(v50 + 48);
  if (v66(v65, 1, v53) == 1)
  {
    v119 = v63;
    sub_1E48C1338(v65, &qword_1ECF809D0, &qword_1E499D6C0);
    v67 = v106;
    goto LABEL_26;
  }

  v82 = v111;
  v83 = v106;
  v106(v111, v65, v53);
  v84 = v117;
  if ((sub_1E4996D0C() & 1) == 0)
  {
    v119 = v63;
    v108(v82, v53);
    v67 = v83;
LABEL_26:
    v90 = v122;
    sub_1E4996EAC();
    v91 = v57;
    v92 = v57;
    v93 = v118;
    v103(v91, v104, v118);
    v94 = v115;
    v95 = v117;
    sub_1E4996E9C();
    v102(v92, v93);
    v64(v90, v123);
    v96 = v114;
    if (v66(v94, 1, v114) == 1)
    {
      swift_unknownObjectRelease();
      sub_1E48C1338(v124, &qword_1ECF809D0, &qword_1E499D6C0);
      v108(v95, v96);
      sub_1E48C1338(v94, &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      v97 = v110;
      v67(v110, v94, v96);
      v98 = v124;
      if (qword_1ECF7EB58 != -1)
      {
        swift_once();
      }

      v99 = swift_allocObject();
      swift_weakInit();
      v100 = swift_allocObject();
      *(v100 + 16) = &unk_1E499E0C8;
      *(v100 + 24) = v99;

      swift_retain_n();
      sub_1E49698BC(v97, sub_1E48F3AA8, v100);

      swift_unknownObjectRelease();

      v101 = v108;
      v108(v97, v96);
      sub_1E48C1338(v98, &qword_1ECF809D0, &qword_1E499D6C0);
      v101(v117, v96);
    }

    goto LABEL_18;
  }

  v85 = v113;
  (*(v112 + 16))(v113, v84, v53);
  v86 = [v105 isSleepAlarm];
  swift_unknownObjectRelease();
  v87 = v108;
  v108(v82, v53);
  sub_1E48C1338(v124, &qword_1ECF809D0, &qword_1E499D6C0);
  v87(v84, v53);
  v88 = v125;
  v83(v125, v85, v53);
  v89 = type metadata accessor for Alarm(0);
  *(v88 + *(v89 + 20)) = v86;
  return (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
}

uint64_t sub_1E48F2880()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E48F2938, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1E48F2938()
{
  v1 = v0[12];
  if ((*(v1 + 128) & 1) == 0)
  {
    v2 = [*(v1 + 120) nextAlarm];
    if (v2)
    {
      v3 = v2;
      *(v1 + 128) = 1;
      v4 = swift_allocObject();
      swift_weakInit();
      v0[6] = sub_1E48F3C14;
      v0[7] = v4;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1E48F1B14;
      v0[5] = &block_descriptor_32;
      v5 = _Block_copy(v0 + 2);

      v6 = [v3 addCompletionBlock_];
      _Block_release(v5);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E48F2AA0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Alarm(uint64_t a1)
{
  result = qword_1ECF7FA30;
  if (!qword_1ECF7FA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48F2B78(uint64_t a1)
{
  result = sub_1E4996D8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E48F2BEC()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAA0, &qword_1E499E100);
  v1 = swift_allocObject();
  v2 = *(*v1 + 96);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = *(*v1 + 104);
  type metadata accessor for CPUnfairLock();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  *(v1 + *(*v1 + 112)) = MEMORY[0x1E69E7CC8];
  *(v1 + *(*v1 + 120)) = 0;
  *(v0 + 112) = v1;
  *(v0 + 120) = [objc_allocWithZone(MEMORY[0x1E69B1FE0]) init];
  *(v0 + 128) = 0;
  return v0;
}

uint64_t sub_1E48F2D50(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = sub_1E48F3BB8(&qword_1ECF7FA40, a2, type metadata accessor for AlarmDataProvider, &unk_1E499DF20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48F2DA8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_1E49978AC();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v67 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA48, &unk_1E499DF90);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v46 - v3;
  v61 = sub_1E49969DC();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - v5;
  v6 = sub_1E4996ABC();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v46 - v9;
  v52 = sub_1E4996CBC();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E4996C5C();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1E4996C2C();
  v13 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E4996C3C();
  v16 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4996CAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - v28;
  MEMORY[0x1E691A0B0](v27);
  sub_1E4996C1C();
  sub_1E4996C0C();
  (*(v13 + 8))(v15, v48);
  sub_1E4996BDC();
  (*(v16 + 8))(v18, v47);
  v30 = *(v20 + 8);
  v30(v22, v19);
  sub_1E4996C4C();
  sub_1E4996C8C();
  (*(v49 + 8))(v12, v50);
  v30(v25, v19);
  v31 = v51;
  sub_1E4996BBC();
  v30(v29, v19);
  sub_1E48F3BB8(&qword_1ECF7FA58, 255, MEMORY[0x1E6969350], MEMORY[0x1E6969348]);
  v32 = v52;
  sub_1E4996D6C();
  (*(v53 + 8))(v31, v32);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E48F36FC();
  v33 = v55;
  sub_1E4996A8C();

  v34 = v59;
  v35 = v57;
  v36 = v61;
  (*(v59 + 104))(v57, *MEMORY[0x1E6968560], v61);
  v37 = v54;
  v38 = v56;
  sub_1E4996A9C();
  (*(v34 + 8))(v35, v36);
  (*(v58 + 8))(v33, v38);
  v71 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E48F37AC();
  v39 = v65;
  sub_1E4996A8C();

  v40 = v67;
  sub_1E499789C();
  v41 = v60;
  v42 = v66;
  sub_1E4996A9C();
  (*(v69 + 8))(v40, v70);
  (*(v68 + 8))(v39, v42);
  sub_1E4996A2C();
  v43 = v64;
  v44 = *(v63 + 8);
  v44(v41, v64);
  return (v44)(v37, v43);
}

void sub_1E48F36B8(uint64_t a1, uint64_t *a2)
{
  sub_1E48F36FC();
  sub_1E4996B4C();
  __break(1u);
}

unint64_t sub_1E48F36FC()
{
  result = qword_1ECF7FA60;
  if (!qword_1ECF7FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA60);
  }

  return result;
}

unint64_t sub_1E48F37AC()
{
  result = qword_1ECF7FA68;
  if (!qword_1ECF7FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA68);
  }

  return result;
}

uint64_t sub_1E48F3850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA88, &qword_1E499E098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F38C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48F3950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48ECAA8;

  return sub_1E48F1968(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E48F3A18()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E48BFD3C;

  return sub_1E48F2860(v0);
}

uint64_t sub_1E48F3AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E48F1060(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48F3BB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E48F3C44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E48F3C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1E48F3D04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E499780C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_1E499758C();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E499757C();
  sub_1E4961B10(*(v2 + 32), *(v2 + 40), v10);
  sub_1E499752C();
  if (sub_1E499751C())
  {
    v11 = *(v2 + 8);
    v40 = *v2;
    v39 = v11;
    v38 = *(v2 + 16);
    v41 = *(v2 + 24);
    sub_1E499784C();
    sub_1E49974CC();
    v12 = sub_1E49977DC();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAA8, &qword_1E499E240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E499B670;
    v14 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    type metadata accessor for CTFont(0);
    *(inited + 64) = v15;
    *(inited + 40) = v12;
    v16 = v14;
    v17 = v12;
    sub_1E494984C(inited);
    swift_setDeallocating();
    sub_1E48F41A8(inited + 32);
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_1E4997EAC();

    type metadata accessor for Key(0);
    sub_1E48CE130();
    v20 = sub_1E4997E2C();

    v21 = [v18 initWithString:v19 attributes:v20];

    [v21 boundingRectWithSize:8 options:0 context:{1.79769313e308, 1.79769313e308}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    (*(v42 + 8))(v9, v43);
    v48.origin.x = v23;
    v48.origin.y = v25;
    v48.size.width = v27;
    v48.size.height = v29;
    v30 = -CGRectGetMinX(v48);
    v49.origin.x = v23;
    v49.origin.y = v25;
    v49.size.width = v27;
    v49.size.height = v29;
    MinY = CGRectGetMinY(v49);
    v44 = v38;
    v32 = v40;
    v33 = v39;
    LOBYTE(v14) = v38;
    sub_1E48C14F4(v40, v39, v38);
    v34 = v41;

    v50.origin.x = v23;
    v50.origin.y = v25;
    v50.size.width = v27;
    v50.size.height = v29;
    CGRectGetWidth(v50);
    v51.origin.x = v23;
    v51.origin.y = v25;
    v51.size.width = v27;
    v51.size.height = v29;
    CGRectGetHeight(v51);
    sub_1E499763C();
    sub_1E499759C();
    result = sub_1E499722C();
    *a1 = v32;
    *(a1 + 8) = v33;
    *(a1 + 16) = v14;
    *(a1 + 24) = v34;
    *(a1 + 32) = 257;
    *(a1 + 40) = v30;
    *(a1 + 48) = MinY;
    v36 = v46;
    *(a1 + 56) = v45;
    *(a1 + 72) = v36;
    *(a1 + 88) = v47;
  }

  else
  {
    result = sub_1E49986DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48F41A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAB0, &qword_1E499E248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48F4210()
{
  result = qword_1ECF7FAB8;
  if (!qword_1ECF7FAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAC0, &qword_1E499E250);
    sub_1E48F429C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAB8);
  }

  return result;
}

unint64_t sub_1E48F429C()
{
  result = qword_1ECF7FAC8;
  if (!qword_1ECF7FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAD0, &qword_1E499E258);
    sub_1E48F4328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAC8);
  }

  return result;
}

unint64_t sub_1E48F4328()
{
  result = qword_1ECF7FAD8;
  if (!qword_1ECF7FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAE0, &unk_1E499E260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAD8);
  }

  return result;
}

uint64_t sub_1E48F43AC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBA8, &qword_1E499E468);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBB0, &unk_1E499E470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = sub_1E4996D8C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  v17 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  v18 = *(v16 + 64);
  if ((v18 & 1) == 0)
  {
    *(v16 + 64) = 1;
  }

  v19 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  v43 = xmmword_1E499E270;
  v44 = 0;
  v45 = 0;
  if ((v18 & 1) == 0)
  {
    sub_1E48F55E0();
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v15);
    v21 = sub_1E498BDD4(v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    (*(v13 + 8))(v15, v12);
    *&v43 = v21;
    *(&v43 + 1) = v23;
    v44 = v25;
    v45 = v27;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C8, &qword_1E499D7E0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v11, 1, 1, v28);
  v31 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v31 + 4);
  v32 = swift_endAccess();
  v38 = &v36;
  MEMORY[0x1EEE9AC00](v32);
  *(&v36 - 2) = v16;
  *(&v36 - 1) = &v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBB8, &qword_1E499E480);
  (*(v40 + 104))(v39, *MEMORY[0x1E69E8650], v41);
  sub_1E49981BC();
  sub_1E48C1338(v11, &qword_1ECF7FBB0, &unk_1E499E470);
  v30(v8, 0, 1, v28);
  sub_1E48C15C8(v8, v11, &qword_1ECF7FBB0, &unk_1E499E470);
  v33 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v33 + 4);
  swift_endAccess();
  v34 = v42;
  sub_1E48C12D0(v11, v42, &qword_1ECF7FBB0, &unk_1E499E470);
  result = (*(v29 + 48))(v34, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v11, &qword_1ECF7FBB0, &unk_1E499E470);
    (*(v29 + 32))(v37, v34, v28);
    return sub_1E48EC78C(v43, *(&v43 + 1));
  }

  return result;
}

uint64_t sub_1E48F48D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E499B670;
  v3 = type metadata accessor for SolarPosition(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = MEMORY[0x1E69E6448];
  v6 = MEMORY[0x1E69E64A8];
  *(v2 + 56) = MEMORY[0x1E69E6448];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  v7 = sub_1E4997EFC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E499B670;
  v11 = *(v1 + *(v3 + 24));
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v11 * 100.0;
  v12 = sub_1E4997EFC();
  v14 = v13;
  result = sub_1E4901B98();
  if (result > 1u)
  {
    if (result == 2)
    {
      v16 = 0.25;
    }

    else
    {
      v16 = 0.5;
    }

    if (result == 2)
    {
      v17 = 180.0;
    }

    else
    {
      v17 = 270.0;
    }
  }

  else
  {
    v16 = 0.0;
    if (result)
    {
      goto LABEL_11;
    }

    v16 = 0.75;
    v17 = 360.0;
  }

  if (v16 > (v17 / 360.0))
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = sub_1E4901B98();
  v18 = 0.25;
  if (result > 1u)
  {
    v20 = 180.0;
    v19 = 0.5;
    if (result == 2)
    {
      v19 = 0.25;
    }

    else
    {
      v20 = 270.0;
    }

LABEL_17:
    v18 = v20 / 360.0;
    if (v19 <= (v20 / 360.0))
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
    v19 = 0.75;
    v20 = 360.0;
    goto LABEL_17;
  }

LABEL_18:
  result = sub_1E4901B98();
  if (result > 1u)
  {
    v21 = 0.25;
    v22 = 180.0;
    if (result != 2)
    {
      v21 = 0.5;
      v22 = 270.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (result)
    {
LABEL_24:
      v23 = (v11 - v16) / (v18 - v21);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1E499B670;
      *(v24 + 56) = v5;
      *(v24 + 64) = v6;
      *(v24 + 32) = v23 * 100.0;
      v25 = sub_1E4997EFC();
      v27 = v26;
      BYTE8(v28) = 0;
      sub_1E49985BC();
      MEMORY[0x1E691B7A0](980839493, 0xE400000000000000);
      MEMORY[0x1E691B7A0](v7, v9);

      MEMORY[0x1E691B7A0](0x656C6379430AB0C2, 0xA90000000000003ALL);
      MEMORY[0x1E691B7A0](v12, v14);

      MEMORY[0x1E691B7A0](0x3A65736168500A25, 0xE90000000000003CLL);
      *&v28 = sub_1E4901B98();
      sub_1E49986CC();
      MEMORY[0x1E691B7A0](44, 0xE100000000000000);
      MEMORY[0x1E691B7A0](v25, v27);

      MEMORY[0x1E691B7A0](15909, 0xE200000000000000);
      return *(&v28 + 1);
    }

    v21 = 0.75;
    v22 = 360.0;
  }

  if (v21 <= (v22 / 360.0))
  {
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1E48F4D00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1E49985BC();

  v20 = 0xD000000000000010;
  v21 = 0x80000001E49A7470;
  v8 = sub_1E48F48D8();
  MEMORY[0x1E691B7A0](v8);

  MEMORY[0x1E691B7A0](10, 0xE100000000000000);
  v9 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  sub_1E48C12D0(v0 + v9, v7, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v10 = type metadata accessor for CurrentLocation(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v7, 1, v10);
  sub_1E48C1338(v7, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v12 == 1)
  {
    v13 = 0xEE003E6C696E3C3ALL;
    v14 = 0x6E6F697461636F4CLL;
LABEL_5:
    MEMORY[0x1E691B7A0](v14, v13);

    return v20;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1E48C12D0(v1 + v9, v4, &qword_1ECF7F8A0, &unk_1E499D7B0);
  result = v11(v4, 1, v10);
  if (result != 1)
  {
    v17 = sub_1E497BFB4(v16);
    MEMORY[0x1E691B7A0](v17);

    sub_1E48F7E28(v4, type metadata accessor for CurrentLocation);
    v14 = v18;
    v13 = v19;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48F4F64()
{
  type metadata accessor for SolarDataProvider(0);
  v0 = swift_allocObject();
  result = sub_1E48F7544();
  qword_1ECF81918 = v0;
  return result;
}

uint64_t sub_1E48F4FA4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB60, &qword_1E499E3E8);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB68, &unk_1E499E3F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  v21 = *(*v20 + 104);
  v22 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  v23 = *(*v20 + 120);
  v24 = *(v20 + v23);
  if ((v24 & 1) == 0)
  {
    *(v20 + v23) = 1;
  }

  v51 = v6;
  v25 = v21;
  v26 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_unlock(v26 + 4);
  swift_endAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v28 = *(*(v27 - 8) + 56);
  v52 = v27;
  v28(v19, 1, 1);
  if ((v24 & 1) == 0)
  {
    v29 = sub_1E499816C();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    sub_1E498DD1C(0, 0, v13, &unk_1E499E420, v31);

    sub_1E48F55E0();
    sub_1E48F571C(v16);
    (v28)(v16, 0, 1, v52);
    sub_1E48F7C38(v16, v19);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB78, &qword_1E499E410);
  v33 = *(v32 - 8);
  v45 = *(v33 + 56);
  v34 = v46;
  v45(v46, 1, 1, v32);
  v35 = *(v20 + v25);
  swift_beginAccess();
  os_unfair_lock_lock(v35 + 4);
  v36 = swift_endAccess();
  v37 = MEMORY[0x1EEE9AC00](v36);
  *(&v42 - 2) = v20;
  *(&v42 - 1) = v19;
  v43 = v19;
  (*(v49 + 104))(v48, *MEMORY[0x1E69E8650], v50, v37);
  v38 = v47;
  sub_1E49981BC();
  sub_1E48C1338(v34, &qword_1ECF7FB68, &unk_1E499E3F0);
  v45(v38, 0, 1, v32);
  sub_1E48C15C8(v38, v34, &qword_1ECF7FB68, &unk_1E499E3F0);
  v39 = *(v20 + v25);
  swift_beginAccess();
  os_unfair_lock_unlock(v39 + 4);
  swift_endAccess();
  v40 = v51;
  sub_1E48C12D0(v34, v51, &qword_1ECF7FB68, &unk_1E499E3F0);
  result = (*(v33 + 48))(v40, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v34, &qword_1ECF7FB68, &unk_1E499E3F0);
    (*(v33 + 32))(v44, v40, v32);
    return sub_1E48C1338(v43, &qword_1ECF7FB70, &unk_1E499E400);
  }

  return result;
}

double sub_1E48F55E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  *&result = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask))
  {
    v6 = sub_1E499816C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    *(v0 + v5) = sub_1E49690B8(0, 0, v4, &unk_1E499E438, v8);
  }

  return result;
}

uint64_t sub_1E48F571C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v38 - v3;
  v4 = sub_1E4996D8C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SolarPosition(0);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for CurrentLocation(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v16, v11, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v39 = v13;
  v40 = v12;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E48C1338(v11, &qword_1ECF7F8A0, &unk_1E499D7B0);
    v17 = type metadata accessor for CurrentLocationSolarPosition(0);
    return (*(*(v17 - 8) + 56))(v44, 1, 1, v17);
  }

  else
  {
    sub_1E48F7D0C(v11, v15, type metadata accessor for CurrentLocation);
    v19 = *v15;
    [*v15 coordinate];
    v21 = v20;
    v23 = v22;
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v6);
    v24 = v38;
    sub_1E4996F3C();
    v25 = sub_1E4996F4C();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    sub_1E4902540(v8, v21, v23);
    sub_1E48C1338(v24, &qword_1ECF7EC50, &qword_1E49A4BF0);
    v26 = v43;
    v27 = *(v42 + 8);
    v27(v6, v43);
    [v19 coordinate];
    v29 = v28;
    v31 = v30;
    sub_1E493BA48(v6);
    sub_1E490203C(v6, v29, v31);
    LODWORD(v29) = v32;
    v27(v6, v26);
    sub_1E4901DDC();
    v33 = v41;
    *&v8[*(v41 + 20)] = LODWORD(v29);
    *&v8[*(v33 + 24)] = v34;
    v35 = type metadata accessor for CurrentLocationSolarPosition(0);
    v36 = *(v35 + 20);
    v37 = v44;
    sub_1E48F7CA8(v15, v44 + v36);
    (*(v39 + 56))(v37 + v36, 0, 1, v40);
    sub_1E48F7D0C(v8, v37, type metadata accessor for SolarPosition);
    sub_1E48F7E28(v15, type metadata accessor for CurrentLocation);
    return (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
  }
}

uint64_t sub_1E48F5C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v4[27] = swift_task_alloc();
  v5 = sub_1E4996D8C();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = type metadata accessor for CurrentLocationResult(0);
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v4[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v4[35] = v7;
  v4[36] = *(v7 - 8);
  v4[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B0, &unk_1E49A62C0);
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F5E78, 0, 0);
}

uint64_t sub_1E48F5E78()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 328) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E48F5F10, v1, 0);
}

uint64_t sub_1E48F5F10()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000035, 0x80000001E49A7090, 1);
    swift_beginAccess();
    v6 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v11;
    swift_endAccess();
  }

  sub_1E497D394(*(v0 + 296));

  return MEMORY[0x1EEE6DFA0](sub_1E48F6068, 0, 0);
}

uint64_t sub_1E48F6068()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_1E48F615C;
  v5 = v0[38];
  v6 = v0[34];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E48F615C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E48F6258, 0, 0);
}

uint64_t sub_1E48F6258()
{
  v1 = v0[34];
  if ((*(v0[32] + 48))(v1, 1, v0[31]) != 1)
  {
    sub_1E48F7D0C(v1, v0[33], type metadata accessor for CurrentLocationResult);
    Strong = swift_weakLoadStrong();
    v0[43] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1E48F63D4, Strong, 0);
    }

    sub_1E48F7E28(v0[33], type metadata accessor for CurrentLocationResult);
  }

  (*(v0[39] + 8))(v0[40], v0[38]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E48F63D4()
{
  v1 = v0[43];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  swift_beginAccess();
  sub_1E48F7E88(v2, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v5 = v0[43];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v24 = v0[27];
  sub_1E493BA48(v7);
  v10 = sub_1E498BDD4(v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v6 + 8))(v7, v8);
  v17 = *(v4 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  sub_1E4976548(v10, v12, v14, v16);

  v18 = *(v4 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v18 + 4);
  swift_endAccess();
  v19 = *(v5 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  sub_1E48F571C(v24);
  v20 = *(*v19 + 104);
  v21 = *(v19 + v20);
  swift_beginAccess();
  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  sub_1E4977138(v24);
  v22 = *(v19 + v20);
  swift_beginAccess();
  os_unfair_lock_unlock(v22 + 4);
  swift_endAccess();
  sub_1E48C1338(v24, &unk_1ECF816F0, &qword_1E49A5090);

  return MEMORY[0x1EEE6DFA0](sub_1E48F662C, 0, 0);
}

uint64_t sub_1E48F662C()
{
  v1 = v0[33];

  sub_1E48F7E28(v1, type metadata accessor for CurrentLocationResult);
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_1E48F615C;
  v3 = v0[38];
  v4 = v0[34];

  return MEMORY[0x1EEE6D9C8](v4, 0, 0, v3);
}

uint64_t sub_1E48F66FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1E4996D8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v8);
  v11 = sub_1E498BDD4(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  v18 = *(v9 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  sub_1E4976548(v11, v13, v15, v17);

  v19 = *(v9 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  v20 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  sub_1E48F571C(v4);
  v21 = *(*v20 + 104);
  v22 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  sub_1E4977138(v4);
  v23 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_unlock(v23 + 4);
  swift_endAccess();
  return sub_1E48C1338(v4, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E48F6994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB88, &unk_1E499E440);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1E4996D8C();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F6B68, 0, 0);
}

uint64_t sub_1E48F6B68(uint64_t a1)
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  v8 = qword_1ECF80790;
  sub_1E493BA48(v2);
  sub_1E4996D1C();
  v10 = v9;
  v11 = *(v4 + 8);
  v1[17] = v11;
  v1[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v3);
  v12 = *&v8[OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers];

  sub_1E4938964(1, v12, v8, 1, v5);
  sub_1E499819C();
  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  v1[19] = v10;
  v13 = swift_task_alloc();
  v1[20] = v13;
  *v13 = v1;
  v13[1] = sub_1E48F6D38;
  v14 = v1[10];
  v15 = v1[6];

  return MEMORY[0x1EEE6D9C8](v15, 0, 0, v14);
}

uint64_t sub_1E48F6D38()
{

  return MEMORY[0x1EEE6DFA0](sub_1E48F6E34, 0, 0);
}

uint64_t sub_1E48F6E34()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 120), v3, v1);
    Strong = swift_weakLoadStrong();
    *(v0 + 168) = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v0 + 152);
      sub_1E4996D1C();
      *(v0 + 176) = v7;
      if (vabdd_f64(v7, v6) <= 5.0)
      {
        (*(v0 + 136))(*(v0 + 120), *(v0 + 104));

        v9 = swift_task_alloc();
        *(v0 + 160) = v9;
        *v9 = v0;
        v9[1] = sub_1E48F6D38;
        v10 = *(v0 + 80);
        v11 = *(v0 + 48);

        return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
      }

      else
      {

        return MEMORY[0x1EEE6DFA0](sub_1E48F7060, v5, 0);
      }
    }

    (*(v0 + 136))(*(v0 + 120), *(v0 + 104));
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E48F7060()
{
  sub_1E48F66FC();

  return MEMORY[0x1EEE6DFA0](sub_1E48F70C8, 0, 0);
}

uint64_t sub_1E48F70C8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  v1(v2, v3);
  v0[19] = v0[22];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1E48F6D38;
  v5 = v0[10];
  v6 = v0[6];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E48F71A0()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation, &qword_1ECF7F8A0, &unk_1E499D7B0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E48F7240()
{
  sub_1E48F71A0();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1E48F7294(uint64_t a1)
{
  sub_1E48F735C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E48F735C(uint64_t a1)
{
  if (!qword_1ECF7FB30)
  {
    type metadata accessor for CurrentLocation(255);
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF7FB30);
    }
  }
}

void sub_1E48F741C(uint64_t a1)
{
  type metadata accessor for SolarPosition(319);
  if (v1 <= 0x3F)
  {
    sub_1E48F735C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E48F74C8(uint64_t a1)
{
  result = type metadata accessor for SolarCycle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E48F7544()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  v2 = type metadata accessor for CurrentLocation(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB90, &qword_1E499E450);
  v4 = swift_allocObject();
  v5 = *(*v4 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = *(*v4 + 104);
  type metadata accessor for CPUnfairLock();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + v7) = v8;
  v9 = MEMORY[0x1E69E7CC8];
  *(v4 + *(*v4 + 112)) = MEMORY[0x1E69E7CC8];
  *(v4 + *(*v4 + 120)) = 0;
  *(v0 + v3) = v4;
  v10 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB98, &qword_1E499E458);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499E270;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 48) = v12;
  *(v11 + 56) = v9;
  *(v11 + 64) = 0;
  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask) = 0;
  v13 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBA0, &qword_1E499E460);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v0 + v13) = v14;
  *(v15 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleCancellationBlockByLocation) = v9;
  *(v14 + 16) = v15;
  *(v14 + 24) = v9;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_overrideTimeUpdateTask) = 0;
  return v0;
}

BOOL sub_1E48F778C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81410, &qword_1E499E3E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (!sub_1E4902F18(a1, a2))
  {
    return 0;
  }

  v14 = type metadata accessor for SolarPosition(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)) || *(a1 + *(v14 + 24)) != *(a2 + *(v14 + 24)))
  {
    return 0;
  }

  v15 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_1E48C12D0(v16, v13, &qword_1ECF7F8A0, &unk_1E499D7B0);
  sub_1E48C12D0(a2 + v15, &v13[v17], &qword_1ECF7F8A0, &unk_1E499D7B0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1E48C1338(v13, &qword_1ECF7F8A0, &unk_1E499D7B0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1E48C12D0(v13, v10, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1E48F7E28(v10, type metadata accessor for CurrentLocation);
LABEL_9:
    v20 = &unk_1ECF81410;
    v21 = &qword_1E499E3E0;
LABEL_10:
    sub_1E48C1338(v13, v20, v21);
    return 0;
  }

  sub_1E48F7D0C(&v13[v17], v7, type metadata accessor for CurrentLocation);
  sub_1E48F7B30();
  if ((sub_1E499848C() & 1) == 0)
  {
    sub_1E48F7E28(v7, type metadata accessor for CurrentLocation);
    sub_1E48F7E28(v10, type metadata accessor for CurrentLocation);
    v20 = &qword_1ECF7F8A0;
    v21 = &unk_1E499D7B0;
    goto LABEL_10;
  }

  v22 = sub_1E49898C4(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  sub_1E48F7E28(v7, type metadata accessor for CurrentLocation);
  sub_1E48F7E28(v10, type metadata accessor for CurrentLocation);
  sub_1E48C1338(v13, &qword_1ECF7F8A0, &unk_1E499D7B0);
  return (v22 & 1) != 0;
}

unint64_t sub_1E48F7B30()
{
  result = qword_1ECF80A10;
  if (!qword_1ECF80A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80A10);
  }

  return result;
}

uint64_t sub_1E48F7B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48F5C1C(a1, v4, v5, v6);
}

uint64_t sub_1E48F7C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F7CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F7D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48F7D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48F6994(a1, v4, v5, v6);
}

uint64_t sub_1E48F7E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48F7E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

CGColorRef sub_1E48F7F00(char a1)
{
  if (a1 == 2)
  {

    return CGColorCreateGenericGray(1.0, 1.0);
  }

  else
  {
    v11[10] = v1;
    v11[11] = v2;
    if (qword_1ECF7EB18 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECF81948;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0x4069800000000000;
    v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v11[4] = sub_1E48CE188;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1E4923F24;
    v11[3] = &block_descriptor_3;
    v7 = _Block_copy(v11);
    v8 = v4;
    v9 = [v6 initWithDynamicProvider_];
    _Block_release(v7);

    v10 = [v9 CGColor];

    return v10;
  }
}

void sub_1E48F8070(int64x2_t *a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  if (v1[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 40])
  {
    v4 = [v1 traitCollection];
    [v4 displayScale];
    v13 = v5;

    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    *v3 = v13;
    *(v3 + 8) = xmmword_1E499E4A0;
    *(v3 + 3) = v8;
    *(v3 + 4) = v10;
    v3[40] = 0;
    v11 = vdupq_lane_s64(0x408AA00000000000, 0);
    v11.i64[0] = v13;
    v12 = 0x4078900000000000;
  }

  else
  {
    v8 = *(v3 + 3);
    v10 = *(v3 + 4);
    v12 = *(v3 + 2);
    v11 = *v3;
  }

  *a1 = v11;
  a1[1].i64[0] = v12;
  a1[1].i64[1] = v8;
  a1[2].i64[0] = v10;
}

id sub_1E48F8180(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels] = v9;
  v10 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[40] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AnalogClockDialView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1E48F82C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    if (sub_1E49986EC())
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v5 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer];
  v29 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer] = v4;

  v6 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v7 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer];
  v30 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer] = v6;

  v8 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v9 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer];
  v28 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer] = v8;

  v10 = 0;
  do
  {
    v11 = -858993459 * v10 > 0x33333333;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v10 != 30 && v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    sub_1E48F8070(&v31);
    UIRoundToScale();
    [v13 setCornerRadius_];
    if (v12)
    {
      v14 = *&v0[v30];
      if (!v14)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&v0[v29];
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    [v14 addSublayer_];
    swift_beginAccess();
    v15 = v13;
    MEMORY[0x1E691B8A0]();
    if (*((*&v0[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E49980DC();
    }

    ++v10;
    sub_1E49980FC();
    swift_endAccess();
  }

  while (v10 != 60);
  v16 = *&v0[v28];
  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v16 setMask_];
  v17 = *&v0[v28];
  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E499E4B0;
  sub_1E48FA6A0();
  v19 = v17;
  *(v18 + 32) = sub_1E499846C();
  *(v18 + 40) = sub_1E499846C();
  *(v18 + 48) = sub_1E499846C();
  v20 = sub_1E499809C();

  [v19 setLocations_];

  v21 = *&v1[v28];
  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setType_];
  v22 = *&v1[v28];
  if (!v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v22 setStartPoint_];
  v23 = *&v1[v28];
  if (!v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v23 setEndPoint_];
  v24 = [v1 layer];
  if (!*&v1[v28])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = v24;
  [v24 addSublayer_];

  v26 = [v1 layer];
  if (*&v1[v29])
  {
    v27 = v26;
    [v26 addSublayer_];

    return;
  }

LABEL_34:
  __break(1u);
}

void sub_1E48F86D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    if (sub_1E49986EC())
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  for (i = 3; i != 15; i += 3)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E499B670;
    *(v6 + 56) = MEMORY[0x1E69E6530];
    *(v6 + 64) = MEMORY[0x1E69E65A8];
    *(v6 + 32) = i;
    sub_1E4997EBC();

    v7 = sub_1E4997EAC();

    [v5 setText_];

    sub_1E48F8070(&v14);
    v8 = *&v14.i64[1];
    v9 = v16;
    if (v17 < v16)
    {
      v9 = v17;
    }

    if (v15 < *&v14.i64[1])
    {
      v8 = v15;
    }

    v10 = v9 / v8 * 51.0;
    v11 = sub_1E4997EAC();
    v12 = CTFontCreateWithNameAndOptions(v11, v10, 0, 0x400uLL);

    [v5 setFont_];
    [v5 sizeToFit];
    [v1 addSubview_];
    swift_beginAccess();
    v13 = v5;
    MEMORY[0x1E691B8A0]();
    if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E49980DC();
    }

    sub_1E49980FC();
    swift_endAccess();
  }
}

void sub_1E48F896C()
{
  v54.receiver = v0;
  v54.super_class = type metadata accessor for AnalogClockDialView();
  objc_msgSendSuper2(&v54, sel_layoutSubviews);
  sub_1E48F82C0();
  sub_1E48F86D8();
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer];
  if (!v1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer];
  if (!v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v3;
  [v0 bounds];
  [v4 setFrame_];

  v5 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer;
  v6 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer];
  if (!v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  [v0 bounds];
  [v7 setFrame_];

  v8 = *&v0[v5];
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E499E4C0;
    v10 = qword_1ECF7EB20;
    v47 = v8;
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECF81950;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0x4059800000000000;
    v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_29;
    v14 = _Block_copy(&aBlock);
    v46 = v11;
    v15 = [v13 initWithDynamicProvider_];
    _Block_release(v14);

    v16 = [v15 CGColor];

    type metadata accessor for CGColor(0);
    v18 = v17;
    *(v9 + 56) = v17;
    *(v9 + 32) = v16;
    if (qword_1ECF7EB28 != -1)
    {
      swift_once();
    }

    v19 = qword_1ECF81958;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0x4059800000000000;
    v21 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_36;
    v22 = _Block_copy(&aBlock);
    v23 = v19;
    v24 = [v21 initWithDynamicProvider_];
    _Block_release(v22);

    v25 = [v24 CGColor];

    *(v9 + 88) = v18;
    *(v9 + 64) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = v46;
    *(v26 + 24) = 0x4059800000000000;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_43;
    v28 = _Block_copy(&aBlock);
    v29 = v46;
    v30 = [v27 initWithDynamicProvider_];
    _Block_release(v28);

    v31 = [v30 CGColor];

    *(v9 + 120) = v18;
    *(v9 + 96) = v31;
    v32 = sub_1E499809C();

    [v47 setColors_];

    v33 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
    swift_beginAccess();
    v34 = *&v0[v33];
    if (v34 >> 62)
    {
      v35 = sub_1E49986EC();
      if (v35)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_11:
        v36 = objc_opt_self();
        if (v35 >= 1)
        {
          v37 = v36;

          v38 = 0;
          do
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x1E691BDE0](v38, v34);
            }

            else
            {
              v39 = *(v34 + 8 * v38 + 32);
            }

            v40 = v39;
            ++v38;
            v41 = [v37 whiteColor];
            v42 = swift_allocObject();
            *(v42 + 16) = v41;
            *(v42 + 24) = 0x4069800000000000;
            v43 = objc_allocWithZone(MEMORY[0x1E69DC888]);
            v52 = sub_1E48CE240;
            v53 = v42;
            aBlock = MEMORY[0x1E69E9820];
            v49 = 1107296256;
            v50 = sub_1E4923F24;
            v51 = &block_descriptor_50;
            v44 = _Block_copy(&aBlock);
            v45 = [v43 initWithDynamicProvider_];
            _Block_release(v44);

            [v40 setTextColor_];
          }

          while (v35 != v38);

          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_18:
    sub_1E48F9034();
    sub_1E48F9F90();
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1E48F9034()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v107 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v94 - v4;
  v6 = sub_1E499708C();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v94 - v10);
  sub_1E48F8070(&v139);
  UIFloorToScale();
  v13 = v12;
  v14 = &v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  UIFloorToScale();
  v16 = v15;
  UIFloorToScale();
  v18 = v17;
  UIFloorToScale();
  v20 = v19;
  [v0 bounds];
  v141 = CGRectInset(v140, 0.0, v13);
  y = v141.origin.y;
  x = v141.origin.x;
  height = v141.size.height;
  width = v141.size.width;
  [v0 bounds];
  v143 = CGRectInset(v142, v16, 0.0);
  v96 = v143.origin.y;
  v97 = v143.origin.x;
  v94 = v143.size.height;
  v95 = v143.size.width;
  [v0 bounds];
  v145 = CGRectInset(v144, 0.0, v18);
  v120 = v145.origin.y;
  v121 = v145.origin.x;
  v118 = v145.size.height;
  v119 = v145.size.width;
  [v0 bounds];
  v147 = CGRectInset(v146, v20, 0.0);
  v111 = v147.origin.y;
  v112 = v147.origin.x;
  v109 = v147.size.height;
  v110 = v147.size.width;
  v21 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers;
  swift_beginAccess();
  v134 = v0;
  v22 = *&v0[v21];
  if (v22 >> 62)
  {
    goto LABEL_72;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v117 = v11;
  v108 = v5;
  if (v22 >> 62)
  {
    v24 = sub_1E49986EC();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = &off_1E8761000;

  v130 = v24;
  if (v24)
  {
    v5 = 0;
    v21 = 0;
    v127 = 6.28318531 / v23;
    v129 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = (v7 + 48);
    v105 = (v7 + 32);
    v113 = (v7 + 8);
    v7 = v22 & 0xC000000000000001;
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    v125 = *MEMORY[0x1E695EFD0];
    *(&v26 + 1) = *(&v125 + 1);
    v126 = v27;
    *&v27 = *(MEMORY[0x1E695EFD0] + 32);
    v123 = *(MEMORY[0x1E695EFD0] + 40);
    v124 = *&v27;
    v104 = -4.71238898;
    v103 = -3.14159265;
    *&v26 = 134349056;
    v102 = v26;
    v122 = v6;
    v115 = v22 & 0xC000000000000001;
    v116 = v14;
    v128 = v22;
    v114 = v25;
    do
    {
      if (v7)
      {
        v45 = MEMORY[0x1E691BDE0](v5, v22);
      }

      else
      {
        if (v5 >= *(v129 + 16))
        {
          goto LABEL_71;
        }

        v45 = *(v22 + 8 * v5 + 32);
      }

      v46 = v45;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v23 = sub_1E49986EC();
        v22 = *&v134[v21];
        goto LABEL_3;
      }

      v133 = v5 + 1;
      v47 = 2 * (v21 + 5 * (v5 / 5) != 0);
      if (!v5)
      {
        v47 = 1;
      }

      if (v5 == 30)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      v49 = v127 * v5 + -1.57079633;
      v50 = v134;
      [v134 v11[245]];
      v55 = sub_1E48F9B7C(v49, v51, v52, v53, v54);
      v57 = v56;
      [v50 v11[245]];
      v62 = sub_1E48F9D7C(v49, v58, v59, v60, v61);
      v63 = v62;
      v135 = v48;
      if (v48 == 2 || (v135 & 1) != 0)
      {
        if (v62 > 3)
        {
          if (v62 == 4)
          {
LABEL_34:
            v64 = v49;
            v66 = v120;
            v65 = v121;
            v68 = v118;
            v67 = v119;
            goto LABEL_51;
          }

          if (v62 == 8)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v62 == 1)
          {
            goto LABEL_34;
          }

          if (v62 == 2)
          {
LABEL_33:
            v64 = v49;
            v66 = v111;
            v65 = v112;
            v68 = v109;
            v67 = v110;
LABEL_51:
            v78 = sub_1E48F9B7C(v64, v65, v66, v67, v68);
            v80 = v81;
            goto LABEL_52;
          }
        }
      }

      else if (v62 > 3)
      {
        if (v62 == 4)
        {
LABEL_50:
          v64 = v49;
          v66 = y;
          v65 = x;
          v68 = height;
          v67 = width;
          goto LABEL_51;
        }

        if (v62 == 8)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v62 == 1)
        {
          goto LABEL_50;
        }

        if (v62 == 2)
        {
LABEL_45:
          v64 = v49;
          v66 = v96;
          v65 = v97;
          v68 = v94;
          v67 = v95;
          goto LABEL_51;
        }
      }

      *&v132 = v21;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v69 = qword_1EE2BB458;
      v70 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      v71 = v108;
      sub_1E48CC978(v69 + v70, v108);
      v72 = *v114;
      v73 = v122;
      if ((*v114)(v71, 1, v122) == 1)
      {
        sub_1E4904BF4(v117);
        v74 = v72(v71, 1, v73);
        v21 = v132;
        if (v74 != 1)
        {
          sub_1E48EF578(v108);
        }
      }

      else
      {
        (*v105)(v117, v71, v73);
        v21 = v132;
      }

      v75 = sub_1E499706C();
      v76 = sub_1E499831C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = v102;
        *(v77 + 4) = v63;
        _os_log_impl(&dword_1E48B0000, v75, v76, "Invalid frame edge %{public}lu", v77, 0xCu);
        MEMORY[0x1E691CED0](v77, -1, -1);
      }

      (*v113)(v117, v122);
      v78 = sub_1E48F9B7C(v49, v121, v120, v119, v118);
      v80 = v79;
      v7 = v115;
      v14 = v116;
      v11 = &off_1E8761000;
LABEL_52:
      [v46 cornerRadius];
      v83 = v82;
      if (v63 > 3)
      {
        v28 = v49;
        if (v63 != 8)
        {
          if (v63 != 4)
          {
LABEL_59:
            *&v132 = v21;
            v84 = v106;
            if (qword_1EE2BB450 != -1)
            {
              swift_once();
            }

            v85 = qword_1EE2BB458;
            v86 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
            swift_beginAccess();
            v87 = v107;
            sub_1E48CC978(v85 + v86, v107);
            v88 = *v114;
            v89 = v122;
            if ((*v114)(v87, 1, v122) == 1)
            {
              sub_1E4904BF4(v84);
              v90 = v88(v87, 1, v89);
              v21 = v132;
              if (v90 != 1)
              {
                sub_1E48EF578(v87);
              }
            }

            else
            {
              (*v105)(v84, v87, v89);
              v21 = v132;
            }

            v91 = sub_1E499706C();
            v92 = sub_1E499831C();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              *v93 = v102;
              *(v93 + 4) = v63;
              _os_log_impl(&dword_1E48B0000, v91, v92, "Invalid frame edge %{public}lu", v93, 0xCu);
              MEMORY[0x1E691CED0](v93, -1, -1);
            }

            (*v113)(v84, v122);
            v28 = 0.0;
            v7 = v115;
            v14 = v116;
            v11 = &off_1E8761000;
            goto LABEL_8;
          }

          v28 = v49 + -1.57079633;
        }
      }

      else if (v63 == 1)
      {
        v28 = v49 + v104;
      }

      else
      {
        if (v63 != 2)
        {
          goto LABEL_59;
        }

        v28 = v49 + v103;
      }

LABEL_8:
      v29 = v83 / cos(v28) - v83;
      v30 = sqrt(v78 * v78 + v80 * v80) + v29;
      v6 = &off_1E8761000;
      *&v138.a = v125;
      *&v138.c = v126;
      v31 = sqrt(v55 * v55 + v57 * v57) - v30 - v29;
      v138.tx = v124;
      v138.ty = v123;
      [v46 setAffineTransform_];
      v32 = v14[1];
      if (v14[2] < v32)
      {
        v32 = v14[2];
      }

      if (v14[4] >= v14[3])
      {
        v33 = v14[3];
      }

      else
      {
        v33 = v14[4];
      }

      v34 = v135;
      v35 = 3.5;
      if (v135 == 2)
      {
        v35 = 2.0;
      }

      [v46 setFrame_];
      v36 = v134;
      [v134 v11[245]];
      MidX = CGRectGetMidX(v148);
      v38 = __sincos_stret(v49);
      [v36 v11[245]];
      [v46 setPosition_];
      CGAffineTransformMakeTranslation(&v138, v30, 0.0);
      tx = v138.tx;
      ty = v138.ty;
      v131 = *&v138.c;
      v132 = *&v138.a;
      CGAffineTransformMakeRotation(&v138, v49);
      v41 = *&v138.a;
      v42 = *&v138.c;
      v43 = *&v138.tx;
      *&v138.a = v132;
      *&v138.c = v131;
      v138.tx = tx;
      v138.ty = ty;
      *&v137.a = v41;
      *&v137.c = v42;
      *&v137.tx = v43;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v138 = v136;
      [v46 setAffineTransform_];
      v44 = sub_1E48F7F00(v34);
      [v46 setBackgroundColor_];

      --v21;
      ++v5;
      v22 = v128;
    }

    while (v133 != v130);
  }
}

double sub_1E48F9B7C(long double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
    ;
  }

  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v10 = CGRectGetHeight(v18) * 0.5;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  Width = CGRectGetWidth(v19);
  v12 = atan2(v10, Width * 0.5);
  if (i < v12)
  {
    goto LABEL_4;
  }

  if (i < 3.14159265 - v12)
  {
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    v15 = CGRectGetHeight(v22) * 0.5;
    v16 = 1.57079633;
LABEL_8:
    v13 = v15 * tan(i + v16);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetHeight(v23);
    return v13;
  }

  if (i < v12 + 3.14159265)
  {
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    v13 = CGRectGetWidth(v24) * 0.5;
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetWidth(v25);
    v14 = i + 3.14159265;
    goto LABEL_5;
  }

  if (i < 6.28318531 - v12)
  {
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    v15 = CGRectGetHeight(v26) * 0.5;
    v16 = 4.71238898;
    goto LABEL_8;
  }

LABEL_4:
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v13 = CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  v14 = i;
LABEL_5:
  tan(v14);
  return v13;
}

uint64_t sub_1E48F9D7C(long double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
    ;
  }

  if (i >= 4.71238898)
  {
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    v17 = CGRectGetHeight(v30) * -0.5;
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    Width = CGRectGetWidth(v31);
    v19 = atan2(v17, Width * 0.5);
      ;
    }

    if (i < j)
    {
      return 1;
    }

    else
    {
      return 8;
    }
  }

  else if (i >= 3.14159265)
  {
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    v22 = CGRectGetHeight(v32) * -0.5;
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    v23 = CGRectGetWidth(v33);
    v24 = atan2(v22, v23 * -0.5);
      ;
    }

    if (i >= k)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v10 = CGRectGetHeight(v28) * 0.5;
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    v11 = CGRectGetWidth(v29);
    if (i >= 1.57079633)
    {
      v26 = atan2(v10, v11 * -0.5);
        ;
      }

      v14 = i < m;
      v15 = 2;
      v16 = 4;
    }

    else
    {
      v12 = atan2(v10, v11 * 0.5);
        ;
      }

      v14 = i < n;
      v15 = 4;
      v16 = 8;
    }

    if (v14)
    {
      return v16;
    }

    else
    {
      return v15;
    }
  }
}

void sub_1E48F9F90()
{
  v1 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

LABEL_32:
  v3 = sub_1E49986EC();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    goto LABEL_3;
  }

  v1 = sub_1E49986EC();
LABEL_4:
  v4 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame;
  v5 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame;

  if (v1)
  {
    v6 = 0;
    v58 = v2;
    v57 = &v0[v5];
    v61 = v2 & 0xFFFFFFFFFFFFFF8;
    v62 = v2 & 0xC000000000000001;
    v7 = &off_1E8761000;
    v60 = 6.28318531 / v3;
    v59 = v1;
    while (1)
    {
      if (v62)
      {
        v8 = MEMORY[0x1E691BDE0](v6, v2);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        if (v6 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v8 = *(v2 + 8 * v6 + 32);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      v10 = v8;
      [v10 v7[282]];
      UIRectIntegralWithViewScale();
      [v10 setFrame_];
      [v0 bounds];
      v15 = sub_1E48F9B7C(v60 * v6, v11, v12, v13, v14);
      v17 = sqrt(v15 * v15 + v16 * v16);
      if (!v6)
      {
        break;
      }

      if (v6 == 2)
      {
        sub_1E48F8070(&v65);
        UIFloorToScale();
        goto LABEL_17;
      }

      if (v6 != 1)
      {
        sub_1E48F8070(&v66);
        UIFloorToScale();
        v26 = v27;
        [v10 _firstLineBaselineOffsetFromBoundsTop];
        v29 = v28;
        [v10 bounds];
        v24 = v29 + CGRectGetHeight(v70) * -0.5;
        goto LABEL_19;
      }

      sub_1E48F8070(&v64);
      UICeilToScale();
      v19 = v18;
      [v10 _capOffsetFromBoundsTop];
      v21 = v20;
      [v10 bounds];
      Height = CGRectGetHeight(v68);
      v23 = v17 - v19;
      v24 = Height * 0.5 - v21;
LABEL_20:
      v30 = v23 + v24;
      [v0 bounds];
      UIRectGetCenter();
      UIPointRoundToViewScale();
      v32 = v31;
      v34 = v33;
      v35 = v7;
      [v10 v7[282]];
      v36 = [v0 traitCollection];
      [v36 displayScale];

      v37 = v32;
      UIRectIntegralWithScale();
      [v10 setFrame_];
      __sincos_stret(v60 * v6);
      v38 = [v0 traitCollection];
      [v38 displayScale];

      UIPointRoundToScale();
      [v10 setCenter_];
      if (v6 == 3)
      {

        v7 = v35;
        v2 = v58;
        v1 = v59;
      }

      else
      {
        v7 = v35;
        v2 = v58;
        v1 = v59;
        if (v6 == 1)
        {
        }

        else
        {
          [v10 bounds];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v71.origin.x = v40;
          v71.origin.y = v42;
          v71.size.width = v44;
          v71.size.height = v46;
          v47 = v30 - CGRectGetWidth(v71) * 0.5;
          sub_1E48F8070(&v67);
          UIRoundToScale();
          v49 = v48;
          [v0 bounds];
          v50 = CGRectGetHeight(v72) - (v49 + v49);
          UIRoundToScale();
          v52 = v51;

          v53 = v34 - v50 * 0.5 + v52;
          if (v6)
          {
            v54 = v37 - v47 + v52;
            v55 = v37 - v52;
            v56 = &v0[v4];
          }

          else
          {
            v54 = v37 + v52;
            v55 = v37 + v47 - v52;
            v56 = v57;
          }

          *v56 = v54;
          v56[1] = v53;
          v56[2] = v55 - v54;
          v56[3] = v34 + v50 * 0.5 - v52 - v53;
        }
      }

      ++v6;
      if (v9 == v1)
      {
        goto LABEL_30;
      }
    }

    sub_1E48F8070(&v63);
    UICeilToScale();
LABEL_17:
    v26 = v25;
    [v10 bounds];
    v24 = CGRectGetWidth(v69) * -0.5;
LABEL_19:
    v23 = v17 - v26;
    goto LABEL_20;
  }

LABEL_30:
}

id sub_1E48FA5B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockDialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E48FA6A0()
{
  result = qword_1ECF7FC00;
  if (!qword_1ECF7FC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7FC00);
  }

  return result;
}

void sub_1E48FA6EC()
{
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels) = v1;
  v2 = (v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 40) = 1;
  sub_1E49986DC();
  __break(1u);
}

id sub_1E48FA7EC(uint64_t a1, const CGPath *a2, void *a3, char *a4, double a5)
{
  v133 = *MEMORY[0x1E69E9840];
  v112 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v95 = a3;
  [a3 bounds];
  Width = CGRectGetWidth(v138);
  v106 = a2;
  v11 = sub_1E48FD59C(a2);
  if (*(v11 + 16))
  {
    v104 = a4;
    v12 = *(v11 + 32);
    a4 = v11;

    v13 = v12;
    v14 = *(v12 + 16);
    v96 = v13;
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      v5 = 0.0;
      do
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_64;
        }

        a4 = *(v16 + 8 * v15);
        v24 = *(a4 + 2);
        if (v24 == 2)
        {
          v27 = vsubq_f64(*(a4 + 3), *(a4 + 2));
          v23 = sqrt(vaddvq_f64(vmulq_f64(v27, v27)));
        }

        else if (v24 == 3)
        {
          v17.f64[0] = *(a4 + 6);
          v18 = *(a4 + 2);
          v19 = *(a4 + 56);
          v20 = *(a4 + 8) - v17.f64[0];
          v17.f64[1] = *(a4 + 9);
          v21 = vsubq_f64(v17, v18);
          v22 = vsubq_f64(v19, vextq_s8(v18, v18, 8uLL));
          v23 = (sqrt(v20 * v20 + (*(a4 + 9) - v19.f64[0]) * (*(a4 + 9) - v19.f64[0])) + vaddvq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v22, v22), vmulq_f64(v21, v21))))) * 0.5;
        }

        else
        {
          v23 = 0.0;
          if (v24 == 4)
          {

            sub_1E48FD7A0(v25);
            v23 = v26;

            v13 = v96;
          }
        }

        ++v15;
        v5 = v5 + v23;
      }

      while (v14 != v15);
    }

    [a1 size];
    v94 = [objc_opt_self() systemFontOfSize_];
    CTFontGetCapHeight(v94);
    v92 = CTLineCreateWithAttributedString(a1);
    CTLineGetGlyphRuns(v92);
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    *&v132[0] = 0;
    type metadata accessor for CTRun(0);
    sub_1E49980AC();
LABEL_70:
    __break(1u);
  }

LABEL_67:
  __break(1u);
  v88 = sub_1E49986EC();
  if (v88)
  {
    v28 = 0;
    v103 = a1 & 0xC000000000000001;
    v101 = a1 + 32;
    v102 = *MEMORY[0x1E69DB648];
    v97 = (v5 - (Width + v6)) * 0.5;
    v99 = a4;
    v100 = a1;
    v98 = v88;
    do
    {
      if (v103)
      {
        v29 = MEMORY[0x1E691BDE0](v28, a1);
        v30 = __OFADD__(v28, 1);
        v31 = v28 + 1;
        if (v30)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v28 >= *(a4 + 2))
        {
          goto LABEL_65;
        }

        v29 = *(v101 + 8 * v28);
        v30 = __OFADD__(v28, 1);
        v31 = v28 + 1;
        if (v30)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      v108 = v31;
      v32 = v29;
      v33 = CTRunGetAttributes(v29);
      *&v126 = v102;
      type metadata accessor for Key(0);
      v34 = v102;
      a1 = sub_1E499885C();
      v107 = v33;
      a4 = [(__CFDictionary *)v33 __swift_objectForKeyedSubscript:a1];
      swift_unknownObjectRelease();
      if (!a4)
      {
        __break(1u);
        goto LABEL_70;
      }

      sub_1E49984FC();
      swift_unknownObjectRelease();
      sub_1E48C42DC(&matrix, &v126);
      type metadata accessor for CTFont(0);
      swift_dynamicCast();
      font = *&v121.a;
      run = v32;
      GlyphCount = CTRunGetGlyphCount(v32);
      if (GlyphCount < 0)
      {
        goto LABEL_66;
      }

      v36 = GlyphCount;
      if (GlyphCount)
      {
        type metadata accessor for CGPoint(0);
        v37 = sub_1E49980EC();
        *(v37 + 16) = v36;
        bzero((v37 + 32), 16 * v36);
        v38 = v32;
        v134.location = 0;
        v134.length = v36;
        CTRunGetPositions(v32, v134, (v37 + 32));
        type metadata accessor for CGSize(0);
        v39 = sub_1E49980EC();
        *(v39 + 16) = v36;
        bzero((v39 + 32), 16 * v36);
        v40 = v36;
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
        v38 = v32;
        v135.location = 0;
        v135.length = 0;
        CTRunGetPositions(v32, v135, (MEMORY[0x1E69E7CC0] + 32));
        v40 = 0;
        v39 = v37;
      }

      v136.location = 0;
      v136.length = v40;
      CTRunGetAdvances(v38, v136, (v39 + 32));
      v41 = *(v39 + 16);
      if (v41)
      {
        *&v126 = MEMORY[0x1E69E7CC0];
        sub_1E4906F18(0, v41, 0);
        a1 = v126;
        v42 = *(v126 + 16);
        v43 = 32;
        do
        {
          v44 = *(v39 + v43);
          *&v126 = a1;
          v45 = *(a1 + 24);
          if (v42 >= v45 >> 1)
          {
            sub_1E4906F18((v45 > 1), v42 + 1, 1);
            a1 = v126;
          }

          *(a1 + 16) = v42 + 1;
          *(a1 + 8 * v42 + 32) = v44;
          v43 += 16;
          ++v42;
          --v41;
        }

        while (v41);

        if (v36)
        {
LABEL_29:
          v46 = sub_1E49980EC();
          *(v46 + 16) = v36;
          bzero((v46 + 32), 2 * v36);
          goto LABEL_32;
        }
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
        if (v36)
        {
          goto LABEL_29;
        }
      }

      v46 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v137.location = 0;
      v137.length = v40;
      v115 = v46 + 32;
      CTRunGetGlyphs(run, v137, (v46 + 32));
      v131 = 0;
      v129 = 0u;
      v130 = 0u;
      v117 = a1;
      if (v104)
      {
        v47 = *(a1 + 16);
        if (v47)
        {
          v48 = sub_1E48FD854(v37, a1, Width + v97 + *(a1 + 8 * v47 + 24) * 0.5);
          sub_1E48FB568(v106, v48, 1, a5);
          v50 = v49;

          v51 = *(v50 + 16);
          if (v51)
          {
            sub_1E48CD210(v50 + 40 * v51 - 8, &v126);

            sub_1E48C1338(&v129, &qword_1ECF7FC18, &unk_1E499E580);
          }

          else
          {
            sub_1E48C1338(&v129, &qword_1ECF7FC18, &unk_1E499E580);

            *&v128 = 0;
            v126 = 0u;
            v127 = 0u;
          }

          v129 = v126;
          v130 = v127;
          v131 = v128;
        }

        v55 = v97;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E499B670;
        *(inited + 32) = Width * 0.5 + v97;
        sub_1E48FB568(v106, inited, 0, a5);
        v54 = v53;
        swift_setDeallocating();
        if (*(v54 + 16))
        {
          sub_1E48CD210(v54 + 32, &v126);

          sub_1E48C1338(&v129, &qword_1ECF7FC18, &unk_1E499E580);
        }

        else
        {
          sub_1E48C1338(&v129, &qword_1ECF7FC18, &unk_1E499E580);

          *&v128 = 0;
          v126 = 0u;
          v127 = 0u;
        }

        v129 = v126;
        v130 = v127;
        v131 = v128;
        v55 = Width * 0.5 + v97;
      }

      a4 = sub_1E48FD854(v37, a1, v55);

      sub_1E48FB568(v106, a4, v104 & 1, a5);
      v111 = v56;

      sub_1E48C12D0(&v129, &v126, &qword_1ECF7FC18, &unk_1E499E580);
      if (*(&v127 + 1))
      {
        sub_1E48B7448(&v126, &matrix);
        sub_1E48FDC7C(&matrix, v132, Width, v113);
        v126 = v132[0];
        v127 = v132[1];
        v128 = v132[2];
        [v95 setAffineTransform_];
        __swift_destroy_boxed_opaque_existential_0Tm(&matrix);
      }

      else
      {
        sub_1E48C1338(&v126, &qword_1ECF7FC18, &unk_1E499E580);
      }

      v57 = 0.0;
      v119 = *(v111 + 16);
      v114 = a1 + 32;
      v116 = v46;
      while (1)
      {
        v58 = 0uLL;
        v59 = v119;
        v60 = 0uLL;
        v61 = 0uLL;
        if (*&v57 != *&v119)
        {
          if (*&v57 >= *(v111 + 16))
          {
            goto LABEL_63;
          }

          *&v59 = *&v57 + 1;
          matrix.a = v57;
          sub_1E48CD210(v111 + 32 + 40 * *&v57, &matrix.b);
          v58 = *&matrix.a;
          v60 = *&matrix.c;
          v61 = *&matrix.tx;
        }

        v126 = v58;
        v127 = v60;
        v128 = v61;
        if (!v61)
        {
          break;
        }

        v120 = v58;
        sub_1E48B7448((&v126 + 8), v122);
        if ((v120 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v120 >= *(v46 + 16))
        {
          goto LABEL_61;
        }

        if (v120 >= *(a1 + 16))
        {
          goto LABEL_62;
        }

        v62 = *(v115 + 2 * v120);
        v63 = *(v114 + 8 * v120);
        v65 = v123;
        v64 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v66 = *(v64 + 56);
        v67 = v66(v65, v64) * v63 * 0.5;
        v68 = v123;
        v69 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v70 = (*(v69 + 80))(v68, v69) * v63 * 0.5;
        v71 = v123;
        v72 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v73 = v113 * (*(v72 + 80))(v71, v72) * 0.5;
        v74 = v113 * v66(v65, v64) * 0.5;
        v75 = v66(v65, v64);
        v76 = v123;
        v77 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v78 = (*(v77 + 80))(v76, v77);
        v79 = v123;
        v80 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v81 = -(*(v80 + 80))(v79, v80);
        v6 = v66(v65, v64);
        v82 = v123;
        v83 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v5 = (*(v83 + 8))(v82, v83) + v73 - v67;
        a4 = v123;
        v84 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v85 = (*(v84 + 32))(a4, v84);
        CGAffineTransformMake(&v121, v75, v78, v81, v6, v5, v85 - v74 - v70);
        matrix = v121;
        v86 = CTFontCreatePathForGlyph(font, v62, &matrix);
        if (v86)
        {
          a4 = v86;
          v87 = [objc_opt_self() bezierPathWithCGPath_];
          [v112 appendPath_];
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v122);
        v57 = v59;
        v46 = v116;
        a1 = v117;
      }

      sub_1E48C1338(&v129, &qword_1ECF7FC18, &unk_1E499E580);

      a4 = v99;
      v28 = v108;
      a1 = v100;
    }

    while (v108 != v98);
  }

  v89 = [v112 CGPath];

  return v89;
}

uint64_t getEnumTagSinglePayload for CurvedTextPathProvider(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CurvedTextPathProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1E48FB568(const CGPath *a1, uint64_t a2, int a3, double a4)
{
  HIDWORD(v44) = a3;
  v6 = sub_1E48FD59C(a1);
  if (!*(v6 + 16))
  {
    goto LABEL_48;
  }

  v7 = *(v6 + 32);

  v8 = v7;
  v48 = *(v7 + 16);
  if (!v48)
  {

    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a2 + 16);
  v47 = v8 + 32;
  v49 = a2 + 32;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0.0;
  v46 = v8;
  while (v10 < *(v8 + 16))
  {
    v14 = v9;
    v15 = *(v47 + 8 * v10);
    v16 = *(v15 + 16);
    v50 = v10;
    switch(v16)
    {
      case 2:
        v21 = vsubq_f64(*(v15 + 48), *(v15 + 32));
        v20 = sqrt(vaddvq_f64(vmulq_f64(v21, v21)));

        break;
      case 3:

        sub_1E48FD970(v19);
        goto LABEL_11;
      case 4:

        sub_1E48FD7A0(v17);
LABEL_11:
        v20 = v18;
        break;
      default:

        v20 = 0.0;
        break;
    }

    v22 = v13;
    if (v9 < v11)
    {
      while (1)
      {
        if (v14 < 0)
        {
          __break(1u);
          goto LABEL_43;
        }

        v23 = v22 + *(v49 + 8 * v9);
        if (v23 > v20)
        {
          break;
        }

        ++v9;
        v22 = v23;
        if (v11 == v9)
        {
          v22 = v23;
          v9 = v11;
          break;
        }
      }

      if (v9 < v14)
      {
        goto LABEL_44;
      }
    }

    v24 = v9 - v14;
    if (v9 != v14)
    {
      if (v14 < 0)
      {
        goto LABEL_45;
      }

      if (v14 >= v11)
      {
        goto LABEL_46;
      }

      if (v9 - 1 >= v11)
      {
        goto LABEL_47;
      }

      v25 = sub_1E49062AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v40 = *(v25 + 2);
      v41 = (v49 + 8 * v14);
      do
      {
        v42 = *v41;
        v43 = *(v25 + 3);
        if (v40 >= v43 >> 1)
        {
          v25 = sub_1E49062AC((v43 > 1), v40 + 1, 1, v25);
        }

        v13 = v13 + v42;
        *(v25 + 2) = v40 + 1;
        *&v25[8 * v40 + 32] = v13;
        ++v41;
        ++v40;
        --v24;
      }

      while (v24);
LABEL_22:
      sub_1E48FB99C(v15, v25, BYTE4(v44) & 1, a4);
      v27 = v26;

      v28 = *(v27 + 16);
      if (v28)
      {
        v45 = v27;
        v29 = v27 + 32;
        do
        {
          sub_1E48CD210(v29, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v12 = sub_1E49063D4(0, v12[2] + 1, 1, v12);
            v54 = v12;
          }

          v32 = v12[2];
          v31 = v12[3];
          if (v32 >= v31 >> 1)
          {
            v12 = sub_1E49063D4((v31 > 1), v32 + 1, 1, v12);
            v54 = v12;
          }

          v33 = v52;
          v34 = v53;
          v35 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
          v36 = MEMORY[0x1EEE9AC00](v35);
          v38 = &v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v39 + 16))(v38, v36);
          sub_1E48FD504(v32, v38, &v54, v33, v34);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v29 += 40;
          --v28;
        }

        while (v28);
      }

      goto LABEL_4;
    }

    v25 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_22;
    }

LABEL_4:

    v10 = v50 + 1;
    v13 = v22 - v20;
    v8 = v46;
    if (v50 + 1 == v48)
    {

      return;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1E48FB99C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v44 = a2;
  v7 = sub_1E48FD9F4(a1) * 10.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v8 = v7;
  if (v7 >= 1)
  {
    v9 = (v7 - 1);
    v10 = sub_1E49062AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = 0;
    v12 = *(v10 + 2);
    do
    {
      v13 = *(v10 + 3);
      if (v12 >= v13 >> 1)
      {
        v10 = sub_1E49062AC((v13 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      *&v10[8 * v12++ + 32] = v11++ / v9;
    }

    while (v8 != v11);
    v14 = sub_1E49130A8(a1);
    v15 = sub_1E48FBD84(v14, v10, a3 & 1, a4);

    v42 = v15[2];
    if (!v42)
    {
      goto LABEL_30;
    }

    v16 = (v15 + 4);
    sub_1E48CD210((v15 + 4), v51);
    v17 = 0;
    v18 = 0;
    v41 = v44 + 32;
    v19 = 0.0;
    v43 = MEMORY[0x1E69E7CC0];
    while (v17 < v15[2])
    {
      sub_1E48CD210(v16, &v48);
      v20 = *(v44 + 16);
      if (v18 == v20)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v48);
LABEL_24:

        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        return;
      }

      v21 = v15;
      v22 = v52;
      v23 = v53;
      v24 = __swift_project_boxed_opaque_existential_1(v51, v52);
      v25 = v49;
      v26 = v50;
      v27 = __swift_project_boxed_opaque_existential_1(&v48, v49);
      v28 = sub_1E48FDA38(v24, v27, v22, v25, v23, v26);
      if (v18 >= v20)
      {
        goto LABEL_26;
      }

      v19 = v19 + v28;
      if (*(v41 + 8 * v18) > v19)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
      }

      else
      {
        sub_1E48CD210(&v48, v45);
        v29 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1E49063D4(0, v29[2] + 1, 1, v29);
          v54 = v29;
        }

        v32 = v29[2];
        v31 = v29[3];
        v43 = v29;
        if (v32 >= v31 >> 1)
        {
          v43 = sub_1E49063D4((v31 > 1), v32 + 1, 1, v43);
          v54 = v43;
        }

        v33 = v46;
        v34 = v47;
        v35 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
        v36 = MEMORY[0x1EEE9AC00](v35);
        v38 = &v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v38, v36);
        sub_1E48FD504(v32, v38, &v54, v33, v34);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        ++v18;
      }

      v15 = v21;
      ++v17;
      sub_1E48B7448(&v48, v51);
      v16 += 40;
      if (v42 == v17)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void *sub_1E48FBD84(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v76 = a3;
  v5 = *(a1 + 16);
  if (v5 == 2)
  {
    v41 = *(a2 + 16);
    if (!v41)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v42 = (a2 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v43 = *v42;
      sub_1E48CD210(a1 + 32, &v81);
      sub_1E48CD210(a1 + 72, v78);
      v44 = v82;
      v45 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, v82);
      v46 = (v45[1])(v44, v45);
      v47 = v79;
      v48 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v49 = (*(v48 + 8))(v47, v48);
      v50 = v82;
      v51 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, v82);
      v52 = (v51[4])(v50, v51);
      v53 = v79;
      v54 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v55 = (*(v54 + 32))(v53, v54);
      v56 = v79;
      v57 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v58 = (*(v57 + 8))(v56, v57);
      v59 = v82;
      v60 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, v82);
      v61 = v58 - (v60[1])(v59, v60);
      v62 = v79;
      v63 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v64 = (*(v63 + 32))(v62, v63);
      v65 = v82;
      v66 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, v82);
      v67 = v64 - (v66[4])(v65, v66);
      v68 = sqrt(v61 * v61 + v67 * v67);
      v69 = 0.0;
      v70 = 0.0;
      if (v68 > 0.0)
      {
        v69 = v61 / v68;
        v70 = v67 / v68;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      __swift_destroy_boxed_opaque_existential_0Tm(&v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
      }

      v72 = v9[2];
      v71 = v9[3];
      if (v72 >= v71 >> 1)
      {
        v9 = sub_1E49063D4((v71 > 1), v72 + 1, 1, v9);
      }

      v82 = &type metadata for SamplePoint;
      v83 = &off_1F5E84FA8;
      v73 = swift_allocObject();
      *&v81 = v73;
      *(v73 + 16) = (1.0 - v43) * v46 + v43 * v49;
      *(v73 + 24) = (1.0 - v43) * v52 + v43 * v55;
      *(v73 + 32) = v69;
      *(v73 + 40) = v70;
      *(v73 + 48) = 0;
      v9[2] = v72 + 1;
      sub_1E48B7448(&v81, &v9[5 * v72 + 4]);
      ++v42;
      --v41;
    }

    while (v41);
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v7 = *(a2 + 16);
        if (v7)
        {
          v8 = (a2 + 32);
          v9 = MEMORY[0x1E69E7CC0];
          v77 = xmmword_1E499A180;
          v75 = xmmword_1E499E4C0;
          do
          {
            v10 = *v8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
            inited = swift_initStackObject();
            *(inited + 16) = v77;
            sub_1E48CD210(a1 + 32, inited + 32);
            sub_1E48CD210(a1 + 72, inited + 72);
            v12 = swift_initStackObject();
            *(v12 + 16) = v77;
            sub_1E48CD210(a1 + 72, v12 + 32);
            sub_1E48CD210(a1 + 112, v12 + 72);
            v13 = swift_initStackObject();
            *(v13 + 16) = v77;
            sub_1E48CD210(a1 + 112, v13 + 32);
            sub_1E48CD210(a1 + 152, v13 + 72);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC28, &qword_1E499E590);
            v14 = swift_initStackObject();
            *(v14 + 16) = v75;
            *(v14 + 32) = inited;
            *(v14 + 40) = v12;
            *(v14 + 48) = v13;
            sub_1E48FCF34(v14, v76 & 1, &v81, v10, a4);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC30, &qword_1E499E598);
            swift_arrayDestroy();
            sub_1E48CD210(&v81, v78);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v84[0] = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
              v84[0] = v9;
            }

            v17 = v9[2];
            v16 = v9[3];
            if (v17 >= v16 >> 1)
            {
              v9 = sub_1E49063D4((v16 > 1), v17 + 1, 1, v9);
              v84[0] = v9;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v81);
            v18 = v79;
            v19 = v80;
            v20 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
            v21 = MEMORY[0x1EEE9AC00](v20);
            v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v24 + 16))(v23, v21);
            sub_1E48FD504(v17, v23, v84, v18, v19);
            __swift_destroy_boxed_opaque_existential_0Tm(v78);
            ++v8;
            --v7;
          }

          while (v7);
          return v9;
        }
      }

      return MEMORY[0x1E69E7CC0];
    }

    v25 = *(a2 + 16);
    if (!v25)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v26 = (a2 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v77 = xmmword_1E499A180;
    do
    {
      v27 = *v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
      v28 = swift_initStackObject();
      *(v28 + 16) = v77;
      sub_1E48CD210(a1 + 32, v28 + 32);
      sub_1E48CD210(a1 + 72, v28 + 72);
      v29 = swift_initStackObject();
      *(v29 + 16) = v77;
      sub_1E48CD210(a1 + 72, v29 + 32);
      sub_1E48CD210(a1 + 112, v29 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC28, &qword_1E499E590);
      v30 = swift_initStackObject();
      *(v30 + 16) = v77;
      *(v30 + 32) = v28;
      *(v30 + 40) = v29;
      sub_1E48FCF34(v30, v76 & 1, &v81, v27, a4);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC30, &qword_1E499E598);
      swift_arrayDestroy();
      sub_1E48CD210(&v81, v78);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v9;
      if ((v31 & 1) == 0)
      {
        v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
        v84[0] = v9;
      }

      v33 = v9[2];
      v32 = v9[3];
      if (v33 >= v32 >> 1)
      {
        v9 = sub_1E49063D4((v32 > 1), v33 + 1, 1, v9);
        v84[0] = v9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v81);
      v34 = v79;
      v35 = v80;
      v36 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
      v37 = MEMORY[0x1EEE9AC00](v36);
      v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39, v37);
      sub_1E48FD504(v33, v39, v84, v34, v35);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      ++v26;
      --v25;
    }

    while (v25);
  }

  return v9;
}