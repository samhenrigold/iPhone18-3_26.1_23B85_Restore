void sub_20BD692D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = sub_20C13BB84();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50, &qword_20C1744B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BD697BC(a2);
  sub_20B52F9E8(a3, v10, &unk_27C772B50, &qword_20C1744B8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C772B50, &qword_20C1744B8);
  }

  else
  {
    sub_20BC49548(v10, v14);
    v15 = *(v11 + 24);
    v36 = v14;
    v16 = *&v14[v15];
    v17 = v16 + 56;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 56);
    v21 = (v18 + 63) >> 6;
    v42 = (v6 + 8);
    v35 = 0x800000020C191AD0;

    v22 = 0;
    *&v23 = 136446210;
    v37 = v23;
    v38 = v16;
    v39 = a1;
    v24 = v41;
    while (v20)
    {
LABEL_13:
      v26 = *(*(v16 + 48) + (__clz(__rbit64(v20)) | (v22 << 6)));
      sub_20C13B4A4();
      v27 = sub_20C13BB74();
      v28 = sub_20C13D1F4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v44 = v30;
        *v29 = v37;
        v40 = v30;
        if (v26 > 3)
        {
          if (v26 > 5)
          {
            if (v26 == 6)
            {
              v31 = 0xE300000000000000;
              v32 = 7172210;
            }

            else
            {
              v32 = 7172211;
              v31 = 0xE300000000000000;
            }
          }

          else if (v26 == 4)
          {
            v31 = 0xE700000000000000;
            v32 = 0x7363697274656DLL;
          }

          else
          {
            v32 = 0xD000000000000013;
            v31 = v35;
          }
        }

        else if (v26 > 1)
        {
          if (v26 == 2)
          {
            v32 = 0x57656E696C636E69;
            v31 = 0xEB000000006B6C61;
          }

          else
          {
            v31 = 0xE900000000000079;
            v32 = 0x7469736E65746E69;
          }
        }

        else if (v26)
        {
          v31 = 0xEA00000000006E75;
          v32 = 0x52656E696C636E69;
        }

        else
        {
          v31 = 0xE700000000000000;
          v32 = 0x7261426E727562;
        }

        v33 = sub_20B51E694(v32, v31, &v44);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_20B517000, v27, v28, "dequeueing other blocked queue: %{public}s", v29, 0xCu);
        v34 = v40;
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x20F2F6A40](v34, -1, -1);
        MEMORY[0x20F2F6A40](v29, -1, -1);

        v24 = v41;
        (*v42)(v41, v43);
        v16 = v38;
      }

      else
      {

        (*v42)(v24, v43);
      }

      v20 &= v20 - 1;
      sub_20BD697BC(v26);
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v21)
      {
        sub_20BD6D070(v36, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);

        return;
      }

      v20 = *(v17 + 8 * v25);
      ++v22;
      if (v20)
      {
        v22 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_20BD697BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50, &qword_20C1744B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  swift_beginAccess();
  v17 = *(v1 + 56);
  if (*(v17 + 16))
  {

    v18 = sub_20B65B078(a1);
    if (v19)
    {
      sub_20BA15784(*(v17 + 56) + *(v5 + 72) * v18, v16);

      (*(v5 + 56))(v16, 0, 1, v4);
      sub_20B520158(v16, &unk_27C772B50, &qword_20C1744B8);
      return;
    }
  }

  v32 = v7;
  v20 = *(v5 + 56);
  v20(v16, 1, 1, v4);
  sub_20B520158(v16, &unk_27C772B50, &qword_20C1744B8);
  v21 = *(v2 + 64);
  if (!*(v21 + 16))
  {
    goto LABEL_16;
  }

  v22 = sub_20B65B078(a1);
  if ((v23 & 1) == 0)
  {

LABEL_16:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  swift_beginAccess();
  v25 = *(v24 + 16);
  if (*(v25 + 16))
  {
    swift_beginAccess();
    sub_20BA15784(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v13);
    sub_20B7A371C(0, 1);
    swift_endAccess();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v20(v13, v26, 1, v4);
  swift_beginAccess();
  sub_20C0C0FC4(v13, a1);
  swift_endAccess();
  v27 = *(v2 + 56);
  if (*(v27 + 16))
  {

    v28 = sub_20B65B078(a1);
    if (v29)
    {
      v30 = v32;
      sub_20BA15784(*(v27 + 56) + *(v5 + 72) * v28, v32);

      v31 = sub_20BC49548(v30, v10);
      (*&v10[*(v4 + 28)])(v31);
      sub_20BD6D070(v10, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
    }

    else
    {
    }
  }
}

uint64_t sub_20BD69BC0()
{
  swift_getObjectType();
  sub_20C13B224();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A854();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AD54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AA44();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AB54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD69E78(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x401F333333333333, 0, MEMORY[0x277D4F5D0], &off_2822BA218, &unk_2822E36C0, sub_20BD6D468, MEMORY[0x277D4F5C8]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD69FF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x401F333333333333, 0, MEMORY[0x277D4F0C8], &off_2822BA230, &unk_2822E35F8, sub_20BD6D410, MEMORY[0x277D4F0C0]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6A170(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x401F333333333333, 0, MEMORY[0x277D4F378], &off_2822BA248, &unk_2822E3530, sub_20BD6D3B8, MEMORY[0x277D4F370]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6A2EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x401F333333333333, 0, MEMORY[0x277D4F198], &off_2822BA260, &unk_2822E3468, sub_20BD6D360, MEMORY[0x277D4F190]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6A468(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x401F333333333333, 0, MEMORY[0x277D4F280], &off_2822BA278, &unk_2822E33A0, sub_20BD6D308, MEMORY[0x277D4F278]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6A5E4()
{
  swift_getObjectType();
  sub_20C13AB74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A944();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD6A734(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C133D14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v26 = a1;
  sub_20C13AB64();
  v13 = sub_20C133CE4();
  v15 = v14;
  v17 = v16;
  v18 = *(v7 + 8);
  result = v18(v12, v6);
  if ((v17 & 1) == 0)
  {
    return sub_20B583F4C(v13, v15, 0);
  }

  if (v13 > 3u)
  {
    if (v13 == 4)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v23 = v26;
      sub_20C13AB64();
      sub_20C133CF4();
      v25 = v24;
      v18(v9, v6);
      sub_20C132E84();
      sub_20BD557E4(v23, 5u, 0x3FD999999999999ALL, 0, 0x3FE6666666666666, 0, v5, v25, 0, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
      goto LABEL_14;
    }

    if (v13 != 5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v13 - 2 < 2)
  {
LABEL_10:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = v26;
    sub_20C13AB64();
    sub_20C133CF4();
    v22 = v21;
    v18(v9, v6);
    sub_20C132E84();
    sub_20BD557E4(v20, 4u, 0, 1, 0, 1, v5, v22, 0, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
    goto LABEL_14;
  }

  if (v13)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20C132E84();
      sub_20BD557E4(v26, 4u, 0, 1, 0, 1, v5, 0, 1u, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
LABEL_14:

      return (*(v27 + 8))(v5, v28);
    }
  }

  return result;
}

void sub_20BD6AB88(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13A934();
  v7 = sub_20C133CE4();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  if (v11)
  {
    if (v7 == 1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v13 = *(Strong + 24);
        }

        else
        {
          v13 = 0.0;
        }

        sub_20BD65390(a1, 4, v13);
      }
    }
  }

  else
  {
    sub_20B583F4C(v7, v9, 0);
  }
}

uint64_t sub_20BD6AD14()
{
  swift_getObjectType();
  sub_20C13AC54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A9B4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD6AE64(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134054();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = a1;
  sub_20C13AC44();
  v13 = sub_20C134024();
  v15 = v14;
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v11, v5);
  v19 = v17 >> 5;
  if (v19 <= 1)
  {
    if (v17 >> 5)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_20C13AC44();
      sub_20C134034();
      v31 = v30;
      v18(v8, v5);
      v23 = v32;
      sub_20C132E84();
      sub_20BD557E4(v12, 2u, 0, 1, 0, 1, v23, v31, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_20C13AC44();
      sub_20C134034();
      v25 = v24;
      v18(v8, v5);
      v23 = v32;
      sub_20C132E84();
      sub_20BD557E4(v12, 1u, 0, 1, 0, 1, v23, v25, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
    }
  }

  else if (v19 == 2)
  {
    sub_20B8C3888(v13, v15, v17);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v27 = v26;
    v18(v8, v5);
    v23 = v32;
    sub_20C132E84();
    sub_20BD557E4(v12, 3u, 0, 1, 0, 1, v23, v27, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  else if (v19 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v22 = v21;
    v18(v8, v5);
    v23 = v32;
    sub_20C132E84();
    sub_20BD557E4(v12, 6u, 0, 1, 0, 1, v23, v22, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v29 = v28;
    v18(v8, v5);
    v23 = v32;
    sub_20C132E84();
    sub_20BD557E4(v12, 7u, 0, 1, 0, 1, v23, v29, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  return (*(v33 + 8))(v23, v34);
}

void sub_20BD6B3F0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = sub_20C134054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  sub_20C13A9A4();
  v10 = *(v4 + 8);
  v10(v9, v3);
  sub_20C13A9A4();
  v11 = sub_20C134024();
  v13 = v12;
  v15 = v14;
  v10(v6, v3);
  v16 = v15 >> 5;
  if (v16 <= 1)
  {
    if (v15 >> 5)
    {
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        return;
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = *(Strong + 24);
      }

      else
      {
        v18 = 0.0;
      }

      v23 = a1;
      v24 = 2;
    }

    else
    {
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        return;
      }

      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (v19)
      {
        v18 = *(v19 + 24);
      }

      else
      {
        v18 = 0.0;
      }

      v23 = a1;
      v24 = 1;
    }
  }

  else if (v16 == 2)
  {
    sub_20B8C3888(v11, v13, v15);
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v18 = *(v20 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 3;
  }

  else if (v16 == 3)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = *(v17 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 6;
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v18 = *(v21 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 7;
  }

  sub_20BD65E18(v23, v24, v18);
}

uint64_t sub_20BD6B734(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v6, 0x4018000000000000, 0, MEMORY[0x277D4F0E8], &off_2822BA290, &unk_2822E3788, sub_20BD6D57C, MEMORY[0x277D4F0E0]);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6B8AC()
{
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B98EF4C();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  swift_allocObject();
  swift_weakInit();
  sub_20B98EED0();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  swift_allocObject();
  swift_weakInit();
  sub_20B98EE54();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void sub_20BD6BA5C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_20C1366E4();
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_20C132E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v16 = a1[24];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C132E84();
    sub_20BD57050(v13, v16, 0, 0, 1, 0, 1, v12, v14, *&v15, v15, 0);

    (*(v10 + 8))(v12, v9);
  }

  if (v16)
  {
    v17 = sub_20C136FB4();
    if (v17 >= sub_20C136FB4())
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
      }

      v18 = sub_20C136FB4();
      if (v18 >= sub_20C136FB4())
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          sub_20B51CC64(Strong + 72, v26);

          __swift_project_boxed_opaque_existential_1(v26, v26[3]);
          sub_20C13CE94();
          sub_20C137164();
          swift_storeEnumTagMultiPayload();
          sub_20C13A284();
          sub_20BD6D070(v5, MEMORY[0x277D52C38]);
          v20 = v25;
          v21 = sub_20C137CB4();
          v22 = swift_allocObject();
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
          v21(sub_20B52347C, v22);

          (*(v24 + 8))(v8, v20);
          __swift_destroy_boxed_opaque_existential_1(v26);
        }
      }
    }
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    *(v23 + 112) = v13;
  }
}

uint64_t sub_20BD6BE40(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD58654(v7, 0, 0, 1, 0, 1, v6, v9, v8, *&v9, 0);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6BF8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD59BFC(v8, 0, 0, 1, 0, 1, v6, v7, *&v7, 0);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BD6C0D4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionEventPresentationCoordinator.QueueItem(uint64_t a1)
{
  result = qword_27C76E950;
  if (!qword_27C76E950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD6C1C4(uint64_t a1)
{
  sub_20C132E94();
  if (v1 <= 0x3F)
  {
    sub_20BD6C278();
    if (v2 <= 0x3F)
    {
      sub_20BD6C2DC(319);
      if (v3 <= 0x3F)
      {
        sub_20B51F2C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_20BD6C278()
{
  result = qword_27C76E960;
  if (!qword_27C76E960)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C76E960);
  }

  return result;
}

void sub_20BD6C2DC(uint64_t a1)
{
  if (!qword_27C76E968)
  {
    sub_20BD6C338();
    v1 = sub_20C13D004();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76E968);
    }
  }
}

unint64_t sub_20BD6C338()
{
  result = qword_27C76E970;
  if (!qword_27C76E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E970);
  }

  return result;
}

unint64_t sub_20BD6C3E4()
{
  result = qword_27C76E988;
  if (!qword_27C76E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E988);
  }

  return result;
}

uint64_t sub_20BD6C438(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B2030);
  a1(0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20C13CEE4();

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD6C58C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B2030);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD6C6C8(unsigned __int8 a1, double a2, double a3, double a4)
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B2030);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD6C80C(char a1, double a2, double a3)
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B2030);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

void sub_20BD6C944(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BD67790(v6, v9, a3, v7, v8, a4);
  }
}

void sub_20BD6C9E4(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BD6813C(v6, a3, v7, v8, a4);
  }
}

void sub_20BD6CA7C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BD68A1C(v7, a3, v6, a4);
  }
}

uint64_t sub_20BD6CB08(double a1, double a2)
{
  *(v2 + 56) = MEMORY[0x277D84F98];
  *(v2 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + 32) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850, &qword_20C176E30);
  sub_20C133AA4();
  sub_20B52E424(v17, v2 + 72);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 48) = sub_20C13A914();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA10, &qword_20C17BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DC0;
  *(inited + 32) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA18, &qword_20C17BFA8);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(inited + 40) = v6;
  *(inited + 48) = 4;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(inited + 72) = v9;
  *(inited + 80) = 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(inited + 88) = v10;
  *(inited + 96) = 2;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(inited + 104) = v11;
  *(inited + 112) = 3;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(inited + 120) = v12;
  *(inited + 128) = 6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(inited + 136) = v13;
  *(inited + 144) = 7;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(inited + 152) = v14;
  v15 = sub_20B6B30FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA20, &unk_20C17BFB0);
  swift_arrayDestroy();
  *(v2 + 64) = v15;
  sub_20BD556FC();
  return v2;
}

unint64_t sub_20BD6CD98(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20BD6CDFC()
{
  result = qword_27C76E998;
  if (!qword_27C76E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E998);
  }

  return result;
}

unint64_t sub_20BD6CE8C()
{
  result = qword_27C76E9B8;
  if (!qword_27C76E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E9B8);
  }

  return result;
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50, &qword_20C1744B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_20C132E94();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    __swift_destroy_boxed_opaque_existential_1((v0 + v3 + *(v5 + 20)));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BD6D070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20BD6D0D0()
{
  result = qword_27C76E9C0;
  if (!qword_27C76E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E9C0);
  }

  return result;
}

uint64_t sub_20BD6D1D8(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8.n128_u64[0] = *(v2 + v5);
  v9 = *(v2 + v6);
  v10 = *(v2 + v6 + 8);
  v11 = v2 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13.n128_u64[0] = *(v2 + v7);
  v14 = *(v11 + 8);

  return a2(v2 + v4, v9, v10, v12, v14, v8, v13);
}

uint64_t objectdestroy_86Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroy_102Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (v5 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v4 | 7);
}

void sub_20BD6D6A8(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, double))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  sub_20BD613D4(*(v2 + 16), v2 + v5, *(v2 + v5 + *(v4 + 64)), a2, *(v2 + ((v5 + *(v4 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BD6D748()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50, &qword_20C1744B8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  sub_20BD692D4(v2, v3, v4);
}

uint64_t sub_20BD6D868(void *a1)
{
  v2 = [a1 isTVRoute];
  if ([a1 isAppleTVRoute])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 containsDeviceWithSubtype_];
  }

  if ([a1 isMacRoute] || (v4 = objc_msgSend(a1, sel_containsDeviceWithSubtype_, 24), ((v2 | v3) & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ([a1 pickableRouteType])
  {
    if ([a1 isShareableRoute])
    {

      return 1;
    }

    else
    {
      v7 = [a1 isHeadphonesRoute];

      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4;
      }

      if (v7)
      {
        return 1;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {

    return 2;
  }
}

void sub_20BD6D99C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout];
  sub_20BD736D8(v121);
  v10 = v121[3];
  *(v9 + 2) = v121[2];
  *(v9 + 3) = v10;
  *(v9 + 4) = v121[4];
  *(v9 + 10) = v122;
  v11 = v121[1];
  *v9 = v121[0];
  *(v9 + 1) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontForTextStyle_];
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  v18 = v13;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  *&v4[v12] = v18;
  v20 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setNumberOfLines_];
  [v21 setLineBreakMode_];
  v22 = [v14 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v16 secondaryLabelColor];
  [v21 setTextColor_];

  v24 = v21;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];

  *&v4[v20] = v24;
  v26 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImage;
  v27 = sub_20C13C914();
  v28 = [objc_opt_self() smm:v27 systemImageNamed:?];

  v29 = [v14 preferredFontForTextStyle_];
  v30 = [objc_opt_self() configurationWithFont_];
  v31 = [v28 imageWithConfiguration_];

  *&v4[v26] = v31;
  v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed] = 0;
  v32 = &v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_offsetPerMove] = 0x4069000000000000;
  v33 = &v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan];
  *v33 = 0;
  v33[8] = 1;
  v34 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v34 &selRef_count + 2];
  *&v4[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView] = v34;
  v120.receiver = v4;
  v120.super_class = type metadata accessor for TVQueueListLockupView();
  v35 = objc_msgSendSuper2(&v120, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C151490;
  v115 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel];
  *(v36 + 32) = v37;
  v38 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel;
  v39 = *&v35[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel];
  *(v36 + 40) = v39;
  v40 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v41 = v35;
  v42 = v37;
  v43 = v39;
  v44 = sub_20C13CC54();

  v45 = [v40 initWithArrangedSubviews_];

  [v45 setAxis_];
  v46 = &v41[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout];
  [v45 setSpacing_];
  [v45 setAlignment_];
  [v45 setDistribution_];
  v47 = v45;
  [v47 &selRef_count + 2];
  v48 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView;
  v118 = v46;
  [*&v41[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView] setTintColor_];
  v49 = v41;
  v50 = [v49 contentView];
  v51 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  [v50 addSubview_];

  v119 = v51;
  v52 = [*&v49[v51] contentView];
  if (!v52)
  {
    __break(1u);
    goto LABEL_7;
  }

  v53 = v52;
  v113 = v38;
  v114 = v35;
  v117 = v47;
  [v52 addSubview_];

  v54 = [*&v49[v51] contentView];
  if (!v54)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v55 = v54;
  v116 = v41;
  [v54 addSubview_];

  v56 = [v49 contentView];
  v58 = *MEMORY[0x277D768C8];
  v57 = *(MEMORY[0x277D768C8] + 8);
  v59 = *(MEMORY[0x277D768C8] + 16);
  v60 = *(MEMORY[0x277D768C8] + 24);
  v61 = [v56 leadingAnchor];
  v62 = [v49 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v57];

  LODWORD(v64) = 1148846080;
  [v63 setPriority_];
  v65 = v63;
  v66 = [v56 trailingAnchor];
  v67 = [v49 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-v60];

  LODWORD(v69) = 1148846080;
  [v68 setPriority_];
  v70 = v68;
  v71 = [v56 topAnchor];
  v72 = [v49 topAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v58];

  LODWORD(v74) = 1148846080;
  [v73 setPriority_];
  v75 = [v56 bottomAnchor];
  v76 = [v49 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:-v59];

  LODWORD(v78) = 1148846080;
  [v77 setPriority_];
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_20C14FE90;
  *(v79 + 32) = v65;
  *(v79 + 40) = v70;
  *(v79 + 48) = v73;
  *(v79 + 56) = v77;
  v80 = v73;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v82 = [v117 leadingAnchor];
  v83 = [*&v49[v119] leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v118[2]];

  *(inited + 32) = v84;
  v85 = [v117 trailingAnchor];
  v86 = [*&v49[v119] contentView];
  if (!v86)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v87 = v86;
  v88 = [v86 trailingAnchor];

  v89 = [v85 constraintEqualToAnchor:v88 constant:-v118[2]];
  *(inited + 40) = v89;
  v90 = [v117 centerYAnchor];

  v91 = *&v49[v119];
  v92 = [v91 contentView];

  if (v92)
  {
    v93 = [v92 centerYAnchor];

    v94 = [v90 constraintEqualToAnchor_];
    *(inited + 48) = v94;
    v95 = swift_initStackObject();
    *(v95 + 16) = xmmword_20C151490;
    v96 = [*&v116[v48] centerYAnchor];
    v97 = [v49 contentView];
    v98 = [v97 centerYAnchor];

    v99 = [v96 constraintEqualToAnchor_];
    *(v95 + 32) = v99;
    v100 = [*&v116[v48] trailingAnchor];
    v101 = [v49 contentView];
    v102 = [v101 trailingAnchor];

    v103 = [v100 constraintEqualToAnchor:v102 constant:-v118[2]];
    *(v95 + 40) = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
    v104 = swift_initStackObject();
    *(v104 + 16) = xmmword_20C14F980;
    sub_20B8D9310(inited);
    sub_20B8D9310(v95);
    *(v104 + 32) = v79;
    v105 = objc_opt_self();
    sub_20BE54D20(v104);
    swift_setDeallocating();
    sub_20B520158(v104 + 32, &qword_27C7677E0, &unk_20C15AA30);
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v106 = sub_20C13CC54();

    [v105 activateConstraints_];

    sub_20BD6EE20();
    v107 = *&v114[v115];
    [v107 setText_];
    v108 = *&v114[v113];
    [v108 setText_];
    v109 = sub_20C13C914();
    [v107 setText_];

    v110 = sub_20C13C914();
    [v108 setText_];

    [*&v116[v48] setHidden_];
    v111 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v49 action:sel_handleTap_];

    v112 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v49 action:sel_handlePan_];
    [v49 addGestureRecognizer_];
    [v49 addGestureRecognizer_];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_20BD6E7C8(void *a1, void *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel];
  v5 = [a1 string];
  if (!v5)
  {
    sub_20C13C954();
    v5 = sub_20C13C914();
  }

  [v4 setText_];

  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel];
  v7 = [a2 string];
  if (!v7)
  {
    sub_20C13C954();
    v7 = sub_20C13C914();
  }

  [v6 setText_];

  return [v2 setNeedsLayout];
}

