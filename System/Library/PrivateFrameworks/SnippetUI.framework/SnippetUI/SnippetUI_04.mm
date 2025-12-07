uint64_t sub_26A4F8F2C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_26A7DCD64(0, v5, 0);
  v6 = v17;
  v8 = *(sub_26A850828() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26A7DCD64((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A4F9088(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0);
  v7 = OUTLINED_FUNCTION_2_5(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = OUTLINED_FUNCTION_9_4();
  sub_26A7DD048(v14, v15, v16);
  v13 = v25;
  for (i = (a3 + 32); ; ++i)
  {
    v24 = *i;
    v22(&v24);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v25 = v13;
    v19 = *(v13 + 16);
    v18 = *(v13 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_26A7DD048((v18 > 1), v19 + 1, 1);
      v13 = v25;
    }

    *(v13 + 16) = v19 + 1;
    sub_26A4FAF14(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A4F920C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26A852168())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_26A8522F8();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D6644E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_26A8522C8();
      sub_26A852308();
      sub_26A852318();
      sub_26A8522D8();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_26A4F9380(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v24 = a2;
  v22 = sub_26A84A9C8();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v11 = OUTLINED_FUNCTION_9_4();
  sub_26A7DD3B8(v11, v12, v13);
  v10 = v25;
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a3 + v21;
  v20 = (v6 + 32);
  v15 = *(v6 + 72);
  while (1)
  {
    v23(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v25 = v10;
    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_26A7DD3B8(v16 > 1, v17 + 1, 1);
      v10 = v25;
    }

    *(v10 + 16) = v17 + 1;
    (*v20)(v10 + v21 + v17 * v15, v8, v22);
    v14 += v15;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A4F952C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v37 = a2;
  v46 = type metadata accessor for SmartDialogCollatableItem(0);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_26A850798();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A8507A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  sub_26A850818();
  type metadata accessor for CGPoint(0, v13, v14, v15);
  sub_26A84F098();

  v16 = *&v48[16];
  v17 = *&v48[17];
  sub_26A850808();
  (*(v6 + 16))(v12, v8, v5);
  v18 = *(v10 + 44);
  sub_26A4FA450();
  sub_26A851D88();
  (*(v6 + 8))(v8, v5);
  v41 = (v3 + 16);
  v19 = MEMORY[0x277D84F90];
  v38 = (v3 + 8);
  v43 = v18;
  v42 = v5;
  v39 = v12;
  while (1)
  {
    sub_26A851DD8();
    if (*&v12[v18] == v48[0])
    {
      break;
    }

    v20 = sub_26A851E18();
    v21 = *v41;
    v22 = v40;
    v47 = v19;
    v23 = v44;
    v21(v40);
    v20(v48, 0);
    sub_26A851DE8();
    sub_26A850778();
    v24 = v17 + *&v48[5];
    sub_26A850778();
    v25 = v16 + *&v48[10];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660, &qword_26A858C18);
    v27 = &v49[*(v26 + 48)];
    v28 = &v49[*(v26 + 64)];
    (v21)(v49, v22, v23);
    *v27 = v16;
    v27[1] = v17;
    sub_26A850778();
    v29 = v23;
    v19 = v47;
    (*v38)(v22, v29);
    v30 = v48[18];
    v31 = *&v48[19] + *&v48[20];
    *v28 = v25;
    *(v28 + 1) = v24;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A138C();
      v19 = v33;
    }

    v32 = *(v19 + 16);
    v12 = v39;
    if (v32 >= *(v19 + 24) >> 1)
    {
      sub_26A7A138C();
      v19 = v34;
    }

    v18 = v43;
    *(v19 + 16) = v32 + 1;
    sub_26A4FAB3C();
  }

  result = sub_26A4FAEA4(v12);
  *v37 = v19;
  return result;
}

uint64_t sub_26A4F9AB8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26A4F6494;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_26A4F6538;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_26A851048();
  *(a3 + 48) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB598, &qword_26A858AB0);
  sub_26A851048();
  *(a3 + 64) = v7;
  sub_26A851048();
  *(a3 + 80) = v7;
  *(a3 + 88) = *(&v7 + 1);
  type metadata accessor for SmartDialogCollater();
  swift_allocObject();
  *(a3 + 96) = sub_26A541B48();
  v5 = type metadata accessor for SmartDialogAnimationModifier(0);
  result = sub_26A4FAB3C();
  *(a3 + *(v5 + 44)) = a2;
  return result;
}

uint64_t sub_26A4F9BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A4F9C70(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

void sub_26A4F9CE0()
{
  *(v0 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_enabled) = 0;
  v1 = OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_timer;
  [*(v0 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_26A4F9D38(_BYTE *a1, double a2, double a3)
{
  if (*(v3 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_enabled) == 1 && *a1 == 2)
  {
    v6 = OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_timer;
    if (*(v3 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_timer))
    {
      if (vabdd_f64(a2, a3) < 0.00999999978)
      {

        sub_26A4F9CE0();
      }
    }

    else
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      swift_weakInit();
      v12[4] = sub_26A4FAF0C;
      v12[5] = v8;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_26A4F9F2C;
      v12[3] = &block_descriptor_49;
      v9 = _Block_copy(v12);

      v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:a3 + 0.1];
      _Block_release(v9);
      v11 = *(v3 + v6);
      *(v3 + v6) = v10;
    }
  }
}

uint64_t sub_26A4F9EC0(void *a1, uint64_t a2)
{
  [a1 invalidate];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26A4F9CE0();
    sub_26A4F9C70(1);
  }

  return result;
}

void sub_26A4F9F2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26A4F9F94()
{
  v1 = OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog__animationTimedOut;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_26A4FA074(uint64_t a1)
{
  sub_26A4FA4F8(319, &qword_28157FEE0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26A4FA194(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A4FA1CC(uint64_t a1)
{
  sub_26A4FA328(319);
  if (v1 <= 0x3F)
  {
    sub_26A4FA3BC(319);
    if (v2 <= 0x3F)
    {
      sub_26A4FA4F8(319, &qword_2803AB588, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_26A4FA494(319);
        if (v4 <= 0x3F)
        {
          sub_26A4FA4F8(319, &qword_2803AB5A0, &type metadata for SmartDialogAnimationTriggerType, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SmartDialogCollater();
            if (v6 <= 0x3F)
            {
              type metadata accessor for SmartDialogAnimationSettings(319);
              if (v7 <= 0x3F)
              {
                sub_26A4FA548();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A4FA328(uint64_t a1)
{
  if (!qword_2803AB568)
  {
    type metadata accessor for SmartDialogAnimations(255);
    sub_26A4FA450();
    v1 = sub_26A84EF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AB568);
    }
  }
}

void sub_26A4FA3BC(uint64_t a1)
{
  if (!qword_2803AB578)
  {
    type metadata accessor for AnimationWatchdog(255);
    sub_26A4FA450();
    v1 = sub_26A84EF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AB578);
    }
  }
}

unint64_t sub_26A4FA450()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A4FA494(uint64_t a1)
{
  if (!qword_2803AB590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB598, &qword_26A858AB0);
    v1 = sub_26A851088();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AB590);
    }
  }
}

void sub_26A4FA4F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A4FA548()
{
  if (!qword_2803AB5A8)
  {
    v0 = sub_26A84EB48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB5A8);
    }
  }
}

uint64_t sub_26A4FA5A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0, &unk_26A858C70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-v3];
  *(v0 + 16) = 0x3FB999999999999ALL;
  v5 = OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog__animationTimedOut;
  v7[15] = 0;
  sub_26A84EBD8();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_enabled) = 0;
  *(v0 + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_timer) = 0;
  return v0;
}

uint64_t sub_26A4FA6C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AnimationWatchdog(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

uint64_t sub_26A4FA720(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_11_3();

  return sub_26A4F8130(a1, v1 + v3);
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_3();

  v2 = v1 + *(v0 + 48);
  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v2);
  v4 = type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_14_2(v4);

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

double sub_26A4FA888()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_11_3();
  v0 = OUTLINED_FUNCTION_7_5();

  return sub_26A4F818C(v0, v1);
}

uint64_t sub_26A4FA8F0(__int16 *a1)
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_11_3();

  return sub_26A4F8550(a1, v1 + v3);
}

void *sub_26A4FA950()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_11_3();

  return sub_26A4F8AAC(v0 + v1);
}

unint64_t sub_26A4FA9A0()
{
  result = qword_28157D830;
  if (!qword_28157D830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D830);
  }

  return result;
}

void *sub_26A4FA9E4()
{
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 18) & ~*(v1 + 80));

  return sub_26A4F88F4(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A4FAA54()
{
  v0 = type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_2_5(v0);
  OUTLINED_FUNCTION_8_4();
  v1 = OUTLINED_FUNCTION_7_5();

  return sub_26A4F82CC(v1, v2, v3);
}

uint64_t sub_26A4FAAE8()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4FAB3C()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A4FAB90@<X0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_8_4();
  return sub_26A4F6ADC(a1, *(v2 + 32), *(v2 + v6), *(v2 + v6 + 8), *(v2 + v6 + 16), a2, *(v2 + 24), *(v2 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26A4FAC54()
{
  v0 = type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_2_5(v0);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_7_5();

  return sub_26A4F7480(v1, v2, v3);
}

uint64_t sub_26A4FACE8()
{
  v1 = *(type metadata accessor for SmartDialogAnimationSettings(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_26A4F6DA0(v2, v6, v3, v4, v7, v5, v8);
}

uint64_t sub_26A4FAD5C()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A4FADAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5D5274();
  *a1 = result;
  return result;
}

uint64_t sub_26A4FAE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4FAEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A4FAF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4FAF94()
{
  result = qword_2803AB678;
  if (!qword_2803AB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB5D8, &qword_26A858B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB5B0, &qword_26A858B40);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB678);
  }

  return result;
}

unint64_t sub_26A4FB0D0()
{
  result = qword_2803AB690;
  if (!qword_2803AB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB690);
  }

  return result;
}

unint64_t sub_26A4FB128()
{
  result = qword_2803AB698;
  if (!qword_2803AB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB698);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  sub_26A492280(*(v1 + a1), *(v1 + a1 + 8));
  sub_26A492280(*(v2 + 24), *(v2 + 32));
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  sub_26A492280(*(v0 + v1), *(v0 + v1 + 8));
  sub_26A492280(*(v0 + v1 + 24), *(v0 + v1 + 32));
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
}

uint64_t sub_26A4FB2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemStandardView(0);
  sub_26A505CD4(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A4FB4C8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for FactItemStandardView(0) + 28);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v10, &dword_26A48D000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v15;
  }

  return v9;
}

void sub_26A4FB5F8()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = type metadata accessor for FactItemStandardView(0);
  sub_26A505CD4(v0 + *(v10 + 32), v2, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v11 + 32))(v4, v2);
  }

  else
  {
    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v7 + 8))(v1, v5);
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A4FB7BC(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  v12 = sub_26A84C0F8();
  OUTLINED_FUNCTION_15();
  v80 = v13;
  MEMORY[0x28223BE20](v14);
  v84 = v15;
  v79 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v76 = v11;
  v77 = v1;
  v81 = v12;
  v78 = v3;
  v93[0] = xmmword_281588758;
  v93[1] = unk_281588768;
  v93[2] = xmmword_281588778;
  v93[3] = xmmword_281588788;
  v94 = xmmword_281588758;
  v95 = unk_281588768;
  v96 = xmmword_281588778;
  v97 = xmmword_281588788;
  v85 = xmmword_281588778;
  v83 = xmmword_281588788;
  sub_26A505CD4(v93, v92, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v98);
  memcpy(v5, v98, 0xC0uLL);
  v16 = v83;
  v5[12] = v85;
  v5[13] = v16;
  v17 = v95;
  v5[14] = v94;
  v5[15] = v17;
  v18 = v97;
  v5[16] = v96;
  v5[17] = v18;
  v19 = type metadata accessor for FactItemStandardView(0);
  v20 = v5 + v19[5];
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  __swift_project_value_buffer(v21, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v22 = OUTLINED_FUNCTION_25_1();
  sub_26A505CD4(v22, v23, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(v91);
  memcpy(v20, v91, 0xBFuLL);
  OUTLINED_FUNCTION_17_0(*(v21 + 36));
  v24 = v19[6];
  *(v5 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v25 = v5 + v19[7];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v19[8];
  *(v5 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v27 = v80;
  v28 = v81;
  v29 = v80 + 16;
  v82 = *(v80 + 16);
  *&v83 = v5;
  *&v85 = v19;
  v31 = v78;
  v30 = v79;
  v32 = OUTLINED_FUNCTION_31_0();
  v33(v32);
  v34 = *(v27 + 80);
  v35 = (v34 + 16) & ~v34;
  OUTLINED_FUNCTION_43_0();
  v36 = swift_allocObject();
  v37 = *(v27 + 32);
  v37(v36 + v35, v30, v28);
  v38 = (v83 + *(v85 + 36));
  *v38 = sub_26A506A70;
  v38[1] = v36;
  v39 = OUTLINED_FUNCTION_31_0();
  v82(v39);
  OUTLINED_FUNCTION_43_0();
  v40 = swift_allocObject();
  v37(v40 + v35, v30, v28);
  v41 = (v83 + *(v85 + 40));
  *v41 = sub_26A506AE4;
  v41[1] = v40;
  v42 = OUTLINED_FUNCTION_31_0();
  v75 = v29;
  v82(v42);
  v43 = v83;
  OUTLINED_FUNCTION_43_0();
  v74 = v34;
  v44 = swift_allocObject();
  v45 = v30;
  v46 = v85;
  v73 = v37;
  v37(v44 + v35, v45, v28);
  v47 = v43;
  v48 = (v43 + *(v46 + 44));
  *v48 = sub_26A506AFC;
  v48[1] = v44;
  v49 = v76;
  sub_26A84C0C8();
  v50 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v92);
  }

  else
  {
    v51 = MultilineTextProperty.asAnyView()();
    v52 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v90 = 0;
    v71 = swift_getKeyPath();
    v89 = 0;
    v53 = swift_getKeyPath();
    v88 = 0;
    v87 = 1;
    (*(*(v50 - 8) + 8))(v49, v50);
    v86[0] = KeyPath;
    LOBYTE(v86[1]) = v90;
    v86[2] = v71;
    LOBYTE(v86[3]) = v89;
    v86[4] = v53;
    v31 = v78;
    LOBYTE(v86[5]) = v88;
    memset(&v86[6], 0, 32);
    v86[10] = v51;
    LOBYTE(v86[11]) = v52 & 1;
    memset(&v86[12], 0, 128);
    LOBYTE(v86[28]) = v87;
    memset(&v86[29], 0, 18);
    nullsub_1();
    memcpy(v92, v86, 0xFAuLL);
  }

  memcpy((v47 + *(v46 + 48)), v92, 0xFAuLL);
  v54 = v79;
  v55 = v81;
  (v82)(v79, v31, v81);
  OUTLINED_FUNCTION_43_0();
  v56 = swift_allocObject();
  v57 = v54;
  v58 = v85;
  v73(v56 + v35, v57, v55);
  v59 = (v47 + v58[13]);
  *v59 = sub_26A506B94;
  v59[1] = v56;
  v60 = v77;
  sub_26A84C0E8();
  v61 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    v62 = OUTLINED_FUNCTION_48_0();
    v63(v62);
    sub_26A505D1C();
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v64 = VisualProperty.asAnyView()();
    v66 = sub_26A84BD18();
    v67 = OUTLINED_FUNCTION_48_0();
    v68(v67);
    (*(*(v61 - 8) + 8))(v60, v61);
    v65 = v66 & 1;
  }

  v69 = v47 + v58[14];
  *v69 = v64;
  *(v69 + 8) = v65;
  v70 = v47 + v58[15];
  *v70 = 0;
  *(v70 + 8) = 0;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A4FBF18@<X0>(uint64_t x8_0@<X8>)
{
  v3 = sub_26A84B888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84C0B8();
  v7 = sub_26A6E3188(x8_0);
  return (*(v4 + 8))(v6, v3, v7);
}

void sub_26A4FBFFC(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_5();
  v3();
  v15 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v32);
    v16 = v5;
  }

  else
  {
    sub_26A84B858();
    v17 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    v29 = v18;
    v30 = v17;
    v20 = v19;
    v22 = v21;
    (*(v8 + 8))(v12, v6);
    v31 = v5;
    v23 = v20 & 1;
    v24 = TextProperty.asAnyView()();
    v25 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v36 = 0;
    v27 = swift_getKeyPath();
    v35 = 0;
    v28 = swift_getKeyPath();
    v34 = 0;
    v33 = 1;
    (*(*(v15 - 8) + 8))(v1, v15);
    v32[0] = KeyPath;
    LOBYTE(v32[1]) = 0;
    v32[2] = v27;
    LOBYTE(v32[3]) = 0;
    v32[4] = v28;
    LOBYTE(v32[5]) = 0;
    v32[6] = v30;
    v32[7] = v29;
    v32[8] = v23;
    v32[9] = v22;
    v32[10] = v24;
    LOBYTE(v32[11]) = v25 & 1;
    memset(&v32[12], 0, 128);
    LOBYTE(v32[28]) = 1;
    memset(&v32[29], 0, 18);
    nullsub_1();
    v16 = v31;
  }

  memcpy(v16, v32, 0xFAuLL);
  OUTLINED_FUNCTION_27_0();
}

void FactItemStandardView.init(text1:text2:text3:text4:text5:thumbnail:thumbnail2:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v74 = v2;
  v76 = v1;
  v78 = v3;
  v68 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v72 = v10;
  v84[0] = xmmword_281588758;
  v84[1] = unk_281588768;
  v84[2] = xmmword_281588778;
  v84[3] = xmmword_281588788;
  v85 = xmmword_281588758;
  v86 = unk_281588768;
  v87 = xmmword_281588778;
  v88 = xmmword_281588788;
  v62 = xmmword_281588788;
  v65 = xmmword_281588778;
  sub_26A505CD4(v84, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(__src);
  memcpy(v12, __src, 0xC0uLL);
  v12[12] = v65;
  v12[13] = v62;
  v13 = v86;
  v12[14] = v85;
  v12[15] = v13;
  v14 = v88;
  v12[16] = v87;
  v12[17] = v14;
  v15 = type metadata accessor for FactItemStandardView(0);
  v16 = v12 + v15[5];
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v18 = __swift_project_value_buffer(v17, qword_2803D1A70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A505CD4(v18, &v16[*(v19 + 32)], &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(v82);
  memcpy(v16, v82, 0xBFuLL);
  OUTLINED_FUNCTION_17_0(*(v17 + 36));
  v20 = v15[6];
  *(v12 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v21 = v12 + v15[7];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v15[8];
  *(v12 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v23 = v72;
  sub_26A50429C(v72, __dst);
  OUTLINED_FUNCTION_80();
  v24 = swift_allocObject();
  sub_26A4C2314(__dst, v24 + 16);
  v25 = (v12 + v15[9]);
  *v25 = sub_26A504300;
  v25[1] = v24;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v26, v27, v28, v29);
  OUTLINED_FUNCTION_80();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_45_0(v30);
  v31 = (v12 + v15[10]);
  *v31 = sub_26A504308;
  v31[1] = v32;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v33, v34, v35, v36);
  OUTLINED_FUNCTION_80();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_45_0(v37);
  v38 = (v12 + v15[11]);
  *v38 = sub_26A50708C;
  v38[1] = v39;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v40, v41, v42, v43);
  if (v81[3])
  {
    OUTLINED_FUNCTION_59_0(v81);
    v44 = OUTLINED_FUNCTION_13_3();
    v45(v44);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v81);
    memcpy(__dst, v80, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__dst);
  }

  memcpy(v12 + v15[12], __dst, 0xFAuLL);
  sub_26A505CD4(v78, v80, &qword_2803AB700, &unk_26A86AA40);
  OUTLINED_FUNCTION_80();
  v46 = swift_allocObject();
  v47 = v80[1];
  *(v46 + 16) = v80[0];
  *(v46 + 32) = v47;
  *(v46 + 48) = *&v80[2];
  v48 = (v12 + v15[13]);
  *v48 = sub_26A50708C;
  v48[1] = v46;
  sub_26A505CD4(v76, v80, &qword_2803A91B8, &qword_26A8575C0);
  if (*(&v80[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1(v80, *(&v80[1] + 1));
    v49 = OUTLINED_FUNCTION_13_3();
    v50(v49);
    __swift_destroy_boxed_opaque_existential_1(v80);
    v51 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_53_0();
  }

  v52 = OUTLINED_FUNCTION_58_0(v51, v62, *(&v62 + 1), v65, *(&v65 + 1), v68, v6, v8, v72, v74, v76, v78, *&v80[0], *(&v80[0] + 1), *&v80[1], *(&v80[1] + 1), *&v80[2]);
  v53 = v12 + v15[14];
  *v53 = v52;
  v53[8] = v54;
  sub_26A505CD4(v75, v80, &qword_2803A91B8, &qword_26A8575C0);
  if (*(&v80[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1(v80, *(&v80[1] + 1));
    v55 = OUTLINED_FUNCTION_13_3();
    v56(v55);
    __swift_destroy_boxed_opaque_existential_1(v80);
    v57 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_53_0();
  }

  v58 = OUTLINED_FUNCTION_58_0(v57, v63, v64, v66, v67, v69, v70, v71, v73, v75, v77, v79, *&v80[0], *(&v80[0] + 1), *&v80[1], *(&v80[1] + 1), *&v80[2]);
  v60 = v59;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v61 = v12 + v15[15];
  *v61 = v58;
  v61[8] = v60;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A4FC840(void x0_0, void *a1)
{
  OUTLINED_FUNCTION_59_0(a1);
  v2 = OUTLINED_FUNCTION_13_3();
  return v3(v2);
}

void *sub_26A4FC888@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_26A505CD4(a1, v7, &qword_2803AB700, &unk_26A86AA40);
  if (v7[3])
  {
    OUTLINED_FUNCTION_59_0(v7);
    v3 = OUTLINED_FUNCTION_13_3();
    v4(v3);
    nullsub_1();
    memcpy(a2, __src, 0xFAuLL);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__src);
    return memcpy(a2, __src, 0xFAuLL);
  }
}

uint64_t FactItemStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  sub_26A4FB2E0(v2);
  sub_26A4FCBF8(v18);
  sub_26A4FB4C8();
  sub_26A4FB5F8();
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v8);
  sub_26A4C591C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB708, &unk_26A858DC8) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB710, &qword_26A858E00) + 36)) = 1;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v15 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB718, &qword_26A858E30);
  v17 = a1 + *(result + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v15;
  return result;
}

