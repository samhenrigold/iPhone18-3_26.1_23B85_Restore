uint64_t sub_24EFB01A4(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 48);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v3 + 32);
  }

  v2 = *(v2 + 48);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_16:

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v5 = MEMORY[0x253052270](0, v2);
    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);

LABEL_11:
    v6 = *(v3 + 32);

    v7 = *(v5 + 32);

    return v7 < v6;
  }

  __break(1u);
  return result;
}

void sub_24EFB0300(uint64_t a1)
{
  sub_24F92A9A8();
  sub_24F92C048();
  sub_24F929778();
  v1 = sub_24F929768();
  sub_24F921FE8();
}

double sub_24EFB0390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_24EFB3288(v4);
    v6 = sub_24F92C6B8();
    v7 = sub_24EFB2E80(v6, *(a1 + 36), 0, v5, a1);
    v9 = v8;
    v11 = v10;
    sub_24EFB300C(v7, v8, a1, a2);

    sub_24E6586A8(v7, v9, v11 & 1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24EFB0458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    v10[5] = a5;
    v11 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();

    v12 = sub_24F92BEF8();
    v13[3] = v11;
    v13[4] = MEMORY[0x277D225C0];
    v13[0] = v12;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

void sub_24EFB059C(uint64_t *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *a1;
  v21 = a1[1];
  v22 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v8 = MEMORY[0x277D84F90];
    if (i)
    {
      v9 = 0;
      v20 = a2;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x253052270](v9, v6, a4);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v10 = *(v6 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v12 = v10[2] == a2 && v10[3] == a3;
        if (!v12 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_5;
        }

        v13 = v10[4];
        if (qword_27F210D10 != -1)
        {
          swift_once();
        }

        if (v13 == qword_27F39D1A8)
        {
          sub_24F92C948();
          sub_24F92C988();
          a2 = v20;
          sub_24F92C998();
          sub_24F92C958();
        }

        else
        {
LABEL_5:
        }

        ++v9;
      }

      while (v11 != i);
      v14 = v22;
      v8 = MEMORY[0x277D84F90];
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_25:
        if ((v14 & 0x4000000000000000) == 0)
        {
          if (!*(v14 + 16))
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }
      }
    }

    if (!sub_24F92C738())
    {
LABEL_53:

      sub_24F92A9C8();
      return;
    }

LABEL_27:
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    a3 = MEMORY[0x253052270](0, v14);
LABEL_30:

    a2 = *(a3 + 48);
    v22 = v8;
    if (a2 >> 62)
    {
      v6 = sub_24F92C738();
      if (!v6)
      {
LABEL_56:
        sub_24F92A9C8();

        return;
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_56;
      }
    }

    v15 = 0;