void sub_20BD6E8C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel);
  [v1 setText_];
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel);
  [v2 setText_];
  v3 = sub_20C13C914();
  [v1 setText_];

  v4 = sub_20C13C914();
  [v2 setText_];
}

id sub_20BD6E980(char a1)
{
  v2 = a1 != 2 && a1 == 3;
  v3 = a1 == 2 || a1 == 3;
  v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed] = v2;
  [v1 setUserInteractionEnabled_];
  sub_20BD6EE20();
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView];
  v5 = (v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed] & 1) == 0;

  return [v4 setHidden_];
}

void sub_20BD6EA80(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for TVQueueListLockupView();
  objc_msgSendSuper2(&v8, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_20BD73D54;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20B7B548C;
  v7[3] = &block_descriptor_127;
  v6 = _Block_copy(v7);

  [a2 addCoordinatedAnimations:v6 completion:0];
  _Block_release(v6);
}

void sub_20BD6EB84(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_20BD6EE20();
  }
}

void sub_20BD6EC54(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed) == 1)
  {
    v5 = v2;
    v6 = sub_20BD715C8(a1, v5);

    sub_20B719CF4(v6);

    sub_20B51C88C(0, &qword_27C764588, 0x277D758B8);
    sub_20B9E0F28();
    v7 = sub_20C13CF64();

    v8.receiver = v5;
    v8.super_class = type metadata accessor for TVQueueListLockupView();
    objc_msgSendSuper2(&v8, sel_pressesBegan_withEvent_, v7, a2);
  }

  else
  {
    sub_20B51C88C(0, &qword_27C764588, 0x277D758B8);
    sub_20B9E0F28();
    v7 = sub_20C13CF64();
    v9.receiver = v2;
    v9.super_class = type metadata accessor for TVQueueListLockupView();
    objc_msgSendSuper2(&v9, sel_pressesBegan_withEvent_, v7, a2);
  }
}

id sub_20BD6EE20()
{
  if ([v0 isUserInteractionEnabled])
  {
    v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) & 8;
    [*(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel) setTextColor_];
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel);
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + (v1 ^ 0x48));
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + 80);
    [*(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel) setTextColor_];
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel);
    v3 = v4;
  }

  return [v2 setTextColor_];
}

void sub_20BD6EFA0(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed) == 1)
  {
    v3 = [result state];
    if (v3 > 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          return;
        }

        sub_20BD6F13C(0.0);
      }

      v6 = v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset;
      *v6 = 0;
      *(v6 + 8) = 1;
      v7 = v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan;
      *v7 = 0;
      *(v7 + 8) = 1;
    }

    else if (v3 == 1)
    {
      [result locationInView_];
      v8 = v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset;
      *v8 = v9;
      *(v8 + 8) = 0;
      v10 = v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan;
      *v10 = 0;
      *(v10 + 8) = 0;
    }

    else if (v3 == 2 && (*(v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset + 8) & 1) == 0)
    {
      v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset);
      [result locationInView_];

      sub_20BD6F13C(v5 - v4);
    }
  }
}

