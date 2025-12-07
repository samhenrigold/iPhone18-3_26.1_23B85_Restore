unint64_t sub_1BBBECD64(int64_t a1, uint64_t a2)
{
  v40 = sub_1BBBF5284();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BBBF55A4();
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
      sub_1BBBEDD5C(&qword_1EBC9B310, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1BBBF53B4();
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
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
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

uint64_t sub_1BBBED098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v30 = a5;
  v31 = a6;
  v7 = v6;
  v32 = a1;
  v11 = sub_1BBBF5284();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1BBBE46B8(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_1BBBED340(v30, v31);
      goto LABEL_9;
    }

    sub_1BBBEC98C(v20, a4 & 1, v30, v31);
    v23 = sub_1BBBE46B8(a3);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1BBBF57C4();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 16 * v17);
    *v27 = v32;
    v27[1] = a2;
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    return sub_1BBBED280(v17, v14, v25, a2, v26);
  }
}

uint64_t sub_1BBBED280(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1BBBF5284();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_1BBBED340(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1BBBF5284();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1BBBF55F4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v5;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v22 *= 16;
        v27 = v36;
        v28 = *(v36 + 48);
        v29 = *(v23 + 32);
        v38 = *(*(v7 + 56) + v22);
        v29(v28 + v24, v25, v26);
        *(*(v27 + 56) + v22) = v38;

        v17 = v39;
      }

      while (v39);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v39 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_1BBBED5C0(char *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_1BBBF5354();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BBBF5384();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  aBlock[4] = sub_1BBBED8C8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  sub_1BBBF5364();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1BBBEDD5C(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v10, v7, v15);
  _Block_release(v15);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);

  return (*(v20 + 16))(v20, 0);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BBBED914()
{
  result = qword_1EBC9B200;
  if (!qword_1EBC9B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B200);
  }

  return result;
}

unint64_t sub_1BBBED968()
{
  result = qword_1EBC9B210;
  if (!qword_1EBC9B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B210);
  }

  return result;
}

unint64_t sub_1BBBED9BC()
{
  result = qword_1EBC9B218;
  if (!qword_1EBC9B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B218);
  }

  return result;
}

unint64_t sub_1BBBEDA10()
{
  result = qword_1EBC9B220;
  if (!qword_1EBC9B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B220);
  }

  return result;
}

uint64_t sub_1BBBEDA64(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBBEDA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBEDAE0()
{
  result = qword_1EBC9B270;
  if (!qword_1EBC9B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B270);
  }

  return result;
}

unint64_t sub_1BBBEDB34()
{
  result = qword_1EBC9B278;
  if (!qword_1EBC9B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B278);
  }

  return result;
}

unint64_t sub_1BBBEDB98()
{
  result = qword_1EBC9B2F8;
  if (!qword_1EBC9B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B2F8);
  }

  return result;
}

uint64_t sub_1BBBEDBEC(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188);

  return sub_1BBBE8C58(a1);
}