LABEL_33:
    v16 = v15;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x253052270](v16, a2);
      }

      else
      {
        if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v17 = *(a2 + 8 * v16 + 32);
      }

      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (*(v21 + 16))
      {
        sub_24E76D644(*(v17 + 16), *(v17 + 24));
        if (v18)
        {

          MEMORY[0x253050F00](v19);
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          if (v15 != v6)
          {
            goto LABEL_33;
          }

          goto LABEL_56;
        }
      }

      ++v16;
      if (v15 == v6)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  if (*(v14 + 16))
  {
    a3 = *(v14 + 32);

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_24EFB0960(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4;
    v9 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();
    v10 = sub_24F92BEF8();
    v11[3] = v9;
    v11[4] = MEMORY[0x277D225C0];
    v11[0] = v10;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_24EFB0A94(unint64_t *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v30 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_50:
    v25 = a3;
    v26 = sub_24F92C738();
    a3 = v25;
    v7 = v26;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_51:
    v10 = MEMORY[0x277D84F90];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_51;
  }

LABEL_3:
  v29 = a3;
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](v8, v6);
    v4 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

LABEL_9:
    if (a2)
    {
      if (a2 == 1)
      {
        if ((*(v9 + 40) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(v9 + 40))
      {
LABEL_14:

        goto LABEL_5;
      }
    }

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    v3 = &v30;
    sub_24F92C958();
LABEL_5:
    ++v8;
    if (v4 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v6 + 8 * v8 + 32);

  v4 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v10 = v30;
  a3 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_19:
  LODWORD(v7) = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if ((v7 & 1) == 0)
  {
    v11 = *(v10 + 16);
    if (v11 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = *(v10 + 16);
    }

    if (a3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11 >= v13)
    {
      goto LABEL_30;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_53:
  v27 = a3;
  v3 = sub_24F92C738();
  result = sub_24F92C738();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v3;
    }

    if (v3 < 0)
    {
      v28 = v27;
    }

    if (v27)
    {
      v13 = v28;
    }

    else
    {
      v13 = 0;
    }

    if (sub_24F92C738() < v13)
    {
      goto LABEL_63;
    }

LABEL_30:
    if ((v10 & 0xC000000000000001) != 0 && v13)
    {
      type metadata accessor for GameCenterGameplayHistory();

      v14 = 0;
      do
      {
        v15 = v14 + 1;
        sub_24F92C8C8();
        v14 = v15;
      }

      while (v13 != v15);
    }

    else
    {
    }

    if (v7)
    {
      v16 = sub_24F92CB18();
      v4 = v17;
      v3 = v18;
      v13 = v19;

      v10 = v16;
      if (v13)
      {
        goto LABEL_38;
      }

LABEL_45:
      swift_unknownObjectRetain();
LABEL_46:
      sub_24E6B8C58(v10, v4, v3, v13);
      v22 = v23;
LABEL_47:
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
      v4 = v10 + 32;
      v13 = (2 * v13) | 1;
      if ((v13 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_38:
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v13 >> 1, v3))
      {
        goto LABEL_64;
      }

      if (v21 != (v13 >> 1) - v3)
      {
LABEL_65:
        swift_unknownObjectRelease();
        goto LABEL_46;
      }

      v22 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v22)
      {
        v22 = MEMORY[0x277D84F90];
        goto LABEL_47;
      }
    }

    v30 = v22;
    sub_24F92A9C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EFB0DEC(uint64_t a1)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = sub_24F92CFE8();
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  sub_24F928438();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

void *sub_24EFB0FA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235810, &unk_24F9B8880);
  v11 = sub_24F92A9E8();
  v12 = v11;
  v13 = *(v1 + 24);
  if (v13 < 2)
  {
    sub_24EEAE088();
    v14 = swift_allocError();
    *v15 = 7;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_24F92A9A8();

    return v12;
  }

  v29 = a1;
  v30 = v11;
  sub_24F929778();
  v16 = v13;
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v17 = sub_24F929768();
  sub_24F921FE8();

  v18 = [objc_opt_self() proxyForPlayer_];
  v19 = [v18 gameStatServicePrivate];

  result = sub_24F92B098();
  v21 = *(v2 + 32);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 < 9.22337204e18)
  {
    v22 = result;
    v28 = v21;
    sub_24E615E00(v29, v32);
    (*(v5 + 16))(v7, v10, v4);
    v23 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_24E612C80(v32, v25 + 16);
    (*(v5 + 32))(v25 + v23, v7, v4);
    v26 = v30;
    *(v25 + v24) = v30;
    aBlock[4] = sub_24EFB47DC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA60B8;
    aBlock[3] = &block_descriptor_97;
    v27 = _Block_copy(aBlock);

    v12 = v26;

    [v19 getGamesFriendsPlayed:0 type:v22 fetchOptions:1 withinSecs:v28 matchingBundleIDs:0 handler:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();

    sub_24EFB4814(v13);
    (*(v5 + 8))(v10, v4);
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_24EFB1374(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a7;
  v21[2] = a6;
  v22 = a1;
  v10 = sub_24F922028();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v21[1] = a3[4];
  v21[0] = __swift_project_boxed_opaque_existential_1(a3, v14);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v13, v10);
  *(v18 + v16) = a2;
  *(v18 + v17) = v23;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v19 = a2;

  sub_24F928C78();

  return result;
}

void sub_24EFB151C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_24F92C048();
  sub_24F929778();
  v5 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    v6 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

uint64_t sub_24EFB15FC()
{

  sub_24EFB4814(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24EFB163C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_24F92CD78();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_24F92B618();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_24EFB1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = a3;
  v5 = *a4;
  v6 = (*a4 + 8 * a3 - 8);
  v7 = a1 - a3;
LABEL_6:
  v8 = *(v5 + 8 * v4);
  v9 = v7;
  v20 = v6;
  while (1)
  {
    v10 = *v6;
    v11 = *(v8 + 48);
    if (v11 >> 62)
    {
      if (!sub_24F92C738())
      {
        goto LABEL_5;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x253052270](0, v11);
LABEL_12:
    v13 = *(v10 + 48);
    if (v13 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_4:

LABEL_5:
        ++v4;
        v6 = v20 + 1;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = *(v12 + 32);

    v16 = *(v14 + 32);

    if (v16 < v15)
    {
      if (!v5)
      {
        goto LABEL_30;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (!__CFADD__(v9++, 1))
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_24EFB1954(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 32) >= *(v7 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24EFB19C0(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_129:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 >= v7)
  {
    v25 = v8 + 1;
    goto LABEL_44;
  }

  v12 = *a3;
  v13 = *(*a3 + 8 * v11);
  v14 = v10;
  v105 = *(*a3 + 8 * v10);
  v106 = v13;

  v15 = v6;
  v16 = sub_24EFB01A4(&v106, &v105);
  if (v6)
  {

    return;
  }

  v17 = v16;

  v18 = (v10 + 2);
  if (v10 + 2 >= v7)
  {
    v5 = v10 + 2;
    if ((v17 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  v19 = v12 + 8 * v10 + 16;
  do
  {
    v5 = v18;
    v20 = *(v19 - 8);
    v6 = *(*v19 + 48);
    if (v6 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_8:
        if (v17)
        {
          goto LABEL_34;
        }

        goto LABEL_9;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {

      v6 = MEMORY[0x253052270](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v6 = *(v6 + 32);
    }

    v21 = *(v20 + 48);
    if (v21 >> 62)
    {
      if (sub_24F92C738())
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x253052270](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_160;
          }

          v22 = *(v21 + 32);
        }

        v23 = *(v6 + 32);

        v24 = *(v22 + 32);

        if ((v17 & 1) == v24 >= v23)
        {
          v11 = v5 - 1;
          goto LABEL_42;
        }

        goto LABEL_9;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    if (v17)
    {
LABEL_34:
      v11 = v5 - 1;
      v10 = v14;
      v6 = v15;
      if (v5 >= v14)
      {
        goto LABEL_35;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      v9 = sub_24E86164C(v9);
LABEL_131:
      v107 = v9;
      v93 = *(v9 + 2);
      if (v93 >= 2)
      {
        while (*a3)
        {
          v94 = *&v9[16 * v93];
          v95 = *&v9[16 * v93 + 24];
          sub_24EFB27DC((*a3 + 8 * v94), (*a3 + 8 * *&v9[16 * v93 + 16]), (*a3 + 8 * v95), v5);
          if (v6)
          {
            goto LABEL_139;
          }

          if (v95 < v94)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24E86164C(v9);
          }

          if (v93 - 2 >= *(v9 + 2))
          {
            goto LABEL_159;
          }

          v96 = &v9[16 * v93];
          *v96 = v94;
          *(v96 + 1) = v95;
          v107 = v9;
          sub_24E8615C0(v93 - 1);
          v9 = v107;
          v93 = *(v107 + 2);
          if (v93 <= 1)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_170;
      }

LABEL_139:

      return;
    }

LABEL_9:
    v18 = (v5 + 1);
    v19 += 8;
  }

  while (v7 != v5 + 1);
  v11 = v5;
  v5 = v7;
LABEL_42:
  v10 = v14;
  v6 = v15;
  if ((v17 & 1) == 0)
  {
LABEL_43:
    v25 = v5;
    goto LABEL_44;
  }

LABEL_31:
  if (v5 < v10)
  {
    goto LABEL_163;
  }

LABEL_35:
  v25 = v5;
  if (v10 <= v11)
  {
    v26 = 8 * v5 - 8;
    v27 = 8 * v10;
    v28 = v5;
    v29 = v10;
    do
    {
      if (v29 != --v28)
      {
        v31 = *a3;
        if (!*a3)
        {
          goto LABEL_169;
        }

        v30 = *(v31 + v27);
        *(v31 + v27) = *(v31 + v26);
        *(v31 + v26) = v30;
      }

      ++v29;
      v26 -= 8;
      v27 += 8;
    }

    while (v29 < v28);
  }

LABEL_44:
  v32 = a3[1];
  if (v25 >= v32)
  {
    goto LABEL_78;
  }

  if (__OFSUB__(v25, v10))
  {
    goto LABEL_162;
  }

  if (v25 - v10 >= a4)
  {
    goto LABEL_78;
  }

  v33 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_164;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v10)
  {
    goto LABEL_165;
  }

  if (v25 == v33)
  {
    goto LABEL_78;
  }

  v97 = v10;
  v98 = v6;
  v6 = *a3;
  v34 = *a3 + 8 * v25 - 8;
  v5 = v10 - v25;
  v101 = v33;
  while (2)
  {
    v102 = v34;
    v103 = v25;
    v35 = *(v6 + 8 * v25);
    v36 = v5;
    v37 = v34;
LABEL_56:
    v38 = *v37;
    v39 = *(v35 + 48);
    if (v39 >> 62)
    {
      if (!sub_24F92C738())
      {
        goto LABEL_54;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    if ((v39 & 0xC000000000000001) == 0)
    {
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v39 + 32);

        goto LABEL_61;
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
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
      goto LABEL_163;
    }

    v40 = MEMORY[0x253052270](0, v39);
LABEL_61:
    v41 = *(v38 + 48);
    if (v41 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_63;
      }

LABEL_53:

LABEL_54:
      v25 = v103 + 1;
      v34 = v102 + 8;
      --v5;
      if (v103 + 1 != v101)
      {
        continue;
      }

      v25 = v101;
      v10 = v97;
      v6 = v98;
LABEL_78:
      if (v25 < v10)
      {
        goto LABEL_161;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v9 = sub_24E615ED8((v47 > 1), v48 + 1, 1, v9);
      }

      *(v9 + 2) = v49;
      v50 = &v9[16 * v48];
      *(v50 + 4) = v10;
      *(v50 + 5) = v25;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_171;
      }

      v8 = v25;
      if (v48)
      {
        while (2)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            v57 = &v9[16 * v49 + 32];
            v58 = *(v57 - 64);
            v59 = *(v57 - 56);
            v63 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            if (v63)
            {
              goto LABEL_146;
            }

            v62 = *(v57 - 48);
            v61 = *(v57 - 40);
            v63 = __OFSUB__(v61, v62);
            v55 = v61 - v62;
            v56 = v63;
            if (v63)
            {
              goto LABEL_147;
            }

            v64 = &v9[16 * v49];
            v66 = *v64;
            v65 = *(v64 + 1);
            v63 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v63)
            {
              goto LABEL_149;
            }

            v63 = __OFADD__(v55, v67);
            v68 = v55 + v67;
            if (v63)
            {
              goto LABEL_152;
            }

            if (v68 >= v60)
            {
              v86 = &v9[16 * v52 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v63 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v63)
              {
                goto LABEL_157;
              }

              if (v55 < v89)
              {
                v52 = v49 - 2;
              }
            }

            else
            {
LABEL_98:
              if (v56)
              {
                goto LABEL_148;
              }

              v69 = &v9[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_151;
              }

              v75 = &v9[16 * v52 + 32];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_155;
              }

              if (v73 + v78 < v55)
              {
                goto LABEL_112;
              }

              if (v55 < v78)
              {
                v52 = v49 - 2;
              }
            }
          }

          else
          {
            if (v49 == 3)
            {
              v53 = *(v9 + 4);
              v54 = *(v9 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
              goto LABEL_98;
            }

            v79 = &v9[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_112:
            if (v74)
            {
              goto LABEL_150;
            }

            v82 = &v9[16 * v52];
            v84 = *(v82 + 4);
            v83 = *(v82 + 5);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_153;
            }

            if (v85 < v73)
            {
              break;
            }
          }

          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_168;
          }

          v91 = *&v9[16 * v90 + 32];
          v5 = *&v9[16 * v52 + 40];
          sub_24EFB27DC((*a3 + 8 * v91), (*a3 + 8 * *&v9[16 * v52 + 32]), (*a3 + 8 * v5), v51);
          if (v6)
          {
            goto LABEL_139;
          }

          if (v5 < v91)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24E86164C(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_145;
          }

          v92 = &v9[16 * v90];
          *(v92 + 4) = v91;
          *(v92 + 5) = v5;
          v107 = v9;
          sub_24E8615C0(v52);
          v9 = v107;
          v49 = *(v107 + 2);
          if (v49 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_63:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x253052270](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_142;
    }

    v42 = *(v41 + 32);
  }

  v43 = *(v40 + 32);

  v44 = *(v42 + 32);

  if (v44 >= v43)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v45 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v45;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

uint64_t sub_24EFB226C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_24E86164C(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_24EFB2C7C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_24E8615C0(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v15 >= v16;
        ++v14;
        v15 = v16;
        if ((((v13 < v12) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_24E615ED8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_24EFB2C7C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_24E8615C0(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 32) >= *(v27 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24EFB27DC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      do
      {
        v16 = *v4;
        v17 = *(*v15 + 48);
        if (v17 >> 62)
        {
          result = sub_24F92C738();
          if (!result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_31;
          }
        }

        if ((v17 & 0xC000000000000001) != 0)
        {

          v19 = MEMORY[0x253052270](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v19 = *(v17 + 32);
        }

        v20 = *(v16 + 48);
        if (v20 >> 62)
        {
          result = sub_24F92C738();
          if (!result)
          {
LABEL_30:

LABEL_31:
            v24 = v4;
            v25 = v6 == v4;
            v4 += 8;
            if (v25)
            {
              goto LABEL_33;
            }

LABEL_32:
            *v6 = *v24;
            goto LABEL_33;
          }
        }

        else
        {
          result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_30;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x253052270](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v21 = *(v20 + 32);
        }

        v22 = *(v19 + 32);

        v23 = *(v21 + 32);

        if (v23 >= v22)
        {
          goto LABEL_31;
        }

        v24 = v15;
        v25 = v6 == v15;
        v15 += 8;
        if (!v25)
        {
          goto LABEL_32;
        }

LABEL_33:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v26 = v6;
LABEL_71:
    if (v26 != v4 || v26 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v26, v4, 8 * ((v14 - v4) / 8));
    }

    return 1;
  }

  v26 = __dst;
  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v4[8 * v12];
  if (v10 < 8 || v26 <= v6)
  {
    goto LABEL_71;
  }

LABEL_42:
  v37 = v26;
  v27 = v26 - 8;
  v5 -= 8;
  v28 = v14;
  v38 = v27;
  while (1)
  {
    v29 = *(v28 - 1);
    v28 -= 8;
    v30 = *v27;
    v31 = *(v29 + 48);
    if (v31 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_61;
      }
    }

    if ((v31 & 0xC000000000000001) != 0)
    {

      v32 = MEMORY[0x253052270](0, v31);
      goto LABEL_49;
    }

    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v32 = *(v31 + 32);

LABEL_49:
    v33 = *(v30 + 48);
    if (v33 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
LABEL_60:

        v27 = v38;
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_60;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x253052270](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v34 = *(v33 + 32);
    }

    v35 = *(v32 + 32);

    v36 = *(v34 + 32);

    v27 = v38;
    if (v36 < v35)
    {
      if (v5 + 8 != v37)
      {
        *v5 = *v38;
      }

      if (v14 <= v4 || (v26 = v38, v38 <= v6))
      {
        v26 = v38;
        goto LABEL_71;
      }

      goto LABEL_42;
    }

LABEL_61:
    if (v5 + 8 != v14)
    {
      *v5 = *v28;
    }

    v5 -= 8;
    v14 = v28;
    if (v28 <= v4)
    {
      v14 = v28;
      v26 = v37;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_24EFB2C7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 32) < *(*v6 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 32) < *(v21 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_24EFB2E80(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_24EFB4DA4(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if (result < 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB2FB8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EFB300C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_24E65864C(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_24EFB3064(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2530520E0](a1, a2, v7);
      sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
    if (sub_24F92C718() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24F92C728();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_24F92C3F8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_24F92C408();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
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

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_24EFB3288(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2530542F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2530542F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFB3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v28 = a3;
  v9 = sub_24F927D88();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a5;
  v31[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0, &qword_24F9AAD38);
  v16 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAC5B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_161;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v26 + 8))(v11, v9);
  (*(v24 + 8))(v14, v25);

  v18 = swift_allocObject();
  v20 = v27;
  v19 = v28;
  *(v18 + 16) = v27;
  *(v18 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_24EFB36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF0, &unk_24F9B88C0);
  v17 = sub_24F92A9E8();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;

  sub_24EFB3314(v14, sub_24EEABF24, v18, a4, a5, a6);

  (*(v11 + 8))(v14, a5);
  return v17;
}

void sub_24EFB3874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A8, &qword_24F9B88B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v6 = sub_24F92BEF8();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  sub_24EEACD50(v6, sub_24EFB6304, v8);
}

uint64_t sub_24EFB39E4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_24F92CE08();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_24EFB3A6C(uint64_t a1, uint64_t a2)
{
  if (sub_24F92B0D8() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_24F92B0D8() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_24F92B0D8() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_24F92CE08();

  if (v13)
  {
    goto LABEL_24;
  }

  if (sub_24F92B0D8() == a1 && v14 == a2)
  {

LABEL_29:

    return 3;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
    goto LABEL_29;
  }

  if (sub_24F92B0D8() == a1 && v16 == a2)
  {

    return 4;
  }

  else
  {
    v17 = sub_24F92CE08();

    if (v17)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24EFB3C9C(uint64_t a1)
{
  v2 = sub_24F922028();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2358B0, &qword_24F9B88B8);
  v18 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v17 = objc_opt_self();
  v10 = sub_24F92B588();
  (*(v3 + 16))(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v11, v5, v2);
  v14 = v18;
  *(v13 + v12) = v18;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_24EFB6460;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA72A8;
  aBlock[3] = &block_descriptor_155;
  v15 = _Block_copy(aBlock);

  [v17 loadGamesWithBundleIDs:v10 withCompletionHandler:v15];
  _Block_release(v15);

  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_24EFB3F58()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB3FAC()
{

  return swift_deallocObject();
}

uint64_t _s12GameStoreKit0A6CenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v11 = sub_24F929768();
  sub_24F921FE8();

  v12 = [objc_opt_self() proxyForPlayer_];
  v13 = [v12 utilityServicePrivate];

  v14 = sub_24F92B098();
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  aBlock[4] = sub_24EFB617C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_137;
  v17 = _Block_copy(aBlock);

  [v13 denyContact:v14 handler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_24EFB42A4(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_24F92B588();

  v7 = [v4 predicateForContactsWithIdentifiers_];

  v8 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v9 = sub_24F92B588();

  v21[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v21];

  v11 = v21[0];
  if (!v10)
  {
    v19 = v21[0];
    v20 = sub_24F91F278();

    swift_willThrow();
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
  v12 = sub_24F92B5A8();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x253052270](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 givenName];
  v17 = sub_24F92B0D8();

  return v17;
}

unint64_t sub_24EFB4574()
{
  result = qword_27F235800;
  if (!qword_27F235800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0A6CenterC0aD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_24EFB45FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EFB4644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EFB468C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24EFB46D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24EFB471C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0A11CenterCacheC17LocalPlayerStatus33_6F87978BBF97AE4E957581A0DB1EBB5BLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EFB4814(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_24EFB483C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB4908(unint64_t *a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24EFAF130(a1, v4, v5, v6);
}

uint64_t sub_24EFB497C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB4A40(uint64_t a1)
{
  sub_24F922028();

  sub_24EFB0300(a1);
}

uint64_t sub_24EFB4AB4(void *a1)
{
  v2 = [a1 compatiblePlatforms];
  v3 = sub_24F92BAA8();

  v10 = sub_24F92B0D8();
  v11 = v4;
  sub_24F92C7F8();
  LOBYTE(v2) = sub_24F4D3620(v12, v3);

  sub_24E6585F8(v12);
  if (v2)
  {
    return 1;
  }

  v6 = [a1 compatiblePlatforms];
  v7 = sub_24F92BAA8();

  sub_24EFB0390(v7, v12);

  if (v13)
  {
    if (swift_dynamicCast())
    {
      return qword_24F9B8970[sub_24EFB3A6C(v10, v11)];
    }
  }

  else
  {
    sub_24E601704(v12, &qword_27F235830, &qword_24F93B8C0);
  }

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v9 = [a1 adamID];
  v13 = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v12[0] = v9;
  sub_24F928458();
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return 0;
}

double sub_24EFB4DA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24EFB4DF0()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24EFB4EE0(void *a1, void *a2, void *a3)
{
  v7 = *(sub_24F922028() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFAB030(a1, a2, a3, (v3 + 16), v3 + v8, v10, v11);
}

uint64_t sub_24EFB4FA4()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

void sub_24EFB50A0()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);

  sub_24EFAB238(v0 + v2, v8, v9, v10, v11, v12, v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5168()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24EFB5280(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFABB30(a1, a2, (v2 + 16), v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_24EFB5354()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB5450()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFABD2C((v0 + v2), v8, v9, v10, v11, v12, v13);
}

uint64_t sub_24EFB5518()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EFB5550()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocObject();
}

id sub_24EFB55B0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_24EFB55C0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24EFB5700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_24F922028() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  return sub_24EFB1374(a1, a2, (v4 + 16), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t objectdestroy_59Tm_1()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB589C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24F922028() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v6, v7, v8);
}

uint64_t sub_24EFB5954()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

double sub_24EFB5A3C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EFA8B0C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5B1C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

void sub_24EFB5C0C()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);

  sub_24EFA8D20(v0 + v2, v7, v8, v9, v10, v11, v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5CCC()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24EFB5DE8(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EFA933C(a1, a2, (v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24EFB5EC0()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB5FC0()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);
  v14 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFA9548(v0 + v2, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24EFB608C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB60F4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EFB617C(uint64_t a1)
{
  sub_24F922028();

  sub_24EFADF74(a1);
}

uint64_t sub_24EFB61EC()
{
  sub_24EFB622C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void sub_24EFB622C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }

  if (a5 == 3)
  {
  }
}

uint64_t sub_24EFB632C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_24EFB63B4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EFB6460(unint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFA7110(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_24EFB6518()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB6558()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB65BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24EFB6604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFB665C()
{
  result = qword_27F2358C8;
  if (!qword_27F2358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2358C8);
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000023;
  *(a2 + 1) = 0x800000024F9B8980;
  v4 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent(0) + 20);
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesPageIntent(uint64_t a1)
{
  result = qword_27F2358E0;
  if (!qword_27F2358E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchChartsAndCategoriesPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall SearchChartsAndCategoriesPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for SearchChartsAndCategoriesPageIntent(0);
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
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

uint64_t sub_24EFB6A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFB6AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EFB6BA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *sub_24EFB6C44(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v8 = sub_24F92AC68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v15 = a1;

    v16 = a2;
    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v14 = "ctive JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

double sub_24EFB6E38(void *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v20[1] = a5;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v14);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a6;
  *(v16 + 3) = a7;
  *(v16 + 4) = a1;
  (*(v12 + 32))(&v16[v15], v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = a6;
  v18 = a1;
  sub_24F9298E8();

  return result;
}

uint64_t sub_24EFB6FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v6 = sub_24F92B098();
  v7 = [v5 arrayForKey_];

  if (a2 < 1)
  {
    if (v7 && (v12 = sub_24F92B5A8(), v7, v13 = sub_24E9E2454(v12), , v13))
    {
      v11 = v13;
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v7 && (v8 = sub_24F92B5A8(), v7, v9 = sub_24E9E2454(v8), , v9))
    {
      v10 = v9;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    sub_24EFB8828(a2, v10);
  }

  sub_24EF1C574(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B08, &qword_24F9861E8);
  v14 = sub_24F92CF68();
  v15 = [objc_opt_self() valueWithObject:v14 inContext:a3];
  swift_unknownObjectRelease();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235918, &unk_24F9B8AC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  *(v16 + 64) = sub_24E6360E0();
  *(v16 + 32) = v15;
  v17 = v15;
  v18 = sub_24F928198();

  return sub_24EFB8EF8(v20);
}

char *sub_24EFB73A8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v30 = a1;
  v6 = sub_24F9285B8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    v16 = " JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return v16;
  }

  v16 = a2;
  sub_24F92C2D8();
  if (v4)
  {

    return v16;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_24F9285A8();
  SearchHistoryItem.init(deserializing:using:)(v12, v8, v28);
  v18 = v28[0];
  v19 = v28[1];
  v20 = v29;
  v21 = swift_allocObject();
  v23 = v26;
  v22 = v27;
  *(v21 + 16) = v27;
  *(v21 + 24) = v18;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = v23;
  v24 = v22;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v16 = result;
    (*(v10 + 8))(v15, v9);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB76A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2 < 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
    v14 = sub_24F92B098();
    [v13 removeObjectForKey_];

    return sub_24F92AD88();
  }

  v5 = *(a1 + 16);
  v7 = *a1;
  v6 = *(a1 + 8);

  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v7, v6, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v8;
  if (v5 <= 1)
  {
    v16 = v5 == 0;
    if (v5)
    {
      v12 = 0x79726F7473;
    }

    else
    {
      v12 = 0x65706F6C65766564;
    }

    if (v16)
    {
      v11 = 0xE900000000000072;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else if (v5 == 2)
  {
    v11 = 0xE600000000000000;
    v12 = 0x656461637261;
  }

  else
  {
    if (v5 != 3)
    {
      goto LABEL_15;
    }

    v11 = 0xE500000000000000;
    v12 = 0x6863746177;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v12, v11, 0x797469746E65, 0xE600000000000000, v17);
LABEL_15:
  v18 = *(v3 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  if (a2 >= 0x1E)
  {
    v19 = 30;
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_24F92B098();
  v21 = [v18 arrayForKey_];

  if (v21 && (v22 = sub_24F92B5A8(), v21, v23 = sub_24E9E2454(v22), , v23))
  {
    v24 = v23;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v44 = v18;
  v45 = v19;
  sub_24EFB8828(v19, v24);
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = v25 + 32;
    v29 = v27 - 1;
    v30 = MEMORY[0x277D84F90];
    v31 = 0;
    while (v31 < *(v26 + 16))
    {
      v32 = *(v28 + 8 * v31);
      v33 = v31 + 1;

      if (sub_24EBACE54(v10, v32))
      {

        ++v31;
        if (v27 == v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v43 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F458D04(0, v30[2] + 1, 1);
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_24F458D04((v34 > 1), v35 + 1, 1);
        }

        v30[2] = v35 + 1;
        v30[v35 + 4] = v32;
        v29 = v43;
        if (v43 == v31)
        {
          goto LABEL_35;
        }

        ++v31;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_35:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_36;
    }
  }

  v30 = sub_24E6189A0(0, v30[2] + 1, 1, v30);
LABEL_36:
  v37 = v30[2];
  v36 = v30[3];
  if (v37 >= v36 >> 1)
  {
    v30 = sub_24E6189A0((v36 > 1), v37 + 1, 1, v30);
  }

  v30[2] = v37 + 1;
  v30[v37 + 4] = v10;
  sub_24EFB8828(v45, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  v38 = sub_24F92B588();

  v39 = sub_24F92B098();
  [v44 setObject:v38 forKey:v39];

  v40 = sub_24F92B098();
  v41 = [v44 arrayForKey_];

  if (v41)
  {
    v42 = sub_24F92B5A8();

    sub_24E9E2454(v42);
  }

  sub_24F92AD88();
}

id sub_24EFB7C10(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24EFB7DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24EFB7E14(a2, a3);
  }
}

uint64_t sub_24EFB7E14(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v4 = sub_24F92B098();
  v5 = [v3 arrayForKey_];

  if (v5 && (v6 = sub_24F92B5A8(), v5, v7 = sub_24E9E2454(v6), result = , v7))
  {
    v9 = *(v7 + 16);
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      v26 = v3;
      while (1)
      {
        v12 = v10;
        while (1)
        {
          if (v12 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v13 = *(v7 + 32 + 8 * v12);
          if (*(v13 + 16))
          {
            break;
          }

LABEL_7:
          if (v9 == ++v12)
          {
            v3 = v26;
            goto LABEL_22;
          }
        }

        sub_24E76D644(1836213620, 0xE400000000000000);
        if ((v14 & 1) == 0)
        {
          break;
        }

        sub_24E600AEC();
        if (!sub_24F92C598())
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v27 = v11;
        if ((result & 1) == 0)
        {
          result = sub_24F458D04(0, *(v11 + 16) + 1, 1);
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v19 = v16 + 1;
          v25 = v16;
          result = sub_24F458D04((v15 > 1), v16 + 1, 1);
          v17 = v19;
          v16 = v25;
          v11 = v27;
        }

        v10 = v12 + 1;
        *(v11 + 16) = v17;
        *(v11 + 8 * v16 + 32) = v13;
        v18 = v9 - 1 == v12;
        v3 = v26;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_7;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
      goto LABEL_4;
    }
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  v20 = sub_24F92B588();

  v21 = sub_24F92B098();
  [v3 setObject:v20 forKey:v21];

  v22 = sub_24F92B098();
  v23 = [v3 arrayForKey_];

  if (v23)
  {
    v24 = sub_24F92B5A8();

    sub_24E9E2454(v24);
  }

  sub_24F92AD88();
}

id sub_24EFB81F4(id a1)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24EFB834C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
    v3 = Strong;
    v4 = sub_24F92B098();
    [v2 removeObjectForKey_];

    sub_24F92AD88();
  }
}

Swift::Void __swiftcall OnDeviceSearchHistoryManager.clearData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v2 = sub_24F92B098();
  [v1 removeObjectForKey_];

  sub_24F92AD88();
}

uint64_t OnDeviceSearchHistoryManager.fetchRecents(limit:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v4 = sub_24F92B098();
  v5 = [v3 arrayForKey_];

  if (a1 < 1)
  {
    if (v5 && (v10 = sub_24F92B5A8(), v5, v11 = sub_24E9E2454(v10), , v11))
    {
      v9 = v11;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v5 && (v6 = sub_24F92B5A8(), v5, v7 = sub_24E9E2454(v6), , v7))
    {
      v8 = v7;
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    sub_24EFB8828(a1, v8);
  }

  result = sub_24EF1C574(v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = v14 - 1;
    while (1)
    {
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v13 + 32 + 8 * v18);
        if (*(v19 + 16))
        {
          break;
        }

LABEL_14:
        if (v14 == ++v18)
        {
          goto LABEL_32;
        }
      }

      sub_24E76D644(1836213620, 0xE400000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v31 = v17;
      v21 = *(v19 + 16);

      if (v21 && (sub_24E76D644(0x797469746E65, 0xE600000000000000), (v22 & 1) != 0))
      {
        swift_bridgeObjectRetain_n();

        v23 = sub_24F92CB88();
        swift_bridgeObjectRelease_n();
        if (v23 >= 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = v23;
        }
      }

      else
      {

        v24 = 4;
      }

      sub_24E600AEC();
      v25 = sub_24F92C518();
      v27 = v26;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E619928(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_24E619928((v28 > 1), v29 + 1, 1, v16);
        v16 = result;
      }

      v15 = v18 + 1;
      *(v16 + 16) = v29 + 1;
      v30 = v16 + 24 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      *(v30 + 48) = v24;
      v17 = v31;
      if (v31 == v18)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_14;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_32:

  return v16;
}

void sub_24EFB8828(int64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v17 = MEMORY[0x277D84F90];
  sub_24F458D04(0, v4, 0);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v16 = 0;
    do
    {
      while (1)
      {
        if (v6 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = *(a2 + 32 + 8 * v6);
        v8 = v6 + 1;
        v9 = v17[2];
        if (v9 >= a1)
        {
          break;
        }

        v10 = v17[3];

        if (v9 >= v10 >> 1)
        {
          sub_24F458D04((v10 > 1), v9 + 1, 1);
        }

        v17[2] = v9 + 1;
        v17[v9 + 4] = v7;
        v6 = v8;
        if (v5 == v8)
        {
          goto LABEL_20;
        }
      }

      if (v16 >= v9)
      {
        goto LABEL_31;
      }

      v17[v16 + 4] = v7;

      if ((v16 + 1) < a1)
      {
        v11 = v16 + 1;
      }

      else
      {
        v11 = 0;
      }

      v16 = v11;
    }

    while (v5 - 1 != v6++);
LABEL_20:

    if (!v16)
    {
      return;
    }

    v13 = v17[2];
    sub_24F458D04(0, v13, 0);
    if (v13 >= v16)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v14 = v17[2];
      if (v14 >= v16 && v14 >= v13)
      {

        sub_24EFB8F60(v15, (v17 + 4), v16, (2 * v13) | 1);

        sub_24EFB8F60(v17, (v17 + 4), 0, (2 * v16) | 1);

        return;
      }

      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }
}

id OnDeviceSearchHistoryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OnDeviceSearchHistoryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EFB8BF4()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EFB8C54()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8CC0()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8D00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 24);
  v5[1] = v1;
  v6 = v2;
  return sub_24EFB76A8(v5, v3);
}

uint64_t sub_24EFB8D64()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8DC4(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_24EFB8E90(__n128 a1)
{
  sub_24F9281B8();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];

  return sub_24EFB6FA8(v2, v3, v4);
}

uint64_t sub_24EFB8EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C908, &unk_24F9B8AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24EFB8F60(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_24F458D04(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB9094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  v3[37] = type metadata accessor for GSKShelf(0);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EFB9214, 0, 0);
}

uint64_t sub_24EFB9214()
{
  v36 = v0;
  v1 = *(v0 + 280);
  if (*(*(v1 + 40) + 16))
  {
    v33 = *(v0 + 368);
    v34 = *(v0 + 360);
    v2 = *(v0 + 344);
    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    v32 = *(v0 + 320);
    v6 = *(v0 + 288);

    v8 = sub_24F45D9C4(v7);

    sub_24EF6DC6C(v1, v0 + 16);
    v9 = swift_allocObject();
    v10 = *(v0 + 32);
    *(v9 + 16) = *(v0 + 16);
    *(v9 + 32) = v10;
    *(v9 + 48) = *(v0 + 48);
    *(v9 + 64) = v6;
    v11 = swift_task_alloc();
    *(v11 + 16) = v8;
    *(v11 + 24) = &unk_24F9B8B60;
    *(v11 + 32) = v9;
    *(v11 + 40) = 257;
    (*(v4 + 104))(v5, *MEMORY[0x277D85778], v32);

    sub_24F92B928();

    (*(v3 + 16))(v34, v33, v2);
    sub_24E613678();
    sub_24F9280F8();
    (*(v3 + 8))(v33, v2);
    v12 = *(v0 + 272);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
      v1 = *(v0 + 280);
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E7F0);
    sub_24EF6DC6C(v1, v0 + 64);
    v17 = sub_24F9220B8();
    v18 = sub_24F92BDB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136315138;
      sub_24EFB9DF4(v0 + 64, v0 + 232);
      sub_24E612C80((v0 + 232), v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v21 = sub_24F9284D8();
      v23 = v22;
      sub_24EF6DCA4(v0 + 64);
      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
      v24 = sub_24E7620D4(v21, v23, &v35);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v17, v18, "Got an UpdateListenerShelfIntent (wrapping intentKind '%s') with an empty dataTypes array, not hooking into UpdateListener", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {

      sub_24EF6DCA4(v0 + 64);
    }

    sub_24EFB9DF4(*(v0 + 280), v0 + 152);
    sub_24E612C80((v0 + 152), v0 + 112);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = __swift_project_boxed_opaque_existential_1((v0 + 112), v26);
    v28 = swift_task_alloc();
    *(v0 + 376) = v28;
    v29 = sub_24EFB9E64();
    *v28 = v0;
    v28[1] = sub_24EFB96D0;
    v30 = *(v0 + 312);
    v31 = *(v0 + 288);

    return sub_24F513090(v30, v27, v31, &type metadata for UpdateListenerShelfIntentImplementation, v26, v29, v25);
  }
}

uint64_t sub_24EFB96D0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24EFB990C;
  }

  else
  {
    v2 = sub_24EFB97E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EFB97E4()
{
  v1 = v0[38];
  v2 = v0[39];
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_24E614E60(v2, v1);
  sub_24F928138();
  sub_24E614EC4(v2);
  v3 = v0[34];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EFB990C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EFB99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_24EFB99D8, 0, 0);
}

uint64_t sub_24EFB99D8()
{
  sub_24EFB9DF4(*(v0 + 104), v0 + 56);
  sub_24E612C80((v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  v5 = sub_24EFB9E64();
  *v4 = v0;
  v4[1] = sub_24EFB9AC0;
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);

  return sub_24F513090(v7, v3, v6, &type metadata for UpdateListenerShelfIntentImplementation, v2, v5, v1);
}

uint64_t sub_24EFB9AC0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24EFB9BD4;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EFB9BD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EFB9C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EFB9094(a1, a2, a3);
}

uint64_t sub_24EFB9CE8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24EFB9D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 64);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E614970;

  return sub_24EFB99B4(a1, a2, a3, v3 + 16, v8);
}

uint64_t sub_24EFB9DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38, &unk_24F9B5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFB9E64()
{
  result = qword_27F235920;
  if (!qword_27F235920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235920);
  }

  return result;
}

double CGSize.minDimension.getter(double result, double a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

double CGSize.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = *MEMORY[0x277D84678];
  if (v16 == *MEMORY[0x277D84678])
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == *MEMORY[0x277D84670])
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == *MEMORY[0x277D84680])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x277D84688])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x277D84660])
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != *MEMORY[0x277D84668])
    {
      v22 = a1;
      sub_24F92BA48();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != *MEMORY[0x277D84670] && v19 != *MEMORY[0x277D84680] && v19 != *MEMORY[0x277D84688] && v19 != *MEMORY[0x277D84660] && v19 != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

double CGSize.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

CGSize __swiftcall CGSize.clamped(atLeast:)(CGSize atLeast)
{
  if (v1 > atLeast.width)
  {
    atLeast.width = v1;
  }

  if (v2 > atLeast.height)
  {
    atLeast.height = v2;
  }

  return atLeast;
}

CGSize __swiftcall CGSize.clamped(atMost:)(CGSize atMost)
{
  if (atMost.width >= v1)
  {
    atMost.width = v1;
  }

  if (atMost.height >= v2)
  {
    atMost.height = v2;
  }

  return atMost;
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a3;
  v64 = a6;
  v61 = a5;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = swift_allocObject();
  LODWORD(v65) = *a4;
  v17 = swift_allocObject();
  swift_weakInit();
  v57 = a2;
  sub_24E60169C(a2, v15, &qword_27F228530, &unk_24F93C6E0);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = v18 + v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_24E911D90(v15, v20 + v18);
  *(v20 + v19) = v65;
  v21 = v66;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = v66;
  *(v20 + (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v22 = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a7;
  sub_24E60169C(a2, v67, &qword_27F228530, &unk_24F93C6E0);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_24EFBB710;
  *(v24 + 24) = v21;
  v62 = v24;
  *(v16 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v16 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  v65 = a7;
  swift_retain_n();
  swift_retain_n();
  v27 = v22;

  *(v16 + v26) = sub_24E60986C(v25);
  v28 = (v16 + qword_27F22F1A8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v16 + qword_27F22F1B0);
  *v29 = 0;
  v29[1] = 0;
  v60 = v29;
  v30 = (v16 + qword_27F22F1B8);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v16 + qword_27F22F1C0);
  *v31 = 0;
  v31[1] = 0;
  v59 = v31;
  v32 = (v16 + qword_27F22F1C8);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v16 + qword_27F39C788);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v16 + qword_27F39C790) = 0;
  *(v16 + qword_27F22F1D0) = 0;
  *(v16 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v16 + qword_27F39C798) = 0;
  v34 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20, &qword_24F989C60);
  swift_allocObject();
  *(v16 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v16 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40, &unk_24F9E1CB0);
  swift_allocObject();
  *(v16 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B8;
  swift_allocObject();
  *(v16 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v16 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v40 = sub_24F92ADA8();

  v41 = v23;

  v42 = v66;

  sub_24E601704(v57, &qword_27F228530, &unk_24F93C6E0);
  *(v16 + v39) = v40;
  v43 = qword_27F22F1E0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v45 = *(*(v44 - 8) + 56);
  v45(v16 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v63;
  v45(v16 + qword_27F22F1E8, 1, 1, v46);
  *(v16 + 16) = v42;
  sub_24E911D90(v67, v16 + qword_27F39C7D0);
  *v28 = sub_24EFBB4B8;
  v28[1] = v27;
  *v30 = 0;
  v30[1] = 0;
  if (v47)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = sub_24E965688;
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  v50 = v59;
  v51 = v60;
  *v60 = v49;
  v51[1] = v48;
  *v50 = sub_24EFBB5AC;
  v50[1] = v41;
  v52 = v58;
  v53 = v62;
  *v58 = sub_24ECF3DB0;
  v52[1] = v53;
  v54 = v65;
  *(v16 + qword_27F22F1F0) = v64;
  *(v16 + qword_27F39C7D8) = v54;
  return v16;
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v71 = a3;
  v72 = a6;
  v70 = a5;
  v74 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  LODWORD(v73) = *a4;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = a2;
  v66 = a2;
  sub_24E60169C(a2, v17, &qword_27F228530, &unk_24F93C6E0);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = v20 + v14;
  v22 = (v20 + v14) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_24E911D90(v17, v23 + v20);
  *(v23 + v21) = v73;
  v24 = v74;
  *(v23 + v22 + 8) = v74;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a7;
  sub_24E60169C(v19, v75, &qword_27F228530, &unk_24F93C6E0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24EFBBB70;
  *(v26 + 24) = v24;
  v69 = v26;
  *(v8 + qword_27F22F198) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v8 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v28 = qword_27F39C780;
  v73 = a7;
  swift_retain_n();
  swift_retain_n();

  *(v8 + v28) = sub_24E60986C(v27);
  v29 = (v8 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v8 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v8 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v8 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v67 = v32;
  v33 = (v8 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v68 = v33;
  v34 = (v8 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v8 + qword_27F39C790) = 0;
  *(v8 + qword_27F22F1D0) = 0;
  *(v8 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v8 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20, &qword_24F989C60);
  swift_allocObject();
  *(v8 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v8 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40, &unk_24F9E1CB0);
  swift_allocObject();
  *(v8 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v8 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v8 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v41 = sub_24F92ADA8();

  v70 = v25;

  v42 = v74;

  sub_24E601704(v66, &qword_27F228530, &unk_24F93C6E0);
  *(v8 + v40) = v41;
  v43 = qword_27F22F1E0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v45 = *(*(v44 - 8) + 56);
  v45(v8 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v71;
  v45(v8 + qword_27F22F1E8, 1, 1, v46);
  *(v8 + 16) = v42;
  sub_24E911D90(v75, v8 + qword_27F39C7D0);
  v48 = *v29;
  v49 = v29[1];
  *v29 = sub_24EFBBB6C;
  v29[1] = v23;
  sub_24E824448(v48, v49);
  v50 = *v31;
  v51 = v31[1];
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v50, v51);
  if (v47)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v47;
    v53 = sub_24EC02BCC;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  v55 = *v30;
  v54 = v30[1];
  *v30 = v53;
  v30[1] = v52;
  sub_24E824448(v55, v54);
  v56 = v67;
  v57 = *v67;
  v58 = v67[1];
  v59 = v70;
  *v67 = sub_24EFBBB98;
  v56[1] = v59;
  sub_24E824448(v57, v58);
  v61 = v68;
  v60 = v69;
  v62 = *v68;
  v63 = v68[1];
  *v68 = sub_24ECF4148;
  v61[1] = v60;
  sub_24E824448(v62, v63);
  v64 = v73;
  *(v8 + qword_27F22F1F0) = v72;
  *(v8 + qword_27F39C7D8) = v64;
  return v8;
}

uint64_t sub_24EFBB0B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EFBB0EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_24E60169C(a3, v11, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0, &qword_24F985300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235938, &qword_24F9B8BB0);
    sub_24EFBBAF8();
    swift_allocError();
    *v16 = 0;
    return sub_24F92A978();
  }

  v25 = a6;
  (*(v13 + 32))(v15, v11, v12);
  v18 = sub_24F91F398();
  v20 = v19;
  if (a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_24F92CE08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
  sub_24F92BF18();
  v22 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v26);

  *&v26 = 0xD00000000000001BLL;
  *(&v26 + 1) = 0x800000024FA5A900;
  v27 = v18;
  v28 = v20;
  v29 = v21 & 1;
  v30 = v22;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v23 = sub_24F929C08();

  v24 = sub_24EB479C0(&v26, v23, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

  sub_24ED08798(&v26);

  (*(v13 + 8))(v15, v12);
  return v24;
}

uint64_t sub_24EFBB4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

  return v5;
}

uint64_t sub_24EFBB5B4(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0, &unk_24F945320);
  if (v7[1])
  {
    sub_24E612B0C(&v6, v8);
    sub_24E643A9C(v8, v7);
    *&v6 = 0xD00000000000001FLL;
    *(&v6 + 1) = 0x800000024FA5A960;
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v3 = sub_24EB47E18(&v6, a2, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

    sub_24ED08844(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0, &qword_24F985300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235938, &qword_24F9B8BB0);
    sub_24EFBBAF8();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EFBB7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EFBB808()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EFBB988(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFBB0EC(a1, v6, v1 + v4, v7, v8, v9);
}

uint64_t sub_24EFBBA48()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F235928;
  if (!qword_27F235928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EFBBAF8()
{
  result = qword_27F235940;
  if (!qword_27F235940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235938, &qword_24F9B8BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235940);
  }

  return result;
}

uint64_t Artwork.Crop.preferredContentMode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 25186 && v2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {
    return 1;
  }

  if (v1 == 24934 && v2 == 0xE200000000000000)
  {
    return 0;
  }

  v5 = sub_24F92CE08();
  result = 0;
  v7 = v1 == 24948 && v2 == 0xE200000000000000;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_24F92CE08() & 1) != 0 || v1 == 0x7070412E45474D44 && v2 == 0xEC00000031305453 || (sub_24F92CE08())
    {
      return 0;
    }

    if (v1 == 0x435370412E424353 && v2 == 0xEC00000031304C42)
    {
      return 8;
    }

    v8 = sub_24F92CE08();
    v10 = v1 == 0x435370412E424353 && v2 == 0xEC00000032305342;
    result = 8;
    if ((v8 & 1) == 0 && !v10)
    {
      if (sub_24F92CE08())
      {
        return 8;
      }

      if (v1 == 0x435370412E424353 && v2 == 0xEC00000032304C42)
      {
        return 7;
      }

      else
      {
        v11 = sub_24F92CE08();
        v13 = v1 == 0x435370412E424353 && v2 == 0xEC00000031305342;
        result = 7;
        if ((v11 & 1) == 0 && !v13)
        {
          if (sub_24F92CE08())
          {
            return 7;
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Artwork.Crop.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static Artwork.Crop.condensedSearchStory.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DMGE.AppST01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTile.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTileRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPill.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPillRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Artwork.Crop.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_24EFBBFE0()
{
  result = qword_27F235948;
  if (!qword_27F235948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235948);
  }

  return result;
}

uint64_t sub_24EFBC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFBC130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsSingleColumnView(uint64_t a1)
{
  result = qword_27F235950;
  if (!qword_27F235950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFBC254@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235968, &qword_24F9B8D10);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v99 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235970, &qword_24F9B8D18);
  MEMORY[0x28223BE20](v5 - 8);
  v123 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v99 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235978, &qword_24F9B8D20);
  MEMORY[0x28223BE20](v114);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v99 - v12;
  MEMORY[0x28223BE20](v14);
  v125 = &v99 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C468, &qword_24F990280);
  v16 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v99 - v19;
  sub_24EC5F4E8();
  v119 = v20;
  sub_24F921D38();
  v21 = type metadata accessor for AchievementDetails(0);
  v22 = (a1 + v21[13]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v27 = v22[4];
  v28 = v22[5];
  if (v24)
  {
    v117 = v22[2];
    v118 = v23;
    v115 = v27;
    v116 = v26;
    v124 = v28;
  }

  else
  {
    v117 = 0;
    v118 = 0;
    v115 = 0;
    v116 = 0;
    v124 = 0;
  }

  v120 = v24;
  sub_24E68FE2C(v23, v24, v25, v26, v27, v28);
  v29 = v125;
  sub_24F9271E8();
  v30 = sub_24F9251C8();
  v31 = sub_24F925808();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C450, &qword_24F990240);
  v33 = v29 + *(v32 + 36);
  *v33 = v30;
  *(v33 + 4) = v31;
  LOBYTE(v30) = sub_24F925868();
  v108 = (a1 + *(type metadata accessor for AchievementDetailsSingleColumnView(0) + 20));
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235980, &qword_24F9B8D28);
  v43 = v29 + *(v42 + 36);
  *v43 = v30;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v45 = v29 + *(v114 + 36);
  *v45 = KeyPath;
  *(v45 + 8) = 0;
  v46 = *(a1 + v21[7]);
  v110 = v9;
  v111 = v16;
  if (v46 && *(v46 + 16))
  {
    v47 = v13;
    v99 = v21;
    v48 = (a1 + v21[8]);
    v49 = *v48;
    v50 = v48[1];
    v102 = a1;
    v103 = v49;
    v51 = qword_27F210E90;

    v104 = v50;

    if (v51 != -1)
    {
      swift_once();
    }

    memcpy(v127, &xmmword_27F237800, sizeof(v127));
    memcpy(v126, &xmmword_27F237800, sizeof(v126));
    LOBYTE(v128[0]) = 0;
    sub_24E76A93C(v127, &v129);
    sub_24F926F28();
    v101 = v129;
    v52 = v130;
    v100 = v130;
    v53 = v47;
    sub_24F9271E8();
    v54 = sub_24F9251C8();
    v55 = sub_24F925808();
    v56 = v47 + *(v32 + 36);
    *v56 = v54;
    *(v56 + 4) = v55;
    v57 = sub_24F925868();
    sub_24F923318();
    v58 = v47 + *(v42 + 36);
    *v58 = v57;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    *(v58 + 32) = v62;
    *(v58 + 40) = 0;
    v63 = swift_getKeyPath();
    v64 = v47 + *(v114 + 36);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v105;
    sub_24E60169C(v47, v105, &qword_27F235978, &qword_24F9B8D20);
    v128[0] = v46;
    v66 = v103;
    v67 = v104;
    v128[1] = v103;
    v128[2] = v104;
    memcpy(&v128[3], v126, 0x178uLL);
    v68 = v101;
    LOBYTE(v128[50]) = v101;
    v128[51] = v52;
    v69 = v106;
    memcpy(v106, v128, 0x1A0uLL);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235990, &qword_24F9B8D60);
    sub_24E60169C(v65, v69 + *(v70 + 48), &qword_27F235978, &qword_24F9B8D20);
    sub_24E645724(v128, &v129);
    sub_24E601704(v53, &qword_27F235978, &qword_24F9B8D20);
    sub_24E601704(v65, &qword_27F235978, &qword_24F9B8D20);
    v129 = v46;
    v130 = v66;
    v131 = v67;
    memcpy(v132, v126, 0x178uLL);
    LOBYTE(v132[47]) = v68;
    v13 = v53;
    v133 = v100;
    sub_24EC5F494(&v129);
    v71 = v110;
    sub_24EFBCC6C(v69, v110);
    (*(v112 + 56))(v71, 0, 1, v113);
    v16 = v111;
    a1 = v102;
    v21 = v99;
  }

  else
  {
    (*(v112 + 56))(v9, 1, 1, v113);
    v71 = v9;
  }

  v72 = (a1 + v21[6]);
  v73 = v72[1];
  v105 = *v72;
  v74 = v105;
  v75 = (a1 + v21[9]);
  v77 = *v75;
  v76 = v75[1];
  v114 = v77;
  v112 = v73;
  v113 = v76;
  memcpy(v127, v108, sizeof(v127));
  memcpy(v126, v108, sizeof(v126));
  v108 = 0x800000024FA58410;
  v106 = *MEMORY[0x277CDA710];
  v78 = *(v16 + 16);
  v79 = v121;
  v80 = v122;
  v78(v121, v119, v122);
  sub_24E60169C(v125, v13, &qword_27F235978, &qword_24F9B8D20);
  v107 = v13;
  v81 = v123;
  sub_24E60169C(v71, v123, &qword_27F235970, &qword_24F9B8D18);
  v82 = v109;
  v78(v109, v79, v80);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235988, &qword_24F9B8D58);
  v84 = &v82[v83[12]];
  v85 = v120;
  *v84 = v118;
  *(v84 + 1) = v85;
  v86 = v116;
  *(v84 + 2) = v117;
  *(v84 + 3) = v86;
  v87 = v124;
  *(v84 + 4) = v115;
  *(v84 + 5) = v87;
  v124 = v87;
  sub_24E60169C(v13, &v82[v83[16]], &qword_27F235978, &qword_24F9B8D20);
  sub_24E60169C(v81, &v82[v83[20]], &qword_27F235970, &qword_24F9B8D18);
  v88 = v83[24];
  v128[0] = v74;
  v128[1] = v112;
  v128[2] = v114;
  v128[3] = v113;
  memcpy(&v128[4], v126, 0x178uLL);
  v128[51] = 0xD000000000000013;
  v89 = v108;
  v128[52] = v108;
  v90 = v106;
  v128[53] = v106;
  LOBYTE(v128[54]) = 1;
  v128[55] = 0x3FF0000000000000;
  memcpy(&v82[v88], v128, 0x1C0uLL);

  sub_24E76A93C(v127, &v129);
  v109 = v90;
  v92 = v117;
  v91 = v118;
  v93 = v120;
  v94 = v115;
  v95 = v116;
  sub_24E68FE2C(v118, v120, v117, v116, v115, v87);
  sub_24E845D18(v128, &v129);
  sub_24E601704(v110, &qword_27F235970, &qword_24F9B8D18);
  sub_24E601704(v125, &qword_27F235978, &qword_24F9B8D20);
  v96 = *(v111 + 8);
  v97 = v122;
  v96(v119, v122);
  v129 = v105;
  v130 = v112;
  v131 = v114;
  v132[0] = v113;
  memcpy(&v132[1], v126, 0x178uLL);
  v133 = 0xD000000000000013;
  v134 = v89;
  v135 = v109;
  v136 = 1;
  v137 = 0x3FF0000000000000;
  sub_24EC5F438(&v129);
  sub_24E601704(v123, &qword_27F235970, &qword_24F9B8D18);
  sub_24E601704(v107, &qword_27F235978, &qword_24F9B8D20);
  sub_24E687F7C(v91, v93, v92, v95, v94, v124);
  return (v96)(v121, v97);
}

uint64_t sub_24EFBCC14@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235960, &qword_24F9B8D08);
  return sub_24EFBC254(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_24EFBCC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235968, &qword_24F9B8D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFBCCE0()
{
  result = qword_27F235998;
  if (!qword_27F235998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359A0, &qword_24F9B8D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235998);
  }

  return result;
}

uint64_t sub_24EFBCD54()
{
  if (qword_27F210D28 != -1)
  {
    result = swift_once();
  }

  byte_27F39D1B0 = byte_27F39D1B1;
  return result;
}

uint64_t sub_24EFBCDAC()
{
  if (qword_27F210D20 != -1)
  {
    swift_once();
  }

  return byte_27F39D1B0;
}

void sub_24EFBCE00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;

    if (v2 == 0xD000000000000017 && 0x800000024FA44AC0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_24F92CE08();
    }
  }

  byte_27F39D1B1 = v1 & 1;
}

uint64_t sub_24EFBCEEC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_24EFBD084(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_24EFBD228(uint64_t a1)
{
  sub_24EFBD3AC(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EFBD3AC(319, &qword_27F2359B8, &type metadata for Bullet, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v3 <= 0x3F)
      {
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24F928818();
          if (v5 <= 0x3F)
          {
            sub_24E684120(319);
            if (v6 <= 0x3F)
            {
              sub_24E6CAF48(319);
              if (v7 <= 0x3F)
              {
                sub_24EFBD3AC(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_24EFBD3AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_24EFBD428(uint64_t a1)
{
  v1 = sub_24F927618();
  xmmword_27F39D1C0 = xmmword_24F947C50;
  *algn_27F39D1D0 = xmmword_24F9B8DC0;
  *&xmmword_27F39D1E0 = v1;
  *(&xmmword_27F39D1E0 + 1) = v2;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39D1F0 = result;
  xmmword_27F39D200 = xmmword_24F98D270;
  qword_27F39D210 = 0x4036000000000000;
  return result;
}

__n128 sub_24EFBD478(uint64_t a1)
{
  v1 = sub_24F927618();
  xmmword_27F39D220 = xmmword_24F947C70;
  *algn_27F39D230 = xmmword_24F9B8DC0;
  *&xmmword_27F39D240 = v1;
  *(&xmmword_27F39D240 + 1) = v2;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39D250 = result;
  xmmword_27F39D260 = xmmword_24F98D270;
  qword_27F39D270 = 0x4030000000000000;
  return result;
}

double sub_24EFBD4C8@<D0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v62 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v63 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v58 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v60 = v1;
  sub_24F769764(v23);
  v24 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v24;
  v24(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v25 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v25], &qword_27F215598, &qword_24F945EF0);
  v66 = v3;
  v26 = v3[6];
  if (v26(v9, 1, v2) != 1)
  {
    v27 = v65;
    sub_24E60169C(v9, v65, &qword_27F215598, &qword_24F945EF0);
    if (v26(&v9[v25], 1, v2) != 1)
    {
      v64 = v26;
      v29 = &v9[v25];
      v30 = v54;
      (v66[4])(v54, v29, v2);
      sub_24EFBF0A0(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v30, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v65, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v27, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v64 = v26;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v64(&v9[v25], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v63;
  v56(v63, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v64;
  if (v64(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F210D38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39D220;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v53;
  sub_24E60169C(v35, v53, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v32;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v54;
  (v66[4])(v54, v47, v2);
  sub_24EFBF0A0(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210D30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39D1C0;
LABEL_18:
  v39 = v38[3];
  v70 = v38[2];
  v71 = v39;
  v72 = v38[4];
  v73 = *(v38 + 10);
  v40 = v38[1];
  v68 = *v38;
  v69 = v40;
  v41 = v71;
  v42 = v67;
  *(v67 + 32) = v70;
  *(v42 + 48) = v41;
  *(v42 + 64) = v72;
  *(v42 + 80) = v73;
  result = *&v68;
  v44 = v69;
  *v42 = v68;
  *(v42 + 16) = v44;
  return result;
}

uint64_t sub_24EFBDD90@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v51 - v3;
  v61 = sub_24F929158();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v51 - v6;
  v7 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v54 = *(v7 - 8);
  v53 = *(v54 + 64);
  v8 = v7 - 8;
  v58 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359C0, &qword_24F9B8E80);
  MEMORY[0x28223BE20](v55);
  v12 = &v51 - v11;
  v13 = *(v1 + 72);
  v56 = *(v1 + 80);
  v57 = v13;
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v1 + 32, v14 + 32);
  v15 = v1 + *(v8 + 64);
  v16 = *v15;
  v51 = *(v15 + 8);
  LOBYTE(v68) = v16;
  v69 = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v18 = v65;
  v17 = v66;
  LOBYTE(v8) = v67;
  *(v12 + 6) = type metadata accessor for ProgressPerformAction(0);
  *(v12 + 7) = sub_24EFBF0A0(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 3);
  sub_24F928A98();
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v18;
  boxed_opaque_existential_1[2] = v17;
  *(boxed_opaque_existential_1 + 24) = v8;
  boxed_opaque_existential_1[5] = 0;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[4] = 0;
  *(v12 + 15) = 0;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  LOBYTE(v65) = v16;
  v66 = v51;
  sub_24F926F38();
  LOBYTE(v17) = v68;
  v20 = v52;
  v21 = *(v52 + 88);
  sub_24EFBEB48(v52, v10);
  v22 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v23 = swift_allocObject();
  sub_24EFBEBB0(v10, v23 + v22);
  sub_24EFBEB48(v20, v10);
  v24 = swift_allocObject();
  sub_24EFBEBB0(v10, v24 + v22);
  sub_24EFBEB48(v20, v10);
  v25 = swift_allocObject();
  sub_24EFBEBB0(v10, v25 + v22);
  v26 = v55;
  v27 = *(v55 + 136);
  v28 = type metadata accessor for HeaderPresentation(0);
  (*(*(v28 - 8) + 56))(&v12[v27], 1, 1, v28);
  v29 = &v12[v26[37]];
  LOBYTE(v68) = 0;

  sub_24F926F28();
  v30 = v66;
  *v29 = v65;
  *(v29 + 1) = v30;
  v31 = &v12[v26[38]];
  LOBYTE(v68) = 0;
  sub_24F926F28();
  v32 = v66;
  *v31 = v65;
  *(v31 + 1) = v32;
  v33 = &v12[v26[39]];
  v68 = 0;
  sub_24F926F28();
  v34 = v66;
  *v33 = v65;
  *(v33 + 1) = v34;
  v35 = v26[40];
  *&v12[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v36 = v26[41];
  *&v12[v36] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v37 = v26[42];
  *&v12[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v38 = &v12[v26[43]];
  *v38 = sub_24F923398() & 1;
  *(v38 + 1) = v39;
  v38[16] = v40 & 1;
  v41 = v56;
  *v12 = v57;
  *(v12 + 1) = v41;
  *(v12 + 2) = 0;
  v12[128] = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0;
  *(v12 + 8) = 0;
  v12[129] = v17;
  *(v12 + 17) = v21;
  *(v12 + 9) = xmmword_24F9B8DD0;
  *(v12 + 20) = sub_24EFBEC14;
  *(v12 + 21) = v23;
  *(v12 + 22) = sub_24EFBEFA8;
  *(v12 + 23) = v24;
  *(v12 + 24) = sub_24EFBF018;
  *(v12 + 25) = v25;
  *(v12 + 26) = sub_24E603210;
  *(v12 + 27) = 0;
  v12[v26[35]] = 7;
  v12[v26[36]] = 0;
  v42 = *(v58 + 48);
  v43 = sub_24F928818();
  v44 = *(v43 - 8);
  v45 = v59;
  (*(v44 + 16))(v59, v20 + v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v47 = v60;
  v46 = v61;
  sub_24F928F28();
  v48 = sub_24F921B48();
  v49 = v62;
  (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  sub_24E602068(&qword_27F2359C8, &qword_27F2359C0, &qword_24F9B8E80, &unk_24F9651C8);
  sub_24F925E58();
  sub_24E601704(v49, &qword_27F2157E8, &unk_24F940C00);
  (*(v63 + 8))(v47, v46);
  sub_24E601704(v45, &qword_27F2157F0, &qword_24F9846A0);
  return sub_24E601704(v12, &qword_27F2359C0, &qword_24F9B8E80);
}

void *sub_24EFBE56C@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_24EFBE61C(a2, __src);
  memcpy(__dst, __src, 0x151uLL);
  memcpy(v9, __src, 0x151uLL);
  sub_24E60169C(__dst, &v6, &qword_27F2359D0, &qword_24F9B8F50);
  sub_24E601704(v9, &qword_27F2359D0, &qword_24F9B8F50);
  return memcpy((a3 + 24), __dst, 0x151uLL);
}

uint64_t sub_24EFBE61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v30 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v30 = 0;
    v4 = 0;
  }

  sub_24EFBD4C8(&v40);
  KeyPath = swift_getKeyPath();
  v46 = 0;
  v5 = sub_24F925818();
  sub_24EFBD4C8(v92);
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v46;
  v29 = v46;
  v91 = 0;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];

  sub_24EFBD4C8(&v34);
  v28 = sub_24F925818();
  sub_24EFBD4C8(v93);
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&v47 = KeyPath;
  BYTE8(v47) = v14;
  *&v48 = v30;
  *(&v48 + 1) = v4;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  *&v54 = v45;
  v49 = v40;
  v50 = v41;
  BYTE8(v54) = v5;
  *&v55 = v7;
  *(&v55 + 1) = v9;
  *&v56 = v11;
  *(&v56 + 1) = v13;
  *__src = v47;
  *&__src[16] = v48;
  *&__src[64] = v42;
  *&__src[80] = v43;
  *&__src[32] = v40;
  *&__src[48] = v41;
  *&__src[128] = v55;
  *&__src[144] = v56;
  *&__src[96] = v44;
  *&__src[112] = v54;
  *&v58 = v15;
  *(&v58 + 1) = v16;
  *&v59[40] = v36;
  *&v59[56] = v37;
  *&v59[72] = v38;
  *v59 = v17;
  *&v59[88] = v39;
  *&v59[8] = v34;
  *&v59[24] = v35;
  LOBYTE(v60) = v28;
  *(&v60 + 1) = v18;
  *v61 = v20;
  *&v61[8] = v22;
  *&v61[16] = v24;
  v61[24] = 0;
  *&__src[280] = v60;
  *&__src[296] = *v61;
  *&__src[264] = *&v59[80];
  *&__src[305] = *&v61[9];
  *&__src[200] = *&v59[16];
  *&__src[216] = *&v59[32];
  *&__src[232] = *&v59[48];
  *&__src[248] = *&v59[64];
  *&__src[168] = v58;
  LOBYTE(v75) = 0;
  v57 = 0;
  __src[160] = 0;
  *&__src[184] = *v59;
  memcpy(a2, __src, 0x148uLL);
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v26 = v35;
  v63 = v34;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v62[0] = v15;
  v62[1] = v16;
  v62[2] = v17;
  v68 = v39;
  v64 = v26;
  v69 = v28;
  v70 = v19;
  v71 = v21;
  v72 = v23;
  v73 = v25;
  v74 = 0;
  sub_24E60169C(&v47, &v75, &qword_27F2359D8, &qword_24F9B8F58);
  sub_24E60169C(&v58, &v75, &qword_27F2359E0, &qword_24F9B8F60);
  sub_24E601704(v62, &qword_27F2359E0, &qword_24F9B8F60);
  v75 = KeyPath;
  v76 = v29;
  v77 = v30;
  v78 = v4;
  v81 = v42;
  v82 = v43;
  v83 = v44;
  v84 = v45;
  v79 = v40;
  v80 = v41;
  v85 = v5;
  v86 = v7;
  v87 = v9;
  v88 = v11;
  v89 = v13;
  v90 = 0;
  return sub_24E601704(&v75, &qword_27F2359D8, &qword_24F9B8F58);
}

double sub_24EFBEA14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_24EFBD4C8(v9);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  v6 = v9[3];
  *(a2 + 64) = v9[2];
  *(a2 + 80) = v6;
  *(a2 + 96) = v9[4];
  *(a2 + 112) = v10;
  result = *v9;
  v8 = v9[1];
  *(a2 + 32) = v9[0];
  *(a2 + 48) = v8;
  return result;
}

double sub_24EFBEAB0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = a1[3];

  sub_24EFBD4C8(v9);
  v6 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v6;
  *(a2 + 88) = v9[4];
  result = *v9;
  v8 = v9[1];
  *(a2 + 24) = v9[0];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 104) = v10;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24EFBEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFBEBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24EFBEC14@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_24EFBE56C(v5, a2);
}

uint64_t objectdestroyTm_46()
{
  v1 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 32));

  v3 = v1[10];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923E98();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24EFBEFA8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EFBEA14(v4, a1);
}

double sub_24EFBF018@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EFBEAB0(v4, a1);
}

uint64_t sub_24EFBF0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFBF100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFBF15C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFBF1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFBF238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFBF2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359C0, &qword_24F9B8E80);
  sub_24E602068(&qword_27F2359C8, &qword_27F2359C0, &qword_24F9B8E80, &unk_24F9651C8);
  return swift_getOpaqueTypeConformance2();
}

double sub_24EFBF368@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v5 = *(v2 + 5);
  v28[0] = *(v2 + 3);
  v28[1] = v5;
  v29 = *(v2 + 7);
  v6 = v2[9];
  v7 = *(v2 + 6);
  v31 = *(v2 + 5);
  v32 = v7;
  v25 = 0;
  v9 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v26[0] = v28[0];
  v26[1] = v5;
  v26[2] = v29;
  *v27 = v6;
  *&v27[8] = v31;
  *&v27[24] = v7;
  *&v27[40] = v10;
  v21 = v29;
  v22 = *v27;
  v23 = *&v27[16];
  v24 = *&v27[32];
  v19 = v28[0];
  v20 = v5;
  v30 = v6;
  v33 = v10;
  swift_bridgeObjectRetain_n();

  sub_24EC2037C(v26, v18);
  sub_24EC20440(v28);

  LOBYTE(v10) = v25;
  sub_24F927628();
  sub_24F9242E8();
  *(a2 + 8) = v6;
  v11 = v22;
  *(a2 + 72) = v21;
  *(a2 + 88) = v11;
  v12 = v24;
  *(a2 + 104) = v23;
  *(a2 + 120) = v12;
  v13 = v20;
  *(a2 + 40) = v19;
  *(a2 + 56) = v13;
  v14 = v18[2];
  *(a2 + 184) = v18[3];
  v15 = v18[5];
  *(a2 + 200) = v18[4];
  *(a2 + 216) = v15;
  *(a2 + 232) = v18[6];
  result = *v18;
  v17 = v18[1];
  *(a2 + 136) = v18[0];
  *(a2 + 152) = v17;
  *a2 = v4;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  *(a2 + 168) = v14;
  return result;
}

uint64_t sub_24EFBF544@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F926E08();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359E8, &unk_24F9D5820);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F0, &unk_24F9B9140);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v15 = sub_24F924848();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 24);
  if (!v20)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v45 = *(v1 + 24);
  v46 = v6;
  v44 = *(v1 + 16);
  static SystemAppIcon.from(iconName:)(v44, v20, &v73);
  v21 = v73;
  if (v73 == 4)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v42 = v4;
  v43 = v3;
  v78 = *(v1 + 8);
  v22 = *v1;
  v77 = *v1;
  if (v78 == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_24F92BDC8();
    v41 = a1;
    v24 = sub_24F9257A8();
    a1 = v41;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v77, &qword_27F218208, &qword_24F94E940);
    (*(v16 + 8))(v19, v15);
    v23 = *v68;
  }

  v25 = *(v1 + 48);
  LOBYTE(v68[0]) = v21;
  if (!sub_24EFFE798(v68, 0, v25, v25, v23))
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v41 = sub_24F926DE8();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x277CE0FE0], v48);
  v28 = sub_24F926E88();
  (*(v27 + 8))(v9, v26);
  sub_24F927618();
  sub_24F9238C8();
  v71 = 1;
  *&v70[6] = v74;
  *&v70[22] = v75;
  *&v70[38] = v76;
  sub_24F9242E8();
  v29 = sub_24F925838();
  sub_24F923318();
  *(v57 + 2) = *v70;
  *(&v57[1] + 2) = *&v70[16];
  *(&v57[2] + 2) = *&v70[32];
  *(&v57[6] + 8) = v64;
  *(&v57[7] + 8) = v65;
  *(&v57[8] + 8) = v66;
  *(&v57[9] + 8) = v67;
  *(&v57[3] + 8) = v61;
  *(&v57[4] + 8) = v62;
  v72 = 0;
  v56 = v28;
  LOWORD(v57[0]) = 1;
  *&v57[3] = *&v70[46];
  *(&v57[5] + 8) = v63;
  BYTE8(v57[10]) = v29;
  *&v58 = v30;
  *(&v58 + 1) = v31;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F8, &unk_24F9B9150);
  sub_24EFC15FC();
  v34 = v49;
  sub_24F9265E8();
  v68[12] = v58;
  v68[13] = v59;
  v69 = v60;
  v68[8] = v57[7];
  v68[9] = v57[8];
  v68[10] = v57[9];
  v68[11] = v57[10];
  v68[4] = v57[3];
  v68[5] = v57[4];
  v68[6] = v57[5];
  v68[7] = v57[6];
  v68[0] = v56;
  v68[1] = v57[0];
  v68[2] = v57[1];
  v68[3] = v57[2];
  sub_24E601704(v68, &qword_27F2359F8, &unk_24F9B9150);
  v35 = v51;
  sub_24F923FE8();
  sub_24E601704(v34, &qword_27F2359E8, &unk_24F9D5820);
  v56 = 0u;
  v57[0] = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = v46;
  sub_24F9297A8();
  sub_24E601704(v55, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v56, &qword_27F2129B0, &unk_24F945320);
  sub_24EFC17A0();
  v37 = v50;
  sub_24F925EE8();

  (*(v42 + 8))(v36, v43);
  sub_24E601704(v35, &qword_27F2359E8, &unk_24F9D5820);
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(a1, v37, v54);
  return (*(v39 + 56))(a1, 0, 1, v38);
}

uint64_t sub_24EFBFCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78, &qword_24F9B9388);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v17 & 1;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17 & 1);

  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B80, &qword_24F9B9390) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  sub_24EFC2198();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24E601704(v7, &qword_27F235B78, &qword_24F9B9388);
}

uint64_t sub_24EFBFF94@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A30, &qword_24F9B9168);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26[-v6 - 8];
  v8 = *(v1 + 88);
  if (v8)
  {
    v25 = v4;
    v9 = sub_24F924C98();
    v10 = *(v1 + 56);
    *v7 = v9;
    *(v7 + 1) = v10;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A38, &qword_24F9B9170);
    sub_24F40715C(v8);
    v27 = v11;
    swift_getKeyPath();
    v12 = swift_allocObject();
    v13 = *(v1 + 48);
    v12[3] = *(v1 + 32);
    v12[4] = v13;
    v14 = *(v1 + 80);
    v12[5] = *(v1 + 64);
    v12[6] = v14;
    v15 = *(v1 + 16);
    v12[1] = *v1;
    v12[2] = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_24EFC1894;
    *(v16 + 24) = v12;
    sub_24EC2037C(v1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A40, &qword_24F9B9198);
    type metadata accessor for BulletsView.BulletView(0);
    sub_24E602068(&qword_27F235A48, &qword_27F235A40, &qword_24F9B9198, MEMORY[0x277D83980]);
    sub_24EFBF0A0(&qword_27F235A50, type metadata accessor for BulletsView.BulletView, &unk_24F9B9250);
    sub_24F927228();
    v17 = sub_24F925838();
    sub_24F923318();
    v18 = &v7[*(v3 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_24EFC18F4(v7, a1);
    return (*(v25 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v24 = *(v4 + 56);

    return v24(a1, 1, 1, v3, v5);
  }
}

double sub_24EFC0298@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for BulletsView.BulletView(0);
  v12 = (a3 + v11[5]);
  *v12 = v6;
  v12[1] = v5;
  v13 = (a3 + v11[6]);
  *v13 = v8;
  v13[1] = v7;
  v14 = (a3 + v11[7]);
  *v14 = v10;
  v14[1] = v9;
  v15 = a3 + v11[8];
  v16 = *(a2 + 48);
  *(v15 + 2) = *(a2 + 32);
  *(v15 + 3) = v16;
  *(v15 + 4) = *(a2 + 64);
  *(v15 + 10) = *(a2 + 80);
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 1) = v17;

  return result;
}

uint64_t sub_24EFC038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AF8, &qword_24F9B92B8);
  MEMORY[0x28223BE20](v26[0]);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B00, &qword_24F9B92C0);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AE8, &qword_24F9B92B0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F769788(v14);
  v15 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_24F924C98();
    v17 = *(a1 + *(type metadata accessor for BulletsView.BulletView(0) + 32) + 80);
    *v4 = v16;
    *(v4 + 1) = v17;
    v4[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B10, &unk_24F9B92D0);
    sub_24EFC0778(&v4[*(v18 + 44)]);
    v19 = &qword_27F235AF8;
    v20 = &qword_24F9B92B8;
    sub_24E60169C(v4, v7, &qword_27F235AF8, &qword_24F9B92B8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8, &qword_24F9B92B0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8, &qword_24F9B92B8, MEMORY[0x277CE1198]);
    sub_24F924E28();
    v21 = v4;
  }

  else
  {
    v22 = sub_24F924988();
    v23 = *(a1 + *(type metadata accessor for BulletsView.BulletView(0) + 32) + 80);
    *v10 = v22;
    *(v10 + 1) = v23;
    v10[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B08, &qword_24F9B92C8);
    sub_24EFC0778(&v10[*(v24 + 44)]);
    v19 = &qword_27F235AE8;
    v20 = &qword_24F9B92B0;
    sub_24E60169C(v10, v7, &qword_27F235AE8, &qword_24F9B92B0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8, &qword_24F9B92B0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8, &qword_24F9B92B8, MEMORY[0x277CE1198]);
    sub_24F924E28();
    v21 = v10;
  }

  return sub_24E601704(v21, v19, v20);
}

uint64_t sub_24EFC0778@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B18, &qword_24F9B92E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B20, &qword_24F9B92E8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  *v18 = sub_24F924C88();
  *(v18 + 1) = 0;
  v18[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B28, &qword_24F9B92F0);
  sub_24EFC0AB4(v2, v11);
  sub_24F923D58();
  sub_24EFC2010();
  sub_24F9265E8();
  sub_24E601704(v11, &qword_27F235B18, &qword_24F9B92E0);
  type metadata accessor for BulletsView.BulletView(0);
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v18[*(v13 + 44)];
  v20 = v28;
  *v19 = v27;
  *(v19 + 1) = v20;
  *(v19 + 2) = v29;
  *v8 = sub_24F924C98();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10, &unk_24F98D8D0);
  sub_24EFC104C(v2, &v8[*(v21 + 44)]);
  sub_24E60169C(v18, v15, &qword_27F235B20, &qword_24F9B92E8);
  sub_24E60169C(v8, v5, &qword_27F220B08, &unk_24F964BA0);
  v22 = v26;
  sub_24E60169C(v15, v26, &qword_27F235B20, &qword_24F9B92E8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B68, &qword_24F9B9318);
  sub_24E60169C(v5, v22 + *(v23 + 48), &qword_27F220B08, &unk_24F964BA0);
  sub_24E601704(v8, &qword_27F220B08, &unk_24F964BA0);
  sub_24E601704(v18, &qword_27F235B20, &qword_24F9B92E8);
  sub_24E601704(v5, &qword_27F220B08, &unk_24F964BA0);
  return sub_24E601704(v15, &qword_27F235B20, &qword_24F9B92E8);
}

uint64_t sub_24EFC0AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223948, &qword_24F96EB18);
  MEMORY[0x28223BE20](v31[0]);
  v10 = (v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B70, &qword_24F9B9320);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = sub_24F926E08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(type metadata accessor for BulletsView.BulletView(0) + 20));
  if (*v18 == 0x732E322E7473696CLL && v18[1] == 0xEB00000000726174 || (sub_24F92CE08() & 1) != 0)
  {
    sub_24F926E98();
    (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
    v19 = sub_24F926E88();

    (*(v15 + 8))(v17, v14);
    *v13 = v19;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    sub_24E6E97A8();
    sub_24E99EB08();
    return sub_24F924E28();
  }

  else
  {

    sub_24F926E48();
    sub_24F924CF8();
    v21 = sub_24F924D08();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    v22 = sub_24F926E58();

    sub_24E601704(v8, &qword_27F214410, &unk_24F9576A0);
    v23 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v25 = *MEMORY[0x277CE1050];
    v26 = sub_24F926E78();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v10 = v22;
    v27 = sub_24F925908();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = sub_24F925968();
    sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
    KeyPath = swift_getKeyPath();
    v30 = (v10 + *(v31[0] + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    sub_24E60169C(v10, v13, &qword_27F223948, &qword_24F96EB18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    sub_24E6E97A8();
    sub_24E99EB08();
    sub_24F924E28();
    return sub_24E601704(v10, &qword_27F223948, &qword_24F96EB18);
  }
}

uint64_t sub_24EFC104C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v47 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v45 - v6;
  v46 = type metadata accessor for BulletsView.BulletView(0);
  v7 = (v2 + *(v46 + 24));
  v8 = v7[1];
  v53 = *v7;
  v54 = v8;
  v45[1] = sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  sub_24F9258D8();
  v14 = sub_24F925C98();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;

  sub_24E600B40(v9, v11, v13 & 1);

  v53 = v14;
  v54 = v16;
  LOBYTE(v2) = v2 & 1;
  v55 = v2;
  v56 = v19;
  sub_24F9268B8();
  sub_24E600B40(v14, v16, v2);

  v20 = (v47 + *(v46 + 28));
  v21 = v20[1];
  v53 = *v20;
  v54 = v21;

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  sub_24F9258D8();
  v27 = sub_24F925C98();
  v29 = v28;
  LOBYTE(v11) = v30;

  sub_24E600B40(v22, v24, v26 & 1);

  LODWORD(v53) = sub_24F9251C8();
  v31 = sub_24F925C58();
  v33 = v32;
  LOBYTE(v22) = v34;
  v47 = v35;
  sub_24E600B40(v27, v29, v11 & 1);

  v36 = v49;
  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v48;
  v40 = v51;
  v38(v49, v48, v51);
  v41 = v52;
  v38(v52, v36, v40);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50, &qword_24F964C20) + 48)];
  *v42 = v31;
  *(v42 + 1) = v33;
  LOBYTE(v22) = v22 & 1;
  v42[16] = v22;
  *(v42 + 3) = v47;
  sub_24E5FD138(v31, v33, v22);
  v43 = *(v37 + 8);

  v43(v39, v40);
  sub_24E600B40(v31, v33, v22);

  return (v43)(v36, v40);
}

uint64_t sub_24EFC13E8()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AC0, &qword_24F9B92A0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24EFC038C(v0, &v9 - v6);
  sub_24F9254E8();
  sub_24EFC1EB0(&qword_27F235AC8, &qword_27F235AC0, &qword_24F9B92A0, sub_24EFC1F2C);
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F235AC0, &qword_24F9B92A0);
}

unint64_t sub_24EFC15FC()
{
  result = qword_27F235A00;
  if (!qword_27F235A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359F8, &unk_24F9B9150);
    sub_24EFC1688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A00);
  }

  return result;
}

unint64_t sub_24EFC1688()
{
  result = qword_27F235A08;
  if (!qword_27F235A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A10, &unk_24F9D5830);
    sub_24EFC1714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A08);
  }

  return result;
}

unint64_t sub_24EFC1714()
{
  result = qword_27F235A18;
  if (!qword_27F235A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A20, &qword_24F9B9160);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A18);
  }

  return result;
}

