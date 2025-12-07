uint64_t sub_21990C4CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_218718690(a1 + 16, v17);
  v6 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v7, 0);
    v8 = v20;
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  v15 = MEMORY[0x21CEC9610](v8, *a3, v6, v5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

void sub_21990C60C(unint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  aBlock[0] = a3;
  sub_21990E3B0(0, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D83940]);
  sub_21990E314(&qword_27CC20D40, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline);
  sub_21990DA08();
  v7 = sub_219BF56C4();
  v8 = v6;
  v9 = v7;
  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = v3;
  v55 = a2;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_3:
  v11 = v8;
  v64 = MEMORY[0x277D84F90];
  sub_218C383F0(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v12 = 0;
  v13 = v64;
  v14 = v11;
  v8 = v11 & 0xC000000000000001;
  v56 = v11 & 0xFFFFFFFFFFFFFF8;
  v60 = v11 & 0xC000000000000001;
  v58 = v9;
  v59 = v11;
  v57 = v10;
  do
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v60)
    {
      v15 = MEMORY[0x21CECE0F0](v12, v14);
    }

    else
    {
      if (v12 >= *(v56 + 16))
      {
        while (1)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v48 = v8;
          v49 = sub_219BF7214();
          v8 = v48;
          v10 = v49;
          v54 = v4;
          v55 = a2;
          if (v49)
          {
            goto LABEL_3;
          }

LABEL_52:

          v13 = MEMORY[0x277D84F90];
          v34 = *(MEMORY[0x277D84F90] + 16);
          if (!v34)
          {
            goto LABEL_53;
          }

LABEL_25:
          v9 = 0;
          v35 = v13 + 40;
          v36 = MEMORY[0x277D84F90];
          while (v9 < *(v13 + 16))
          {
            v37 = v13;
            v38 = *(v35 - 8);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v39 = [v38 sportsEventIDs];
            if (v39)
            {
              v40 = v39;
              v41 = sub_219BF5924();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v41 = MEMORY[0x277D84F90];
            }

            v4 = *(v41 + 16);
            a2 = *(v36 + 2);
            v42 = a2 + v4;
            if (__OFADD__(a2, v4))
            {
              goto LABEL_46;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v42 > *(v36 + 3) >> 1)
            {
              if (a2 <= v42)
              {
                v44 = a2 + v4;
              }

              else
              {
                v44 = a2;
              }

              v36 = sub_218840D24(isUniquelyReferenced_nonNull_native, v44, 1, v36);
            }

            v13 = v37;
            if (*(v41 + 16))
            {
              v8 = (*(v36 + 3) >> 1) - *(v36 + 2);
              if (v8 < v4)
              {
                goto LABEL_48;
              }

              swift_arrayInitWithCopy();

              if (v4)
              {
                v45 = *(v36 + 2);
                v46 = __OFADD__(v45, v4);
                v47 = v45 + v4;
                if (v46)
                {
                  goto LABEL_50;
                }

                *(v36 + 2) = v47;
              }
            }

            else
            {

              if (v4)
              {
                goto LABEL_47;
              }
            }

            ++v9;
            v35 += 16;
            if (v34 == v9)
            {
              goto LABEL_54;
            }
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
        }
      }

      v15 = *(v14 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    v16 = [v15 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    v61 = v12 + 1;
    v62 = v13;
    if (*(v9 + 16))
    {
      v20 = sub_21870F700(v17, v19);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v9 + 56) + 48 * v20);
        v24 = *v23;
        v25 = v23[1];
        v27 = v23[2];
        v26 = v23[3];
        v29 = v23[4];
        v28 = v23[5];

        swift_unknownObjectRetain();
        goto LABEL_15;
      }
    }

    else
    {
    }

    v24 = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
    v29 = 0;
    v28 = 0;
LABEL_15:
    v30 = swift_allocObject();
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v26;
    v30[6] = v29;
    v30[7] = v28;
    aBlock[4] = sub_21990DA5C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21990CDA0;
    aBlock[3] = &block_descriptor_185;
    v31 = _Block_copy(aBlock);
    sub_21990DA64(v24, v25, v27, v26, v29, v28);

    a2 = FCMutateHeadlineWithBlock();
    _Block_release(v31);
    if (!a2)
    {
      goto LABEL_60;
    }

    if (v25)
    {
      sub_21990DA64(v24, v25, v27, v26, v29, v28);
      swift_unknownObjectRelease();

      sub_21990DB44(v24, v25, v27, v26, v29, v28);
    }

    else
    {
      if (qword_27CC08870 != -1)
      {
        swift_once();
      }

      v28 = qword_27CC20D20;
      swift_unknownObjectRelease();
    }

    v13 = v62;
    v9 = v58;
    v14 = v59;
    v64 = v62;
    v4 = *(v62 + 16);
    v32 = *(v62 + 24);
    if (v4 >= v32 >> 1)
    {
      sub_218C383F0((v32 > 1), v4 + 1, 1);
      v14 = v59;
      v13 = v64;
    }

    *(v13 + 16) = v4 + 1;
    v33 = v13 + 16 * v4;
    *(v33 + 32) = a2;
    *(v33 + 40) = v28;
    ++v12;
  }

  while (v61 != v57);

  v34 = *(v13 + 16);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_53:
  v36 = MEMORY[0x277D84F90];
LABEL_54:
  v50 = sub_218845F78(v36);

  aBlock[0] = v13;
  sub_21990DAC8(0);
  swift_allocObject();
  sub_219BE3014();
  __swift_project_boxed_opaque_existential_1(v55 + 12, v55[15]);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = sub_21947D1C0(*(v50 + 16), 0);
    v53 = sub_2194ABD64(aBlock, v52 + 4, v51, v50);
    sub_21892DE98(aBlock[0]);
    if (v53 != v51)
    {
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
LABEL_57:
  }

  sub_219BF3AB4();

  sub_219BE31C4();
}

void sub_21990CCDC(id a1, void *a2)
{
  if (a1)
  {
    if (a2[1])
    {
      v3 = sub_219BF53D4();
      [a1 setVideoType_];

      v4 = sub_219BF5904();
    }

    else
    {
      [a1 setVideoType_];
      v4 = 0;
    }

    v5 = v4;
    [a1 setSportsEventIDs_];
  }
}

void sub_21990CDA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_21990CE0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  result = [*(a2 + 136) subscribedTagIDs];
  if (result)
  {
    v7 = result;
    v8 = sub_219BF5924();

    v9 = sub_218845F78(v8);

    sub_2194F3AB8(v4, v5, v9, *(a3 + 32));

    sub_21990B694(0, &unk_280EE6B50, sub_21990B660, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21990CF10()
{
  v0 = objc_allocWithZone(MEMORY[0x277D31348]);
  v1 = sub_219BF53D4();
  v2 = sub_219BF53D4();
  v3 = [v0 initWithTagType:2 identifier:v1 name:v2];

  if (v3)
  {
    qword_27CC20D20 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_21990CFB0()
{
  v0 = objc_allocWithZone(MEMORY[0x277D31348]);
  v1 = sub_219BF53D4();
  v2 = sub_219BF53D4();
  v3 = [v0 initWithTagType:2 identifier:v1 name:v2];

  if (v3)
  {
    qword_27CC20D28 = v3;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21990D050()
{
  sub_21990B694(0, &qword_27CC20D58, sub_21990DBA8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 40) = 0x8000000219D3D980;
  sub_21990E3B0(0, &qword_27CC17458, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C10590;
  if (qword_27CC08870 != -1)
  {
    v10 = v1;
    swift_once();
    v1 = v10;
  }

  v2 = qword_27CC20D20;
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x8000000219D3D9A0;
  *(v1 + 48) = &unk_282A2AD80;
  *(v1 + 56) = 0xD000000000000010;
  *(v1 + 64) = 0x8000000219CFB180;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000219D3D9C0;
  *(v1 + 96) = &unk_282A2ADB0;
  *(v1 + 104) = 0xD000000000000010;
  *(v1 + 112) = 0x8000000219CFB180;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0xD000000000000017;
  *(v1 + 136) = 0x8000000219D3D9E0;
  *(v1 + 144) = &unk_282A2ADE0;
  *(v1 + 152) = 0xD000000000000010;
  *(v1 + 160) = 0x8000000219CFB180;
  *(v1 + 168) = v2;
  *(v1 + 176) = 0xD000000000000017;
  *(v1 + 184) = 0x8000000219D3DA00;
  *(v1 + 192) = &unk_282A2AE10;
  *(v1 + 200) = 0xD000000000000016;
  *(v1 + 208) = 0x8000000219CFB1A0;
  *(v1 + 216) = v2;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000219D3DA20;
  *(v1 + 240) = &unk_282A2AE40;
  *(v1 + 248) = 0xD000000000000010;
  *(v1 + 256) = 0x8000000219CFB180;
  *(v1 + 264) = v2;
  *(v1 + 272) = 0xD000000000000017;
  *(v1 + 280) = 0x8000000219D3DA40;
  *(v1 + 288) = &unk_282A2AE70;
  *(v1 + 296) = 0xD000000000000010;
  *(v1 + 304) = 0x8000000219CFB180;
  *(v1 + 312) = v2;
  *(v1 + 320) = 0xD000000000000017;
  *(v1 + 328) = 0x8000000219D3DA60;
  *(v1 + 336) = &unk_282A2AEA0;
  *(v1 + 344) = 0xD00000000000001CLL;
  *(v1 + 368) = 0xD000000000000017;
  *(v1 + 376) = 0x8000000219D3DA80;
  *(v1 + 352) = 0x8000000219CFB160;
  *(v1 + 360) = v2;
  *(v1 + 384) = &unk_282A2AEE0;
  *(v1 + 392) = 0xD00000000000001CLL;
  *(v1 + 400) = 0x8000000219CFB160;
  *(v1 + 408) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x8000000219D3DAA0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0B8C0;
  v4 = qword_27CC08878;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000219D3DAC0;
  v6 = qword_27CC20D28;
  *(v3 + 48) = &unk_282A2AF20;
  *(v3 + 56) = 0xD000000000000016;
  *(v3 + 64) = 0x8000000219CFB1A0;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0xD000000000000017;
  *(v3 + 88) = 0x8000000219D3DAE0;
  *(v3 + 96) = &unk_282A2AF50;
  *(v3 + 104) = 0xD000000000000010;
  *(v3 + 112) = 0x8000000219CFB180;
  *(v3 + 120) = v6;
  *(v3 + 128) = 0xD000000000000017;
  *(v3 + 136) = 0x8000000219D3DB00;
  *(v3 + 144) = &unk_282A2AF80;
  *(v3 + 152) = 0xD000000000000010;
  *(v3 + 160) = 0x8000000219CFB180;
  *(v3 + 168) = v6;
  *(inited + 72) = v3;
  v7 = v6;
  v8 = sub_2194B1E94(inited);
  swift_setDeallocating();
  sub_21990DBA8(0);
  swift_arrayDestroy();
  return v8;
}

char *sub_21990D42C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
LABEL_34:
    swift_unknownObjectRetain();
    v26 = sub_21990D050();
    v27 = [v2 identifier];
    v28 = sub_219BF5414();
    v30 = v29;

    if (*(v26 + 16))
    {
      v31 = sub_21870F700(v28, v30);
      v33 = v32;

      if (v33)
      {
        v6 = *(*(v26 + 56) + 8 * v31);

        sub_21990B56C(v2, 0);
        return v6;
      }
    }

    else
    {
    }

    sub_21990B56C(v2, 0);
    return MEMORY[0x277D84F90];
  }

  if (a2 != 1)
  {
    v34 = sub_21990D050();
    v3 = v34;
    v2 = v34 + 64;
    v35 = 1 << *(v34 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v34 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v6 = MEMORY[0x277D84F90];
LABEL_41:
    if (v37)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        return v6;
      }

      v37 = *(v2 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
LABEL_46:
        v41 = *(*(v3 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(v37)))));
        v42 = *(v41 + 16);
        v43 = *(v6 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v44 > *(v6 + 3) >> 1)
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v6 = sub_2191FB7FC(isUniquelyReferenced_nonNull_native, v46, 1, v6);
        }

        v37 &= v37 - 1;
        if (*(v41 + 16))
        {
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v42)
          {
            goto LABEL_72;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = *(v6 + 2);
            v24 = __OFADD__(v47, v42);
            v48 = v47 + v42;
            if (v24)
            {
              goto LABEL_73;
            }

            *(v6 + 2) = v48;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_74:
    v4 = sub_219BF7214();
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    v50 = v3;
    v51 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v51)
      {
        v8 = v2;
        v9 = MEMORY[0x21CECE0F0](v5, v2);
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_65;
        }

        v8 = v2;
        v9 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v10 = sub_21990D050();
      v11 = [v9 identifier];
      v12 = sub_219BF5414();
      v14 = v13;

      if (*(v10 + 16))
      {
        v15 = sub_21870F700(v12, v14);
        v17 = v16;

        if (v17)
        {
          v3 = *(*(v10 + 56) + 8 * v15);

          swift_unknownObjectRelease();

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v3 = MEMORY[0x277D84F90];
LABEL_18:
      v18 = *(v3 + 16);
      v19 = *(v6 + 2);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_66;
      }

      v21 = swift_isUniquelyReferenced_nonNull_native();
      if ((v21 & 1) != 0 && v20 <= *(v6 + 3) >> 1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v6 = sub_2191FB7FC(v21, v22, 1, v6);
        if (!*(v3 + 16))
        {
LABEL_7:

          if (v18)
          {
            goto LABEL_67;
          }

          goto LABEL_8;
        }
      }

      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v18)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v6 + 2);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_69;
        }

        *(v6 + 2) = v25;
      }

LABEL_8:
      ++v5;
      v7 = v2 == v4;
      v3 = v50;
      v2 = v8;
      if (v7)
      {
        goto LABEL_60;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_60:
  sub_21990B56C(v2, 1);
  return v6;
}

void sub_21990D924(uint64_t a1)
{
  if (!qword_27CC20D30)
  {
    sub_21990E3B0(255, &qword_27CC20D38, &type metadata for HighlightSourceHeadline, MEMORY[0x277D83940]);
    sub_218A4247C(255, &unk_280E8EB90, &qword_280E8DFF0, &protocolRef_FCSportsEventProviding);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20D30);
    }
  }
}

double sub_21990D9EC(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_21990DA08()
{
  result = qword_27CC20D48;
  if (!qword_27CC20D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D48);
  }

  return result;
}

double sub_21990DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }

  return result;
}

void sub_21990DAC8(uint64_t a1)
{
  if (!qword_27CC20D50)
  {
    sub_21990E3B0(255, &qword_27CC20D38, &type metadata for HighlightSourceHeadline, MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20D50);
    }
  }
}

void sub_21990DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

void sub_21990DBA8(uint64_t a1)
{
  if (!qword_27CC20D60)
  {
    sub_21990E3B0(255, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20D60);
    }
  }
}

void sub_21990DCB8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = *(v4 + 184);
  v8 = [objc_msgSend(v7 configurationManager)];
  swift_unknownObjectRelease();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  v62 = a3;
  if (v9)
  {
    v65 = v7;
    v11 = sub_21947D1C0(v9, 0);
    v12 = sub_2194ABD64(&v69, v11 + 4, v9, a2);
    v13 = v69;

    sub_21892DE98(v13);
    if (v12 != v9)
    {
      __break(1u);
      return;
    }

    v10 = MEMORY[0x277D84F90];
    v7 = v65;
  }

  v14 = objc_opt_self();
  v15 = sub_219BF5904();

  v16 = [v14 transformationWithFilterOptions:0x20002813ALL configuration:v8 context:v7 otherArticleIDs:v15];
  swift_unknownObjectRelease();

  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v17 = sub_219BF5904();
  v60 = v16;
  v18 = [v16 transformHeadlinesWithResult_];

  sub_2186C6148(0, &qword_280E8DB98, 0x277D31000);
  v19 = sub_219BF5924();

  v69 = v10;
  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
LABEL_24:
    v21 = sub_219BF7214();
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_25:
    v61 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_6:
  v22 = 0;
  v61 = MEMORY[0x277D84F90];
  v23 = v19 & 0xC000000000000001;
  v24 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v64 = v20;
  v66 = v19;
  v63 = v21;
  do
  {
    v25 = v22;
    while (1)
    {
      if (v23)
      {
        v42 = MEMORY[0x21CECE0F0](v25, v19);
      }

      else
      {
        if (v25 >= *(v20 + 16))
        {
          goto LABEL_23;
        }

        v42 = *(v19 + 8 * v25 + 32);
      }

      v43 = v42;
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (![v42 v24[510]])
      {
        break;
      }

      sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_219C0B8C0;
      v27 = [a4 identifier];
      v28 = sub_219BF5414();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
      *(v26 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v26 + 64) = v32;
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v33 = [objc_msgSend(v43 item)];
      swift_unknownObjectRelease();
      v34 = sub_219BF5414();
      v36 = v35;

      *(v26 + 96) = v31;
      *(v26 + 104) = v32;
      *(v26 + 72) = v34;
      *(v26 + 80) = v36;
      [v43 filteredReasons];
      v37 = FCFeedFilterOptionsToNSString();
      v38 = sub_219BF5414();
      v40 = v39;

      *(v26 + 136) = v31;
      *(v26 + 144) = v32;
      v24 = &selRef_moveShortcutWithIdentifier_toIndex_;
      *(v26 + 112) = v38;
      *(v26 + 120) = v40;
      v20 = v64;
      v19 = v66;
      v21 = v63;
      v41 = sub_219BF6214();
      sub_219BE5314("Highlights service tag %{public}@ filtered out headline %{public}@ because %{public}@", 85, 2, &dword_2186C1000, a1, v41, v26);

LABEL_9:
      ++v25;
      if (v22 == v21)
      {
        goto LABEL_26;
      }
    }

    v44 = [v43 item];

    if (!v44)
    {
      goto LABEL_9;
    }

    MEMORY[0x21CECC690]();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v61 = v69;
  }

  while (v22 != v21);
LABEL_26:

  sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_219C0EE20;
  v46 = [a4 identifier];
  v47 = sub_219BF5414();
  v49 = v48;

  *(v45 + 56) = MEMORY[0x277D837D0];
  v50 = sub_2186FC3BC();
  *(v45 + 64) = v50;
  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  if (v62 >> 62)
  {
    v51 = sub_219BF7214();
  }

  else
  {
    v51 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = MEMORY[0x277D83B88];
  v53 = MEMORY[0x277D83C10];
  *(v45 + 96) = MEMORY[0x277D83B88];
  *(v45 + 104) = v53;
  *(v45 + 72) = v51;
  if (v61 >> 62)
  {
    v54 = sub_219BF7214();
  }

  else
  {
    v54 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v45 + 136) = v52;
  *(v45 + 144) = v53;
  *(v45 + 112) = v54;
  v55 = FCFeedFilterOptionsToNSString();
  v56 = sub_219BF5414();
  v58 = v57;

  *(v45 + 176) = MEMORY[0x277D837D0];
  *(v45 + 184) = v50;
  *(v45 + 152) = v56;
  *(v45 + 160) = v58;
  v59 = sub_219BF6214();
  sub_219BE5314("Highlights service tag %{public}@ filter transform from %ld to %ld headlines using options %{public}@", 101, 2, &dword_2186C1000, a1, v59, v45);
}