void sub_26A4FCBF8(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v4 = sub_26A4FB4C8(), sub_26A61B05C(v4, &unk_287B131A0)))
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18(v5))
    {
      case 1u:
      case 2u:
      case 3u:
        v6 = sub_26A852598();

        if ((v6 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    v7 = v1 + *(type metadata accessor for FactItemStandardView(0) + 20);
    v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28)];
    v9 = type metadata accessor for FactItemConstants(0);
    v10 = 0;
    v11.f64[0] = v2[12].f64[0] + -4.0;
    v12.f64[0] = v2[13].f64[0] + -4.0;
    v11.f64[1] = *&v8[*(v9 + 60)];
    v12.f64[1] = v11.f64[1];
  }

  else
  {
LABEL_9:
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v11 = 0uLL;
    if (byte_2803B0440 == 1)
    {
      v13 = sub_26A4FB4C8();
      if (sub_26A61B05C(v13, &unk_287B13090))
      {
        v10 = 0;
        __asm { FMOV            V0.2D, #10.0 }

        v11 = vaddq_f64(v1[12], _Q0);
        v12 = vaddq_f64(v1[13], _Q0);
      }

      else
      {
        v10 = 1;
        v12 = 0uLL;
        v11 = 0uLL;
      }
    }

    else
    {
      v10 = 1;
      v12 = 0uLL;
    }
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
}

void *sub_26A4FCE30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_26A84B058();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FactItemStandardView(0);
  v8 = *(a1 + v7[9]);
  sub_26A4FD2FC(v6);
  v8(v51, v6);
  v9 = *(v4 + 8);
  v10 = v3;
  v9(v6, v3);
  v11 = *(a1 + v7[10]);
  sub_26A4FD2FC(v6);
  v11(v50, v6);
  v9(v6, v10);
  v12 = *(a1 + v7[11]);
  sub_26A4FD2FC(v6);
  v12(v49, v6);
  v9(v6, v10);
  memcpy(v52, (a1 + v7[12]), 0xFAuLL);
  v13 = *(a1 + v7[13]);
  sub_26A505CD4(v52, v47, &qword_2803AB870, &unk_26A859000);
  sub_26A4FD2FC(v6);
  v13(v48, v6);
  v9(v6, v10);
  v14 = v7[15];
  v15 = (a1 + v7[14]);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(a1 + v14);
  v42 = *(a1 + v14 + 8);
  v43 = v17;
  v45 = 0;

  sub_26A851288();
  v40 = v47[1];
  v41 = v47[0];
  v19 = v47[2];
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v21 = __swift_project_value_buffer(v20, qword_2803D1A70);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v23 = v39;
  v24 = &v39[*(v22 + 32)];
  sub_26A505CD4(v21, v24, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(v47);
  memcpy(v23, v47, 0xBFuLL);
  sub_26A505604(v24 + *(v20 + 36), &v23[*(v22 + 28)], type metadata accessor for FactItemConstants);
  v25 = type metadata accessor for FactItemStandardLayout(0);
  v26 = &v23[v25[5]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v23[v25[6]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v25[7];
  *&v23[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v29 = &v23[v25[18]];
  v44 = 0;
  sub_26A851048();
  v30 = v46;
  *v29 = v45;
  *(v29 + 1) = v30;
  v31 = &v23[v25[19]];
  v44 = 0;
  sub_26A851048();
  v32 = v46;
  *v31 = v45;
  *(v31 + 1) = v32;
  memcpy(&v23[v25[8]], v51, 0xFAuLL);
  memcpy(&v23[v25[9]], v50, 0xFAuLL);
  memcpy(&v23[v25[10]], v49, 0xFAuLL);
  memcpy(&v23[v25[11]], v52, 0xFAuLL);
  result = memcpy(&v23[v25[12]], v48, 0xFAuLL);
  v34 = &v23[v25[13]];
  *v34 = v16;
  v35 = v42;
  v34[8] = v43;
  v36 = &v23[v25[14]];
  *v36 = v18;
  v36[8] = v35;
  v23[v25[15]] = 0;
  *&v23[v25[16]] = 0;
  v37 = &v23[v25[17]];
  v38 = v40;
  *v37 = v41;
  *(v37 + 1) = v38;
  *(v37 + 2) = v19;
  return result;
}

uint64_t sub_26A4FD2FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for FactItemStandardView(0) + 28);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v15[1];
  }

  if ((v8 - 1) >= 8)
  {
    v11 = sub_26A851E98();
    sub_26A7A6570(v11, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
    v10 = MEMORY[0x277D62A18];
  }

  else
  {
    v10 = qword_279CA2188[v8 - 1];
  }

  v12 = *v10;
  v13 = sub_26A84B058();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

uint64_t sub_26A4FD4F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSpotlightPlus.getter();
  *a1 = result & 1;
  return result;
}

void sub_26A4FD550()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v50 = v4;
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v49 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = sub_26A84C0F8();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  v22 = type metadata accessor for FactItemStandardView(0);
  v23 = OUTLINED_FUNCTION_79(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA10, &qword_26A856AF0);
  OUTLINED_FUNCTION_79(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABAD8, &qword_26A8593F8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v49 - v34;
  (*(v17 + 16))(v21, v2, v15, v33);
  sub_26A4FB7BC(v21);
  v36 = sub_26A84C088();
  sub_26A4DC494(v36, v37);

  sub_26A506764(v1);
  sub_26A84C098();

  v38 = v51;
  sub_26A84C0D8();
  sub_26A505C8C(v14, v11, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v11, 1, v38) == 1)
  {
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v40 = &v35[*(v52 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v42 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v40 + v41, 1, 1, v42);
    *v40 = KeyPath;
  }

  else
  {
    v43 = v49;
    v44 = *(v50 + 32);
    v44(v49, v11, v38);
    v45 = swift_getKeyPath();
    v46 = &v35[*(v52 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v44(v46 + v47, v43, v38);
    v48 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v46 + v47, 0, 1, v48);
    *v46 = v45;
  }

  sub_26A505C8C(v27, v35, &qword_2803AAA10, &qword_26A856AF0);
  sub_26A505CD4(v35, v31, &qword_2803ABAD8, &qword_26A8593F8);
  sub_26A5067C0();
  sub_26A851248();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A4FD9B0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for FactItemStandardLayout(0) + 24);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v10, &dword_26A48D000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v15;
  }

  return v9;
}

void sub_26A4FDAE0()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0;
  v49 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7A0, &qword_26A858F48);
  OUTLINED_FUNCTION_15();
  v46 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7A8, &qword_26A858F50);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7B0, &qword_26A858F58);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7B8, &qword_26A858F60);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  type metadata accessor for FactItemStandardLayout(0);
  sub_26A72003C(v26);
  v27 = sub_26A84F388();
  (*(v22 + 8))(v26, v20);
  if (v27)
  {
    *v19 = sub_26A84FA78();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v28 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB840, &qword_26A858FA8) + 44)];
    *v16 = sub_26A84FC08();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB848, &qword_26A858FB0);
    sub_26A500FB0(v2, &v16[*(v29 + 44)]);
    sub_26A505CD4(v16, v13, &qword_2803AB7B0, &qword_26A858F58);
    sub_26A505CD4(v13, v28, &qword_2803AB7B0, &qword_26A858F58);
    v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB850, &qword_26A858FB8) + 48);
    *v30 = 0;
    *(v30 + 8) = 1;
    sub_26A505D1C();
    sub_26A505D1C();
    OUTLINED_FUNCTION_46_0();
    sub_26A505CD4(v31, v32, v33, v34);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_37();
    sub_26A506A30();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7C8, &qword_26A858F68);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7D0, &qword_26A858F70);
    v37 = sub_26A504C7C();
    v38 = sub_26A504F30();
    v51 = v35;
    v52 = v36;
    v53 = v37;
    v54 = v38;
    OUTLINED_FUNCTION_16_1();
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    sub_26A4FDF94(v7);
    v39 = v46;
    v40 = v50;
    (*(v46 + 16))(v1, v7, v50);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_37();
    sub_26A506A30();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7C8, &qword_26A858F68);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7D0, &qword_26A858F70);
    v43 = sub_26A504C7C();
    v44 = sub_26A504F30();
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    OUTLINED_FUNCTION_16_1();
    sub_26A84FDF8();
    (*(v39 + 8))(v7, v40);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A4FDF94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for FactItemStandardLayout(0);
  v4 = *(v3 - 8);
  v43 = v3 - 8;
  v42[1] = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB808, &unk_26A858F88);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7F8, &qword_26A858F80);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7E8, &qword_26A858F78);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v42 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7C8, &qword_26A858F68);
  MEMORY[0x28223BE20](v46);
  v45 = v42 - v19;
  *v10 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
  v10[8] = 2;
  sub_26A5002AC(v1, &v10[*(v8 + 52)]);
  sub_26A851458();
  sub_26A84F628();
  sub_26A505C8C(v10, v14, &qword_2803AB808, &unk_26A858F88);
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_26A505C8C(v14, v18, &qword_2803AB7F8, &qword_26A858F80);
  v22 = &v18[*(v16 + 44)];
  *v22 = KeyPath;
  v22[8] = 0;
  *(v22 + 2) = v21;
  *(v22 + 12) = 256;
  v23 = sub_26A851448();
  v25 = v24;
  v42[0] = v6;
  sub_26A505604(v2, v6, type metadata accessor for FactItemStandardLayout);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  sub_26A505660(v6, v27 + v26);
  v28 = v18;
  v29 = v45;
  sub_26A505C8C(v28, v45, &qword_2803AB7E8, &qword_26A858F78);
  v30 = (v29 + *(v46 + 36));
  *v30 = sub_26A5056C4;
  v30[1] = v27;
  v30[2] = v23;
  v30[3] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F0, &unk_26A8592F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26A8570F0;
  v32 = v43;
  v33 = (v2 + *(v43 + 80));
  v34 = *v33;
  v35 = v33[1];
  v48 = v34;
  v49 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  sub_26A851058();
  *(v31 + 32) = v47;
  v36 = (v2 + *(v32 + 84));
  v37 = *v36;
  v38 = v36[1];
  v48 = v37;
  v49 = v38;
  sub_26A851058();
  *(v31 + 40) = v47;
  v48 = v31;
  v39 = v42[0];
  sub_26A505604(v2, v42[0], type metadata accessor for FactItemStandardLayout);
  v40 = swift_allocObject();
  sub_26A505660(v39, v40 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7D0, &qword_26A858F70);
  sub_26A504C7C();
  sub_26A504F30();
  sub_26A850C78();

  return sub_26A505D1C();
}

BOOL sub_26A4FE4D0()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v6 = type metadata accessor for FactItemStandardLayout(0);
  if (*(v0 + *(v6 + 60)) != 1)
  {
    return 0;
  }

  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v1, v2);
    v8 = v11;
  }

  return v8 != 7 && sub_26A4FD9B0() != 5;
}

uint64_t sub_26A4FE63C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA28, &qword_26A859350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __src - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA30, &qword_26A859358);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __src - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA38, &qword_26A859360);
  MEMORY[0x28223BE20](v13);
  v15 = __src - v14;
  sub_26A4D7E10();
  switch(sub_26A63CD18(v16))
  {
    case 1u:
    case 2u:
    case 3u:
      v17 = sub_26A852598();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    case 4u:
LABEL_5:
      v18 = 56;
      break;
    default:

LABEL_4:
      v18 = 16;
      break;
  }

  v19 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + v18);
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v20 = qword_28157FC80;
  *v12 = qword_28157FC80;
  *(v12 + 1) = v19;
  v12[16] = 0;
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA40, &qword_26A859368) + 44)];
  *v9 = v20;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA48, &qword_26A859370);
  sub_26A4FEA7C(v2, &v9[*(v22 + 44)]);
  v23 = *(v2 + *(type metadata accessor for FactItemStandardLayout(0) + 64));
  sub_26A505CD4(v9, v6, &qword_2803ABA28, &qword_26A859350);
  sub_26A505CD4(v6, v21, &qword_2803ABA28, &qword_26A859350);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA50, &qword_26A859378) + 48)) = v23;
  swift_retain_n();
  sub_26A505D1C();

  sub_26A505D1C();
  sub_26A851448();
  sub_26A84F628();
  sub_26A505C8C(v12, v15, &qword_2803ABA30, &qword_26A859358);
  memcpy(&v15[*(v13 + 36)], __src, 0x70uLL);
  v24 = sub_26A84FBD8();
  sub_26A505C8C(v15, a1, &qword_2803ABA38, &qword_26A859360);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA08, &qword_26A859308);
  v26 = (a1 + *(result + 36));
  *v26 = v24;
  v26[1] = sub_26A48F9E4;
  v26[2] = 0;
  return result;
}

uint64_t sub_26A4FEA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA58, &qword_26A859380);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA60, &qword_26A859388);
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA68, &qword_26A859390);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA70, &qword_26A859398);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA78, &qword_26A8593A0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v53 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v27 = sub_26A84FA68();
  v28 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 24);
  *v17 = v27;
  *(v17 + 1) = v28;
  v17[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA80, &qword_26A8593A8);
  sub_26A4FF054(a1, &v17[*(v29 + 44)]);
  sub_26A851458();
  v30 = 1;
  sub_26A84F628();
  sub_26A505C8C(v17, v23, &qword_2803ABA70, &qword_26A859398);
  memcpy(&v23[*(v19 + 44)], __src, 0x70uLL);
  sub_26A505C8C(v23, v26, &qword_2803ABA78, &qword_26A8593A0);
  if (sub_26A4FE4D0())
  {
    v31 = v45;
    sub_26A4FF4B0();
    (*(v47 + 32))(v14, v31, v7);
    v30 = 0;
  }

  v32 = __swift_storeEnumTagSinglePayload(v14, v30, 1, v7);
  sub_26A4FF628(v32);
  v47 = v54;
  sub_26A5000D8();
  v48 = v26;
  v33 = v53;
  sub_26A505CD4(v26, v53, &qword_2803ABA78, &qword_26A8593A0);
  sub_26A505CD4(v14, v11, &qword_2803ABA68, &qword_26A859390);
  v35 = v49;
  v34 = v50;
  v36 = v6;
  v37 = *(v50 + 16);
  v38 = v52;
  v37(v49, v36, v52);
  v39 = v11;
  v46 = v11;
  v40 = v51;
  sub_26A505CD4(v33, v51, &qword_2803ABA78, &qword_26A8593A0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA88, &unk_26A8593B0);
  sub_26A505CD4(v39, v40 + v41[12], &qword_2803ABA68, &qword_26A859390);
  *(v40 + v41[16]) = v47;
  v37((v40 + v41[20]), v35, v38);
  v42 = *(v34 + 8);

  v42(v36, v38);
  sub_26A505D1C();
  sub_26A505D1C();
  v42(v35, v38);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A4FF054@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA60, &qword_26A859388);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA68, &qword_26A859390);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABAA0, &unk_26A8593C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = *(type metadata accessor for FactItemStandardLayout(0) + 32);
  v32 = a1;
  memcpy(v42, (a1 + v15), 0xFAuLL);
  v31 = v42[88];
  if (qword_2803A89E0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(qword_2803AB6A0, v40, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v41);
  memcpy(v39, v41, sizeof(v39));
  v40[10] = sub_26A80A810;
  v40[11] = 0;
  memcpy(v38, v42, 0xFAuLL);
  sub_26A4EC458(v42, &v37);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABAA8, &qword_26A875E40);
  v17 = sub_26A505E50();
  sub_26A850AF8();
  sub_26A505D1C();
  (*(v9 + 16))(v11, v14, v8);
  v38[0] = v16;
  v38[1] = v17;
  v18 = 1;
  swift_getOpaqueTypeConformance2();
  v19 = sub_26A851248();
  (*(v9 + 8))(v14, v8);
  v20 = sub_26A4FE4D0();
  v22 = v33;
  v21 = v34;
  if (!v20)
  {
    v23 = v29;
    sub_26A4FF4B0();
    (*(v30 + 32))(v22, v23, v21);
    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v18, 1, v21);
  v24 = v35;
  sub_26A505CD4(v22, v35, &qword_2803ABA68, &qword_26A859390);
  v25 = v36;
  *v36 = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABAB8, &unk_26A8593D0);
  sub_26A505CD4(v24, v25 + *(v26 + 48), &qword_2803ABA68, &qword_26A859390);

  sub_26A505D1C();
  sub_26A505D1C();
}

uint64_t sub_26A4FF4B0()
{
  v1 = *(type metadata accessor for FactItemStandardLayout(0) + 48);
  memcpy(__dst, (v0 + v1), 0xFAuLL);
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588898, v6, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v5, __src, sizeof(v5));
  v6[10] = sub_26A80A810;
  v6[11] = 0;
  memcpy(v4, __dst, sizeof(v4));
  memcpy(v9, (v0 + v1), 0xFAuLL);
  sub_26A505008(v9);
  sub_26A505CD4(__dst, &v3, &qword_2803AB870, &unk_26A859000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA90, &unk_26A861C40);
  sub_26A505D6C();
  sub_26A850AF8();
  return sub_26A505D1C();
}

uint64_t sub_26A4FF628(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v65 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8A8, &qword_26A859030);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for FactItemStandardLayout(0);
  v11 = *(v10 + 36);
  memcpy(v81, (v1 + v11), 0xFAuLL);
  if (sub_26A505008(v81) == 1)
  {
    memcpy(v71, (v1 + *(v10 + 40)), 0xFAuLL);
    if (sub_26A505008(v71) == 1)
    {
      result = sub_26A851248();
      *v65 = result;
      return result;
    }
  }

  memcpy(v78, (v1 + v11), 0xFAuLL);
  if (sub_26A505008(v78) == 1 || (v78[88] & 1) == 0)
  {
    memcpy(v71, (v1 + *(v10 + 40)), 0xFAuLL);
    if (sub_26A505008(v71) == 1)
    {
      v61 = 0;
      goto LABEL_11;
    }

    v13 = LOBYTE(v71[11]);
  }

  else
  {
    v13 = 1;
  }

  v61 = v13;
LABEL_11:
  v62 = v6;
  v63 = v9;
  v64 = v4;
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v15 = *(&xmmword_2803B00A0 + 1);
  v14 = xmmword_2803B00A0;
  LODWORD(v16) = byte_2803B00B0;
  v17 = qword_2803B00B8;
  memcpy(v77, (v1 + v11), 0xFAuLL);
  if (sub_26A505008(v77) != 1)
  {
    v18 = v77[9];
    if (v77[9])
    {
      v58 = v15;
      LODWORD(v59) = v16;
      v60 = v3;
      v19 = v77[6];
      v16 = v77[7];
      v20 = v77[8];
      memcpy(v71, (v1 + *(v10 + 40)), 0xFAuLL);
      if (sub_26A505008(v71) != 1 && v71[9])
      {
        v56 = v17;
        v21 = v71[8];
        *&v54 = v71[8];
        v22 = v71[7];
        v23 = v71[6];
        *&v66[0] = 0;
        *(&v66[0] + 1) = 0xE000000000000000;
        *&v67[0] = v19;
        *(&v67[0] + 1) = v16;
        LODWORD(v57) = v20 & 1;
        LOBYTE(v67[1]) = v20 & 1;
        *(&v67[1] + 1) = v18;
        v24 = v71[9];
        sub_26A505318(v19, v16, v20, v18);
        v25 = v22;
        v26 = v22;
        *&v55 = v22;
        v27 = v24;
        sub_26A505318(v23, v25, v21, v24);
        sub_26A8523D8();
        *&v67[0] = v14;
        *(&v67[0] + 1) = v58;
        LOBYTE(v67[1]) = v59;
        *(&v67[1] + 1) = v56;
        sub_26A8523D8();
        *&v67[0] = v23;
        *(&v67[0] + 1) = v26;
        LOBYTE(v24) = v54 & 1;
        LOBYTE(v67[1]) = v54 & 1;
        *(&v67[1] + 1) = v27;
        sub_26A8523D8();
        v67[0] = v66[0];
        LOBYTE(v67[1]) = 0;
        *(&v67[1] + 1) = MEMORY[0x277D84F90];

        v28 = sub_26A851248();
        sub_26A4EC448(v19, v16, v57);

        sub_26A4EC448(v23, v55, v24);

LABEL_28:
        v3 = v60;
        goto LABEL_29;
      }

      sub_26A4EF6C0(v19, v16, v20 & 1);

      sub_26A4EC448(v19, v16, v20 & 1);

      v3 = v60;
      LOBYTE(v16) = v59;
      v15 = v58;
    }
  }

  memcpy(v75, (v1 + v11), 0xFAuLL);
  memcpy(v76, (v1 + v11), 0xFAuLL);
  if (sub_26A505008(v76) != 1)
  {
    v29 = v14;
    memcpy(v79, v76, 0xFAuLL);
    v30 = *(v10 + 40);
    memcpy(v72, (v1 + v30), 0xFAuLL);
    memcpy(v73, (v1 + v30), 0xFAuLL);
    if (sub_26A505008(v73) != 1)
    {
      memcpy(v80, v73, 0xFAuLL);
      sub_26A505CD4(v75, v71, &qword_2803AB870, &unk_26A859000);
      sub_26A505CD4(v72, v71, &qword_2803AB870, &unk_26A859000);
      v40 = sub_26A84FA78();
      v41 = v15;
      v42 = v40;
      v74 = 0;
      sub_26A503D50(v71, v79, v29, v41, v16, v17, v80);
      memcpy(v69, v71, 0x21AuLL);
      memcpy(v70, v71, 0x21AuLL);
      sub_26A505CD4(v69, v67, &qword_2803AB8C8, &qword_26A859048);
      sub_26A505D1C();
      memcpy(&v68[7], v69, 0x21AuLL);
      v71[0] = v42;
      v71[1] = 0;
      LOBYTE(v71[2]) = v74;
      memcpy(&v71[2] + 1, v68, 0x221uLL);
      memcpy(v67, v71, 0x232uLL);
      sub_26A505CD4(v71, v66, &qword_2803AB8D0, &qword_26A859050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8D0, &qword_26A859050);
      sub_26A506A30();
      v28 = sub_26A851248();
      sub_26A505D1C();
      sub_26A505D1C();
      sub_26A505D1C();
      goto LABEL_29;
    }
  }

  memcpy(v67, (v1 + v11), 0xFAuLL);
  memcpy(v71, (v1 + v11), 0xFAuLL);
  if (sub_26A505008(v71) != 1)
  {
    v32 = *&v67[0];
    v51 = *&v67[1];
    v53 = *&v67[2];
    v54 = v67[3];
    v55 = v67[4];
    v56 = *&v67[5];
    v57 = *(&v67[13] + 1);
    v59 = *(&v67[14] + 1);
    v60 = v3;
    v58 = *&v67[15];
    v52 = BYTE9(v67[15]);
    v33 = BYTE8(v67[15]);
    v34 = v67[14];
    v35 = BYTE8(v67[5]);
    v36 = BYTE8(v67[2]);
    v37 = BYTE8(v67[1]);
    v38 = BYTE8(v67[0]);
    v39 = &v67[6];
LABEL_27:
    memcpy(v69, v39, 0x78uLL);
    v80[0] = v38 & 1;
    v73[0] = v37 & 1;
    v72[0] = v36 & 1;
    memcpy(&v70[7], v69, 0x78uLL);
    v74 = v34 & 1;
    *&v66[0] = v32;
    BYTE8(v66[0]) = v38 & 1;
    *&v66[1] = v51;
    BYTE8(v66[1]) = v37 & 1;
    *&v66[2] = v53;
    BYTE8(v66[2]) = v36 & 1;
    v66[4] = v55;
    v66[3] = v54;
    *&v66[5] = v56;
    BYTE8(v66[5]) = v35 & 1;
    memcpy(&v66[5] + 9, v70, 0x7FuLL);
    *(&v66[13] + 1) = v57;
    LOBYTE(v66[14]) = v34 & 1;
    *(&v66[14] + 1) = v59;
    *&v66[15] = v58;
    BYTE8(v66[15]) = v33 & 1;
    BYTE9(v66[15]) = v52 & 1;
    sub_26A505CD4(v67, v68, &qword_2803AB870, &unk_26A859000);
    sub_26A4EC4B4();
    v28 = sub_26A851248();
    goto LABEL_28;
  }

  v31 = *(v10 + 40);
  memcpy(v66, (v1 + v31), 0xFAuLL);
  if (sub_26A505008(v66) != 1)
  {
    v52 = BYTE9(v66[15]);
    v33 = BYTE8(v66[15]);
    v59 = *(&v66[14] + 1);
    v60 = v3;
    v57 = *(&v66[13] + 1);
    v58 = *&v66[15];
    v34 = v66[14];
    v35 = BYTE8(v66[5]);
    v56 = *&v66[5];
    v54 = v66[3];
    v55 = v66[4];
    v53 = *&v66[2];
    v36 = BYTE8(v66[2]);
    v51 = *&v66[1];
    v37 = BYTE8(v66[1]);
    v32 = *&v66[0];
    v38 = BYTE8(v66[0]);
    memcpy(v68, (v1 + v31), 0xFAuLL);
    sub_26A4EC458(v68, v70);
    v39 = &v66[6];
    goto LABEL_27;
  }

  v28 = sub_26A851248();
LABEL_29:
  v43 = sub_26A84FBF8();
  v44 = qword_28157E6A8;

  if (v44 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, &v71[28], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v67);
  memcpy(&v71[4], v67, 0xBFuLL);
  v71[39] = 0;
  v71[0] = v43;
  v71[1] = 0;
  LOBYTE(v71[2]) = 1;
  v71[38] = sub_26A80A810;
  v71[3] = v28;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8B0, &qword_26A859038);
  v46 = sub_26A505234();
  v47 = v63;
  sub_26A850AF8();
  sub_26A505D1C();
  v48 = v64;
  (*(v64 + 16))(v62, v47, v3);
  v71[0] = v45;
  v71[1] = v46;
  swift_getOpaqueTypeConformance2();
  v49 = sub_26A851248();
  (*(v48 + 8))(v47, v3);

  *v65 = v49;
  return result;
}