unint64_t sub_24EFC17A0()
{
  result = qword_27F235A28;
  if (!qword_27F235A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359E8, &unk_24F9D5820);
    sub_24EFC15FC();
    sub_24EFBF0A0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A28);
  }

  return result;
}

uint64_t sub_24EFC185C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFC189C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFC18F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A30, &qword_24F9B9168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFC1988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFC1A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EFC1B30(uint64_t a1)
{
  sub_24E6CAF48(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EFC1BBC()
{
  result = qword_27F235A68;
  if (!qword_27F235A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A70, &qword_24F9B91D8);
    sub_24E602068(&qword_27F235A78, &qword_27F235A80, &unk_24F9B91E0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A68);
  }

  return result;
}

unint64_t sub_24EFC1C78()
{
  result = qword_27F235A88;
  if (!qword_27F235A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A90, qword_24F9D58B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359E8, &unk_24F9D5820);
    sub_24EFC17A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A88);
  }

  return result;
}

unint64_t sub_24EFC1D3C()
{
  result = qword_27F235A98;
  if (!qword_27F235A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AA0, &qword_24F9B91F0);
    sub_24EFC1DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A98);
  }

  return result;
}

unint64_t sub_24EFC1DC0()
{
  result = qword_27F235AA8;
  if (!qword_27F235AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A30, &qword_24F9B9168);
    sub_24E602068(&qword_27F235AB0, &qword_27F235AB8, qword_24F9B91F8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235AA8);
  }

  return result;
}