void sub_20BD6F13C(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8, &unk_20C17C050);
  v269 = *(v3 - 8);
  v4 = *(v269 + 64);
  MEMORY[0x28223BE20](v3);
  v266 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v267 = &v242 - v6;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v7 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v257 = &v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v260 = &v242 - v10;
  v265 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v265);
  v272 = &v242 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v256 = &v242 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v242 - v15;
  MEMORY[0x28223BE20](v17);
  v259 = &v242 - v18;
  v264 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v264);
  v271 = &v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v258 = &v242 - v21;
  MEMORY[0x28223BE20](v22);
  v263 = &v242 - v23;
  MEMORY[0x28223BE20](v24);
  v262 = &v242 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v26 - 8);
  v274 = (&v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v277 = (&v242 - v29);
  v278 = type metadata accessor for ShelfCellItemInfo(0);
  v30 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v275 = (&v242 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v282 = (&v242 - v33);
  v279 = sub_20C133244();
  v34 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v281 = &v242 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v283 = &v242 - v37;
  v284 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v284);
  v273 = (&v242 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v41 = &v242 - v40;
  MEMORY[0x28223BE20](v42);
  v276 = (&v242 - v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v242 - v45;
  v285 = v1;
  v270 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan + 8) & 1) == 0)
  {
    v47 = a1 / 200.0;
    if (COERCE__INT64(fabs(a1 / 200.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_84;
    }

    if (v47 <= -9.22337204e18)
    {
LABEL_85:
      __break(1u);
    }

    else if (v47 < 9.22337204e18)
    {
      v48 = *v270;
      v255 = v47;
      v49 = v47 - v48;
      if (!__OFSUB__(v47, v48))
      {
        v254 = v3;
        if (v49 >= 1)
        {
          v50 = 0;
          v273 = (v30 + 48);
          v274 = v34 + 1;
          v256 = (v4 + 7);
          v257 = (v269 + 16);
          LODWORD(v258) = *MEMORY[0x277D51408];
          v251 = v269 + 8;
          v252 = (v269 + 32);
          v34 = &OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate;
          v250 = (v7 + 8);
          v51 = *MEMORY[0x277D51768];
          v248 = *MEMORY[0x277D51780];
          v249 = v51;
          v247 = xmmword_20C17BFC0;
          v246 = xmmword_20C1719C0;
          v253 = v16;
          v280 = (v47 - v48);
          v275 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate;
          v268 = &v242 - v45;
          while (1)
          {
            if (v50 >= v49)
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v52 = (v50 + 1);
            if (__OFADD__(v50, 1))
            {
              goto LABEL_81;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v54 = Strong;
              v55 = *(Strong + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
              if (v55)
              {
                *(v46 + 1) = 0;
                *(v46 + 2) = 0;
                *v46 = 1;
                v46[24] = 64;
                swift_storeEnumTagMultiPayload();
                v56 = *(v55 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
                swift_unknownObjectRetain();
                v57 = [v56 indexPathForCell_];
                if (v57)
                {
                  v281 = (v50 + 1);
                  v58 = v283;
                  v59 = v57;
                  sub_20C1331E4();

                  v60 = *(v55 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);
                  v61 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
                  swift_beginAccess();
                  v62 = *(v55 + v61);

                  v34 = v277;
                  sub_20C0C7BB4(v58, v60, v62, v277);

                  if ((*v273)(v34, 1, v278) == 1)
                  {
                    goto LABEL_90;
                  }

                  v63 = v282;
                  sub_20B8B469C(v34, v282);
                  v65 = v63[3];
                  v64 = v63[4];
                  v68 = v63;
                  v66 = *v63;
                  v67 = v68[1];
                  v69 = v46;
                  v70 = v46;
                  v71 = v276;
                  sub_20BD71500(v69, v276, type metadata accessor for ShelfItemAction);
                  if (swift_getEnumCaseMultiPayload() != 7)
                  {
                    ObjectType = swift_getObjectType();
                    (*(v64 + 72))(v67, v70, v66, ObjectType, v64);
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    (*v274)(v283, v279);
                    sub_20BD71568(v70, type metadata accessor for ShelfItemAction);
                    v77 = v71;
                    v46 = v70;
                    goto LABEL_39;
                  }

                  v72 = *v71;
                  v271 = v71[1];
                  v272 = v72;
                  v73 = v71[2];
                  v74 = *(v71 + 24);
                  v75 = swift_getObjectType();
                  (*(v64 + 40))(&v288, v75, v64);
                  v307 = v296;
                  v308 = v297;
                  v309 = v298;
                  v303 = v292;
                  v304 = v293;
                  v305 = v294;
                  v306 = v295;
                  v299 = v288;
                  v300 = v289;
                  v301 = v290;
                  v302 = v291;
                  if (sub_20B5EAF8C(&v299) == 1)
                  {
                    sub_20BB125A4(v272, v271, v73, v74);
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    (*v274)(v283, v279);
                    v46 = v268;
                    goto LABEL_38;
                  }

                  v46 = v268;
                  if (v74 >> 6)
                  {
                    if (v74 >> 6 != 1)
                    {
                      v101 = v74;
                      v102 = v253;
                      v52 = v281;
                      if (v73 | v271 | v272 || v101 != 128)
                      {
                        sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                        v125 = sub_20C136664();
                        v126 = v263;
                        (*(*(v125 - 8) + 56))(v263, 1, 1, v125);
                        v127 = v264;
                        v128 = *(v264 + 20);
                        v129 = sub_20C134F24();
                        (*(*(v129 - 8) + 104))(v126 + v128, v258, v129);
                        v130 = v127[6];
                        v131 = sub_20C132C14();
                        (*(*(v131 - 8) + 56))(v126 + v130, 1, 1, v131);
                        v132 = v127[8];
                        v133 = sub_20C135ED4();
                        (*(*(v133 - 8) + 56))(v126 + v132, 1, 1, v133);
                        v134 = v127[10];
                        v135 = sub_20C1352E4();
                        (*(*(v135 - 8) + 104))(v126 + v134, v249, v135);
                        v136 = v127[11];
                        v137 = sub_20C136E94();
                        (*(*(v137 - 8) + 56))(v126 + v136, 1, 1, v137);
                        v138 = MEMORY[0x277D84F90];
                        v139 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                        *(v126 + v127[7]) = v246;
                        v140 = (v126 + v127[9]);
                        *v140 = 0;
                        v140[1] = 0;
                        *(v126 + v127[12]) = v139;
                        sub_20BD71500(v126, v102 + *(v265 + 20), type metadata accessor for ShelfMetricAction);
                        *v102 = v138;
                        v141 = v55 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                        if (swift_unknownObjectWeakLoadStrong())
                        {
                          v142 = *(v141 + 8);
                          v143 = swift_getObjectType();
                          (*(v142 + 160))(v55, v102, v143, v142);
                          swift_unknownObjectRelease();
                        }

                        sub_20BD71568(v102, type metadata accessor for PageMetricAction);
                        v124 = v263;
                      }

                      else
                      {
                        sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                        v103 = sub_20C136664();
                        v104 = v262;
                        (*(*(v103 - 8) + 56))(v262, 1, 1, v103);
                        v105 = v264;
                        v106 = *(v264 + 20);
                        v107 = sub_20C134F24();
                        (*(*(v107 - 8) + 104))(v104 + v106, v258, v107);
                        v108 = v105[6];
                        v109 = sub_20C132C14();
                        (*(*(v109 - 8) + 56))(v104 + v108, 1, 1, v109);
                        v110 = v105[8];
                        v111 = sub_20C135ED4();
                        (*(*(v111 - 8) + 56))(v104 + v110, 1, 1, v111);
                        v112 = v105[10];
                        v113 = sub_20C1352E4();
                        (*(*(v113 - 8) + 104))(v104 + v112, v248, v113);
                        v114 = v105[11];
                        v115 = sub_20C136E94();
                        (*(*(v115 - 8) + 56))(v104 + v114, 1, 1, v115);
                        v116 = MEMORY[0x277D84F90];
                        v117 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                        *(v104 + v105[7]) = v247;
                        v118 = (v104 + v105[9]);
                        *v118 = 0;
                        v118[1] = 0;
                        v119 = v105[12];
                        v120 = v259;
                        *(v104 + v119) = v117;
                        sub_20BD71500(v104, v120 + *(v265 + 20), type metadata accessor for ShelfMetricAction);
                        *v120 = v116;
                        v121 = v55 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                        if (swift_unknownObjectWeakLoadStrong())
                        {
                          v122 = *(v121 + 8);
                          v123 = swift_getObjectType();
                          (*(v122 + 160))(v55, v120, v123, v122);
                          swift_unknownObjectRelease();
                        }

                        sub_20BD71568(v120, type metadata accessor for PageMetricAction);
                        v124 = v262;
                      }

                      sub_20BD71568(v124, type metadata accessor for ShelfMetricAction);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      (*v274)(v283, v279);
                      v77 = v46;
                      goto LABEL_40;
                    }

                    v245 = v74;
                    LODWORD(v244) = v300;
                    v243 = v306;
                    v78 = v55 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v79 = *(v78 + 8);
                      v80 = swift_getObjectType();
                      (*(v79 + 192))(v55, v243, v244, v272, v80, v79);
                      swift_unknownObjectRelease();
                      sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                      v81 = swift_allocObject();
                      v242 = v65;
                      *(v81 + 16) = v65;
                      *(v81 + 24) = v64;
                      v82 = swift_allocObject();
                      *(v82 + 16) = sub_20BD73D7C;
                      *(v82 + 24) = v81;
                      v83 = swift_allocObject();
                      v243 = v83;
                      v244 = v73;
                      *(v83 + 16) = sub_20BD73D64;
                      *(v83 + 24) = v82;
                      v84 = v269;
                      v85 = v254;
                      (*(v269 + 16))(v266, v267);
                      v86 = (*(v84 + 80) + 16) & ~*(v84 + 80);
                      v87 = &v256[v86] & 0xFFFFFFFFFFFFFFF8;
                      v88 = swift_allocObject();
                      v89 = v88 + v86;
                      v90 = v85;
                      (*(v84 + 32))(v89, v266, v85);
                      v91 = (v88 + v87);
                      v92 = v243;
                      *v91 = sub_20BD73D5C;
                      v91[1] = v92;
                      swift_unknownObjectRetain();
                      v93 = v260;
                      sub_20C137C94();
                      (*(v84 + 8))(v267, v90);
                      v94 = v261;
                      v95 = sub_20C137CB4();
                      v96 = swift_allocObject();
                      *(v96 + 16) = 0;
                      *(v96 + 24) = 0;
                      v95(sub_20B5DF6DC, v96);

                      sub_20BB125A4(v272, v271, v244, v245);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      (*v250)(v93, v94);
LABEL_37:
                      (*v274)(v283, v279);
LABEL_38:
                      v77 = v46;
LABEL_39:
                      v52 = v281;
LABEL_40:
                      sub_20BD71568(v77, type metadata accessor for ShelfItemAction);
                      sub_20BD71568(v282, type metadata accessor for ShelfCellItemInfo);
                      v49 = v280;
                      v34 = &OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate;
                      goto LABEL_9;
                    }

                    sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                    v98 = v271;
                    v97 = v272;
                    v99 = v73;
                    v100 = v245;
                  }

                  else
                  {
                    sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                    sub_20BEDA40C(v74, v65, v64);
                    v98 = v271;
                    v97 = v272;
                    v99 = v73;
                    v100 = v74;
                  }

                  sub_20BB125A4(v97, v98, v99, v100);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_37;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_20BD71568(v46, type metadata accessor for ShelfItemAction);
                v49 = v280;
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

LABEL_9:
            ++v50;
            if (v52 == v49)
            {
              goto LABEL_42;
            }
          }
        }

        if ((v49 & 0x8000000000000000) == 0)
        {
LABEL_42:
          v144 = v270;
          *v270 = v255;
          *(v144 + 8) = 0;
          return;
        }

        v145 = v48 - v47;
        if (!__OFSUB__(0, v49))
        {
          if ((v145 & 0x8000000000000000) == 0)
          {
            v146 = 0;
            v276 = (v30 + 48);
            v280 = (v34 + 1);
            v34 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate;
            v259 = (v4 + 7);
            v260 = (v269 + 16);
            LODWORD(v262) = *MEMORY[0x277D51408];
            v253 = (v269 + 32);
            v250 = (v7 + 8);
            v251 = v269 + 8;
            v147 = *MEMORY[0x277D51768];
            v248 = *MEMORY[0x277D51780];
            v249 = v147;
            v247 = xmmword_20C17BFC0;
            v246 = xmmword_20C1719C0;
            v282 = (v48 - v47);
            v277 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate;
            v252 = v41;
            while (1)
            {
              if (v146 >= v145)
              {
                goto LABEL_82;
              }

              v148 = (v146 + 1);
              if (__OFADD__(v146, 1))
              {
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

              v149 = swift_unknownObjectWeakLoadStrong();
              if (v149)
              {
                v150 = v149;
                v151 = *(v149 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
                if (v151)
                {
                  *v41 = 0;
                  *(v41 + 1) = 0;
                  *(v41 + 2) = 0;
                  v41[24] = 64;
                  swift_storeEnumTagMultiPayload();
                  v152 = *(v151 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
                  swift_unknownObjectRetain();
                  v153 = [v152 indexPathForCell_];
                  if (v153)
                  {
                    v283 = (v146 + 1);
                    v154 = v281;
                    v155 = v153;
                    sub_20C1331E4();

                    v156 = *(v151 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);
                    v157 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
                    swift_beginAccess();
                    v158 = *(v151 + v157);

                    v34 = v274;
                    sub_20C0C7BB4(v154, v156, v158, v274);

                    if ((*v276)(v34, 1, v278) == 1)
                    {
                      goto LABEL_90;
                    }

                    v159 = v275;
                    sub_20B8B469C(v34, v275);
                    v161 = v159[3];
                    v160 = v159[4];
                    v164 = v159;
                    v162 = *v159;
                    v163 = v164[1];
                    v165 = v41;
                    v166 = v41;
                    v167 = v273;
                    sub_20BD71500(v165, v273, type metadata accessor for ShelfItemAction);
                    if (swift_getEnumCaseMultiPayload() != 7)
                    {
                      v172 = swift_getObjectType();
                      (*(v160 + 72))(v163, v166, v162, v172, v160);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      (*v280)(v281, v279);
                      sub_20BD71568(v166, type metadata accessor for ShelfItemAction);
                      v173 = v167;
                      v41 = v166;
                      goto LABEL_78;
                    }

                    v168 = v167[1];
                    v268 = *v167;
                    v169 = v167[2];
                    v170 = *(v167 + 24);
                    v171 = swift_getObjectType();
                    (*(v160 + 40))(&v288, v171, v160);
                    v307 = v296;
                    v308 = v297;
                    v309 = v298;
                    v303 = v292;
                    v304 = v293;
                    v305 = v294;
                    v306 = v295;
                    v299 = v288;
                    v300 = v289;
                    v301 = v290;
                    v302 = v291;
                    if (sub_20B5EAF8C(&v299) == 1)
                    {
                      sub_20BB125A4(v268, v168, v169, v170);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      (*v280)(v281, v279);
                      v41 = v252;
                      goto LABEL_77;
                    }

                    v263 = v168;
                    v174 = v170;
                    v175 = v170 >> 6;
                    v41 = v252;
                    if (v175)
                    {
                      if (v175 != 1)
                      {
                        v199 = v169 | v263 | v268;
                        v200 = v272;
                        v148 = v283;
                        if (v199 || v174 != 128)
                        {
                          sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                          v222 = sub_20C136664();
                          v223 = v271;
                          (*(*(v222 - 8) + 56))(v271, 1, 1, v222);
                          v224 = v264;
                          v225 = *(v264 + 20);
                          v226 = sub_20C134F24();
                          (*(*(v226 - 8) + 104))(v223 + v225, v262, v226);
                          v227 = v224[6];
                          v228 = sub_20C132C14();
                          (*(*(v228 - 8) + 56))(v223 + v227, 1, 1, v228);
                          v229 = v224[8];
                          v230 = sub_20C135ED4();
                          (*(*(v230 - 8) + 56))(v223 + v229, 1, 1, v230);
                          v231 = v224[10];
                          v232 = sub_20C1352E4();
                          (*(*(v232 - 8) + 104))(v223 + v231, v249, v232);
                          v233 = v224[11];
                          v234 = sub_20C136E94();
                          (*(*(v234 - 8) + 56))(v223 + v233, 1, 1, v234);
                          v235 = MEMORY[0x277D84F90];
                          v236 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                          *(v223 + v224[7]) = v246;
                          v237 = (v223 + v224[9]);
                          *v237 = 0;
                          v237[1] = 0;
                          *(v223 + v224[12]) = v236;
                          sub_20BD71500(v223, v200 + *(v265 + 20), type metadata accessor for ShelfMetricAction);
                          *v200 = v235;
                          v238 = v151 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                          if (swift_unknownObjectWeakLoadStrong())
                          {
                            v239 = *(v238 + 8);
                            v240 = swift_getObjectType();
                            (*(v239 + 160))(v151, v200, v240, v239);
                            swift_unknownObjectRelease();
                          }

                          sub_20BD71568(v200, type metadata accessor for PageMetricAction);
                          v221 = v271;
                        }

                        else
                        {
                          sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                          v201 = sub_20C136664();
                          v202 = v258;
                          (*(*(v201 - 8) + 56))(v258, 1, 1, v201);
                          v203 = v264;
                          v204 = *(v264 + 20);
                          v205 = sub_20C134F24();
                          (*(*(v205 - 8) + 104))(v202 + v204, v262, v205);
                          v206 = v203[6];
                          v207 = sub_20C132C14();
                          (*(*(v207 - 8) + 56))(v202 + v206, 1, 1, v207);
                          v208 = v203[8];
                          v209 = sub_20C135ED4();
                          (*(*(v209 - 8) + 56))(v202 + v208, 1, 1, v209);
                          v210 = v203[10];
                          v211 = sub_20C1352E4();
                          (*(*(v211 - 8) + 104))(v202 + v210, v248, v211);
                          v212 = v203[11];
                          v213 = sub_20C136E94();
                          (*(*(v213 - 8) + 56))(v202 + v212, 1, 1, v213);
                          v214 = MEMORY[0x277D84F90];
                          v215 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                          *(v202 + v203[7]) = v247;
                          v216 = (v202 + v203[9]);
                          *v216 = 0;
                          v216[1] = 0;
                          *(v202 + v203[12]) = v215;
                          v217 = v256;
                          sub_20BD71500(v202, &v256[*(v265 + 20)], type metadata accessor for ShelfMetricAction);
                          *v217 = v214;
                          v218 = v151 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                          if (swift_unknownObjectWeakLoadStrong())
                          {
                            v219 = *(v218 + 8);
                            v220 = swift_getObjectType();
                            (*(v219 + 160))(v151, v217, v220, v219);
                            swift_unknownObjectRelease();
                          }

                          sub_20BD71568(v217, type metadata accessor for PageMetricAction);
                          v221 = v258;
                        }

                        sub_20BD71568(v221, type metadata accessor for ShelfMetricAction);
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        (*v280)(v281, v279);
                        v173 = v41;
                        v145 = v282;
                        goto LABEL_79;
                      }

                      v245 = v174;
                      LODWORD(v244) = v300;
                      v243 = v306;
                      v176 = v151 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                      if (swift_unknownObjectWeakLoadStrong())
                      {
                        v177 = *(v176 + 8);
                        v178 = swift_getObjectType();
                        (*(v177 + 192))(v151, v243, v244, v268, v178, v177);
                        swift_unknownObjectRelease();
                        sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                        v179 = swift_allocObject();
                        v242 = v161;
                        *(v179 + 16) = v161;
                        *(v179 + 24) = v160;
                        v180 = swift_allocObject();
                        *(v180 + 16) = sub_20BD714D0;
                        *(v180 + 24) = v179;
                        v181 = swift_allocObject();
                        v243 = v181;
                        *(v181 + 16) = sub_20BD714D8;
                        *(v181 + 24) = v180;
                        v182 = v269;
                        v183 = v254;
                        (*(v269 + 16))(v266, v267, v254);
                        v184 = *(v182 + 80);
                        v244 = v169;
                        v185 = v182;
                        v186 = (v184 + 16) & ~v184;
                        v187 = &v259[v186] & 0xFFFFFFFFFFFFFFF8;
                        v188 = swift_allocObject();
                        (*(v185 + 32))(v188 + v186, v266, v183);
                        v189 = (v188 + v187);
                        v190 = v243;
                        *v189 = sub_20BD714F4;
                        v189[1] = v190;
                        swift_unknownObjectRetain();
                        v191 = v257;
                        sub_20C137C94();
                        (*(v185 + 8))(v267, v183);
                        v192 = v261;
                        v193 = sub_20C137CB4();
                        v194 = swift_allocObject();
                        *(v194 + 16) = 0;
                        *(v194 + 24) = 0;
                        v193(sub_20B52347C, v194);

                        sub_20BB125A4(v268, v263, v244, v245);
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        (*v250)(v191, v192);
LABEL_76:
                        (*v280)(v281, v279);
LABEL_77:
                        v173 = v41;
LABEL_78:
                        v145 = v282;
                        v148 = v283;
LABEL_79:
                        v34 = v277;
                        sub_20BD71568(v173, type metadata accessor for ShelfItemAction);
                        sub_20BD71568(v275, type metadata accessor for ShelfCellItemInfo);
                        goto LABEL_48;
                      }

                      sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                      v195 = v268;
                      v196 = v263;
                      v197 = v169;
                      v198 = v245;
                    }

                    else
                    {
                      sub_20B520158(&v288, &qword_27C762340, &unk_20C150290);
                      sub_20BEDA40C(v174, v161, v160);
                      v195 = v268;
                      v196 = v263;
                      v197 = v169;
                      v198 = v174;
                    }

                    sub_20BB125A4(v195, v196, v197, v198);
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    goto LABEL_76;
                  }

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  sub_20BD71568(v41, type metadata accessor for ShelfItemAction);
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

LABEL_48:
              ++v146;
              if (v148 == v145)
              {
                goto LABEL_42;
              }
            }
          }

LABEL_89:
          __break(1u);
          while (1)
          {
LABEL_90:
            sub_20B520158(v34, &qword_27C762550, &unk_20C1505A0);
            v286 = 0;
            v287 = 0xE000000000000000;
            sub_20C13DC94();

            v286 = 0xD00000000000002BLL;
            v287 = 0x800000020C1B2100;
            sub_20BC73EC0();
            v241 = sub_20C13DFA4();
            MEMORY[0x20F2F4230](v241);

            sub_20C13DE24();
            __break(1u);
          }
        }

LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    __break(1u);
    goto LABEL_87;
  }
}

void sub_20BD71260()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + 48);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + 56);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + 64);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout + 72);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView);
}

id sub_20BD71314(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVQueueListLockupView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BD71424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BD7146C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BD71500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD71568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BD715C8(uint64_t a1, uint64_t a2)
{
  v293 = a2;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8, &unk_20C17C050);
  v290 = *(v274 - 8);
  v3 = *(v290 + 64);
  MEMORY[0x28223BE20](v274);
  v272 = &v237 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v273 = &v237 - v5;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v250 = &v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v249 = &v237 - v9;
  v270 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v270);
  v267 = (&v237 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v266 = (&v237 - v12);
  MEMORY[0x28223BE20](v13);
  v265 = (&v237 - v14);
  MEMORY[0x28223BE20](v15);
  v264 = (&v237 - v16);
  v269 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v269);
  v258 = &v237 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v257 = &v237 - v19;
  MEMORY[0x28223BE20](v20);
  v256 = &v237 - v21;
  MEMORY[0x28223BE20](v22);
  v255 = &v237 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v24 - 8);
  v278 = &v237 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v277 = &v237 - v27;
  v285 = type metadata accessor for ShelfCellItemInfo(0);
  v28 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v282 = (&v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v281 = (&v237 - v31);
  v286 = sub_20C133244();
  v32 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v284 = &v237 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v283 = &v237 - v35;
  v292 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](a1);
  v276 = &v237 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v288 = (&v237 - v38);
  MEMORY[0x28223BE20](v39);
  v275 = &v237 - v40;
  MEMORY[0x28223BE20](v41);
  v287 = (&v237 - v43);
  v298 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C764588, 0x277D758B8);
    sub_20B9E0F28();
    sub_20C13CFF4();
    v294 = v299;
    v44 = v300;
    v45 = v301;
    v46 = v302;
    v47 = v303;
  }

  else
  {
    v48 = -1 << *(v42 + 32);
    v44 = v42 + 56;
    v45 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = v50 & *(v42 + 56);
    v294 = v42;

    v46 = 0;
  }

  v289 = v45;
  v51 = (v45 + 64) >> 6;
  v280 = (v28 + 48);
  v268 = *MEMORY[0x277D51408];
  v262 = v3 + 7;
  v263 = v290 + 16;
  v261 = v290 + 32;
  v254 = *MEMORY[0x277D51768];
  v259 = (v6 + 8);
  v260 = v290 + 8;
  v253 = *MEMORY[0x277D51780];
  v279 = (v32 + 8);
  v252 = xmmword_20C17BFC0;
  v251 = xmmword_20C1719C0;
  v291 = MEMORY[0x277D84F90];
  v52 = v293;
  while (1)
  {
    v53 = v46;
    v54 = v294;
    if (v294 < 0)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v57 = v53;
        v58 = v47;
        v46 = v53;
        if (!v47)
        {
          while (1)
          {
            v46 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              break;
            }

            if (v46 >= v51)
            {
              goto LABEL_81;
            }

            v58 = *(v44 + 8 * v46);
            ++v57;
            if (v58)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_84:
          sub_20B520158(v47, &qword_27C762550, &unk_20C1505A0);
          v296 = 0;
          v297 = 0xE000000000000000;
          sub_20C13DC94();

          v296 = 0xD00000000000002BLL;
          v297 = 0x800000020C1B2100;
          sub_20BC73EC0();
          v236 = sub_20C13DFA4();
          MEMORY[0x20F2F4230](v236);

          result = sub_20C13DE24();
          __break(1u);
          return result;
        }

LABEL_16:
        v330 = (v58 - 1) & v58;
        v56 = *(*(v54 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v58)))));
        if (!v56)
        {
          goto LABEL_81;
        }

LABEL_17:
        v59 = [v56 type];
        if (v59 != 1)
        {
          break;
        }

        if (*(v52 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed) == 1)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_47;
          }

          v84 = Strong;
          v85 = *(Strong + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
          if (v85)
          {
            v63 = v288;
            v288[1] = 0;
            v63[2] = 0;
            *v63 = 1;
            *(v63 + 24) = 64;
            swift_storeEnumTagMultiPayload();
            v86 = *(v85 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
            swift_unknownObjectRetain();
            v87 = [v86 indexPathForCell_];
            if (v87)
            {
              v245 = v84;
              v246 = v51;
              v88 = v284;
              v89 = v87;
              sub_20C1331E4();

              v90 = *(v85 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);
              v91 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
              swift_beginAccess();
              v92 = *(v85 + v91);

              v93 = v85;
              v47 = v278;
              v248 = v93;
              sub_20C0C7BB4(v88, v90, v92, v278);

              if ((*v280)(v47, 1, v285) == 1)
              {
                goto LABEL_84;
              }

              v94 = v282;
              sub_20B8B469C(v47, v282);
              v95 = v94[3];
              v247 = v94[4];
              v97 = v94;
              v96 = *v94;
              v244 = v97[1];
              v63 = v288;
              v98 = v276;
              sub_20BD71500(v288, v276, type metadata accessor for ShelfItemAction);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v51 = v246;
              if (EnumCaseMultiPayload == 7)
              {
                v100 = *(v98 + 8);
                v243 = *v98;
                v244 = v100;
                v101 = *(v98 + 16);
                v102 = *(v98 + 24);
                ObjectType = swift_getObjectType();
                v104 = *(v247 + 40);
                v242 = v95;
                v104(v306, ObjectType);
                v327 = v306[8];
                v328 = v306[9];
                v329 = v307;
                v323 = v306[4];
                v324 = v306[5];
                v325 = v306[6];
                v326 = v306[7];
                v319 = v306[0];
                v320 = v306[1];
                v321 = v306[2];
                v322 = v306[3];
                if (sub_20B5EAF8C(&v319) == 1)
                {
                  sub_20BB125A4(v243, v244, v101, v102);
                  v63 = v288;
                  goto LABEL_41;
                }

                v111 = v243;
                v241 = v101;
                v63 = v288;
                if (!(v102 >> 6))
                {
                  sub_20B520158(v306, &qword_27C762340, &unk_20C150290);
                  v147 = v241;

                  sub_20BED9F00(v111 & 1, v244, v147, v102, v242, v247);
                  v148 = v243;
                  sub_20BB125A4(v243, v244, v147, v102);
                  sub_20BB125A4(v148, v244, v147, v102);
                  goto LABEL_41;
                }

                if (v102 >> 6 == 1)
                {
                  v240 = v102;
                  LODWORD(v239) = v320;
                  v238 = v326;
                  v112 = v248;
                  v113 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    v114 = *(v113 + 8);
                    v115 = swift_getObjectType();
                    v116 = *(v114 + 192);
                    v117 = v114;
                    v51 = v246;
                    v116(v112, v238, v239, v111, v115, v117);
                    swift_unknownObjectRelease();
                    sub_20B520158(v306, &qword_27C762340, &unk_20C150290);
                    v118 = swift_allocObject();
                    v119 = v247;
                    *(v118 + 16) = v242;
                    *(v118 + 24) = v119;
                    v120 = swift_allocObject();
                    *(v120 + 16) = sub_20BD73D7C;
                    *(v120 + 24) = v118;
                    v121 = swift_allocObject();
                    v247 = v121;
                    *(v121 + 16) = sub_20BD73D64;
                    *(v121 + 24) = v120;
                    v122 = v290;
                    (*(v290 + 16))(v272, v273, v274);
                    v123 = (*(v122 + 80) + 16) & ~*(v122 + 80);
                    v239 = (v262 + v123) & 0xFFFFFFFFFFFFFFF8;
                    v124 = swift_allocObject();
                    (*(v122 + 32))(v124 + v123, v272, v274);
                    v125 = (v124 + v239);
                    v126 = v247;
                    *v125 = sub_20BD73D5C;
                    v125[1] = v126;
                    swift_unknownObjectRetain();
                    v127 = v250;
                    sub_20C137C94();
                    (*(v122 + 8))(v273, v274);
                    v247 = sub_20C137CB4();
                    v128 = swift_allocObject();
                    *(v128 + 16) = 0;
                    *(v128 + 24) = 0;
                    (v247)(sub_20B5DF6DC, v128);

                    sub_20BB125A4(v243, v244, v241, v240);
                    (*v259)(v127, v271);
                  }

                  else
                  {
                    sub_20B520158(v306, &qword_27C762340, &unk_20C150290);
                    sub_20BB125A4(v111, v244, v241, v240);
                  }

LABEL_41:
                  sub_20BD71568(v282, type metadata accessor for ShelfCellItemInfo);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  (*v279)(v284, v286);
LABEL_45:
                  v54 = v294;
LABEL_46:
                  sub_20BD71568(v63, type metadata accessor for ShelfItemAction);
LABEL_47:

                  goto LABEL_48;
                }

                if (v241 | v244 | v243 || v102 != 128)
                {
                  sub_20B520158(v306, &qword_27C762340, &unk_20C150290);
                  v193 = sub_20C136664();
                  v194 = v258;
                  (*(*(v193 - 8) + 56))(v258, 1, 1, v193);
                  v195 = v269;
                  v196 = *(v269 + 20);
                  v197 = sub_20C134F24();
                  (*(*(v197 - 8) + 104))(v194 + v196, v268, v197);
                  v198 = v195[6];
                  v199 = sub_20C132C14();
                  (*(*(v199 - 8) + 56))(v194 + v198, 1, 1, v199);
                  v200 = v195[8];
                  v201 = sub_20C135ED4();
                  (*(*(v201 - 8) + 56))(v194 + v200, 1, 1, v201);
                  v202 = v195[10];
                  v203 = sub_20C1352E4();
                  (*(*(v203 - 8) + 104))(v194 + v202, v254, v203);
                  v204 = v195[11];
                  v205 = sub_20C136E94();
                  (*(*(v205 - 8) + 56))(v194 + v204, 1, 1, v205);
                  v206 = MEMORY[0x277D84F90];
                  v207 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                  *(v194 + v195[7]) = v251;
                  v208 = (v194 + v195[9]);
                  *v208 = 0;
                  v208[1] = 0;
                  *(v194 + v195[12]) = v207;
                  v209 = v267;
                  sub_20BD71500(v194, v267 + *(v270 + 20), type metadata accessor for ShelfMetricAction);
                  *v209 = v206;
                  v210 = v248;
                  v211 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    v212 = *(v211 + 8);
                    v213 = swift_getObjectType();
                    (*(v212 + 160))(v210, v267, v213, v212);
                    swift_unknownObjectRelease();
                  }

                  sub_20BD71568(v267, type metadata accessor for PageMetricAction);
                  v106 = type metadata accessor for ShelfMetricAction;
                  v107 = v258;
                }

                else
                {
                  sub_20B520158(v306, &qword_27C762340, &unk_20C150290);
                  v151 = sub_20C136664();
                  v152 = v257;
                  (*(*(v151 - 8) + 56))(v257, 1, 1, v151);
                  v153 = v269;
                  v154 = *(v269 + 20);
                  v155 = sub_20C134F24();
                  (*(*(v155 - 8) + 104))(v152 + v154, v268, v155);
                  v156 = v153[6];
                  v157 = sub_20C132C14();
                  (*(*(v157 - 8) + 56))(v152 + v156, 1, 1, v157);
                  v158 = v153[8];
                  v159 = sub_20C135ED4();
                  (*(*(v159 - 8) + 56))(v152 + v158, 1, 1, v159);
                  v160 = v153[10];
                  v161 = sub_20C1352E4();
                  (*(*(v161 - 8) + 104))(v152 + v160, v253, v161);
                  v162 = v153[11];
                  v163 = sub_20C136E94();
                  (*(*(v163 - 8) + 56))(v152 + v162, 1, 1, v163);
                  v164 = MEMORY[0x277D84F90];
                  v165 = sub_20B6B29D4(MEMORY[0x277D84F90]);
                  *(v152 + v153[7]) = v252;
                  v166 = (v152 + v153[9]);
                  *v166 = 0;
                  v166[1] = 0;
                  *(v152 + v153[12]) = v165;
                  v167 = v266;
                  sub_20BD71500(v152, v266 + *(v270 + 20), type metadata accessor for ShelfMetricAction);
                  *v167 = v164;
                  v168 = v248;
                  v169 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    v170 = *(v169 + 8);
                    v171 = swift_getObjectType();
                    (*(v170 + 160))(v168, v266, v171, v170);
                    swift_unknownObjectRelease();
                  }

                  sub_20BD71568(v266, type metadata accessor for PageMetricAction);
                  v106 = type metadata accessor for ShelfMetricAction;
                  v107 = v257;
                }
              }

              else
              {
                v105 = swift_getObjectType();
                (*(v247 + 72))(v244, v63, v96, v105);
                v106 = type metadata accessor for ShelfItemAction;
                v107 = v98;
              }

              sub_20BD71568(v107, v106);
              goto LABEL_41;
            }

LABEL_38:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_46;
          }

          goto LABEL_37;
        }