void sub_1BBBEDC88(uint64_t a1)
{
  v3 = *(sub_1BBBF5284() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BBBE8D58(a1, v4);
}

uint64_t sub_1BBBEDCF8()
{
  v1 = *(sub_1BBBF5284() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BBBEA1AC(v2, v3);
}

uint64_t sub_1BBBEDD5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BBBEDDCC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

void sub_1BBBEDE30(id a1, char a2)
{
  if (a2)
  {
  }
}

BOOL sub_1BBBEDE94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B260, &qword_1BBBFB0C0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BBBC22E0(a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v9 = type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm(0);
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF1830(&qword_1EBC9B038, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
  sub_1BBBF5184();

  sub_1BBBBBE78(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BBBDDB80(v8, a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
  sub_1BBBC16A4(a2, v6, &unk_1EBC9B260, &qword_1BBBFB0C0);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BBBC22E0(v6, &unk_1EBC9B260, &qword_1BBBFB0C0);
  return v14;
}

BOOL sub_1BBBEE0D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B250, &unk_1BBBFB160);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BBBC22E0(a2, &unk_1EBC9B250, &unk_1BBBFB160);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmID(0);
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF1830(&qword_1EBC9B048, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  sub_1BBBF5184();

  sub_1BBBBBE78(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BBBDDB80(v8, a2, &unk_1EBC9B250, &unk_1BBBFB160);
  sub_1BBBC16A4(a2, v6, &unk_1EBC9B250, &unk_1BBBFB160);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BBBC22E0(v6, &unk_1EBC9B250, &unk_1BBBFB160);
  return v14;
}

BOOL sub_1BBBEE30C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B240, &unk_1BBBFB0B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BBBC22E0(a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF1830(&qword_1EBC9B058, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  sub_1BBBF5184();

  sub_1BBBBBE78(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BBBDDB80(v8, a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
  sub_1BBBC16A4(a2, v6, &unk_1EBC9B240, &unk_1BBBFB0B0);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BBBC22E0(v6, &unk_1EBC9B240, &unk_1BBBFB0B0);
  return v14;
}

BOOL sub_1BBBEE548(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B230, &unk_1BBBFB150);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BBBC22E0(a2, &unk_1EBC9B230, &unk_1BBBFB150);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF1830(&qword_1EBC9B068, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  sub_1BBBF5184();

  sub_1BBBBBE78(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BBBDDB80(v8, a2, &unk_1EBC9B230, &unk_1BBBFB150);
  sub_1BBBC16A4(a2, v6, &unk_1EBC9B230, &unk_1BBBFB150);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BBBC22E0(v6, &unk_1EBC9B230, &unk_1BBBFB150);
  return v14;
}

BOOL sub_1BBBEE784(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BBBC22E0(a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v9 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF1830(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
  sub_1BBBF5184();

  sub_1BBBBBE78(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BBBDDB80(v8, a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  sub_1BBBC16A4(a2, v6, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BBBC22E0(v6, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  return v14;
}

BOOL sub_1BBBEEA00(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{

  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v6 = sub_1BBBF5234();
  v8 = v7;
  a3();
  sub_1BBBF5184();

  sub_1BBBBBE78(v6, v8);
  *a2 = v10;
  return v10 != 0;
}

BOOL sub_1BBBEEAF0(uint64_t a1, uint64_t *a2)
{
  sub_1BBBEDA64(*a2, a2[1]);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBEDA10();
  sub_1BBBF5184();

  sub_1BBBBBE78(v3, v5);
  *a2 = v7;
  a2[1] = v8;
  return v8 != 1;
}

BOOL sub_1BBBEEBDC(uint64_t a1, uint64_t a2)
{

  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBED9BC();
  sub_1BBBF5184();

  sub_1BBBBBE78(v3, v5);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return v8 != 0;
}

BOOL sub_1BBBEECD4(uint64_t a1, _BYTE *a2)
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBED914();
  sub_1BBBF5184();

  sub_1BBBBBE78(v3, v5);
  *a2 = v7;
  return v7 != 3;
}

BOOL sub_1BBBEEDB4(uint64_t a1, _BYTE *a2)
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBED968();
  sub_1BBBF5184();

  sub_1BBBBBE78(v3, v5);
  *a2 = v7;
  return v7 != 2;
}

_BYTE *AuthorizationServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

AlarmKit::AuthorizationXPCServiceParameter::BundleID __swiftcall AuthorizationXPCServiceParameter.BundleID.init(bundleID:)(Swift::String_optional bundleID)
{
  object = bundleID.value._object;
  countAndFlagsBits = bundleID.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.bundleID.value._object = v6;
  result.bundleID.value._countAndFlagsBits = v5;
  return result;
}

AlarmKit::AuthorizationXPCServiceParameter::BundleIDState __swiftcall AuthorizationXPCServiceParameter.BundleIDState.init(bundleID:state:)(AlarmKit::AuthorizationXPCServiceParameter::BundleIDState bundleID, AlarmKit::AlarmManager::AuthorizationState state)
{
  v3 = *state;
  *v2 = bundleID.bundleID;
  *(v2 + 16) = v3;
  bundleID.state = state;
  return bundleID;
}

uint64_t sub_1BBBEEEF0()
{
  if (qword_1EDD45590 != -1)
  {
    swift_once();
  }

  qword_1EDD45548 = qword_1EDD45598;
  unk_1EDD45550 = unk_1EDD455A0;
  qword_1EDD45558 = qword_1EDD455A8;
  unk_1EDD45560 = unk_1EDD455B0;
}

uint64_t static AuthorizationServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45540 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD45550;
  v2 = qword_1EDD45558;
  v3 = unk_1EDD45560;
  *a1 = qword_1EDD45548;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BBBEF014@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45540 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD45550;
  v2 = qword_1EDD45558;
  v3 = unk_1EDD45560;
  *a1 = qword_1EDD45548;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

AlarmKit::AuthorizationServiceError::Code_optional __swiftcall AuthorizationServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t AuthorizationServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
    v4 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBC22E0(inited + 32, &qword_1EBC9AF30, &qword_1BBBFA128);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v6);
  }
}

uint64_t sub_1BBBEF240(uint64_t a1)
{
  v2 = sub_1BBBF17DC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BBBEF27C(uint64_t a1)
{
  v2 = sub_1BBBF17DC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthorizationXPCServiceParameter.BundleID.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BBBEF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBEF3E0(uint64_t a1)
{
  v2 = sub_1BBBF0C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBEF41C(uint64_t a1)
{
  v2 = sub_1BBBF0C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B330, &qword_1BBBFB1B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF58A4();
  sub_1BBBF5704();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B340, &qword_1BBBFB1B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF5894();
  if (!v2)
  {
    v9 = sub_1BBBF5654();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBEF720(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B330, &qword_1BBBFB1B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF58A4();
  sub_1BBBF5704();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBBEF85C(uint64_t a1)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v1 = sub_1BBBF51B4();
  v3 = v2;
  v4 = sub_1BBBF5224();
  sub_1BBBBBE78(v1, v3);

  return v4;
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BBBEF9E4()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1BBBEFA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBEFAF4(uint64_t a1)
{
  v2 = sub_1BBBF0C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBEFB30(uint64_t a1)
{
  v2 = sub_1BBBF0C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B348, &qword_1BBBFB1C0);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C64();
  sub_1BBBF58A4();
  v13 = 0;
  sub_1BBBF5734();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1BBBF0CB8();
    sub_1BBBF5774();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B360, &qword_1BBBFB1C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C64();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1BBBF5684();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1BBBF0D0C();
  sub_1BBBF56C4();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBEFF24(uint64_t a1)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB98();
  v1 = sub_1BBBF51B4();
  v3 = v2;
  v4 = sub_1BBBF5224();
  sub_1BBBBBE78(v1, v3);

  return v4;
}

uint64_t sub_1BBBF004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBF00D0(uint64_t a1)
{
  v2 = sub_1BBBF0D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBF010C(uint64_t a1)
{
  v2 = sub_1BBBF0D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceResponse.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B370, &qword_1BBBFB1D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0D60();
  sub_1BBBF58A4();
  v10 = v7;
  sub_1BBBF0CB8();
  sub_1BBBF5774();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AuthorizationXPCServiceResponse.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B380, &qword_1BBBFB1D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0D60();
  sub_1BBBF5894();
  if (!v2)
  {
    sub_1BBBF0D0C();
    sub_1BBBF56C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBF0430(uint64_t a1)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBF0FCC();
  v1 = sub_1BBBF51B4();
  v3 = v2;
  v4 = sub_1BBBF5224();
  sub_1BBBBBE78(v1, v3);

  return v4;
}

uint64_t sub_1BBBF0560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BBC013B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BBBF57A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BBBF05F4(uint64_t a1)
{
  v2 = sub_1BBBF0DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBF0630(uint64_t a1)
{
  v2 = sub_1BBBF0DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceResponse.SupportsAlarmKit.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B388, &qword_1BBBFB1E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF58A4();
  sub_1BBBF5744();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AuthorizationXPCServiceResponse.SupportsAlarmKit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B398, &qword_1BBBFB1E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF5894();
  if (!v2)
  {
    v9 = sub_1BBBF5694();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBF0914(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B388, &qword_1BBBFB1E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF58A4();
  sub_1BBBF5744();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBBF0A4C(uint64_t a1)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBF1108();
  v1 = sub_1BBBF51B4();
  v3 = v2;
  v4 = sub_1BBBF5224();
  sub_1BBBBBE78(v1, v3);

  return v4;
}

uint64_t sub_1BBBF0B20(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v7 = sub_1BBBF5234();
  v9 = v8;
  a5();
  sub_1BBBF5184();
  sub_1BBBBBE78(v7, v9);

  *a2 = v11;
  return result;
}

unint64_t sub_1BBBF0C10()
{
  result = qword_1EBC9B338;
  if (!qword_1EBC9B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B338);
  }

  return result;
}

unint64_t sub_1BBBF0C64()
{
  result = qword_1EBC9B350;
  if (!qword_1EBC9B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B350);
  }

  return result;
}

unint64_t sub_1BBBF0CB8()
{
  result = qword_1EBC9B358;
  if (!qword_1EBC9B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B358);
  }

  return result;
}

unint64_t sub_1BBBF0D0C()
{
  result = qword_1EBC9B368;
  if (!qword_1EBC9B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B368);
  }

  return result;
}

unint64_t sub_1BBBF0D60()
{
  result = qword_1EBC9B378;
  if (!qword_1EBC9B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B378);
  }

  return result;
}

unint64_t sub_1BBBF0DB4()
{
  result = qword_1EBC9B390;
  if (!qword_1EBC9B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B390);
  }

  return result;
}

unint64_t sub_1BBBF0E0C()
{
  result = qword_1EBC9B3A0;
  if (!qword_1EBC9B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3A0);
  }

  return result;
}

unint64_t sub_1BBBF0EA4()
{
  result = qword_1EBC9B3A8;
  if (!qword_1EBC9B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3A8);
  }

  return result;
}

unint64_t sub_1BBBF0F38()
{
  result = qword_1EBC9B3B0;
  if (!qword_1EBC9B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3B0);
  }

  return result;
}

unint64_t sub_1BBBF0FCC()
{
  result = qword_1EBC9B3B8;
  if (!qword_1EBC9B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3B8);
  }

  return result;
}

unint64_t sub_1BBBF1020()
{
  result = qword_1EBC9B3C0;
  if (!qword_1EBC9B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3C0);
  }

  return result;
}

uint64_t sub_1BBBF10B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BBBF1108()
{
  result = qword_1EBC9B3C8;
  if (!qword_1EBC9B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3C8);
  }

  return result;
}

unint64_t sub_1BBBF115C()
{
  result = qword_1EBC9B3D0;
  if (!qword_1EBC9B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3D0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BBBF1214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BBBF125C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationXPCServiceResponse.SupportsAlarmKit(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBBF13C0()
{
  result = qword_1EBC9B3D8;
  if (!qword_1EBC9B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3D8);
  }

  return result;
}

unint64_t sub_1BBBF1418()
{
  result = qword_1EBC9B3E0;
  if (!qword_1EBC9B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3E0);
  }

  return result;
}

unint64_t sub_1BBBF1470()
{
  result = qword_1EBC9B3E8;
  if (!qword_1EBC9B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3E8);
  }

  return result;
}

unint64_t sub_1BBBF14C8()
{
  result = qword_1EBC9B3F0;
  if (!qword_1EBC9B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3F0);
  }

  return result;
}

unint64_t sub_1BBBF1520()
{
  result = qword_1EBC9B3F8;
  if (!qword_1EBC9B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3F8);
  }

  return result;
}

unint64_t sub_1BBBF1578()
{
  result = qword_1EBC9B400;
  if (!qword_1EBC9B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B400);
  }

  return result;
}

unint64_t sub_1BBBF15D0()
{
  result = qword_1EBC9B408;
  if (!qword_1EBC9B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B408);
  }

  return result;
}

unint64_t sub_1BBBF1628()
{
  result = qword_1EBC9B410;
  if (!qword_1EBC9B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B410);
  }

  return result;
}

unint64_t sub_1BBBF1680()
{
  result = qword_1EBC9B418;
  if (!qword_1EBC9B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B418);
  }

  return result;
}

unint64_t sub_1BBBF16D8()
{
  result = qword_1EBC9B420;
  if (!qword_1EBC9B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B420);
  }

  return result;
}

unint64_t sub_1BBBF1730()
{
  result = qword_1EBC9B428;
  if (!qword_1EBC9B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B428);
  }

  return result;
}

unint64_t sub_1BBBF1788()
{
  result = qword_1EBC9B430;
  if (!qword_1EBC9B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B430);
  }

  return result;
}

unint64_t sub_1BBBF17DC()
{
  result = qword_1EBC9B438;
  if (!qword_1EBC9B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B438);
  }

  return result;
}