uint64_t sub_26A5000D8()
{
  v1 = *(type metadata accessor for FactItemStandardLayout(0) + 44);
  memcpy(__dst, (v0 + v1), 0xFAuLL);
  v2 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  memcpy(v14, (v0 + v1), 0xFAuLL);
  sub_26A505CD4(__dst, v7, &qword_2803AB870, &unk_26A859000);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v11, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v10, __src, sizeof(v10));
  v11[10] = sub_26A80A810;
  v11[11] = 0;
  memcpy(v7, v14, sizeof(v7));
  v8 = KeyPath;
  v9 = (v3 + v4) * 0.5;
  memcpy(v15, (v0 + v1), 0xFAuLL);
  sub_26A505008(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB878, &qword_26A859010);
  sub_26A505020();
  sub_26A850AF8();
  return sub_26A505D1C();
}

uint64_t sub_26A5002AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA08, &qword_26A859308);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for FactItemStandardLayout(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA10, &qword_26A859310);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_26A50060C(&v32 - v17);
  v19 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
  KeyPath = swift_getKeyPath();
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA18, &qword_26A859340) + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *(v21 + 2) = v19;
  v22 = sub_26A851448();
  v24 = v23;
  sub_26A505604(a1, v11, type metadata accessor for FactItemStandardLayout);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  sub_26A505660(v11, v26 + v25);
  v27 = &v18[*(v13 + 44)];
  *v27 = sub_26A505BEC;
  v27[1] = v26;
  v27[2] = v22;
  v27[3] = v24;
  sub_26A4FE63C(v7);
  sub_26A505CD4(v18, v15, &qword_2803ABA10, &qword_26A859310);
  v28 = v32;
  sub_26A505CD4(v7, v32, &qword_2803ABA08, &qword_26A859308);
  v29 = v33;
  sub_26A505CD4(v15, v33, &qword_2803ABA10, &qword_26A859310);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA20, &qword_26A859348);
  sub_26A505CD4(v28, v29 + *(v30 + 48), &qword_2803ABA08, &qword_26A859308);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A50060C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB928, &qword_26A8590C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB930, &qword_26A8590D0);
  MEMORY[0x28223BE20](v38);
  v8 = &v35 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB938, &qword_26A8590D8);
  MEMORY[0x28223BE20](v39);
  v10 = (&v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB940, &qword_26A8590E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB948, &qword_26A8590E8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for FactItemStandardLayout(0);
  v18 = v2 + *(v17 + 52);
  v19 = v2 + *(v17 + 56);
  v20 = *v19;
  if (*v18)
  {
    if (v20)
    {
      v36 = sub_26A850DF8();
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
      v21 = v2 + *(type metadata accessor for FactItemConstants(0) + 52);
      KeyPath = swift_getKeyPath();
      v23 = *(v11 + 36);
      v37 = v3;
      v24 = &v13[v23];
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
      v26 = sub_26A84B1D8();
      (*(*(v26 - 8) + 16))(v24 + v25, v21 + v35, v26);
      __swift_storeEnumTagSinglePayload(v24 + v25, 0, 1, v26);
      *v24 = KeyPath;
      *v13 = v36;
      *(v13 + 4) = 256;
      sub_26A501A18(v16);
      sub_26A505D1C();
      *v10 = sub_26A851448();
      v10[1] = v27;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9A8, &qword_26A859140);
      sub_26A502338(v16, v2, v10 + *(v28 + 44));
      sub_26A505CD4(v10, v8, &qword_2803AB938, &qword_26A8590D8);
      swift_storeEnumTagMultiPayload();
      sub_26A506A30();
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB958, &qword_26A8590F0);
      v30 = sub_26A50535C();
      v41 = v29;
      v42 = v30;
      swift_getOpaqueTypeConformance2();
      sub_26A84FDF8();
      sub_26A505D1C();
      return sub_26A505D1C();
    }

    v32 = *(v18 + 8);
    v20 = *v18;
  }

  else
  {
    v32 = *(v19 + 8);
  }

  sub_26A502B58(v20, v32, v6);

  (*(v4 + 16))(v8, v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_26A506A30();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB958, &qword_26A8590F0);
  v34 = sub_26A50535C();
  v41 = v33;
  v42 = v34;
  swift_getOpaqueTypeConformance2();
  sub_26A84FDF8();
  return (*(v4 + 8))(v6, v3);
}

void sub_26A500B5C(uint64_t a1, uint64_t a2)
{
  sub_26A84F068();
  if (v2 > 0.0)
  {
    sub_26A84F068();
    type metadata accessor for FactItemStandardLayout(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
    sub_26A851068();
  }
}

void sub_26A500BE8(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v25 = v1;
  v26 = v2;
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for FactItemStandardLayout(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26A850DF8();
  (*(v13 + 16))(v17, v5, v11);
  sub_26A505604(v24, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FactItemStandardLayout);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v15 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v19, v17, v11);
  sub_26A505660(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = v26;
  *v7 = v18;
  v7[1] = v22;
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v21;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A500DBC(uint64_t a1, uint64_t a2)
{
  sub_26A84F068();
  if (v2 > 0.0)
  {
    sub_26A84F068();
    type metadata accessor for FactItemStandardLayout(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
    sub_26A851068();
  }
}

void *sub_26A500E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FactItemStandardLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  result = sub_26A851058();
  if (v4 > 0.0)
  {
    sub_26A851058();
    sub_26A851058();
    sub_26A851058();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABA00, &qword_26A859300);
    return sub_26A851268();
  }

  return result;
}

uint64_t sub_26A500FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB858, &qword_26A858FC0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v49 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v44[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB860, &qword_26A858FC8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v44[-v15];
  sub_26A50060C(&v44[-v15]);
  v17 = sub_26A850268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A84ED48();
  v18 = &v16[*(v11 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v48 = sub_26A501318();
  sub_26A4FF628(v48);
  v23 = v50;
  v24 = v9;
  sub_26A5000D8();
  LOBYTE(v9) = sub_26A850258();
  sub_26A84ED48();
  v25 = &v24[*(v5 + 44)];
  v46 = v24;
  *v25 = v9;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = *(a1 + *(type metadata accessor for FactItemStandardLayout(0) + 64));

  v45 = sub_26A850258();
  sub_26A84ED48();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v47 = v13;
  sub_26A505CD4(v16, v13, &qword_2803AB860, &qword_26A858FC8);
  v39 = v24;
  v40 = v49;
  sub_26A505CD4(v39, v49, &qword_2803AB858, &qword_26A858FC0);
  sub_26A505CD4(v13, a2, &qword_2803AB860, &qword_26A858FC8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB868, &qword_26A858FD0);
  *(a2 + v41[12]) = v48;
  *(a2 + v41[16]) = v23;
  sub_26A505CD4(v40, a2 + v41[20], &qword_2803AB858, &qword_26A858FC0);
  v42 = a2 + v41[24];
  *v42 = v30;
  *(v42 + 8) = v45;
  *(v42 + 16) = v32;
  *(v42 + 24) = v34;
  *(v42 + 32) = v36;
  *(v42 + 40) = v38;
  *(v42 + 48) = 0;

  sub_26A505D1C();
  sub_26A505D1C();

  sub_26A505D1C();

  return sub_26A505D1C();
}

uint64_t sub_26A501318()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8E0, &qword_26A859058);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v79 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8E8, &qword_26A859060);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v60 - v11;
  v12 = type metadata accessor for FactItemStandardLayout(0);
  v13 = v12;
  v14 = v0 + *(v12 + 32);
  if (*(v14 + 88))
  {
    v15 = 1;
  }

  else
  {
    memcpy(v86, (v0 + *(v12 + 48)), 0xFAuLL);
    if (sub_26A505008(v86) == 1)
    {
      v80 = 0;
      goto LABEL_7;
    }

    v15 = LOBYTE(v86[11]);
  }

  v80 = v15;
LABEL_7:
  v16 = *(v14 + 72);
  if (!v16)
  {
LABEL_16:
    v56 = sub_26A84FA78();
    v83 = 1;
    sub_26A503B64(v0, v86);
    memcpy(v84, v86, sizeof(v84));
    memcpy(v85, v86, sizeof(v85));
    sub_26A505CD4(v84, v81, &qword_2803AB8F0, &qword_26A859068);
    sub_26A505D1C();
    memcpy(&v82[7], v84, 0x220uLL);
    v81[0] = v56;
    v81[1] = 0;
    LOBYTE(v81[2]) = v83;
    memcpy(&v81[2] + 1, v82, 0x227uLL);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8F8, &unk_26A859070);
    v58 = sub_26A506A30();
    sub_26A850AF8();
    memcpy(v86, v81, 0x238uLL);
    sub_26A505D1C();
    (*(v2 + 16))(v79, v6, v1);
    v81[0] = v57;
    v81[1] = v58;
    swift_getOpaqueTypeConformance2();
    v55 = sub_26A851248();
    (*(v2 + 8))(v6, v1);
    return v55;
  }

  v75 = v9;
  v18 = *(v14 + 48);
  v17 = *(v14 + 56);
  v19 = *(v14 + 64);
  memcpy(v86, (v0 + *(v13 + 48)), 0xFAuLL);
  if (sub_26A505008(v86) == 1)
  {
    sub_26A4EF6C0(v18, v17, v19 & 1);

    v20 = v19 & 1;
LABEL_15:
    sub_26A4EC448(v18, v17, v20);

    goto LABEL_16;
  }

  v21 = v86[9];
  v74 = v19;
  if (!v86[9])
  {
    sub_26A4EF6C0(v18, v17, v19 & 1);

    v20 = v74 & 1;
    goto LABEL_15;
  }

  v22 = v86[6];
  v23 = v86[7];
  v24 = v86[8];
  sub_26A505318(v18, v17, v19, v16);
  sub_26A505318(v22, v23, v24, v21);
  sub_26A8504A8();
  v67 = v18;
  v68 = v17;
  v69 = v16;
  v25 = sub_26A850738();
  v27 = v26;
  LODWORD(v71) = v28;
  v30 = v29;

  sub_26A8502F8();
  v72 = v24;
  v73 = v23;
  v79 = v22;
  v31 = sub_26A850738();
  v33 = v32;
  v63 = v21;
  v35 = v34;
  v37 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB908, &qword_26A884590);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26A8570F0;
  *(v38 + 32) = v25;
  *(v38 + 40) = v27;
  v39 = v71 & 1;
  *(v38 + 48) = v71 & 1;
  *(v38 + 56) = v30;
  *(v38 + 64) = v31;
  *(v38 + 72) = v33;
  v40 = v35 & 1;
  *(v38 + 80) = v40;
  *(v38 + 88) = v37;
  v70 = v25;
  v60 = v27;
  v62 = v39;
  sub_26A4EF6C0(v25, v27, v39);
  v71 = v30;

  v64 = v33;
  v65 = v31;
  v61 = v40;
  sub_26A4EF6C0(v31, v33, v40);
  v41 = qword_2803A8BE8;
  v66 = v37;

  if (v41 != -1)
  {
    swift_once();
  }

  sub_26A503434(xmmword_2803B00E0, *(&xmmword_2803B00E0 + 1), byte_2803B00F0, qword_2803B00F8, v38);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v81[0] = v43;
  v81[1] = v45;
  v47 &= 1u;
  LOBYTE(v81[2]) = v47;
  v81[3] = v49;
  v50 = MEMORY[0x277CE0BD8];
  v51 = MEMORY[0x277CE0BC8];
  v52 = v76;
  sub_26A850AF8();
  sub_26A4EC448(v43, v45, v47);

  v54 = v77;
  v53 = v78;
  (*(v77 + 16))(v75, v52, v78);
  v81[0] = v50;
  v81[1] = v51;
  swift_getOpaqueTypeConformance2();
  v55 = sub_26A851248();
  sub_26A4EC448(v67, v68, v74 & 1);

  sub_26A4EC448(v79, v73, v72 & 1);

  sub_26A4EC448(v65, v64, v61);

  sub_26A4EC448(v70, v60, v62);

  (*(v54 + 8))(v52, v53);
  return v55;
}

uint64_t sub_26A501A18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __src - v4;
  v6 = sub_26A84B258();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB948, &qword_26A8590E8) + 36);
  v8 = type metadata accessor for ImageSizeableModifier(0);
  v9 = v7 + v8[5];
  sub_26A6AEE74(__src);
  memcpy(v9, __src, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    swift_once();
  }

  v10 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    swift_once();
  }

  v11 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    swift_once();
  }

  v12 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    swift_once();
  }

  v13 = byte_2803D1D89;
  *(v9 + 192) = v10;
  *(v9 + 200) = v11;
  *(v9 + 208) = 1;
  *(v9 + 216) = v12;
  *(v9 + 217) = 0;
  *(v9 + 218) = v13;
  *(v9 + 219) = 0;
  v14 = v8[6];
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  swift_storeEnumTagMultiPayload();
  v15 = v7 + v8[7];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v7 + v8[8];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v7 + v8[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v7 + v8[10];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v8[11];
  *(v7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  swift_storeEnumTagMultiPayload();
  v20 = v7 + v8[12];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v7 + v8[13];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  sub_26A5F3AB0(v5, v7);
  sub_26A505D1C();
  return sub_26A505CD4(v1, a1, &qword_2803AB940, &qword_26A8590E0);
}

void sub_26A501D68(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = sub_26A84B258();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v10);
  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB10, &qword_26A859490) + 36);
  v12 = type metadata accessor for ImageSizeableModifier(0);
  v13 = v11 + v12[5];
  sub_26A6AEE74(v26);
  memcpy(v13, v26, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_28157F7C0);
  }

  v14 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1(&qword_2803A8B88);
  }

  v15 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_28157FAE8);
  }

  v16 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_2803A8B80);
  }

  v17 = byte_2803D1D89;
  *(v13 + 192) = v14;
  *(v13 + 200) = v15;
  *(v13 + 208) = 1;
  *(v13 + 216) = v16;
  *(v13 + 217) = 0;
  *(v13 + 218) = v17;
  *(v13 + 219) = 0;
  v18 = v12[6];
  *(v11 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  swift_storeEnumTagMultiPayload();
  v19 = v11 + v12[7];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v11 + v12[8];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v11 + v12[9];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v11 + v12[10];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v12[11];
  *(v11 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  swift_storeEnumTagMultiPayload();
  v24 = v11 + v12[12];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  sub_26A5F3AB0(v1, v11);
  sub_26A505D1C();
  *v7 = v5;
  *(v7 + 8) = v3 & 1;
  *(v7 + 9) = HIBYTE(v3) & 1;

  OUTLINED_FUNCTION_27_0();
}

void sub_26A50205C(uint64_t a1)
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_35_0();
  v8 = sub_26A84B258();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  v9 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABAD0, &qword_26A8593F0) + 36);
  v10 = type metadata accessor for ImageSizeableModifier(0);
  v11 = v9 + v10[5];
  sub_26A6AEE74(v24);
  memcpy(v11, v24, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_28157F7C0);
  }

  v12 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1(&qword_2803A8B88);
  }

  v13 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_28157FAE8);
  }

  v14 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_2803A8B80);
  }

  v15 = byte_2803D1D89;
  *(v11 + 192) = v12;
  *(v11 + 200) = v13;
  *(v11 + 208) = 1;
  *(v11 + 216) = v14;
  *(v11 + 217) = 0;
  *(v11 + 218) = v15;
  *(v11 + 219) = 0;
  v16 = v10[6];
  *(v9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v18);
  v19 = v9 + v10[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v9 + v10[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v10[11];
  *(v9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v22);
  v23 = v9 + v10[13];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_26A5F3AB0(v1, v9);
  sub_26A505D1C();
  *v5 = v3;

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A502338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9B0, &qword_26A859148);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v23 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v23 - v16);
  *v17 = sub_26A851458();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9B8, &qword_26A859150);
  sub_26A502534(a1, a2, v17 + *(v19 + 44));
  *v14 = sub_26A851468();
  v14[1] = v20;
  sub_26A502950(a1, a2, v14 + *(v19 + 44));
  sub_26A505CD4(v17, v11, &qword_2803AB9B0, &qword_26A859148);
  sub_26A505CD4(v14, v8, &qword_2803AB9B0, &qword_26A859148);
  sub_26A505CD4(v11, a3, &qword_2803AB9B0, &qword_26A859148);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9C0, &qword_26A859158);
  sub_26A505CD4(v8, a3 + *(v21 + 48), &qword_2803AB9B0, &qword_26A859148);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A502534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB948, &qword_26A8590E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9C8, &qword_26A859160);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for FactItemStandardLayout(0);
  sub_26A502740(*(a2 + *(v16 + 52)), *(a2 + *(v16 + 52) + 8), v15);
  v17 = -*(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 64);
  v18 = &v15[*(v10 + 44)];
  *v18 = 0;
  *(v18 + 1) = v17;
  sub_26A505CD4(a1, v8, &qword_2803AB948, &qword_26A8590E8);
  sub_26A505CD4(v15, v12, &qword_2803AB9C8, &qword_26A859160);
  sub_26A505CD4(v8, a3, &qword_2803AB948, &qword_26A8590E8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D0, &qword_26A859168);
  sub_26A505CD4(v12, a3 + *(v19 + 48), &qword_2803AB9C8, &qword_26A859160);
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A502740@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB958, &qword_26A8590F0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
  v10 = v3 + *(type metadata accessor for FactItemConstants(0) + 56);
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB980, &qword_26A859100) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  v14 = sub_26A84B1D8();
  (*(*(v14 - 8) + 16))(v12 + v13, v10 + v9, v14);
  __swift_storeEnumTagSinglePayload(v12 + v13, 0, 1, v14);
  *v12 = KeyPath;
  *v8 = a1;
  v8[8] = a2;
  v15 = swift_getKeyPath();
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB970, &qword_26A8590F8) + 36)];
  *v16 = v15;
  v16[8] = 1;
  v17 = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  *v18 = v17;
  v18[8] = 0;
  sub_26A50535C();

  sub_26A850AF8();
  return sub_26A505D1C();
}

uint64_t sub_26A502950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB948, &qword_26A8590E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9C8, &qword_26A859160);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for FactItemStandardLayout(0);
  sub_26A502740(*(a2 + *(v16 + 56)), *(a2 + *(v16 + 56) + 8), v15);
  v17 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 64);
  v18 = &v15[*(v10 + 44)];
  *v18 = 0;
  *(v18 + 1) = v17;
  sub_26A505CD4(a1, v8, &qword_2803AB948, &qword_26A8590E8);
  sub_26A505CD4(v15, v12, &qword_2803AB9C8, &qword_26A859160);
  sub_26A505CD4(v8, a3, &qword_2803AB948, &qword_26A8590E8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D0, &qword_26A859168);
  sub_26A505CD4(v12, a3 + *(v19 + 48), &qword_2803AB9C8, &qword_26A859160);
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A502B58@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB958, &qword_26A8590F0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
  v10 = v3 + *(type metadata accessor for FactItemConstants(0) + 52);
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB980, &qword_26A859100) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  v14 = sub_26A84B1D8();
  (*(*(v14 - 8) + 16))(v12 + v13, v10 + v9, v14);
  __swift_storeEnumTagSinglePayload(v12 + v13, 0, 1, v14);
  *v12 = KeyPath;
  *v8 = a1;
  v8[8] = a2;
  v15 = swift_getKeyPath();
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB970, &qword_26A8590F8) + 36)];
  *v16 = v15;
  v16[8] = 1;
  v17 = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  *v18 = v17;
  v18[8] = 0;
  sub_26A50535C();

  sub_26A850AF8();
  return sub_26A505D1C();
}