LABEL_35:

        v53 = v46;
        v47 = v330;
        if (v54 < 0)
        {
          goto LABEL_9;
        }
      }

      if (v59)
      {
        break;
      }

      if (*(v52 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed) != 1)
      {
        goto LABEL_35;
      }

      v60 = swift_unknownObjectWeakLoadStrong();
      if (!v60)
      {
        goto LABEL_47;
      }

      v61 = v60;
      v62 = *(v60 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
      if (v62)
      {
        v63 = v287;
        *v287 = 0;
        v63[1] = 0;
        v63[2] = 0;
        *(v63 + 24) = 64;
        swift_storeEnumTagMultiPayload();
        v64 = *(v62 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
        swift_unknownObjectRetain();
        v65 = [v64 indexPathForCell_];
        if (!v65)
        {
          goto LABEL_38;
        }

        v245 = v61;
        v246 = v56;
        v66 = v283;
        v67 = v65;
        sub_20C1331E4();

        v68 = *(v62 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);
        v69 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
        swift_beginAccess();
        v70 = *(v62 + v69);

        v71 = v62;
        v47 = v277;
        v248 = v71;
        sub_20C0C7BB4(v66, v68, v70, v277);

        if ((*v280)(v47, 1, v285) == 1)
        {
          goto LABEL_84;
        }

        v72 = v281;
        sub_20B8B469C(v47, v281);
        v73 = v72[3];
        v247 = v72[4];
        v75 = v72;
        v74 = *v72;
        v244 = v75[1];
        v63 = v287;
        v76 = v275;
        sub_20BD71500(v287, v275, type metadata accessor for ShelfItemAction);
        v77 = swift_getEnumCaseMultiPayload();
        v56 = v246;
        if (v77 == 7)
        {
          v78 = *(v76 + 8);
          v243 = *v76;
          v244 = v78;
          v79 = *(v76 + 16);
          v80 = *(v76 + 24);
          v81 = swift_getObjectType();
          v82 = *(v247 + 40);
          v242 = v73;
          v82(v304, v81);
          v316 = v304[8];
          v317 = v304[9];
          v312 = v304[4];
          v313 = v304[5];
          v314 = v304[6];
          v315 = v304[7];
          v308 = v304[0];
          v309 = v304[1];
          v318 = v305;
          v310 = v304[2];
          v311 = v304[3];
          if (sub_20B5EAF8C(&v308) == 1)
          {
            sub_20BB125A4(v243, v244, v79, v80);
            v63 = v287;
LABEL_44:
            sub_20BD71568(v281, type metadata accessor for ShelfCellItemInfo);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            (*v279)(v283, v286);
            goto LABEL_45;
          }

          v129 = v243;
          v241 = v79;
          v63 = v287;
          if (!(v80 >> 6))
          {
            sub_20B520158(v304, &qword_27C762340, &unk_20C150290);
            v149 = v241;

            sub_20BED9F00(v129 & 1, v244, v149, v80, v242, v247);
            v150 = v243;
            sub_20BB125A4(v243, v244, v149, v80);
            sub_20BB125A4(v150, v244, v149, v80);
            goto LABEL_44;
          }

          if (v80 >> 6 == 1)
          {
            v240 = v80;
            LODWORD(v239) = v309;
            v238 = v315;
            v130 = v248;
            v131 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v132 = *(v131 + 8);
              v133 = swift_getObjectType();
              v134 = *(v132 + 192);
              v135 = v132;
              v56 = v246;
              v134(v130, v238, v239, v129, v133, v135);
              swift_unknownObjectRelease();
              sub_20B520158(v304, &qword_27C762340, &unk_20C150290);
              v136 = swift_allocObject();
              v137 = v247;
              *(v136 + 16) = v242;
              *(v136 + 24) = v137;
              v138 = swift_allocObject();
              *(v138 + 16) = sub_20BD73D7C;
              *(v138 + 24) = v136;
              v139 = swift_allocObject();
              v247 = v139;
              *(v139 + 16) = sub_20BD73D64;
              *(v139 + 24) = v138;
              v140 = v290;
              (*(v290 + 16))(v272, v273, v274);
              v141 = (*(v140 + 80) + 16) & ~*(v140 + 80);
              v239 = (v262 + v141) & 0xFFFFFFFFFFFFFFF8;
              v142 = swift_allocObject();
              (*(v140 + 32))(v142 + v141, v272, v274);
              v143 = (v142 + v239);
              v144 = v247;
              *v143 = sub_20BD73D5C;
              v143[1] = v144;
              swift_unknownObjectRetain();
              v145 = v249;
              sub_20C137C94();
              (*(v140 + 8))(v273, v274);
              v247 = sub_20C137CB4();
              v146 = swift_allocObject();
              *(v146 + 16) = 0;
              *(v146 + 24) = 0;
              (v247)(sub_20B5DF6DC, v146);

              sub_20BB125A4(v243, v244, v241, v240);
              (*v259)(v145, v271);
            }

            else
            {
              sub_20B520158(v304, &qword_27C762340, &unk_20C150290);
              sub_20BB125A4(v129, v244, v241, v240);
            }

            goto LABEL_44;
          }

          if (v241 | v244 | v243 || v80 != 128)
          {
            sub_20B520158(v304, &qword_27C762340, &unk_20C150290);
            v214 = sub_20C136664();
            v215 = v256;
            (*(*(v214 - 8) + 56))(v256, 1, 1, v214);
            v216 = v269;
            v217 = *(v269 + 20);
            v218 = sub_20C134F24();
            (*(*(v218 - 8) + 104))(v215 + v217, v268, v218);
            v219 = v216[6];
            v220 = sub_20C132C14();
            (*(*(v220 - 8) + 56))(v215 + v219, 1, 1, v220);
            v221 = v216[8];
            v222 = sub_20C135ED4();
            (*(*(v222 - 8) + 56))(v215 + v221, 1, 1, v222);
            v223 = v216[10];
            v224 = sub_20C1352E4();
            (*(*(v224 - 8) + 104))(v215 + v223, v254, v224);
            v225 = v216[11];
            v226 = sub_20C136E94();
            (*(*(v226 - 8) + 56))(v215 + v225, 1, 1, v226);
            v227 = MEMORY[0x277D84F90];
            v228 = sub_20B6B29D4(MEMORY[0x277D84F90]);
            *(v215 + v216[7]) = v251;
            v229 = (v215 + v216[9]);
            *v229 = 0;
            v229[1] = 0;
            *(v215 + v216[12]) = v228;
            v230 = v265;
            sub_20BD71500(v215, v265 + *(v270 + 20), type metadata accessor for ShelfMetricAction);
            *v230 = v227;
            v231 = v248;
            v232 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v233 = *(v232 + 8);
              v234 = swift_getObjectType();
              (*(v233 + 160))(v231, v265, v234, v233);
              swift_unknownObjectRelease();
            }

            sub_20BD71568(v265, type metadata accessor for PageMetricAction);
            v109 = type metadata accessor for ShelfMetricAction;
            v110 = v256;
          }

          else
          {
            sub_20B520158(v304, &qword_27C762340, &unk_20C150290);
            v172 = sub_20C136664();
            v173 = v255;
            (*(*(v172 - 8) + 56))(v255, 1, 1, v172);
            v174 = v269;
            v175 = *(v269 + 20);
            v176 = sub_20C134F24();
            (*(*(v176 - 8) + 104))(v173 + v175, v268, v176);
            v177 = v174[6];
            v178 = sub_20C132C14();
            (*(*(v178 - 8) + 56))(v173 + v177, 1, 1, v178);
            v179 = v174[8];
            v180 = sub_20C135ED4();
            (*(*(v180 - 8) + 56))(v173 + v179, 1, 1, v180);
            v181 = v174[10];
            v182 = sub_20C1352E4();
            (*(*(v182 - 8) + 104))(v173 + v181, v253, v182);
            v183 = v174[11];
            v184 = sub_20C136E94();
            (*(*(v184 - 8) + 56))(v173 + v183, 1, 1, v184);
            v185 = MEMORY[0x277D84F90];
            v186 = sub_20B6B29D4(MEMORY[0x277D84F90]);
            *(v173 + v174[7]) = v252;
            v187 = (v173 + v174[9]);
            *v187 = 0;
            v187[1] = 0;
            *(v173 + v174[12]) = v186;
            v188 = v264;
            sub_20BD71500(v173, v264 + *(v270 + 20), type metadata accessor for ShelfMetricAction);
            *v188 = v185;
            v189 = v248;
            v190 = v248 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v191 = *(v190 + 8);
              v192 = swift_getObjectType();
              (*(v191 + 160))(v189, v264, v192, v191);
              swift_unknownObjectRelease();
            }

            sub_20BD71568(v264, type metadata accessor for PageMetricAction);
            v109 = type metadata accessor for ShelfMetricAction;
            v110 = v255;
          }
        }

        else
        {
          v108 = swift_getObjectType();
          (*(v247 + 72))(v244, v63, v74, v108);
          v109 = type metadata accessor for ShelfItemAction;
          v110 = v76;
        }

        sub_20BD71568(v110, v109);
        goto LABEL_44;
      }

LABEL_37:

      swift_unknownObjectRelease();
LABEL_48:
      v53 = v46;
      v47 = v330;
      v52 = v293;
      if (v54 < 0)
      {
        goto LABEL_9;
      }
    }

    MEMORY[0x20F2F43B0]();
    if (*((v298 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v298 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v291 = v298;
    v47 = v330;
  }

LABEL_9:
  v55 = sub_20C13DB64();
  if (v55)
  {
    v295 = v55;
    sub_20B51C88C(0, &qword_27C764588, 0x277D758B8);
    swift_dynamicCast();
    v56 = v296;
    v46 = v53;
    v330 = v47;
    v54 = v294;
    if (v296)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v54 = v294;
  }

LABEL_81:
  sub_20B583EDC(v54);
  return v291;
}

__n128 sub_20BD736D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v2 whiteColor];
  v5 = [v2 darkGrayColor];
  v6 = [v2 secondaryLabelColor];
  v7 = [v2 tertiaryLabelColor];
  *a1 = xmmword_20C17BFD0;
  *(a1 + 16) = xmmword_20C17BFE0;
  __asm { FMOV            V0.2D, #4.0 }

  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  return result;
}

void sub_20BD737C4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_layout;
  sub_20BD736D8(v26);
  v2 = v26[3];
  *(v1 + 32) = v26[2];
  *(v1 + 48) = v2;
  *(v1 + 64) = v26[4];
  *(v1 + 80) = v27;
  v3 = v26[1];
  *v1 = v26[0];
  *(v1 + 16) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setNumberOfLines_];
  [v5 setLineBreakMode_];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  [v5 setFont_];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  [v5 setTextColor_];

  v10 = v5;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];

  *(v0 + v4) = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  v14 = [v6 preferredFontForTextStyle_];
  [v13 setFont_];

  v15 = [v8 secondaryLabelColor];
  [v13 setTextColor_];

  v16 = v13;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  *(v0 + v12) = v16;
  v18 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImage;
  v19 = sub_20C13C914();
  v20 = [objc_opt_self() smm:v19 systemImageNamed:?];

  v21 = [v6 preferredFontForTextStyle_];
  v22 = [objc_opt_self() configurationWithFont_];
  v23 = [v20 imageWithConfiguration_];

  *(v0 + v18) = v23;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed) = 0;
  v24 = v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_panOriginYOffset;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_offsetPerMove) = 0x4069000000000000;
  v25 = v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_movedIndexInCurrentPan;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_20C13DE24();
  __break(1u);
}

uint64_t objectdestroy_31Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8, &unk_20C17C050);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BD73C98(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8, &unk_20C17C050) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E31AC(a1, a2, v2 + v6, v8, v9);
}

void *sub_20BD73D80(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[23] = 0;
  v1[24] = 0;
  v1[25] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v2 = *(&v4[0] + 1);
  v1[4] = *&v4[0];
  v1[5] = v2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v1[6] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920, &unk_20C1765F0);
  sub_20C133AA4();
  sub_20B51C710(v4, (v1 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8, &qword_20C16D960);
  sub_20C133AA4();
  sub_20B51C710(v4, (v1 + 12));
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  v1[17] = *&v4[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0, &unk_20C14F950);
  sub_20C133AA4();
  sub_20B51C710(v4, (v1 + 18));
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BAA4FAC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v4);

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v4);

  return v1;
}

double sub_20BD74064(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_20C13CDF4();
    v8 = *(*(v7 - 8) + 56);
    v8(v3, 1, 1, v7);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;

    sub_20B614F94(0, 0, v3, &unk_20C17C1D0, v9);

    v8(v3, 1, 1, v7);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;

    sub_20B614F94(0, 0, v3, &unk_20C17C1E0, v10);

    sub_20BD774E4();
  }

  return result;
}

uint64_t sub_20BD74240()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_20BD77790();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[7] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v3[1] = sub_20BD74350;

      return sub_20BD53558();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BD74350()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BC9D0E4, 0, 0);
}

uint64_t sub_20BD74468()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20BD76F00();
}

uint64_t sub_20BD744F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20BD74D80();
}

uint64_t sub_20BD74588(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13DDD4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD74648, 0, 0);
}

uint64_t sub_20BD74648()
{
  sub_20BD77790();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BD74798;

    return sub_20BD530AC(1);
  }

  else
  {
    sub_20C13E084();
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_20BD7497C;

    return sub_20B71FFAC(1000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_20BD74798()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BD748B0, 0, 0);
}

uint64_t sub_20BD748B0()
{
  sub_20C13E084();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_20BD7497C;

  return sub_20B71FFAC(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_20BD7497C()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_20BD78634;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_20BD74B14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20BD74B14()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_20BD74BFC;

    return sub_20BD53558();
  }

  else
  {
    sub_20BD75CB4(v0[2]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BD74BFC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BD74D14, 0, 0);
}

uint64_t sub_20BD74D14()
{
  sub_20BD75CB4(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD74D80()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v1[6] = swift_task_alloc();
  v3 = sub_20C135174();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD74EE0, 0, 0);
}

uint64_t sub_20BD74EE0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[2] + 96), *(v0[2] + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[6], &unk_27C76BC00, &unk_20C1500B0);
    v4 = sub_20C1356F4();
    sub_20BB6DBA8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
    sub_20C139A84();
    v10 = swift_task_alloc();
    v0[10] = v10;
    *(v10 + 16) = "SeymourUI/TVWorkoutPlanHandoffPresenter.swift";
    *(v10 + 24) = 45;
    *(v10 + 32) = 2;
    *(v10 + 40) = 92;
    *(v10 + 48) = v8;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_20BD75178;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A78, v10, v12);
  }
}

uint64_t sub_20BD75178()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_20BD75364;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_20BD752C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD752C8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD75364()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BD7541C()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD8, &unk_20C17C1A8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_20C1364E4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v1[9] = swift_task_alloc();
  v4 = sub_20C135174();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD755D8, 0, 0);
}

uint64_t sub_20BD755D8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[2] + 96), *(v0[2] + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[9], &unk_27C76BC00, &unk_20C1500B0);
    v4 = sub_20C1356F4();
    sub_20BB6DBA8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
    sub_20C139A04();
    v10 = swift_task_alloc();
    v0[13] = v10;
    *(v10 + 16) = "SeymourUI/TVWorkoutPlanHandoffPresenter.swift";
    *(v10 + 24) = 45;
    *(v10 + 32) = 2;
    *(v10 + 40) = 100;
    *(v10 + 48) = v8;
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_20BD7587C;
    v12 = v0[8];
    v13 = v0[6];

    return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD78400, v10, v13);
  }
}

uint64_t sub_20BD7587C()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BD75BF0, 0, 0);
  }

  else
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    v2[16] = v6;
    *v6 = v2;
    v6[1] = sub_20BD75A2C;
    v7 = v2[8];

    return sub_20BD74588(v7);
  }
}

uint64_t sub_20BD75A2C()
{

  return MEMORY[0x2822009F8](sub_20BD75B28, 0, 0);
}

uint64_t sub_20BD75B28()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BD75BF0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BD75CB4(uint64_t a1)
{
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA80, &unk_20C17C150);
  MEMORY[0x28223BE20](v2 - 8);
  v114 = &v98 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA88, &qword_20C17C168);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA90, &qword_20C17C170);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA98, &qword_20C17C178);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0, &qword_20C17C180);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = &v98 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA8, &qword_20C17C188);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v18 - 8);
  v118 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
  MEMORY[0x28223BE20](v20 - 8);
  v127 = &v98 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76EAB0, &unk_20C17C190);
  MEMORY[0x28223BE20](v22 - 8);
  v126 = &v98 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
  MEMORY[0x28223BE20](v24 - 8);
  v117 = &v98 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v26 - 8);
  v125 = &v98 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B1F0, &qword_20C16FB70);
  MEMORY[0x28223BE20](v28 - 8);
  v124 = &v98 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v30 - 8);
  v116 = &v98 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v32 - 8);
  v123 = &v98 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76EAC0, &qword_20C17C1A0);
  MEMORY[0x28223BE20](v34 - 8);
  v122 = &v98 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230, &qword_20C14FC08);
  MEMORY[0x28223BE20](v36 - 8);
  v105 = &v98 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  MEMORY[0x28223BE20](v38 - 8);
  v102 = &v98 - v39;
  v104 = sub_20C137374();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v100 = &v98 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v98 - v44;
  v46 = sub_20C135814();
  v106 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v98 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v98 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v98 - v53;
  v55 = sub_20C136C64();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v109 = &v98 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v98 - v59;
  v61 = *(v1 + 120);
  v115 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 96), v61);
  sub_20C13B174();
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    return sub_20B520158(v54, &qword_27C768690, &unk_20C14FD90);
  }

  v98 = v56;
  v63 = *(v56 + 32);
  v99 = v55;
  v63(v60, v54, v55);
  v128 = sub_20C136BB4();
  sub_20C1364D4();
  v64 = v106;
  v65 = (*(v106 + 48))(v45, 1, v46);
  v108 = v60;
  if (v65 == 1)
  {
    sub_20B520158(v45, &unk_27C762300, &unk_20C151350);
  }

  else
  {
    (*(v64 + 32))(v51, v45, v46);
    (*(v64 + 16))(v48, v51, v46);
    v66 = sub_20C133594();
    (*(*(v66 - 8) + 56))(v102, 1, 1, v66);
    v67 = sub_20C135214();
    (*(*(v67 - 8) + 56))(v105, 1, 1, v67);
    v68 = v101;
    sub_20C137354();
    v69 = v100;
    sub_20B7051B0(v100, v68);
    (*(v103 + 8))(v69, v104);
    (*(v64 + 8))(v51, v46);
  }

  v70 = sub_20C137094();
  (*(*(v70 - 8) + 56))(v122, 1, 1, v70);
  v71 = v123;
  sub_20C1364C4();
  v72 = sub_20C133954();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  v73 = sub_20C133D84();
  (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
  v74 = sub_20C137B64();
  (*(*(v74 - 8) + 56))(v124, 1, 1, v74);
  v75 = sub_20C136194();
  (*(*(v75 - 8) + 56))(v125, 1, 1, v75);
  v76 = sub_20C136544();
  (*(*(v76 - 8) + 56))(v117, 1, 1, v76);
  v77 = sub_20C136F94();
  (*(*(v77 - 8) + 56))(v126, 1, 1, v77);
  v78 = sub_20C1366D4();
  (*(*(v78 - 8) + 56))(v127, 1, 1, v78);
  v79 = sub_20C135B74();
  (*(*(v79 - 8) + 56))(v118, 1, 1, v79);
  v80 = sub_20C136354();
  (*(*(v80 - 8) + 56))(v119, 1, 1, v80);
  v81 = sub_20C135FB4();
  (*(*(v81 - 8) + 56))(v120, 1, 1, v81);
  v82 = sub_20C136014();
  (*(*(v82 - 8) + 56))(v121, 1, 1, v82);
  v83 = sub_20C1378F4();
  v84 = v110;
  (*(*(v83 - 8) + 56))(v110, 1, 1, v83);
  v85 = sub_20C137834();
  v86 = v111;
  (*(*(v85 - 8) + 56))(v111, 1, 1, v85);
  v87 = sub_20C1369A4();
  v88 = v112;
  (*(*(v87 - 8) + 56))(v112, 1, 1, v87);
  v89 = sub_20C135734();
  v90 = v113;
  (*(*(v89 - 8) + 56))(v113, 1, 1, v89);
  v91 = sub_20C135334();
  v92 = v114;
  (*(*(v91 - 8) + 56))(v114, 1, 1, v91);
  v93 = v117;
  v94 = v109;
  v95 = v116;
  sub_20C136C34();

  sub_20B520158(v92, &qword_27C76EA80, &unk_20C17C150);
  sub_20B520158(v90, &unk_27C762390, &unk_20C15EC90);
  sub_20B520158(v88, &unk_27C767270, &qword_20C17C160);
  sub_20B520158(v86, &qword_27C76EA88, &qword_20C17C168);
  sub_20B520158(v84, &qword_27C76EA90, &qword_20C17C170);
  sub_20B520158(v121, &qword_27C76EA98, &qword_20C17C178);
  sub_20B520158(v120, &qword_27C76EAA0, &qword_20C17C180);
  sub_20B520158(v119, &qword_27C76EAA8, &qword_20C17C188);
  sub_20B520158(v118, &unk_27C7650D0, &unk_20C157480);
  sub_20B520158(v127, &unk_27C768800, &unk_20C152480);
  sub_20B520158(v126, &unk_27C76EAB0, &unk_20C17C190);
  sub_20B520158(v93, &qword_27C762D00, &unk_20C160540);
  sub_20B520158(v125, &unk_27C765110, &unk_20C152460);
  sub_20B520158(v124, &qword_27C76B1F0, &qword_20C16FB70);
  sub_20B520158(v95, &unk_27C765120, &unk_20C152470);
  sub_20B520158(v123, &unk_27C76A970, &qword_20C14FC10);
  sub_20B520158(v122, &unk_27C76EAC0, &qword_20C17C1A0);
  __swift_project_boxed_opaque_existential_1((v115 + 96), *(v115 + 120));
  sub_20C13B1B4();
  v96 = *(v98 + 8);
  v97 = v99;
  v96(v94, v99);
  return (v96)(v108, v97);
}