uint64_t sub_24EFC1EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24EFC1F2C()
{
  result = qword_27F235AD0;
  if (!qword_27F235AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AD8, &qword_24F9B92A8);
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8, &qword_24F9B92B0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8, &qword_24F9B92B8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235AD0);
  }

  return result;
}

unint64_t sub_24EFC2010()
{
  result = qword_27F235B30;
  if (!qword_27F235B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B18, &qword_24F9B92E0);
    sub_24EFC1EB0(&qword_27F235B38, &qword_27F235B40, &qword_24F9B92F8, sub_24EFC20F4);
    sub_24E602068(&qword_27F235B58, &qword_27F235B60, &unk_24F9B9308, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B30);
  }

  return result;
}

unint64_t sub_24EFC20F4()
{
  result = qword_27F235B48;
  if (!qword_27F235B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B50, &qword_24F9B9300);
    sub_24E6E97A8();
    sub_24E99EB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B48);
  }

  return result;
}

unint64_t sub_24EFC2198()
{
  result = qword_27F235B88;
  if (!qword_27F235B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78, &qword_24F9B9388);
    sub_24EFC2250();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B88);
  }

  return result;
}

unint64_t sub_24EFC2250()
{
  result = qword_27F235B90;
  if (!qword_27F235B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B80, &qword_24F9B9390);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B90);
  }

  return result;
}