void sub_26A502D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v117 = v4[3];
  v11 = v4[4];
  v110 = v4[5];
  v12 = v4[6];
  v13 = v4[2];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910, &qword_26A859080);
  inited = swift_initStackObject();
  v106 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 & 1;
  *(inited + 56) = a4;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v116 = v11;
  swift_retain_n();
  v109 = v12;
  swift_retain_n();
  sub_26A4EF6C0(a1, a2, a3 & 1);
  v15 = *(v9 + 16);
  v16 = v9;

  v108 = inited;

  v17 = 0;
  v18 = (v9 + 73);
  for (i = v9; ; v16 = i)
  {
    if (v15 == v17)
    {
      v32 = v108;

      v33 = v109;

      v34 = v116;

      v35 = 0;
      v36 = 0;
      v115 = MEMORY[0x277D84F90];
LABEL_34:
      v122 = v16;
      v123 = v15;
      v124 = v10;
      v125 = v13;
      v126 = v117;
      v127 = v34;
      v128 = v110;
      v129 = v33;
      v130 = sub_26A5F158C;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = v32;
      v135 = v35;
      v136 = v36;
      v137 = 3;
      sub_26A505D1C();
      if (qword_2803A8BD0 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }

    if (v17 >= *(v16 + 16))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      OUTLINED_FUNCTION_4_4(&qword_2803A8BD0);
LABEL_35:
      v83 = xmmword_2803B0080;
      v84 = byte_2803B0090;
      v114 = *(v115 + 16);
      v85 = *(&xmmword_2803B0080 + 1);
      sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

      v86 = 0;
      v87 = v115 + 56;
      while (v114 != v86)
      {
        if (v86 >= *(v115 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v118 = v86 + 1;
        v88 = *(v87 - 8);
        v89 = OUTLINED_FUNCTION_25_1();
        sub_26A4EF6C0(v89, v90, v88);

        OUTLINED_FUNCTION_42_0();
        v91 = sub_26A8506F8();
        v92 = v83;
        v83 = v91;
        v94 = v93;
        v95 = v84;
        v84 = v96;
        sub_26A4EC448(v92, v85, v95 & 1);

        v97 = OUTLINED_FUNCTION_25_1();
        sub_26A4EC448(v97, v98, v88);

        v86 = v118;
        v87 += 32;
        v85 = v94;
      }

      OUTLINED_FUNCTION_42_0();
      return;
    }

    OUTLINED_FUNCTION_41_1(*(v18 - 41), *(v18 - 33), *(v18 - 25), *(v18 - 17), *(v18 - 9), *(v18 - 1), *v18);
    v19 = v13;
    v20 = v10(&v138, &v122);
    OUTLINED_FUNCTION_40_0(v20, v21, v22, v23, v24, v25, v26, v27, v99, v100, v102, v104, v106, *(&v106 + 1), v108, v109, v110, v111, i, v115, v116, v117, v119, v120, v121, v122, v123, v124, v125, v126, v127, SBYTE1(v127));
    v28 = v138;
    v29 = v139;
    v31 = v140;
    v30 = v141;
    v142 = v138;
    v143 = v139;
    v144 = v140;
    v145 = v141;
    if ((v117)(&v142))
    {
      break;
    }

    OUTLINED_FUNCTION_54_0();
    v18 += 48;
    ++v17;
  }

  v112 = v10;
  v122 = v28;
  v123 = v29;
  v124 = v31;
  v125 = v30;
  v110(&v142, &v122);
  OUTLINED_FUNCTION_54_0();
  v37 = v142;
  v38 = v143;
  v39 = v144;
  v40 = v145;
  v41 = swift_allocObject();
  *(v41 + 16) = v106;
  *(v41 + 32) = v37;
  *(v41 + 40) = v38;
  *(v41 + 48) = v39;
  *(v41 + 56) = v40;
  v42 = v41;

  v43 = 0;
  j = 0;
  v101 = 0;
  v16 = i;
  v105 = i + 73;
  v15 = v17 + 1;
  v115 = MEMORY[0x277D84F90];
  v45 = v17 + 1;
LABEL_8:
  v103 = j;
  v46 = v43;
  while (v42)
  {
    v47 = *(v42 + 16);
    if (v46 != v47)
    {
      if (v46 >= v47)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        break;
      }

      v67 = 0;
      v43 = v46 + 1;
      for (j = v42; ; v103 = j)
      {
        v69 = j + 32 * v46;
        v72 = *(v69 + 32);
        v70 = v69 + 32;
        v71 = v72;
        v73 = *(v70 + 24);
        if (v73)
        {
          HIDWORD(v99) = v67;
          v74 = *(v70 + 8);
          v75 = *(v70 + 16);
          sub_26A4EF6C0(v71, v74, v75 & 1);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_29_0(isUniquelyReferenced_nonNull_native, v77, v78, v115);
            v115 = v81;
          }

          v79 = *(v115 + 16);
          if (v79 >= *(v115 + 24) >> 1)
          {
            sub_26A7A11D4();
            v115 = v82;
          }

          *(v115 + 16) = v79 + 1;
          v80 = v115 + 32 * v79;
          *(v80 + 32) = v71;
          *(v80 + 40) = v74;
          *(v80 + 48) = v75 & 1;
          *(v80 + 56) = v73;
          v16 = i;
          v42 = v107;
          LOBYTE(v67) = BYTE4(v99);
        }

        j = v103;
        if ((v67 & 1) == 0)
        {
          break;
        }

LABEL_21:
        if (!j)
        {
          goto LABEL_48;
        }

        v68 = *(j + 16);
        if (v101 == v68)
        {
          goto LABEL_8;
        }

        if (v101 >= v68)
        {
          goto LABEL_46;
        }

        v46 = v101;
        v67 = 1;
        ++v101;
      }

      goto LABEL_8;
    }

    v13 = v19;
    *&v106 = v42;
    v48 = *(v16 + 16);
    v49 = (v105 + 48 * v45);
    for (k = v45; ; ++k)
    {
      if (v48 == k)
      {
        v32 = v108;

        v33 = v109;

        v34 = v116;

        v10 = v112;
        v36 = v101;
        v35 = v103;
        goto LABEL_34;
      }

      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (k >= *(v16 + 16))
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_41_1(*(v49 - 41), *(v49 - 33), *(v49 - 25), *(v49 - 17), *(v49 - 9), *(v49 - 1), *v49);
      v51 = v112(&v138, &v122);
      OUTLINED_FUNCTION_40_0(v51, v52, v53, v54, v55, v56, v57, v58, v99, v101, v103, v105, v106, *(&v106 + 1), v108, v109, v110, v112, i, v115, v116, v117, v119, v120, v121, v122, v123, v124, v125, v126, v127, SBYTE1(v127));
      v59 = v138;
      v60 = v139;
      v62 = v140;
      v61 = v141;
      v142 = v138;
      v143 = v139;
      v144 = v140;
      v145 = v141;
      if ((v117)(&v142))
      {
        break;
      }

      OUTLINED_FUNCTION_56_0();
      v49 += 48;
      v15 = k + 1;
      v13 = v19;
      v16 = i;
    }

    v122 = v59;
    v123 = v60;
    v124 = v62;
    v125 = v61;
    v110(&v142, &v122);
    OUTLINED_FUNCTION_56_0();
    v63 = v142;
    v64 = v143;
    v65 = v144;
    v122 = v142;
    v123 = v143;
    LOBYTE(v124) = v144;
    v125 = v145;
    sub_26A5F158C(&v122, &v142);
    sub_26A4EC448(v63, v64, v65);

    v66 = v142;

    v46 = 0;
    v15 = k + 1;
    v42 = v66;
    v45 = k + 1;
    v16 = i;
    if (*(v108 + 16))
    {

      v43 = 0;
      v101 = 0;
      v42 = v66;
      j = v108;
      v45 = k + 1;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_26A503434(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910, &qword_26A859080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 & 1;
  *(inited + 56) = a4;

  sub_26A4EF6C0(a1, a2, a3 & 1);
  v11 = *(a5 + 16);

  if (v11)
  {
    v12 = *(a5 + 56);
    v13 = *(a5 + 48);
    v15 = *(a5 + 32);
    v14 = *(a5 + 40);
    v68 = v15;
    v69 = v14;
    v70 = v13;
    v71 = v12;
    sub_26A4EF6C0(v15, v14, v13);

    sub_26A5F158C(&v68, &v67);
    sub_26A4EC448(v15, v14, v13);

    v16 = v67;

    v17 = 0;
    i = 0;
    v64 = 0;
    v63 = MEMORY[0x277D84F90];
    v19 = 1;
LABEL_3:
    v65 = i;
    v20 = (a5 + 56 + 32 * v19);
    v21 = v17;
    while (v16)
    {
      v22 = *(v16 + 16);
      if (v21 != v22)
      {
        if (v21 >= v22)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        v29 = 0;
        v17 = v21 + 1;
        for (i = v16; ; v65 = i)
        {
          v31 = (i + 32 * v21);
          v32 = v31[7];
          if (v32)
          {
            v61 = v17;
            v34 = v31[5];
            v33 = v31[6];
            v35 = v31[4];
            v36 = OUTLINED_FUNCTION_25_1();
            sub_26A505318(v36, v37, v33, v32);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_29_0(isUniquelyReferenced_nonNull_native, v39, v40, v63);
              v63 = v43;
            }

            v41 = *(v63 + 16);
            if (v41 >= *(v63 + 24) >> 1)
            {
              sub_26A7A11D4();
              v63 = v44;
            }

            *(v63 + 16) = v41 + 1;
            v42 = v63 + 32 * v41;
            *(v42 + 32) = v35;
            *(v42 + 40) = v34;
            *(v42 + 48) = v33 & 1;
            *(v42 + 56) = v32;
            v17 = v61;
            v29 = v60;
          }

          i = v65;
          if ((v29 & 1) == 0)
          {
            break;
          }

LABEL_12:
          if (!i)
          {
            goto LABEL_38;
          }

          v30 = *(i + 16);
          if (v64 == v30)
          {
            goto LABEL_3;
          }

          if (v64 >= v30)
          {
            goto LABEL_36;
          }

          v21 = v64;
          v29 = 1;
          ++v64;
        }

        goto LABEL_3;
      }

      v23 = *(a5 + 16);
      if (v19 == v23)
      {

        goto LABEL_26;
      }

      if (v19 >= v23)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      ++v19;
      v24 = *v20;
      v25 = *(v20 - 8);
      v27 = *(v20 - 3);
      v26 = *(v20 - 2);
      v68 = v27;
      v69 = v26;
      v70 = v25;
      v71 = v24;
      sub_26A4EF6C0(v27, v26, v25);

      sub_26A5F158C(&v68, &v67);
      sub_26A4EC448(v27, v26, v25);

      v28 = v67;

      v21 = 0;
      v20 += 4;
      v16 = v28;
      if (*(inited + 16))
      {

        v17 = 0;
        v64 = 0;
        v16 = v28;
        i = inited;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
LABEL_26:

    if (qword_2803A8BD0 != -1)
    {
LABEL_34:
      OUTLINED_FUNCTION_4_4(&qword_2803A8BD0);
    }

    v62 = *(v63 + 16);
    v45 = xmmword_2803B0080;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

    v46 = 0;
    v47 = v63 + 56;
    while (v62 != v46)
    {
      if (v46 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v66 = v46 + 1;
      v48 = OUTLINED_FUNCTION_24_1();
      sub_26A4EF6C0(v48, v49, v50);

      v51 = OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_55_0(v51, v52, v53, v54);
      OUTLINED_FUNCTION_38_0();
      sub_26A4EC448(v45, v56, v55 & 1);

      v57 = OUTLINED_FUNCTION_24_1();
      sub_26A4EC448(v57, v58, v59);

      v46 = v66;
      v47 += 32;
      v45 = v63;
    }

    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_26A50388C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910, &qword_26A859080);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26A8570D0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  *(v14 + 56) = a4;
  __src[0] = a5;
  __src[1] = 0;
  __src[2] = a6;
  __src[3] = a7;
  __src[4] = sub_26A5F158C;
  memset(&__src[5], 0, 24);
  memset(&__src[9], 0, 17);
  __src[8] = v14;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_26A4EF6C0(a1, a2, a3 & 1);

  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    do
    {
      sub_26A506D44();
    }

    while (!v18);
    v19 = v18;
    if (v18 == 1)
    {
      break;
    }

    v20 = v15;
    v21 = v16;
    v22 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0(isUniquelyReferenced_nonNull_native, v24, v25, v47);
      v47 = v28;
    }

    v26 = *(v47 + 16);
    if (v26 >= *(v47 + 24) >> 1)
    {
      sub_26A7A11D4();
      v47 = v29;
    }

    *(v47 + 16) = v26 + 1;
    v27 = v47 + 32 * v26;
    *(v27 + 32) = v20;
    *(v27 + 40) = v21;
    *(v27 + 48) = v22 & 1;
    *(v27 + 56) = v19;
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_26A505D1C();
  if (qword_2803A8BD0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_4_4(&qword_2803A8BD0);
  }

  v46 = *(v47 + 16);
  v30 = xmmword_2803B0080;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  v31 = 0;
  v32 = v47 + 56;
  while (v46 != v31)
  {
    if (v31 >= *(v47 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v48 = v31 + 1;
    v33 = OUTLINED_FUNCTION_24_1();
    sub_26A4EF6C0(v33, v34, v35);

    v36 = OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_55_0(v36, v37, v38, v39);
    OUTLINED_FUNCTION_38_0();
    sub_26A4EC448(v30, v41, v40 & 1);

    v42 = OUTLINED_FUNCTION_24_1();
    sub_26A4EC448(v42, v43, v44);

    v31 = v48;
    v32 += 32;
    v30 = v47;
  }

  return OUTLINED_FUNCTION_10_4();
}

uint64_t sub_26A503B64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FactItemStandardLayout(0);
  v5 = *(v4 + 32);
  memcpy(__dst, (a1 + v5), 0xFAuLL);
  v6 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v14, (a1 + v5), 0xFAuLL);
  memcpy(__src, (a1 + *(v4 + 48)), 0xFAuLL);
  sub_26A4EC458(__dst, v21);
  v8 = sub_26A8502F8();
  v9 = swift_getKeyPath();
  memcpy(v12, __src, 0xFAuLL);
  memcpy(v16, v14, 0x100uLL);
  v16[32] = KeyPath;
  v16[33] = v6;
  memcpy(v11, v16, 0x110uLL);
  memcpy(v17, v12, 0x100uLL);
  v17[32] = v9;
  v17[33] = v8;
  memcpy(&v11[272], v17, 0x110uLL);
  memcpy(a2, v11, 0x220uLL);
  memcpy(v18, v12, sizeof(v18));
  v19 = v9;
  v20 = v8;
  sub_26A505CD4(__src, v21, &qword_2803AB870, &unk_26A859000);
  sub_26A505CD4(v16, v21, &qword_2803AB918, &unk_26A8869B0);
  sub_26A505CD4(v17, v21, &qword_2803AB920, &qword_26A8590C0);
  sub_26A505D1C();
  memcpy(v21, v14, sizeof(v21));
  v22 = KeyPath;
  v23 = v6;
  return sub_26A505D1C();
}

uint64_t *sub_26A503D50@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, uint64_t a6@<X4>, const void *a7@<X5>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, a7, 0xFAuLL);
  memcpy(v16, __src, 0xFAuLL);
  memcpy(__srca, __src, 0xFAuLL);
  memcpy(v17, a7, 0xFAuLL);
  memcpy(a1, __srca, 0x100uLL);
  a1[32] = a3;
  a1[33] = a4;
  *(a1 + 272) = a5 & 1;
  a1[35] = a6;
  memcpy(a1 + 36, a7, 0xFAuLL);
  sub_26A4EC458(__src, v20);
  sub_26A4EF6C0(a3, a4, a5 & 1);

  sub_26A4EC458(a7, v20);
  sub_26A4EC458(v16, v20);
  sub_26A4EF6C0(a3, a4, a5 & 1);

  sub_26A4EC458(v17, v20);
  sub_26A4EC508(v19);
  sub_26A4EC448(a3, a4, a5 & 1);

  memcpy(v20, __dst, 0xFAuLL);
  return sub_26A4EC508(v20);
}

uint64_t sub_26A503ED4()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815888E8, v23, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803D2940, v21, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v18)
  {
    *(inited + 40) = v18;
    *(inited + 56) = v19;
    *(inited + 72) = v20;
  }

  else
  {
    sub_26A4F20CC(v22, inited + 40);
  }

  sub_26A505D1C();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(v9 + 32) = qword_281588968;
  v11 = byte_281588970;
  *(v9 + 40) = byte_281588970;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 64) = 1;
  *(v9 + 72) = 4;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  v13 = sub_26A850408();
  v14 = sub_26A84FEA8();
  v15 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v15;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v16 = sub_26A8516A8();
  v22[0] = 0u;
  memset(v21, 0, sizeof(v21));
  sub_26A66DDEC(v16, qword_2803AB6A0);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A50429C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

unint64_t sub_26A50438C(uint64_t a1)
{
  result = sub_26A5069EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A50440C(uint64_t a1)
{
  sub_26A504C10(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A4D27F4(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            v2 = sub_26A5046B4();
            if (v12 <= 0x3F)
            {
              sub_26A504C10(319, &qword_2803AB748, &type metadata for PartialText, MEMORY[0x277D83D88]);
              if (v14 > 0x3F)
              {
                return v13;
              }

              else
              {
                sub_26A504C10(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
                v2 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A504650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A5046B4()
{
  result = qword_2803AB740;
  if (!qword_2803AB740)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2803AB740);
  }

  return result;
}

unint64_t sub_26A5046FC()
{
  result = qword_2803AB758;
  if (!qword_2803AB758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB718, &qword_26A858E30);
    sub_26A5047B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB758);
  }

  return result;
}

unint64_t sub_26A5047B4()
{
  result = qword_2803AB760;
  if (!qword_2803AB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB710, &qword_26A858E00);
    sub_26A504840();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB760);
  }

  return result;
}

unint64_t sub_26A504840()
{
  result = qword_2803AB768;
  if (!qword_2803AB768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB708, &unk_26A858DC8);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB768);
  }

  return result;
}

void sub_26A50496C(uint64_t a1)
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A504C10(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A504C10(319, &qword_2803AB748, &type metadata for PartialText, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26A504C10(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_26A504C10(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_26A504C10(319, &qword_2803AB790, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
                if (v8 <= 0x3F)
                {
                  sub_26A504C10(319, &qword_2803AB798, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A504C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A504C7C()
{
  result = qword_2803AB7D8;
  if (!qword_2803AB7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7C8, &qword_26A858F68);
    sub_26A504D34();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB7D8);
  }

  return result;
}

unint64_t sub_26A504D34()
{
  result = qword_2803AB7E0;
  if (!qword_2803AB7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7E8, &qword_26A858F78);
    sub_26A504DC0();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB7E0);
  }

  return result;
}

unint64_t sub_26A504DC0()
{
  result = qword_2803AB7F0;
  if (!qword_2803AB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7F8, &qword_26A858F80);
    sub_26A504E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB7F0);
  }

  return result;
}

unint64_t sub_26A504E4C()
{
  result = qword_2803AB800;
  if (!qword_2803AB800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB808, &unk_26A858F88);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB800);
  }

  return result;
}

unint64_t sub_26A504F30()
{
  result = qword_2803AB830;
  if (!qword_2803AB830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7D0, &qword_26A858F70);
    sub_26A504FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB830);
  }

  return result;
}

unint64_t sub_26A504FB4()
{
  result = qword_2803AB838;
  if (!qword_2803AB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB838);
  }

  return result;
}

uint64_t sub_26A505008(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_26A505020()
{
  result = qword_2803AB880;
  if (!qword_2803AB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB878, &qword_26A859010);
    sub_26A5050D8();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB880);
  }

  return result;
}

unint64_t sub_26A5050D8()
{
  result = qword_2803AB888;
  if (!qword_2803AB888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB890, &qword_26A859018);
    sub_26A5051BC(&qword_2803AB898, &qword_2803AB870, &unk_26A859000, sub_26A4EC4B4);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB888);
  }

  return result;
}

uint64_t sub_26A5051BC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A505234()
{
  result = qword_2803AB8B8;
  if (!qword_2803AB8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB8B0, &qword_26A859038);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB8B8);
  }

  return result;
}

double sub_26A505318(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EF6C0(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26A50535C()
{
  result = qword_2803AB960;
  if (!qword_2803AB960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB958, &qword_26A8590F0);
    sub_26A505414();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB960);
  }

  return result;
}

unint64_t sub_26A505414()
{
  result = qword_2803AB968;
  if (!qword_2803AB968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB970, &qword_26A8590F8);
    sub_26A5054CC();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB968);
  }

  return result;
}

unint64_t sub_26A5054CC()
{
  result = qword_2803AB978;
  if (!qword_2803AB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB980, &qword_26A859100);
    sub_26A5051BC(&qword_2803AB988, &unk_2803AB990, &unk_26A859108, sub_26A5055B0);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB978);
  }

  return result;
}

unint64_t sub_26A5055B0()
{
  result = qword_2803AB998;
  if (!qword_2803AB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB998);
  }

  return result;
}

uint64_t sub_26A505604(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A505660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemStandardLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_91Tm()
{
  type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_37_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A49035C(*v3, *(v3 + 8));
  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  sub_26A49035C(*(v3 + 32), *(v3 + 40));
  sub_26A49035C(*(v3 + 48), *(v3 + 56));
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  sub_26A49035C(*(v3 + 80), *(v3 + 88));
  sub_26A49035C(*(v3 + 96), *(v3 + 104));
  sub_26A49035C(*(v3 + 112), *(v3 + 120));
  sub_26A49035C(*(v3 + 128), *(v3 + 136));
  sub_26A49035C(*(v3 + 144), *(v3 + 152));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v5 = v3 + *(v4 + 28);
  v6 = type metadata accessor for FactItemConstants(0);
  v7 = *(v6 + 52);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + *(v6 + 56), v8);
  v11 = v3 + *(v4 + 32);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v13 = OUTLINED_FUNCTION_36_0(v12);
  (v10)(v13);
  v10(v11 + *(v6 + 56), v8);
  OUTLINED_FUNCTION_60_0(v3 + v0[5]);
  OUTLINED_FUNCTION_60_0(v3 + v0[6]);
  v14 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v15 + 8))(v3 + v14);
  }

  else
  {
  }

  v16 = v3 + v0[8];
  OUTLINED_FUNCTION_0_8();
  if (v17)
  {
    OUTLINED_FUNCTION_8_5();
  }

  if (*(v16 + 96))
  {

    OUTLINED_FUNCTION_7_6();
    if (*(v16 + 160))
    {
      OUTLINED_FUNCTION_6_6();
    }

    OUTLINED_FUNCTION_5_5();
  }

  OUTLINED_FUNCTION_51_0();
  if (v18)
  {
    OUTLINED_FUNCTION_0_8();
    if (v19)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v16 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v16 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v20)
  {
    OUTLINED_FUNCTION_0_8();
    if (v21)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v16 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v16 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v22)
  {
    OUTLINED_FUNCTION_0_8();
    if (v23)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v16 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v16 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v24)
  {
    OUTLINED_FUNCTION_0_8();
    if (v25)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v16 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v16 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  return swift_deallocObject();
}

void *sub_26A505B58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_79(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_26A500E48(a1, a2, v7);
}

void sub_26A505C0C(uint64_t a1)
{
  v2 = type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_33_0();
  sub_26A500BE8(a1);
}

uint64_t sub_26A505C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v4;
}

uint64_t sub_26A505CD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v4;
}

uint64_t sub_26A505D1C()
{
  OUTLINED_FUNCTION_196();
  v3 = OUTLINED_FUNCTION_50_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v0);
  return v0;
}

unint64_t sub_26A505D6C()
{
  result = qword_2803ABA98;
  if (!qword_2803ABA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABA90, &unk_26A861C40);
    sub_26A5051BC(&qword_2803AB898, &qword_2803AB870, &unk_26A859000, sub_26A4EC4B4);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABA98);
  }

  return result;
}

unint64_t sub_26A505E50()
{
  result = qword_2803ABAB0;
  if (!qword_2803ABAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABAA8, &qword_26A875E40);
    sub_26A4EC4B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABAB0);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{
  v2 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_37_0();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  sub_26A49035C(*v10, *(v10 + 8));
  sub_26A49035C(*(v10 + 16), *(v10 + 24));
  sub_26A49035C(*(v10 + 32), *(v10 + 40));
  sub_26A49035C(*(v10 + 48), *(v10 + 56));
  sub_26A49035C(*(v10 + 64), *(v10 + 72));
  sub_26A49035C(*(v10 + 80), *(v10 + 88));
  sub_26A49035C(*(v10 + 96), *(v10 + 104));
  sub_26A49035C(*(v10 + 112), *(v10 + 120));
  sub_26A49035C(*(v10 + 128), *(v10 + 136));
  sub_26A49035C(*(v10 + 144), *(v10 + 152));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v12 = v10 + *(v11 + 28);
  v13 = type metadata accessor for FactItemConstants(0);
  v14 = *(v13 + 52);
  v15 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + *(v13 + 56), v15);
  v18 = v10 + *(v11 + 32);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v20 = OUTLINED_FUNCTION_36_0(v19);
  (v17)(v20);
  v17(v18 + *(v13 + 56), v15);
  OUTLINED_FUNCTION_60_0(v10 + v0[5]);
  OUTLINED_FUNCTION_60_0(v10 + v0[6]);
  v21 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v22 + 8))(v10 + v21);
  }

  else
  {
  }

  v23 = v10 + v0[8];
  OUTLINED_FUNCTION_0_8();
  if (v24)
  {
    OUTLINED_FUNCTION_8_5();
  }

  if (*(v23 + 96))
  {

    OUTLINED_FUNCTION_7_6();
    if (*(v23 + 160))
    {
      OUTLINED_FUNCTION_6_6();
    }

    OUTLINED_FUNCTION_5_5();
  }

  OUTLINED_FUNCTION_52_0();
  if (v25)
  {
    OUTLINED_FUNCTION_0_8();
    if (v26)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v23 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v23 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_52_0();
  if (v27)
  {
    OUTLINED_FUNCTION_0_8();
    if (v28)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v23 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v23 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_52_0();
  if (v29)
  {
    OUTLINED_FUNCTION_0_8();
    if (v30)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v23 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v23 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  OUTLINED_FUNCTION_52_0();
  if (v31)
  {
    OUTLINED_FUNCTION_0_8();
    if (v32)
    {
      OUTLINED_FUNCTION_8_5();
    }

    if (*(v23 + 96))
    {

      OUTLINED_FUNCTION_7_6();
      if (*(v23 + 160))
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_5_5();
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A50640C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_26A84F088() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_79(v5);
  v7 = v1 + ((v3 + v4 + *(v6 + 80)) & ~*(v6 + 80));

  return a1(v1 + v3, v7);
}

void sub_26A5064E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 3:
    case 5:
      sub_26A4EF6C0(a1, a2, a3 & 1);

      break;
    case 2:
      v7 = a6;

      sub_26A5065CC(a5, v7);
      break;
    case 4:

      break;
    default:
      return;
  }
}

double sub_26A5065CC(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_26A5065E0(a1, a2);
  }

  return result;
}

double sub_26A5065E0(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
    v2 = a1;
  }

  return result;
}

void sub_26A506604(uint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 3:
    case 5:
      sub_26A4EC448(result, a2, a3 & 1);

      break;
    case 2:
      v7 = a6;

      sub_26A5066E8(a5, v7);
      break;
    case 4:

      break;
    default:
      return;
  }
}

void sub_26A5066E8(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_26A5066FC(result, a2);
  }
}

void sub_26A5066FC(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_26A506720(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EC448(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26A506764(uint64_t a1)
{
  v2 = type metadata accessor for FactItemStandardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5067C0()
{
  result = qword_2803ABAE0;
  if (!qword_2803ABAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABAD8, &qword_26A8593F8);
    sub_26A506878();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABAE0);
  }

  return result;
}

unint64_t sub_26A506878()
{
  result = qword_2803ABAE8;
  if (!qword_2803ABAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA10, &qword_26A856AF0);
    sub_26A506930();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABAE8);
  }

  return result;
}

unint64_t sub_26A506930()
{
  result = qword_2803ABAF0;
  if (!qword_2803ABAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA08, &qword_26A856AE8);
    sub_26A5069EC();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABAF0);
  }

  return result;
}

unint64_t sub_26A5069EC()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A506A30()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_50_0(0, v1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A506A70@<X0>(uint64_t x8_0@<X8>)
{
  v4 = sub_26A84C0F8();
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_33_0();

  return sub_26A4FBF18(x8_0);
}

uint64_t objectdestroy_110Tm(__n128 a1)
{
  sub_26A84C0F8();
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

void sub_26A506BAC(uint64_t a1, __n128 a2)
{
  v3 = sub_26A84C0F8();
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_33_0();
  sub_26A4FBFFC(a1);
}

unint64_t sub_26A506C1C()
{
  result = qword_2803ABB00;
  if (!qword_2803ABB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABB08, &qword_26A859488);
    sub_26A506A30();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7C8, &qword_26A858F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB7D0, &qword_26A858F70);
    sub_26A504C7C();
    sub_26A504F30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABB00);
  }

  return result;
}