uint64_t sub_20BD76F00()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v1[3] = swift_task_alloc();
  v2 = sub_20C135174();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD76FF8, 0, 0);
}

uint64_t sub_20BD76FF8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 96), *(v0[2] + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[3], &unk_27C76BC00, &unk_20C1500B0);
    v4 = sub_20C1356F4();
    sub_20BB6DBA8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];
LABEL_8:

    return v6();
  }

  v7.n128_f64[0] = (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  v8 = sub_20BD7736C(v7);
  v0[7] = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (!Strong)
  {

    (*(v0[5] + 8))(v0[6], v0[4]);

    v6 = v0[1];
    goto LABEL_8;
  }

  v0[9] = v8;
  sub_20C13CDA4();
  v0[10] = sub_20C13CD94();
  v12 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD77250, v12, v11);
}

uint64_t sub_20BD77250()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  sub_20BD52EE4(v1, v2);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BD772E4, 0, 0);
}

uint64_t sub_20BD772E4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD7736C(__n128 a1)
{
  if (sub_20C1350F4() == 4 || (v2 = sub_20C137194(), v2 != sub_20C137194()))
  {
    v13 = *(v1 + 136);
    v14 = v13[9];
    v15 = v13[10];
    __swift_project_boxed_opaque_existential_1(v13 + 6, v14);
    return sub_20B5E107C(0xD000000000000026, 0x800000020C1B21C0, v14, v15);
  }

  else
  {
    v3 = sub_20C135154();
    if (!v4)
    {
      v3 = sub_20C135104();
    }

    v5 = v3;
    v6 = v4;
    v7 = *(v1 + 136);
    v8 = v7[9];
    v9 = v7[10];
    __swift_project_boxed_opaque_existential_1(v7 + 6, v8);
    sub_20B5E107C(0xD000000000000024, 0x800000020C1B21F0, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20C14F980;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_20B5D91B8();
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    v11 = sub_20C13C924();

    return v11;
  }
}

double sub_20BD774E4()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  if (qword_27C760CD0 != -1)
  {
    swift_once();
  }

  if (qword_27C760CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_20C13C4A4();
  __swift_project_value_buffer(v2, qword_27C79CF28);
  sub_20B5E2E18();
  v3 = sub_20C13D374();

  v4 = sub_20C13AE04();

  v1[23] = v4;
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
  if (qword_27C760CC8 != -1)
  {
    swift_once();
  }

  v5 = sub_20C13D374();

  v6 = sub_20C13AE34();

  v1[24] = v6;
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
  if (qword_27C760CC0 != -1)
  {
    swift_once();
  }

  v7 = sub_20C13D374();

  v8 = sub_20C13AE34();

  v1[25] = v8;

  swift_unknownObjectRelease();
  return result;
}

double sub_20BD77790()
{
  if (v0[23])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  if (v0[24])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  if (v0[25])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    swift_unknownObjectRetain();
    sub_20C13AE44();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BD77888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20BD778A8, 0, 0);
}

uint64_t sub_20BD778A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_20B52EB0C;

    return sub_20BD7541C();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BD7799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20BD779BC, 0, 0);
}

uint64_t sub_20BD779BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_20BD77790();
    v2 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 64) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 72) = v3;
      *v3 = v0;
      v3[1] = sub_20BD77AE4;

      return sub_20BD53558();
    }

    v5 = *(v0 + 56) == 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BD77AE4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BD77BFC, 0, 0);
}

uint64_t sub_20BD77BFC()
{

  **(v0 + 40) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

double sub_20BD77C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  a4(0, 0, v8, a3, v11);

  return result;
}

uint64_t sub_20BD77D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20BD77DB8, 0, 0);
}

uint64_t sub_20BD77DB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    if (Strong[25])
    {
      __swift_project_boxed_opaque_existential_1(Strong + 18, Strong[21]);
      swift_unknownObjectRetain();
      sub_20C13AE44();
      swift_unknownObjectRelease();
    }

    v2 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 64) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 72) = v3;
      *v3 = v0;
      v3[1] = sub_20BD77F28;

      return sub_20BD53558();
    }

    v5 = *(v0 + 56) == 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BD77F28()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BD78630, 0, 0);
}

void *sub_20BD78040()
{
  sub_20B583E6C((v0 + 2));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_20BD780A8()
{
  sub_20BD78040();

  return swift_deallocClassInstance();
}

uint64_t sub_20BD781E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BD77D98(a1, v4, v5, v6);
}

uint64_t sub_20BD78298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BD7799C(a1, v4, v5, v6);
}

uint64_t sub_20BD7834C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BD77888(a1, v4, v5, v6);
}

uint64_t sub_20BD78438()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BD74220(v0);
}

uint64_t sub_20BD784C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20BD74468();
}

uint64_t sub_20BD7857C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20BD744F8();
}

double sub_20BD78638()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  return result;
}

uint64_t sub_20BD786B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v73 = a2;
  v74 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330, &unk_20C16FCD0);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - v8;
  MEMORY[0x28223BE20](v9);
  v66 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v61 - v12;
  MEMORY[0x28223BE20](v13);
  v63 = &v61 - v14;
  v64 = sub_20C134834();
  v15 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v61 - v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B468, &qword_20C16FF78);
  v19 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_personalScores) = MEMORY[0x277D84FA0];
  v28 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastEnergyMetric;
  v29 = sub_20C133B04();
  (*(*(v29 - 8) + 56))(v4 + v28, 1, 1, v29);
  v30 = v4 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastDeltaTime) = 0;
  v31 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator__lastScoreMetric;
  v32 = sub_20C1337A4();
  (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  sub_20B52F9E8(v27, v24, &unk_27C768AE0, &unk_20C1523E0);
  v33 = v63;
  sub_20C13C124();
  sub_20B520158(v27, &unk_27C768AE0, &unk_20C1523E0);
  (*(v19 + 32))(v4 + v31, v21, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B52E424(v77, v4 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionClient);
  v34 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_userBodyMass;
  v35 = sub_20C135364();
  v67 = *(v35 - 8);
  v68 = v35;
  v36 = v4 + v34;
  v37 = v4;
  v38 = v76;
  (*(v67 + 16))(v36, v75);
  *(v4 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionToken) = v73;
  sub_20B52F9E8(v38, v33, &qword_27C76B330, &unk_20C16FCD0);
  v39 = sub_20C134844();
  v40 = *(v39 - 8);
  v71 = *(v40 + 48);
  v41 = v71(v33, 1, v39);

  if (v41 == 1)
  {
    sub_20B520158(v33, &qword_27C76B330, &unk_20C16FCD0);
    v42 = v64;
    (*(v15 + 104))(v72, *MEMORY[0x277D50AA0], v64);
    (*(v15 + 32))(v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType, v72, v42);
  }

  else
  {
    v43 = v62;
    sub_20C134824();
    (*(v40 + 8))(v33, v39);
    v44 = *(v15 + 32);
    v45 = v64;
    v44(v72, v43, v64);
    v44((v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType), v72, v45);
  }

  v46 = v65;
  sub_20B52F9E8(v38, v65, &qword_27C76B330, &unk_20C16FCD0);
  if (v71(v46, 1, v39) == 1)
  {
    sub_20B520158(v46, &qword_27C76B330, &unk_20C16FCD0);
    v47 = MEMORY[0x277D84F90];
    v48 = v66;
    v49 = v40;
  }

  else
  {
    v50 = sub_20C1347C4();
    v49 = v40;
    (*(v40 + 8))(v46, v39);
    *&v77[0] = v50;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EB60, &unk_20C17C2D0);
    sub_20B6D6ABC(&qword_27C76EB68, &qword_27C76EB60, &unk_20C17C2D0, MEMORY[0x277D83B68]);
    v38 = v76;
    v47 = sub_20C13CBF4();

    v48 = v66;
  }

  *(v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerScores) = v47;
  sub_20B52F9E8(v38, v48, &qword_27C76B330, &unk_20C16FCD0);
  v51 = v71;
  if (v71(v48, 1, v39) == 1)
  {
    sub_20B520158(v48, &qword_27C76B330, &unk_20C16FCD0);
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = sub_20C1347A4();
    (*(v49 + 8))(v48, v39);
    *&v77[0] = v53;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EB60, &unk_20C17C2D0);
    sub_20B6D6ABC(&qword_27C76EB68, &qword_27C76EB60, &unk_20C17C2D0, MEMORY[0x277D83B68]);
    v38 = v76;
    v52 = sub_20C13CBF4();
  }

  v54 = v69;
  *(v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerMiddleScores) = v52;
  sub_20B52F9E8(v38, v54, &qword_27C76B330, &unk_20C16FCD0);
  if (v51(v54, 1, v39) == 1)
  {
    sub_20B520158(v54, &qword_27C76B330, &unk_20C16FCD0);
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = sub_20C1347B4();
    (*(v49 + 8))(v54, v39);
    *&v77[0] = v56;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EB60, &unk_20C17C2D0);
    sub_20B6D6ABC(&qword_27C76EB68, &qword_27C76EB60, &unk_20C17C2D0, MEMORY[0x277D83B68]);
    v38 = v76;
    v55 = sub_20C13CBF4();
  }

  v57 = v70;
  *(v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperMiddleScores) = v55;
  sub_20B52F9E8(v38, v57, &qword_27C76B330, &unk_20C16FCD0);
  if (v51(v57, 1, v39) == 1)
  {
    sub_20B520158(v57, &qword_27C76B330, &unk_20C16FCD0);

    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = sub_20C1347D4();
    (*(v49 + 8))(v57, v39);
    *&v77[0] = v59;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EB60, &unk_20C17C2D0);
    sub_20B6D6ABC(&qword_27C76EB68, &qword_27C76EB60, &unk_20C17C2D0, MEMORY[0x277D83B68]);
    v58 = sub_20C13CBF4();
  }

  sub_20B520158(v38, &qword_27C76B330, &unk_20C16FCD0);
  (*(v67 + 8))(v75, v68);
  *(v37 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperScores) = v58;
  return v37;
}

void sub_20BD791A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_20C133B04();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastEnergyMetric;
  swift_beginAccess();
  sub_20BD7D978(v5, v1 + v8);
  swift_endAccess();
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime + 8) & 1) == 0)
  {
    if ((~*(v1 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime) & 0x7FF0000000000000) != 0)
    {
      v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime);
      if (v9 > -9.22337204e18)
      {
        if (v9 < 9.22337204e18)
        {
          sub_20BD79DB0(v9);
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_20BD79328(double a1, double a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 - a2;
  v14 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastDeltaTime;
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastDeltaTime);
  if (vabdd_f64(v13, v15) > 5.0)
  {
    (*(v10 + 16))(v12, v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType, v9);
    v16 = (*(v10 + 88))(v12, v9);
    if (v16 != *MEMORY[0x277D50AA8])
    {
      if (v16 == *MEMORY[0x277D50AA0])
      {
        v17 = v2;
        v18 = v13 - v15;
        sub_20C13B504();
        v19 = sub_20C13BB74();
        v20 = sub_20C13D1F4();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134349056;
          *(v21 + 4) = v18;
          _os_log_impl(&dword_20B517000, v19, v20, "Detected Jump of %{public}f. Adjusting.", v21, 0xCu);
          MEMORY[0x20F2F6A40](v21, -1, -1);
        }

        (*(v6 + 8))(v8, v5);
        v22 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerScores;
        v2 = v17;

        sub_20BD7969C(v23, a1, v18);
        v25 = v24;

        *(v17 + v22) = v25;

        v26 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerMiddleScores;

        sub_20BD7969C(v27, a1, v18);
        v29 = v28;

        *(v17 + v26) = v29;

        v30 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperMiddleScores;

        sub_20BD7969C(v31, a1, v18);
        v33 = v32;

        *(v17 + v30) = v33;

        v34 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperScores;

        sub_20BD7969C(v35, a1, v18);
        v37 = v36;

        *(v17 + v34) = v37;
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }

    *(v2 + v14) = v13;
  }
}

void sub_20BD7969C(uint64_t a1, double a2, double a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C137BA4();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = a2 - a3;
  if (COERCE__INT64(fabs(a2 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_20BD79B50(v21, a1, &v44 - v19);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v46 = v14;
  sub_20BD79B50(a2, a1, v17);
  sub_20C137B94();
  v23 = v22;
  sub_20C137B94();
  v25 = v23 - v24;
  sub_20C13B504();
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1F4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v6;
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = v25;
    _os_log_impl(&dword_20B517000, v26, v27, "Applying Adjustment of %{public}f", v29, 0xCu);
    v30 = v29;
    v6 = v28;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v31 = *(a1 + 16);
  if (v31)
  {
    v44 = v17;
    v45 = v20;
    v53 = MEMORY[0x277D84F90];
    sub_20BB5E354(0, v31, 0);
    v32 = v53;
    v33 = *(v52 + 16);
    v48 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v49 = v33;
    v34 = a1 + v48;
    v47 = *(v52 + 72);
    v51 = (v52 + 8);
    v52 += 16;
    v35 = (v52 + 16);
    v36 = v46;
    do
    {
      v37 = v50;
      v49(v50, v34, v10);
      sub_20C137B84();
      sub_20C137B94();
      sub_20C137B74();
      v38 = *v51;
      (*v51)(v37, v10);
      v53 = v32;
      v39 = v10;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_20BB5E354((v40 > 1), v41 + 1, 1);
        v32 = v53;
      }

      *(v32 + 16) = v41 + 1;
      v42 = v47;
      (*v35)(v32 + v48 + v41 * v47, v36, v39);
      v34 += v42;
      --v31;
      v10 = v39;
    }

    while (v31);
    v38(v44, v39);
    v38(v45, v39);
  }

  else
  {
    v43 = *(v52 + 8);
    v43(v17, v10);
    v43(v20, v10);
  }
}

uint64_t sub_20BD79B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v21 = a1;
  v4 = sub_20C137BA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EB58, &unk_20C17C240);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8 - 8);
  v19 = &v18 - v10;
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i;
    v13 = *(v5 + 16);
    v13(v7, v12, v4, v9);
    v14 = sub_20C137B84();
    (*(v5 + 8))(v7, v4);
    if (v14 <= v21)
    {
      v15 = v19;
      (v13)(v19, v12, v4);
      (*(v5 + 56))(v15, 0, 1, v4);
      return (*(v5 + 32))(v20, v15, v4);
    }
  }

  v17 = v19;
  (*(v5 + 56))(v19, 1, 1, v4, v9);
  sub_20C137B74();
  result = (*(v5 + 48))(v17, 1, v4);
  if (result != 1)
  {
    return sub_20B520158(v17, &qword_27C76EB58, &unk_20C17C240);
  }

  return result;
}

void sub_20BD79DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = &v165 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  MEMORY[0x28223BE20](v4 - 8);
  v176 = &v165 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v6 - 8);
  v175 = &v165 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v8 - 8);
  v174 = &v165 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = &v165 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v12 - 8);
  v172 = &v165 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v165 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  MEMORY[0x28223BE20](v20 - 8);
  v185 = &v165 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v22 - 8);
  v184 = &v165 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  MEMORY[0x28223BE20](v24 - 8);
  v183 = &v165 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v26 - 8);
  v182 = &v165 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  MEMORY[0x28223BE20](v28 - 8);
  v181 = &v165 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v30 - 8);
  v200 = &v165 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v32 - 8);
  v199 = &v165 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  MEMORY[0x28223BE20](v34 - 8);
  v198 = &v165 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v36 - 8);
  v197 = &v165 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v38 - 8);
  v196 = &v165 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v40 - 8);
  v195 = &v165 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v42 - 8);
  v194 = &v165 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v44 - 8);
  v193 = &v165 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v46 - 8);
  v192 = &v165 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v48 - 8);
  v191 = &v165 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  MEMORY[0x28223BE20](v50 - 8);
  v190 = &v165 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v52 - 8);
  v189 = &v165 - v53;
  v180 = sub_20C134834();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v165 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_20C1337A4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v201 = &v165 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v56 - 8);
  v188 = &v165 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v165 - v59;
  v61 = sub_20C133B04();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = &v165 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_20C137BA4();
  v213 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v211 = &v165 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](v67);
  v69 = &v165 - v68;
  MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  v73 = &v165 - v72;
  MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](v75);
  v77 = &v165 - v76;
  MEMORY[0x28223BE20](v78);
  v212 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v171 = v82;
    v165 = v81;
    v166 = v80;
    v202 = &v165 - v79;
    v169 = v16;
    v170 = v19;
    v83 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastEnergyMetric;
    v84 = v205;
    swift_beginAccess();
    sub_20B52F9E8(v84 + v83, v60, &qword_27C768B30, &unk_20C152440);
    v85 = *(v62 + 48);
    if (v85(v60, 1, v61) == 1)
    {
      sub_20C13CE94();
      sub_20C133AE4();
      if (v85(v60, 1, v61) != 1)
      {
        sub_20B520158(v60, &qword_27C768B30, &unk_20C152440);
      }
    }

    else
    {
      (*(v62 + 32))(v64, v60, v61);
    }

    sub_20C133AF4();
    sub_20C135354();
    sub_20C137B74();
    v167 = v62;
    v86 = *(v62 + 8);
    v168 = v61;
    v86(v64, v61);
    v87 = v84;
    v88 = v213;
    v89 = v202;
    v90 = v208;
    v209 = v213[4];
    v210 = v213 + 4;
    v209(v202, v77, v208);
    v91 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_personalScores;
    swift_beginAccess();
    v92 = *(v87 + v91);

    v93 = sub_20B8D8070(v89, v92);

    if (v93)
    {
      (v88[1])(v89, v90);
      return;
    }

    v94 = v88[2];
    v207 = v88 + 2;
    v206 = v94;
    v94(v73, v89, v90);
    swift_beginAccess();
    v95 = v171;
    sub_20B702CD8(v171, v73);
    v96 = v88[1];
    v96(v95, v90);
    swift_endAccess();
    v97 = v179;
    v98 = v178;
    v99 = v180;
    (*(v179 + 16))(v178, v87 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType, v180);
    v100 = (*(v97 + 88))(v98, v99);
    v101 = v100 == *MEMORY[0x277D50AA8];
    v204 = v88 + 1;
    v203 = v96;
    if (!v101)
    {
      if (v100 == *MEMORY[0x277D50AA0])
      {
        v108 = v201;
        sub_20BD7BC14(v201);
        v109 = *(v87 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionClient + 32);
        v210 = *(v87 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionClient + 24);
        v211 = v109;
        v110 = __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionClient), v210);
        v212 = *(v87 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionToken);
        v213 = v110;
        v111 = sub_20C133D84();
        (*(*(v111 - 8) + 56))(v189, 1, 1, v111);
        v112 = sub_20C135854();
        (*(*(v112 - 8) + 56))(v190, 1, 1, v112);
        v113 = sub_20C136194();
        (*(*(v113 - 8) + 56))(v191, 1, 1, v113);
        v114 = sub_20C133DD4();
        (*(*(v114 - 8) + 56))(v192, 1, 1, v114);
        v115 = sub_20C135274();
        (*(*(v115 - 8) + 56))(v193, 1, 1, v115);
        v116 = sub_20C134514();
        (*(*(v116 - 8) + 56))(v194, 1, 1, v116);
        (*(v167 + 56))(v188, 1, 1, v168);
        v117 = sub_20C134C04();
        (*(*(v117 - 8) + 56))(v195, 1, 1, v117);
        v118 = sub_20C1368F4();
        (*(*(v118 - 8) + 56))(v196, 1, 1, v118);
        v119 = sub_20C134914();
        (*(*(v119 - 8) + 56))(v197, 1, 1, v119);
        v120 = sub_20C133374();
        (*(*(v120 - 8) + 56))(v198, 1, 1, v120);
        v121 = sub_20C135B74();
        (*(*(v121 - 8) + 56))(v199, 1, 1, v121);
        v122 = sub_20C134CD4();
        (*(*(v122 - 8) + 56))(v200, 1, 1, v122);
        v123 = sub_20C136EB4();
        (*(*(v123 - 8) + 56))(v181, 1, 1, v123);
        v124 = sub_20C133494();
        (*(*(v124 - 8) + 56))(v182, 1, 1, v124);
        v125 = sub_20C134594();
        (*(*(v125 - 8) + 56))();
        v126 = sub_20C138184();
        (*(*(v126 - 8) + 56))(v184, 1, 1, v126);
        v127 = sub_20C1363D4();
        (*(*(v127 - 8) + 56))();
        v128 = v186;
        v129 = v170;
        v130 = v108;
        v131 = v187;
        (*(v186 + 16))(v170, v130, v187);
        (*(v128 + 56))(v129, 0, 1, v131);
        v132 = sub_20C1337D4();
        v133 = v172;
        (*(*(v132 - 8) + 56))(v172, 1, 1, v132);
        v134 = sub_20C134A94();
        v135 = v173;
        (*(*(v134 - 8) + 56))(v173, 1, 1, v134);
        v136 = sub_20C135364();
        v137 = v174;
        (*(*(v136 - 8) + 56))(v174, 1, 1, v136);
        v138 = sub_20C136484();
        v139 = v175;
        (*(*(v138 - 8) + 56))(v175, 1, 1, v138);
        v140 = sub_20C136784();
        v141 = v176;
        (*(*(v140 - 8) + 56))(v176, 1, 1, v140);
        v142 = sub_20C137FE4();
        v143 = v177;
        (*(*(v142 - 8) + 56))(v177, 1, 1, v142);
        v144 = v184;
        v145 = v182;
        sub_20C13A174();
        sub_20B520158(v143, &unk_27C768AC0, &unk_20C1523B0);
        sub_20B520158(v141, &unk_27C765070, &unk_20C157440);
        sub_20B520158(v139, &unk_27C765CB0, &unk_20C1523C0);
        v146 = v137;
        v147 = v129;
        sub_20B520158(v146, &unk_27C765080, &unk_20C157450);
        sub_20B520158(v135, &unk_27C768AD0, &unk_20C1523D0);
        sub_20B520158(v133, &unk_27C765090, &unk_20C157460);
        sub_20B520158(v129, &unk_27C768AE0, &unk_20C1523E0);
        sub_20B520158(v185, &unk_27C7650A0, &unk_20C157470);
        sub_20B520158(v144, &unk_27C768AF0, &unk_20C1523F0);
        sub_20B520158(v183, &unk_27C7650B0, &unk_20C153BF0);
        sub_20B520158(v145, &unk_27C768B00, &unk_20C152400);
        sub_20B520158(v181, &unk_27C7650C0, &unk_20C153C00);
        sub_20B520158(v200, &unk_27C768B10, &unk_20C152410);
        sub_20B520158(v199, &unk_27C7650D0, &unk_20C157480);
        sub_20B520158(v198, &unk_27C768B20, &unk_20C152420);
        sub_20B520158(v197, &unk_27C7650E0, &unk_20C157490);
        sub_20B520158(v196, &unk_27C767260, &unk_20C152430);
        sub_20B520158(v195, &unk_27C7650F0, &unk_20C1574A0);
        sub_20B520158(v188, &qword_27C768B30, &unk_20C152440);
        sub_20B520158(v194, &unk_27C765050, &unk_20C153C10);
        sub_20B520158(v193, &unk_27C765100, &unk_20C152450);
        sub_20B520158(v192, &unk_27C7687F0, &unk_20C153C20);
        sub_20B520158(v191, &unk_27C765110, &unk_20C152460);
        sub_20B520158(v190, &unk_27C76BBF0, &unk_20C1574B0);
        sub_20B520158(v189, &unk_27C765120, &unk_20C152470);
        goto LABEL_30;
      }