uint64_t sub_24EFC230C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AC0, &qword_24F9B92A0);
  sub_24EFC1EB0(&qword_27F235AC8, &qword_27F235AC0, &qword_24F9B92A0, sub_24EFC1F2C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFC23A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78, &qword_24F9B9388);
  sub_24EFC2198();
  return swift_getOpaqueTypeConformance2();
}

GameStoreKit::MixedMediaLockup::LockupPosition_optional __swiftcall MixedMediaLockup.LockupPosition.init(rawValue:)(Swift::String rawValue)
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

uint64_t MixedMediaLockup.LockupPosition.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24EFC24FC@<X0>(char *a2@<X8>)
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

uint64_t MixedMediaLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_24F9285B8();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = sub_24F92AC28();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v60 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v72 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v65 = v10;
  v28 = *(v10 + 8);
  v68 = v10 + 8;
  v69 = v9;
  v67 = v28;
  v28(v21, v9);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
    type metadata accessor for Trailers();
    sub_24F928398();
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v75(v61, v74);
    sub_24EFC3180(&qword_27F235B98, type metadata accessor for Trailers, &protocol conformance descriptor for Trailers);
    sub_24F929548();
    v31 = v77;
    if (v77)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24F941C80;
      *(v32 + 32) = v31;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v33 = v74;
  }

  else
  {
    (*(v23 + 32))(v27, v8, v22);
    (*(v23 + 16))(v60, v27, v22);
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v33 = v74;
    (v75)(v61, v74, v73);
    type metadata accessor for Trailers();
    sub_24EFC3180(&qword_27F235B98, type metadata accessor for Trailers, &protocol conformance descriptor for Trailers);
    v34 = sub_24F92B6A8();
    v35 = v27;
    v32 = v34;
    (*(v23 + 8))(v35, v22);
  }

  *(v70 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = v32;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v36 = v75;
  (v75)(v29, v33, v30);
  v37 = v33;
  sub_24EFC3180(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v38 = v70;
  *(v70 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = v77;
  type metadata accessor for Video(0);
  sub_24F928398();
  v36(v29, v37, v30);
  v75 = v36;
  sub_24EFC3180(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = v77;
  sub_24F928398();
  v39 = v74;
  v36(v29, v74, v30);
  type metadata accessor for Screenshots();
  sub_24EFC3180(&qword_27F2273E0, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  v40 = v38;
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = sub_24F92B698();
  sub_24F928398();
  sub_24EFC3024();
  sub_24F928248();
  v41 = v69;
  v42 = v67;
  v67(v18, v69);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v77;
  sub_24F928398();
  sub_24EFC3078();
  sub_24F928208();
  v42(v18, v41);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v77;
  v43 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235BB0, &unk_24F9B93F8);
  sub_24F928398();
  v44 = v73;
  v45 = v75;
  (v75)(v29, v39, v73);
  v61 = sub_24EFC30CC();
  sub_24F929548();
  *(v43 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v77;
  sub_24F928398();
  v45(v29, v39, v44);
  v46 = v69;
  v47 = v72;
  sub_24F929548();
  v48 = v43;
  v49 = v67;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v77;
  v50 = v62;
  sub_24F928398();
  v51 = sub_24F928278();
  v49(v50, v46);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = (v51 == 2) | v51 & 1;
  v52 = v63;
  sub_24F928398();
  v53 = sub_24F928278();
  v49(v52, v46);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v53 & 1;
  v54 = v64;
  (*(v65 + 16))(v64, v47, v46);
  v55 = v66;
  v57 = v73;
  v56 = v74;
  (v75)(v66, v74, v73);
  v58 = Lockup.init(deserializing:using:)(v54, v55);
  (*(v71 + 8))(v56, v57);
  v49(v47, v46);
  return v58;
}

unint64_t sub_24EFC3024()
{
  result = qword_27F235BA0;
  if (!qword_27F235BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BA0);
  }

  return result;
}

unint64_t sub_24EFC3078()
{
  result = qword_27F235BA8;
  if (!qword_27F235BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BA8);
  }

  return result;
}

unint64_t sub_24EFC30CC()
{
  result = qword_27F235BB8;
  if (!qword_27F235BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235BB0, &unk_24F9B93F8);
    sub_24EFC3180(&qword_27F235BC0, type metadata accessor for MetadataRibbonItem, &protocol conformance descriptor for MetadataRibbonItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BB8);
  }

  return result;
}

uint64_t sub_24EFC3180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MixedMediaLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v74 = a28;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v97 = a27;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v73 = a38;
  v72 = a37;
  v71 = a36;
  v70 = a35;
  v69 = sub_24F91F6B8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v68 - v42;
  v44 = swift_allocObject();
  v45 = *a1;
  v46 = a1[1];
  v75 = v45;
  LOBYTE(v45) = *a29;
  v47 = *a34;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = a32;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = a33;
  v48 = v74;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v45;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v47;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v71;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v72;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v73;
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  sub_24E60169C(v48, v43, &qword_27F213E68, &unk_24F93BC80);
  *(v44 + 424) = 4;
  sub_24E60169C(v107, &v104, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v105 + 1))
  {
    v49 = v105;
    *(v44 + 448) = v104;
    *(v44 + 464) = v49;
    *(v44 + 480) = v106;
  }

  else
  {

    sub_24F91F6A8();
    v50 = v46;
    v51 = sub_24F91F668();
    v53 = v52;
    (*(v68 + 8))(v40, v69);
    v102 = v51;
    v103 = v53;
    v46 = v50;
    sub_24F92C7F8();
    sub_24E601704(&v104, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v43, v44 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  *(v44 + 16) = v75;
  *(v44 + 24) = v46;
  v54 = v85;
  *(v44 + 32) = v83;
  *(v44 + 40) = v54;
  *(v44 + 48) = v87;
  *(v44 + 56) = 0;
  v55 = v79;
  *(v44 + 64) = v78;
  *(v44 + 72) = v55;
  v56 = v90;
  *(v44 + 80) = v89;
  *(v44 + 88) = v56;
  v57 = v93;
  *(v44 + 96) = v91;
  *(v44 + 104) = v57;
  v58 = v77;
  *(v44 + 112) = v76;
  *(v44 + 120) = v58;
  *(v44 + 128) = 0;
  *(v44 + 136) = 2;
  v59 = v81;
  *(v44 + 144) = v80;
  *(v44 + 152) = v59;
  v60 = v84;
  *(v44 + 192) = v82;
  *(v44 + 200) = v60;
  v61 = v88;
  *(v44 + 208) = v86;
  *(v44 + 216) = v61;
  *(v44 + 376) = 0u;
  *(v44 + 392) = 0u;
  *(v44 + 408) = 0x8000;
  *(v44 + 360) = v97;
  *(v44 + 416) = 0;
  *(v44 + 432) = MEMORY[0x277D84FA0];
  v62 = v96;
  *(v44 + 160) = v94;
  *(v44 + 168) = v62;
  v63 = v92;
  *(v44 + 176) = v98;
  *(v44 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v44 + 224) = v95;
  *(v44 + 232) = v65;
  *(v44 + 240) = v64;
  *(v44 + 248) = 0;
  v66 = v101;
  *(v44 + 256) = 0;
  *(v44 + 264) = v66;
  *(v44 + 272) = 0u;
  *(v44 + 288) = 0u;
  *(v44 + 304) = 0u;
  *(v44 + 320) = 0u;
  *(v44 + 336) = 0;
  sub_24E601704(v48, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v107, &qword_27F235830, &qword_24F93B8C0);
  *(v44 + 344) = MEMORY[0x277D84F90];
  *(v44 + 352) = 0;
  *(v44 + 440) = 0;
  *(v44 + 368) = 0;
  return v44;
}

uint64_t MixedMediaLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v39 = v38;
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v71 = a28;
  v97 = a27;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v74 = a38;
  v73 = a37;
  v72 = a36;
  v70 = a35;
  v69 = sub_24F91F6B8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v42 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v68 - v44;
  v46 = *a1;
  v47 = a1[1];
  v75 = v46;
  LOBYTE(v46) = *a29;
  v48 = v71;
  v49 = *a34;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = a32;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = a33;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v46;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v49;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v72;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v73;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v74;
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  sub_24E60169C(v48, v45, &qword_27F213E68, &unk_24F93BC80);
  *(v39 + 424) = 4;
  sub_24E60169C(v110, &v104, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v105 + 1))
  {
    v107 = v104;
    v108 = v105;
    v109 = v106;
  }

  else
  {

    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v68 + 8))(v42, v69);
    v102 = v50;
    v103 = v52;
    sub_24F92C7F8();
    sub_24E601704(&v104, &qword_27F235830, &qword_24F93B8C0);
  }

  v53 = v108;
  *(v39 + 448) = v107;
  *(v39 + 464) = v53;
  *(v39 + 480) = v109;
  sub_24E60169C(v45, v39 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v39 + 16) = v75;
  *(v39 + 24) = v47;
  v54 = v85;
  *(v39 + 32) = v83;
  *(v39 + 40) = v54;
  *(v39 + 48) = v87;
  *(v39 + 56) = 0;
  v55 = v79;
  *(v39 + 64) = v78;
  *(v39 + 72) = v55;
  v56 = v90;
  *(v39 + 80) = v89;
  *(v39 + 88) = v56;
  v57 = v93;
  *(v39 + 96) = v91;
  *(v39 + 104) = v57;
  v58 = v77;
  *(v39 + 112) = v76;
  *(v39 + 120) = v58;
  *(v39 + 128) = 0;
  *(v39 + 136) = 2;
  v59 = v81;
  *(v39 + 144) = v80;
  *(v39 + 152) = v59;
  v60 = v84;
  *(v39 + 192) = v82;
  *(v39 + 200) = v60;
  v61 = v88;
  *(v39 + 208) = v86;
  *(v39 + 216) = v61;
  *(v39 + 376) = 0u;
  *(v39 + 392) = 0u;
  *(v39 + 408) = 0x8000;
  *(v39 + 360) = v97;
  *(v39 + 416) = 0;
  *(v39 + 432) = MEMORY[0x277D84FA0];
  v62 = v96;
  *(v39 + 160) = v94;
  *(v39 + 168) = v62;
  v63 = v92;
  *(v39 + 176) = v98;
  *(v39 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v39 + 224) = v95;
  *(v39 + 232) = v65;
  *(v39 + 240) = v64;
  *(v39 + 248) = 0;
  v66 = v101;
  *(v39 + 256) = 0;
  *(v39 + 264) = v66;
  *(v39 + 272) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0;

  sub_24E601704(v48, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v45, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v110, &qword_27F235830, &qword_24F93B8C0);
  *(v39 + 344) = MEMORY[0x277D84F90];
  *(v39 + 352) = 0;
  *(v39 + 440) = 0;
  *(v39 + 368) = 0;
  return v39;
}