void sub_26A506D44()
{
  v1 = v0;
  v2 = (v0 + 80);
  v3 = (v0 + 56);
  while (2)
  {
    v4 = *(v1 + 88);
LABEL_3:
    switch(v4)
    {
      case 1:
        v25 = *(v1 + 48);
        if (!v25)
        {
          goto LABEL_31;
        }

        v26 = *(v25 + 16);
        v27 = *v3;
        if (*v3 != v26)
        {
          if (*v3 >= v26)
          {
            goto LABEL_29;
          }

          v50 = v27 + 1;
          v51 = (v25 + 32 * v27);
          v47 = v51[6];
          v46 = v51[7];
          v49 = v51[4];
          v48 = v51[5];
          *v3 = v50;
          goto LABEL_23;
        }

        v28 = *(v1 + 8);
        v29 = *(*v1 + 16);
        if (v28 == v29)
        {

          *(v1 + 48) = 0;
          *(v1 + 56) = 0;
          goto LABEL_25;
        }

        if (v28 >= v29)
        {
          goto LABEL_27;
        }

        v30 = *v1 + 48 * v28;
        v31 = *(v30 + 56);
        v32 = *(v30 + 64);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 32);
        v36 = *(v30 + 73);
        v37 = *(v30 + 72);
        *(v1 + 8) = v28 + 1;
        v38 = *(v1 + 16);
        v56 = v35;
        v57 = v33;
        v58 = v34;
        v59 = v31;
        v60 = v32;
        v61 = v37;
        v62 = v36;
        sub_26A5064E8(v35, v33, v34, v31, v32, v37, v36);
        v38(&v52, &v56);
        sub_26A506604(v56, v57, v58, v59, v60, v61, v62);
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v42 = *(v1 + 32);
        v56 = v52;
        v57 = v53;
        LOBYTE(v58) = v54;
        v59 = v55;
        v42(&v52, &v56);
        sub_26A4EC448(v39, v40, v41);

        v43 = v52;

        *(v1 + 48) = v43;
        *(v1 + 56) = 0;
        v44 = *(v1 + 64);
        if (*(v44 + 16))
        {

          *(v1 + 72) = v44;
          v4 = 2;
          v21 = v2;
          goto LABEL_16;
        }

        continue;
      case 2:
        v22 = *(v1 + 72);
        if (!v22)
        {
          goto LABEL_30;
        }

        v23 = *(v22 + 16);
        v24 = *v2;
        if (*v2 != v23)
        {
          if (*v2 >= v23)
          {
            goto LABEL_28;
          }

          v45 = (v22 + 32 * v24);
          v47 = v45[6];
          v46 = v45[7];
          v49 = v45[4];
          v48 = v45[5];
          *v2 = v24 + 1;
LABEL_23:
          sub_26A505318(v49, v48, v47, v46);
          return;
        }

        v4 = 1;
        goto LABEL_17;
      case 3:
        return;
      default:
        v5 = *(v1 + 8);
        v6 = *(*v1 + 16);
        if (v5 == v6)
        {
LABEL_25:
          *(v1 + 88) = 3;
          return;
        }

        if (v5 < v6)
        {
          v7 = *v1 + 48 * v5;
          v8 = *(v7 + 56);
          v9 = *(v7 + 64);
          v10 = *(v7 + 40);
          v11 = *(v7 + 48);
          v12 = *(v7 + 32);
          v13 = *(v7 + 73);
          v14 = *(v7 + 72);
          *(v1 + 8) = v5 + 1;
          v15 = *(v1 + 16);
          v56 = v12;
          v57 = v10;
          v58 = v11;
          v59 = v8;
          v60 = v9;
          v61 = v14;
          v62 = v13;
          sub_26A5064E8(v12, v10, v11, v8, v9, v14, v13);
          v15(&v52, &v56);
          sub_26A506604(v56, v57, v58, v59, v60, v61, v62);
          v16 = v52;
          v17 = v53;
          v18 = v54;
          v19 = *(v1 + 32);
          v56 = v52;
          v57 = v53;
          LOBYTE(v58) = v54;
          v59 = v55;
          v19(&v52, &v56);
          sub_26A4EC448(v16, v17, v18);

          v20 = v52;

          *(v1 + 48) = v20;
          v4 = 1;
          v21 = v3;
LABEL_16:
          *v21 = 0;
LABEL_17:
          *(v1 + 88) = v4;
          goto LABEL_3;
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_8()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  return sub_26A49035C(*(v0 + 32), *(v0 + 40));
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  sub_26A4EC448(*(v0 + 168), *(v0 + 176), *(v0 + 184));
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  sub_26A4EC448(*(v0 + 136), *(v0 + 144), *(v0 + 152));
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  sub_26A4EC448(*(v0 + 104), *(v0 + 112), *(v0 + 120));
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  sub_26A4EC448(*(v0 + 48), *(v0 + 56), *(v0 + 64));
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X8>)
{

  return sub_26A505604(v3 + a1, v2 + v1, type metadata accessor for FactItemConstants);
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_26A7A11D4();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_26A505D1C();
}

void OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30, unsigned __int8 a31, char a32)
{

  sub_26A506604(a26, a27, a28, a29, a30, a31, a32);
}

void OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{

  sub_26A5064E8(a1, a2, a3, a4, a5, a6, a7);
}

__n128 OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = STACK[0x260];
  return result;
}

uint64_t OUTLINED_FUNCTION_49_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_26A506720(v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A8506F8();
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_26A506720(v0, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_58_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a13 = v18;
  a16 = v17;
  a17 = a1;

  return sub_26A6A8134(&a13);
}

uint64_t OUTLINED_FUNCTION_60_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_26A49035C(v2, v3);
}