LABEL_36:
      sub_20C13DE24();
      __break(1u);

      __break(1u);
      return;
    }

    v102 = v88;
    (*(v97 + 96))(v98, v99);
    v103 = *v98;
    v104 = *(v87 + v91);
    v105 = *(v104 + 16);
    if (v105)
    {
      v197 = v103;
      v87 = sub_20BEDEC40(v105, 0);
      sub_20BEE29D4(v214, v87 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v105, v104);
      v107 = v106;
      v200 = v214[0];
      v199 = v214[1];
      v198 = v214[4];
      swift_bridgeObjectRetain_n();
      sub_20B583EDC(v200);
      if (v107 != v105)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v102 = v213;
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v214[0] = v87;
    sub_20BD7C560(v214);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF70, &qword_20C179AB8);
    sub_20B6D6ABC(&qword_27C76DF78, &qword_27C76DF70, &qword_20C179AB8, MEMORY[0x277D83970]);
    v148 = sub_20C13CBB4();

    v149 = *(v148 + 16);
    if (!v149)
    {
      v87 = MEMORY[0x277D84F90];
      v151 = v208;
LABEL_28:

      if (!v87[2])
      {

        v163 = v202;
        v164 = v151;
        goto LABEL_31;
      }

      v157 = v166;
      v206(v166, v87 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v151);

      v158 = v165;
      v209(v165, v157, v151);
      sub_20BD7BC14(v201);
      v203(v158, v151);
      v147 = v170;
LABEL_30:
      v159 = v169;
      v160 = v186;
      v161 = v201;
      v162 = v187;
      (*(v186 + 16))(v147, v201, v187);
      (*(v160 + 56))(v147, 0, 1, v162);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_20B52F9E8(v147, v159, &unk_27C768AE0, &unk_20C1523E0);

      sub_20C13C154();
      sub_20B520158(v147, &unk_27C768AE0, &unk_20C1523E0);
      (*(v160 + 8))(v161, v162);
      v163 = v202;
      v164 = v208;
LABEL_31:
      v203(v163, v164);
      return;
    }

    v150 = 0;
    v87 = MEMORY[0x277D84F90];
    v151 = v208;
    while (v150 < *(v148 + 16))
    {
      v152 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v153 = v102[9];
      v206(v69, (v148 + v152 + v153 * v150), v151);
      if (sub_20C137B84() == v212)
      {
        v209(v211, v69, v151);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v214[0] = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E354(0, v87[2] + 1, 1);
          v87 = v214[0];
        }

        v156 = v87[2];
        v155 = v87[3];
        if (v156 >= v155 >> 1)
        {
          sub_20BB5E354((v155 > 1), v156 + 1, 1);
          v87 = v214[0];
        }

        v87[2] = v156 + 1;
        v151 = v208;
        v209(v87 + v152 + v156 * v153, v211, v208);
      }

      else
      {
        v203(v69, v151);
      }

      ++v150;
      v102 = v213;
      if (v149 == v150)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_20BD7BC14@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = sub_20C134834();
  v3 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C137BA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerScores);

  v11 = sub_20C137B84();
  sub_20BD79B50(v11, v10, v9);

  sub_20C137B94();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lowerMiddleScores);

  v14 = sub_20C137B84();
  sub_20BD79B50(v14, v13, v9);

  sub_20C137B94();
  v12(v9, v6);
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperMiddleScores);

  v16 = sub_20C137B84();
  sub_20BD79B50(v16, v15, v9);

  sub_20C137B94();
  v12(v9, v6);
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_upperScores);

  v18 = sub_20C137B84();
  sub_20BD79B50(v18, v17, v9);

  sub_20C137B94();
  v12(v9, v6);
  sub_20C13CE94();
  sub_20C137B84();
  (*(v3 + 16))(v5, v2 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType, v20[0]);
  sub_20C137B94();
  return sub_20C133774();
}

uint64_t sub_20BD7BF4C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_userBodyMass;
  v2 = sub_20C135364();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_sessionClient));
  v3 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_scoreType;
  v4 = sub_20C134834();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastEnergyMetric, &qword_27C768B30, &unk_20C152440);
  v5 = OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator__lastScoreMetric;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B468, &qword_20C16FF78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_20BD7C0C8()
{
  sub_20BD7BF4C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScoreMetricGenerator(uint64_t a1)
{
  result = qword_27C76EB40;
  if (!qword_27C76EB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD7C174(uint64_t a1)
{
  sub_20C135364();
  if (v1 <= 0x3F)
  {
    sub_20C134834();
    if (v2 <= 0x3F)
    {
      sub_20BD7C2F8(319);
      if (v3 <= 0x3F)
      {
        sub_20BD7C350(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20BD7C2F8(uint64_t a1)
{
  if (!qword_27C766DD0)
  {
    sub_20C133B04();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C766DD0);
    }
  }
}

void sub_20BD7C350(uint64_t a1)
{
  if (!qword_27C76EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C768AE0, &unk_20C1523E0);
    v1 = sub_20C13C164();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76EB50);
    }
  }
}

double sub_20BD7C3B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  return result;
}

uint64_t sub_20BD7C430(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_20B52F9E8(a1, &v10 - v7, &unk_27C768AE0, &unk_20C1523E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20B52F9E8(v8, v5, &unk_27C768AE0, &unk_20C1523E0);

  sub_20C13C154();
  return sub_20B520158(v8, &unk_27C768AE0, &unk_20C1523E0);
}

void sub_20BD7C560(uint64_t *a1)
{
  v2 = *(sub_20C137BA4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A1000(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BD7C608(v5);
  *a1 = v3;
}

void sub_20BD7C608(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137BA4();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137BA4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BD7C9DC(v8, v9, a1, v4);
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
    sub_20BD7C734(0, v2, 1, a1);
  }
}

void sub_20BD7C734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C137BA4();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C137B84();
      v28 = sub_20C137B84();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BD7C9DC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C137BA4();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BD7D3C0(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C137B84();
      v126 = sub_20C137B84();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C137B84();
        v39 = sub_20C137B84();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BD7D3C0(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C137B84();
    v104 = sub_20C137B84();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_20BD7D3C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C137BA4();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C137B84();
          v45 = sub_20C137B84();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C137B84();
        v26 = sub_20C137B84();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A0ABC(&v64, &v63, &v62);
}

uint64_t sub_20BD7D978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20BD7D9E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v23 = a3;
  v8 = sub_20C1325D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  sub_20C1325B4();
  sub_20B5F6EB0();
  v12 = sub_20C13D9F4();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v24 = a1;
    v25 = a2;
    sub_20C1325B4();
    v17 = sub_20C13D9F4();
    v19 = v18;
    v15(v11, v8);
    v23(v17, v19);
  }

  else
  {
    v23(v21, v22);
  }
}

char *sub_20BD7DB9C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_layout];
  *v2 = xmmword_20C17C300;
  *(v2 + 1) = xmmword_20C17C310;
  v3 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_textStackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_titleLabel;
  v10 = objc_opt_self();
  v11 = [v10 fontWithDescriptor:v6 size:0.0];

  [v5 setFont_];
  [v5 setTextAlignment_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  [v5 setTextColor_];

  v14 = v5;
  [v14 setAlpha_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v9] = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_descriptionLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = [v10 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v16 setFont_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setTextAlignment_];
  v18 = [v12 whiteColor];
  [v16 setTextColor_];

  v19 = v16;
  [v19 setAlpha_];
  [v19 setAdjustsFontForContentSizeCategory_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v15] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_imageView;
  type metadata accessor for SessionInstructionsPresenter(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_20C13C914();
  v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:0];

  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v26 = v25;
  [v26 setContentMode_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v20] = v26;
  *&v1[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_presenter] = a1;
  v30.receiver = v1;
  v30.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  v27 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  *(*&v27[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_presenter] + 24) = &off_2822E3DC8;
  swift_unknownObjectWeakAssign();
  return v27;
}

void sub_20BD7E07C()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_titleLabel];
  v2 = [v1 layer];
  v3 = objc_opt_self();
  v4 = [v3 kCAFilterPlusD];
  if (!v4)
  {
    sub_20C13C954();
    v4 = sub_20C13C914();
  }

  [v2 setCompositingFilter_];

  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_descriptionLabel];
  v6 = [v5 layer];
  v7 = [v3 kCAFilterPlusD];
  if (!v7)
  {
    sub_20C13C954();
    v7 = sub_20C13C914();
  }

  [v6 setCompositingFilter_];

  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_textStackView];
  [v8 addSubview_];

  [v10 addArrangedSubview_];
  [v10 setCustomSpacing:v1 afterView:35.0];
  [v10 addArrangedSubview_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_imageView];
  [v11 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C151850;
  v15 = [v10 centerYAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 centerYAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [v10 leadingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23 constant:150.0];
  *(v14 + 40) = v24;
  v25 = [v10 widthAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v14 + 48) = v26;
  v27 = [v13 trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:-150.0];
  *(v14 + 56) = v31;
  v32 = [v13 centerYAnchor];
  v33 = [v0 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 centerYAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v14 + 64) = v37;
    v38 = [v13 widthAnchor];
    v39 = [v38 constraintEqualToConstant_];

    *(v14 + 72) = v39;
    sub_20B5E29D0();
    v40 = sub_20C13CC54();

    [v35 activateConstraints_];

    return;
  }

LABEL_17:
  __break(1u);
}

double sub_20BD7E664(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, v3 & 1);
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_presenter];
  if (v5[25])
  {
    __swift_project_boxed_opaque_existential_1(v5 + 14, v5[17]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
    v5[25] = 0;
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_20BD7E78C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20BD7E870()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_layout);
  *v1 = xmmword_20C17C300;
  v1[1] = xmmword_20C17C310;
  v2 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_textStackView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  v8 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_titleLabel;
  v9 = objc_opt_self();
  v10 = [v9 fontWithDescriptor:v5 size:0.0];

  [v4 setFont_];
  [v4 setTextAlignment_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v4 setTextColor_];

  v13 = v4;
  [v13 setAlpha_];
  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v8) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_descriptionLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v16 = [v9 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v15 setFont_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setTextAlignment_];
  v17 = [v11 whiteColor];
  [v15 setTextColor_];

  v18 = v15;
  [v18 setAlpha_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v14) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController_imageView;
  type metadata accessor for SessionInstructionsPresenter(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_20C13C914();
  v23 = [objc_opt_self() imageNamed:v22 inBundle:v21 compatibleWithTraitCollection:0];

  v24 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v25 = v24;
  [v25 setContentMode_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v19) = v25;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD7ECF8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v59 - v6;
  v7 = sub_20C132264();
  v76 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v73 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v12 = sub_20C1321A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  MEMORY[0x28223BE20](v16);
  v72 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText);
  v74 = a1;
  v75 = v26;
  v71 = v1;
  if (v25)
  {
    v27 = v12;
    v59 = v22;
    v28 = v25;
    v60 = v11;
    v61 = v28;
    sub_20C1320A4();
    v29 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryTextAlignment;
    swift_beginAccess();
    (*(v13 + 16))(v15, v1 + v29, v27);
    sub_20C132084();
    v64 = v13;
    v30 = *(v13 + 8);
    v63 = v15;
    v65 = v27;
    v30(v15, v27);
    v31 = v59;
    v32 = *(v59 + 8);
    v62 = v20;
    v32(v20, v16);
    v33 = v60;
    (*(v31 + 16))(v60, v24, v16);
    v34 = *MEMORY[0x277CE9CD8];
    v35 = *(v76 + 104);
    v66 = v7;
    v35(v33, v34, v7);
    v36 = sub_20BC07444(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = v36[2];
    v37 = v36[3];
    v39 = v31;
    if (v38 >= v37 >> 1)
    {
      v36 = sub_20BC07444((v37 > 1), v38 + 1, 1, v36);
    }

    v32(v24, v75);
    v36[2] = v38 + 1;
    v40 = v36 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v38;
    v7 = v66;
    (*(v76 + 32))(v40, v33, v66);
    v12 = v65;
    v13 = v64;
    v1 = v71;
    v15 = v63;
    v20 = v62;
  }

  else
  {
    v39 = v22;
    v36 = MEMORY[0x277D84F90];
  }

  v41 = *(v1 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText);
  if (v41)
  {
    v42 = v7;
    v43 = v12;
    v66 = v41;
    sub_20C1320A4();
    v44 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryTextAlignment;
    swift_beginAccess();
    (*(v13 + 16))(v15, v1 + v44, v43);
    v45 = v72;
    sub_20C132084();
    v46 = v43;
    v47 = v42;
    (*(v13 + 8))(v15, v46);
    v48 = *(v39 + 8);
    v49 = v75;
    v48(v20, v75);
    v50 = v73;
    (*(v39 + 16))(v73, v45, v49);
    (*(v76 + 104))(v50, *MEMORY[0x277CE9CD8], v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_20BC07444(0, v36[2] + 1, 1, v36);
    }

    v52 = v36[2];
    v51 = v36[3];
    if (v52 >= v51 >> 1)
    {
      v36 = sub_20BC07444((v51 > 1), v52 + 1, 1, v36);
    }

    v48(v72, v75);
    v36[2] = v52 + 1;
    (*(v76 + 32))(v36 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v52, v73, v47);
    v1 = v71;
  }

  v53 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
  swift_beginAccess();
  v54 = v1 + v53;
  v55 = v68;
  sub_20B6B5ADC(v54, v68);
  v56 = v67;
  sub_20B7E27F8(v67);

  sub_20B593250(v55);
  sub_20C1323A4();
  v57 = v70;
  sub_20C131FF4();
  return (*(v69 + 8))(v56, v57);
}

uint64_t sub_20BD7F468(double a1, float a2, float a3, float a4)
{
  v5 = sub_20C1321A4();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1321C4();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v78 - v9;
  v10 = sub_20C132254();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v87);
  v83 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_20C132EE4();
  v99 = *(v102 - 1);
  MEMORY[0x28223BE20](v102);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C132364();
  v15 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v82 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v80 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v81 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  *(v4 + 24) = 0;
  v98 = v4;
  swift_unknownObjectWeakInit();
  v24 = *MEMORY[0x277D74368];
  v25 = objc_opt_self();
  v26 = [v25 systemFontOfSize_];
  v27 = [v26 fontDescriptor];
  v28 = [v27 fontDescriptorWithDesign_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v84 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryLabel;
  v30 = [v25 fontWithDescriptor:v27 size:0.0];

  sub_20C132374();
  sub_20C132ED4();
  sub_20C1323D4();
  sub_20C1320B4();
  v31 = v23;
  v99 = *(v99 + 8);
  (v99)(v14, v102);
  v79 = *(v15 + 8);
  v79(v19, v100);
  sub_20C1323A4();
  v32 = v98;
  v33 = v101;
  sub_20C131FF4();
  v78 = *(v80 + 8);
  v78(v31, v33);
  v80 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryLabel;
  v34 = [v25 preferredFontForTextStyle_];
  v35 = v82;
  sub_20C132374();
  sub_20C132ED4();
  sub_20C1323D4();
  v36 = v81;
  sub_20C1320B4();
  (v99)(v14, v102);
  v79(v35, v100);
  sub_20C1323A4();
  sub_20C131FF4();
  v78(v36, v33);
  *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText) = 0;
  *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText) = 0;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EBB0, &unk_20C17FEF0) + 48);
  v38 = *MEMORY[0x277CE9CA0];
  v39 = sub_20C132244();
  v40 = v88;
  (*(*(v39 - 8) + 104))(v88, v38, v39);
  *&v40[v37] = 0;
  v42 = v89;
  v41 = v90;
  (*(v89 + 104))(v40, *MEMORY[0x277CE9CC8], v90);
  v43 = v83;
  v83[1] = 1;
  sub_20C132ED4();
  v44 = v85;
  sub_20C132104();
  (v99)(v14, v102);
  v45 = v87;
  v46 = v91;
  sub_20C131F24();
  (*(v86 + 8))(v44, v46);
  *v43 = 1;
  v47 = sub_20C131F44();
  v48 = &v43[v45[7]];
  *v48 = v47;
  v48[8] = v49;
  v50 = sub_20C131FD4();
  v51 = &v43[v45[8]];
  *v51 = v50;
  v51[8] = v52;
  v53 = sub_20C131FE4();
  v54 = &v43[v45[9]];
  *v54 = v53;
  *(v54 + 1) = v55;
  v54[20] = v56;
  *(v54 + 4) = v57;
  v54[21] = v58;
  v59 = sub_20C132384();
  v60 = &v43[v45[10]];
  *v60 = v59 & 0xFFFFFFFFFFLL;
  v60[12] = v61;
  *(v60 + 2) = v62;
  v60[13] = 0;
  v63 = sub_20C132004();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  (*(v42 + 8))(v40, v41);
  v70 = &v43[v45[11]];
  *v70 = v63;
  *(v70 + 1) = v65;
  *(v70 + 2) = v67;
  v70[24] = v69;
  v71 = v98;
  sub_20B7F53C0(v43, v98 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder);
  v72 = v92;
  sub_20C131FC4();
  v73 = v95;
  sub_20C1321B4();
  v74 = v94;
  v102 = *(v93 + 8);
  v102(v72, v94);
  v75 = v97;
  v76 = *(v96 + 32);
  v76(v71 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryTextAlignment, v73, v97);
  sub_20C131FC4();
  sub_20C1321B4();
  v102(v72, v74);
  v76(v71 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryTextAlignment, v73, v75);
  return v71;
}