uint64_t sub_24EFC3E78()
{
}

uint64_t MixedMediaLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t MixedMediaLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EFC405C()
{
  result = qword_27F235BC8;
  if (!qword_27F235BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BC8);
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaLockup(uint64_t a1)
{
  result = qword_27F235BD0;
  if (!qword_27F235BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchAction.searchRequest(facetsPresenter:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8))
  {
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
    v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
    v41 = v6;
  }

  else
  {
    v40 = 0xE000000000000000;
    v41 = 0;
  }

  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin);
  v7 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v37 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source + 8);
  v38 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
  sub_24F92BF18();
  v36 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v44);

  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled);
  v29 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms);
  v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm + 8);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v28 = v8;
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  v10 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
  v31 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40);

  sub_24EA145F0(v10, v9, v12, v11, v13, v15);

  v16 = v32;
  sub_24F91F6A8();
  v17 = sub_24F91F668();
  v18 = v16;
  v20 = v19;
  result = (*(v42 + 8))(v18, v43);
  *a2 = v17;
  *(a2 + 8) = v20;
  v22 = v40;
  *(a2 + 16) = v41;
  *(a2 + 24) = v22;
  *(a2 + 32) = v39;
  v23 = v37;
  *(a2 + 40) = v38;
  *(a2 + 48) = v23;
  *(a2 + 56) = v36;
  LOBYTE(v23) = v34;
  *(a2 + 64) = v35;
  *(a2 + 65) = 0;
  *(a2 + 66) = v23;
  v24 = v33;
  *(a2 + 72) = v29;
  *(a2 + 80) = v24;
  v26 = v30;
  v25 = v31;
  *(a2 + 88) = v28;
  *(a2 + 96) = v26;
  *(a2 + 104) = v10;
  *(a2 + 112) = v9;
  *(a2 + 120) = v12;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = v15;
  *(a2 + 152) = v25;
  *(a2 + 160) = v14;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_24EFC45FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EFC4670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EFC46E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C48, qword_24F9B96A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C40, &qword_24F9B9698);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__availableProfiles;
  v36 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C20, &qword_24F9B95A0);
  sub_24F923058();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__selectedProfile;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C30, &qword_24F9B95A8);
  sub_24F923058();
  (*(v3 + 32))(v1 + v11, v5, v2);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller) = 0;
  v13 = [objc_opt_self() current];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 extendedGamepad];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *(v1 + v12);
  *(v1 + v12) = v14;

  v18 = [objc_allocWithZone(MEMORY[0x277CCB098]) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) = v18;
  [v18 setController_];
  v19 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings;
  v20 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) availableProfiles];
  sub_24E69A5C4(0, &qword_27F235C50, 0x277CCB090);
  v21 = sub_24F92B5A8();

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v21;

  sub_24F9230A8();
  v22 = [*(v1 + v19) selectedProfile];
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v22;

  sub_24F9230A8();
  v36 = *(v1 + v19);
  v23 = v36;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();

  v24 = v23;
  v25 = sub_24F91F318();

  v26 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation) = v25;

  v36 = *(v1 + v19);
  v27 = v36;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v28 = v27;

  v29 = sub_24F91F318();

  v30 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation) = v29;

  v31 = objc_opt_self();
  v32 = [v31 defaultCenter];
  [v32 addObserver:v1 selector:sel_handleControllerDidBecomeCurrent_ name:*MEMORY[0x277CCAF48] object:0];

  v33 = [v31 defaultCenter];
  [v33 addObserver:v1 selector:sel_handleControllerDidStopBeingCurrent_ name:*MEMORY[0x277CCAF50] object:0];

  return v1;
}