uint64_t sub_21990E314(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_21990E3B0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21990E3B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7NewsUI234TagHighlightHeadlinesRequestSourceO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_21990E43C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21990E47C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x73656C6369747261;
      break;
    case 2:
      result = 0x6E6F6365536C7474;
      break;
    case 3:
      result = 0x61636F4C72657375;
      break;
    case 4:
      result = 0x74695470756F7267;
      break;
    case 5:
      result = 0x62755370756F7267;
      break;
    case 6:
      result = 0x63416F546C6C6163;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x73746F6C73;
      break;
    case 11:
      v3 = 1315858797;
      goto LABEL_6;
    case 12:
      v3 = 1316512109;
LABEL_6:
      result = v3 | 0x5673776500000000;
      break;
    case 13:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21990E63C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21990E708(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21990E7C0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21990E888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2199120B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21990E8B8(unint64_t *a1@<X8>)
{
  v2 = 0xED0000474E494645;
  v3 = 0x495242594C494144;
  v4 = 0xE400000000000000;
  v5 = 1330791752;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000219CD91A0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000219CD9180;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_21990EA08(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_21990EB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2199120FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21990EB64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E696665;
  v4 = 0x697242796C696164;
  v5 = 0xEE00646579616C50;
  v6 = 0x796C746E65636572;
  if (v2 != 5)
  {
    v6 = 0x6C6C6177796170;
    v5 = 0xE700000000000000;
  }

  v7 = 0x8000000219CD91E0;
  v8 = 0x7473696C79616C70;
  if (v2 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000219CD91C0;
  v10 = 0xD000000000000014;
  if (v2 != 1)
  {
    v10 = 1869768040;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21990ED08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21990E47C(*a1);
  v5 = v4;
  if (v3 == sub_21990E47C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21990ED90()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21990E47C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21990EDF4(uint64_t a1)
{
  sub_21990E47C(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_21990EE48(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_21990E47C(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21990EEA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219912148(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21990EED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21990E47C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21990EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219912148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21990EF48(uint64_t a1)
{
  v2 = sub_219911B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21990EF84(uint64_t a1)
{
  v2 = sub_219911B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21990EFC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v169 = sub_219BDBD64();
  v177 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v176 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v167 = &v161 - v7;
  MEMORY[0x28223BE20](v8);
  v178 = &v161 - v9;
  sub_219911C04(0, &unk_280E8CCF8, MEMORY[0x277D844C8]);
  v179 = v10;
  v172 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v161 - v11;
  v171 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v171);
  v175 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v174 = (&v161 - v15);
  MEMORY[0x28223BE20](v16);
  v173 = (&v161 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v161 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v161 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v161 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v161 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v161 - v31;
  v33 = a1[3];
  v180 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_219911B08();
  v34 = v181;
  sub_219BF7B34();
  if (!v34)
  {
    v37 = v174;
    v36 = v175;
    v164 = v29;
    v165 = v20;
    v38 = v173;
    v163 = v23;
    v39 = v176;
    v162 = v26;
    v40 = v177;
    v166 = v32;
    sub_219910334(v35);
    if (v41 > 2u)
    {
      if (v41 > 4u)
      {
        v52 = v40;
        if (v41 != 5)
        {
          LOBYTE(v182) = 13;
          v68 = v179;
          v69 = sub_219BF7694();
          v71 = v168;
          v72 = v169;
          v181 = 0;
          v81 = v12;
          if (v70)
          {
            v82 = v70;
            v83 = v69;
          }

          else
          {
            sub_219BDBD54();
            v112 = sub_219BDBD44();
            v113 = v52;
            v83 = v112;
            v82 = v114;
            (*(v113 + 8))(v71, v72);
          }

          v44 = v170;
          v184 = 10;
          sub_218968414();
          sub_219BF7674();
          (*(v172 + 8))(v81, v68);
          v115 = v182;
          if (v182 == 1)
          {
            v115 = 0;
          }

          *v36 = v83;
          v36[1] = v82;
          v36[2] = v115;
          swift_storeEnumTagMultiPayload();
          v95 = v36;
          goto LABEL_53;
        }

        LOBYTE(v182) = 13;
        v53 = v179;
        v54 = sub_219BF7694();
        v56 = v168;
        v57 = v169;
        v181 = 0;
        v58 = v12;
        if (v55)
        {
          v59 = v55;
          v60 = v54;
        }

        else
        {
          sub_219BDBD54();
          v60 = sub_219BDBD44();
          v59 = v93;
          (*(v52 + 8))(v56, v57);
        }

        v184 = 10;
        sub_218968414();
        sub_219BF7674();
        if (v182 == 1)
        {
          v94 = 0;
        }

        else
        {
          v94 = v182;
        }

        (*(v172 + 8))(v58, v53);
        *v37 = v60;
        v37[1] = v59;
        v37[2] = v94;
        swift_storeEnumTagMultiPayload();
        v95 = v37;
        goto LABEL_52;
      }

      v43 = v12;
      v44 = v170;
      if (v41 != 3)
      {
        LOBYTE(v182) = 13;
        v66 = sub_219BF7694();
        v181 = 0;
        v80 = v172;
        if (v67)
        {
          v178 = v67;
          v176 = v66;
        }

        else
        {
          v107 = v168;
          sub_219BDBD54();
          v176 = sub_219BDBD44();
          v178 = v108;
          (*(v40 + 8))(v107, v169);
        }

        v184 = 10;
        sub_218968414();
        v109 = v179;
        sub_219BF7674();
        if (v182 == 1)
        {
          v110 = 0;
        }

        else
        {
          v110 = v182;
        }

        (*(v80 + 8))(v43, v109);
        v111 = v178;
        *v38 = v176;
        v38[1] = v111;
        v38[2] = v110;
        swift_storeEnumTagMultiPayload();
        v95 = v38;
        goto LABEL_53;
      }

      LOBYTE(v182) = 7;
      v45 = v179;
      v46 = sub_219BF76F4();
      v77 = v76;
      v178 = v46;
      LOBYTE(v182) = 8;
      v78 = sub_219BF7694();
      v181 = 0;
      v175 = v79;
      v176 = v78;
      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v182) = 9;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle, &unk_219C0C3EC);
      v96 = sub_219BF7684();
      v97 = MEMORY[0x277D84F90];
      if (v96)
      {
        v97 = v96;
      }

      v174 = v97;
      v98 = v168;
      sub_219BDBD54();
      v99 = sub_219BDBD44();
      v101 = v100;
      (*(v40 + 8))(v98, v169);
      (*(v172 + 8))(v12, v45);
      v102 = v165;
      *v165 = v99;
      v102[1] = v101;
      v103 = v178;
      v102[2] = &unk_282A2B290;
      v102[3] = v103;
      v105 = v175;
      v104 = v176;
      v102[4] = v77;
      v102[5] = v104;
      v106 = v174;
      v102[6] = v105;
      v102[7] = v106;
      goto LABEL_39;
    }

    if (v41)
    {
      v47 = v179;
      if (v41 == 1)
      {
        LOBYTE(v182) = 13;
        v48 = sub_219BF7694();
        if (v49)
        {
          v50 = v48;
          v51 = v49;
        }

        else
        {
          v84 = v168;
          sub_219BDBD54();
          v50 = sub_219BDBD44();
          v51 = v85;
          (*(v40 + 8))(v84, v169);
        }

        v184 = 10;
        sub_218968414();
        sub_219BF7674();
        v86 = v182;
        if (v182 == 1)
        {
          v87 = 0;
        }

        else
        {
          v87 = v182;
        }

        type metadata accessor for LegacyAudioConfigArticle(0);
        LOBYTE(v182) = 1;
        sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle, &unk_219C0C3EC);
        v88 = 0;
        v178 = sub_219BF7654();
        LOBYTE(v182) = 4;
        v91 = sub_219BF7694();
        v177 = v91;
        if (v92)
        {
          v131 = v92;
        }

        else
        {
          v132 = v12;
          v181 = 0;
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v134 = [objc_opt_self() bundleForClass_];
          v12 = v132;
          v177 = sub_219BDB5E4();
          v131 = v135;

          v88 = v181;
        }

        LOBYTE(v182) = 5;
        v136 = v179;
        v137 = sub_219BF7694();
        if (!v88)
        {
          v176 = v12;
          if (v138)
          {
            v174 = v137;
            v175 = v138;
          }

          else
          {
            type metadata accessor for Localized();
            v139 = swift_getObjCClassFromMetadata();
            v140 = [objc_opt_self() bundleForClass_];
            v174 = sub_219BDB5E4();
            v175 = v141;
          }

          v184 = 6;
          sub_218D63934();
          sub_219BF76E4();
          v169 = v182;
          v173 = v183;
          v184 = 2;
          v142 = sub_219BF76B4();
          LODWORD(v168) = v143;
          v181 = 0;
          v144 = v142;
          sub_219BDBD34();
          v184 = 3;
          sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v145 = v181;
          sub_219BF76E4();
          v181 = v145;
          if (v145)
          {
            (*(v172 + 8))(v176, v179);
            sub_2190FDFDC(v86);

            sub_2188398B4(v169, v173);
            return __swift_destroy_boxed_opaque_existential_1(v180);
          }

          v184 = 11;
          v165 = sub_219BF7694();
          v181 = 0;
          v147 = v146;
          v184 = 12;
          v148 = sub_219BF7694();
          v163 = v149;
          v164 = v148;
          v181 = 0;
          v150 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(0);
          v161 = v150[12];
          v151 = *MEMORY[0x277D32628];
          v152 = sub_219BEF554();
          v102 = v162;
          (*(*(v152 - 8) + 104))(&v162[v161], v151, v152);
          *v102 = v50;
          v102[1] = v51;
          v102[2] = v87;
          (*(v172 + 8))(v176, v179);
          v153 = v177;
          v102[3] = v178;
          v102[4] = v153;
          v154 = v174;
          v155 = v175;
          v102[5] = v131;
          v102[6] = v154;
          v156 = v169;
          v102[7] = v155;
          v102[8] = v156;
          v102[9] = v173;
          v102[10] = v144;
          *(v102 + 88) = v168 & 1;
          sub_218A5DD60(v167, v102 + v150[11]);
          v157 = (v102 + v150[13]);
          v158 = v164;
          *v157 = v165;
          v157[1] = v147;
          v159 = (v102 + v150[14]);
          v160 = v163;
          *v159 = v158;
          v159[1] = v160;
LABEL_39:
          swift_storeEnumTagMultiPayload();
          v95 = v102;
LABEL_52:
          v44 = v170;
LABEL_53:
          v130 = v166;
          sub_219911A40(v95, v166, type metadata accessor for LegacyAudioFeedGroupConfig);
          sub_219911A40(v130, v44, type metadata accessor for LegacyAudioFeedGroupConfig);
          return __swift_destroy_boxed_opaque_existential_1(v180);
        }

        v181 = v88;
        (*(v172 + 8))(v12, v136);
        sub_2190FDFDC(v86);

LABEL_63:

        return __swift_destroy_boxed_opaque_existential_1(v180);
      }

      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v182) = 1;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle, &unk_219C0C3EC);
      v73 = sub_219BF7654();
      LOBYTE(v182) = 2;
      v74 = sub_219BF76B4();
      v181 = 0;
      v89 = v12;
      LODWORD(v178) = v75;
      v175 = v74;
      sub_219BDBD34();
      LOBYTE(v182) = 3;
      sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v90 = v181;
      sub_219BF76E4();
      v181 = v90;
      if (v90)
      {
        (*(v172 + 8))(v12, v47);
        goto LABEL_63;
      }

      v124 = v168;
      sub_219BDBD54();
      v125 = sub_219BDBD44();
      v127 = v126;
      (*(v40 + 8))(v124, v169);
      v119 = v163;
      *v163 = v125;
      v119[1] = v127;
      v119[2] = &unk_282A2B268;
      (*(v172 + 8))(v89, v47);
      v128 = v175;
      v119[3] = v73;
      v119[4] = v128;
      *(v119 + 40) = v178 & 1;
      v129 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(0);
      sub_218A5DD60(v39, v119 + *(v129 + 32));
    }

    else
    {
      type metadata accessor for LegacyAudioConfigArticle(0);
      LOBYTE(v182) = 1;
      sub_219911DF8(qword_280EC1758, type metadata accessor for LegacyAudioConfigArticle, &unk_219C0C3EC);
      v61 = v179;
      v62 = sub_219BF7654();
      LOBYTE(v182) = 2;
      v63 = sub_219BF76B4();
      v181 = 0;
      LODWORD(v176) = v64;
      v175 = v63;
      sub_219BDBD34();
      LOBYTE(v182) = 3;
      sub_219911DF8(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v65 = v181;
      sub_219BF76E4();
      v181 = v65;
      if (v65)
      {
        (*(v172 + 8))(v12, v61);

        return __swift_destroy_boxed_opaque_existential_1(v180);
      }

      v116 = v168;
      sub_219BDBD54();
      v117 = sub_219BDBD44();
      v174 = v118;
      (*(v40 + 8))(v116, v169);
      (*(v172 + 8))(v12, v61);
      v119 = v164;
      v120 = v175;
      *v164 = v62;
      v119[1] = v120;
      *(v119 + 16) = v176 & 1;
      v121 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(0);
      sub_218A5DD60(v178, v119 + *(v121 + 24));
      v122 = (v119 + *(v121 + 28));
      v123 = v174;
      *v122 = v117;
      v122[1] = v123;
    }

    swift_storeEnumTagMultiPayload();
    v95 = v119;
    goto LABEL_52;
  }

  v181 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v180);
}

void sub_219910334(__n128 a1)
{
  sub_219911C04(0, &unk_280E8CCF8, MEMORY[0x277D844C8]);
  sub_219911B5C();
  sub_219BF7734();
  if (v1)
  {
    sub_219911BB0();
    sub_219BF7734();
  }
}

void sub_21991040C(void *a1)
{
  v47 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(0);
  MEMORY[0x28223BE20](v47);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(0);
  MEMORY[0x28223BE20](v45);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219911C04(0, &qword_27CC20DA0, MEMORY[0x277D84538]);
  v52 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219911B08();
  v51 = v13;
  sub_219BF7B44();
  sub_2199119DC(v48, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v15 = v51;
      v16 = v52;
      v31 = *(v10 + 2);
      if (EnumCaseMultiPayload == 5)
      {
        v32 = 5;
      }

      else
      {
        v32 = 6;
      }
    }

    else
    {
      v15 = v51;
      v16 = v52;
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *(v10 + 1);
        v55 = *v10;
        v56 = v17;
        v18 = *(v10 + 3);
        v57 = *(v10 + 2);
        v58 = v18;
        LOBYTE(v53) = 3;
        v59 = 0;
        sub_219911C68();
        v19 = v49;
        sub_219BF7834();
        if (v19)
        {
          (*(v50 + 8))(v15, v16);
          sub_218D242E8(&v55);
          return;
        }

        LOBYTE(v53) = 13;
        sub_219BF77F4();
        v53 = v56;
        v59 = 10;
        sub_2189684CC();

        sub_219BF7834();

        LOBYTE(v53) = 7;
        sub_219BF77F4();
        v53 = *(&v57 + 1);
        v54 = v58;
        v59 = 8;
        v43 = MEMORY[0x277D837D0];
        sub_2186DEEA0(0, &qword_280E8F860, MEMORY[0x277D837D0]);
        sub_219911D94(&qword_280E8F850, &qword_280E8F860, v43);

        sub_219BF7834();

        v53 = *(&v58 + 1);
        v59 = 9;
        sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
        sub_219911CBC();

        sub_219BF7834();
        sub_218D242E8(&v55);
LABEL_26:

        (*(v50 + 8))(v15, v16);
        return;
      }

      v31 = *(v10 + 2);
      v32 = 4;
    }

    LOBYTE(v55) = v32;
    LOBYTE(v53) = 0;
    sub_219911C68();
    v42 = v49;
    sub_219BF7834();
    if (v42)
    {
      (*(v50 + 8))(v15, v16);

      return;
    }

    LOBYTE(v55) = 13;
    sub_219BF77F4();
    *&v55 = v31;
    LOBYTE(v53) = 10;
    sub_2189684CC();

    sub_219BF7834();
    swift_bridgeObjectRelease_n();
    goto LABEL_26;
  }

  v20 = v7;
  v21 = v45;
  if (EnumCaseMultiPayload)
  {
    v22 = v51;
    v23 = v52;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v4;
      sub_219911A40(v10, v4, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      LOBYTE(v55) = 1;
      LOBYTE(v53) = 0;
      sub_219911C68();
      v25 = v49;
      sub_219BF7834();
      if (v25)
      {
        (*(v50 + 8))(v22, v23);
        sub_219911AA8(v4, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
        return;
      }

      LOBYTE(v55) = 13;
      sub_219BF77F4();
      *&v55 = *(v4 + 2);
      LOBYTE(v53) = 10;
      sub_2189684CC();
      sub_219BF7834();
      *&v55 = *(v4 + 3);
      LOBYTE(v53) = 1;
      sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
      sub_219911CBC();
      sub_219BF7834();
      v55 = *(v4 + 2);
      LOBYTE(v53) = 4;
      v26 = MEMORY[0x277D837D0];
      sub_2186DEEA0(0, &qword_280E8F860, MEMORY[0x277D837D0]);
      v28 = v27;
      sub_219911D94(&qword_280E8F850, &qword_280E8F860, v26);
      sub_219BF7834();
      v55 = *(v4 + 3);
      LOBYTE(v53) = 5;
      sub_219BF7834();
      v55 = *(v4 + 4);
      LOBYTE(v53) = 6;
      sub_2186DEEA0(0, &qword_280EB4118, &type metadata for LegacyAudioFeedConfiguration.CallToAction);
      sub_219911E40();
      sub_219BF7834();
      v49 = v28;
      v29 = v4[88];
      *&v55 = *(v4 + 10);
      BYTE8(v55) = v29;
      LOBYTE(v53) = 2;
      v30 = MEMORY[0x277D839F8];
      sub_2186DEEA0(0, &qword_280E8EA30, MEMORY[0x277D839F8]);
      sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30, v30);
      sub_219BF7834();
      LOBYTE(v55) = 3;
      sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      sub_21897A904();
      sub_219BF7834();
      v55 = *&v4[*(v21 + 52)];
      LOBYTE(v53) = 11;
      sub_219BF7834();
      v55 = *&v4[*(v21 + 56)];
      LOBYTE(v53) = 12;
      sub_219BF7834();
      (*(v50 + 8))(v51, v52);
      v44 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig;
    }

    else
    {
      v24 = v46;
      sub_219911A40(v10, v46, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      LOBYTE(v55) = 2;
      LOBYTE(v53) = 0;
      sub_219911C68();
      v39 = v49;
      sub_219BF7834();
      if (!v39)
      {
        LOBYTE(v55) = 13;
        sub_219BF77F4();
        *&v55 = *(v24 + 16);
        LOBYTE(v53) = 10;
        sub_2189684CC();
        sub_219BF7834();
        *&v55 = *(v24 + 24);
        LOBYTE(v53) = 1;
        sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
        sub_219911CBC();
        sub_219BF7834();
        v40 = *(v24 + 40);
        *&v55 = *(v24 + 32);
        BYTE8(v55) = v40;
        LOBYTE(v53) = 2;
        v41 = MEMORY[0x277D839F8];
        sub_2186DEEA0(0, &qword_280E8EA30, MEMORY[0x277D839F8]);
        sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30, v41);
        sub_219BF7834();
        LOBYTE(v55) = 3;
        sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        sub_21897A904();
        sub_219BF7834();
      }

      (*(v50 + 8))(v22, v23);
      v44 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig;
    }

    sub_219911AA8(v24, v44);
  }

  else
  {
    v33 = v20;
    sub_219911A40(v10, v20, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
    LOBYTE(v55) = 0;
    LOBYTE(v53) = 0;
    sub_219911C68();
    v34 = v51;
    v35 = v52;
    v36 = v49;
    sub_219BF7834();
    if (!v36)
    {
      LOBYTE(v55) = 13;
      sub_219BF77F4();
      *&v55 = *v33;
      LOBYTE(v53) = 1;
      sub_2186DD55C(0, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
      sub_219911CBC();
      sub_219BF7834();
      v37 = *(v33 + 16);
      *&v55 = *(v33 + 8);
      BYTE8(v55) = v37;
      LOBYTE(v53) = 2;
      v38 = MEMORY[0x277D839F8];
      sub_2186DEEA0(0, &qword_280E8EA30, MEMORY[0x277D839F8]);
      sub_219911D94(&qword_27CC20DB0, &qword_280E8EA30, v38);
      sub_219BF7834();
      LOBYTE(v55) = 3;
      sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      sub_21897A904();
      sub_219BF7834();
    }

    (*(v50 + 8))(v34, v35);
    sub_219911AA8(v33, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
  }
}

uint64_t sub_2199112BC()
{
  v1 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2199119DC(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_219911A40(v12, v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
        v14 = *v6;

        sub_219911AA8(v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      }

      else
      {
        sub_219911A40(v12, v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
        v14 = *v3;

        sub_219911AA8(v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      }
    }

    else
    {
      sub_219911A40(v12, v9, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
      v14 = *&v9[*(v7 + 28)];

      sub_219911AA8(v9, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
    }
  }

  else
  {
    v14 = *v12;
    if (EnumCaseMultiPayload == 3)
    {
    }
  }

  return v14;
}

void *sub_219911580()
{
  v1 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199119DC(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_219911A40(v9, v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
        v11 = *(v6 + 2);

        sub_219911AA8(v6, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
      }

      else
      {
        sub_219911A40(v9, v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
        v11 = *(v3 + 2);

        sub_219911AA8(v3, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
      }
    }

    else
    {
      sub_219911AA8(v9, type metadata accessor for LegacyAudioFeedGroupConfig);
      return &unk_282A2B2B8;
    }
  }

  else
  {
    v11 = *(v9 + 2);
    if (EnumCaseMultiPayload == 3)
    {
    }
  }

  return v11;
}

uint64_t sub_2199117BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE3184();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_219911838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219911DF8(&qword_280EBB508, type metadata accessor for LegacyAudioFeedGroupConfig, &unk_219CB3C0C);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_2199119DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219911A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219911AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219911B08()
{
  result = qword_280EBB530;
  if (!qword_280EBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB530);
  }

  return result;
}

unint64_t sub_219911B5C()
{
  result = qword_280EBB510;
  if (!qword_280EBB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB510);
  }

  return result;
}

unint64_t sub_219911BB0()
{
  result = qword_27CC20D98;
  if (!qword_27CC20D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D98);
  }

  return result;
}

void sub_219911C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219911B08();
    v7 = a3(a1, &type metadata for LegacyAudioFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219911C68()
{
  result = qword_27CC20DA8;
  if (!qword_27CC20DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DA8);
  }

  return result;
}

unint64_t sub_219911CBC()
{
  result = qword_27CC114B0;
  if (!qword_27CC114B0)
  {
    sub_2186DD55C(255, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
    sub_219911DF8(&qword_27CC114B8, type metadata accessor for LegacyAudioConfigArticle, &unk_219C0C3C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC114B0);
  }

  return result;
}

uint64_t sub_219911D94(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186DEEA0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219911DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219911E40()
{
  result = qword_27CC20DB8;
  if (!qword_27CC20DB8)
  {
    sub_2186DEEA0(255, &qword_280EB4118, &type metadata for LegacyAudioFeedConfiguration.CallToAction);
    sub_218D63B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DB8);
  }

  return result;
}

unint64_t sub_219911EFC()
{
  result = qword_27CC20DC0;
  if (!qword_27CC20DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DC0);
  }

  return result;
}

unint64_t sub_219911F54()
{
  result = qword_27CC20DC8;
  if (!qword_27CC20DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DC8);
  }

  return result;
}

unint64_t sub_219911FAC()
{
  result = qword_27CC20DD0;
  if (!qword_27CC20DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DD0);
  }

  return result;
}

unint64_t sub_219912004()
{
  result = qword_280EBB520;
  if (!qword_280EBB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB520);
  }

  return result;
}

unint64_t sub_21991205C()
{
  result = qword_280EBB528;
  if (!qword_280EBB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB528);
  }

  return result;
}

unint64_t sub_2199120B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2199120FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219912148(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219912194()
{
  result = qword_280EBB518;
  if (!qword_280EBB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB518);
  }

  return result;
}

unint64_t sub_2199121E8()
{
  result = qword_27CC20DD8;
  if (!qword_27CC20DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DD8);
  }

  return result;
}

uint64_t sub_219912250(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v51 = a4;
  v62 = a3;
  v6 = sub_219BE6DF4();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219912D94(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v9;
  sub_218950928(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v49 - v29;
  sub_219912D94(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v32 = v31;
  v33 = MEMORY[0x28223BE20](v31);
  v52 = &v49 - v34;
  v53 = v35;
  (*(v35 + 16))(v33);
  v54 = v32;
  v59 = a1;
  sub_219BEB354();
  sub_219912A48(v51, v27);
  v36 = *(v12 + 48);
  if (v36(v27, 1, v11) != 1)
  {
    v51 = a2;
    v42 = *(v12 + 32);
    v42(v18, v27, v11);
    sub_218F83E20(v30, v24);
    v37 = v30;
    if (v36(v24, 1, v11) == 1)
    {
      sub_218B062D0(v24);
      sub_2186D572C(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      sub_219BF5E84();
      v40 = v54;
      v41 = v52;
      if (v64 != v63)
      {
        sub_218B0632C();
        sub_219BEB324();
      }

      (*(v12 + 8))(v18, v11);
    }

    else
    {
      v46 = v49;
      v42(v49, v24, v11);
      v40 = v54;
      v41 = v52;
      sub_219BEB234();
      v47 = *(v12 + 8);
      v47(v46, v11);
      v47(v18, v11);
    }

    a2 = v51;
    v38 = v60;
    v39 = v58;
    goto LABEL_11;
  }

  sub_218B062D0(v27);
  sub_218F83E20(v30, v21);
  v37 = v30;
  if (v36(v21, 1, v11) == 1)
  {
    sub_218B062D0(v21);
    v38 = v60;
    v39 = v58;
    v40 = v54;
    v41 = v52;
LABEL_11:
    v44 = v61;
    (*(v38 + 104))(v39, *MEMORY[0x277D6D868], v61);
    type metadata accessor for FollowingModel(0);
    sub_2187490E4();
    sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    sub_218A7BAF8();
    v45 = v55;
    sub_219BE85A4();
    goto LABEL_12;
  }

  v43 = v50;
  (*(v12 + 32))(v50, v21, v11);
  sub_219BE6944();
  v40 = v54;
  v41 = v52;
  sub_219BEB214();

  (*(v12 + 8))(v43, v11);
  v38 = v60;
  v44 = v61;
  v39 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277D6D868], v61);
  type metadata accessor for FollowingModel(0);
  sub_2187490E4();
  sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_218A7BAF8();
  v45 = v55;
  sub_219BE85E4();
LABEL_12:
  (*(v38 + 8))(v39, v44);
  a2(v45);
  (*(v56 + 8))(v45, v57);
  sub_218B062D0(v37);
  return (*(v53 + 8))(v41, v40);
}

uint64_t sub_219912A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    sub_218725F94();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C146A0;
    *(inited + 32) = a1;

    v6 = sub_219A912FC(inited);

    sub_218950B84(0);
    v8 = v7;
    v9 = sub_2186D572C(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
    v10 = sub_2186D572C(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v6, v8, v9, v10);
    type metadata accessor for FollowingModel(0);
    sub_2187490E4();
    sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    sub_219BE6924();
    sub_218950928(0);
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    sub_218950928(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_219912D00(uint64_t a1)
{
  v2 = sub_218B126D8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219912D40()
{
  result = qword_280EB8C08;
  if (!qword_280EB8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8C08);
  }

  return result;
}

void sub_219912D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for RecipeBoxRefreshResult(uint64_t a1)
{
  result = qword_27CC20DE0;
  if (!qword_27CC20DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219912ED8(uint64_t a1)
{
  sub_218799754(319);
  if (v1 <= 0x3F)
  {
    sub_2186D0BA8();
    if (v2 <= 0x3F)
    {
      sub_219BF0BD4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_219912F78()
{
  result = qword_27CC20DF0;
  if (!qword_27CC20DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DF0);
  }

  return result;
}

void sub_219912FCC(void *a1, uint64_t a2)
{
  sub_219913E30(0, &qword_280E8C4B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219913D88();
  sub_219BF7B44();
  if (!a2)
  {
    *&v11[11] = 0;
    sub_219913E94();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v11[14] = 1;
    v11[13] = 0;
    sub_219913E94();
LABEL_5:
    sub_219BF7834();
    (*(v7 + 8))(v9, v6);
    return;
  }

  v10 = *(a2 + 16);
  v14 = 2;
  v13 = 0;
  sub_219913A60(v10);
  sub_219913E94();
  sub_219BF7834();
  if (!v2)
  {
    v12 = v10;
    v11[15] = 1;
    sub_218D5578C();
    sub_219BF7834();
  }

  (*(v7 + 8))(v9, v6);
  sub_219913A70(v10);
}

BOOL sub_219913200(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_219913A60(v4);
  LOBYTE(v3) = sub_219913200(v3, v4);
  sub_219913A70(v4);
  return v3 & 1;
}

void sub_21991327C(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2199132DC(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2199133F0(uint64_t a1)
{
  v2 = sub_219913D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21991342C(uint64_t a1)
{
  v2 = sub_219913D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219913468(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x8000000219CD7330;
  if (v2 == 1)
  {
    v5 = 0x8000000219CD7330;
  }

  else
  {
    v3 = 0x42646570756F7267;
    v5 = 0xEF65756761654C79;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F6C6F6E6F726863;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xED00006C61636967;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x42646570756F7267;
    v4 = 0xEF65756761654C79;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6C6F6E6F726863;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED00006C61636967;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_219913584()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_219913644(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2199136F0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2199137AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2199140BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2199137DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006C61636967;
  v4 = 0x8000000219CD7330;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x42646570756F7267;
    v4 = 0xEF65756761654C79;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6C6F6E6F726863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219913908@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_219913B40(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21991395C(uint64_t a1)
{
  if (!a1)
  {
    return 0x6F6C6F6E6F726863;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  v2 = *(a1 + 16);
  sub_219913A60(v2);
  sub_219BF7314();

  v3 = sub_21991395C(v2);
  MEMORY[0x21CECC330](v3);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_219913A70(v2);
  return 0xD000000000000010;
}

unint64_t sub_219913A60(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

double sub_219913A70(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_219913A80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219913AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_219913B40(void *a1)
{
  sub_219913E30(0, &qword_280E8CCE0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219913D88();
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    sub_219913DDC();
    sub_219BF7734();
    if (v14)
    {
      if (v14 == 1)
      {
        (*(v5 + 8))(v7, v4);
        v8 = 1;
      }

      else
      {
        v11[15] = 1;
        sub_218D55738();
        sub_219BF7734();
        (*(v5 + 8))(v7, v4);
        v10 = v12;
        v8 = swift_allocObject();
        *(v8 + 16) = v10;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v8 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219913D88()
{
  result = qword_280EBA0C0[0];
  if (!qword_280EBA0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBA0C0);
  }

  return result;
}

unint64_t sub_219913DDC()
{
  result = qword_280EBA098;
  if (!qword_280EBA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA098);
  }

  return result;
}

void sub_219913E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219913D88();
    v7 = a3(a1, &type metadata for SportsScoreSortingOrdering.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219913E94()
{
  result = qword_280EBA0A8;
  if (!qword_280EBA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0A8);
  }

  return result;
}

unint64_t sub_219913F0C()
{
  result = qword_27CC20DF8;
  if (!qword_27CC20DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20DF8);
  }

  return result;
}

unint64_t sub_219913F64()
{
  result = qword_27CC20E00;
  if (!qword_27CC20E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E00);
  }

  return result;
}

unint64_t sub_219913FBC()
{
  result = qword_280EBA0B0;
  if (!qword_280EBA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0B0);
  }

  return result;
}

unint64_t sub_219914014()
{
  result = qword_280EBA0B8;
  if (!qword_280EBA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0B8);
  }

  return result;
}

unint64_t sub_219914068()
{
  result = qword_280EBA0A0;
  if (!qword_280EBA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA0A0);
  }

  return result;
}

unint64_t sub_2199140BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219914108()
{
  result = qword_27CC20E08;
  if (!qword_27CC20E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E08);
  }

  return result;
}

void sub_2199141A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FeedAvailability(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 16);
  v7 = objc_allocWithZone(MEMORY[0x277D31348]);
  v8 = v6;
  v9 = sub_219BF53D4();
  v10 = sub_219BF53D4();
  v11 = [v7 initForTestingWithTagType:1 identifier:v9 name:v10];

  if (v11)
  {
    sub_218BFB73C(0);
    v13 = *(v12 + 48);
    v14 = [objc_allocWithZone(MEMORY[0x277D31300]) initWithContext:v8 tag:v11 feedConfiguration:0];

    *v5 = v14;
    v15 = sub_219BEC004();
    (*(*(v15 - 8) + 56))(&v5[v13], 1, 1, v15);
    swift_storeEnumTagMultiPayload();
    sub_21881AE10(0, &qword_27CC0F230, type metadata accessor for FeedAvailability, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  else
  {
    __break(1u);
  }
}

double static MainMetrics.minimumWindowSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetHeight(v10);
  return 860.0;
}

void _s7NewsUI211MainMetricsV013defaultWindowF4SizeSo6CGSizeVvgZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v54.origin.x = v3;
  v54.origin.y = v5;
  v54.size.width = v7;
  v54.size.height = v9;
  Width = CGRectGetWidth(v54);
  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v55.origin.x = v13;
  v55.origin.y = v15;
  v55.size.width = v17;
  v55.size.height = v19;
  Height = CGRectGetHeight(v55);
  if (Width > 1280.0 || Height > 800.0)
  {
    if (Width > 1366.0 || Height > 768.0)
    {
      if ((Width > 1440.0 || Height > 900.0) && (Width > 1680.0 || Height > 1050.0) && (Width > 1920.0 || Height > 1080.0) && (Width > 2560.0 || Height > 1440.0))
      {
        v27 = [v0 mainScreen];
        [v27 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v56.origin.x = v29;
        v56.origin.y = v31;
        v56.size.width = v33;
        v56.size.height = v35;
        CGRectGetHeight(v56);
      }
    }

    else
    {
      v45 = [v0 mainScreen];
      [v45 bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v58.origin.x = v47;
      v58.origin.y = v49;
      v58.size.width = v51;
      v58.size.height = v53;
      CGRectGetHeight(v58);
    }
  }

  else
  {
    v36 = [v0 mainScreen];
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v57.origin.x = v38;
    v57.origin.y = v40;
    v57.size.width = v42;
    v57.size.height = v44;
    CGRectGetHeight(v57);
  }
}

uint64_t sub_2199147FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 < 0)
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D3DDF0);
    MEMORY[0x21CECC330](v1, v2);
    MEMORY[0x21CECC330](0xD000000000000036, 0x8000000219D3DE10);
    return 0;
  }

  else
  {
    v5 = v0[2];
    v4 = v0[3];
    sub_218D5E640(0, &qword_280E8B750, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09EC0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D3DDF0);
    MEMORY[0x21CECC330](v1, v2);
    MEMORY[0x21CECC330](0xD00000000000003CLL, 0x8000000219D3DE50);
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    *(v6 + 48) = sub_2199149E8(v5, v4, v3 & 1);
    *(v6 + 56) = v7;
    sub_218D5E640(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    sub_2189DD328();
    v8 = sub_219BF5324();
  }

  return v8;
}

uint64_t sub_2199149E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_219BF7314();
    v3 = "laylist to history, because ";
    v4 = 0xD000000000000013;
  }

  else
  {
    sub_219BF7314();
    v3 = "rrent threshold (";
    v4 = 0xD000000000000015;
  }

  MEMORY[0x21CECC330](v4, v3 | 0x8000000000000000);
  v5 = sub_219BF7894();
  MEMORY[0x21CECC330](v5);

  MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219D3DEB0);
  v6 = sub_219BF7894();
  MEMORY[0x21CECC330](v6);

  MEMORY[0x21CECC330](11817, 0xE200000000000000);
  return 0;
}

uint64_t sub_219914B44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219914B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_219914C48(uint64_t a1)
{
  if (!qword_280E92480)
  {
    sub_2197B8968();
    sub_2197B89BC();
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92480);
    }
  }
}

uint64_t type metadata accessor for PaywallTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EBADB0;
  if (!qword_280EBADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219914D10(uint64_t a1)
{
  sub_219914C48(319);
  if (v1 <= 0x3F)
  {
    sub_2186C709C(319, &qword_280EE6430, MEMORY[0x277D34F20], 1);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PaywallTagFeedGroupKnobs(319);
      if (v3 <= 0x3F)
      {
        sub_218B7A520();
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_219914E0C(uint64_t a1)
{
  v2 = type metadata accessor for PaywallTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaywallTagFeedGroupEmitter(0);
  sub_219916E8C(v1 + *(v5 + 24), v4, type metadata accessor for PaywallTagFeedGroupKnobs);
  v16 = 6;
  sub_219916CBC(0, &qword_280E91A80, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D321A0]);
  v7 = v6;
  v8 = sub_219BEE964();
  (*(*(v7 - 8) + 8))(v4, v7);
  sub_219916DB8(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  sub_219916CBC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v13 + v12) = sub_219BEFB94();
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D32308], v10);
  v15 = v8;
  sub_2191EDA0C(v13);
  return v15;
}

uint64_t sub_2199150D0(uint64_t a1)
{
  v3 = type metadata accessor for PaywallTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v18 = a1;
  v16 = v1;
  sub_219916ACC(0);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v7 = sub_219BF66A4();
  sub_219916E8C(v1, v6, type metadata accessor for PaywallTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_219916B34(v6, v9 + v8);
  *(v9 + ((v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_219916B98;
  *(v10 + 24) = v9;
  sub_218A59C84(0);

  sub_219BE2F64();

  sub_219916E8C(v16, v6, type metadata accessor for PaywallTagFeedGroupEmitter);
  v11 = swift_allocObject();
  sub_219916B34(v6, v11 + v8);
  v12 = sub_219BE2E54();
  v13 = sub_219BE3064();

  return v13;
}

uint64_t sub_21991533C(uint64_t a1)
{
  sub_219BE4864();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE3064();

  sub_219BEF0C4();
  v2 = sub_219BE31C4();

  return v2;
}

char *sub_219915410(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  sub_218A59C84(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaywallTagFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219915784(*a2, v38);
  if (!v4)
  {
    v35[1] = a1;
    v35[2] = v8;
    v38[6] = 0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61708;
    sub_2186F20D4(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v16 = sub_21988DFA0();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v19 = sub_219BF6214();
    sub_219BE5314("Paywall emitter found paywall for feed, feed=%{public}@", 55, 2, &dword_2186C1000, v14, v19, v15);

    sub_219914C48(0);
    v20 = sub_219BEDCA4();
    v22 = v21;
    v23 = sub_219BE47D4();
    v25 = v24;
    v36 = v20;
    v37 = v22;

    MEMORY[0x21CECC330](v23, v25);

    v26 = v36;
    v27 = v37;
    v28 = sub_219BE47D4();
    v30 = v29;
    sub_218718690(v38, (v13 + 32));
    v31 = *(v11 + 28);
    v32 = *MEMORY[0x277D32628];
    v33 = sub_219BEF554();
    (*(*(v33 - 8) + 104))(&v13[v31], v32, v33);
    *v13 = v26;
    *(v13 + 1) = v27;
    *(v13 + 2) = v28;
    *(v13 + 3) = v30;
    *&v13[*(v11 + 32)] = 0x3FF0000000000000;
    sub_219916E8C(v13, v10, type metadata accessor for PaywallTagFeedGroup);
    type metadata accessor for TagFeedGroup(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_219916DB8(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE3014();
    sub_219916F3C(v13, type metadata accessor for PaywallTagFeedGroup);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return v10;
}

uint64_t sub_219915784@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v54[1] = a3;
  v4 = sub_219BE4884();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v54 - v8;
  v10 = sub_219BE4914();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v54 - v15;
  v17 = v57;
  result = sub_219915F4C(a2, v56, v54 - v15);
  if (!v17)
  {
    v56 = v9;
    v19 = v55;
    v57 = 0;
    (*(v11 + 16))(v13, v16, v10);
    v20 = (*(v11 + 88))(v13, v10);
    v21 = v10;
    if (v20 == *MEMORY[0x277D353A0])
    {
      v22 = v16;
      v23 = v11;
      (*(v11 + 96))(v13, v10);
      v24 = v10;
      v25 = v13;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v26 = qword_280F61708;
      v27 = sub_219BF61F4();
      sub_2186F20D4(0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_219C09BA0;
      v29 = sub_21988DFA0();
      v31 = v30;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_2186FC3BC();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      sub_219BE5314("Paywall creation resulted in a hard paywall type which is unsupported in the feed context, feed=%{public}@", 106, 2, &dword_2186C1000, v26, v27, v28);

      sub_219916E1C();
      swift_allocError();
      *v32 = 2;
      swift_willThrow();
      (*(v23 + 8))(v22, v24);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else if (v20 == *MEMORY[0x277D353B0])
    {
      v54[0] = v16;
      (*(v11 + 96))(v13, v10);
      if (*(*v13 + 16))
      {
        (*(v19 + 16))(v6, *v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v4);

        v33 = v56;
        (*(v19 + 32))(v56, v6, v4);
        sub_219BE4874();
        (*(v19 + 8))(v33, v4);
        return (*(v11 + 8))(v54[0], v21);
      }

      else
      {

        sub_219916E1C();
        swift_allocError();
        *v53 = 4;
        swift_willThrow();
        return (*(v11 + 8))(v54[0], v10);
      }
    }

    else if (v20 == *MEMORY[0x277D353A8])
    {
      v34 = v11;
      v35 = v16;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v36 = qword_280F61708;
      sub_2186F20D4(0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_219C09BA0;
      v38 = sub_21988DFA0();
      v40 = v39;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_2186FC3BC();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      v41 = sub_219BF6214();
      sub_219BE5314("Payall creation resulted in no paywall for the channel, feed=%{public}@", 71, 2, &dword_2186C1000, v36, v41, v37);

      sub_219916E1C();
      swift_allocError();
      *v42 = 4;
      swift_willThrow();
      return (*(v34 + 8))(v35, v21);
    }

    else
    {
      v57 = v13;
      v43 = v11;
      v44 = v10;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v45 = qword_280F61708;
      v46 = sub_219BF61F4();
      sub_2186F20D4(0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_219C09BA0;
      v48 = sub_21988DFA0();
      v50 = v49;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_2186FC3BC();
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      sub_219BE5314("Paywall creation resulted in a unknown paywall type which is unsupported in the feed context, feed=%{public}@", 109, 2, &dword_2186C1000, v45, v46, v47);

      sub_219916E1C();
      swift_allocError();
      *v51 = 3;
      swift_willThrow();
      v52 = *(v43 + 8);
      v52(v16, v44);
      return (v52)(v57, v44);
    }
  }

  return result;
}

uint64_t sub_219915E34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaywallTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_219915EF8(uint64_t a1)
{
  type metadata accessor for PaywallTagFeedGroupEmitter(0);
  swift_getObjectType();
  return sub_219BE3F74();
}

uint64_t sub_219915F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_219BE4034();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3E04();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 backingChannel];
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for PaywallTagFeedGroupEmitter(0);
    __swift_project_boxed_opaque_existential_1((a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 24));
    *v12 = v14;
    (*(v9 + 104))(v12, *MEMORY[0x277D34E40], v8);
    v16 = v48;
    (*(v48 + 104))(v7, *MEMORY[0x277D34EF0], v5);
    sub_219BE4064();
    v17 = v16;
    v18 = v9;
    v19 = v12;
LABEL_3:
    (*(v17 + 8))(v7, v5);
    return (*(v18 + 8))(v19, v8);
  }

  v45 = v12;
  v46 = v7;
  v21 = v48;
  v44 = v5;
  sub_219BEF0B4();
  v22 = *(v51 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v23 = [v22 useFood];
  swift_unknownObjectRelease();
  if (!v23 || (v24 = [objc_msgSend(a1 backingTag)], swift_unknownObjectRelease(), (v24 & 1) == 0))
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v26 = qword_280F61708;
    sub_2186F20D4(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    v28 = sub_21988DFA0();
    v30 = v29;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2186FC3BC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_219BF6214();
    sub_219BE5314("Paywall creation skipped for feeds not backed by channels, feed=%{public}@", 74, 2, &dword_2186C1000, v26, v31, v27);

    v32 = 1;
    goto LABEL_11;
  }

  v42 = type metadata accessor for PaywallTagFeedGroupEmitter(0);
  v25 = [*(a2 + *(v42 + 28)) cachedSubscription];
  if (objc_getAssociatedObject(v25, v25 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {
    sub_219916F3C(&v51, sub_21880702C);
    goto LABEL_18;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v34 = 0;
    v35 = 0;
LABEL_19:
    v43 = v35;
    if (objc_getAssociatedObject(v25, ~v35))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v51 = v49;
    v52 = v50;
    if (*(&v50 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v36 = v34;
        v37 = v53;
        v38 = [v37 integerValue];

        if ((v38 ^ v43))
        {
          goto LABEL_25;
        }

LABEL_28:
        __swift_project_boxed_opaque_existential_1((a2 + *(v42 + 20)), *(a2 + *(v42 + 20) + 24));
        v39 = [a1 backingTag];
        v19 = v45;
        *v45 = v39;
        v18 = v9;
        (*(v9 + 104))(v19, *MEMORY[0x277D34E70], v8);
        v40 = v21;
        v41 = *(v21 + 104);
        v7 = v46;
        v5 = v44;
        v41(v46, *MEMORY[0x277D34EF0], v44);
        v17 = v40;
        sub_219BE4064();
        goto LABEL_3;
      }
    }

    else
    {
      sub_219916F3C(&v51, sub_21880702C);
    }

    if (v43)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v34 = v53;
  v35 = [v53 integerValue];
  if (v35 != -1)
  {
    goto LABEL_19;
  }

LABEL_25:
  v32 = 5;
LABEL_11:
  sub_219916E1C();
  swift_allocError();
  *v33 = v32;
  return swift_willThrow();
}

uint64_t sub_2199165AC()
{
  sub_219916DB8(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21991662C@<X0>(uint64_t *a1@<X8>)
{
  sub_219914C48(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000004;
  return result;
}

uint64_t sub_2199166AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for PaywallTagFeedGroupKnobs(0);
  a2[4] = sub_219916EF4(qword_280EC0CA0, type metadata accessor for PaywallTagFeedGroupKnobs, &unk_219C98184);
  a2[5] = sub_219916EF4(&qword_27CC20E50, type metadata accessor for PaywallTagFeedGroupKnobs, &unk_219C9815C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219916E8C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PaywallTagFeedGroupKnobs);
}

uint64_t sub_219916774()
{
  sub_219914C48(0);

  return sub_219BEDCA4();
}

uint64_t sub_2199167A0@<X0>(uint64_t *a2@<X8>)
{
  sub_219916DB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219914C48(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219916F3C(inited + 32, sub_2188317B0);
  sub_219916DB8(0, &qword_27CC20E58, type metadata accessor for PaywallTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219916F9C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219916924(uint64_t a1)
{
  sub_219916EF4(&unk_27CC20E20, type metadata accessor for PaywallTagFeedGroupEmitter, &unk_219CB47A0);

  return sub_219BE2324();
}

void sub_219916ACC(uint64_t a1)
{
  if (!qword_27CC20E38)
  {
    sub_219BE4864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20E38);
    }
  }
}

uint64_t sub_219916B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_219916B98(uint64_t a1, void **a2)
{
  v5 = *(type metadata accessor for PaywallTagFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_219915410(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_219916C40(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219916ACC(0);
  v5 = (a1 + *(v4 + 48));
  v6 = v5[5];
  v11[4] = v5[4];
  v11[5] = v6;
  v7 = v5[7];
  v11[6] = v5[6];
  v11[7] = v7;
  v8 = v5[1];
  v11[0] = *v5;
  v11[1] = v8;
  v9 = v5[3];
  v11[2] = v5[2];
  v11[3] = v9;
  return v3(a1, v11);
}

void sub_219916CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_219916DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219916E1C()
{
  result = qword_27CC20E40;
  if (!qword_27CC20E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E40);
  }

  return result;
}

uint64_t sub_219916E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219916EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219916F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219916F9C()
{
  result = qword_27CC20E60;
  if (!qword_27CC20E60)
  {
    sub_219916DB8(255, &qword_27CC20E58, type metadata accessor for PaywallTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E60);
  }

  return result;
}

unint64_t sub_219917038()
{
  result = qword_27CC20E68;
  if (!qword_27CC20E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E68);
  }

  return result;
}

uint64_t sub_21991708C(uint64_t a1, uint64_t a2)
{
  sub_2186E5D48(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 32) appConfiguration];
  if (qword_280EE96E8 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_21897CBB0();
LABEL_10:
    type metadata accessor for AudioPlaylistFeedConfigFetchResult(0);

    sub_219BE3204();

    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v13;

    swift_unknownObjectRetain();
    v20 = sub_219BE2E54();
    type metadata accessor for AudioPlaylistFeedServiceConfig(0);
    v16 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27CC08170 != -1)
  {
    swift_once();
  }

  sub_2199177D0(&qword_27CC20E78, v14, type metadata accessor for AudioPlaylistFeedServiceConfigFetcher, &unk_219CB49B0);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v17 = off_282A2E978;
    v18 = type metadata accessor for AudioPlaylistFeedConfigManager();
    v17(v12, v18);
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  sub_218838478(v7);
  sub_219917818();
  swift_allocError();
  *v15 = 0;
  sub_2186E5D48(0, &qword_27CC20E88, type metadata accessor for AudioPlaylistFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v16;
}

double sub_219917508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioPlaylistFeedContentConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21964C058(a1, v16);
  v17 = *(a1 + *(type metadata accessor for AudioPlaylistFeedConfigFetchResult(0) + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for AudioPlaylistFeedServiceConfig(0);
  sub_21964C058(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[9]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_21964C0BC(v16);
  result = v20;
  *&a5[v18[8]] = v20;
  return result;
}

uint64_t sub_2199177D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_219917818()
{
  result = qword_27CC20E80;
  if (!qword_27CC20E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E80);
  }

  return result;
}

unint64_t sub_219917880()
{
  result = qword_27CC20E90;
  if (!qword_27CC20E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20E90);
  }

  return result;
}

uint64_t sub_2199178D4(uint64_t a1, void *a2, void *a3)
{
  v53 = a1;
  sub_219918430(0, &unk_280EE8530, MEMORY[0x277D2E1C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_219BE1124();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFD74();
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDEF04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD34();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFD64();
  v52 = *(v19 - 8);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 startTime];
  v51 = v18;
  sub_219BDBC74();
  if (([a2 dnsDuration] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = [a2 connectDuration];
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = v23;
  v24 = [a2 requestDuration];
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v24;
  v25 = [a2 responseDuration];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = v25;
  v26 = [a2 responseSize];
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v26;
  v27 = [a2 pbNetworkEventCacheState];
  if (v27 >= 3)
  {
LABEL_24:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  (*(v14 + 104))(v56, **(&unk_278243558 + v27), v13);
  if (([a2 httpStatusCode] & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = [a2 errorCode];
  sub_21991810C(v54);
  v44 = [a3 wifiReachable];
  v29 = [a3 pbCellularRadioAccessTechnology];
  if (v29 >= 0xE)
  {
    goto LABEL_24;
  }

  (*(v9 + 104))(v55, **(&unk_278243570 + v29), v8);
  v30 = [a2 respondingPOP];
  v45 = v28;
  v46 = v19;
  if (v30)
  {
    v31 = v30;
    v43 = sub_219BF5414();
  }

  else
  {
    v43 = 0;
  }

  [a2 isProxyConnection];
  v32 = [a2 smarterFetchSources];
  if (!v32 || (*&v57[0] = 0, v33 = v32, sub_219BF5914(), v33, !*&v57[0]))
  {
  }

  v34 = [a2 smarterFetchStrategy];
  if (v34)
  {
    v35 = v34;
    sub_219BF5414();
  }

  sub_219BDFE84();
  v36 = sub_219BDFE94();
  (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
  sub_219BDFD54();
  sub_219918430(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v37 = sub_219BDCD44();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277CEAD18], v37);
  sub_219918494(&qword_280EE8558, MEMORY[0x277D2E0B8], MEMORY[0x277D2E0B0]);
  v41 = v46;
  sub_219BDCCC4();

  (*(v52 + 8))(v22, v41);
  sub_219BDF784();
  sub_219918494(&qword_280EE8688, MEMORY[0x277D2DD48], MEMORY[0x277D2DD40]);
  memset(v57, 0, sizeof(v57));
  sub_219BDCCE4();
  return sub_218806FD0(v57);
}

uint64_t sub_21991810C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 pbNetworkEventType];
  if (v3 >= 0x14)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    v4 = **(&unk_2782435E0 + v3);
    v5 = sub_219BDFD74();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  return result;
}

uint64_t sub_2199182BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_219BDBD24();
  sub_219BDCD94();

  return (*(v5 + 8))(v7, v4);
}

void sub_219918430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219918494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219918500()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2199185C4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

unint64_t sub_219918690()
{
  result = qword_27CC20F00;
  if (!qword_27CC20F00)
  {
    sub_2199186E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F00);
  }

  return result;
}

void sub_2199186E8()
{
  if (!qword_27CC20F08)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20F08);
    }
  }
}

uint64_t sub_219918738(char a1)
{
  result = 0x64657461727563;
  switch(a1)
  {
    case 1:
      result = 0x657061707377656ELL;
      break;
    case 2:
      result = 0x77654E6C61636F6CLL;
      break;
    case 3:
      result = 0x676E69646E657274;
      break;
    case 4:
      result = 0x756F59726F66;
      break;
    case 5:
      v3 = 0x74736574616CLL;
      goto LABEL_21;
    case 6:
      v3 = 0x64657373696DLL;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 7:
      result = 0x59726F4665726F6DLL;
      break;
    case 8:
      result = 0x6369706F74;
      break;
    case 9:
      result = 0x656E697A6167616DLL;
      break;
    case 10:
      result = 0x6F6C6C6F4677656ELL;
      break;
    case 11:
      result = 0x7069726373627573;
      break;
    case 12:
      result = 25697;
      break;
    case 13:
      result = 0x6867696C746F7073;
      break;
    case 14:
      result = 0x6974736567677573;
      break;
    case 15:
      result = 0x746E6F436E656573;
      break;
    case 16:
      result = 0x6957646572616873;
      break;
    case 17:
      result = 0x656D656761676E65;
      break;
    case 18:
      result = 0x7374726F7053796DLL;
      break;
    case 19:
      result = 0x536F546F72746E69;
      break;
    case 20:
      result = 0x74756374726F6873;
      break;
    case 21:
      result = 0x6C656E6E616863;
      break;
    case 22:
      result = 0x6F74536465766173;
      break;
    case 23:
      result = 0x506C656E6E616863;
      break;
    case 24:
      result = 1685024614;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219918A04()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219918738(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_219918A68(uint64_t a1)
{
  sub_219918738(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_219918ABC(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_219918738(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219918B1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219918738(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219918B48(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_219918738(*a1);
  v5 = v4;
  if (v3 == sub_219918738(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_219918C34()
{
  result = qword_280ED2250;
  if (!qword_280ED2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2250);
  }

  return result;
}

uint64_t sub_219918C88(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61890);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E50, type metadata accessor for SearchFeedPoolService, sub_2186D75DC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219918E18(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08238 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86B8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91F20, type metadata accessor for SearchMoreFeedPoolService, sub_2186D7A20);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219918FA8(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08220 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD8688);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91F00, type metadata accessor for AudioHistoryFeedPoolService, sub_2186D7A54);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219919138(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08228 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86A0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91EE8, type metadata accessor for AudioPlaylistFeedPoolService, sub_2186D7AAC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199192C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0, &protocolRef_FCIssueReadingHistoryType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for IssueBookmarkProvider();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A3D8F0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199193B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_2186D5C5C(qword_280EE0BF8, type metadata accessor for NewsActivityManager, &protocol conformance descriptor for NewsActivityManager);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21991945C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E97540, &protocol descriptor for ContinueReadingEligibilityProcessorType, 1);
  result = sub_219BE1E34();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EA0C00, &protocol descriptor for ContinueReadingPromptPresenterType, 1);
    result = sub_219BE1E34();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for ContinueReadingEligibilityProcessor();
      v37[3] = v17;
      v37[4] = &off_282A470F0;
      v37[0] = v15;
      v18 = type metadata accessor for ContinueReadingPromptPresenter();
      v35 = v18;
      v36 = &off_282A4ABE8;
      v34[0] = v16;
      v19 = type metadata accessor for AppDiscardedStateRestorationActivityHandler();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_282A470F0;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_282A4ABE8;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_282A5BC20;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219919894@<X0>(void *a1@<X8>)
{
  v2 = sub_219BE7994();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D6DC00];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2199198E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for CampaignReferralManager();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A565F8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199199CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ANFSceneActivityBridge();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219919A20()
{
  type metadata accessor for ANFSceneActivityBridge();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

void *sub_219919A54(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2186D5C5C(qword_280EC9300, type metadata accessor for ANFSceneActivityBridge, &protocol conformance descriptor for ANFSceneActivityBridge);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219919B50(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE6310, MEMORY[0x277D35100], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219BE4284();
    if (swift_dynamicCastClass())
    {
      sub_2186D5C5C(&qword_280EE63B8, MEMORY[0x277D35018], MEMORY[0x277D35008]);
      sub_219BE25F4();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219919C78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_218746BE0(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_219919CF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81328(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  v4 = sub_219BF7884();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 < *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v17 = *(v13 + 5);
          v16 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v11;
          *v13 = v17;
          *(v13 + 1) = v16;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    sub_21991CF18(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_219BDBF94();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_219BDBD24();
  sub_219BDBE64();
  sub_219BDC784();
  sub_21991A210();
  sub_219BDC7D4();

  if (v34 == 1)
  {
    sub_219BDBD24();
    v21 = v29;
    sub_219BDBF34();
    sub_219BDBE64();
    (*(v30 + 8))(v21, v31);
    v22 = v28;
    sub_219BDBBF4();
    sub_219BDBBE4();
    v23 = *(v4 + 8);
    v23(v22, v3);
    v23(v11, v3);
    v23(v14, v3);
  }

  sub_219BDBBF4();
  if (sub_219BDBC24())
  {
    sub_219BF5CE4();
    sub_219BDBBF4();
    v24 = *(v4 + 8);
    v24(v6, v3);
    v24(v17, v3);
    return (v24)(v20, v3);
  }

  else
  {
    v26 = *(v4 + 8);
    v26(v17, v3);
    v26(v20, v3);
    return (*(v4 + 32))(v33, v6, v3);
  }
}

unint64_t sub_21991A210()
{
  result = qword_27CC20F40;
  if (!qword_27CC20F40)
  {
    type metadata accessor for PuzzleStreakLocalNotificationScheduler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F40);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleStreakLocalNotificationScheduler(uint64_t a1)
{
  result = qword_27CC20F70;
  if (!qword_27CC20F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(Swift::OpaquePointer a1, Swift::String_optional puzzleHubTagID)
{
  object = puzzleHubTagID.value._object;
  countAndFlagsBits = puzzleHubTagID.value._countAndFlagsBits;
  sub_21875FE40(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - v7;
  v8 = *(a1._rawValue + 2);
  if (v8)
  {
    v9 = 0;
    v10 = a1._rawValue + 40;
    v43 = MEMORY[0x277D84F90];
    v39 = object;
    v40 = v2;
    v41 = countAndFlagsBits;
    while (1)
    {
      v11 = &v10[16 * v9];
      v12 = v9;
      while (1)
      {
        if (v12 >= v8)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_24;
        }

        v14 = *(v11 - 1);
        v13 = *v11;
        v15 = [swift_unknownObjectRetain_n() latestPuzzleIDs];
        if (v15)
        {
          break;
        }

        swift_unknownObjectRelease_n();
LABEL_5:
        ++v12;
        v11 += 16;
        if (v9 == v8)
        {
          object = v39;
          v2 = v40;
          countAndFlagsBits = v41;
          goto LABEL_22;
        }
      }

      v16 = v15;
      v17 = sub_219BF5924();

      if (!v17[2])
      {
        break;
      }

      v18 = v17[4];
      v37 = v17[5];
      v38 = v18;

      v19 = [v14 nameCompact];
      if (v19)
      {
        v20 = v19;
        v36 = sub_219BF5414();
        v22 = v21;
        swift_unknownObjectRelease_n();
      }

      else
      {
        v23 = [v14 name];
        v36 = sub_219BF5414();
        v22 = v24;

        swift_unknownObjectRelease_n();
      }

      countAndFlagsBits = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2191FBAB8(0, *(v43 + 2) + 1, 1, v43);
      }

      v26 = *(v43 + 2);
      v25 = *(v43 + 3);
      if (v26 >= v25 >> 1)
      {
        v43 = sub_2191FBAB8((v25 > 1), v26 + 1, 1, v43);
      }

      v27 = v43;
      *(v43 + 2) = v26 + 1;
      v28 = &v27[40 * v26];
      v29 = v37;
      *(v28 + 4) = v38;
      *(v28 + 5) = v29;
      v30 = v36;
      *(v28 + 6) = v13;
      *(v28 + 7) = v30;
      *(v28 + 8) = v22;
      object = v39;
      v2 = v40;
      if (v9 == v8)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease_n();

    goto LABEL_5;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_22:
  v31 = sub_219BF5BF4();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v34 = v43;
  v33[4] = v2;
  v33[5] = v34;
  v33[6] = countAndFlagsBits;
  v33[7] = object;

  v35 = v2;
  sub_218AB3D80(0, 0, v32, &unk_219CB4E88, v33);
}

uint64_t sub_21991A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21991A640, 0, 0);
}

uint64_t sub_21991A640()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21991A6F4;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_21991A6F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21991A848, 0, 0);
  }
}

uint64_t sub_21991A848()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 56) puzzlesConfig];
  swift_unknownObjectRelease();
  sub_21991A8F8(v3, v2, v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_21991A8F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
  v10 = *(v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v9);
  LOBYTE(v17[0]) = 7;
  (*(v10 + 96))(v17, v9, v10);
  v11 = *(a1 + 16);
  if (v11 == 1)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 64);
    *&v17[0] = *(a1 + 32);
    *(&v17[0] + 1) = v15;
    v17[1] = *(a1 + 48);
    v18 = v16;

    sub_21991AAC4(v17, a2, a3, a4);
  }

  else if (v11)
  {

    sub_21991B338(a1, a2, a3, a4);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v12 = qword_280F61750;
    v13 = sub_219BF6214();
    v14 = MEMORY[0x277D84F90];

    sub_219BE5314("Zero puzzle streaks need notifications", 38, 2, &dword_2186C1000, v12, v13, v14);
  }
}

uint64_t sub_21991AAC4(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v73 = a3;
  v72 = a2;
  v78 = sub_219BDBD34();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v71);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_219BDBD64();
  v11 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v65 - v18;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61750;
  sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  v79 = xmmword_219C09BA0;
  *(v21 + 16) = xmmword_219C09BA0;
  v83 = *(a1 + 24);
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_2186FC3BC();
  *(v21 + 32) = *(a1 + 24);
  swift_bridgeObjectRetain_n();
  v23 = sub_219BF6214();
  sub_219BE5314("Scheduling a puzzle streak notification for single streak: %{public}@", 69, 2, &dword_2186C1000, v20, v23, v21);

  v24 = [a4 streakNotificationBodyOneStreak];
  v67 = a4;
  v25 = v24;
  sub_219BF5414();

  sub_218BE55B8(0, &qword_280E8B750, v22);
  inited = swift_initStackObject();
  v27 = v83;
  *(inited + 16) = v79;
  *(inited + 32) = v27;
  sub_219BDBDF4();
  v28 = sub_219BDBE34();
  (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
  sub_218ACFA38(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  v69 = sub_219BF5444();
  v68 = v29;

  sub_21991CDD8(v19);
  sub_218BE55B8(0, &qword_27CC0F910, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak);
  v30 = swift_allocObject();
  v32 = a1[1];
  v82 = *a1;
  v31 = v82;
  *(v30 + 16) = v79;
  *(v30 + 32) = v31;
  *(v30 + 48) = v32;
  *(v30 + 64) = *(a1 + 4);
  sub_218A18DB4(&v83, v81);
  sub_218A18DB4(&v82, v81);
  sub_219BDBD54();
  v33 = sub_219BDBD44();
  v35 = v34;
  v36 = *(v11 + 8);
  v37 = v70;
  v36(v16, v70);
  v38 = v73;

  sub_219BDBD54();
  *&v79 = sub_219BDBD44();
  v66 = v39;
  v36(v13, v37);
  v40 = v72;
  *v10 = v30;
  v10[1] = v40;
  v10[2] = v38;
  v10[3] = v33;
  v10[4] = v35;
  swift_storeEnumTagMultiPayload();

  v41 = [v67 streakNotificationTitle];
  v42 = sub_219BF5414();
  v70 = v43;

  v44 = v74;
  v45 = *(v74 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier + 8);
  v71 = *(v74 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier);
  v81[0] = v30;
  v81[1] = v40;
  v81[2] = v38;
  v81[3] = v33;
  v81[4] = v35;
  sub_21991CE64();

  v46 = sub_219BF52C4();

  if (v46)
  {
    v47 = sub_218E9B5CC();
  }

  else
  {
    v47 = 0;
  }

  sub_218C1A090();
  v49 = v75;
  (*(*(v48 - 8) + 56))(v75, 1, 2, v48);
  v50 = type metadata accessor for UserNotification(0);
  v51 = objc_allocWithZone(v50);
  v52 = &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  v53 = v66;
  *v52 = v79;
  *(v52 + 1) = v53;
  sub_2198CC4AC(v10, &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v54 = &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  v55 = v70;
  *v54 = v42;
  v54[1] = v55;
  v56 = &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  v57 = &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  v58 = v68;
  *v57 = v69;
  v57[1] = v58;
  v59 = &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  *v59 = v71;
  v59[1] = v45;
  *&v51[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v47;
  sub_2198CC4AC(v49, &v51[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v80.receiver = v51;
  v80.super_class = v50;
  v60 = objc_msgSendSuper2(&v80, sel_init);
  sub_21991CEB8(v49, type metadata accessor for UserNotification.DeliveryStatus);
  sub_21991CEB8(v10, type metadata accessor for UserNotification.Kind);
  v61 = *(v44 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
  v62 = *(v44 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v61);
  v63 = v76;
  PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter(v76);
  (*(v62 + 48))(v60, v63, v61, v62);

  return (*(v77 + 8))(v63, v78);
}

void sub_21991B338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v89 = a4;
  v88 = a2;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_219BDBD64();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v77 - v17;
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v77 - v20;
  if (*(a1 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v83 = v7;
    if (qword_280E8D870 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v22 = qword_280F61750;
  v23 = sub_219BF6214();
  sub_219BE5314("Scheduling a puzzle streak notification for multiple puzzle types", 65, 2, &dword_2186C1000, v22, v23, MEMORY[0x277D84F90]);
  *&v92 = a1;

  sub_219919CF0(&v92);
  v24 = v92;
  v25 = *(v92 + 16);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v81 = v11;
      v82 = v6;
      v37 = [v89 streakNotificationBodyTwoStreaks];
      sub_219BF5414();
      v39 = v38;

      sub_218BE55B8(0, &qword_280E8B750, MEMORY[0x277D837D0]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09EC0;
      v41 = v24[2];
      if (v41)
      {
        v42 = inited;
        v77[1] = v39;
        v43 = v24[8];
        v42[4] = v24[7];
        v42[5] = v43;
        if (v41 != 1)
        {
          v31 = a3;
          v80 = v15;
          v44 = v24[13];
          v42[6] = v24[12];
          v42[7] = v44;

          sub_219BDBDF4();
          v45 = sub_219BDBE34();
          (*(*(v45 - 8) + 56))(v21, 0, 1, v45);
          sub_218ACFA38(v42);
          swift_setDeallocating();
          swift_arrayDestroy();
          v79 = sub_219BF5444();
          v78 = v46;

          sub_21991CDD8(v21);
          v32 = v89;
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);

      __break(1u);
      return;
    }

LABEL_10:
    v80 = v15;
    v81 = v11;
    v31 = a3;
    v82 = v6;
    v32 = v89;
    v33 = [v89 streakNotificationBodyMultipleStreaks];
    v79 = sub_219BF5414();
    v78 = v34;

LABEL_17:
    sub_219BDBD54();
    v47 = sub_219BDBD44();
    v49 = v48;
    v50 = *(v84 + 8);
    v51 = v85;
    v50(v18, v85);

    v52 = v80;
    sub_219BDBD54();
    v89 = sub_219BDBD44();
    v84 = v53;
    v50(v52, v51);
    v54 = v88;
    *v13 = v24;
    v13[1] = v54;
    v13[2] = v31;
    v13[3] = v47;
    v13[4] = v49;
    swift_storeEnumTagMultiPayload();

    v55 = [v32 streakNotificationTitle];
    v56 = sub_219BF5414();
    v58 = v57;

    v59 = *(v90 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier + 8);
    v85 = *(v90 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleStreakThreadIdentifier);
    *&v92 = v24;
    *(&v92 + 1) = v54;
    v93 = v31;
    v94 = v47;
    v95 = v49;
    sub_21991CE64();

    v60 = sub_219BF52C4();

    if (v60)
    {
      v61 = sub_218E9B5CC();
    }

    else
    {
      v61 = 0;
    }

    sub_218C1A090();
    v63 = v86;
    (*(*(v62 - 8) + 56))(v86, 1, 2, v62);
    v64 = type metadata accessor for UserNotification(0);
    v65 = objc_allocWithZone(v64);
    v66 = &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
    v67 = v84;
    *v66 = v89;
    *(v66 + 1) = v67;
    sub_2198CC4AC(v13, &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
    v68 = &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
    *v68 = v56;
    v68[1] = v58;
    v69 = &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
    *v69 = 0;
    *(v69 + 1) = 0xE000000000000000;
    v70 = &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
    v71 = v78;
    *v70 = v79;
    v70[1] = v71;
    v72 = &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
    *v72 = v85;
    v72[1] = v59;
    *&v65[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v61;
    sub_2198CC4AC(v63, &v65[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
    v91.receiver = v65;
    v91.super_class = v64;
    v73 = objc_msgSendSuper2(&v91, sel_init);
    sub_21991CEB8(v63, type metadata accessor for UserNotification.DeliveryStatus);
    sub_21991CEB8(v13, type metadata accessor for UserNotification.Kind);
    v74 = *(v90 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 24);
    v75 = *(v90 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService + 32);
    __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService), v74);
    v76 = v87;
    PuzzleStreakLocalNotificationScheduler.nextTargetNotificationDeliveryTime.getter(v87);
    (*(v75 + 48))(v73, v76, v74, v75);

    (*(v83 + 8))(v76, v82);
    return;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v27 = *(v92 + 32);
      v26 = *(v92 + 40);
      v28 = *(v92 + 48);
      v29 = *(v92 + 56);
      v30 = *(v92 + 64);

      *&v92 = v27;
      *(&v92 + 1) = v26;
      v93 = v28;
      v94 = v29;
      v95 = v30;
      sub_21991AAC4(&v92, v88, a3, v89);

      return;
    }

    goto LABEL_10;
  }

  v35 = sub_219BF61F4();
  v36 = MEMORY[0x277D84F90];

  sub_219BE5314("Attempting to schedule combined notification for zero or fewer puzzle streaks.", 78, 2, &dword_2186C1000, v22, v35, v36);
}

Swift::Void __swiftcall PuzzleStreakLocalNotificationScheduler.removeCompletedStreaksFromPendingNotification()()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

void sub_21991BDF4(uint64_t (**a1)(uint64_t a1), uint64_t a2, char *a3)
{
  v60 = a3;
  sub_21875FE40(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v50 - v7;
  v66 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v66);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = *a1;
  v65 = v13;
  if (v12 >> 62)
  {
LABEL_38:
    v14 = sub_219BF7214();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  v15 = 0;
  while ((v12 & 0xC000000000000001) == 0)
  {
    if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = *(v12 + 8 * v15 + 32);
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v4 = OBJC_IVAR____TtC7NewsUI216UserNotification_kind;
    v3 = v16;
    sub_2198CC4AC(v16 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v11, type metadata accessor for UserNotification.Kind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_13;
    }

    sub_21991CEB8(v11, type metadata accessor for UserNotification.Kind);
    ++v15;
    if (v17 == v14)
    {
      return;
    }
  }

  v16 = MEMORY[0x21CECE0F0](v15, v12, v9);
  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v12 = type metadata accessor for UserNotification.Kind;
  sub_21991CEB8(v11, type metadata accessor for UserNotification.Kind);
  v18 = v65;
  sub_2198CC4AC(v3 + v4, v65, type metadata accessor for UserNotification.Kind);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_21991CEB8(v18, type metadata accessor for UserNotification.Kind);
    return;
  }

  v11 = *v18;
  v56 = v18[1];
  v57 = v3;
  v19 = v18[2];
  v54 = v18[4];
  v55 = v19;
  v20 = *(v11 + 2);
  if (v20)
  {
    v21 = 0;
    v64 = &v60[OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_puzzleHistoryService];
    v22 = v11 + 64;
    v62 = v20;
    v52 = v20 - 1;
    v58 = MEMORY[0x277D84F90];
    v61 = xmmword_219C09BA0;
    v63 = v11;
    v53 = v11 + 64;
LABEL_16:
    v23 = &v22[40 * v21];
    v24 = v21;
    while (v24 < *(v11 + 2))
    {
      v25 = *(v23 - 3);
      v4 = *(v23 - 2);
      v12 = *(v23 - 1);
      v26 = *v23;
      v65 = *(v23 - 4);
      v66 = v24 + 1;
      v3 = __swift_project_boxed_opaque_existential_1(v64, *(v64 + 3));
      v27 = v26;
      v28 = v65;

      if ((sub_219BF3414() & 1) == 0)
      {
        v50 = v27;
        v51 = v4;
        v31 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v31;
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = v31;
        }

        else
        {
          v3 = &v67;
          sub_218C38458(0, *(v31 + 16) + 1, 1);
          v33 = v67;
        }

        v11 = v63;
        v21 = v66;
        v34 = v51;
        v4 = v12;
        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        v12 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v3 = &v67;
          sub_218C38458((v35 > 1), v36 + 1, 1);
          v34 = v51;
          v33 = v67;
        }

        *(v33 + 16) = v12;
        v58 = v33;
        v37 = (v33 + 40 * v36);
        v37[4] = v28;
        v37[5] = v25;
        v37[6] = v34;
        v37[7] = v4;
        v37[8] = v50;
        v22 = v53;
        if (v52 != v24)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v3 = qword_280F61750;
      sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = v61;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_2186FC3BC();
      *(v29 + 32) = v28;
      *(v29 + 40) = v25;

      v30 = sub_219BF6214();
      sub_219BE5314("User has completed a streak before its notification was delivered. PuzzleID: %{public}@", 87, 2, &dword_2186C1000, v3, v30, v29);

      v23 += 40;
      v24 = v66;
      v11 = v63;
      if (v62 == v66)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_37;
  }

  v58 = MEMORY[0x277D84F90];
LABEL_32:
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_21875FE40(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09EC0;
  v39 = *(v11 + 2);
  v40 = MEMORY[0x277D83B88];
  v41 = MEMORY[0x277D83C10];
  *(v38 + 56) = MEMORY[0x277D83B88];
  *(v38 + 64) = v41;
  *(v38 + 32) = v39;
  v42 = v58;
  v43 = *(v58 + 16);
  *(v38 + 96) = v40;
  *(v38 + 104) = v41;
  *(v38 + 72) = v43;
  sub_219BF6214();
  sub_219BE5314("Rescheduling notification to remove any completed streaks. Previous # of streaks to be notified of: %ld. Remaining # of streaks to be notified of: %ld", v50, v51);

  v44 = sub_219BF5BF4();
  v45 = v59;
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v47 = v60;
  v46[4] = v60;
  v46[5] = v42;
  v48 = v55;
  v46[6] = v56;
  v46[7] = v48;
  v49 = v47;
  sub_218AB3D80(0, 0, v45, &unk_219CB4FD0, v46);
}

uint64_t sub_21991C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21991C500, 0, 0);
}

uint64_t sub_21991C500()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21991C5B4;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_21991C5B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21991D75C, 0, 0);
  }
}

id PuzzleStreakLocalNotificationScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleStreakLocalNotificationScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PuzzleStreakLocalNotificationScheduler.historyService(_:observedChanges:)()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

void sub_21991C99C()
{
  swift_getObjectType();
  sub_21875FE40(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_21991CAB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_21991A61C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21991CBC4(uint64_t a1)
{
  result = sub_219BDBF94();
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

uint64_t sub_21991CC9C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI238PuzzleStreakLocalNotificationScheduler_notificationService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_21991CD04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_21991C4DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21991CDD8(uint64_t a1)
{
  sub_21875FE40(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21991CE64()
{
  result = qword_27CC20F80;
  if (!qword_27CC20F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20F80);
  }

  return result;
}

uint64_t sub_21991CEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21991CF18(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_218C81048(v8);
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[16 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_21991D4F0((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 16);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 96);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = (v10 >= v12) ^ (v16 < v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 < v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 < v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = v30 + v18;
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *(v23 - 8);
            v29 = *(v23 - 24);
            *(v22 - 2) = *(v23 - 40);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v23 - 40) = v24;
            *(v23 - 32) = v25;
            *(v23 - 24) = v27;
            *(v23 - 8) = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_2191F6B60((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = v8 + 32;
    v48 = &v8[16 * v45 + 32];
    *v48 = v9;
    *(v48 + 1) = v7;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[16 * v49];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[16 * v49 - 16];
        v88 = *v87;
        v89 = &v47[16 * v49];
        v90 = *(v89 + 1);
        sub_21991D4F0((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *(v8 + 2);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        memmove(&v47[16 * v49], v89 + 16, 16 * (v91 - 1 - v49));
        *(v8 + 2) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[16 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[16 * v49];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = *(v31 + 40 * v7 + 16);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 < *(v36 + 16))
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 40);
    v37 = *(v36 + 48);
    v39 = *(v36 + 16);
    v40 = *(v36 + 32);
    *(v36 + 40) = *v36;
    v42 = *(v36 + 64);
    v41 = *(v36 + 72);
    *(v36 + 56) = v39;
    *(v36 + 72) = v40;
    *v36 = v38;
    *(v36 + 8) = v37;
    *(v36 + 16) = v34;
    *(v36 + 24) = v42;
    *(v36 + 32) = v41;
    v36 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_21991D4F0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 3) >= *(v6 - 3))
      {
        v21 = v6 - 40;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 40, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 40;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 24);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 40;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[40 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_21991D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for SavedFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDBD64();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A74FF4(0);
  v25 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74F28(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21991DBC8(&qword_280EE5C48, sub_218A74FF4, MEMORY[0x277D6D408]);
  sub_21991DBC8(&unk_280EE5C50, sub_218A74FF4, MEMORY[0x277D6D3F8]);
  sub_219BE2444();
  sub_218E32330(0);
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v29);
  *v7 = v20;
  v7[1] = v22;
  sub_218A2F228(v30, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_21991DBC8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v28 + 8))(v10, v25);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v26, v17, v12);
  sub_21991DBC8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_21991DBC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21991DC7C(uint64_t a1)
{
  sub_21872F21C(0);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  sub_2186FFFE8(0);
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_218714064(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v40;
      v26 = *(v40 + 32);
      v26(v12, v23, v7);
      (*(v25 + 16))(v9, v12, v7);
      sub_218718690(v44 + 16, v45);
      type metadata accessor for RecipesSearchMoreFeedGroupEmitter(0);
      v27 = swift_allocObject();
      v26((v27 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_config), v9, v7);
      sub_2186CB1F0(v45, v27 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService);
      *&v45[0] = v27;
      sub_21991E2DC(0);
      swift_allocObject();
      sub_21991E370(&qword_27CC20F98, type metadata accessor for RecipesSearchMoreFeedGroupEmitter, &unk_219C8F460);
      v28 = sub_219BEDF84();
      (*(v25 + 8))(v12, v7);
    }

    else
    {
      v32 = v41;
      v31 = v42;
      v33 = *(v42 + 32);
      v34 = v43;
      v33(v41, v23, v43);
      v35 = v39;
      (*(v31 + 16))(v39, v32, v34);
      sub_218718690(v44 + 16, v45);
      type metadata accessor for TagsSearchMoreFeedGroupEmitter(0);
      v36 = swift_allocObject();
      v33((v36 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_config), v35, v34);
      sub_2186CB1F0(v45, v36 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService);
      *&v45[0] = v36;
      sub_21991E2DC(0);
      swift_allocObject();
      sub_21991E370(&qword_27CC20F90, type metadata accessor for TagsSearchMoreFeedGroupEmitter, &unk_219C81B78);
      v28 = sub_219BEDF84();
      (*(v31 + 8))(v32, v34);
    }
  }

  else
  {
    v29 = *(v15 + 32);
    v29(v20, v23, v14);
    (*(v15 + 16))(v17, v20, v14);
    sub_218718690(v44 + 16, v45);
    type metadata accessor for ArticlesSearchMoreFeedGroupEmitter(0);
    v30 = swift_allocObject();
    v29((v30 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_config), v17, v14);
    sub_2186CB1F0(v45, v30 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService);
    *&v45[0] = v30;
    sub_21991E2DC(0);
    swift_allocObject();
    sub_21991E370(&qword_27CC20FA0, type metadata accessor for ArticlesSearchMoreFeedGroupEmitter, &unk_219C78400);
    v28 = sub_219BEDF84();
    (*(v15 + 8))(v20, v14);
  }

  return v28;
}

uint64_t sub_21991E278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21991E2DC(uint64_t a1)
{
  if (!qword_27CC20F88)
  {
    type metadata accessor for SearchMoreFeedServiceConfig(255);
    sub_21991E370(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20F88);
    }
  }
}

uint64_t sub_21991E370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsManagementModel(uint64_t a1)
{
  result = qword_27CC20FA8;
  if (!qword_27CC20FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21991E404()
{
  v1 = v0;
  v2 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsManagementModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = [*(*v7 + 16) identifier];
    v9 = sub_219BF5414();
  }

  else
  {
    sub_218A3A4F8(v7, v4);
    v10 = [*(*&v4[*(v2 + 24)] + 16) identifier];
    v9 = sub_219BF5414();

    sub_21991EF54(v4, type metadata accessor for SportsModel);
  }

  return v9;
}

uint64_t sub_21991E594(uint64_t a1, uint64_t a2)
{
  v4 = sub_21991EEAC(&qword_27CC20FD0, &unk_219CB50F8);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

BOOL sub_21991E69C(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(*v3 + 27);

    return v5 >= 0;
  }

  else
  {
    sub_21991EF54(v3, type metadata accessor for SportsManagementModel);
    return 0;
  }
}

uint64_t sub_21991E760@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsManagementModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v9, type metadata accessor for SportsManagementModel);
    v10 = *MEMORY[0x277D6D5D8];
    v11 = sub_219BE63D4();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  else
  {
    sub_218A3A4F8(v9, v6);
    v13 = *(*&v6[*(v4 + 20)] + 16);
    sub_21991EF54(v6, type metadata accessor for SportsModel);
    v14 = sub_219BE63D4();
    if (v13)
    {
      v15 = MEMORY[0x277D6D5E0];
    }

    else
    {
      v15 = MEMORY[0x277D6D5D8];
    }

    return (*(*(v14 - 8) + 104))(a1, *v15, v14);
  }
}

uint64_t sub_21991E938()
{
  v1 = type metadata accessor for SportsManagementModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((*(*v3 + 27) & 0x80000000) == 0)
    {
      v4 = MEMORY[0x277D84560];
      sub_21991EFB4(0, &qword_27CC13A28, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
      v5 = sub_219BE7674();
      v6 = *(v5 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      v24 = xmmword_219C09BA0;
      *(v8 + 16) = xmmword_219C09BA0;
      v9 = (v8 + v7);
      sub_218F3C5F8(0);
      v11 = *(v10 + 48);
      v25 = *(v10 + 64);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_219BDB5E4();
      v16 = v15;

      *v9 = v14;
      v9[1] = v16;
      v17 = *MEMORY[0x277D6DA70];
      v18 = sub_219BE7634();
      (*(*(v18 - 8) + 104))(v9 + v11, v17, v18);
      sub_21991EFB4(0, &qword_27CC13A40, MEMORY[0x277D6DAF8], v4);
      v19 = sub_219BE7664();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v24;
      (*(v20 + 104))(v22 + v21, *MEMORY[0x277D6DAD8], v19);
      *(v9 + v25) = v22;
      (*(v6 + 104))(v9, *MEMORY[0x277D6DA90], v5);

      return v8;
    }
  }

  else
  {
    sub_21991EF54(v3, type metadata accessor for SportsManagementModel);
  }

  return 0;
}

uint64_t sub_21991ECE8@<X0>(uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991EEF0(v6, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v5, type metadata accessor for SportsManagementModel);
    v7 = *MEMORY[0x277D6D580];
    v8 = sub_219BE6244();
    return (*(*(v8 - 8) + 104))(a2, v7, v8);
  }

  else
  {
    v10 = *MEMORY[0x277D6D588];
    v11 = sub_219BE6244();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    return sub_21991EF54(v5, type metadata accessor for SportsManagementModel);
  }
}

uint64_t sub_21991EEAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsManagementModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21991EEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21991EF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21991EFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21991F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  sub_21991F354(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 56);
  sub_21991EEF0(a1, v12);
  sub_21991EEF0(a2, v12 + v14);
  type metadata accessor for SportsManagementModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v12 + v14);
      v17 = [*(v15 + 16) identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      v21 = [*(v16 + 16) identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_219BF78F4();
      }

      return v26 & 1;
    }

LABEL_11:
    sub_21991EF54(v12 + v14, type metadata accessor for SportsManagementModel);
    v26 = 0;
    return v26 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21991EF54(v12, type metadata accessor for SportsModel);
    goto LABEL_11;
  }

  sub_218A3A4F8(v12, v9);
  sub_218A3A4F8(v12 + v14, v6);
  v27 = [*(*&v9[*(v4 + 24)] + 16) identifier];
  v28 = sub_219BF5414();
  v30 = v29;

  v31 = [*(*&v6[*(v4 + 24)] + 16) identifier];
  v32 = sub_219BF5414();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  sub_21991EF54(v6, type metadata accessor for SportsModel);
  sub_21991EF54(v9, type metadata accessor for SportsModel);
  return v26 & 1;
}

void sub_21991F354(uint64_t a1)
{
  if (!qword_27CC20FE0)
  {
    type metadata accessor for SportsManagementModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20FE0);
    }
  }
}

uint64_t sub_21991F3B8(unint64_t a1, double *a2, char *a3)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v171 = &v169 - v7;
  v190 = sub_219BF3344();
  v194 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v191 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDCAF4();
  v198 = *(v9 - 8);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView];
  [v13 setImage_];
  v172 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel];
  [v172 setAttributedText_];
  v188 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel];
  [v188 &selRef_sheetPresentationController];
  sub_218718690(a1, v204);
  [a3 setIsAccessibilityElement_];
  [v13 setIsAccessibilityElement_];
  v189 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton];
  [v189 setIsAccessibilityElement_];
  v14 = *&a3[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton];
  [v14 setIsAccessibilityElement_];
  v199 = a2;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v195 = a3;
  [a3 setFrame_];
  [v14 &selRef_minShortcutsOnboardCount];
  [v13 &selRef_minShortcutsOnboardCount];
  v197 = v13;
  v19 = [v13 layer];
  [v19 setCornerRadius_];

  v20 = [v13 layer];
  [v20 setCornerCurve_];

  v21 = *(a1 + 40);
  v192 = *(a1 + 48);
  v193 = v21;
  v170 = a1;
  sub_218846D60(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v175 = v22;
  inited = swift_initStackObject();
  v177 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v24 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v25 = objc_opt_self();
  v26 = v9;
  v173 = v24;
  v27 = [v25 labelColor];
  v28 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v27;
  v29 = *MEMORY[0x277D740A8];
  v174 = v28;
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  v30 = sub_219BF0CD4();
  v31 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v178 = v29;
  v32 = sub_219BF6BD4();
  v33 = v198;
  v34 = *(v198 + 104);
  v179 = *MEMORY[0x277D6D198];
  v180 = v34;
  v181 = v198 + 104;
  v34(v12);
  v183 = v30;
  v35 = sub_219BF0CB4();

  v36 = *(v33 + 8);
  v185 = v12;
  v176 = v26;
  v198 = v33 + 8;
  v182 = v36;
  v36(v12, v26);
  *(inited + 104) = v31;
  *(inited + 80) = v35;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v184 = v37;
  swift_arrayDestroy();
  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = v172;
  v40 = sub_219BF53D4();
  type metadata accessor for Key(0);
  v42 = v41;
  v186 = sub_219272358(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v187 = v42;
  v43 = sub_219BF5204();

  v44 = [v38 initWithString:v40 attributes:v43];

  [v39 setAttributedText_];
  v45 = v199;
  [v39 setFrame_];
  [v39 setNumberOfLines_];
  [v39 setLineBreakMode_];
  v46 = [v39 centerXAnchor];
  v47 = v197;
  v48 = [v197 centerXAnchor];
  v49 = &selRef_boldSystemFontOfSize_;
  v50 = [v46 constraintEqualToAnchor_];

  [v50 setActive_];
  v51 = [v39 topAnchor];
  v52 = [v47 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:6.0];

  [v53 setActive_];
  v54 = [v39 leftAnchor];
  v55 = [v47 leftAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  [v56 setActive_];
  v57 = [v39 rightAnchor];
  v58 = [v47 rightAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  [v59 setActive_];
  [v39 sizeToFit];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  if ([*(*__swift_project_boxed_opaque_existential_1(v204 v205) + 16)])
  {
    v60 = v45;
    v61 = v174;
    v62 = v173;
    v63 = v176;
    if ((v60[29] & 1) == 0)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v80 = [objc_opt_self() bundleForClass_];
      v81 = sub_219BDB5E4();
      v169 = v82;
      v170 = v81;

      v83 = swift_initStackObject();
      *(v83 + 16) = v177;
      *(v83 + 32) = v62;
      v84 = objc_allocWithZone(MEMORY[0x277D75348]);
      v85 = v62;
      *(v83 + 40) = [v84 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
      v86 = v178;
      *(v83 + 64) = v61;
      *(v83 + 72) = v86;
      v87 = v86;
      v88 = sub_219BF6BD4();
      v89 = v185;
      v180(v185, v179, v63);
      v90 = sub_219BF0CB4();

      v182(v89, v63);
      *(v83 + 104) = v31;
      *(v83 + 80) = v90;
      sub_2188195F4(v83);
      swift_setDeallocating();
      swift_arrayDestroy();
      v91 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v92 = sub_219BF53D4();
      v93 = sub_219BF5204();

      v78 = [v91 initWithString:v92 attributes:v93];

      v94 = v196;
      v49 = &selRef_boldSystemFontOfSize_;
      goto LABEL_10;
    }

    v64 = *(v170 + 64);
    if (v64)
    {
      v169 = *(v170 + 56);
      v170 = v64;
    }

    else
    {
      v169 = 0;
      v170 = 0xE000000000000000;
    }

    v95 = v174;
    v96 = swift_initStackObject();
    *(v96 + 16) = v177;
    *(v96 + 32) = v62;
    v97 = objc_allocWithZone(MEMORY[0x277D75348]);
    v98 = v62;

    *(v96 + 40) = [v97 initWithRed:0.43 green:0.43 blue:0.45 alpha:{1.0, v169, v170}];
    v99 = v178;
    *(v96 + 64) = v95;
    *(v96 + 72) = v99;
    v100 = v99;
    v101 = sub_219BF6BD4();
    v102 = v185;
    v180(v185, v179, v63);
    v103 = sub_219BF0CB4();

    v182(v102, v63);
    *(v96 + 104) = v31;
    *(v96 + 80) = v103;
    sub_2188195F4(v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    v104 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v105 = sub_219BF53D4();
    v106 = sub_219BF5204();

    v78 = [v104 initWithString:v105 attributes:v106];

    v49 = &selRef_boldSystemFontOfSize_;
  }

  else
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = v177;
    v66 = v173;
    *(v65 + 32) = v173;
    v67 = objc_allocWithZone(MEMORY[0x277D75348]);
    v68 = v66;
    *(v65 + 40) = [v67 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
    v69 = v178;
    *(v65 + 64) = v174;
    *(v65 + 72) = v69;
    v70 = v69;
    v71 = sub_219BF6BD4();
    v72 = v185;
    v73 = v176;
    v180(v185, v179, v176);
    v74 = sub_219BF0CB4();

    v182(v72, v73);
    *(v65 + 104) = v31;
    *(v65 + 80) = v74;
    sub_2188195F4(v65);
    swift_setDeallocating();
    swift_arrayDestroy();
    v75 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v76 = sub_219BF53D4();
    v77 = sub_219BF5204();

    v78 = [v75 initWithString:v76 attributes:v77];
  }

  v94 = v196;
LABEL_10:
  v107 = v188;
  [v188 setAttributedText_];

  [v107 setFrame_];
  [v107 setNumberOfLines_];
  [v107 setLineBreakMode_];
  v108 = [v107 centerXAnchor];
  v109 = [v197 centerXAnchor];
  v110 = [v108 v49[479]];

  [v110 setActive_];
  v111 = [v107 topAnchor];
  v112 = [v39 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:2.0];

  [v113 setActive_];
  v114 = [v107 leftAnchor];
  v115 = [v39 leftAnchor];
  v116 = [v114 v49[479]];

  [v116 setActive_];
  v117 = [v107 rightAnchor];
  v118 = [v39 rightAnchor];
  v119 = [v117 v49[479]];

  [v119 setActive_];
  [v107 sizeToFit];
  [v107 setTranslatesAutoresizingMaskIntoConstraints_];
  v120 = *(v94 + 16);
  v121 = *(*__swift_project_boxed_opaque_existential_1(v204, v205) + 16);
  swift_unknownObjectRetain();
  v122 = v195;
  v123 = sub_2199E5B28();
  if (v124)
  {
    v125 = v123;
    v126 = v124;
  }

  else
  {
    v126 = v192;

    v125 = v193;
  }

  v127 = v194;
  if ([v121 tagType] - 1 < 2)
  {
    v128 = [v121 groupTitleColor];
    v129 = *(v120 + 56);
    swift_unknownObjectRetain();
    if (v128)
    {
      v130 = [v128 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v131 = swift_allocObject();
      *(v131 + 16) = v130;
      *(v131 + 24) = v129;
      v129 = v131;
    }

    swift_unknownObjectRetain();
    v132 = v197;
    v133 = [v197 traitCollection];
    [v133 displayScale];
    v135 = v134;

    v136 = type metadata accessor for FeedNavImageAssetHandle();
    v137 = objc_allocWithZone(v136);
    v138 = &v137[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v138 = 0;
    *(v138 + 1) = 0;
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v121;
    v139 = swift_unknownObjectRetain();
    v140 = sub_219352488(v139);
    v141 = &v137[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v141 = v140;
    v141[1] = v142;
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize] = vdupq_n_s64(0x4059000000000000uLL);
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v129;
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v135;
    *&v137[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v200.receiver = v137;
    v200.super_class = v136;
    v143 = objc_msgSendSuper2(&v200, sel_init);
    sub_218A462FC(v143, v132, v125, v126, 0, 100.0, 100.0, 1.0);
    swift_unknownObjectRelease();

    v127 = v194;
    v122 = v195;
  }

  swift_unknownObjectRelease();
  v144 = v199;
  v145 = v189;
  [v189 setFrame_];
  [v145 accessibilityActivationPoint];
  [v122 setAccessibilityActivationPoint_];
  v146 = *MEMORY[0x277D765D0];
  v147 = type metadata accessor for ChannelCoinView();
  v203.receiver = v122;
  v203.super_class = v147;
  v148 = objc_msgSendSuper2(&v203, sel_accessibilityTraits);
  v149 = *MEMORY[0x277D76548];
  if ((*MEMORY[0x277D76548] & ~v148) == 0)
  {
    v149 = 0;
  }

  v150 = v149 | v148;
  if ((v146 & ~v150) != 0)
  {
    v151 = v146;
  }

  else
  {
    v151 = 0;
  }

  v202.receiver = v122;
  v202.super_class = v147;
  objc_msgSendSuper2(&v202, sel_setAccessibilityTraits_, v151 | v150);
  v152 = *(v144 + 192);
  if (v152 == 5)
  {
    [v145 setHidden_];
  }

  else
  {
    v153 = qword_280EDB508;
    v154 = v145[qword_280EDB508];
    v145[qword_280EDB508] = v152;
    sub_219BE61D4();
    if (v154 != v145[v153] || !*&v145[qword_280F620E8] || !*&v145[qword_280F620E0])
    {
      sub_218EC2D64(0);
    }

    [v145 setHidden_];
    __swift_project_boxed_opaque_existential_1(v204, v205);
    swift_unknownObjectRetain();
    v155 = v191;
    sub_219BF3324();
    sub_219BEAF14();
    v156 = v155;
    v157 = v127;
    v158 = v171;
    v159 = v190;
    v198 = *(v127 + 16);
    (v198)(v171, v156, v190);
    v160 = *(v127 + 56);
    v160(v158, 0, 1, v159);
    sub_219BE89C4();

    sub_218AD7DC0(v158);
    v161 = sub_219920C88(v201[0]);
    if (*(v199 + 193))
    {
      sub_219BEAF14();
      v162 = v190;
      (v198)(v158, v191, v190);
      v160(v158, 0, 1, v162);
      v163 = v157;
      v164 = swift_allocObject();
      swift_weakInit();
      v165 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v166 = swift_allocObject();
      *(v166 + 16) = v164;
      *(v166 + 24) = v165;
      sub_218E14F94();
      sub_219BE89B4();

      sub_218AD7DC0(v158);
      __swift_project_boxed_opaque_existential_1(v201, v201[3]);
      v167 = *&v122[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token];
      sub_219BE1A04();

      (*(v163 + 8))(v191, v162);
      __swift_destroy_boxed_opaque_existential_1(v201);
    }

    else
    {
      (*(v157 + 8))(v191, v190, v161);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v204);
}

double sub_2199209C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_219920C88(v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219920A64(void *a1, uint64_t a2)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_219BF3344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_219BF3324();
  sub_219BEAF14();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_219BE89C4();

  sub_218AD7DC0(v5);
  v10 = v14 == 2 || (v14 & 1) != 0;
  v11 = sub_219920C88(v10);
  return (*(v7 + 8))(v9, v6, v11);
}

double sub_219920C88(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D6D340], v3, v5);
    type metadata accessor for AccessoryButton(0);
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
    sub_219BEB694();
    (*(v4 + 8))(v7, v3);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    sub_219BDB5E4();

    v11 = [v9 bundleForClass_];
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D6D338], v3, v5);
    type metadata accessor for AccessoryButton(0);
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
    sub_219BEB694();
    (*(v4 + 8))(v7, v3);
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = [v13 bundleForClass_];
    sub_219BDB5E4();

    v11 = [v13 bundleForClass_];
  }

  sub_219BDB5E4();

  return result;
}

uint64_t sub_219921088()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v37 = *(v0 - 8);
  v1 = *(v37 + 8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  v14 = sub_219BE22C4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  if (v16)
  {
    if (v14 == 1702195828 && v16 == 0xE400000000000000)
    {

      v19 = 1;
    }

    else
    {
      v18 = sub_219BF78F4();

      v19 = v18 & 1;
    }
  }

  else
  {
    v19 = 2;
  }

  v20 = *(v36 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v21 | 0x3000000000000000;
  v23 = sub_219BDFA44();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = v20;
  sub_2187B15C0(v44, &v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v40 + 1))
  {
    sub_21875F93C(&v39, v41);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_2187449F0(&v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
  }

  v38 = v22;
  v40 = 0u;
  v39 = 0u;
  sub_2187B15C0(v5, v2, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187B15C0(v46, v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v27 = (v37[80] + 24) & ~v37[80];
  v28 = (v1 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v5;
  v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  sub_2189B4EAC(v2, v30 + v27);
  v31 = v30 + v28;
  v32 = v41[1];
  *v31 = v41[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v42;
  v33 = (v30 + v29);
  v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v33 = 0;
  v33[1] = 0;
  *v34 = v25;
  v34[1] = v24;
  v34[2] = v26;

  sub_2188202A8(v24);
  sub_2186CF94C(0);
  sub_219921A20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v24, v26);
  sub_2187449F0(v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v37, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187449F0(&v39, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_219921A20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_219921A78()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219921B40()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void MagazineCategoriesPickerModule.createViewController(selectedCategory:)(uint64_t a1)
{
  sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for MagazineCategoriesPickerViewController();

  v3 = sub_219BE1E04();

  if (v3)
  {
    sub_21896FC94(a1, v4);
    sub_219BE20C4();
    sub_219921D30(v4);
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219921D30(uint64_t a1)
{
  sub_218EF544C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MagazineCategoriesPickerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t MagazineCategoriesPickerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_219921E68(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  sub_219928A80(0, qword_27CC1E440, MEMORY[0x277D32E20]);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_219BF0614();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v35 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_219BF2DF4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x277D33C10])
  {
    (*(v19 + 96))(v22, v18);
    (*(v10 + 32))(v17, v22, v9);
    (*(v10 + 56))(v8, 1, 1, v9);
    v39 = sub_219BF04D4();
    v40 = v24;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_2199223B0(v17, v37, v38, v8, &v39);
    sub_21896FC30(v39, v40, v41, v42, v43);
    sub_21992A460(v8, qword_27CC1E440, MEMORY[0x277D32E20]);
    return (*(v10 + 8))(v17, v9);
  }

  else if (v23 == *MEMORY[0x277D33C08])
  {
    (*(v19 + 96))(v22, v18);
    sub_219928A18(0);
    v27 = *(v26 + 48);
    v28 = *(v10 + 32);
    v29 = v35;
    v28(v35, v22, v9);
    v28(v12, &v22[v27], v9);
    v30 = v36;
    (*(v10 + 16))(v36, v12, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
    v39 = sub_219BF04D4();
    v40 = v31;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_2199223B0(v29, v37, v38, v30, &v39);
    sub_21896FC30(v39, v40, v41, v42, v43);
    sub_21992A460(v30, qword_27CC1E440, MEMORY[0x277D32E20]);
    v32 = *(v10 + 8);
    v32(v12, v9);
    return (v32)(v29, v9);
  }

  else
  {
    v33 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168], MEMORY[0x277D34170]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D34160], v33);
    swift_willThrow();
    return (*(v19 + 8))(v22, v18);
  }
}

double sub_2199223B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v602 = a4;
  v523 = a3;
  v574 = a2;
  v617 = a1;
  sub_219928A80(0, &unk_280E90A30, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v6 - 8);
  v572 = &v513[-v7];
  v8 = sub_219BE89F4();
  v570 = *(v8 - 8);
  v571 = v8;
  MEMORY[0x28223BE20](v8);
  v573 = &v513[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v608 = sub_219BDB954();
  v603 = *(v608 - 8);
  MEMORY[0x28223BE20](v608);
  v584 = &v513[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v588 = sub_219BF3484();
  v587 = *(v588 - 8);
  MEMORY[0x28223BE20](v588);
  v580 = &v513[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280E90180, MEMORY[0x277D33E20]);
  MEMORY[0x28223BE20](v12 - 8);
  v586 = &v513[-v13];
  v604 = sub_219BF1094();
  v605 = *(v604 - 8);
  MEMORY[0x28223BE20](v604);
  v593 = &v513[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_219BDD804();
  v547 = *(v15 - 8);
  v548 = v15;
  MEMORY[0x28223BE20](v15);
  v539 = &v513[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v546 = &v513[-v18];
  sub_219928A80(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v19 - 8);
  v538 = &v513[-v20];
  v21 = sub_219BDDED4();
  v535 = *(v21 - 8);
  v536 = v21;
  MEMORY[0x28223BE20](v21);
  v537 = &v513[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_219BDDBF4();
  v544 = *(v23 - 8);
  v545 = v23;
  MEMORY[0x28223BE20](v23);
  v543 = &v513[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_219BF0B74();
  v550 = *(v25 - 8);
  v551 = v25;
  MEMORY[0x28223BE20](v25);
  v549 = &v513[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_219BEDB94();
  v525 = *(v27 - 8);
  v526 = v27;
  MEMORY[0x28223BE20](v27);
  v524 = &v513[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v522 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v522);
  v532 = &v513[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_219BF3CA4();
  v517 = *(v30 - 8);
  v518 = v30;
  MEMORY[0x28223BE20](v30);
  v516 = &v513[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280E90470, MEMORY[0x277D338C0]);
  MEMORY[0x28223BE20](v32 - 8);
  v521 = &v513[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v529 = &v513[-v35];
  v36 = sub_219BF0AC4();
  v530 = *(v36 - 8);
  v531 = v36;
  MEMORY[0x28223BE20](v36);
  v540 = &v513[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  MEMORY[0x28223BE20](v38 - 8);
  v553 = &v513[-v39];
  sub_219928A80(0, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  MEMORY[0x28223BE20](v40 - 8);
  v554 = &v513[-v41];
  v42 = sub_219BDDDA4();
  v555 = *(v42 - 8);
  v556 = v42;
  MEMORY[0x28223BE20](v42);
  v541 = &v513[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v577 = sub_219BDE4D4();
  v579 = *(v577 - 8);
  MEMORY[0x28223BE20](v577);
  v559 = &v513[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v45 - 8);
  v562 = &v513[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v47);
  v583 = &v513[-v48];
  v591 = sub_219BF07A4();
  v590 = *(v591 - 8);
  MEMORY[0x28223BE20](v591);
  v589 = &v513[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_219BF04A4();
  v568 = *(v50 - 8);
  v569 = v50;
  MEMORY[0x28223BE20](v50);
  v567 = &v513[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v599 = sub_219BDE294();
  v598 = *(v599 - 8);
  MEMORY[0x28223BE20](v599);
  v597 = &v513[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219928A80(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v53 - 8);
  v565 = &v513[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55);
  v57 = &v513[-v56];
  MEMORY[0x28223BE20](v58);
  v596 = &v513[-v59];
  v601 = sub_219BDEE04();
  v600 = *(v601 - 8);
  MEMORY[0x28223BE20](v601);
  v564 = &v513[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v61);
  v610 = &v513[-v62];
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v611 = *(v63 - 8);
  v64 = *(v611 + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v558 = &v513[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v65);
  v563 = &v513[-v66];
  MEMORY[0x28223BE20](v67);
  v552 = &v513[-v68];
  MEMORY[0x28223BE20](v69);
  v557 = &v513[-v70];
  MEMORY[0x28223BE20](v71);
  v534 = &v513[-v72];
  MEMORY[0x28223BE20](v73);
  v542 = &v513[-v74];
  MEMORY[0x28223BE20](v75);
  v527 = &v513[-v76];
  MEMORY[0x28223BE20](v77);
  v533 = &v513[-v78];
  MEMORY[0x28223BE20](v79);
  v515 = &v513[-v80];
  MEMORY[0x28223BE20](v81);
  v520 = &v513[-v82];
  MEMORY[0x28223BE20](v83);
  v519 = &v513[-v84];
  MEMORY[0x28223BE20](v85);
  v528 = &v513[-v86];
  MEMORY[0x28223BE20](v87);
  v578 = &v513[-v88];
  MEMORY[0x28223BE20](v89);
  v592 = &v513[-v90];
  MEMORY[0x28223BE20](v91);
  v561 = &v513[-v92];
  MEMORY[0x28223BE20](v93);
  v576 = &v513[-v94];
  MEMORY[0x28223BE20](v95);
  v560 = &v513[-v96];
  MEMORY[0x28223BE20](v97);
  v566 = &v513[-v98];
  MEMORY[0x28223BE20](v99);
  v595 = &v513[-v100];
  MEMORY[0x28223BE20](v101);
  v609 = &v513[-v102];
  MEMORY[0x28223BE20](v103);
  v105 = &v513[-v104];
  MEMORY[0x28223BE20](v106);
  v594 = &v513[-v107];
  v607 = sub_219BDD0A4();
  v606 = *(v607 - 8);
  MEMORY[0x28223BE20](v607);
  v109 = &v513[-((v108 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v615 = sub_219BF0F34();
  v616 = *(v615 - 1);
  MEMORY[0x28223BE20](v615);
  v575 = &v513[-((v110 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v111);
  v613 = &v513[-v112];
  v113 = sub_219BF0614();
  v114 = *(v113 - 8);
  v115 = MEMORY[0x28223BE20](v113);
  v117 = &v513[-((v116 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = *(a5 + 8);
  v585 = *a5;
  v581 = v118;
  v119 = *(a5 + 24);
  *&v582 = *(a5 + 16);
  *(&v582 + 1) = v119;
  v120 = *(a5 + 32);
  (*(v114 + 16))(v117, v617, v113, v115);
  v121 = (*(v114 + 88))(v117, v113);
  if (v121 == *MEMORY[0x277D32DB8] || v121 == *MEMORY[0x277D32D10] || v121 == *MEMORY[0x277D32E00])
  {
    goto LABEL_32;
  }

  if (v121 != *MEMORY[0x277D32E10])
  {
    if (v121 == *MEMORY[0x277D32E18])
    {
      v148 = v120;
      (*(v114 + 96))(v117, v113);
      v149 = v593;
      (*(v605 + 32))(v593, v117, v604);
      v150 = v586;
      sub_219BF1034();
      v151 = v150;
      v152 = v587;
      v153 = v150;
      v154 = v588;
      if ((*(v587 + 48))(v153, 1, v588) != 1)
      {
        v201 = v580;
        (*(v152 + 32))(v580, v151, v154);
        *&v628 = v585;
        *(&v628 + 1) = v581;
        v629 = v582;
        LOBYTE(v630) = v148;
        sub_21897010C(v585, v581, v582, *(&v582 + 1), v148);
        sub_219928AD8(v201, &v628);
        v202 = sub_218DFAEC4(v628, *(&v628 + 1), v629, *(&v629 + 1), v630);
        (*(v152 + 8))(v201, v154, v202);
        (*(v605 + 8))(v149, v604);
        return result;
      }

      sub_219BF1084();
      v155 = v603;
      v156 = v608;
      if ((*(v603 + 48))(v57, 1, v608) != 1)
      {
        (*(v155 + 32))(v584, v57, v156);
        (*(v570 + 104))(v573, *MEMORY[0x277D6E0F8], v571);
        v205 = v614;
        v206 = v614[4];
        *(&v629 + 1) = sub_219BDD274();
        v630 = sub_21992A4BC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
        *&v628 = v206;
        v631 = 0u;
        v632 = 0u;
        v633 = 1;
        sub_219BE8314();
        swift_allocObject();

        v207 = v574;
        sub_219BE82F4();
        v617 = v205[7];
        swift_getObjectType();
        sub_219BEAB74();
        v208 = v565;
        (*(v155 + 16))(v565, v584, v156);
        (*(v155 + 56))(v208, 0, 1, v156);

        sub_219BE7044();

        sub_21992A460(v208, &unk_280EE9D00, MEMORY[0x277CC9260]);
        (*(v155 + 8))(v584, v608);
        (*(v605 + 8))(v149, v604);
        return result;
      }

      sub_21992A460(v57, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v157 = v572;
      sub_219BF1074();
      v158 = v616;
      v159 = v615;
      if ((*(v616 + 48))(v157, 1, v615) == 1)
      {
        (*(v605 + 8))(v149, v604);
        sub_21992A460(v157, &unk_280E90A30, MEMORY[0x277D33058]);
        return result;
      }

      v248 = v575;
      (*(v158 + 32))(v575, v157, v159);
      v249 = v614;
      v250 = v614[4];
      *v109 = 0x656E696C64616568;
      *(v109 + 1) = 0xE800000000000000;
      v251 = v606;
      v252 = v607;
      (*(v606 + 104))(v109, *MEMORY[0x277CEAE48], v607);
      sub_219BDD204();
      (*(v251 + 8))(v109, v252);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v253 = v249[3];
        ObjectType = swift_getObjectType();
        (*(v253 + 8))(&v628, v248, v602, ObjectType, v253);
        swift_unknownObjectRelease();
        v255 = v628;
        if ((~v628 & 0xF000000000000007) != 0)
        {
          v358 = v249[5];
          v359 = sub_219BDFA44();
          v360 = v557;
          (*(*(v359 - 8) + 56))(v557, 1, 1, v359);
          sub_218718690((v249 + 8), &v628);
          v627 = 0;
          v625 = 0u;
          v626 = 0u;
          v634 = v358;
          sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v621 + 1))
          {
            sub_21875F93C(&v620, &v622);
            *&v620 = v255;
            v361 = sub_2194DA78C(&v622);
            v617 = v362;
            v614 = v363;
            __swift_destroy_boxed_opaque_existential_1(&v622);
          }

          else
          {
            sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v361 = qword_280ED32D8;
            v393 = qword_280ED32E0;
            v394 = qword_280ED32E8;

            v617 = v393;
            v614 = v394;
            sub_2188202A8(v393);
          }

          v619 = v255;
          *(&v621 + 1) = sub_219BDD274();
          *&v620 = v250;
          v395 = v552;
          sub_21992A3F4(v360, v552, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v396 = (*(v611 + 80) + 24) & ~*(v611 + 80);
          v397 = v250;
          v398 = (v64 + v396 + 7) & 0xFFFFFFFFFFFFFFF8;
          v399 = (v398 + 47) & 0xFFFFFFFFFFFFFFF8;
          v613 = v255;
          v400 = swift_allocObject();
          *(v400 + 16) = v397;
          sub_2189B4EAC(v395, v400 + v396);
          v401 = v400 + v398;
          v402 = v623;
          *v401 = v622;
          *(v401 + 16) = v402;
          *(v401 + 32) = v624;
          v403 = (v400 + v399);
          v404 = (v400 + ((v399 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v403 = 0;
          v403[1] = 0;
          v405 = v617;
          *v404 = v361;
          v404[1] = v405;
          v406 = v614;
          v404[2] = v614;
          swift_retain_n();

          sub_2188202A8(v405);
          sub_2186CF94C(0);
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v407 = v612;
          sub_219BEB464();
          if (!v407)
          {

            sub_2187FABEC(v405, v406);
            sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v557, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v616 + 8))(v575, v615);
            (*(v605 + 8))(v593, v604);
            sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            return sub_218970170(v613);
          }

          sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();
          sub_218970170(v613);

          sub_2187FABEC(v405, v406);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v557, &qword_280EE8610, MEMORY[0x277D2DED0]);
LABEL_115:
          (*(v616 + 8))(v575, v615);
          (*(v605 + 8))(v593, v604);
          return result;
        }
      }

      v613 = v250;
      sub_219BF0F14();
      sub_219BF04D4();
      sub_219BDEDD4();
      v610 = v249[5];
      sub_2187B2C48(0);
      v257 = v256;
      v258 = swift_allocBox();
      v260 = v259;
      v617 = *(v257 + 48);
      sub_2187B2DA0(0);
      v609 = *(v261 + 48);
      v262 = v596;
      (*(v603 + 56))(v596, 1, 1, v608);
      v263 = v598;
      v264 = v597;
      v265 = v599;
      (*(v598 + 104))(v597, *MEMORY[0x277D2FF08], v599);
      sub_219BDD904();
      (*(v263 + 8))(v264, v265);
      sub_21992A460(v262, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v266 = MEMORY[0x277D84F90];
      *(v260 + v609) = MEMORY[0x277D84F90];
      *(v260 + v617) = v266;
      v617 = v258;
      v267 = sub_219BDFA44();
      v268 = v563;
      (*(*(v267 - 8) + 56))(v563, 1, 1, v267);
      sub_218718690((v614 + 8), &v628);
      v627 = 0;
      v625 = 0u;
      v626 = 0u;
      v634 = v610;
      sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v621 + 1))
      {
        sub_21875F93C(&v620, &v622);
        *&v620 = v258 | 2;
        v269 = sub_2194DA78C(&v622);
        v614 = v270;
        v610 = v271;
        __swift_destroy_boxed_opaque_existential_1(&v622);
      }

      else
      {
        sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v269 = qword_280ED32D8;
        v364 = qword_280ED32E0;
        v365 = qword_280ED32E8;

        v614 = v364;
        v610 = v365;
        sub_2188202A8(v364);
      }

      v619 = v258 | 2;
      *(&v621 + 1) = sub_219BDD274();
      v366 = v613;
      *&v620 = v613;
      v367 = v558;
      sub_21992A3F4(v268, v558, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v368 = (*(v611 + 80) + 24) & ~*(v611 + 80);
      v369 = (v64 + v368 + 7) & 0xFFFFFFFFFFFFFFF8;
      v370 = (v369 + 47) & 0xFFFFFFFFFFFFFFF8;
      v371 = swift_allocObject();
      *(v371 + 16) = v366;
      sub_2189B4EAC(v367, v371 + v368);
      v372 = v371 + v369;
      v373 = v623;
      *v372 = v622;
      *(v372 + 16) = v373;
      *(v372 + 32) = v624;
      v374 = (v371 + v370);
      v375 = (v371 + ((v370 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v374 = 0;
      v374[1] = 0;
      v376 = v614;
      *v375 = v269;
      v375[1] = v376;
      v377 = v610;
      v375[2] = v610;
      swift_retain_n();

      sub_2188202A8(v376);
      sub_2186CF94C(0);
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      v378 = v612;
      sub_219BEB464();
      if (v378)
      {

        sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v376, v377);
        sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v563, &qword_280EE8610, MEMORY[0x277D2DED0]);
        (*(v600 + 8))(v564, v601);
        goto LABEL_115;
      }

      sub_2187FABEC(v376, v377);
      sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v563, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v600 + 8))(v564, v601);
      (*(v616 + 8))(v575, v615);
      (*(v605 + 8))(v593, v604);
LABEL_82:
      sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

      return result;
    }

    if (v121 == *MEMORY[0x277D32DD8])
    {
      (*(v114 + 96))(v117, v113);
      v161 = v589;
      (*(v590 + 32))(v589, v117, v591);
      v162 = v614;
      if (!swift_unknownObjectWeakLoadStrong() || (v163 = v162[3], v164 = swift_getObjectType(), (*(v163 + 16))(&v628, v161, v602, v164, v163), swift_unknownObjectRelease(), v165 = v628, (~v628 & 0xF000000000000007) == 0))
      {
        v166 = __swift_project_boxed_opaque_existential_1(v162 + 13, v162[16]);
        v167 = sub_219BF06B4();
        v617 = sub_219BF04D4();
        v616 = v168;
        v169 = v579;
        v170 = v577;
        (*(v579 + 56))(v583, 1, 1, v577);
        v171 = *v166;
        v172 = *(*v166 + 16);
        v173 = [objc_msgSend(v167 sourceChannel)];
        swift_unknownObjectRelease();
        if (!v173)
        {
          sub_219BF5414();
          v173 = sub_219BF53D4();
        }

        v174 = [v172 hasMutedSubscriptionForTagID_];

        v175 = v614;
        if (v174)
        {
          v176 = v583;
          v177 = v562;
          sub_21992A3F4(v583, v562, &unk_280EE8C40, MEMORY[0x277D30018]);
          if ((*(v169 + 48))(v177, 1, v170) == 1)
          {
            v178 = v176;
            v179 = MEMORY[0x277D30018];
            sub_21992A460(v178, &unk_280EE8C40, MEMORY[0x277D30018]);
            sub_21992A460(v177, &unk_280EE8C40, v179);
          }

          else
          {
            v615 = v167;
            v274 = v559;
            (*(v169 + 32))(v559, v177, v170);
            if (sub_219BDE4A4())
            {
              v275 = v171[6];
              v613 = v171[7];
              __swift_project_boxed_opaque_existential_1(v171 + 3, v275);
              v276 = v553;
              sub_219BDE4C4();
              v277 = v554;
              sub_219BDEA24();
              v278 = v277;
              sub_21992A460(v276, &qword_280EE8D20, MEMORY[0x277D2FD40]);
              v280 = v555;
              v279 = v556;
              if ((*(v555 + 48))(v277, 1, v556) != 1)
              {
                v379 = *(v280 + 32);
                v380 = v541;
                v379(v541, v278, v279);
                v381 = swift_allocObject();
                *(v381 + 40) = v279;
                *(v381 + 48) = sub_21992A4BC(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v381 + 16));
                v379(boxed_opaque_existential_1, v380, v279);
                (*(v579 + 8))(v274, v170);
                sub_21992A460(v583, &unk_280EE8C40, MEMORY[0x277D30018]);
                v383 = v616;
                *(v381 + 56) = v617;
                *(v381 + 64) = v383;
                *(v381 + 80) = 0;
                *(v381 + 88) = 0;
                v336 = 1;
                v335 = v381;
                *(v381 + 72) = v615;
                *(v381 + 96) = 0;
                v337 = 0;
                v167 = 0;
                v175 = v614;
                goto LABEL_86;
              }

              (*(v579 + 8))(v274, v170);
              sub_21992A460(v583, &unk_280EE8C40, MEMORY[0x277D30018]);
              sub_21992A460(v277, &unk_280EE8D10, MEMORY[0x277D2FD50]);
              v175 = v614;
            }

            else
            {
              (*(v169 + 8))(v274, v170);
              sub_21992A460(v176, &unk_280EE8C40, MEMORY[0x277D30018]);
            }

            v167 = v615;
          }
        }

        else
        {
          sub_21992A460(v583, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        v335 = v617;
        v336 = 0;
        v337 = v616;
LABEL_86:
        v338 = v175[5];
        v339 = swift_allocObject();
        v618 = v336;
        *(v339 + 16) = v335;
        *(v339 + 24) = v337;
        *(v339 + 40) = 0;
        *(v339 + 48) = 0;
        *(v339 + 32) = v167;
        *(v339 + 56) = v336;
        *(v339 + 63) = 0;
        *(v339 + 61) = 0;
        *(v339 + 57) = 0;
        *(v339 + 64) = MEMORY[0x277D84F90];
        v607 = v339 | 0x5000000000000000;
        v609 = v175[4];
        v340 = sub_219BDFA44();
        (*(*(v340 - 8) + 56))(v592, 1, 1, v340);
        sub_218718690((v175 + 8), &v628);
        v627 = 0;
        v625 = 0u;
        v626 = 0u;
        v634 = v338;
        sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v615 = v167;
        v617 = v335;
        v616 = v337;
        LODWORD(v613) = v336;
        if (*(&v621 + 1))
        {
          sub_21875F93C(&v620, &v622);
          sub_21896FE24(v335, v337, v167, 0, 0, v336);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v341 = qword_280ED32E0;
          v342 = qword_280ED32E8;
          v608 = qword_280ED32D8;

          v614 = v341;
          v610 = v342;
          sub_2188202A8(v341);
          __swift_destroy_boxed_opaque_existential_1(&v622);
        }

        else
        {
          sub_21896FE24(v335, v337, v167, 0, 0, v336);
          sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v343 = qword_280ED32E0;
          v344 = qword_280ED32E8;
          v608 = qword_280ED32D8;

          v614 = v343;
          v610 = v344;
          sub_2188202A8(v343);
        }

        v619 = v607;
        *(&v621 + 1) = sub_219BDD274();
        v345 = v609;
        *&v620 = v609;
        v346 = v578;
        sub_21992A3F4(v592, v578, &qword_280EE8610, MEMORY[0x277D2DED0]);
        sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v347 = (*(v611 + 80) + 24) & ~*(v611 + 80);
        v348 = (v64 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
        v349 = (v348 + 47) & 0xFFFFFFFFFFFFFFF8;
        v350 = swift_allocObject();
        *(v350 + 16) = v345;
        sub_2189B4EAC(v346, v350 + v347);
        v351 = v350 + v348;
        v352 = v623;
        *v351 = v622;
        *(v351 + 16) = v352;
        *(v351 + 32) = v624;
        v353 = (v350 + v349);
        v354 = (v350 + ((v349 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v353 = 0;
        v353[1] = 0;
        v355 = v614;
        *v354 = v608;
        v354[1] = v355;
        v356 = v610;
        v354[2] = v610;
        swift_retain_n();

        sub_2188202A8(v355);
        sub_2186CF94C(0);
        sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        v357 = v612;
        sub_219BEB464();
        if (!v357)
        {

          sub_2187FABEC(v355, v356);
          sub_21896FDCC(v617, v616, v615, 0, 0, v613);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v592, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v590 + 8))(v589, v591);
          sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

          return result;
        }

        sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v355, v356);
        sub_21896FDCC(v617, v616, v615, 0, 0, v613);
        sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        v320 = MEMORY[0x277D2DED0];
        v321 = v592;
LABEL_95:
        sub_21992A460(v321, &qword_280EE8610, v320);
        (*(v590 + 8))(v589, v591);
        return result;
      }

      v242 = v162[4];
      v241 = v162[5];
      v243 = sub_219BDFA44();
      v244 = v576;
      (*(*(v243 - 8) + 56))(v576, 1, 1, v243);
      sub_218718690((v162 + 8), &v628);
      v627 = 0;
      v625 = 0u;
      v626 = 0u;
      v634 = v241;
      sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v621 + 1))
      {
        sub_21875F93C(&v620, &v622);
        *&v620 = v165;
        v245 = sub_2194DA78C(&v622);
        v616 = v246;
        v615 = v247;
        __swift_destroy_boxed_opaque_existential_1(&v622);
      }

      else
      {
        sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v245 = qword_280ED32D8;
        v306 = qword_280ED32E0;
        v307 = qword_280ED32E8;

        v616 = v306;
        v615 = v307;
        sub_2188202A8(v306);
      }

      v619 = v165;
      *(&v621 + 1) = sub_219BDD274();
      *&v620 = v242;
      v617 = v165;
      v308 = v561;
      sub_21992A3F4(v244, v561, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v309 = (*(v611 + 80) + 24) & ~*(v611 + 80);
      v310 = (v64 + v309 + 7) & 0xFFFFFFFFFFFFFFF8;
      v311 = (v310 + 47) & 0xFFFFFFFFFFFFFFF8;
      v312 = swift_allocObject();
      *(v312 + 16) = v242;
      sub_2189B4EAC(v308, v312 + v309);
      v313 = v312 + v310;
      v314 = v623;
      *v313 = v622;
      *(v313 + 16) = v314;
      *(v313 + 32) = v624;
      v315 = (v312 + v311);
      v316 = (v312 + ((v311 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v315 = 0;
      v315[1] = 0;
      v317 = v616;
      *v316 = v245;
      v316[1] = v317;
      v318 = v615;
      v316[2] = v615;
      swift_retain_n();

      sub_2188202A8(v317);
      sub_2186CF94C(0);
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      v319 = v612;
      sub_219BEB464();
      if (v319)
      {

        sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();
        sub_218970170(v617);

        sub_2187FABEC(v317, v318);
        sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        v320 = MEMORY[0x277D2DED0];
        v321 = v576;
        goto LABEL_95;
      }

      sub_2187FABEC(v317, v318);
      sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v576, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v590 + 8))(v589, v591);
LABEL_75:
      sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      return sub_218970170(v617);
    }

    if (v121 == *MEMORY[0x277D32CF8])
    {
      goto LABEL_32;
    }

    if (v121 == *MEMORY[0x277D32DC0])
    {
      (*(v114 + 96))(v117, v113);
      v209 = *(v568 + 32);
      v210 = v120;
      v514 = v120;
      v209(v567, v117, v569);
      v616 = v614[5];
      v211 = sub_219BF0404();
      v615 = v211;
      v617 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      v212 = swift_allocObject();
      v213 = v581;
      v214 = v582;
      v215 = [v211 identifier];
      v216 = sub_219BF5414();
      v218 = v217;

      swift_unknownObjectRelease();
      *(v212 + 16) = v216;
      *(v212 + 24) = v218;
      *(v212 + 32) = v617;
      *(v212 + 40) = 0;
      *(v212 + 48) = 1;
      v219 = v585;
      *(v212 + 56) = 0;
      *(v212 + 64) = v219;
      *(v212 + 72) = v213;
      *(v212 + 80) = v214;
      *(v212 + 96) = v514;
      v617 = v212;
      v220 = v212 | 0x2000000000000006;
      v221 = v614[4];
      v222 = sub_219BDFA44();
      v223 = v566;
      (*(*(v222 - 8) + 56))(v566, 1, 1, v222);
      v630 = 0;
      v628 = 0u;
      v629 = 0u;
      v627 = 0;
      v625 = 0u;
      v626 = 0u;
      v634 = v616;
      sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v621 + 1))
      {
        sub_21875F93C(&v620, &v622);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v224 = qword_280ED32E0;
        v225 = qword_280ED32E8;
        v615 = qword_280ED32D8;

        v616 = v224;
        v226 = v225;
        sub_2188202A8(v224);
        __swift_destroy_boxed_opaque_existential_1(&v622);
      }

      else
      {
        sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v322 = qword_280ED32E0;
        v323 = qword_280ED32E8;
        v615 = qword_280ED32D8;

        v616 = v322;
        v226 = v323;
        sub_2188202A8(v322);
      }

      v619 = v220;
      *(&v621 + 1) = sub_219BDD274();
      *&v620 = v221;
      v324 = v560;
      sub_21992A3F4(v223, v560, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v325 = (*(v611 + 80) + 24) & ~*(v611 + 80);
      v326 = (v64 + v325 + 7) & 0xFFFFFFFFFFFFFFF8;
      v327 = (v326 + 47) & 0xFFFFFFFFFFFFFFF8;
      v328 = swift_allocObject();
      *(v328 + 16) = v221;
      sub_2189B4EAC(v324, v328 + v325);
      v329 = v328 + v326;
      v330 = v623;
      *v329 = v622;
      *(v329 + 16) = v330;
      *(v329 + 32) = v624;
      v331 = (v328 + v327);
      v332 = (v328 + ((v327 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v331 = 0;
      v331[1] = 0;
      v333 = v616;
      *v332 = v615;
      v332[1] = v333;
      v332[2] = v226;
      swift_retain_n();

      sub_2188202A8(v333);
      sub_2186CF94C(0);
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      v334 = v612;
      sub_219BEB464();
      if (v334)
      {

        sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_2187FABEC(v333, v226);
        sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v566, &qword_280EE8610, MEMORY[0x277D2DED0]);
        (*(v568 + 8))(v567, v569);
        return result;
      }

      sub_2187FABEC(v333, v226);
      sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v566, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v568 + 8))(v567, v569);
      goto LABEL_82;
    }

    if (v121 == *MEMORY[0x277D32CF0])
    {
LABEL_55:
      v272 = sub_219BF3CB4();
      sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168], MEMORY[0x277D34170]);
      swift_allocError();
      (*(*(v272 - 8) + 104))(v273, *MEMORY[0x277D34160], v272);
      swift_willThrow();
      (*(v114 + 8))(v117, v113);
      return result;
    }

    if (v121 != *MEMORY[0x277D32E08] && v121 != *MEMORY[0x277D32DB0] && v121 != *MEMORY[0x277D32DE0])
    {
      if (v121 == *MEMORY[0x277D32DF0])
      {
        (*(v114 + 96))(v117, v113);
        v281 = v549;
        (*(v550 + 32))(v549, v117, v551);
        v282 = v614;
        if (swift_unknownObjectWeakLoadStrong() && (v283 = v282[3], v284 = swift_getObjectType(), (*(v283 + 24))(&v628, v281, v602, v284, v283), swift_unknownObjectRelease(), v285 = v628, (~v628 & 0xF000000000000007) != 0))
        {
          v409 = v282[4];
          v408 = v282[5];
          v410 = sub_219BDFA44();
          v411 = v533;
          (*(*(v410 - 8) + 56))(v533, 1, 1, v410);
          sub_218718690((v282 + 8), &v628);
          v627 = 0;
          v625 = 0u;
          v626 = 0u;
          v634 = v408;
          sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v621 + 1))
          {
            sub_21875F93C(&v620, &v622);
            *&v620 = v285;
            v412 = sub_2194DA78C(&v622);
            v616 = v413;
            v615 = v414;
            __swift_destroy_boxed_opaque_existential_1(&v622);
          }

          else
          {
            sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v412 = qword_280ED32D8;
            v471 = qword_280ED32E0;
            v472 = qword_280ED32E8;

            v616 = v471;
            v615 = v472;
            sub_2188202A8(v471);
          }

          v619 = v285;
          *(&v621 + 1) = sub_219BDD274();
          *&v620 = v409;
          v617 = v285;
          v473 = v527;
          sub_21992A3F4(v411, v527, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v474 = (*(v611 + 80) + 24) & ~*(v611 + 80);
          v475 = (v64 + v474 + 7) & 0xFFFFFFFFFFFFFFF8;
          v476 = (v475 + 47) & 0xFFFFFFFFFFFFFFF8;
          v477 = swift_allocObject();
          *(v477 + 16) = v409;
          sub_2189B4EAC(v473, v477 + v474);
          v478 = v477 + v475;
          v479 = v623;
          *v478 = v622;
          *(v478 + 16) = v479;
          *(v478 + 32) = v624;
          v480 = (v477 + v476);
          v481 = (v477 + ((v476 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v480 = 0;
          v480[1] = 0;
          v482 = v616;
          *v481 = v412;
          v481[1] = v482;
          v483 = v615;
          v481[2] = v615;
          swift_retain_n();

          sub_2188202A8(v482);
          sub_2186CF94C(0);
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v484 = v612;
          sub_219BEB464();
          if (!v484)
          {

            sub_2187FABEC(v482, v483);
            sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v533, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v550 + 8))(v549, v551);
            goto LABEL_75;
          }

          sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();
          sub_218970170(v617);

          sub_2187FABEC(v482, v483);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v533, &qword_280EE8610, MEMORY[0x277D2DED0]);
        }

        else
        {
          v286 = sub_219BF04D4();
          v287 = v536;
          v288 = v537;
          *v537 = v286;
          v288[1] = v289;
          (*(v535 + 104))(v288, *MEMORY[0x277D2FDC8], v287);
          v290 = sub_219BDD944();
          (*(*(v290 - 8) + 56))(v538, 1, 1, v290);
          v291 = v543;
          sub_219BDDBD4();
          sub_2191B3054(0);
          v293 = *(v292 + 48);
          v294 = sub_219BF0B44();
          v295 = v545;
          v296 = v546;
          *v546 = v294;
          (*(v544 + 16))(v296 + v293, v291, v295);
          v298 = v547;
          v297 = v548;
          (*(v547 + 104))(v296, *MEMORY[0x277D2FAF8], v548);
          v616 = v282[5];
          v299 = swift_allocObject();
          sub_219BF0AF4();
          (*(v298 + 16))(v539, v296, v297);
          sub_219BDE674();
          swift_allocObject();
          *(v299 + 16) = sub_219BDE614();
          v617 = v299;
          v300 = v299 | 0x7000000000000004;
          v301 = sub_219BDFA44();
          v302 = v542;
          (*(*(v301 - 8) + 56))(v542, 1, 1, v301);
          v630 = 0;
          v628 = 0u;
          v629 = 0u;
          v627 = 0;
          v625 = 0u;
          v626 = 0u;
          v634 = v616;
          sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v621 + 1))
          {
            sub_21875F93C(&v620, &v622);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v304 = qword_280ED32D8;
            v303 = qword_280ED32E0;
            v305 = qword_280ED32E8;

            v616 = v303;
            sub_2188202A8(v303);
            __swift_destroy_boxed_opaque_existential_1(&v622);
          }

          else
          {
            sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v304 = qword_280ED32D8;
            v415 = qword_280ED32E0;
            v305 = qword_280ED32E8;

            v616 = v415;
            sub_2188202A8(v415);
          }

          v619 = v300;
          v620 = 0u;
          v621 = 0u;
          v416 = v534;
          sub_21992A3F4(v302, v534, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v417 = (*(v611 + 80) + 24) & ~*(v611 + 80);
          v418 = (v64 + v417 + 7) & 0xFFFFFFFFFFFFFFF8;
          v419 = (v418 + 47) & 0xFFFFFFFFFFFFFFF8;
          v420 = swift_allocObject();
          *(v420 + 16) = 0;
          sub_2189B4EAC(v416, v420 + v417);
          v421 = v420 + v418;
          v422 = v623;
          *v421 = v622;
          *(v421 + 16) = v422;
          *(v421 + 32) = v624;
          v423 = (v420 + v419);
          v424 = (v420 + ((v419 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v423 = 0;
          v423[1] = 0;
          v425 = v616;
          *v424 = v304;
          v424[1] = v425;
          v424[2] = v305;

          sub_2188202A8(v425);
          sub_2186CF94C(0);
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v426 = v612;
          sub_219BEB464();
          if (!v426)
          {

            sub_2187FABEC(v425, v305);
            sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v542, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v547 + 8))(v546, v548);
            (*(v544 + 8))(v543, v545);
            (*(v550 + 8))(v549, v551);
            goto LABEL_82;
          }

          sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
          sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE2FF4();

          sub_2187FABEC(v425, v305);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v542, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v547 + 8))(v546, v548);
          (*(v544 + 8))(v543, v545);
        }

        (*(v550 + 8))(v549, v551);
        return result;
      }

      if (v121 != *MEMORY[0x277D32D38])
      {
        if (v121 == *MEMORY[0x277D32DE8])
        {
          (*(v114 + 96))(v117, v113);
          (*(v530 + 32))(v540, v117, v531);
          v385 = v516;
          v384 = v517;
          v386 = v518;
          (*(v517 + 104))(v516, *MEMORY[0x277D34140], v518);
          v387 = sub_218C32B18(v385, v523);
          (*(v384 + 8))(v385, v386);
          v388 = MEMORY[0x277D338A8];
          if (v387)
          {
            v389 = *MEMORY[0x277D338A8];
            v390 = sub_219BF24E4();
            v391 = *(v390 - 8);
            v392 = v529;
            (*(v391 + 104))(v529, v389, v390);
            (*(v391 + 56))(v392, 0, 1, v390);
          }

          else
          {
            v390 = sub_219BF24E4();
            v392 = v529;
            (*(*(v390 - 8) + 56))(v529, 1, 1, v390);
          }

          v445 = v521;
          sub_21992A3F4(v392, v521, &qword_280E90470, MEMORY[0x277D338C0]);
          sub_219BF24E4();
          v446 = *(v390 - 8);
          if ((*(v446 + 48))(v445, 1, v390) == 1)
          {
            sub_21992A460(v445, &qword_280E90470, MEMORY[0x277D338C0]);
            v447 = v614;
          }

          else
          {
            v448 = (*(v446 + 88))(v445, v390);
            v449 = *v388;
            (*(v446 + 8))(v445, v390);
            v450 = v448 == v449;
            v447 = v614;
            if (v450)
            {
              strcpy(v109, "puzzleTeaser");
              v109[13] = 0;
              *(v109 + 7) = -5120;
              v451 = v606;
              v452 = v607;
              (*(v606 + 104))(v109, *MEMORY[0x277CEAE48], v607);
              sub_219BDD204();
              (*(v451 + 8))(v109, v452);
            }
          }

          v453 = sub_219BF0AA4();
          v454 = v522;
          v455 = v532;
          sub_21992A3F4(v392, &v532[*(v522 + 20)], &qword_280E90470, MEMORY[0x277D338C0]);
          v456 = sub_219BF04D4();
          *v455 = v453;
          *(v455 + 1) = 0;
          v455[16] = 1;
          v457 = &v455[v454[6]];
          *v457 = v456;
          v457[1] = v458;
          v459 = &v455[v454[7]];
          *v459 = 0;
          v459[1] = 0;
          v460 = &v455[v454[8]];
          *v460 = 0;
          v460[1] = 0;
          v461 = v447[5];
          v462 = swift_allocBox();
          sub_2189F7F80(v455, v463);
          v617 = v462;
          v464 = v462 | 0xE000000000000006;
          v465 = v447[4];
          v466 = sub_219BDFA44();
          v467 = v528;
          (*(*(v466 - 8) + 56))(v528, 1, 1, v466);
          sub_218718690((v447 + 8), &v628);
          v627 = 0;
          v625 = 0u;
          v626 = 0u;
          v634 = v461;
          sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v621 + 1))
          {
            sub_21875F93C(&v620, &v622);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v469 = qword_280ED32D8;
            v468 = qword_280ED32E0;
            v470 = qword_280ED32E8;

            v616 = v468;
            v615 = v470;
            sub_2188202A8(v468);
            __swift_destroy_boxed_opaque_existential_1(&v622);
          }

          else
          {
            sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v469 = qword_280ED32D8;
            v485 = qword_280ED32E0;
            v486 = qword_280ED32E8;

            v616 = v485;
            v615 = v486;
            sub_2188202A8(v485);
          }

          v619 = v464;
          *(&v621 + 1) = sub_219BDD274();
          *&v620 = v465;
          v487 = v519;
          sub_21992A3F4(v467, v519, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v488 = (*(v611 + 80) + 24) & ~*(v611 + 80);
          v489 = (v64 + v488 + 7) & 0xFFFFFFFFFFFFFFF8;
          v490 = v465;
          v491 = (v489 + 47) & 0xFFFFFFFFFFFFFFF8;
          v492 = swift_allocObject();
          *(v492 + 16) = v490;
          sub_2189B4EAC(v487, v492 + v488);
          v493 = v492 + v489;
          v494 = v623;
          *v493 = v622;
          *(v493 + 16) = v494;
          *(v493 + 32) = v624;
          v495 = (v492 + v491);
          v496 = (v492 + ((v491 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v495 = 0;
          v495[1] = 0;
          v497 = v616;
          *v496 = v469;
          v496[1] = v497;
          v498 = v615;
          v496[2] = v615;
          swift_retain_n();

          sub_2188202A8(v497);
          sub_2186CF94C(0);
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v499 = v612;
          sub_219BEB464();
          if (v499)
          {

            sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
            swift_allocObject();
            sub_219BE2FF4();

            sub_2187FABEC(v497, v498);
            sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v528, &qword_280EE8610, MEMORY[0x277D2DED0]);
            sub_2189F7FE4(v532);
            sub_21992A460(v529, &qword_280E90470, MEMORY[0x277D338C0]);
            (*(v530 + 8))(v540, v531);
            return result;
          }

          sub_2187FABEC(v497, v498);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v528, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2189F7FE4(v532);
          sub_21992A460(v529, &qword_280E90470, MEMORY[0x277D338C0]);
          (*(v530 + 8))(v540, v531);
          goto LABEL_82;
        }

        if (v121 == *MEMORY[0x277D32D18])
        {
          (*(v114 + 96))(v117, v113);
          v427 = *(v525 + 32);
          v428 = v120;
          v514 = v120;
          v427(v524, v117, v526);
          v616 = v614[5];
          v429 = sub_219BEDB74();
          v615 = v429;
          v617 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
          v430 = swift_allocObject();
          v431 = v581;
          v432 = v582;
          v433 = [v429 identifier];
          v434 = sub_219BF5414();
          v436 = v435;

          swift_unknownObjectRelease();
          *(v430 + 16) = v434;
          *(v430 + 24) = v436;
          *(v430 + 32) = v617;
          *(v430 + 40) = 0;
          *(v430 + 48) = 1;
          v437 = v585;
          *(v430 + 56) = 0;
          *(v430 + 64) = v437;
          *(v430 + 72) = v431;
          *(v430 + 80) = v432;
          *(v430 + 96) = v514;
          v617 = v430;
          v438 = v430 | 0x2000000000000006;
          v439 = v614[4];
          v440 = sub_219BDFA44();
          v441 = v520;
          (*(*(v440 - 8) + 56))(v520, 1, 1, v440);
          v630 = 0;
          v628 = 0u;
          v629 = 0u;
          v627 = 0;
          v625 = 0u;
          v626 = 0u;
          v634 = v616;
          sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v621 + 1))
          {
            sub_21875F93C(&v620, &v622);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v442 = qword_280ED32E0;
            v443 = qword_280ED32E8;
            v615 = qword_280ED32D8;

            v616 = v442;
            v444 = v443;
            sub_2188202A8(v442);
            __swift_destroy_boxed_opaque_existential_1(&v622);
          }

          else
          {
            sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v500 = qword_280ED32E0;
            v501 = qword_280ED32E8;
            v615 = qword_280ED32D8;

            v616 = v500;
            v444 = v501;
            sub_2188202A8(v500);
          }

          v619 = v438;
          *(&v621 + 1) = sub_219BDD274();
          *&v620 = v439;
          v502 = v515;
          sub_21992A3F4(v441, v515, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v503 = (*(v611 + 80) + 24) & ~*(v611 + 80);
          v504 = (v64 + v503 + 7) & 0xFFFFFFFFFFFFFFF8;
          v505 = (v504 + 47) & 0xFFFFFFFFFFFFFFF8;
          v506 = swift_allocObject();
          *(v506 + 16) = v439;
          sub_2189B4EAC(v502, v506 + v503);
          v507 = v506 + v504;
          v508 = v623;
          *v507 = v622;
          *(v507 + 16) = v508;
          *(v507 + 32) = v624;
          v509 = (v506 + v505);
          v510 = (v506 + ((v505 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v509 = 0;
          v509[1] = 0;
          v511 = v616;
          *v510 = v615;
          v510[1] = v511;
          v510[2] = v444;
          swift_retain_n();

          sub_2188202A8(v511);
          sub_2186CF94C(0);
          sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v512 = v612;
          sub_219BEB464();
          if (v512)
          {

            sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
            sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
            swift_allocObject();
            sub_219BE2FF4();

            sub_2187FABEC(v511, v444);
            sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
            sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
            sub_21992A460(v520, &qword_280EE8610, MEMORY[0x277D2DED0]);
            (*(v525 + 8))(v524, v526);
            return result;
          }

          sub_2187FABEC(v511, v444);
          sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
          sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
          sub_21992A460(v520, &qword_280EE8610, MEMORY[0x277D2DED0]);
          (*(v525 + 8))(v524, v526);
          goto LABEL_82;
        }

        if (v121 != *MEMORY[0x277D32DA8] && v121 != *MEMORY[0x277D32DF8])
        {
          if (v121 == *MEMORY[0x277D32DD0])
          {
            goto LABEL_33;
          }

          goto LABEL_55;
        }
      }
    }

LABEL_32:
    (*(v114 + 8))(v117, v113);
LABEL_33:
    v203 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168], MEMORY[0x277D34170]);
    swift_allocError();
    (*(*(v203 - 8) + 104))(v204, *MEMORY[0x277D34160], v203);
    swift_willThrow();
    return result;
  }

  (*(v114 + 96))(v117, v113);
  v122 = v613;
  (*(v616 + 32))(v613, v117, v615);
  v123 = v614;
  v124 = v614[4];
  *v109 = 0x656E696C64616568;
  *(v109 + 1) = 0xE800000000000000;
  v125 = v606;
  v126 = v607;
  (*(v606 + 104))(v109, *MEMORY[0x277CEAE48], v607);
  v605 = v124;
  sub_219BDD204();
  (*(v125 + 8))(v109, v126);
  if (!swift_unknownObjectWeakLoadStrong() || (v127 = v123[3], v128 = swift_getObjectType(), (*(v127 + 8))(&v628, v122, v602, v128, v127), swift_unknownObjectRelease(), v129 = v628, (~v628 & 0xF000000000000007) == 0))
  {
    v607 = v64;
    sub_219BF0F14();
    sub_219BF04D4();
    sub_219BDEDD4();
    v606 = v123[5];
    sub_2187B2C48(0);
    v131 = v130;
    v132 = swift_allocBox();
    v134 = v133;
    v617 = *(v131 + 48);
    sub_2187B2DA0(0);
    v604 = *(v135 + 48);
    v136 = v596;
    (*(v603 + 56))(v596, 1, 1, v608);
    v137 = v598;
    v138 = v597;
    v139 = v599;
    (*(v598 + 104))(v597, *MEMORY[0x277D2FF08], v599);
    sub_219BDD904();
    (*(v137 + 8))(v138, v139);
    sub_21992A460(v136, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v140 = MEMORY[0x277D84F90];
    *(v134 + v604) = MEMORY[0x277D84F90];
    *(v134 + v617) = v140;
    v617 = v132;
    v141 = v132 | 2;
    v142 = sub_219BDFA44();
    v143 = v609;
    (*(*(v142 - 8) + 56))(v609, 1, 1, v142);
    sub_218718690((v123 + 8), &v628);
    v627 = 0;
    v625 = 0u;
    v626 = 0u;
    v634 = v606;
    sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v621 + 1))
    {
      sub_21875F93C(&v620, &v622);
      *&v620 = v132 | 2;
      v144 = sub_2194DA78C(&v622);
      v614 = v145;
      v608 = v146;
      __swift_destroy_boxed_opaque_existential_1(&v622);
      v147 = v607;
    }

    else
    {
      sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v147 = v607;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v144 = qword_280ED32D8;
      v186 = qword_280ED32E0;
      v187 = qword_280ED32E8;

      v614 = v186;
      v608 = v187;
      sub_2188202A8(v186);
    }

    v619 = v141;
    *(&v621 + 1) = sub_219BDD274();
    v188 = v605;
    *&v620 = v605;
    v189 = v595;
    sub_21992A3F4(v143, v595, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v190 = (*(v611 + 80) + 24) & ~*(v611 + 80);
    v191 = (v147 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = (v191 + 47) & 0xFFFFFFFFFFFFFFF8;
    v193 = swift_allocObject();
    *(v193 + 16) = v188;
    sub_2189B4EAC(v189, v193 + v190);
    v194 = v193 + v191;
    v195 = v623;
    *v194 = v622;
    *(v194 + 16) = v195;
    *(v194 + 32) = v624;
    v196 = (v193 + v192);
    v197 = (v193 + ((v192 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v196 = 0;
    v196[1] = 0;
    v198 = v614;
    *v197 = v144;
    v197[1] = v198;
    v199 = v608;
    v197[2] = v608;
    swift_retain_n();

    sub_2188202A8(v198);
    sub_2186CF94C(0);
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    v200 = v612;
    sub_219BEB464();
    if (v200)
    {

      sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      sub_2187FABEC(v198, v199);
      sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_21992A460(v609, &qword_280EE8610, MEMORY[0x277D2DED0]);
      (*(v600 + 8))(v610, v601);
LABEL_45:
      (*(v616 + 8))(v613, v615);
      return result;
    }

    sub_2187FABEC(v198, v199);
    sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_21992A460(v609, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v600 + 8))(v610, v601);
    (*(v616 + 8))(v613, v615);
    goto LABEL_82;
  }

  v180 = v123[5];
  v181 = sub_219BDFA44();
  v182 = v594;
  (*(*(v181 - 8) + 56))(v594, 1, 1, v181);
  sub_218718690((v123 + 8), &v628);
  v627 = 0;
  v625 = 0u;
  v626 = 0u;
  v634 = v180;
  sub_2187B14CC(&v625, &v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v621 + 1))
  {
    sub_21875F93C(&v620, &v622);
    *&v620 = v129;
    v183 = sub_2194DA78C(&v622);
    v617 = v184;
    v614 = v185;
    __swift_destroy_boxed_opaque_existential_1(&v622);
  }

  else
  {
    sub_218745F4C(&v620, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v183 = qword_280ED32D8;
    v227 = qword_280ED32E0;
    v228 = qword_280ED32E8;

    v617 = v227;
    v614 = v228;
    sub_2188202A8(v227);
  }

  v619 = v129;
  *(&v621 + 1) = sub_219BDD274();
  v229 = v605;
  *&v620 = v605;
  sub_21992A3F4(v182, v105, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B14CC(&v628, &v622, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v230 = (*(v611 + 80) + 24) & ~*(v611 + 80);
  v231 = (v64 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
  v611 = v129;
  v232 = (v231 + 47) & 0xFFFFFFFFFFFFFFF8;
  v233 = swift_allocObject();
  *(v233 + 16) = v229;
  sub_2189B4EAC(v105, v233 + v230);
  v234 = v233 + v231;
  v235 = v623;
  *v234 = v622;
  *(v234 + 16) = v235;
  *(v234 + 32) = v624;
  v236 = (v233 + v232);
  v237 = (v233 + ((v232 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v236 = 0;
  v236[1] = 0;
  v238 = v617;
  *v237 = v183;
  v237[1] = v238;
  v239 = v614;
  v237[2] = v614;
  swift_retain_n();

  sub_2188202A8(v238);
  sub_2186CF94C(0);
  sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  v240 = v612;
  sub_219BEB464();
  if (v240)
  {

    sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
    sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();
    sub_218970170(v611);

    sub_2187FABEC(v238, v239);
    sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_21992A460(v594, &qword_280EE8610, MEMORY[0x277D2DED0]);
    goto LABEL_45;
  }

  sub_2187FABEC(v238, v239);
  sub_218745F4C(&v625, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218745F4C(&v628, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_21992A460(v594, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(v616 + 8))(v613, v615);
  sub_218745F4C(&v620, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
  return sub_218970170(v611);
}