uint64_t sub_20BD7FE64()
{
  sub_20B583E6C(v0 + 16);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryLabel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryLabel, v2);

  v4 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryTextAlignment;
  v5 = sub_20C1321A4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryTextAlignment, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StackedTextNodeBuilder(uint64_t a1)
{
  result = qword_27C76EBA0;
  if (!qword_27C76EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD80028(uint64_t a1)
{
  type metadata accessor for ContainerNodeBuilder(319);
  if (v1 <= 0x3F)
  {
    sub_20B592C74(319);
    if (v2 <= 0x3F)
    {
      sub_20C1321A4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t HKWorkoutActivityType.startOverWorkoutTitleLocalizationKey.getter(uint64_t a1)
{
  v1 = 0xD000000000000020;
  if (a1 == 52)
  {
    v1 = 0xD000000000000015;
  }

  if (a1 == 37)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

uint64_t HKWorkoutActivityType.startWorkoutTitleLocalizationKey.getter(uint64_t a1)
{
  v1 = 0x55525F5452415453;
  v2 = 0xD00000000000001BLL;
  if (a1 == 52)
  {
    v2 = 0xD000000000000010;
  }

  if (a1 != 37)
  {
    v1 = v2;
  }

  if (a1 == 29)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t HKWorkoutActivityType.resumeWorkoutTitleLocalizationKey.getter(uint64_t a1)
{
  v1 = 0x454D55534552;
  if (a1 == 52)
  {
    v1 = 0x575F454D55534552;
  }

  if (a1 == 37)
  {
    return 0x525F454D55534552;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20BD8028C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  *v12 = (*(a4 + 8))(a3, a4);
  *(v12 + 1) = v16;
  type metadata accessor for StartWorkoutSessionRequest(0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_20C135C54();
  (*(*(v17 - 8) + 56))(&v12[v14], 1, 1, v17);
  v18 = sub_20C137254();
  (*(*(v18 - 8) + 16))(&v12[v15], a1, v18);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = sub_20C138D34();
  v21 = v20;
  v22 = type metadata accessor for ButtonAction(0);
  sub_20BD80500(v12, a5 + *(v22 + 28));
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = v19;
  *(a5 + 40) = v21;
  return (*(*(v22 - 8) + 56))(a5, 0, 1, v22);
}

uint64_t sub_20BD80500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction.ActionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD80564@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D52418];
  v3 = sub_20C135ED4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

char *sub_20BD8063C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_layout] = 0x4020000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = objc_opt_self();
  v14 = [v13 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v12 setFont_];

  v15 = objc_opt_self();
  v16 = [v15 secondaryLabelColor];
  [v12 setTextColor_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v17 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v19 = [v13 preferredFontForTextStyle_];
  [v18 setFont_];

  v20 = [v15 labelColor];
  [v18 setTextColor_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v21 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v21 setAxis_];
  [v21 setAlignment_];
  [v21 setSpacing_];
  [v21 setDistribution_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_textStackView] = v21;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for TVGalleryHeaderCell(0);
  v22 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = [v22 contentView];
  v24 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_textStackView;
  [v23 addSubview_];

  [*&v22[v24] addArrangedSubview_];
  [*&v22[v24] addArrangedSubview_];
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14FE90;
  v27 = [*&v22[v24] leadingAnchor];
  v28 = [v22 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v30;
  v31 = [*&v22[v24] trailingAnchor];
  v32 = [v22 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v26 + 40) = v34;
  v35 = [*&v22[v24] topAnchor];
  v36 = [v22 contentView];
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v26 + 48) = v38;
  v39 = [*&v22[v24] bottomAnchor];
  v40 = [v22 contentView];

  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor_];

  *(v26 + 56) = v42;
  sub_20B5E29D0();
  v43 = sub_20C13CC54();

  [v25 activateConstraints_];

  return v22;
}

id sub_20BD80E54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVGalleryHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVGalleryHeaderCell(uint64_t a1)
{
  result = qword_27C76EBC0;
  if (!qword_27C76EBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD80F6C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BD81038(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BD81084@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD810DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BD81140(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x19)
  {
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_titleLabel];

    v8 = sub_20C13C914();

    [v7 setText_];

    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_subtitleLabel];
    v23 = sub_20C13C914();

    [v9 setText_];
    v10 = v23;
  }

  else
  {
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{public}s", v14, 0x16u);
      sub_20B520158(v15, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BD81448()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_layout) = 0x4020000000000000;
  v3 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = objc_opt_self();
  v6 = [v5 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v4 setFont_];

  v7 = objc_opt_self();
  v8 = [v7 secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v9 = OBJC_IVAR____TtC9SeymourUI19TVGalleryHeaderCell_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  v11 = [v5 preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = [v7 labelColor];
  [v10 setTextColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BD81744()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView];
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v3];

  LODWORD(v9) = 1148846080;
  [v8 setPriority_];
  v10 = v8;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-v4];

  LODWORD(v14) = 1148846080;
  [v13 &selRef_meterUnit];
  v15 = v13;
  v16 = [v1 topAnchor];
  v17 = [v0 &selRef_setLineBreakMode_];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v2];

  LODWORD(v19) = 1148846080;
  [v18 &selRef_meterUnit];
  v20 = [v1 bottomAnchor];
  v21 = [v0 &selRef_secondaryLabel + 5];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v5];

  LODWORD(v23) = 1148846080;
  [v22 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  *(v24 + 32) = v10;
  *(v24 + 40) = v15;
  *(v24 + 48) = v18;
  *(v24 + 56) = v22;

  v25 = *&v0[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_platter];
  v26 = [v25 leadingAnchor];
  v27 = [v1 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v3];

  LODWORD(v29) = 1148846080;
  [v28 &selRef_meterUnit];
  v67 = v28;
  v30 = [v25 trailingAnchor];
  v31 = [v1 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-v4];

  LODWORD(v33) = 1148846080;
  [v32 &selRef_meterUnit];
  v34 = v32;
  v35 = [v25 topAnchor];
  v36 = [v1 topAnchor];
  v37 = [v35 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v38) = 1148846080;
  [v37 &selRef_meterUnit];
  v39 = [v25 bottomAnchor];
  v40 = [v1 bottomAnchor];
  v41 = [v39 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v42) = 1148846080;
  [v41 &selRef_meterUnit];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v67;
  *(inited + 40) = v34;
  *(inited + 48) = v37;
  *(inited + 56) = v41;

  v44 = *&v0[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView];
  v70 = v25;
  v65 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  v45 = *&v25[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide];
  v46 = UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(v45, 1, v2, v3, v5, v4);

  v47 = objc_opt_self();
  sub_20B8D9310(inited);
  sub_20B8D9310(v46);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v48 = sub_20C13CC54();

  [v47 activateConstraints_];

  v49 = [v44 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v50 = sub_20C13CC74();

  if (v50 >> 62)
  {
    goto LABEL_17;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_setDescriptionTextHighlightColor_; v51; i = &selRef_setDescriptionTextHighlightColor_)
  {
    v53 = 0;
    v68 = v50 & 0xFFFFFFFFFFFFFF8;
    v69 = v50 & 0xC000000000000001;
    v66 = v50;
    while (1)
    {
      if (v69)
      {
        v58 = MEMORY[0x20F2F5430](v53, v50);
      }

      else
      {
        if (v53 >= *(v68 + 16))
        {
          goto LABEL_16;
        }

        v58 = *(v50 + 8 * v53 + 32);
      }

      v59 = v58;
      v60 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      type metadata accessor for SessionActiveEnergyView();
      if (swift_dynamicCastClass())
      {
        [v44 setCustomSpacing:v59 afterView:0.0];
      }

      type metadata accessor for SessionPlatterSeparatorView();
      v61 = swift_dynamicCastClass();
      v62 = [v59 i[239]];
      if (v61)
      {
        v63 = [v70 i[239]];
        v64 = [v62 &selRef:v63 alertControllerReleasedDictationButton:? + 5];

        [v64 setActive_];
        v62 = [v59 trailingAnchor];
        v55 = &selRef_trailingAnchor;
        v54 = v70;
        v50 = v66;
      }

      else
      {
        v54 = *&v70[v65];
        v55 = &selRef_leadingAnchor;
      }

      v56 = [v54 *v55];
      v57 = [v62 constraintEqualToAnchor_];

      [v57 setActive_];
      ++v53;
      i = &selRef_setDescriptionTextHighlightColor_;
      if (v60 == v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v51 = sub_20C13DB34();
  }

LABEL_18:
}

void sub_20BD81F3C(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView) arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v4 = sub_20C13CC74();

  v14 = a1;
  v13[2] = &v14;
  LOBYTE(v3) = sub_20B79AEEC(sub_20BD83698, v13, v4);

  if (v3)
  {
    v5 = [a1 leadingAnchor];
    v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_platter);
    v7 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
    v8 = [*(v6 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide) leadingAnchor];
    v9 = [v5 constraintEqualToAnchor_];

    [v9 setActive_];
    v10 = [a1 trailingAnchor];
    v11 = [*(v6 + v7) trailingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    [v12 setActive_];
  }
}

void sub_20BD82104(char a1, char a2, char a3, double a4)
{
  if ((a2 & 1) == 0)
  {
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    *(v24 + 24) = a1 & 1;
    *&v35.tx = sub_20B9ECB5C;
    *&v35.ty = v24;
    *&v35.a = MEMORY[0x277D85DD0];
    *&v35.b = 1107296256;
    *&v35.c = sub_20B7B548C;
    *&v35.d = &block_descriptor_14_0;
    v25 = _Block_copy(&v35);
    v26 = v4;

    [v23 animateWithDuration:0 delay:v25 options:0 animations:a4 completion:{0.0, *&v35.a}];
LABEL_23:
    _Block_release(v25);
    return;
  }

  v8 = *&v4[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView];
  v9 = [v8 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v10 = sub_20C13CC74();

  v11 = v10 >> 62;
  if (a1)
  {
    if (v11)
    {
      v12 = sub_20C13DB34();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      if (a3)
      {
        v13 = *&v4[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView];
        CGAffineTransformMakeScale(&v35, 0.95, 0.95);
        [v13 setTransform_];
      }

      v14 = [v8 arrangedSubviews];
      v15 = sub_20C13CC74();

      if (v15 >> 62)
      {
        v16 = sub_20C13DB34();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v16 - 1;
      if (v16 <= 0)
      {
        v17 = 0;
      }

      v18 = v17 * 0.0833333333;
      v19 = v18 + a4;
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v18 + a4;
      *(v21 + 32) = a4 / (v18 + a4);
      *(v21 + 40) = v4;
      *(v21 + 48) = a3 & 1;
      *&v35.tx = sub_20BD83678;
      *&v35.ty = v21;
      *&v35.a = MEMORY[0x277D85DD0];
      *&v35.b = 1107296256;
      v22 = &block_descriptor_26_1;
LABEL_22:
      *&v35.c = sub_20B7B548C;
      *&v35.d = v22;
      v25 = _Block_copy(&v35);
      v34 = v4;

      [v20 animateKeyframesWithDuration:0 delay:v25 options:0 animations:v19 completion:{0.0, *&v35.a}];
      goto LABEL_23;
    }
  }

  else
  {
    if (v11)
    {
      v27 = sub_20C13DB34();
    }

    else
    {
      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v28 = [v8 arrangedSubviews];
      v29 = sub_20C13CC74();

      if (v29 >> 62)
      {
        v30 = sub_20C13DB34();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v30 - 1;
      if (v30 <= 0)
      {
        v31 = 0;
      }

      v32 = v31 * 0.0833333333;
      v19 = v32 + a4;
      v20 = objc_opt_self();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v32 + a4;
      *(v33 + 32) = a4 / (v32 + a4);
      *(v33 + 40) = v4;
      *&v35.tx = sub_20BD83668;
      *&v35.ty = v33;
      *&v35.a = MEMORY[0x277D85DD0];
      *&v35.b = 1107296256;
      v22 = &block_descriptor_20_0;
      goto LABEL_22;
    }
  }
}

id sub_20BD8258C(void *a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  return [a1 setAlpha_];
}

double sub_20BD825A8()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView) arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v5 = 0;
    v6 = 0;
    v7 = OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_platter;
    v8 = v3 & 0xC000000000000001;
    v43 = v1;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v41 = OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_platter;
    v42 = i;
    v39 = v3;
    v40 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x20F2F5430](v5, v3);
      }

      else
      {
        if (v5 >= *(v44 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (([v9 isHidden] & 1) == 0 && __OFADD__(v6++, 1))
      {
        goto LABEL_20;
      }

      v13 = *(v1 + v7);
      v14 = *(v13 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets);
      if (v6 == 1)
      {
        *(v13 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets) = 6;
        if (v14 == 6)
        {
          goto LABEL_5;
        }

        v15 = [*(v13 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView) layer];
        sub_20C1380F4();
        v16 = objc_opt_self();
        v17 = [v16 mainScreen];
        [v17 nativeBounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v46.origin.x = v19;
        v46.origin.y = v21;
        v46.size.width = v23;
        v46.size.height = v25;
        CGRectGetWidth(v46);
        v26 = [v16 mainScreen];
        [v26 nativeScale];

        sub_20C138104();
        sub_20C138104();
      }

      else
      {
        *(v13 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets) = 1;
        if (v14 == 1)
        {
          goto LABEL_5;
        }

        v15 = [*(v13 + OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView) layer];
        sub_20C1380F4();
        v27 = objc_opt_self();
        v28 = [v27 mainScreen];
        [v28 nativeBounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v47.origin.x = v30;
        v47.origin.y = v32;
        v47.size.width = v34;
        v47.size.height = v36;
        CGRectGetWidth(v47);
        v37 = [v27 mainScreen];
        [v37 nativeScale];

        sub_20C138104();
        sub_20C138104();
      }

      [v15 setCornerRadius_];

      sub_20BFB4340();
      i = v42;
      v1 = v43;
      v8 = v40;
      v7 = v41;
      v3 = v39;
LABEL_5:

      ++v5;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return result;
}

void sub_20BD829B8(void *a1, char a2, double a3, double a4, double a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v29 = sub_20BD8368C;
  v30 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20B7B548C;
  v28 = &block_descriptor_32_2;
  v11 = _Block_copy(&aBlock);
  v12 = a1;

  v24 = v9;
  [v9 addKeyframeWithRelativeStartTime:v11 relativeDuration:0.0 animations:a5];
  _Block_release(v11);
  v13 = [*&v12[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView] arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v14 = sub_20C13CC74();

  if (v14 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v16 = 0;
    v23 = &v27;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F2F5430](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (([v17 isHidden] & 1) == 0)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        v29 = sub_20B81626C;
        v30 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v27 = sub_20B7B548C;
        v28 = &block_descriptor_38;
        v21 = _Block_copy(&aBlock);
        v22 = v18;

        [v24 addKeyframeWithRelativeStartTime:v21 relativeDuration:v16 * 0.0833333333 / a4 animations:a5];
        _Block_release(v21);
      }

      ++v16;
      if (v19 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

id sub_20BD82CB4(char *a1, char a2)
{
  v4 = sub_20BD825A8();
  if (a2)
  {
    v5 = *&a1[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView];
    v7[0] = 0x3FF0000000000000;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0x3FF0000000000000;
    v7[4] = 0;
    v7[5] = 0;
    [v5 setTransform_];
  }

  return [a1 setAlpha_];
}

void sub_20BD82D28(void *a1, double a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v27 = sub_20BD83624;
  v28 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_20B7B548C;
  v26 = &block_descriptor_128;
  v10 = _Block_copy(&aBlock);
  v11 = a1;

  v12 = v8;
  [v8 addKeyframeWithRelativeStartTime:v10 relativeDuration:a2 / a3 animations:a4];
  _Block_release(v10);
  v13 = [*&v11[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView] arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v14 = sub_20C13CC74();

  if (v14 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v16 = 0;
    while (!__OFSUB__(i--, 1))
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x20F2F5430](i, v14);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v18 = *(v14 + 32 + 8 * i);
      }

      v19 = v18;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_15;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v27 = sub_20B76BA40;
      v28 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_20B7B548C;
      v26 = &block_descriptor_8_0;
      v21 = _Block_copy(&aBlock);
      v22 = v19;

      [v12 addKeyframeWithRelativeStartTime:v21 relativeDuration:v16 * 0.0833333333 / a3 animations:a4];
      _Block_release(v21);

      ++v16;
      if (!i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

id sub_20BD83118(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionPlatterMetricContainer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_20BD83230(unint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView] = v4;
  v5 = objc_allocWithZone(type metadata accessor for SessionElementBackdropView());
  v7 = sub_20BFB39E0(1, 0, v6);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_platter] = v7;
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v9 = sub_20C13CC54();
  v10 = [v8 initWithArrangedSubviews_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAlignment_];
  sub_20C1380F4();
  v11 = objc_opt_self();
  v12 = [v11 mainScreen];
  [v12 nativeBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  Width = CGRectGetWidth(v39);
  v22 = [v11 mainScreen];
  [v22 nativeScale];
  v24 = v23;

  v25 = sub_20C138104();
  v26 = sub_20C138104();
  v27 = -8.0;
  if (v25 != v26)
  {
    v27 = -2.0;
    if (Width / v24 > 375.0)
    {
      v27 = -2.0;
      if (Width / v24 < 834.0)
      {
        v27 = -3.0;
      }
    }
  }

  [v10 setSpacing_];
  [v10 setAxis_];
  [v10 setDistribution_];
  *&v2[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_stackView] = v10;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for SessionPlatterMetricContainer();
  v28 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView;
  v30 = *&v28[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView];
  v31 = v28;
  [v31 addSubview_];
  [*&v28[v29] addSubview_];
  [*&v28[v29] addSubview_];
  sub_20BD81744();
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v33 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x20F2F5430](v33, a1);
      }

      else
      {
        if (v33 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v34 = *(a1 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v35 || swift_conformsToProtocol2() && v35)
      {
        [v35 setClipsToBounds_];
      }

      else
      {
        [v35 setClipsToBounds_];
      }

      ++v33;
      if (v36 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return v31;
}

id sub_20BD83624()
{
  v1 = *(v0 + 16);
  sub_20BD825A8();

  return [v1 setAlpha_];
}

char *sub_20BD83730(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30, &qword_20C15EA20);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v55 - v10;
  *&v4[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v4[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_showSeparator] = 1;
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 4.0;
  }

  v15 = &v4[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
  v16 = [v13 layer];
  [v16 setCornerRadius_];

  [v13 setClipsToBounds_];
  *v15 = v13;
  v15[1] = &off_2822B63E8;
  v17 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_separator;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 separatorColor];
  [v18 setBackgroundColor_];

  *&v4[v17] = v18;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = *MEMORY[0x277D76968];
  v23 = objc_opt_self();
  v24 = [v23 preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:0];
  v25 = [v24 fontDescriptorWithSymbolicTraits_];
  if (v25)
  {
    v26 = v25;

    v24 = v26;
  }

  v27 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_subtitleLabel;
  v28 = objc_opt_self();
  v29 = [v28 fontWithDescriptor:v24 size:0.0];

  [v21 setFont_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v30 = [v19 whiteColor];
  [v21 setTextColor_];

  [v21 setNumberOfLines_];
  [v21 setLineBreakMode_];
  *&v4[v27] = v21;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  v32 = [v23 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v33 = [v32 fontDescriptorWithSymbolicTraits_];
  if (v33)
  {
    v34 = v33;

    v32 = v34;
  }

  v35 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_titleLabel;
  v36 = [v28 fontWithDescriptor:v32 size:0.0];

  [v31 setFont_];
  [v31 setAllowsDefaultTighteningForTruncation_];
  v37 = [v19 whiteColor];
  [v31 setTextColor_];

  [v31 setNumberOfLines_];
  [v31 setLineBreakMode_];
  *&v4[v35] = v31;
  v38 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_textLayoutGuide;
  *&v4[v38] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v39 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedVerticalConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedHorizontalConstraints] = v39;
  v40 = type metadata accessor for WorkoutPlanBrickRowCell(0);
  v57.receiver = v4;
  v57.super_class = v40;
  v41 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 addSubview_];

  v43 = [v41 contentView];
  [v43 addSubview_];

  v44 = [v41 contentView];
  [v44 addSubview_];

  v45 = *&v41[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_separator];
  v46 = v41;
  [v46 addSubview_];
  v47 = [v46 contentView];
  [v47 addLayoutGuide_];

  v48 = v56;
  sub_20C13BCE4();
  v49 = sub_20C13BD14();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  MEMORY[0x20F2F4B70](v48);

  v50 = [v46 traitCollection];
  sub_20BD8421C(v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578, &qword_20C15C968);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C14F980;
  v52 = sub_20C13C054();
  v53 = MEMORY[0x277D74DB8];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  sub_20C13D584();

  swift_unknownObjectRelease();

  return v46;
}

void sub_20BD83E9C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v7 = [a2 preferredContentSizeCategory];
  LODWORD(a2) = sub_20C13D424() & 1;
  if (a2 != (sub_20C13D424() & 1))
  {
    v6 = [a1 traitCollection];
    sub_20BD8421C(v6);

    v5 = v7;
    v7 = v6;
  }
}

uint64_t sub_20BD83FD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for WorkoutPlanBrickRowCell(0);
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20BD8421C(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_20C13D424();

  v3 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v4 = sub_20C13CC54();

  [v3 deactivateConstraints_];

  if (v2)
  {
    sub_20BD850BC();
  }

  else
  {
    sub_20BD84348();
  }

  v5 = sub_20C13CC54();

  [v3 activateConstraints_];
}

uint64_t sub_20BD84348()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v106 - v7;
  v9 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedHorizontalConstraints;
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedHorizontalConstraints];
  if (v10 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v11 = *&v1[v9];

    return v11;
  }

  v108 = v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C151850;
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
  v14 = [v13 leadingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v17 = [v14 constraintEqualToAnchor:v16 constant:*&qword_27C799F40];

  v110 = v12;
  *(v12 + 32) = v17;
  v18 = [v13 widthAnchor];
  v19 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E26EC(&v1[v19], v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_20B520158(v8, &qword_27C762550, &unk_20C1505A0);
    v20 = sub_20C1380F4();
  }

  else
  {
    sub_20B86C00C(v8, v5);
    sub_20B520158(v8, &qword_27C762550, &unk_20C1505A0);
    v21 = v5[16];
    sub_20BD87A44(v5, type metadata accessor for ShelfCellItemInfo);
    v20 = v21;
  }

  v22 = [v18 constraintEqualToConstant_];

  v23 = v110;
  *(v110 + 40) = v22;
  v24 = v23;
  v25 = [v13 heightAnchor];
  v26 = [v13 widthAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 multiplier:0.5625];

  v24[6] = v27;
  v28 = [v13 topAnchor];
  v29 = [v1 contentView];
  v30 = [v29 &selRef_setLineBreakMode_];

  v31 = [v28 constraintGreaterThanOrEqualToAnchor:v30 constant:10.0];
  v24[7] = v31;
  v32 = [v13 bottomAnchor];
  v33 = [v1 &selRef_setMaximumFractionDigits_];
  v34 = [v33 &selRef_secondaryLabel + 5];

  v35 = [v32 constraintLessThanOrEqualToAnchor:v34 constant:-10.0];
  type metadata accessor for UILayoutPriority(0);
  v111 = 1065353216;
  v112 = 1148846080;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v36) = v113;
  [v35 setPriority_];
  v24[8] = v35;
  v37 = [v13 centerYAnchor];
  v38 = [v1 contentView];
  v39 = [v38 &selRef_setNumberOfTapsRequired_];

  v40 = [v37 constraintEqualToAnchor_];
  v111 = 1065353216;
  v112 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v41) = v113;
  [v40 setPriority_];
  v24[9] = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150050;
  v43 = v42;
  v44 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_textLayoutGuide];
  v45 = [v44 leadingAnchor];
  v46 = [v13 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:10.0];

  v43[4] = v47;
  v48 = [v44 centerYAnchor];
  v49 = [v1 contentView];
  v50 = [v49 centerYAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  v43[5] = v51;
  v52 = [v44 trailingAnchor];
  v53 = [v1 contentView];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  v43[6] = v55;
  v56 = [v44 topAnchor];
  v57 = [v1 contentView];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintGreaterThanOrEqualToAnchor:v58 constant:10.0];
  v107 = v43;
  v43[7] = v59;
  v60 = [v44 bottomAnchor];
  v61 = [v1 &selRef_setMaximumFractionDigits_];
  v62 = [v61 bottomAnchor];

  v63 = [v60 constraintLessThanOrEqualToAnchor:v62 constant:-10.0];
  v43[8] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_20C150040;
  v65 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_titleLabel];
  v66 = [v65 leadingAnchor];
  v67 = [v44 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v64 + 32) = v68;
  v69 = [v65 trailingAnchor];
  v70 = [v44 trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-20.0];

  *(v64 + 40) = v71;
  v72 = [v65 topAnchor];
  v73 = [v44 topAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v64 + 48) = v74;
  v75 = swift_allocObject();
  v106 = xmmword_20C14FE90;
  *(v75 + 16) = xmmword_20C14FE90;
  v76 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_subtitleLabel];
  v77 = [v76 leadingAnchor];
  v78 = [v44 leadingAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 32) = v79;
  v80 = [v76 trailingAnchor];
  v81 = [v44 trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:-20.0];

  *(v75 + 40) = v82;
  v83 = [v76 topAnchor];
  v84 = [v65 bottomAnchor];
  v85 = [v83 &selRef:v84 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 48) = v85;
  v86 = [v76 bottomAnchor];
  v87 = [v44 bottomAnchor];
  v88 = [v86 &selRef:v87 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 56) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = v106;
  v90 = *&v1[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_separator];
  v91 = [v90 leadingAnchor];
  v92 = [v44 leadingAnchor];
  v93 = [v91 &selRef:v92 alertControllerReleasedDictationButton:? + 5];

  *(v89 + 32) = v93;
  v94 = [v90 trailingAnchor];
  v95 = [v1 trailingAnchor];
  v96 = [v94 &selRef:v95 alertControllerReleasedDictationButton:? + 5];

  *(v89 + 40) = v96;
  v97 = [v90 bottomAnchor];
  v98 = [v1 contentView];
  v99 = [v98 bottomAnchor];

  v100 = [v97 &selRef:v99 alertControllerReleasedDictationButton:? + 5];
  *(v89 + 48) = v100;
  v101 = [v90 heightAnchor];
  sub_20C1387F4();
  v102 = [v101 constraintEqualToConstant_];

  *(v89 + 56) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = v110;
  *(inited + 40) = v107;
  *(inited + 48) = v64;
  *(inited + 56) = v75;
  *(inited + 64) = v89;
  sub_20B853E04(inited);
  v11 = v104;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[v108] = v11;

  return v11;
}

uint64_t sub_20BD850BC()
{
  v1 = type metadata accessor for ShelfCellItemInfo(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v90 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedVerticalConstraints;
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_cachedVerticalConstraints];
  if (v9 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_3;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v10 = *&v0[v8];

    return v10;
  }

  v94 = v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v11 = swift_allocObject();
  v96 = xmmword_20C14FE90;
  *(v11 + 16) = xmmword_20C14FE90;
  v12 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
  v13 = [v12 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v16 = [v13 constraintEqualToAnchor:v15 constant:*&qword_27C799F40];

  *(v11 + 32) = v16;
  v17 = [v12 widthAnchor];
  v18 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E26EC(&v0[v18], v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &qword_27C762550, &unk_20C1505A0);
    v19 = sub_20C1380F4();
  }

  else
  {
    sub_20B86C00C(v7, v4);
    sub_20B520158(v7, &qword_27C762550, &unk_20C1505A0);
    v20 = v4[16];
    sub_20BD87A44(v4, type metadata accessor for ShelfCellItemInfo);
    v19 = v20;
  }

  v21 = [v17 constraintEqualToConstant_];

  *(v11 + 40) = v21;
  v22 = [v12 heightAnchor];
  v23 = [v12 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 multiplier:0.5625];

  *(v11 + 48) = v24;
  v25 = [v12 topAnchor];
  v26 = [v0 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:10.0];
  v93 = v11;
  *(v11 + 56) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v96;
  v30 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_textLayoutGuide];
  v31 = [v30 leadingAnchor];
  v32 = [v12 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v29 + 32) = v33;
  v34 = [v30 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v37 = [v34 constraintEqualToAnchor:v36 constant:-*&qword_27C799F50];

  *(v29 + 40) = v37;
  v38 = [v30 topAnchor];
  v39 = [v12 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:10.0];

  *(v29 + 48) = v40;
  v41 = [v30 &selRef_secondaryLabel + 5];
  v42 = [v0 contentView];
  v43 = [v42 &selRef_secondaryLabel + 5];

  v44 = [v41 constraintEqualToAnchor:v43 constant:-10.0];
  *(v29 + 56) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C150040;
  v46 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_titleLabel];
  v47 = [v46 leadingAnchor];
  v48 = [v30 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];
  v92 = v29;
  v50 = v49;

  *(v45 + 32) = v50;
  v51 = [v46 trailingAnchor];
  v52 = [v30 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v45 + 40) = v53;
  v91 = v45;
  v54 = [v46 topAnchor];
  v55 = [v30 topAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v45 + 48) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = v96;
  v58 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_subtitleLabel];
  v59 = [v58 leadingAnchor];
  v60 = [v30 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v57 + 32) = v61;
  v62 = [v58 trailingAnchor];
  v63 = [v30 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v57 + 40) = v64;
  v65 = [v58 topAnchor];
  v66 = [v46 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v57 + 48) = v67;
  v68 = [v58 bottomAnchor];
  v69 = [v30 bottomAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v57 + 56) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = v96;
  v72 = *&v0[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_separator];
  v73 = [v72 leadingAnchor];
  v74 = [v30 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v71 + 32) = v75;
  v76 = [v72 trailingAnchor];
  v77 = [v30 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v71 + 40) = v78;
  v79 = [v72 bottomAnchor];
  v80 = [v0 contentView];
  v81 = [v80 bottomAnchor];

  v82 = [v79 constraintEqualToAnchor_];
  *(v71 + 48) = v82;
  v83 = [v72 heightAnchor];
  sub_20C1387F4();
  v84 = [v83 constraintEqualToConstant_];

  *(v71 + 56) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  v86 = v92;
  *(inited + 32) = v93;
  v87 = v91;
  *(inited + 40) = v86;
  *(inited + 48) = v87;
  *(inited + 56) = v57;
  *(inited + 64) = v71;
  sub_20B853E04(inited);
  v10 = v88;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v0[v94] = v10;

  return v10;
}

id sub_20BD85C18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanBrickRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanBrickRowCell(uint64_t a1)
{
  result = qword_27C76EC20;
  if (!qword_27C76EC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD85D70(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BD85E44(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BD85E90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD85EE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BD85F4C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_separator) setHidden_];
}

void sub_20BD85F9C(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v234 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v219 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v216 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v217 = &v188 - v8;
  v215 = v9;
  MEMORY[0x28223BE20](v10);
  v218 = &v188 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v12 - 8);
  v227 = &v188 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v229 = *(v14 - 8);
  v230 = v14;
  v15 = *(v229 + 64);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v222 = &v188 - v17;
  v225 = sub_20C1391C4();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v226 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_20C138A64();
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v228 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v20 - 8);
  v223 = &v188 - v21;
  v22 = sub_20C13C554();
  v236 = *(v22 - 8);
  v237 = v22;
  MEMORY[0x28223BE20](v22);
  v235 = (&v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_20C137C24();
  v239 = *(v24 - 8);
  v240 = v24;
  MEMORY[0x28223BE20](v24);
  v238 = &v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v25;
  MEMORY[0x28223BE20](v26);
  v241 = &v188 - v27;
  v28 = sub_20C136CD4();
  v232 = *(v28 - 8);
  v233 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = (&v188 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_20C134014();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v188 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v39 == 33)
  {
    v118 = v242;
    v119 = *&v242[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_titleLabel];
    v120 = sub_20C13C914();
    [v119 setText_];

    v121 = *&v118[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_subtitleLabel];
    v122 = sub_20C13C914();
    [v121 setText_];

    sub_20BA1DAA0();
    v123 = &v118[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
    v125 = *&v118[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
    v124 = *(v123 + 1);
    ObjectType = swift_getObjectType();
    (*(v124 + 264))(0, ObjectType, v124);
    (*(v124 + 296))(0, 0, ObjectType, v124);
    v127 = [v125 layer];
    [v127 setBorderColor_];

    v242 = [v125 layer];
    [v242 setBorderWidth_];
    v128 = v242;
  }

  else if (v39 == 32)
  {
    v196 = v15;
    v197 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v198 = v5;
    v40 = v36;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v42 = swift_projectBox();
    v43 = v42 + *(v41 + 64);
    v44 = *v43;
    v45 = *(v43 + 8);
    v213 = *(v43 + 16);
    v234 = v33;
    v46 = *(v43 + 24);
    v47 = *(v43 + 32);
    v214 = v30;
    v48 = *(v43 + 40);
    v209 = v35;
    v49 = *(v35 + 16);
    v210 = v40;
    v49(v38, v42, v40);
    v50 = v242;
    v51 = *&v242[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_titleLabel];
    v52 = v44;
    v53 = v45;
    v204 = v213;
    v213 = v46;

    v212 = v47;

    v206 = v48;
    v54 = v214;

    v211 = v51;
    v207 = v52;
    [v51 setAttributedText_];
    v203 = *&v50[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_subtitleLabel];
    v205 = v53;
    [v203 setAttributedText_];
    v208 = v38;
    sub_20C133F04();
    v202 = sub_20C138054();
    v56 = v55;
    sub_20C134E34();
    v57 = v241;
    sub_20C136CB4();
    v58 = sub_20C136CC4();
    v60 = v59;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v61 = sub_20C13D374();
    v62 = v235;
    v63 = v236;
    *v235 = v61;
    v64 = v237;
    (*(v63 + 104))(v62, *MEMORY[0x277D85200], v237);
    LOBYTE(v44) = sub_20C13C584();
    (*(v63 + 8))(v62, v64);
    if (v44)
    {
      v66 = *&v50[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
      v65 = *&v50[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView + 8];
      v67 = swift_getObjectType();
      [v66 setContentMode_];
      v68 = sub_20BA66C54();
      v235 = v66;
      v236 = v67;
      v237 = v65;
      if (v68)
      {
        v69 = swift_allocObject();
        v201 = v56;
        v70 = v69;
        swift_unknownObjectWeakInit();
        v71 = v239;
        v72 = *(v239 + 16);
        v199 = v58;
        v73 = v240;
        v193 = v239 + 16;
        v190 = v72;
        v72(v238, v57, v240);
        v74 = *(v71 + 80);
        v75 = (v74 + 24) & ~v74;
        v189 = v231 + 7;
        v76 = (v231 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v195 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v200 = v60;
        v194 = v74;
        v79 = swift_allocObject();
        *(v79 + 16) = v70;
        v80 = v71;
        v81 = v202;
        v192 = *(v80 + 32);
        v191 = v80 + 32;
        v192(v79 + v75, v238, v73);
        v82 = (v79 + v76);
        v83 = v200;
        *v82 = v199;
        v82[1] = v83;
        v84 = (v79 + v77);
        v85 = v201;
        *v84 = v81;
        v84[1] = v85;
        *(v79 + v78) = 2;
        v86 = v79 + v195;
        *v86 = MEMORY[0x277D84F90];
        *(v86 + 8) = 0;
        v87 = (v79 + ((v78 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v87 = 0;
        v87[1] = 0;
        v88 = v237;
        v89 = *(v237 + 152);

        v90 = v236;
        v89(sub_20BD876A4, v79, v236, v88);

        [v66 bounds];
        if (v91 <= 0.0 || (v93 = v92, v92 <= 0.0))
        {

          v117 = v233;
          v57 = v241;
        }

        else
        {
          v94 = v91;
          v95 = v88;
          v195 = ~v194;
          (*(v88 + 120))(0, v90, v88);
          v96 = v223;
          v97 = v240;
          v98 = v241;
          v99 = v190;
          v190(v223, v241, v240);
          (*(v239 + 56))(v96, 0, 1, v97);
          (*(v95 + 16))(v96, v90, v95);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v100 = sub_20C13D5A4();
          [v66 setBackgroundColor_];

          (*(v95 + 176))(COERCE_DOUBLE(*&v94), COERCE_DOUBLE(*&v93), 0, v90, v95);
          v101 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v102 = v238;
          v99(v238, v98, v97);
          v103 = v99;
          v104 = (v194 + 16) & v195;
          v105 = (v189 + v104) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
          v108 = swift_allocObject();
          v192(v108 + v104, v102, v97);
          *(v108 + v105) = v101;
          v109 = (v108 + v106);
          v110 = v103;
          *v109 = v94;
          v109[1] = v93;
          v223 = v108;
          v111 = (v108 + v107);
          v112 = v102;
          v57 = v241;
          *v111 = 0;
          v111[1] = 0;
          v110(v102, v57, v97);
          (*(v224 + 104))(v226, *MEMORY[0x277D542A8], v225);

          v113 = v228;
          sub_20C138A54();
          v114 = v227;
          sub_20B5F1C08(v113, v227);
          v115 = v229;
          v116 = v230;
          if ((*(v229 + 48))(v114, 1, v230) != 1)
          {
            v151 = v115;
            v152 = v110;
            v226 = *(v151 + 32);
            v153 = v222;
            (v226)(v222, v114, v116);
            v154 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v155 = v240;
            v152(v112, v57, v240);
            v156 = (v194 + 40) & v195;
            v157 = v156 + v231;
            v158 = v112;
            v159 = (v156 + v231) & 0xFFFFFFFFFFFFFFF8;
            v160 = swift_allocObject();
            *(v160 + 2) = v154;
            v160[3] = v94;
            v160[4] = v93;
            v192(v160 + v156, v158, v155);
            *(v160 + v157) = 0;
            v161 = v160 + v159;
            *(v161 + 1) = 0;
            *(v161 + 2) = 0;
            v162 = swift_allocObject();
            *(v162 + 16) = sub_20BD87838;
            *(v162 + 24) = v160;
            v163 = v229;
            v164 = v197;
            v165 = v153;
            v166 = v230;
            (*(v229 + 16))(v197, v165, v230);
            v167 = (*(v163 + 80) + 16) & ~*(v163 + 80);
            v168 = (v196 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
            v169 = swift_allocObject();
            (v226)(v169 + v167, v164, v166);
            v170 = (v169 + v168);
            *v170 = sub_20B5F67A4;
            v170[1] = v162;
            v171 = v217;
            sub_20C137C94();
            v172 = swift_allocObject();
            v173 = v223;
            *(v172 + 16) = sub_20BD8777C;
            *(v172 + 24) = v173;
            v174 = swift_allocObject();
            *(v174 + 16) = sub_20B5F67D4;
            *(v174 + 24) = v172;
            v175 = v219;
            v176 = v216;
            v177 = v198;
            (*(v219 + 16))(v216, v171, v198);
            v178 = (*(v175 + 80) + 16) & ~*(v175 + 80);
            v179 = (v215 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
            v180 = swift_allocObject();
            v181 = v176;
            v182 = v240;
            (*(v175 + 32))(v180 + v178, v181, v177);
            v183 = (v180 + v179);
            *v183 = sub_20B5DF204;
            v183[1] = v174;

            v184 = v218;
            sub_20C137C94();
            v185 = *(v175 + 8);
            v185(v171, v177);
            v186 = sub_20C137CB4();
            v187 = swift_allocObject();
            *(v187 + 16) = 0;
            *(v187 + 24) = 0;
            v186(sub_20B52347C, v187);

            v57 = v241;
            v185(v184, v177);
            (*(v229 + 8))(v222, v230);
            (*(v220 + 8))(v228, v221);
            v140 = v182;
            v141 = v232;
            v117 = v233;
            v54 = v214;
            v142 = v211;
            goto LABEL_18;
          }

          sub_20B520158(v114, &unk_27C766670, &unk_20C151580);
          sub_20BA1DAA0();

          (*(v220 + 8))(v113, v221);
          v117 = v233;
        }

        v141 = v232;
        v54 = v214;
        v142 = v211;
        v140 = v240;
      }

      else
      {

        v140 = v240;
        v141 = v232;
        v117 = v233;
        v142 = v211;
      }

LABEL_18:
      (*(v239 + 8))(v57, v140);
      (*(v141 + 8))(v54, v117);

      sub_20BD87A44(v234, MEMORY[0x277D51268]);
      v143 = v208;
      v144 = sub_20C133EB4() > 0;
      v145 = v237;
      (*(v237 + 264))(v144, v236, v237);
      v146 = sub_20C133E54();
      (*(v145 + 296))(v146);

      v147 = sub_20C133FF4();
      v149 = v148;
      LOBYTE(v145) = v150;
      sub_20B5F09E0(v147, v148, v150);
      sub_20B584078(v147, v149, v145);
      [v142 setLineBreakMode_];
      [v203 setLineBreakMode_];

      (*(v209 + 8))(v143, v210);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v129 = v242;
    v130 = sub_20C13BB74();
    v131 = sub_20C13D1D4();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v243 = a1;
      v244 = v134;
      *v132 = 138543618;
      *(v132 + 4) = v129;
      *v133 = v129;
      *(v132 + 12) = 2082;
      v135 = sub_20B5F66D0();
      v136 = v129;
      v137 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v135);
      v139 = sub_20B51E694(v137, v138, &v244);

      *(v132 + 14) = v139;
      _os_log_impl(&dword_20B517000, v130, v131, "Attempted to configure %{public}@ with item: %{public}s", v132, 0x16u);
      sub_20B520158(v133, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v133, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x20F2F6A40](v134, -1, -1);
      MEMORY[0x20F2F6A40](v132, -1, -1);
    }

    v234[1](v4, v2);
  }
}