uint64_t sub_1BBBF1830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BBBF18D0(uint64_t a1, uint64_t a2)
{

  v2 = objc_opt_self();
  if (qword_1EDD455C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD455D8;
  v4 = unk_1EDD455E0;
  v5 = sub_1BBBF53E4();
  v6 = sub_1BBBF53E4();
  v7 = [v2 endpointForMachName:v5 service:v6 instance:0];

  if (v7)
  {

    v8 = [objc_opt_self() connectionWithEndpoint_];
    if (v8)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v3, v4);
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0xD000000000000025;
    *(v9 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v8;
}

id sub_1BBBF1AB8(uint64_t a1, uint64_t a2)
{

  v2 = objc_opt_self();
  if (qword_1EDD45540 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD45558;
  v4 = unk_1EDD45560;
  v5 = sub_1BBBF53E4();
  v6 = sub_1BBBF53E4();
  v7 = [v2 endpointForMachName:v5 service:v6 instance:0];

  if (v7)
  {

    v8 = [objc_opt_self() connectionWithEndpoint_];
    if (v8)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v3, v4);
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0xD000000000000025;
    *(v9 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v8;
}

id sub_1BBBF1CA0(uint64_t a1, uint64_t a2)
{

  v2 = objc_opt_self();
  if (qword_1EDD45568 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD45580;
  v4 = unk_1EDD45588;
  v5 = sub_1BBBF53E4();
  v6 = sub_1BBBF53E4();
  v7 = [v2 endpointForMachName:v5 service:v6 instance:0];

  if (v7)
  {

    v8 = [objc_opt_self() connectionWithEndpoint_];
    if (v8)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v3, v4);
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0xD000000000000025;
    *(v9 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v8;
}

void sub_1BBBF1E88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1BBBF1F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BBBF1F6C()
{
  v0 = sub_1BBBF5324();
  __swift_allocate_value_buffer(v0, qword_1EBC9B440);
  __swift_project_value_buffer(v0, qword_1EBC9B440);
  return sub_1BBBF5314();
}

id StateCaptureClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *StateCaptureClient.init()()
{
  v19 = sub_1BBBF5524();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BBBF5514();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BBBF5384();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection;
  *&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection] = 0;
  v18 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue;
  v17[1] = sub_1BBBDD660();
  sub_1BBBF5374();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BBBF23A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBF2400();
  sub_1BBBF5594();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v19);
  *&v0[v18] = sub_1BBBF5554();
  v7 = *&v0[v6];
  *&v0[v6] = 0;

  v8 = type metadata accessor for StateCaptureClient();
  v21.receiver = v0;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BBBF2488;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1BBBF24AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor_2;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  dispatch_sync(v15, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBBF23A8()
{
  result = qword_1EDD456F0;
  if (!qword_1EDD456F0)
  {
    sub_1BBBF5514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD456F0);
  }

  return result;
}

unint64_t sub_1BBBF2400()
{
  result = qword_1EDD45700;
  if (!qword_1EDD45700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45700);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1BBBF2510()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection;
  if (!*&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection])
  {
    result = sub_1BBBF1CA0(0, 0);
    if (result)
    {
      v9 = *&v0[v8];
      *&v0[v8] = result;
      v10 = result;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BBBF33A8;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BBBF33B0;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBBF1F18;
      aBlock[3] = &block_descriptor_16;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configureConnection_];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_1BBBF2778(void *a1, uint64_t a2)
{
  v4 = sub_1BBBF53E4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1BBBF2A70;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_19;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1BBBF2A7C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_22;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1BBBF2A88;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_25;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1BBBF2A94(uint64_t a1, const char *a2)
{
  if (qword_1EBC9A550 != -1)
  {
    swift_once();
  }

  v3 = sub_1BBBF5324();
  __swift_project_value_buffer(v3, qword_1EBC9B440);
  oslog = sub_1BBBF5304();
  v4 = sub_1BBBF54C4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBBB7000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFB18360](v5, -1, -1);
  }
}

void sub_1BBBF2B84()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_1BBBF2510();
    v7 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection);
    if (v7)
    {
      v8 = v7;
      if ([v8 remoteTarget])
      {
        sub_1BBBF5584();
        swift_unknownObjectRelease();

        sub_1BBBF32DC(v9);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        sub_1BBBF32DC(v9);
        [v8 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BBBF2D14()
{
  v1 = sub_1BBBF5394();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BBBF2B84();
  v7 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection);
  if (!v7)
  {
    if (qword_1EBC9A550 != -1)
    {
      swift_once();
    }

    v8 = sub_1BBBF5324();
    __swift_project_value_buffer(v8, qword_1EBC9B440);
    v1 = sub_1BBBF5304();
    v9 = sub_1BBBF54E4();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBBB7000, v1, v9, "Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFB18360](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B468, qword_1BBBFBC38);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BBBF32DC(v19);
  }

  if (qword_1EBC9A550 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BBBF5324();
  __swift_project_value_buffer(v12, qword_1EBC9B440);
  v13 = sub_1BBBF5304();
  v14 = sub_1BBBF54E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBBB7000, v13, v14, "Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFB18360](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

id StateCaptureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StateCaptureClient.state(identifier:)(Swift::String_optional identifier)
{
  v2 = sub_1BBBF5534();
  if (!v1)
  {
    v2 = v5;
    v3 = v6;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void sub_1BBBF3138(void *a2@<X2>, uint64_t *a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BBBF2D14();
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      a2 = sub_1BBBF53E4();
    }

    v14[0] = 0;
    v7 = [v6 stateFor:a2 error:v14];
    swift_unknownObjectRelease();

    v8 = v14[0];
    if (v7)
    {
      v9 = sub_1BBBF53F4();
      v11 = v10;
      v12 = v8;

      *a3 = v9;
      a3[1] = v11;
    }

    else
    {
      v13 = v14[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0xE000000000000000;
  }
}

uint64_t sub_1BBBF3290(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BBBF32DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B280, &qword_1BBBF9730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1BBBF33F8()
{
  if (qword_1EDD45590 != -1)
  {
    swift_once();
  }

  qword_1EDD45570 = qword_1EDD45598;
  *algn_1EDD45578 = unk_1EDD455A0;
  qword_1EDD45580 = qword_1EDD455A8;
  unk_1EDD45588 = unk_1EDD455B0;
}

uint64_t static StateCaptureServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EDD45578;
  v2 = qword_1EDD45580;
  v3 = unk_1EDD45588;
  *a1 = qword_1EDD45570;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BBBF351C@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EDD45578;
  v2 = qword_1EDD45580;
  v3 = unk_1EDD45588;
  *a1 = qword_1EDD45570;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

AlarmKit::StateCaptureServiceError::Code_optional __swiftcall StateCaptureServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *StateCaptureServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t StateCaptureServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
    v4 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBF38D8(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v6);
  }
}

unint64_t sub_1BBBF3748()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
    v4 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBF38D8(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v6);
  }
}

uint64_t sub_1BBBF3860(uint64_t a1)
{
  v2 = sub_1BBBF3A20();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BBBF389C(uint64_t a1)
{
  v2 = sub_1BBBF3A20();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BBBF38D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF30, &qword_1BBBFA128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBBF3944()
{
  result = qword_1EBC9B480;
  if (!qword_1EBC9B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B480);
  }

  return result;
}

unint64_t sub_1BBBF399C()
{
  result = qword_1EBC9B488;
  if (!qword_1EBC9B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B488);
  }

  return result;
}

unint64_t sub_1BBBF3A20()
{
  result = qword_1EBC9B490;
  if (!qword_1EBC9B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B490);
  }

  return result;
}

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  v2 = sub_1BBBF51B4();
  v4 = v3;
  v5 = sub_1BBBF5224();
  sub_1BBBBBE78(v2, v4);

  return v5;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1BBBF5574();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = *(a2 - 8);
  result = (*(v14 + 56))(&v16 - v12, 1, 1, a2);
  if (a1)
  {
    sub_1BBBF5624();
    (*(v8 + 16))(v11, v13, v7);
    result = (*(v14 + 48))(v11, 1, a2);
    if (result != 1)
    {
      (*(v8 + 8))(v13, v7);
      return (*(v14 + 32))(a4, v11, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BBBF5574();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v10 = sub_1BBBF5234();
  v12 = v11;
  sub_1BBBF5184();
  (*(v7 + 8))(a2, v6);
  sub_1BBBBBE78(v10, v12);

  (*(*(a3 - 8) + 56))(v9, 0, 1, a3);
  return (*(v7 + 32))(a2, v9, v6);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BBBF5574();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v21 = *(v7 + 8);
  v22 = a2;
  v21(a2, v6);
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v13 = sub_1BBBF5234();
  v15 = v14;
  sub_1BBBF5184();

  sub_1BBBBBE78(v13, v15);
  v16 = *(a3 - 8);
  (*(v16 + 56))(v12, 0, 1, a3);
  v17 = v22;
  (*(v7 + 32))(v22, v12, v6);
  (*(v7 + 16))(v10, v17, v6);
  v18 = (*(v16 + 48))(v10, 1, a3) != 1;
  v21(v10, v6);
  return v18;
}

id BSServiceConnection.init<A>(endpointedDefinedBy:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1BBBF42B8();
  v8 = BSServiceConnectionEndpoint.init<A>(definition:instance:)(a1, 0, 0, a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [swift_getObjCClassFromMetadata() connectionWithEndpoint_];

    if (v10)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BBBFA110;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1BBBF55B4();

    v18 = 0xD000000000000025;
    v19 = 0x80000001BBC01480;
    (*(a5 + 24))(v17, a4, a5);
    v12 = v17[2];
    v13 = v17[3];

    MEMORY[0x1BFB17930](v12, v13);

    v14 = v18;
    v15 = v19;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_1BBBF5834();

    return 0;
  }

  return v10;
}

unint64_t sub_1BBBF42B8()
{
  result = qword_1EBC9B498;
  if (!qword_1EBC9B498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC9B498);
  }

  return result;
}

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCInterfaceDomain.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t XPCInterfaceDomain.machName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AlarmKit::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

void sub_1BBBF4420()
{
  qword_1EDD45598 = 0xD000000000000012;
  unk_1EDD455A0 = 0x80000001BBC014F0;
  qword_1EDD455A8 = 0xD00000000000001ALL;
  unk_1EDD455B0 = 0x80000001BBC01510;
}

uint64_t static XPCInterfaceDomain.alarmKit.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45590 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD455A0;
  v2 = qword_1EDD455A8;
  v3 = unk_1EDD455B0;
  *a1 = qword_1EDD45598;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

id BSServiceConnectionEndpoint.init<A>(definition:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(&v13, a4, a5);

  v8 = sub_1BBBF53E4();

  (*(a5 + 32))(a4, a5);
  v9 = sub_1BBBF53E4();

  if (a3)
  {
    v10 = sub_1BBBF53E4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() endpointForMachName:v8 service:v9 instance:v10];

  return v11;
}

Swift::Void __swiftcall BSServiceConnectionListenerConfiguring.setDomain(_:)(AlarmKit::XPCInterfaceDomain a1)
{
  v2 = sub_1BBBF53E4();
  [v1 setDomain_];
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBBF466C(uint64_t a1, int a2)
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

uint64_t sub_1BBBF46B4(uint64_t result, int a2, int a3)
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

id AlarmAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmAuthorization.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for AuthorizationClient();
  v2 = swift_allocObject();
  if (qword_1EDD45718 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = qword_1EDD45720;
  *(v2 + 16) = qword_1EDD45720;
  *&v0[OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client] = v2;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v4 = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmAuthorization.state(bundleID:)(Swift::String bundleID)
{
  result.super.super.isa = sub_1BBBF5534();
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  return result;
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmAuthorization.supportsAlarmKit(bundleID:)(Swift::String bundleID)
{
  result.super.super.isa = sub_1BBBF5534();
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return result;
}

id AlarmAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Color.init(from:)(uint64_t a1, unint64_t a2)
{
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  v5 = sub_1BBBF5504();
  if (v2)
  {
    return sub_1BBBBBE78(a1, a2);
  }

  if (!v5)
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    return sub_1BBBBBE78(a1, a2);
  }

  v7 = sub_1BBBF5334();
  sub_1BBBBBE78(a1, a2);
  return v7;
}

void *Color.encoded()(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);

  v1 = sub_1BBBF5564();
  v6[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:0 error:v6];
  v3 = v6[0];
  if (v2)
  {
    v4 = sub_1BBBF5234();
  }

  else
  {
    v4 = v3;
    sub_1BBBF51F4();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1BBBF5004()
{
  result = qword_1EBC9B4A8;
  if (!qword_1EBC9B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B4A8);
  }

  return result;
}

uint64_t sub_1BBBF50A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BBBF5324();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1BBBF5314();
}