uint64_t sub_26A507558(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26A5484D4(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_26A5075B0()
{
  OUTLINED_FUNCTION_34_0();
  if (v3 && (v4 = v2, v5 = sub_26A548580(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 48 * v5;

    sub_26A4F20CC(v7, v0);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_26A507618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_26A548510(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_26A84BB08();
    OUTLINED_FUNCTION_46();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_30_0();
    v15 = v10;
  }

  else
  {
    sub_26A84BB08();
    v12 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_26A5076C0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_26A548694();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A507710(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26A5484D4(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_26A507794@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_26A548510(a1, a2), (v7 & 1) != 0))
  {
    sub_26A50429C(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A507858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_34_0();
  if (v7 && (v8 = v5, v9 = v6(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = a3(0);
    OUTLINED_FUNCTION_46();
    (*(v14 + 16))(v3, v12 + *(v14 + 72) * v11, v13);
    v15 = OUTLINED_FUNCTION_30_0();
    v18 = v13;
  }

  else
  {
    a3(0);
    v15 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void sub_26A50793C()
{
  OUTLINED_FUNCTION_34_0();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = sub_26A548580(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

uint64_t sub_26A5079E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_34_0();
  if (v8 && (v9 = v7, v10 = v5, v11 = v6(), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a3(0);
    OUTLINED_FUNCTION_46();
    sub_26A5142C4(v14 + *(v16 + 72) * v13, v3, v9);
    v17 = OUTLINED_FUNCTION_30_0();
    v20 = v15;
  }

  else
  {
    a3(0);
    v17 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_26A507A94()
{
  OUTLINED_FUNCTION_34_0();
  if (v3 && (v4 = v2, v5 = sub_26A5484D4(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0, &qword_26A85D9F0);
    OUTLINED_FUNCTION_46();
    sub_26A514320(v8 + *(v10 + 72) * v7, v0, &unk_2803B1DE0, &qword_26A85D9F0);
    v11 = OUTLINED_FUNCTION_30_0();
    v14 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0, &qword_26A85D9F0);
    v11 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26A507B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_26A548510(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_45_1(v3);
    }
  }

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A507C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_34_0();
  if (v7 && (v8 = v6, v9 = v5, v10 = sub_26A5485E4(), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = a3(0);
    OUTLINED_FUNCTION_46();
    sub_26A5142C4(v13 + *(v15 + 72) * v12, v3, v8);
    v16 = OUTLINED_FUNCTION_30_0();
    v19 = v14;
  }

  else
  {
    a3(0);
    v16 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

double sub_26A507CB4()
{
  OUTLINED_FUNCTION_34_0();
  if (v2 && (v3 = v1, v4 = sub_26A548744(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_26A5136A0(v6, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_26A507D14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_26A5488EC();
    if (v3)
    {
      OUTLINED_FUNCTION_45_1(v2);
    }
  }

  return OUTLINED_FUNCTION_211();
}

void sub_26A507D58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v32 = sub_26A84E388();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = 0;
  v31 = *(a3 + 16);
  v28 = v5 + 16;
  v12 = (v5 + 8);
  v25 = (v5 + 32);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v31 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v32, v8);
    v16 = v29(v10);
    if (v3)
    {
      (*v12)(v10, v32);

      return;
    }

    if (v16)
    {
      v24 = *v25;
      v24(v26, v10, v32);
      v17 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_26A7DCDEC(0, *(v17 + 16) + 1, 1);
        v19 = v33;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v27 = v21 + 1;
        v23 = v21;
        sub_26A7DCDEC(v20 > 1, v21 + 1, 1);
        v22 = v27;
        v21 = v23;
        a3 = v15;
        v19 = v33;
      }

      ++v11;
      *(v19 + 16) = v22;
      v27 = v19;
      v24((v19 + v13 + v21 * v14), v26, v32);
    }

    else
    {
      (*v12)(v10, v32);
      ++v11;
    }
  }

  __break(1u);
}

void sub_26A50801C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = a3 + 32;
  if (v4)
  {
    while (1)
    {
      a1(&v18, v6, a2);
      if (v3)
      {

        return;
      }

      v7 = v18;
      v8 = *(v18 + 16);
      v9 = *(v5 + 16);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 24) >> 1)
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        sub_26A7A1660(isUniquelyReferenced_nonNull_native, v12, 1, v5);
        v5 = v13;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABBF0, &qword_26A884A90);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_23;
          }

          *(v5 + 16) = v16;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_21;
        }
      }

      v6 += 40;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_26A508188(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemSwitchView(0);
  MEMORY[0x28223BE20](v2);
  v4 = __src - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 28);
  v7 = sub_26A84C7F8();
  (*(*(v7 - 8) + 16))(&v4[v6], a1, v7);
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v9 = __swift_project_value_buffer(v8, qword_281588798);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v11 = &v4[*(v10 + 32)];
  sub_26A514320(v9, v11, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(__src);
  memcpy(v4, __src, 0xBFuLL);
  sub_26A5142C4(v11 + *(v8 + 36), &v4[*(v10 + 28)], type metadata accessor for SummaryItemConstants);
  v12 = &v4[*(v2 + 20)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = *(v2 + 24);
  *&v4[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A51427C(&qword_2803AA898, type metadata accessor for SummaryItemSwitchView, &protocol conformance descriptor for SummaryItemSwitchView);
  return sub_26A851248();
}

uint64_t sub_26A5083C8(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemPairNumberView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84D318();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[v2[5]];
  *v6 = sub_26A63955C;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = &v4[v2[6]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v2[7];
  *&v4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A51427C(&qword_2803ABC88, type metadata accessor for SummaryItemPairNumberView, &protocol conformance descriptor for SummaryItemPairNumberView);
  return sub_26A851248();
}

uint64_t sub_26A508534(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemPairView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84BFA8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[v2[5]];
  *v6 = sub_26A63955C;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = &v4[v2[6]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v2[7];
  *&v4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A51427C(&qword_2803ABC80, type metadata accessor for SummaryItemPairView, &protocol conformance descriptor for SummaryItemPairView);
  return sub_26A851248();
}

uint64_t sub_26A5086A0(uint64_t a1)
{
  v2 = sub_26A84D588();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TertiaryHeaderStandardView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2, v7);
  TertiaryHeaderStandardView.init(model:)(v5, v9);
  sub_26A51427C(&qword_2803ABC78, type metadata accessor for TertiaryHeaderStandardView, &protocol conformance descriptor for TertiaryHeaderStandardView);
  return sub_26A851248();
}

uint64_t sub_26A508804(uint64_t a1)
{
  v2 = type metadata accessor for KeyValueStandardView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = sub_26A84C168();
  (*(*(v7 - 8) + 16))(&v4[v6], a1, v7);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *v4 = KeyPath;
  v4[8] = 0;
  *(v4 + 2) = v9;
  v4[24] = 0;
  sub_26A51427C(&qword_2803AB0A8, type metadata accessor for KeyValueStandardView, &protocol conformance descriptor for KeyValueStandardView);
  return sub_26A851248();
}

uint64_t sub_26A50892C(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalListStandardView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = sub_26A84D428();
  (*(*(v7 - 8) + 16))(&v4[v6], a1, v7);
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v8 = *(v2 + 20);
  *&v4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A51427C(&qword_2803ABC70, type metadata accessor for HorizontalListStandardView, &protocol conformance descriptor for HorizontalListStandardView);
  return sub_26A851248();
}

uint64_t sub_26A508A74(uint64_t a1)
{
  v2 = type metadata accessor for HeroHeaderView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84ADD8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A51427C(&qword_2803ABC68, type metadata accessor for HeroHeaderView, &protocol conformance descriptor for HeroHeaderView);
  return sub_26A851248();
}

uint64_t sub_26A508B6C(uint64_t a1)
{
  v2 = type metadata accessor for IntentsUIStandardView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84C368();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A51427C(&qword_2803ABC60, type metadata accessor for IntentsUIStandardView, &protocol conformance descriptor for IntentsUIStandardView);
  return sub_26A851248();
}

uint64_t sub_26A508C64()
{
  sub_26A7FA308(v1);
  sub_26A514140();
  return sub_26A851248();
}

uint64_t sub_26A508CAC(uint64_t a1)
{
  v2 = type metadata accessor for VisualizationMapView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84C2F8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A51427C(&qword_2803ABC50, type metadata accessor for VisualizationMapView, &protocol conformance descriptor for VisualizationMapView);
  return sub_26A851248();
}

uint64_t sub_26A508DA4(uint64_t a1)
{
  v2 = type metadata accessor for VisualizationImageView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84CB78();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A51427C(&qword_2803ABC48, type metadata accessor for VisualizationImageView, &protocol conformance descriptor for VisualizationImageView);
  return sub_26A851248();
}

uint64_t sub_26A508E9C(uint64_t a1)
{
  v2 = type metadata accessor for VisualizationChartView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84CAF8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A51427C(&qword_2803ABC40, type metadata accessor for VisualizationChartView, &protocol conformance descriptor for VisualizationChartView);
  return sub_26A851248();
}

uint64_t sub_26A508F94(uint64_t a1)
{
  v2 = sub_26A84E078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TableView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v7);
  *(v9 + 2) = swift_getKeyPath();
  v9[24] = 0;
  *&v9[*(v6 + 28)] = sub_26A84DFE8();
  sub_26A84E058();
  *&v9[*(v6 + 32)] = sub_26A84E068();
  v10 = sub_26A84E068();
  LOBYTE(a1) = sub_26A84DFC8();
  type metadata accessor for TableState(0);
  swift_allocObject();
  sub_26A52F79C(v10, a1 & 1);
  sub_26A51427C(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
  v11 = sub_26A84F258();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  *v9 = v11;
  *(v9 + 1) = v13;
  sub_26A51427C(&qword_2803ABC38, type metadata accessor for TableView, &protocol conformance descriptor for TableView);
  return sub_26A851248();
}

uint64_t sub_26A5091DC(uint64_t a1)
{
  v2 = type metadata accessor for ComponentGroupView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84BB08();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = *(type metadata accessor for ComponentGroupWrapper(0) + 20);
  v7 = *(v2 + 20);
  v8 = sub_26A84E408();
  (*(*(v8 - 8) + 16))(&v4[v7], a1 + v6, v8);
  sub_26A51427C(&qword_2803ABC28, type metadata accessor for ComponentGroupView, &protocol conformance descriptor for ComponentGroupView);
  return sub_26A851248();
}

uint64_t sub_26A509328(uint64_t a1)
{
  v2 = sub_26A84E578();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextInputView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v10(v5, a1, v2, v7);
  v11 = &v9[v6[5]];
  type metadata accessor for Context(0);
  sub_26A51427C(&qword_28157D9E0, type metadata accessor for Context, &protocol conformance descriptor for Context);
  *v11 = sub_26A84F678();
  v11[1] = v12;
  v13 = &v9[v6[6]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v9[v6[8]];
  v15 = &v9[v6[9]];
  *v15 = sub_26A84ED88() & 1;
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  v18 = &v9[v6[10]];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  (v10)(v9, v5, v2);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v19 = sub_26A84E548();
  v21 = v20;
  (*(v3 + 8))(v5, v2);
  v22 = &v9[v6[7]];
  *v22 = v19;
  v22[1] = v21;
  v22[2] = 0;
  sub_26A51427C(&qword_2803ABC20, type metadata accessor for TextInputView, &protocol conformance descriptor for TextInputView);
  return sub_26A851248();
}

uint64_t sub_26A50959C(uint64_t a1)
{
  v2 = sub_26A84BE98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReferenceButtonView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v7);
  ReferenceButtonView.init(model:)(v5, v9);
  sub_26A51427C(&qword_2803ABC18, type metadata accessor for ReferenceButtonView, &protocol conformance descriptor for ReferenceButtonView);
  return sub_26A851248();
}

uint64_t sub_26A509700(uint64_t a1)
{
  v2 = type metadata accessor for ButtonView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 20);
  v7 = sub_26A84E158();
  (*(*(v7 - 8) + 16))(&v4[v6], a1, v7);
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v8 = &v4[*(v2 + 24)];
  sub_26A51427C(&qword_2803ABC10, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
  *v8 = 0;
  *(v8 + 1) = 0;
  return sub_26A851248();
}

uint64_t sub_26A50981C(uint64_t a1)
{
  v2 = type metadata accessor for CustomCanvasView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84B158();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[v2[5]];
  *v6 = 0xD000000000000023;
  *(v6 + 1) = 0x800000026A88B1A0;
  v7 = &v4[v2[6]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = &v4[v2[7]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  sub_26A51427C(&qword_2803ABC08, type metadata accessor for CustomCanvasView, &protocol conformance descriptor for CustomCanvasView);
  return sub_26A851248();
}

void static AnyComponent.wrapper(for:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v1273 = v22;
  v24 = v23;
  v1343 = v25;
  v26 = sub_26A84C7F8();
  v27 = OUTLINED_FUNCTION_0_9(v26, v1285);
  v1275[1] = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v29);
  v30 = sub_26A84DA38();
  v31 = OUTLINED_FUNCTION_0_9(v30, v1284);
  v1274 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v34);
  v35 = sub_26A84D318();
  v36 = OUTLINED_FUNCTION_0_9(v35, &v1281);
  v1270[1] = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v38);
  v39 = sub_26A84DDD8();
  v40 = OUTLINED_FUNCTION_0_9(v39, v1278);
  v1267[3] = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v43);
  v44 = sub_26A84BFA8();
  v45 = OUTLINED_FUNCTION_0_9(v44, &v1277);
  v1266 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v47);
  v48 = sub_26A84D5C8();
  v49 = OUTLINED_FUNCTION_0_9(v48, &v1272);
  v1263[3] = v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v52);
  v53 = sub_26A84D588();
  v54 = OUTLINED_FUNCTION_0_9(v53, v1282);
  v1271[1] = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v56);
  v57 = sub_26A84DE58();
  v58 = OUTLINED_FUNCTION_0_9(v57, &v1280);
  v1269[5] = v59;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v61);
  v62 = sub_26A84C168();
  v63 = OUTLINED_FUNCTION_0_9(v62, v1279);
  v1269[1] = v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v65);
  v66 = sub_26A84D828();
  v67 = OUTLINED_FUNCTION_0_9(v66, v1276);
  v1265[5] = v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v70);
  v71 = sub_26A84C528();
  v72 = OUTLINED_FUNCTION_0_9(v71, v1275);
  v1265[1] = v73;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v74);
  v75 = sub_26A84D9B8();
  v76 = OUTLINED_FUNCTION_0_9(v75, v1271);
  v1263[0] = v77;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v79);
  v80 = sub_26A84D158();
  v81 = OUTLINED_FUNCTION_0_9(v80, v1270);
  v1261[5] = v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v83);
  v84 = sub_26A84DD98();
  v85 = OUTLINED_FUNCTION_0_9(v84, v1269);
  v1260[1] = v86;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v88);
  v89 = sub_26A84D428();
  v90 = OUTLINED_FUNCTION_0_9(v89, &v1268);
  v1259[5] = v91;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v92);
  v93 = sub_26A84DDF8();
  v94 = OUTLINED_FUNCTION_0_9(v93, v1267);
  v1258[1] = v95;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v97);
  v98 = sub_26A84ADD8();
  v99 = OUTLINED_FUNCTION_0_9(v98, &v1266);
  v1257[5] = v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v101);
  v102 = sub_26A84C308();
  v103 = OUTLINED_FUNCTION_0_9(v102, v1265);
  v1256[1] = v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v106);
  v107 = sub_26A84B838();
  v108 = OUTLINED_FUNCTION_0_9(v107, &v1264);
  v1255[5] = v109;
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v110);
  v111 = sub_26A84CE58();
  v112 = OUTLINED_FUNCTION_0_9(v111, v1263);
  v1254[3] = v113;
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v115);
  v116 = sub_26A84C368();
  v117 = OUTLINED_FUNCTION_0_9(v116, &v1262);
  v1254[1] = v118;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v119);
  v120 = sub_26A84D938();
  v121 = OUTLINED_FUNCTION_0_9(v120, v1261);
  v1252[1] = v122;
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v124);
  v125 = sub_26A84BDE8();
  v126 = OUTLINED_FUNCTION_0_9(v125, v1260);
  v1251[5] = v127;
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v128);
  v129 = sub_26A84D598();
  v130 = OUTLINED_FUNCTION_0_9(v129, v1259);
  v1250[1] = v131;
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v133);
  v134 = sub_26A84C2F8();
  v135 = OUTLINED_FUNCTION_0_9(v134, v1258);
  v1249[5] = v136;
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v137);
  v138 = sub_26A84D8A8();
  v139 = OUTLINED_FUNCTION_0_9(v138, v1257);
  v1248[6] = v140;
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v142);
  v143 = sub_26A84CB78();
  v144 = OUTLINED_FUNCTION_0_9(v143, v1256);
  v1248[4] = v145;
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v146);
  v147 = sub_26A84DBB8();
  v148 = OUTLINED_FUNCTION_0_9(v147, v1255);
  v1247 = v149;
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v151);
  v152 = sub_26A84CAF8();
  v153 = OUTLINED_FUNCTION_0_9(v152, v1254);
  v1245[3] = v154;
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v155);
  v156 = sub_26A84DB78();
  v157 = OUTLINED_FUNCTION_0_9(v156, &v1253);
  v1244[1] = v158;
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v160);
  v161 = sub_26A84B768();
  v162 = OUTLINED_FUNCTION_0_9(v161, v1252);
  v1243[5] = v163;
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v164);
  v165 = sub_26A84CE48();
  v166 = OUTLINED_FUNCTION_0_9(v165, v1251);
  v1242 = v167;
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v169);
  v170 = sub_26A84E078();
  v171 = OUTLINED_FUNCTION_0_9(v170, v1250);
  v1240[3] = v172;
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v173);
  v174 = sub_26A84B068();
  v175 = OUTLINED_FUNCTION_0_9(v174, v1249);
  v1239 = v176;
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_27_1();
  v179 = OUTLINED_FUNCTION_8_6(v178);
  v180 = type metadata accessor for ComponentGroupWrapper(v179);
  v181 = OUTLINED_FUNCTION_0_9(v180, v1248);
  v1237 = v182;
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_10_0(v183);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB20, &unk_26A8594A0);
  v185 = OUTLINED_FUNCTION_79(v184);
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_8_6(v1198 - v186);
  v187 = sub_26A84BB08();
  v188 = OUTLINED_FUNCTION_0_9(v187, &v1247);
  v1234 = v189;
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_8_6(v191 - v190);
  v192 = sub_26A84B918();
  v193 = OUTLINED_FUNCTION_0_9(v192, v1246);
  v1232[3] = v194;
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v195);
  v196 = sub_26A84CFF8();
  v197 = OUTLINED_FUNCTION_0_9(v196, v1245);
  v1231[1] = v198;
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v200);
  v201 = sub_26A84E578();
  v202 = OUTLINED_FUNCTION_0_9(v201, v1244);
  v1230[3] = v203;
  MEMORY[0x28223BE20](v202);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v204);
  v205 = sub_26A84C058();
  v206 = OUTLINED_FUNCTION_0_9(v205, v1243);
  v1229[1] = v207;
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v209);
  v210 = sub_26A84D928();
  v211 = OUTLINED_FUNCTION_0_9(v210, v1288);
  v1278[0] = v212;
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v213);
  v214 = sub_26A84DED8();
  v215 = OUTLINED_FUNCTION_0_9(v214, v1287);
  v1276[1] = v216;
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v218);
  v219 = sub_26A84DAE8();
  v220 = OUTLINED_FUNCTION_0_9(v219, v1291);
  v1279[2] = v221;
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v222);
  v223 = sub_26A84DF28();
  v224 = OUTLINED_FUNCTION_0_9(v223, v1290);
  v1278[4] = v225;
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v227);
  v228 = sub_26A84CF58();
  v229 = OUTLINED_FUNCTION_0_9(v228, v1294);
  v1282[0] = v230;
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v231);
  v232 = sub_26A84DCD8();
  v233 = OUTLINED_FUNCTION_0_9(v232, v1293);
  v1281 = v234;
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v236);
  v237 = sub_26A84D488();
  v238 = OUTLINED_FUNCTION_0_9(v237, v1297);
  v1284[3] = v239;
  MEMORY[0x28223BE20](v238);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v240);
  v241 = sub_26A84DE18();
  v242 = OUTLINED_FUNCTION_0_9(v241, v1296);
  v1283 = v243;
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v245);
  v246 = sub_26A84C478();
  v247 = OUTLINED_FUNCTION_0_9(v246, v1241);
  v1228[3] = v248;
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v249);
  v250 = sub_26A84D978();
  v251 = OUTLINED_FUNCTION_0_9(v250, v1240);
  v1227[1] = v252;
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v254);
  v255 = sub_26A84BE98();
  v256 = OUTLINED_FUNCTION_0_9(v255, v1238);
  v1226[3] = v257;
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v258);
  v259 = sub_26A84D5A8();
  v260 = OUTLINED_FUNCTION_0_9(v259, v1236);
  v1225[3] = v261;
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v263);
  v264 = sub_26A84BA78();
  v265 = OUTLINED_FUNCTION_0_9(v264, &v1234);
  v1225[1] = v266;
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v267);
  v268 = sub_26A84D058();
  v269 = OUTLINED_FUNCTION_0_9(v268, v1232);
  v1223[3] = v270;
  MEMORY[0x28223BE20](v269);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v272);
  v273 = sub_26A84BA08();
  v274 = OUTLINED_FUNCTION_0_9(v273, v1231);
  v1223[1] = v275;
  MEMORY[0x28223BE20](v274);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v276);
  v277 = sub_26A84D038();
  v278 = OUTLINED_FUNCTION_0_9(v277, v1230);
  v1221[3] = v279;
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v281);
  v282 = sub_26A84C4C8();
  v283 = OUTLINED_FUNCTION_0_9(v282, v1229);
  v1221[1] = v284;
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v285);
  v286 = sub_26A84D998();
  v287 = OUTLINED_FUNCTION_0_9(v286, v1228);
  v1219[3] = v288;
  MEMORY[0x28223BE20](v287);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v290);
  v291 = sub_26A84B0C8();
  v292 = OUTLINED_FUNCTION_0_9(v291, v1300);
  v1287[3] = v293;
  MEMORY[0x28223BE20](v292);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v294);
  v295 = sub_26A84CB88();
  v296 = OUTLINED_FUNCTION_0_9(v295, v1299);
  v1286 = v297;
  MEMORY[0x28223BE20](v296);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v299);
  v300 = sub_26A84E158();
  v301 = OUTLINED_FUNCTION_0_9(v300, v1303);
  v1290[3] = v302;
  MEMORY[0x28223BE20](v301);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v303);
  v304 = sub_26A84B8B8();
  v305 = OUTLINED_FUNCTION_0_9(v304, v1302);
  v1289 = v306;
  MEMORY[0x28223BE20](v305);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v308);
  v309 = sub_26A84DA88();
  v310 = OUTLINED_FUNCTION_0_9(v309, v1227);
  v1219[1] = v311;
  MEMORY[0x28223BE20](v310);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v312);
  v313 = sub_26A84DF08();
  v314 = OUTLINED_FUNCTION_0_9(v313, v1226);
  v1217 = v315;
  MEMORY[0x28223BE20](v314);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v317);
  v318 = sub_26A84D658();
  v319 = OUTLINED_FUNCTION_0_9(v318, v1306);
  v1293[3] = v320;
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v321);
  v322 = sub_26A84DE78();
  v323 = OUTLINED_FUNCTION_0_9(v322, v1305);
  v1292 = v324;
  MEMORY[0x28223BE20](v323);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v326);
  v327 = sub_26A84C3F8();
  v328 = OUTLINED_FUNCTION_0_9(v327, v1309);
  v1296[3] = v329;
  MEMORY[0x28223BE20](v328);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v330);
  v331 = sub_26A84D958();
  v332 = OUTLINED_FUNCTION_0_9(v331, v1308);
  v1295 = v333;
  MEMORY[0x28223BE20](v332);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v334);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v335);
  v336 = sub_26A84CEC8();
  v337 = OUTLINED_FUNCTION_0_9(v336, v1312);
  v1299[3] = v338;
  MEMORY[0x28223BE20](v337);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v339);
  v340 = sub_26A84DCB8();
  v341 = OUTLINED_FUNCTION_0_9(v340, v1311);
  v1298 = v342;
  MEMORY[0x28223BE20](v341);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v344);
  v345 = sub_26A84D108();
  v346 = OUTLINED_FUNCTION_0_9(v345, v1315);
  v1302[3] = v347;
  MEMORY[0x28223BE20](v346);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v348);
  v349 = sub_26A84DD78();
  v350 = OUTLINED_FUNCTION_0_9(v349, v1314);
  v1301 = v351;
  MEMORY[0x28223BE20](v350);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v353);
  v354 = sub_26A84DC28();
  v355 = OUTLINED_FUNCTION_0_9(v354, v1225);
  v1215[3] = v356;
  MEMORY[0x28223BE20](v355);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v357);
  v358 = sub_26A84DF48();
  v359 = OUTLINED_FUNCTION_0_9(v358, &v1224);
  v1214 = v360;
  MEMORY[0x28223BE20](v359);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v361);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v362);
  v363 = sub_26A84C278();
  v364 = OUTLINED_FUNCTION_0_9(v363, v1318);
  v1305[3] = v365;
  MEMORY[0x28223BE20](v364);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v366);
  v367 = sub_26A84D868();
  v368 = OUTLINED_FUNCTION_0_9(v367, v1317);
  v1304 = v369;
  MEMORY[0x28223BE20](v368);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v370);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v371);
  v372 = sub_26A84D1F8();
  v373 = OUTLINED_FUNCTION_0_9(v372, v1223);
  v1212[3] = v374;
  MEMORY[0x28223BE20](v373);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v375);
  v376 = sub_26A84DDB8();
  v377 = OUTLINED_FUNCTION_0_9(v376, &v1222);
  v1211[1] = v378;
  MEMORY[0x28223BE20](v377);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v379);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v380);
  v381 = sub_26A84BCD8();
  v382 = OUTLINED_FUNCTION_0_9(v381, v1321);
  v1308[3] = v383;
  MEMORY[0x28223BE20](v382);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v384);
  v385 = sub_26A84D368();
  v386 = OUTLINED_FUNCTION_0_9(v385, v1320);
  v1307 = v387;
  MEMORY[0x28223BE20](v386);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v388);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v389);
  v390 = sub_26A84C208();
  v391 = OUTLINED_FUNCTION_0_9(v390, v1221);
  v1210[3] = v392;
  MEMORY[0x28223BE20](v391);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v393);
  v394 = sub_26A84D848();
  v395 = OUTLINED_FUNCTION_0_9(v394, &v1220);
  v1209[1] = v396;
  MEMORY[0x28223BE20](v395);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v398);
  v399 = sub_26A84CA48();
  v400 = OUTLINED_FUNCTION_0_9(v399, v1324);
  v1311[3] = v401;
  MEMORY[0x28223BE20](v400);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v402);
  v403 = sub_26A84DB38();
  v404 = OUTLINED_FUNCTION_0_9(v403, v1323);
  v1310 = v405;
  MEMORY[0x28223BE20](v404);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v406);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v407);
  v408 = sub_26A84DD58();
  v409 = OUTLINED_FUNCTION_0_9(v408, v1219);
  v1208[3] = v410;
  MEMORY[0x28223BE20](v409);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v411);
  v412 = sub_26A84DF68();
  v413 = OUTLINED_FUNCTION_0_9(v412, &v1218);
  v1207[1] = v414;
  MEMORY[0x28223BE20](v413);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v416);
  v417 = sub_26A84C748();
  v418 = OUTLINED_FUNCTION_0_9(v417, v1216);
  v1206[3] = v419;
  MEMORY[0x28223BE20](v418);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v420);
  v421 = sub_26A84DA18();
  v422 = OUTLINED_FUNCTION_0_9(v421, v1215);
  v1205 = v423;
  MEMORY[0x28223BE20](v422);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v424);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v425);
  v426 = sub_26A84C5F8();
  v427 = OUTLINED_FUNCTION_0_9(v426, v1213);
  v1203[3] = v428;
  MEMORY[0x28223BE20](v427);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v429);
  v430 = sub_26A84D9D8();
  v431 = OUTLINED_FUNCTION_0_9(v430, v1212);
  v1202[3] = v432;
  MEMORY[0x28223BE20](v431);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v433);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v434);
  v435 = sub_26A84D7F8();
  v436 = OUTLINED_FUNCTION_0_9(v435, v1211);
  v1202[1] = v437;
  MEMORY[0x28223BE20](v436);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v438);
  v439 = sub_26A84DEB8();
  v440 = OUTLINED_FUNCTION_0_9(v439, v1210);
  v1200[1] = v441;
  MEMORY[0x28223BE20](v440);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v443);
  v444 = sub_26A84C698();
  v445 = OUTLINED_FUNCTION_0_9(v444, v1209);
  v1199[3] = v446;
  MEMORY[0x28223BE20](v445);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v447);
  v448 = sub_26A84D9F8();
  v449 = OUTLINED_FUNCTION_0_9(v448, v1208);
  v1198[35] = v450;
  MEMORY[0x28223BE20](v449);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v451);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v452);
  v453 = sub_26A84D718();
  v454 = OUTLINED_FUNCTION_0_9(v453, v1327);
  v1314[3] = v455;
  MEMORY[0x28223BE20](v454);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v456);
  v457 = sub_26A84DE98();
  v458 = OUTLINED_FUNCTION_0_9(v457, v1326);
  v1313 = v459;
  MEMORY[0x28223BE20](v458);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v460);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v461);
  v462 = sub_26A84CFD8();
  v463 = OUTLINED_FUNCTION_0_9(v462, v1330);
  v1317[3] = v464;
  MEMORY[0x28223BE20](v463);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v465);
  v466 = sub_26A84DCF8();
  v467 = OUTLINED_FUNCTION_0_9(v466, v1329);
  v1316 = v468;
  MEMORY[0x28223BE20](v467);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v469);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v470);
  v471 = sub_26A84C048();
  v472 = OUTLINED_FUNCTION_0_9(v471, &v1333);
  v1320[3] = v473;
  MEMORY[0x28223BE20](v472);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v474);
  v475 = sub_26A84D5E8();
  v476 = OUTLINED_FUNCTION_0_9(v475, v1332);
  v1319 = v477;
  MEMORY[0x28223BE20](v476);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v478);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v479);
  v480 = sub_26A84CE28();
  v481 = OUTLINED_FUNCTION_0_9(v480, v1207);
  v1198[33] = v482;
  MEMORY[0x28223BE20](v481);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v483);
  v484 = sub_26A84DC98();
  v485 = OUTLINED_FUNCTION_0_9(v484, v1206);
  v1198[27] = v486;
  MEMORY[0x28223BE20](v485);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v487);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v488);
  v489 = sub_26A84D558();
  v490 = OUTLINED_FUNCTION_0_9(v489, &v1338);
  v1323[3] = v491;
  MEMORY[0x28223BE20](v490);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v492);
  v493 = sub_26A84DE38();
  v494 = OUTLINED_FUNCTION_0_9(v493, v1337);
  v1322 = v495;
  MEMORY[0x28223BE20](v494);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v496);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v497);
  v498 = sub_26A84CD78();
  v499 = OUTLINED_FUNCTION_0_9(v498, &v1344);
  v1326[3] = v500;
  MEMORY[0x28223BE20](v499);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v501);
  v502 = sub_26A84DC78();
  v503 = OUTLINED_FUNCTION_0_9(v502, v1342);
  v1325 = v504;
  MEMORY[0x28223BE20](v503);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v505);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v506);
  v507 = sub_26A84BBB8();
  v508 = OUTLINED_FUNCTION_0_9(v507, v1204);
  v1198[23] = v509;
  MEMORY[0x28223BE20](v508);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v510);
  v511 = sub_26A84D348();
  v512 = OUTLINED_FUNCTION_0_9(v511, v1203);
  v1198[19] = v513;
  MEMORY[0x28223BE20](v512);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v514);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v515);
  v516 = sub_26A84C928();
  v517 = OUTLINED_FUNCTION_0_9(v516, &a14);
  v1329[3] = v518;
  MEMORY[0x28223BE20](v517);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v519);
  v520 = sub_26A84DB18();
  v521 = OUTLINED_FUNCTION_0_9(v520, &a10);
  v1328 = v522;
  MEMORY[0x28223BE20](v521);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v523);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v524);
  sub_26A84CCD8();
  OUTLINED_FUNCTION_15();
  v1332[3] = v526;
  v1333 = v525;
  MEMORY[0x28223BE20](v525);
  OUTLINED_FUNCTION_38_1();
  v1332[1] = v528;
  v1332[2] = v527;
  OUTLINED_FUNCTION_25_2();
  v529 = sub_26A84DC58();
  v530 = OUTLINED_FUNCTION_0_9(v529, &a18);
  v1331 = v531;
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v532);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v533);
  sub_26A84C0F8();
  OUTLINED_FUNCTION_15();
  v1337[3] = v535;
  v1338 = v534;
  MEMORY[0x28223BE20](v534);
  OUTLINED_FUNCTION_38_1();
  v1337[1] = v537;
  v1337[2] = v536;
  OUTLINED_FUNCTION_25_2();
  sub_26A84D818();
  OUTLINED_FUNCTION_15();
  v1336 = v539;
  v1337[0] = v538;
  MEMORY[0x28223BE20](v538);
  OUTLINED_FUNCTION_19();
  v1335 = v540;
  MEMORY[0x28223BE20](v541);
  OUTLINED_FUNCTION_27_1();
  v1334 = v542;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B158();
  OUTLINED_FUNCTION_15();
  v1342[1] = v544;
  v1342[2] = v543;
  v546 = *(v545 + 64);
  MEMORY[0x28223BE20](v543);
  v1342[0] = v1198 - ((v546 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_25_2();
  sub_26A84CBB8();
  OUTLINED_FUNCTION_15();
  v1340 = v548;
  v1341 = v547;
  MEMORY[0x28223BE20](v547);
  OUTLINED_FUNCTION_19();
  v1339 = v549;
  MEMORY[0x28223BE20](v550);
  v552 = v1198 - v551;
  v553 = sub_26A84CC38();
  v554 = OUTLINED_FUNCTION_0_9(v553, v1202);
  v1198[15] = v555;
  MEMORY[0x28223BE20](v554);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v556);
  v557 = sub_26A84DC38();
  v558 = OUTLINED_FUNCTION_0_9(v557, &v1201);
  v1198[11] = v559;
  MEMORY[0x28223BE20](v558);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v560);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v561);
  v562 = sub_26A84B998();
  v563 = OUTLINED_FUNCTION_0_9(v562, v1200);
  v1198[7] = v564;
  MEMORY[0x28223BE20](v563);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_6(v565);
  v566 = sub_26A84D018();
  v567 = OUTLINED_FUNCTION_0_9(v566, v1199);
  v1198[3] = v568;
  MEMORY[0x28223BE20](v567);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v569);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_10_0(v570);
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90, &unk_26A86C4C0);
  v572 = OUTLINED_FUNCTION_79(v571);
  MEMORY[0x28223BE20](v572);
  v574 = (v1198 - ((v573 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v575);
  v577 = v1198 - v576;
  v578 = sub_26A84BD98();
  OUTLINED_FUNCTION_15();
  v580 = v579;
  MEMORY[0x28223BE20](v581);
  OUTLINED_FUNCTION_41();
  v584 = v583 - v582;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_26A84E4E8();
  sub_26A84BD88();
  (*(v580 + 8))(v584, v578);
  v585 = sub_26A84BD78();
  if (__swift_getEnumTagSinglePayload(v577, 1, v585) != 1)
  {
    v588 = v1343;
    sub_26A514320(v577, v574, &qword_2803B1C90, &unk_26A86C4C0);
    v589 = *(v585 - 1);
    v590 = (*(v589 + 88))(v574, v585);
    v591 = v574;
    if (v590 == *MEMORY[0x277D62FD8])
    {
      v592 = OUTLINED_FUNCTION_18_2();
      v593(v592);
      v595 = v1340;
      v594 = v1341;
      (*(v1340 + 32))(v552, v574, v1341);
      (*(v595 + 16))(v1339, v552, v594);
      sub_26A84B128();
      v596 = OUTLINED_FUNCTION_211();
      v597(v596);
      OUTLINED_FUNCTION_11_4();
      v598 = swift_allocObject();
      v599 = OUTLINED_FUNCTION_9_6(v598);
      v600(v599);
      v601 = sub_26A5134C8;
      goto LABEL_7;
    }

    if (v590 == *MEMORY[0x277D63040])
    {
      v602 = OUTLINED_FUNCTION_18_2();
      v603(v602);
      v552 = v1337[0];
      v604 = v1334;
      (*(v1336 + 32))(v1334, v591, v1337[0]);
      OUTLINED_FUNCTION_28_1();
      v605(v1335, v604, v552);
      sub_26A84C0A8();
      v606 = OUTLINED_FUNCTION_19_1();
      v607(v606);
      OUTLINED_FUNCTION_11_4();
      v608 = swift_allocObject();
      v609 = OUTLINED_FUNCTION_5_6(v608);
      v610(v609);
      v601 = sub_26A51349C;
      goto LABEL_7;
    }

    if (v590 == *MEMORY[0x277D630D0])
    {
      v611 = OUTLINED_FUNCTION_18_2();
      v612(v611);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v613();
      OUTLINED_FUNCTION_28_1();
      v614 = OUTLINED_FUNCTION_17_1();
      v615(v614);
      sub_26A84CC78();
      v616 = OUTLINED_FUNCTION_19_1();
      v617(v616);
      OUTLINED_FUNCTION_11_4();
      v618 = swift_allocObject();
      v619 = OUTLINED_FUNCTION_9_6(v618);
      v620(v619);
      v621 = sub_26A513470;
    }

    else if (v590 == *MEMORY[0x277D630A8])
    {
      v622 = OUTLINED_FUNCTION_18_2();
      v623(v622);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v624();
      OUTLINED_FUNCTION_28_1();
      v625 = OUTLINED_FUNCTION_17_1();
      v626(v625);
      OUTLINED_FUNCTION_22_2();
      sub_26A84C8A8();
      v627 = OUTLINED_FUNCTION_19_1();
      v628(v627);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v629 = swift_allocObject();
      v630 = OUTLINED_FUNCTION_9_6(v629);
      v631(v630);
      v621 = sub_26A513444;
    }

    else if (v590 == *MEMORY[0x277D630D8])
    {
      v632 = OUTLINED_FUNCTION_18_2();
      v633(v632);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v634();
      OUTLINED_FUNCTION_28_1();
      v635 = OUTLINED_FUNCTION_17_1();
      v636(v635);
      OUTLINED_FUNCTION_22_2();
      sub_26A84CD08();
      v637 = OUTLINED_FUNCTION_19_1();
      v638(v637);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v639 = swift_allocObject();
      v640 = OUTLINED_FUNCTION_9_6(v639);
      v641(v640);
      v621 = sub_26A5133EC;
    }

    else if (v590 == *MEMORY[0x277D63130])
    {
      v642 = OUTLINED_FUNCTION_18_2();
      v643(v642);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v644();
      OUTLINED_FUNCTION_28_1();
      v645 = OUTLINED_FUNCTION_17_1();
      v646(v645);
      OUTLINED_FUNCTION_22_2();
      sub_26A84D4B8();
      v647 = OUTLINED_FUNCTION_19_1();
      v648(v647);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v649 = swift_allocObject();
      v650 = OUTLINED_FUNCTION_9_6(v649);
      v651(v650);
      v621 = sub_26A5133C0;
    }

    else if (v590 == *MEMORY[0x277D63038])
    {
      v652 = OUTLINED_FUNCTION_18_2();
      v653(v652);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v654();
      OUTLINED_FUNCTION_28_1();
      v655 = OUTLINED_FUNCTION_17_1();
      v656(v655);
      OUTLINED_FUNCTION_22_2();
      sub_26A84BFD8();
      v657 = OUTLINED_FUNCTION_19_1();
      v658(v657);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v659 = swift_allocObject();
      v660 = OUTLINED_FUNCTION_9_6(v659);
      v661(v660);
      v621 = sub_26A513368;
    }

    else if (v590 == *MEMORY[0x277D630F8])
    {
      v662 = OUTLINED_FUNCTION_18_2();
      v663(v662);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v664();
      OUTLINED_FUNCTION_28_1();
      v665 = OUTLINED_FUNCTION_17_1();
      v666(v665);
      OUTLINED_FUNCTION_22_2();
      sub_26A84CF88();
      v667 = OUTLINED_FUNCTION_19_1();
      v668(v667);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v669 = swift_allocObject();
      v670 = OUTLINED_FUNCTION_9_6(v669);
      v671(v670);
      v621 = sub_26A51333C;
    }

    else if (v590 == *MEMORY[0x277D63148])
    {
      v672 = OUTLINED_FUNCTION_18_2();
      v673(v672);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v674();
      OUTLINED_FUNCTION_28_1();
      v675 = OUTLINED_FUNCTION_17_1();
      v676(v675);
      OUTLINED_FUNCTION_22_2();
      sub_26A84D688();
      v677 = OUTLINED_FUNCTION_19_1();
      v678(v677);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v679 = swift_allocObject();
      v680 = OUTLINED_FUNCTION_9_6(v679);
      v681(v680);
      v621 = sub_26A513310;
    }

    else if (v590 == *MEMORY[0x277D630B0])
    {
      v682 = OUTLINED_FUNCTION_18_2();
      v683(v682);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v684();
      OUTLINED_FUNCTION_28_1();
      v685 = OUTLINED_FUNCTION_17_1();
      v686(v685);
      OUTLINED_FUNCTION_22_2();
      sub_26A84C9B8();
      v687 = OUTLINED_FUNCTION_19_1();
      v688(v687);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v689 = swift_allocObject();
      v690 = OUTLINED_FUNCTION_9_6(v689);
      v691(v690);
      v621 = sub_26A513208;
    }

    else if (v590 == *MEMORY[0x277D63018])
    {
      v692 = OUTLINED_FUNCTION_18_2();
      v693(v692);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v694();
      OUTLINED_FUNCTION_28_1();
      v695 = OUTLINED_FUNCTION_17_1();
      v696(v695);
      OUTLINED_FUNCTION_22_2();
      sub_26A84BC28();
      v697 = OUTLINED_FUNCTION_19_1();
      v698(v697);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v699 = swift_allocObject();
      v700 = OUTLINED_FUNCTION_9_6(v699);
      v701(v700);
      v621 = sub_26A5131B0;
    }

    else if (v590 == *MEMORY[0x277D63050])
    {
      v702 = OUTLINED_FUNCTION_18_2();
      v703(v702);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v704();
      OUTLINED_FUNCTION_28_1();
      v705 = OUTLINED_FUNCTION_17_1();
      v706(v705);
      OUTLINED_FUNCTION_22_2();
      sub_26A84C248();
      v707 = OUTLINED_FUNCTION_19_1();
      v708(v707);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v709 = swift_allocObject();
      v710 = OUTLINED_FUNCTION_9_6(v709);
      v711(v710);
      v621 = sub_26A513158;
    }

    else
    {
      if (v590 != *MEMORY[0x277D63100])
      {
        if (v590 == *MEMORY[0x277D630E8])
        {
          v722 = OUTLINED_FUNCTION_7_7();
          v723(v722);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v724();
          OUTLINED_FUNCTION_28_1();
          v725 = OUTLINED_FUNCTION_6_7();
          v726(v725);
          OUTLINED_FUNCTION_14_3();
          sub_26A84CE78();
          v727 = OUTLINED_FUNCTION_15_1();
          v728(v727);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v729 = swift_allocObject();
          v730 = OUTLINED_FUNCTION_5_6(v729);
          v731(v730);
          v601 = sub_26A5130D4;
        }

        else if (v590 == *MEMORY[0x277D63068])
        {
          v732 = OUTLINED_FUNCTION_7_7();
          v733(v732);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v734();
          OUTLINED_FUNCTION_28_1();
          v735 = OUTLINED_FUNCTION_6_7();
          v736(v735);
          OUTLINED_FUNCTION_14_3();
          sub_26A84C388();
          v737 = OUTLINED_FUNCTION_15_1();
          v738(v737);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v739 = swift_allocObject();
          v740 = OUTLINED_FUNCTION_5_6(v739);
          v741(v740);
          v601 = sub_26A5130A8;
        }

        else if (v590 == *MEMORY[0x277D63140])
        {
          v742 = OUTLINED_FUNCTION_7_7();
          v743(v742);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v744();
          OUTLINED_FUNCTION_28_1();
          v745 = OUTLINED_FUNCTION_6_7();
          v746(v745);
          OUTLINED_FUNCTION_14_3();
          sub_26A84D628();
          v747 = OUTLINED_FUNCTION_15_1();
          v748(v747);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v749 = swift_allocObject();
          v750 = OUTLINED_FUNCTION_5_6(v749);
          v751(v750);
          v601 = sub_26A51307C;
        }

        else if (v590 == *MEMORY[0x277D63188])
        {
          v752 = OUTLINED_FUNCTION_7_7();
          v753(v752);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v754();
          OUTLINED_FUNCTION_28_1();
          v755 = OUTLINED_FUNCTION_6_7();
          v756(v755);
          OUTLINED_FUNCTION_14_3();
          sub_26A84E118();
          v757 = OUTLINED_FUNCTION_15_1();
          v758(v757);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v759 = swift_allocObject();
          v760 = OUTLINED_FUNCTION_5_6(v759);
          v761(v760);
          v601 = sub_26A513024;
        }

        else if (v590 == *MEMORY[0x277D62FD0])
        {
          v762 = OUTLINED_FUNCTION_7_7();
          v763(v762);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v764();
          OUTLINED_FUNCTION_28_1();
          v765 = OUTLINED_FUNCTION_6_7();
          v766(v765);
          OUTLINED_FUNCTION_14_3();
          sub_26A84B0B8();
          v767 = OUTLINED_FUNCTION_15_1();
          v768(v767);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v769 = swift_allocObject();
          v770 = OUTLINED_FUNCTION_5_6(v769);
          v771(v770);
          v601 = sub_26A512FF8;
        }

        else if (v590 == *MEMORY[0x277D63128])
        {
          v772 = OUTLINED_FUNCTION_7_7();
          v773(v772);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v774();
          OUTLINED_FUNCTION_28_1();
          v775 = OUTLINED_FUNCTION_6_7();
          v776(v775);
          OUTLINED_FUNCTION_14_3();
          sub_26A84D468();
          v777 = OUTLINED_FUNCTION_15_1();
          v778(v777);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v779 = swift_allocObject();
          v780 = OUTLINED_FUNCTION_5_6(v779);
          v781(v780);
          v601 = sub_26A512EF0;
        }

        else if (v590 == *MEMORY[0x277D630F0])
        {
          v782 = OUTLINED_FUNCTION_7_7();
          v783(v782);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v784();
          OUTLINED_FUNCTION_28_1();
          v785 = OUTLINED_FUNCTION_6_7();
          v786(v785);
          OUTLINED_FUNCTION_14_3();
          sub_26A84CF38();
          v787 = OUTLINED_FUNCTION_15_1();
          v788(v787);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v789 = swift_allocObject();
          v790 = OUTLINED_FUNCTION_5_6(v789);
          v791(v790);
          v601 = sub_26A512EC4;
        }

        else if (v590 == *MEMORY[0x277D63168])
        {
          v792 = OUTLINED_FUNCTION_7_7();
          v793(v792);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v794();
          OUTLINED_FUNCTION_28_1();
          v795 = OUTLINED_FUNCTION_6_7();
          v796(v795);
          OUTLINED_FUNCTION_14_3();
          sub_26A84DAC8();
          v797 = OUTLINED_FUNCTION_15_1();
          v798(v797);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v799 = swift_allocObject();
          v800 = OUTLINED_FUNCTION_5_6(v799);
          v801(v800);
          v601 = sub_26A512E98;
        }

        else if (v590 == *MEMORY[0x277D63158])
        {
          v802 = OUTLINED_FUNCTION_7_7();
          v803(v802);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v804();
          OUTLINED_FUNCTION_28_1();
          v805 = OUTLINED_FUNCTION_6_7();
          v806(v805);
          OUTLINED_FUNCTION_14_3();
          sub_26A84D908();
          v807 = OUTLINED_FUNCTION_15_1();
          v808(v807);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v809 = swift_allocObject();
          v810 = OUTLINED_FUNCTION_5_6(v809);
          v811(v810);
          v601 = sub_26A512E6C;
        }

        else if (v590 == *MEMORY[0x277D63198])
        {
          v812 = OUTLINED_FUNCTION_7_7();
          v813(v812);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v814();
          OUTLINED_FUNCTION_28_1();
          v815 = OUTLINED_FUNCTION_6_7();
          v816(v815);
          OUTLINED_FUNCTION_14_3();
          sub_26A84E568();
          v817 = OUTLINED_FUNCTION_15_1();
          v818(v817);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v819 = swift_allocObject();
          v820 = OUTLINED_FUNCTION_5_6(v819);
          v821(v820);
          v601 = sub_26A512E40;
        }

        else if (v590 == *MEMORY[0x277D62FF8])
        {
          v822 = OUTLINED_FUNCTION_7_7();
          v823(v822);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v824();
          OUTLINED_FUNCTION_28_1();
          v825 = OUTLINED_FUNCTION_6_7();
          v826(v825);
          OUTLINED_FUNCTION_14_3();
          sub_26A84B938();
          v827 = OUTLINED_FUNCTION_15_1();
          v828(v827);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v829 = swift_allocObject();
          v830 = OUTLINED_FUNCTION_5_6(v829);
          v831(v830);
          v601 = sub_26A513520;
        }

        else if (v590 == *MEMORY[0x277D62FF0])
        {
          v832 = OUTLINED_FUNCTION_7_7();
          v833(v832);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v834();
          OUTLINED_FUNCTION_28_1();
          v835 = OUTLINED_FUNCTION_6_7();
          v836(v835);
          OUTLINED_FUNCTION_14_3();
          sub_26A84B8D8();
          v837 = OUTLINED_FUNCTION_15_1();
          v838(v837);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v839 = swift_allocObject();
          v840 = OUTLINED_FUNCTION_5_6(v839);
          v841(v840);
          v601 = sub_26A512E14;
        }

        else
        {
          if (v590 != *MEMORY[0x277D630C8])
          {
            if (v590 == *MEMORY[0x277D63190])
            {
              v852 = OUTLINED_FUNCTION_18_2();
              v853(v852);
              v589 = *v574;
              v552 = v574[1];
              v854 = sub_26A84E3D8();
              v855 = OUTLINED_FUNCTION_14_3();
              sub_26A507618(v855, v552, v854, v856);

              if (__swift_getEnumTagSinglePayload(v588, 1, v1235) != 1)
              {

                v857 = *(v1234 + 32);
                v858 = v1233;
                v859 = v1235;
                v857(v1233, v1236[0], v1235);
                v860 = v1238[0];
                v857(v1238[0], v858, v859);
                v861 = *(v1236[1] + 20);
                sub_26A84E408();
                OUTLINED_FUNCTION_46();
                (*(v862 + 16))(v860 + v861, v1273);
                v863 = (*(v1237 + 80) + 16) & ~*(v1237 + 80);
                OUTLINED_FUNCTION_12_3();
                v552 = swift_allocObject();
                sub_26A512D84(v860, &v552[v863]);
                v601 = sub_26A512DE8;
                goto LABEL_7;
              }

              sub_26A4DBD10(v1236[0], &qword_2803ABB20, &unk_26A8594A0);

              v1124 = sub_26A851EA8();
              LOBYTE(v1196) = 2;
              v591 = 148;
              j__OUTLINED_FUNCTION_172_0(v1124, 0, "SnippetUI/Components.swift", 26, 2, 148, "wrapper(for:response:)", 22, v1196, v589, v552);
              v1344 = 0;
              v1345 = 0xE000000000000000;
              v585 = &v1344;
              sub_26A852248();

              v1344 = 0xD000000000000012;
              v1345 = 0x800000026A88B160;
              MEMORY[0x26D663B00](v589, v552);

              v1197 = 148;
              v590 = sub_26A852418();
              __break(1u);
            }

            else
            {
              if (v590 == *MEMORY[0x277D63078])
              {
                v864 = OUTLINED_FUNCTION_7_7();
                v865(v864);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v866();
                OUTLINED_FUNCTION_28_1();
                v867 = OUTLINED_FUNCTION_6_7();
                v868(v867);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C498();
                v869 = OUTLINED_FUNCTION_15_1();
                v870(v869);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v871 = swift_allocObject();
                v872 = OUTLINED_FUNCTION_5_6(v871);
                v873(v872);
                v601 = sub_26A512FCC;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63000])
              {
                v874 = OUTLINED_FUNCTION_7_7();
                v875(v874);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v876();
                OUTLINED_FUNCTION_28_1();
                v877 = OUTLINED_FUNCTION_6_7();
                v878(v877);
                OUTLINED_FUNCTION_14_3();
                sub_26A84B9D8();
                v879 = OUTLINED_FUNCTION_15_1();
                v880(v879);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v881 = swift_allocObject();
                v882 = OUTLINED_FUNCTION_5_6(v881);
                v883(v882);
                v601 = sub_26A512FA0;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63008])
              {
                v884 = OUTLINED_FUNCTION_7_7();
                v885(v884);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v886();
                OUTLINED_FUNCTION_28_1();
                v887 = OUTLINED_FUNCTION_6_7();
                v888(v887);
                OUTLINED_FUNCTION_14_3();
                sub_26A84BA28();
                v889 = OUTLINED_FUNCTION_15_1();
                v890(v889);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v891 = swift_allocObject();
                v892 = OUTLINED_FUNCTION_5_6(v891);
                v893(v892);
                v601 = sub_26A512F74;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63028])
              {
                v894 = OUTLINED_FUNCTION_7_7();
                v895(v894);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v896();
                OUTLINED_FUNCTION_28_1();
                v897 = OUTLINED_FUNCTION_6_7();
                v898(v897);
                OUTLINED_FUNCTION_14_3();
                sub_26A84BE78();
                v899 = OUTLINED_FUNCTION_15_1();
                v900(v899);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v901 = swift_allocObject();
                v902 = OUTLINED_FUNCTION_5_6(v901);
                v903(v902);
                v601 = sub_26A512F48;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63030])
              {
                v904 = OUTLINED_FUNCTION_7_7();
                v905(v904);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v906();
                OUTLINED_FUNCTION_28_1();
                v907 = OUTLINED_FUNCTION_6_7();
                v908(v907);
                OUTLINED_FUNCTION_14_3();
                sub_26A84BEE8();
                v909 = OUTLINED_FUNCTION_15_1();
                v910(v909);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v911 = swift_allocObject();
                v912 = OUTLINED_FUNCTION_5_6(v911);
                v913(v912);
                v601 = sub_26A512A90;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63090])
              {
                v914 = OUTLINED_FUNCTION_7_7();
                v915(v914);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v916();
                OUTLINED_FUNCTION_28_1();
                v917 = OUTLINED_FUNCTION_6_7();
                v918(v917);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C648();
                v919 = OUTLINED_FUNCTION_15_1();
                v920(v919);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v921 = swift_allocObject();
                v922 = OUTLINED_FUNCTION_5_6(v921);
                v923(v922);
                v601 = sub_26A5132E4;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63118])
              {
                v924 = OUTLINED_FUNCTION_7_7();
                v925(v924);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v926();
                OUTLINED_FUNCTION_28_1();
                v927 = OUTLINED_FUNCTION_6_7();
                v928(v927);
                OUTLINED_FUNCTION_14_3();
                sub_26A84D248();
                v929 = OUTLINED_FUNCTION_15_1();
                v930(v929);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v931 = swift_allocObject();
                v932 = OUTLINED_FUNCTION_5_6(v931);
                v933(v932);
                v601 = sub_26A5129F4;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63150])
              {
                v934 = OUTLINED_FUNCTION_7_7();
                v935(v934);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v936();
                OUTLINED_FUNCTION_28_1();
                v937 = OUTLINED_FUNCTION_6_7();
                v938(v937);
                OUTLINED_FUNCTION_14_3();
                sub_26A84D768();
                v939 = OUTLINED_FUNCTION_15_1();
                v940(v939);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v941 = swift_allocObject();
                v942 = OUTLINED_FUNCTION_5_6(v941);
                v943(v942);
                v601 = sub_26A5132B8;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63088])
              {
                v944 = OUTLINED_FUNCTION_7_7();
                v945(v944);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v946();
                OUTLINED_FUNCTION_28_1();
                v947 = OUTLINED_FUNCTION_6_7();
                v948(v947);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C558();
                v949 = OUTLINED_FUNCTION_15_1();
                v950(v949);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v951 = swift_allocObject();
                v952 = OUTLINED_FUNCTION_5_6(v951);
                v953(v952);
                v601 = sub_26A51328C;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63010])
              {
                v954 = OUTLINED_FUNCTION_7_7();
                v955(v954);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v956();
                OUTLINED_FUNCTION_28_1();
                v957 = OUTLINED_FUNCTION_6_7();
                v958(v957);
                OUTLINED_FUNCTION_14_3();
                sub_26A84BB38();
                v959 = OUTLINED_FUNCTION_15_1();
                v960(v959);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v961 = swift_allocObject();
                v962 = OUTLINED_FUNCTION_5_6(v961);
                v963(v962);
                v601 = sub_26A513418;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63180])
              {
                v964 = OUTLINED_FUNCTION_7_7();
                v965(v964);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v966();
                OUTLINED_FUNCTION_28_1();
                v967 = OUTLINED_FUNCTION_6_7();
                v968(v967);
                OUTLINED_FUNCTION_14_3();
                sub_26A84DFF8();
                v969 = OUTLINED_FUNCTION_15_1();
                v970(v969);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v971 = swift_allocObject();
                v972 = OUTLINED_FUNCTION_5_6(v971);
                v973(v972);
                v601 = sub_26A512D58;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63070])
              {
                v974 = OUTLINED_FUNCTION_7_7();
                v975(v974);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v976();
                OUTLINED_FUNCTION_28_1();
                v977 = OUTLINED_FUNCTION_6_7();
                v978(v977);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C418();
                v979 = OUTLINED_FUNCTION_15_1();
                v980(v979);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v981 = swift_allocObject();
                v982 = OUTLINED_FUNCTION_5_6(v981);
                v983(v982);
                v601 = sub_26A512F1C;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D62FE0])
              {
                v984 = OUTLINED_FUNCTION_7_7();
                v985(v984);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v986();
                OUTLINED_FUNCTION_28_1();
                v987 = OUTLINED_FUNCTION_6_7();
                v988(v987);
                OUTLINED_FUNCTION_14_3();
                sub_26A84B738();
                v989 = OUTLINED_FUNCTION_15_1();
                v990(v989);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v991 = swift_allocObject();
                v992 = OUTLINED_FUNCTION_5_6(v991);
                v993(v992);
                v601 = sub_26A512D2C;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D630B8])
              {
                v994 = OUTLINED_FUNCTION_7_7();
                v995(v994);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v996();
                OUTLINED_FUNCTION_28_1();
                v997 = OUTLINED_FUNCTION_6_7();
                v998(v997);
                OUTLINED_FUNCTION_14_3();
                sub_26A84CAA8();
                v999 = OUTLINED_FUNCTION_15_1();
                v1000(v999);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1001 = swift_allocObject();
                v1002 = OUTLINED_FUNCTION_5_6(v1001);
                v1003(v1002);
                v601 = sub_26A512D00;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63098])
              {
                v1004 = OUTLINED_FUNCTION_7_7();
                v1005(v1004);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1006();
                OUTLINED_FUNCTION_28_1();
                v1007 = OUTLINED_FUNCTION_6_7();
                v1008(v1007);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C6D8();
                v1009 = OUTLINED_FUNCTION_15_1();
                v1010(v1009);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1011 = swift_allocObject();
                v1012 = OUTLINED_FUNCTION_5_6(v1011);
                v1013(v1012);
                v601 = sub_26A513260;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63048])
              {
                v1014 = OUTLINED_FUNCTION_7_7();
                v1015(v1014);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1016();
                OUTLINED_FUNCTION_28_1();
                v1017 = OUTLINED_FUNCTION_6_7();
                v1018(v1017);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C1A8();
                v1019 = OUTLINED_FUNCTION_15_1();
                v1020(v1019);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1021 = swift_allocObject();
                v1022 = OUTLINED_FUNCTION_5_6(v1021);
                v1023(v1022);
                v601 = sub_26A5131DC;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63110])
              {
                v1024 = OUTLINED_FUNCTION_7_7();
                v1025(v1024);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1026();
                OUTLINED_FUNCTION_28_1();
                v1027 = OUTLINED_FUNCTION_6_7();
                v1028(v1027);
                OUTLINED_FUNCTION_14_3();
                sub_26A84D188();
                v1029 = OUTLINED_FUNCTION_15_1();
                v1030(v1029);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1031 = swift_allocObject();
                v1032 = OUTLINED_FUNCTION_5_6(v1031);
                v1033(v1032);
                v601 = sub_26A513184;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63160])
              {
                v1034 = OUTLINED_FUNCTION_7_7();
                v1035(v1034);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1036();
                OUTLINED_FUNCTION_28_1();
                v1037 = OUTLINED_FUNCTION_6_7();
                v1038(v1037);
                OUTLINED_FUNCTION_14_3();
                sub_26A84DA58();
                v1039 = OUTLINED_FUNCTION_15_1();
                v1040(v1039);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1041 = swift_allocObject();
                v1042 = OUTLINED_FUNCTION_5_6(v1041);
                v1043(v1042);
                v601 = sub_26A513050;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D630A0])
              {
                v1044 = OUTLINED_FUNCTION_7_7();
                v1045(v1044);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1046();
                OUTLINED_FUNCTION_28_1();
                v1047 = OUTLINED_FUNCTION_6_7();
                v1048(v1047);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C778();
                v1049 = OUTLINED_FUNCTION_15_1();
                v1050(v1049);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1051 = swift_allocObject();
                v1052 = OUTLINED_FUNCTION_5_6(v1051);
                v1053(v1052);
                v601 = sub_26A5129C8;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63178])
              {
                v1054 = OUTLINED_FUNCTION_7_7();
                v1055(v1054);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1056();
                OUTLINED_FUNCTION_28_1();
                v1057 = OUTLINED_FUNCTION_6_7();
                v1058(v1057);
                OUTLINED_FUNCTION_14_3();
                sub_26A84DD28();
                v1059 = OUTLINED_FUNCTION_15_1();
                v1060(v1059);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1061 = swift_allocObject();
                v1062 = OUTLINED_FUNCTION_5_6(v1061);
                v1063(v1062);
                v601 = sub_26A513234;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D630C0])
              {
                v1064 = OUTLINED_FUNCTION_7_7();
                v1065(v1064);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1066();
                OUTLINED_FUNCTION_28_1();
                v1067 = OUTLINED_FUNCTION_6_7();
                v1068(v1067);
                OUTLINED_FUNCTION_14_3();
                sub_26A84CB28();
                v1069 = OUTLINED_FUNCTION_15_1();
                v1070(v1069);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1071 = swift_allocObject();
                v1072 = OUTLINED_FUNCTION_5_6(v1071);
                v1073(v1072);
                v601 = sub_26A512CD4;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63058])
              {
                v1074 = OUTLINED_FUNCTION_7_7();
                v1075(v1074);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1076();
                OUTLINED_FUNCTION_28_1();
                v1077 = OUTLINED_FUNCTION_6_7();
                v1078(v1077);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C2B8();
                v1079 = OUTLINED_FUNCTION_15_1();
                v1080(v1079);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1081 = swift_allocObject();
                v1082 = OUTLINED_FUNCTION_5_6(v1081);
                v1083(v1082);
                v601 = sub_26A512CA8;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63020])
              {
                v1084 = OUTLINED_FUNCTION_7_7();
                v1085(v1084);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1086();
                OUTLINED_FUNCTION_28_1();
                v1087 = OUTLINED_FUNCTION_6_7();
                v1088(v1087);
                OUTLINED_FUNCTION_14_3();
                sub_26A84BDC8();
                v1089 = OUTLINED_FUNCTION_15_1();
                v1090(v1089);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1091 = swift_allocObject();
                v1092 = OUTLINED_FUNCTION_5_6(v1091);
                v1093(v1092);
                v601 = sub_26A512C7C;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D63060])
              {
                v1094 = OUTLINED_FUNCTION_7_7();
                v1095(v1094);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1096();
                OUTLINED_FUNCTION_28_1();
                v1097 = OUTLINED_FUNCTION_6_7();
                v1098(v1097);
                OUTLINED_FUNCTION_14_3();
                sub_26A84C358();
                v1099 = OUTLINED_FUNCTION_15_1();
                v1100(v1099);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1101 = swift_allocObject();
                v1102 = OUTLINED_FUNCTION_5_6(v1101);
                v1103(v1102);
                v601 = sub_26A512C50;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D62FE8])
              {
                v1104 = OUTLINED_FUNCTION_7_7();
                v1105(v1104);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1106();
                OUTLINED_FUNCTION_28_1();
                v1107 = OUTLINED_FUNCTION_6_7();
                v1108(v1107);
                OUTLINED_FUNCTION_14_3();
                sub_26A84B7F8();
                v1109 = OUTLINED_FUNCTION_15_1();
                v1110(v1109);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1111 = swift_allocObject();
                v1112 = OUTLINED_FUNCTION_5_6(v1111);
                v1113(v1112);
                v601 = sub_26A512C24;
                goto LABEL_7;
              }

              if (v590 == *MEMORY[0x277D62FC8])
              {
                v1114 = OUTLINED_FUNCTION_7_7();
                v1115(v1114);
                OUTLINED_FUNCTION_13_4();
                OUTLINED_FUNCTION_16_2();
                OUTLINED_FUNCTION_29_1();
                v1116();
                OUTLINED_FUNCTION_28_1();
                v1117 = OUTLINED_FUNCTION_6_7();
                v1118(v1117);
                OUTLINED_FUNCTION_14_3();
                sub_26A84AD98();
                v1119 = OUTLINED_FUNCTION_15_1();
                v1120(v1119);
                OUTLINED_FUNCTION_4_5();
                OUTLINED_FUNCTION_12_3();
                v1121 = swift_allocObject();
                v1122 = OUTLINED_FUNCTION_5_6(v1121);
                v1123(v1122);
                v601 = sub_26A512BF8;
                goto LABEL_7;
              }
            }

            if (v590 == *MEMORY[0x277D63120])
            {
              v1125 = OUTLINED_FUNCTION_7_7();
              v1126(v1125);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1127();
              OUTLINED_FUNCTION_28_1();
              v1128 = OUTLINED_FUNCTION_6_7();
              v1129(v1128);
              OUTLINED_FUNCTION_14_3();
              sub_26A84D408();
              v1130 = OUTLINED_FUNCTION_15_1();
              v1131(v1130);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1132 = swift_allocObject();
              v1133 = OUTLINED_FUNCTION_5_6(v1132);
              v1134(v1133);
              v601 = sub_26A512BCC;
            }

            else if (v590 == *MEMORY[0x277D63108])
            {
              v1135 = OUTLINED_FUNCTION_7_7();
              v1136(v1135);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1137();
              OUTLINED_FUNCTION_28_1();
              v1138 = OUTLINED_FUNCTION_6_7();
              v1139(v1138);
              OUTLINED_FUNCTION_14_3();
              sub_26A84D128();
              v1140 = OUTLINED_FUNCTION_15_1();
              v1141(v1140);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1142 = swift_allocObject();
              v1143 = OUTLINED_FUNCTION_5_6(v1142);
              v1144(v1143);
              v601 = sub_26A512BA0;
            }

            else if (v590 == *MEMORY[0x277D63080])
            {
              v1145 = OUTLINED_FUNCTION_7_7();
              v1146(v1145);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1147();
              OUTLINED_FUNCTION_28_1();
              v1148 = OUTLINED_FUNCTION_6_7();
              v1149(v1148);
              OUTLINED_FUNCTION_14_3();
              sub_26A84C4E8();
              v1150 = OUTLINED_FUNCTION_15_1();
              v1151(v1150);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1152 = swift_allocObject();
              v1153 = OUTLINED_FUNCTION_5_6(v1152);
              v1154(v1153);
              v601 = sub_26A512B14;
            }

            else if (v590 == *MEMORY[0x277D62FC0])
            {
              v1155 = OUTLINED_FUNCTION_7_7();
              v1156(v1155);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1157();
              OUTLINED_FUNCTION_28_1();
              v1158 = OUTLINED_FUNCTION_6_7();
              v1159(v1158);
              OUTLINED_FUNCTION_14_3();
              sub_26A84C158();
              v1160 = OUTLINED_FUNCTION_15_1();
              v1161(v1160);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1162 = swift_allocObject();
              v1163 = OUTLINED_FUNCTION_5_6(v1162);
              v1164(v1163);
              v601 = sub_26A512AE8;
            }

            else if (v590 == *MEMORY[0x277D63138])
            {
              v1165 = OUTLINED_FUNCTION_7_7();
              v1166(v1165);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1167();
              OUTLINED_FUNCTION_28_1();
              v1168 = OUTLINED_FUNCTION_6_7();
              v1169(v1168);
              OUTLINED_FUNCTION_14_3();
              sub_26A84D568();
              v1170 = OUTLINED_FUNCTION_15_1();
              v1171(v1170);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1172 = swift_allocObject();
              v1173 = OUTLINED_FUNCTION_5_6(v1172);
              v1174(v1173);
              v601 = sub_26A512ABC;
            }

            else if (v590 == *MEMORY[0x277D63170])
            {
              v1175 = OUTLINED_FUNCTION_7_7();
              v1176(v1175);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1177();
              OUTLINED_FUNCTION_28_1();
              v1178 = OUTLINED_FUNCTION_6_7();
              v1179(v1178);
              OUTLINED_FUNCTION_14_3();
              sub_26A84DBE8();
              v1180 = OUTLINED_FUNCTION_15_1();
              v1181(v1180);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1182 = swift_allocObject();
              v1183 = OUTLINED_FUNCTION_5_6(v1182);
              v1184(v1183);
              v601 = sub_26A51312C;
            }

            else
            {
              if (v590 != *MEMORY[0x277D630E0])
              {
                (*(v589 + 8))(v591, v585);
                v1195 = sub_26A851E98();
                LOBYTE(v1197) = 2;
                j__OUTLINED_FUNCTION_205_0(v1195, 1, "SnippetUI/Components.swift", 26, 2, 203, "wrapper(for:response:)", 22, v1197);
                *v588 = 0;
                v588[1] = 0;
                goto LABEL_31;
              }

              v1185 = OUTLINED_FUNCTION_7_7();
              v1186(v1185);
              OUTLINED_FUNCTION_13_4();
              OUTLINED_FUNCTION_16_2();
              OUTLINED_FUNCTION_29_1();
              v1187();
              OUTLINED_FUNCTION_28_1();
              v1188 = OUTLINED_FUNCTION_6_7();
              v1189(v1188);
              OUTLINED_FUNCTION_14_3();
              sub_26A84CDA8();
              v1190 = OUTLINED_FUNCTION_15_1();
              v1191(v1190);
              OUTLINED_FUNCTION_4_5();
              OUTLINED_FUNCTION_12_3();
              v1192 = swift_allocObject();
              v1193 = OUTLINED_FUNCTION_5_6(v1192);
              v1194(v1193);
              v601 = sub_26A513394;
            }

            goto LABEL_7;
          }

          v842 = OUTLINED_FUNCTION_7_7();
          v843(v842);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_29_1();
          v844();
          OUTLINED_FUNCTION_28_1();
          v845 = OUTLINED_FUNCTION_6_7();
          v846(v845);
          OUTLINED_FUNCTION_14_3();
          sub_26A84CC08();
          v847 = OUTLINED_FUNCTION_15_1();
          v848(v847);
          OUTLINED_FUNCTION_4_5();
          OUTLINED_FUNCTION_12_3();
          v849 = swift_allocObject();
          v850 = OUTLINED_FUNCTION_5_6(v849);
          v851(v850);
          v601 = sub_26A5134F4;
        }