void sub_24EFC4C50(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 availableProfiles];
  sub_24E69A5C4(0, &qword_27F235C50, 0x277CCB090);
  v4 = sub_24F92B5A8();

  *a2 = v4;
}

uint64_t sub_24EFC4CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_24F927D88();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C60, &qword_24F9B9738);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v14 = sub_24F92BEF8();
  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_24EFCBDF8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49_1;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFCC2E8(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_24EFC5090(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C60, &qword_24F9B9738);
    sub_24F91F2E8();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

uint64_t sub_24EFC514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_24F927D88();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C58, &unk_24F9B9728);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v14 = sub_24F92BEF8();
  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_24EFCBCE4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFCC2E8(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_24EFC5518(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C58, &unk_24F9B9728);
    sub_24F91F2E8();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

void sub_24EFC55CC()
{
  v1 = v0;
  sub_24F91EB38();
  if (v6)
  {
    sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller);
      *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller) = v4;
      v3 = v4;

      [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setController_];
    }
  }

  else
  {
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  }
}

void sub_24EFC56C8()
{
  v1 = v0;
  sub_24F91EB38();
  if (v10)
  {
    sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller;
      v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller);
      if (v3)
      {
        v4 = v8;
        v5 = v3;
        v6 = sub_24F92C408();

        if (v6)
        {
          v7 = *(v1 + v2);
          *(v1 + v2) = 0;

          [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setController_];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
  }
}

uint64_t sub_24EFC57FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EFC58F4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__availableProfiles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C40, &qword_24F9B9698);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__selectedProfile;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C48, qword_24F9B96A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_24EFC5A50(uint64_t a1)
{
  sub_24EFCC1F0(319, &qword_27F235C18, &qword_27F235C20, &qword_24F9B95A0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_24EFCC1F0(319, &qword_27F235C28, &qword_27F235C30, &qword_24F9B95A8, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EFC5B8C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923418();
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

uint64_t sub_24EFC5D8C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OverlayGameControllerControls(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24EFC5EE4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for OverlayGameControllerControls(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_24EFC6058@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GCOverlaySettingsObserver(0);
  result = sub_24F922FA8();
  *a2 = result;
  return result;
}

uint64_t sub_24EFC6098()
{
  type metadata accessor for GCOverlaySettingsObserver(0);
  v0 = swift_allocObject();
  sub_24EFC46E4();
  return v0;
}

id sub_24EFC60D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E601704(v2, &qword_27F228530, &unk_24F93C6E0);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_24F91F3B8();
    [v8 openSensitiveURL:v9 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24EFC62B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E601704(v2, &qword_27F228530, &unk_24F93C6E0);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_24F91F3B8();
    [v8 openSensitiveURL:v9 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFC649C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DC0, &qword_24F9B99A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = sub_24F924988();
  v21 = 1;
  sub_24EFC6778(a1, &v32);
  v24 = *&v33[16];
  v25 = *&v33[32];
  v26 = *&v33[48];
  v27 = *&v33[64];
  v22 = v32;
  v23 = *v33;
  v29 = *&v33[64];
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[0] = v32;
  v28[1] = *v33;
  sub_24E60169C(&v22, v30, &qword_27F235DC8, &qword_24F9B99A8);
  sub_24E601704(v28, &qword_27F235DC8, &qword_24F9B99A8);
  *(&v20[2] + 7) = v24;
  *(&v20[3] + 7) = v25;
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  LOBYTE(a1) = v21;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DD0, &qword_24F9B99B0);
  sub_24EFC6A04(v19, &v9[*(v11 + 44)]);
  sub_24E60169C(v9, v6, &qword_27F235DC0, &qword_24F9B99A0);
  v30[0] = v10;
  v30[1] = 0;
  LOBYTE(v31[0]) = a1;
  *(v31 + 1) = v20[0];
  *(&v31[1] + 1) = v20[1];
  *(&v31[4] + 1) = v20[4];
  *(&v31[3] + 1) = v20[3];
  *(&v31[2] + 1) = v20[2];
  v31[5] = *(&v20[4] + 15);
  v12 = v31[0];
  *a2 = v10;
  a2[1] = v12;
  v13 = v31[1];
  v14 = v31[2];
  v15 = v31[5];
  a2[5] = v31[4];
  a2[6] = v15;
  v16 = v31[3];
  a2[3] = v14;
  a2[4] = v16;
  a2[2] = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DD8, &qword_24F9B99B8);
  sub_24E60169C(v6, a2 + *(v17 + 48), &qword_27F235DC0, &qword_24F9B99A0);
  sub_24E60169C(v30, &v32, &qword_27F235DE0, &qword_24F9B99C0);
  sub_24E601704(v9, &qword_27F235DC0, &qword_24F9B99A0);
  sub_24E601704(v6, &qword_27F235DC0, &qword_24F9B99A0);
  *&v33[33] = v20[2];
  *&v33[49] = v20[3];
  *&v33[65] = v20[4];
  *&v33[80] = *(&v20[4] + 15);
  *&v33[1] = v20[0];
  v32 = v10;
  v33[0] = a1;
  *&v33[17] = v20[1];
  return sub_24E601704(&v32, &qword_27F235DE0, &qword_24F9B99C0);
}