LABEL_7:
        *v588 = v601;
        v588[1] = v552;
        goto LABEL_31;
      }

      v712 = OUTLINED_FUNCTION_18_2();
      v713(v712);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_29_1();
      v714();
      OUTLINED_FUNCTION_28_1();
      v715 = OUTLINED_FUNCTION_17_1();
      v716(v715);
      OUTLINED_FUNCTION_22_2();
      sub_26A84D0B8();
      v717 = OUTLINED_FUNCTION_19_1();
      v718(v717);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_12_3();
      v719 = swift_allocObject();
      v720 = OUTLINED_FUNCTION_9_6(v719);
      v721(v720);
      v621 = sub_26A513100;
    }

    *v588 = v621;
    v588[1] = v552;
    goto LABEL_31;
  }

  v586 = sub_26A851E98();
  LOBYTE(v1197) = 2;
  j__OUTLINED_FUNCTION_205_0(v586, 1, "SnippetUI/Components.swift", 26, 2, 200, "wrapper(for:response:)", 22, v1197);
  v587 = v1343;
  *v1343 = 0;
  v587[1] = 0;
LABEL_31:
  sub_26A4DBD10(v577, &qword_2803B1C90, &unk_26A86C4C0);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A510388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_26A84B158();
  v28 = OUTLINED_FUNCTION_0_9(v27, v183 + 8);
  v30 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_0(v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v34);
  v35 = sub_26A84CBB8();
  v36 = OUTLINED_FUNCTION_0_9(v35, &v186);
  v38 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_10_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90, &unk_26A86C4C0);
  v42 = OUTLINED_FUNCTION_79(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v44);
  v45 = sub_26A84BD98();
  v46 = OUTLINED_FUNCTION_0_9(v45, &a11);
  v48 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_8_6(v50 - v49);
  v51 = sub_26A84E388();
  OUTLINED_FUNCTION_15();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_41();
  v57 = v56 - v55;
  v138 = v20;
  v58 = sub_26A84E3F8();
  v149 = v24;
  v176[2] = v24;
  v176[3] = v26;
  sub_26A507D58(sub_26A513CFC, v176, v58);
  v60 = v59;
  v165 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v60;

  sub_26A7A5E74(sub_26A513D1C, v61);

  v147 = *(v60 + 16);
  if (v147)
  {
    v62 = 0;
    v146 = v60 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v145 = v53 + 16;
    v170 = v48 + 8;
    v162 = *MEMORY[0x277D62FD8];
    v159 = v38 + 32;
    v158 = v38 + 16;
    v157 = "unknown_component";
    v151 = v30 + 16;
    v150 = v30 + 32;
    v156 = v30 + 8;
    v155 = v38 + 8;
    v139 = MEMORY[0x277D84F90];
    v140 = v53 + 8;
    v63 = v161;
    v152 = v30;
    v143 = v51;
    v144 = v53;
    v142 = v57;
    v141 = v60;
    while (1)
    {
      if (v62 >= *(v60 + 16))
      {
LABEL_32:
        __break(1u);
        return;
      }

      v64 = *(v53 + 72);
      v148 = v62;
      (*(v53 + 16))(v57, v146 + v64 * v62, v51);
      v65 = sub_26A84E358();
      v66 = v65;
      v173 = *(v65 + 16);
      if (!v173)
      {
LABEL_18:

        v107 = OUTLINED_FUNCTION_23_1();
        v108(v107);
        v53 = v144;
        goto LABEL_26;
      }

      v67 = 0;
      v57 = v65 + 32;
      v163 = v65;
      while (1)
      {
        if (v67 >= *(v66 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        sub_26A50429C(v57, &v184);
        __swift_project_boxed_opaque_existential_1(&v184, v185);
        v51 = v171;
        v68 = v175;
        sub_26A84E4E8();
        sub_26A84BD88();
        OUTLINED_FUNCTION_33_1();
        v69(v51, v172);
        v70 = sub_26A84BD78();
        if (__swift_getEnumTagSinglePayload(v68, 1, v70) != 1)
        {
          break;
        }

LABEL_17:
        ++v67;
        sub_26A4DBD10(v68, &qword_2803B1C90, &unk_26A86C4C0);
        __swift_destroy_boxed_opaque_existential_1(&v184);
        v57 += 40;
        if (v173 == v67)
        {
          goto LABEL_18;
        }
      }

      sub_26A514320(v68, v63, &qword_2803B1C90, &unk_26A86C4C0);
      v71 = *(v70 - 8);
      v72 = (*(v71 + 88))(v63, v70);
      if (v72 != v162)
      {
        v109 = OUTLINED_FUNCTION_23_1();
        v110(v109);

        v111 = OUTLINED_FUNCTION_15_1();
        v112(v111);
        goto LABEL_21;
      }

      (*(v71 + 96))(v63, v70);
      OUTLINED_FUNCTION_33_1();
      v73(v167, v63, v168);
      OUTLINED_FUNCTION_33_1();
      v74 = OUTLINED_FUNCTION_211();
      v75(v74);
      sub_26A84B128();
      v76 = sub_26A84B108();
      v78 = v77;
      v51 = sub_26A84B138();
      v68 = v79;
      v80 = sub_26A84B148();
      v82 = v81;
      v83 = sub_26A851918();
      v166 = v78;
      v174 = v80;
      if (v83)
      {
      }

      else
      {
        v179 = v76;
        v180 = v78;

        MEMORY[0x26D663B00](0x656C646E75622ELL, 0xE700000000000000);
        v76 = v179;
        v78 = v180;
      }

      swift_bridgeObjectRetain_n();

      sub_26A851E88();
      v134 = v76;
      v135 = v78;
      v133 = v68;
      LOBYTE(v131) = 2;
      OUTLINED_FUNCTION_39_1();
      sub_26A7AC6F8(v84, v85, v86, v87, v88, 40, "view(bundleName:viewId:viewData:mode:)", 38, v131, v51);

      sub_26A5CA474(&v177, v76, v78, 0xD000000000000023, v157 | 0x8000000000000000);
      if (!v178)
      {
        break;
      }

      sub_26A4C2314(&v177, &v179);
      v89 = v181;
      v63 = v182;
      __swift_project_boxed_opaque_existential_1(&v179, v181);
      v90 = *(v63 + 16);
      v164 = v82;
      v91 = v82;
      v92 = v165;
      v90(v51, v68, v174, v91, v149, v89, v63);
      if (v92)
      {

        v93 = v92;
        sub_26A851E98();
        v132 = v51;
        v51 = 2;
        LOBYTE(v131) = 2;
        OUTLINED_FUNCTION_39_1();
        sub_26A7ACC50(v94, v95, v96, v97, v98, 66, "view(bundleName:viewId:viewData:mode:)", 38, v131, v132, v68, v76, v78, v92);

        __swift_destroy_boxed_opaque_existential_1(&v179);
        OUTLINED_FUNCTION_44_0();

        v165 = 0;
LABEL_16:
        v100 = v152;
        v63 = v153;
        v101 = v169;
        v68 = v160;
        (*(v152 + 16))(v153, v169, v160);
        v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
        OUTLINED_FUNCTION_12_3();
        v103 = swift_allocObject();
        (*(v100 + 32))(v103 + v102, v63, v68);
        v104 = sub_26A851E98();
        LOBYTE(v135) = 2;
        sub_26A7C7120(v104, sub_26A513E20, v103, 0, "SnippetUI/Components.swift", 26, 2, 296, "firstComponent(for:)", 20, v135, v136, v137[0], v137[1], v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);

        (*(v100 + 8))(v101, v68);
        OUTLINED_FUNCTION_33_1();
        v105 = OUTLINED_FUNCTION_40_1();
        v106(v105);
        OUTLINED_FUNCTION_41_2();
        v66 = v163;
        goto LABEL_17;
      }

      v165 = 0;

      sub_26A851E78();
      v134 = v76;
      v135 = v78;
      v133 = v68;
      LOBYTE(v131) = 2;
      OUTLINED_FUNCTION_39_1();
      sub_26A7AC9A4(v113, v114, v115, v116, v117, 62, "view(bundleName:viewId:viewData:mode:)", 38, v131, v51);

      __swift_destroy_boxed_opaque_existential_1(&v179);
      OUTLINED_FUNCTION_44_0();

      OUTLINED_FUNCTION_33_1();
      v118(v169, v160);
      OUTLINED_FUNCTION_33_1();
      v119 = OUTLINED_FUNCTION_40_1();
      v120(v119);
      v121 = OUTLINED_FUNCTION_23_1();
      v122(v121);
      OUTLINED_FUNCTION_41_2();
LABEL_21:
      sub_26A4DBD10(v68, &qword_2803B1C90, &unk_26A86C4C0);
      sub_26A4C2314(&v184, v183);
      sub_26A4C2314(v183, &v184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v144;
      if (isUniquelyReferenced_nonNull_native)
      {
        v124 = v139;
      }

      else
      {
        sub_26A7A1660(0, *(v139 + 16) + 1, 1, v139);
        v124 = v127;
      }

      v126 = *(v124 + 16);
      v125 = *(v124 + 24);
      if (v126 >= v125 >> 1)
      {
        sub_26A7A1660(v125 > 1, v126 + 1, 1, v124);
        v124 = v128;
      }

      *(v124 + 16) = v126 + 1;
      v139 = v124;
      sub_26A4C2314(&v184, v124 + 40 * v126 + 32);
LABEL_26:
      v62 = v148 + 1;
      v60 = v141;
      if (v148 + 1 == v147)
      {

        v130 = v139;
        goto LABEL_30;
      }
    }

    sub_26A4DBD10(&v177, &qword_2803ABBE8, &unk_26A859790);

    sub_26A851E98();
    v134 = v76;
    v135 = v78;
    LOBYTE(v133) = 2;
    OUTLINED_FUNCTION_39_1();
    j__OUTLINED_FUNCTION_174_0(v99);

    sub_26A513D40(v174, v82);

    v51 = 2;
    goto LABEL_16;
  }

  v130 = MEMORY[0x277D84F90];
LABEL_30:
  MEMORY[0x28223BE20](v129);
  v135 = v138;
  sub_26A50801C(sub_26A513D24, &v133, v130);

  OUTLINED_FUNCTION_27_0();
}

void sub_26A511048()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v12[1] = sub_26A51122C(0, *(v3 + 16));
  swift_getKeyPath();
  (*(v6 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v4);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v6 + 32))(v11 + v10, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB38, &qword_26A859660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB40, &qword_26A859668);
  sub_26A4DBCC8(&qword_2803ABB48, &qword_2803ABB38, &qword_26A859660, MEMORY[0x277D83980]);
  sub_26A51377C();
  sub_26A8512F8();
  OUTLINED_FUNCTION_27_0();
}

void *sub_26A51122C(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_26A7A2FE4();
      if (sub_26A827140(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

unint64_t *sub_26A5112B0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(a2 + 16);
  if (v4 >= v6)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_26A50429C(a2 + 40 * v4 + 32, v52);
  static AnyComponent.wrapper(for:response:)(v52, a3, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5]);
  if (v48)
  {
    v39 = a4;
    v37 = v48();
    sub_26A4C24DC(v48, v49);
    sub_26A75D10C(__src);
    KeyPath = swift_getKeyPath();
    v33 = swift_getKeyPath();
    v51 = 0;
    v50 = 0;
    v31 = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v15 = v53;
    v16 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_26A62FF84(__dst, v15, v16);
    v17 = __dst[0];
    v18 = swift_getKeyPath();
    v19 = v6 == v4 + 1;
    v20 = swift_getKeyPath();
    sub_26A83D580(v4 - 1, a2, v44);
    v21 = v45;
    if (v45)
    {
      v22 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      sub_26A62FF84(__dst, v21, v22);
      v23 = __dst[0];
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {
      sub_26A4DBD10(v44, &qword_2803B1CA0, &qword_26A859760);
      v23 = 74;
    }

    v24 = swift_getKeyPath();
    sub_26A83D580(v4 + 1, a2, v41);
    v25 = v42;
    if (v42)
    {
      v26 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      sub_26A62FF84(__dst, v25, v26);
      v27 = __dst[0];
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      sub_26A4DBD10(v41, &qword_2803B1CA0, &qword_26A859760);
      v27 = 74;
    }

    v40[0] = v37;
    memcpy(&v40[1], __src, 0x119uLL);
    v40[37] = KeyPath;
    LOBYTE(v40[38]) = 0;
    v40[39] = v33;
    LOBYTE(v40[40]) = 0;
    v40[41] = v31;
    v40[42] = v4;
    v40[43] = v29;
    LOBYTE(v40[44]) = v17;
    v40[45] = v18;
    LOBYTE(v40[46]) = v19;
    v40[47] = v20;
    LOBYTE(v40[48]) = v23;
    v40[49] = v24;
    LOBYTE(v40[50]) = v27;
    nullsub_1();
    memcpy(__dst, v40, 0x191uLL);
    a4 = v39;
  }

  else
  {
    sub_26A513CF4(__dst);
  }

  memcpy(a4, __dst, 0x191uLL);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_26A5115C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_26A84E388();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = v6;
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26A84B058();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v8;
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84BD58();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84E368();
  v37 = v5;
  v38 = a2;
  if (a2 == 1)
  {
    v18 = MEMORY[0x277D62F98];
  }

  else
  {
    if (a2)
    {
      type metadata accessor for VRXMode(0, v14, v15, v16);
      v41 = a2;
      result = sub_26A8525E8();
      __break(1u);
      return result;
    }

    v18 = MEMORY[0x277D62F90];
  }

  v19 = (*(v11 + 104))(v13, *v18, v10);
  MEMORY[0x28223BE20](v19);
  *(&v31 - 2) = v13;
  v20 = v39;
  v21 = sub_26A8376C4(sub_26A513E90, (&v31 - 4), v17);
  v39 = v20;

  (*(v11 + 8))(v13, v10);
  v22 = v40;
  if (v21 && (sub_26A84E378() & 1) != 0)
  {
    return 1;
  }

  v24 = v33;
  (*(v7 + 16))(v9, v22, v33);
  v26 = v35;
  v25 = v36;
  v27 = v37;
  (*(v36 + 16))(v35, a1, v37);
  v28 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v29 = (v32 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v38;
  (*(v7 + 32))(v30 + v28, v9, v24);
  (*(v25 + 32))(v30 + v29, v26, v27);
  sub_26A7A5E74(sub_26A513EB0, v30);

  return 0;
}

uint64_t sub_26A511BD4(uint64_t a1)
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000014, 0x800000026A88B2D0);
  sub_26A54E058(a1, v2, v3, v4);
  MEMORY[0x26D663B00](0x6E6F2065646F6D20, 0xE900000000000020);
  sub_26A84B058();
  sub_26A51427C(&qword_2803ABC00, MEMORY[0x277D62A30], MEMORY[0x277D62A50]);
  v5 = sub_26A852568();
  MEMORY[0x26D663B00](v5);

  MEMORY[0x26D663B00](0x203A6D6F69646920, 0xE800000000000000);
  v6 = sub_26A84E348();
  MEMORY[0x26D663B00](v6);

  return 0;
}

uint64_t sub_26A511D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90, &unk_26A86C4C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_26A84BD98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A84E4E8();
  sub_26A84BD88();
  (*(v11 + 8))(v13, v10);
  v14 = sub_26A84BD78();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  sub_26A514320(v9, v6, &qword_2803B1C90, &unk_26A86C4C0);
  v15 = *(v14 - 8);
  if ((*(v15 + 88))(v6, v14) != *MEMORY[0x277D63190])
  {
    (*(v15 + 8))(v6, v14);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABBF8, &qword_26A8597A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26A8570D0;
    sub_26A50429C(a1, v16 + 32);
    goto LABEL_6;
  }

  (*(v15 + 96))(v6, v14);
  v16 = sub_26A512048(*v6, v6[1], v18);

LABEL_6:
  *v19 = v16;
  return sub_26A4DBD10(v9, &qword_2803B1C90, &unk_26A86C4C0);
}

uint64_t sub_26A512048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB20, &unk_26A8594A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v10 = sub_26A84BB08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_26A84E3D8();
  sub_26A507618(a1, a2, v14, v9);

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803ABB20, &unk_26A8594A0);

    v19 = sub_26A851EA8();
    LOBYTE(v20) = 2;
    j__OUTLINED_FUNCTION_172_0(v19, 0, "SnippetUI/Components.swift", 26, 2, 272, "flattenComponentGroup(with:response:)", 37, v20, a1, a2);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_26A852248();

    v24 = 0xD000000000000012;
    v25 = 0x800000026A88B160;
    MEMORY[0x26D663B00](a1, a2);
    result = sub_26A852418();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = sub_26A84BAD8();
    MEMORY[0x28223BE20](v15);
    v21 = v3;
    v22 = a3;
    sub_26A50801C(sub_26A513E74, &v20, v15);
    v17 = v16;

    (*(v11 + 8))(v13, v10);
    return v17;
  }

  return result;
}

uint64_t sub_26A512324@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a3;
  v21 = a2;
  v22 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90, &unk_26A86C4C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = sub_26A84BD98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A84E4E8();
  sub_26A84BD88();
  (*(v12 + 8))(v14, v11);
  v15 = sub_26A84BD78();
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    goto LABEL_5;
  }

  sub_26A514320(v10, v7, &qword_2803B1C90, &unk_26A86C4C0);
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(v7, v15) != *MEMORY[0x277D63190])
  {
    (*(v16 + 8))(v7, v15);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABBF8, &qword_26A8597A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26A8570D0;
    sub_26A50429C(a1, v17 + 32);
    goto LABEL_6;
  }

  (*(v16 + 96))(v7, v15);
  v17 = sub_26A512048(*v7, v7[1], v20);

LABEL_6:
  *v22 = v17;
  return sub_26A4DBD10(v10, &qword_2803B1C90, &unk_26A86C4C0);
}

uint64_t sub_26A5125F0()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000015, 0x800000026A88B240);
  v0 = sub_26A84B108();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](58, 0xE100000000000000);
  v1 = sub_26A84B138();
  MEMORY[0x26D663B00](v1);

  MEMORY[0x26D663B00](0xD000000000000019, 0x800000026A88B260);
  return 0;
}

uint64_t sub_26A5126CC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  LODWORD(v4) = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v18 = 0;
  v19 = 0xE000000000000000;
  if (v4 == 1)
  {
    LOBYTE(v17) = v6;
  }

  else
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v17;
  }

  if (v6 == 74)
  {
    v10 = 0x800000026A88B180;
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = sub_26A6300C8(v6);
    v10 = v12;
  }

  MEMORY[0x26D663B00](v11, v10, v3);

  MEMORY[0x26D663B00](95, 0xE100000000000000);
  if ((v8 & 1) == 0)
  {

    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v2 + 8))(v5, v1);
    v7 = v17;
  }

  v17 = v7;
  v14 = sub_26A852568();
  MEMORY[0x26D663B00](v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB28, &unk_26A859638);
  sub_26A4DBCC8(&qword_2803ABB30, &qword_2803ABB28, &unk_26A859638, MEMORY[0x277CE04B0]);
  sub_26A850A68();
}

uint64_t sub_26A512A20(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return a2(v4);
}

uint64_t sub_26A512B40(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = OUTLINED_FUNCTION_37_1(*(v4 + 80));
  return sub_26A509970(v5, a2);
}

uint64_t sub_26A512D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGroupWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A51354C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A51358C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26A5135EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A51362C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A5136A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}