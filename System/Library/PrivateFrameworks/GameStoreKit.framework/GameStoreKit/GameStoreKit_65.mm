uint64_t sub_24ECA65B8()
{
  v1 = v0[15];
  swift_beginAccess();
  v0[24] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_24ECA668C;
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  return sub_24E649BA4(v5, v4, v3);
}

uint64_t sub_24ECA668C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ECA6940, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v5;
    v6[1] = sub_24ECA6818;
    v7 = v4[16];

    return sub_24ECA80C4(a1, v7);
  }
}

uint64_t sub_24ECA6818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {

    v4 = sub_24ECA6BE4;
  }

  else
  {
    v4 = sub_24ECA69C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA6940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA69C0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[14];
  v0[2] = v0[13];
  v0[3] = v4;
  v0[4] = v2;
  v0[5] = v1;
  v0[6] = v3;

  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA6A9C;
  v6 = v0[23];
  v7 = v0[16];

  return sub_24E649FCC(v6, (v0 + 2), v7);
}

uint64_t sub_24ECA6A9C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECA6DAC;
  }

  else
  {

    v2 = sub_24ECA6C64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA6BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA6C64()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v4 = *(v1 + 16) == v3 && *(v1 + 24) == v2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    sub_24ECAA340(v0[23], v0[22], type metadata accessor for GSKShelf);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
    sub_24F92B8C8();
    (*(v6 + 8))(v5, v7);
  }

  sub_24ECAA3A8(v0[23], type metadata accessor for GSKShelf);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECA6DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = type metadata accessor for GSKShelf(0);
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D150, &qword_24F993A38);
  v7[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D158, &qword_24F993A40);
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D160, &qword_24F993A48);
  v7[20] = v12;
  v7[21] = *(v12 - 8);
  v7[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D168, &qword_24F993A50);
  v7[23] = v13;
  v7[24] = *(v13 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA7168, 0, 0);
}

uint64_t sub_24ECA7168()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;

  v8 = sub_24E802CE0(&unk_2861C0960);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = &unk_24F993A60;
  *(v9 + 32) = v7;
  *(v9 + 40) = 256;
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24F92B928();

  sub_24F92B8F8();
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_24ECA7330;
  v11 = v0[16];
  v12 = v0[17];

  return MEMORY[0x2822003E8](v11, 0, 0, v12);
}

uint64_t sub_24ECA7330()
{

  return MEMORY[0x2822009F8](sub_24ECA742C, 0, 0);
}

uint64_t sub_24ECA742C()
{
  v1 = v0[16];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[11];
    sub_24ECAA1E0(v1, v9);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_24E601704(v0[11], &qword_27F21E5E8, &qword_24F95C7D0);
    }

    else
    {
      v11 = v0[14];
      v10 = v0[15];
      v13 = v0[7];
      v12 = v0[8];
      v14 = v0[6];
      sub_24ECAA250(v0[11], v10, type metadata accessor for GSKShelf);
      sub_24ECAA340(v10, v11, type metadata accessor for GSKShelf);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
      sub_24F92B8C8();
      (*(v13 + 8))(v12, v14);
      sub_24ECAA3A8(v10, type metadata accessor for GSKShelf);
    }

    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_24ECA7330;
    v16 = v0[16];
    v17 = v0[17];

    return MEMORY[0x2822003E8](v16, 0, 0, v17);
  }
}

uint64_t sub_24ECA76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a1;
  return MEMORY[0x2822009F8](sub_24ECA7704, 0, 0);
}

uint64_t sub_24ECA7704()
{
  v0[22] = 0xD000000000000019;
  v1 = v0[27];
  v0[23] = 0x800000024FA58E50;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 7)), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v0[27] + 56) + 32 * v2, (v0 + 12));
    sub_24E6585F8((v0 + 7));
    if (swift_dynamicCast())
    {
      v4 = v0[28];
      v5 = v0[24];
      v6 = v0[25];
      swift_beginAccess();
      v7 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = v0[28];
        v7 = sub_24E615CF4(0, *(v7 + 2) + 1, 1, v7);
        *(v23 + 16) = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v24 = v7;
        v25 = *(v7 + 2);
        v26 = sub_24E615CF4((v10 > 1), v9 + 1, 1, v24);
        v9 = v25;
        v7 = v26;
      }

      v0[31] = v7;
      v12 = v0[28];
      v13 = v0[29];
      *(v7 + 2) = v11;
      v14 = &v7[16 * v9];
      *(v14 + 4) = v5;
      *(v14 + 5) = v6;
      *(v12 + 16) = v7;
      swift_endAccess();
      swift_beginAccess();
      v15 = *(v13 + 16);
      v0[32] = v15;
      v16 = *(v13 + 24);
      v0[33] = v16;

      v17 = swift_task_alloc();
      v0[34] = v17;
      *v17 = v0;
      v17[1] = sub_24ECA79E4;
      v18 = v0[30];

      return sub_24E649BA4(v15, v16, v18);
    }
  }

  else
  {
    sub_24E6585F8((v0 + 7));
  }

  v20 = v0[26];
  v21 = type metadata accessor for GSKShelf(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = v0[1];

  return v22();
}

uint64_t sub_24ECA79E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ECA7C98, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[37] = v6;
    *v6 = v5;
    v6[1] = sub_24ECA7B70;
    v7 = v4[30];

    return sub_24ECA80C4(a1, v7);
  }
}

uint64_t sub_24ECA7B70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {

    v4 = sub_24ECA7F20;
  }

  else
  {
    v4 = sub_24ECA7CFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA7C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA7CFC()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[31];
  v0[2] = v0[32];
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  v0[6] = v4;

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA7DD8;
  v6 = v0[30];
  v7 = v0[26];

  return sub_24E649FCC(v7, (v0 + 2), v6);
}

uint64_t sub_24ECA7DD8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ECA802C;
  }

  else
  {

    v2 = sub_24ECA7F84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA7F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA7F84()
{

  v1 = *(v0 + 208);
  v2 = type metadata accessor for GSKShelf(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24ECA802C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA80C4(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  type metadata accessor for FriendsDataIntent(0);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for Player(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA81F4, 0, 0);
}

uint64_t sub_24ECA81F4()
{
  if (qword_27F210520 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = v0[15];
    v2 = off_27F22D100;
    v0[23] = off_27F22D100;
    os_unfair_lock_lock(v2 + 6);
    v3 = *&v2[4]._os_unfair_lock_opaque;
    v0[24] = v3;

    os_unfair_lock_unlock(v2 + 6);
    v4 = *(v1 + 16);
    v5 = MEMORY[0x277D84F90];
    v45 = v0;
    if (v4)
    {
      v6 = v0[15];
      v53 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v4, 0);
      v7 = *(v53 + 16);
      v8 = 16 * v7;
      v9 = (v6 + 40);
      do
      {
        v10 = v7;
        v12 = *(v9 - 1);
        v11 = *v9;
        v13 = *(v53 + 24);
        ++v7;

        if (v10 >= v13 >> 1)
        {
          sub_24F4578E0((v13 > 1), v7, 1);
        }

        *(v53 + 16) = v7;
        v14 = v53 + v8;
        *(v14 + 32) = v12;
        *(v14 + 40) = v11;
        v8 += 16;
        v9 += 11;
        --v4;
      }

      while (v4);
      v5 = v53;
    }

    else
    {
      v7 = *(MEMORY[0x277D84F90] + 16);
    }

    v0[25] = v5;
    v15 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v44 = MEMORY[0x277D84F90];
    v16 = 0;
    v17 = 0;
    v46 = v0 + 5;
    v47 = v7;
    v48 = v5 + 32;
    v49 = v5;
    while (v16 < *(v49 + 16))
    {
      v50 = v17;
      v51 = v16;
      v18 = (v48 + 16 * v16);
      v19 = v18[1];
      v52 = *v18;
      if (v3 >> 62)
      {
        v20 = sub_24F92C738();
        if (!v20)
        {
LABEL_24:
          v31 = v19;

          goto LABEL_25;
        }
      }

      else
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_24;
        }
      }

      sub_24F4578E0(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        goto LABEL_38;
      }

      v21 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x253052270](v21, v3);
        }

        else
        {
          v22 = *(v3 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = [v23 identifier];
        v25 = sub_24F92B0D8();
        v27 = v26;

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24F4578E0((v28 > 1), v29 + 1, 1);
        }

        ++v21;
        *(v15 + 16) = v29 + 1;
        v30 = v15 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v20 != v21);
      v0 = v45;
      v31 = v19;
LABEL_25:
      v16 = v51 + 1;
      v0[5] = v52;
      v0[6] = v31;
      v32 = swift_task_alloc();
      *(v32 + 16) = v46;
      v17 = v50;
      v33 = sub_24E6159B8(sub_24E7FA94C, v32, v15);

      if (v33)
      {

        v34 = v47;
      }

      else
      {
        v35 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F4578E0(0, *(v44 + 16) + 1, 1);
          v35 = v44;
        }

        v34 = v47;
        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24F4578E0((v36 > 1), v37 + 1, 1);
          v34 = v47;
          v35 = v44;
        }

        *(v35 + 16) = v37 + 1;
        v44 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v52;
        *(v38 + 40) = v31;
      }

      v15 = MEMORY[0x277D84F90];
      if (v16 == v34)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_34:
  v39 = objc_opt_self();
  v40 = sub_24F92B588();

  v0[26] = [v39 predicateForContactsWithIdentifiers_];

  v41 = sub_24E69A5C4(0, &qword_27F22D170, 0x277CBDAB8);
  v42 = swift_task_alloc();
  v0[27] = v42;
  *v42 = v0;
  v42[1] = sub_24ECA86F0;

  return MEMORY[0x28217F228](v0 + 11, v41, v41);
}

uint64_t sub_24ECA86F0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_24ECA9628;
  }

  else
  {
    v2 = sub_24ECA8848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24ECA8848()
{
  v30 = v0;
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v0[29] = v1;
  if (qword_27F210528 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
    v3 = sub_24F92B588();
    v0[12] = 0;
    v4 = [v1 unifiedContactsMatchingPredicate:v2 keysToFetch:v3 error:v0 + 12];

    v5 = v0[12];
    if (!v4)
    {
      v22 = v0[26];
      v23 = v5;

      sub_24F91F278();

      swift_willThrow();

      v24 = v0[1];

      v24();
      return;
    }

    v1 = v0[24];
    sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
    v6 = sub_24F92B5A8();
    v7 = v5;

    v29[0] = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      break;
    }

    v8 = *((v0[24] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_5:
    v28 = v6;
    v9 = 0;
    v10 = v0[28];
    while (1)
    {
      v11 = v0[24];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v9);
      }

      else
      {
        if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v15 = v0[25];
      v16 = [v12 identifier];
      v17 = sub_24F92B0D8();
      v19 = v18;

      v0[7] = v17;
      v0[8] = v19;
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      v1 = sub_24E6159B8(sub_24E7FAFB0, v20, v15);

      if (v1)
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        v1 = v29;
        sub_24F92C958();
      }

      else
      {
      }

      ++v9;
      if (v14 == v8)
      {
        v21 = v29[0];
        v6 = v28;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v8 = sub_24F92C738();
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_23:
  v10 = v0[28];
  v21 = MEMORY[0x277D84F90];
LABEL_24:
  v25 = v0[23];

  v29[0] = v6;

  sub_24EA0B0D8(v21);
  v0[30] = v29[0];
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock(v25 + 6);
  sub_24ECAA2B8();
  os_unfair_lock_unlock(v25 + 6);
  if (!v10)
  {

    v26 = type metadata accessor for LocalPlayerProvider(0);
    v27 = swift_task_alloc();
    v0[31] = v27;
    *v27 = v0;
    v27[1] = sub_24ECA8D00;

    MEMORY[0x28217F228](v0 + 13, v26, v26);
  }
}

uint64_t sub_24ECA8D00()
{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_24ECA96F0;
  }

  else
  {
    v2 = sub_24ECA8E50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA8E50()
{
  v0[33] = v0[13];
  sub_24F92B7F8();
  v0[34] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECA8F20, v2, v1);
}

uint64_t sub_24ECA8F20()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[17];

  swift_getKeyPath();
  v0[14] = v1;
  sub_24ECAA2F8(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24ECAA340(v1 + v4, v2, type metadata accessor for Player);
  sub_24ECAA340(v2, v3, type metadata accessor for Player);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_24ECA90D4;
  v6 = v0[16];
  v7 = v0[17];

  return sub_24E6480C8(v7, v6);
}

uint64_t sub_24ECA90D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_24ECA97C0;
  }

  else
  {
    v4 = sub_24ECA9224;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECA9224()
{
  v1 = v0[30];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[30];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v33 = MEMORY[0x277D84F98];
    goto LABEL_25;
  }

LABEL_23:
  v2 = sub_24F92C738();
  v3 = v0[30];
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_3:
  v37 = v0[18];
  v38 = v0[36];
  v39 = v0[19];
  v4 = *(v38 + 16);
  v35 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v1 = 0;
  v31 = v3 + 32;
  v32 = v5;
  v33 = MEMORY[0x277D84F98];
  v34 = v2;
  while (1)
  {
LABEL_5:
    if (v35)
    {
      v6 = MEMORY[0x253052270](v1, v0[30]);
    }

    else
    {
      if (v1 >= *(v32 + 16))
      {
        goto LABEL_22;
      }

      v6 = *(v31 + 8 * v1);
    }

    v7 = v6;
    if (__OFADD__(v1++, 1))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v4)
    {
      break;
    }

    if (v1 == v2)
    {
      goto LABEL_25;
    }
  }

  v36 = v1;
  v1 = 0;
  v9 = v0[36] + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  do
  {
    if (v1 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = v0[21];
    sub_24ECAA340(v9 + *(v39 + 72) * v1, v10, type metadata accessor for Player);
    v11 = (v10 + *(v37 + 40));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v14 = [v7 handles];
      v15 = sub_24F92B5A8();

      v0[9] = v13;
      v0[10] = v12;
      v16 = swift_task_alloc();
      *(v16 + 16) = v0 + 9;
      v17 = sub_24E6159B8(sub_24E7FAFB0, v16, v15);

      if (v17)
      {
        v19 = v0[20];
        v18 = v0[21];
        v20 = [v7 identifier];
        v21 = sub_24F92B0D8();
        v23 = v22;

        sub_24ECAA340(v18, v19, type metadata accessor for Player);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_24E81FB14(v19, v21, v23, isUniquelyReferenced_nonNull_native);

        sub_24ECAA3A8(v18, type metadata accessor for Player);
        goto LABEL_18;
      }
    }

    ++v1;
    sub_24ECAA3A8(v0[21], type metadata accessor for Player);
  }

  while (v4 != v1);

LABEL_18:
  v2 = v34;
  v1 = v36;
  if (v36 != v34)
  {
    goto LABEL_5;
  }

LABEL_25:
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[22];
  v28 = v0[17];

  sub_24ECAA3A8(v28, type metadata accessor for FriendsDataIntent);
  sub_24ECAA3A8(v27, type metadata accessor for Player);

  v29 = v0[1];

  return v29(v33);
}

uint64_t sub_24ECA9628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA96F0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ECA97C0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);

  sub_24ECAA3A8(v3, type metadata accessor for FriendsDataIntent);
  sub_24ECAA3A8(v2, type metadata accessor for Player);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24ECA98DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D178, &qword_24F993AB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F90];
  off_27F22D100 = result;
  return result;
}

void sub_24ECA9928()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F96E2B0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v1 = *MEMORY[0x277CBD098];
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = v1;
  v4 = [v2 initWithString_];

  *(v0 + 40) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = v5;
  v8 = [v6 initWithString_];

  *(v0 + 48) = v8;
  qword_27F22D108 = v0;
}

uint64_t sub_24ECA9A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return InviteFriendsSearchShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24ECA9AF4()
{
  v1 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);

  v9 = (v0 + v3 + *(v1 + 32));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  (*(v6 + 8))(v0 + ((v7 + ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_24ECA9D18(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InviteFriendsSearchShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v7);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_24E614970;

  return sub_24ECA5C9C(a1, v12, v13, v1 + v6, v14, v15, v16, v1 + v11);
}

uint64_t sub_24ECA9EB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECA9FA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24ECA6E58(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24ECAA0B8()
{

  return swift_deallocObject();
}

uint64_t sub_24ECAA100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E6541E4;

  return sub_24ECA76DC(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_24ECAA1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECAA250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECAA2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECAA340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECAA3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ECAA408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECAA4F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24ECA64A4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24ECAA62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *GameCenterDashboardAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830, &qword_24F93B8C0);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a7, &qword_27F213E68, &unk_24F93BC80);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *GameCenterDashboardAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68, &unk_24F93BC80);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v22, &qword_27F213E68, &unk_24F93BC80);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *GameCenterDashboardAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *GameCenterDashboardAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t GameCenterDashboardAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t GameCenterDashboardAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterDashboardAction(uint64_t a1)
{
  result = qword_27F22D190;
  if (!qword_27F22D190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double UnhideAppAction.appAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  a1[1] = v2;

  return result;
}

uint64_t UnhideAppAction.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UnhideAppAction.isHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *UnhideAppAction.__allocating_init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a3;
  v14 = a3[1];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  v15 = (v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  *v15 = v13;
  v15[1] = v14;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = a4;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_24F928A98();
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 1) = v20;
    *(v19 + 4) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = 0;
  v12[5] = 0;
  return v12;
}

void *UnhideAppAction.init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
  *v22 = v20;
  v22[1] = v21;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = a4;
  v46 = 0;
  memset(v45, 0, sizeof(v45));

  sub_24F928A98();
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v34 = v15;
    v26 = v16;
    v27 = a1;
    v28 = a2;
    v30 = v29;
    (*(v35 + 8))(v12, v36);
    v37 = v25;
    v38 = v30;
    a2 = v28;
    a1 = v27;
    v16 = v26;
    v15 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v45, &qword_27F235830, &qword_24F93B8C0);
  v31 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v31 + 4) = v44;
  v32 = v43;
  *v31 = v42;
  *(v31 + 1) = v32;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

void UnhideAppAction.init(deserializing:using:)()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
  sub_24F92CA88();
  __break(1u);
}

double sub_24ECABB30()
{

  return result;
}

uint64_t UnhideAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t UnhideAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnhideAppAction(uint64_t a1)
{
  result = qword_27F22D1A0;
  if (!qword_27F22D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECABEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24EA2DAEC;

  return sub_24ECABF5C(a3);
}

uint64_t sub_24ECABF5C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED20, &qword_24F95E300);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v1[23] = swift_task_alloc();
  v3 = sub_24F920A18();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for LocalPlayerProvider(0);
  v5 = swift_task_alloc();
  v1[27] = v5;
  *v5 = v1;
  v5[1] = sub_24ECAC10C;

  return MEMORY[0x28217F228](v1 + 15, v4, v4);
}

uint64_t sub_24ECAC10C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24ECACCD8;
  }

  else
  {
    v2 = sub_24ECAC220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC220()
{
  v0[29] = v0[15];
  v0[30] = sub_24F92B7F8();
  v0[31] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECAC2C0, v2, v1);
}

uint64_t sub_24ECAC2C0()
{
  v1 = v0[29];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24ECACE88(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[32] = *v2;
  v0[33] = v2[1];

  return MEMORY[0x2822009F8](sub_24ECAC3E0, 0, 0);
}

uint64_t sub_24ECAC3E0()
{
  v1 = type metadata accessor for NetworkConnectionMonitor(0);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_24ECAC490;

  return MEMORY[0x28217F228](v0 + 136, v1, v1);
}

uint64_t sub_24ECAC490()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_24ECACD58;
  }

  else
  {
    v2 = sub_24ECAC5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC5AC(uint64_t a1)
{
  v1[36] = v1[17];
  v1[37] = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECAC640, v3, v2);
}

uint64_t sub_24ECAC640()
{
  v1 = *(v0 + 288);

  swift_getKeyPath();
  *(v0 + 144) = v1;
  sub_24ECACE88(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *(v0 + 336) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24ECAC730, 0, 0);
}

uint64_t sub_24ECAC730()
{
  sub_24F920FC8();
  sub_24F9209F8();
  sub_24F9209D8();
  sub_24F9209B8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_24ECAC834;

  return MEMORY[0x28217F228](v0 + 56, v1, v1);
}

uint64_t sub_24ECAC834()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_24ECACB48;
  }

  else
  {
    v2 = sub_24ECAC948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECAC948()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_24ECACA34;
  v4 = v0[26];
  v5 = v0[22];

  return MEMORY[0x282164940](v5, v4, v1, v2);
}

uint64_t sub_24ECACA34()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ECACDD8;
  }

  else
  {
    v2 = sub_24ECACBE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECACB48()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECACBE0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = sub_24F921028();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v7 + 16);

  v9 = v0[1];

  return v9(v8 != 0);
}

uint64_t sub_24ECACCD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECACD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECACDD8()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECACE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SignOutAction.__allocating_init()()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_24F928AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24F928A98();
  v12 = sub_24F929608();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v17 = v11 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_24E65E0D4(v6, v11 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_24F993CD0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignOutAction.init()()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24F928A98();
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_24E65E064(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  v18 = v1 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_24E65E0D4(v8, v1 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v1 + 16) = xmmword_24F993CD0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignOutAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignOutAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignOutAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t SignOutAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignOutAction(uint64_t a1)
{
  result = qword_27F22D1B0;
  if (!qword_27F22D1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_24ECADC6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;

  return result;
}

double sub_24ECADD04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t sub_24ECADD4C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 48);
  return swift_endAccess();
}

uint64_t sub_24ECADE10(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t ImageButton.__allocating_init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 65) = 0u;
  sub_24E60169C(a1, &v24, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v25 + 1))
  {
    v14 = v25;
    *(v13 + 88) = v24;
    *(v13 + 104) = v14;
    *(v13 + 120) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v20 = a3;
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    v22 = v15;
    v23 = v17;
    a3 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  swift_beginAccess();
  *(v13 + 40) = v21;
  return v13;
}

uint64_t ImageButton.init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a5;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 40) = 0u;
  *(v6 + 65) = 0u;
  *(v6 + 56) = 0u;
  sub_24E60169C(a1, &v25, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v21 = a3;
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v23 = v15;
    v24 = v17;
    a3 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v25, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v18 = v29;
  *(v6 + 88) = v28;
  *(v6 + 104) = v18;
  *(v6 + 120) = v30;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  swift_beginAccess();
  *(v6 + 40) = v22;

  return v6;
}

uint64_t ImageButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ImageButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v65 = a2;
  v6 = *v4;
  v61 = v3;
  v62 = v6;
  v73 = sub_24F9285B8();
  v67 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v60 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  *(v4 + 5) = 0u;
  v57[1] = v4 + 5;
  *(v4 + 65) = 0u;
  *(v4 + 7) = 0u;
  v66 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v68 = v23;
    v69 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v68 = v25;
    v69 = v28;
  }

  sub_24F92C7F8();
  v29 = *(v13 + 8);
  v30 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v22, v12);
  v31 = v71;
  *(v4 + 11) = v70;
  *(v4 + 13) = v31;
  v4[15] = v72;
  v32 = v66;
  sub_24F928398();
  v33 = sub_24F928348();
  v35 = v34;
  v29(v19, v12);
  if (v35)
  {
    v57[2] = v30;
    v58 = v29;
    v59 = v12;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v36 = v67;
    v37 = v65;
    (*(v67 + 16))(v64, v65, v73);
    sub_24ECAEB08(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v38 = v32;
    v39 = v70;
    if (v70)
    {
      v4[2] = v33;
      v4[3] = v35;
      type metadata accessor for Action(0);
      v40 = v60;
      sub_24F928398();
      v41 = v61;
      v42 = static Action.makeInstance(byDeserializing:using:)(v40, v37);
      if (!v41)
      {
        v53 = v42;
        (*(v67 + 8))(v37, v73);
        v54 = v38;
        v56 = v58;
        v55 = v59;
        v58(v54, v59);
        v56(v40, v55);
        swift_beginAccess();
        v4[5] = v53;

        v4[4] = v39;
        return v4;
      }

      (*(v67 + 8))(v37, v73);
      v44 = v58;
      v43 = v59;
      v58(v38, v59);
      v44(v40, v43);
    }

    else
    {

      v49 = sub_24F92AC38();
      sub_24ECAEB08(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v50 = 0x6B726F77747261;
      v51 = v62;
      v50[1] = 0xE700000000000000;
      v50[2] = v51;
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D22530], v49);
      swift_willThrow();
      (*(v36 + 8))(v37, v73);
      v58(v38, v59);
    }
  }

  else
  {
    v45 = v32;
    v46 = sub_24F92AC38();
    sub_24ECAEB08(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v47 = 0x656C746974;
    v48 = v62;
    v47[1] = 0xE500000000000000;
    v47[2] = v48;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v67 + 8))(v65, v73);
    v29(v45, v12);
  }

  sub_24E601704((v4 + 6), &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8((v4 + 11));
  type metadata accessor for ImageButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ImageButton.deinit()
{

  sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 88);
  return v0;
}

uint64_t ImageButton.__deallocating_deinit()
{

  sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECAEB08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_24ECAEB60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImageButton();
  v7 = swift_allocObject();
  result = ImageButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24ECAEC0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 48, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24ECAEC78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_24ECAECC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 48, a2, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24ECAED28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_24ECAED70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

unint64_t sub_24ECAEF74()
{
  result = qword_27F22D1C8;
  if (!qword_27F22D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D1C8);
  }

  return result;
}

void sub_24ECAEFC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24ECAF030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F22D1D0);
  __swift_project_value_buffer(v0, qword_27F22D1D0);
  return sub_24F928C68();
}

uint64_t static SearchLandingDiffablePagePresenter.useTestLandingPageKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210530 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  v3 = __swift_project_value_buffer(v2, qword_27F22D1D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t SearchLandingDiffablePagePresenter.TestParameters.rawValue.getter()
{
  v1 = 0x416564756C636E69;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

GameStoreKit::SearchLandingDiffablePagePresenter::TestParameters_optional __swiftcall SearchLandingDiffablePagePresenter.TestParameters.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ECAF2F0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ECAF3C4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24ECAF484()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ECAF560(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007364;
  v3 = 0x416564756C636E69;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000017;
    v2 = 0x800000024FA430D0;
  }

  v4 = 0xD000000000000010;
  v5 = 0x800000024FA43090;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x800000024FA430B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24ECAF600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91EC58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v44 - v6;
  v58 = sub_24F91EB98();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = v44 - v11;
  v12 = sub_24F91F4A8();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = v44 - v18;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210530 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27F22D1D0);
  sub_24F928868();

  v59 = v5;
  v19 = v53;
  v20 = v51;
  sub_24F91F488();
  sub_24E60169C(v20, v16, &qword_27F228530, &unk_24F93C6E0);
  v21 = v52;
  if ((*(v52 + 48))(v16, 1, v19) == 1)
  {
    sub_24E601704(v20, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v16, &qword_27F228530, &unk_24F93C6E0);
    return (*(v21 + 56))(a1, 1, 1, v19);
  }

  else
  {
    (*(v21 + 32))(v49, v16, v19);
    v23 = v50;
    sub_24F91EBE8();
    v45 = v3;
    v44[0] = *(v3 + 48);
    v24 = (v44[0])(v23, 1, v2);
    v46 = v2;
    v47 = a1;
    v44[1] = v3 + 48;
    if (v24 || (v26 = sub_24F91EBC8()) == 0)
    {

      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      v25 = v26;
    }

    v27 = 0;
    v56 = 0x800000024FA430B0;
    v57 = 0x800000024FA430D0;
    v28 = (v54 + 8);
    v54 = v8 + 32;
    v55 = 0x800000024FA43090;
    do
    {
      ++v27;
      v62 = 0;
      v63 = 0xE000000000000000;
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      sub_24F928C68();
      sub_24F928868();

      (*v28)(v7, v59);
      if (v61 == 2 || (v61 & 1) == 0)
      {
        v29 = 0xE500000000000000;
        v30 = 0x65736C6166;
      }

      else
      {
        v29 = 0xE400000000000000;
        v30 = 1702195828;
      }

      MEMORY[0x253050C20](v30, v29);

      sub_24F91EB68();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_24E618F30(0, v25[2] + 1, 1, v25);
      }

      v32 = v25[2];
      v31 = v25[3];
      if (v32 >= v31 >> 1)
      {
        v25 = sub_24E618F30((v31 > 1), v32 + 1, 1, v25);
      }

      v25[2] = v32 + 1;
      (*(v8 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, v60, v58);
    }

    while (v27 != 4);
    v33 = v50;
    v34 = v46;
    v35 = v44[0];
    v36 = (v44[0])(v50, 1, v46);
    v37 = v47;
    if (v36)
    {
    }

    else
    {
      sub_24F91EBD8();
    }

    v39 = v51;
    v38 = v52;
    v40 = v35(v33, 1, v34);
    v41 = v45;
    v42 = v53;
    if (v40)
    {
      (*(v38 + 8))(v49, v53);
      sub_24E601704(v39, &qword_27F228530, &unk_24F93C6E0);
      (*(v38 + 56))(v37, 1, 1, v42);
    }

    else
    {
      v43 = v48;
      (*(v45 + 16))(v48, v33, v34);
      sub_24F91EBF8();
      (*(v41 + 8))(v43, v34);
      (*(v38 + 8))(v49, v42);
      sub_24E601704(v39, &qword_27F228530, &unk_24F93C6E0);
    }

    return sub_24E601704(v33, &qword_27F219F98, &unk_24F94D890);
  }
}

uint64_t SearchLandingDiffablePagePresenter.__allocating_init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  swift_allocObject();
  return SearchLandingDiffablePagePresenter.init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)(a1, v4, a3);
}

uint64_t SearchLandingDiffablePagePresenter.init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v102 = a3;
  LODWORD(v93) = a2;
  v99 = sub_24F92BEE8();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24F92BE88();
  MEMORY[0x28223BE20](v94);
  v96 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v95 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v87 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v87 - v14;
  v16 = sub_24F9288E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v3 + qword_27F39C308);
  *v20 = 0;
  v20[1] = 0;
  v21 = v3 + qword_27F39C310;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v3 + qword_27F39C318) = 0;
  v22 = qword_27F39C320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D1E8, &qword_24F993ED8);
  swift_allocObject();
  *(v3 + v22) = sub_24F92ADA8();
  v23 = qword_27F22D1F0;
  *(v4 + v23) = [objc_opt_self() defaultCenter];
  v24 = (v4 + qword_27F22D1F8);
  *v24 = 0u;
  v24[1] = 0u;
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928F28();
  *(v4 + qword_27F22D200) = v106[0];
  v100 = v12;
  v101 = a1;
  if (v93)
  {
    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();
    sub_24F92A758();
    v25 = v106[0];
    v93 = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = *(v17 + 104);
    v90 = *MEMORY[0x277D21C38];
    v89 = v27;
    v27(v19);
    v87[1] = v26;
    sub_24F92A368();
    v88 = *(v17 + 8);
    v88(v19, v16);
    sub_24F92A408();
    v87[0] = v16;
    v91 = *(v91 + 8);
    (v91)(v15, v13);
    v28 = v106[0];
    type metadata accessor for FastImpressionsTracker();
    v29 = swift_allocObject();
    *(v29 + 3) = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v92 = v25;
    swift_allocObject();
    *(v29 + 5) = sub_24F929E98();
    swift_allocObject();
    *(v29 + 6) = sub_24F929E98();
    v93 = v29;
    *(v29 + 4) = v28;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v30 = v87[0];
    v89(v19, v90, v87[0]);
    sub_24F92A368();
    v88(v19, v30);
    sub_24F92A408();
    (v91)(v15, v13);
    v31 = v106[0];
    type metadata accessor for FastImpressionFlushGate();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32[4] = 0;
    v32[5] = 0;
    v32[2] = v31;
    *(v4 + qword_27F22D208) = v32;

    sub_24ECAF600(v100);
    sub_24E615E00(v102, v106);
    v91 = sub_24ECB2128(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
    *(v4 + qword_27F39CC00) = 0;
    v33 = MEMORY[0x277D84F90];
    *(v4 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v4 + qword_27F2326C8) = 0;
    v34 = *(*v4 + 640);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50, &qword_24F993EE0);
    v36 = *(*(v35 - 8) + 56);
    v36(v4 + v34, 1, 1, v35);
    v37 = *(*v4 + 648);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
    (*(*(v38 - 8) + 56))(v4 + v37, 1, 1, v38);
    v39 = *(*v4 + 656);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48, &unk_24F989E20);
    (*(*(v40 - 8) + 56))(v4 + v39, 1, 1, v40);
    v36(v4 + *(*v4 + 664), 1, 1, v35);
    v41 = *(*v4 + 672);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
    (*(*(v42 - 8) + 56))(v4 + v41, 1, 1, v42);
    v43 = *(*v4 + 680);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
    (*(*(v44 - 8) + 56))(v4 + v43, 1, 1, v44);
    v45 = *(*v4 + 688);
    sub_24E74EC40();

    sub_24F927DA8();
    v104 = v33;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    (*(v97 + 104))(v98, *MEMORY[0x277D85260], v99);
    *(v4 + v45) = sub_24F92BF38();
    sub_24EBD3128(v4 + *(*v4 + 696));
    v46 = (v4 + *(*v4 + 704));
    *v46 = 0u;
    v46[1] = 0u;
    *(v46 + 25) = 0u;
    v47 = *(*v4 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
    swift_allocObject();
    *(v4 + v47) = sub_24F92ADA8();
    v48 = *(*v4 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
    swift_allocObject();
    *(v4 + v48) = sub_24F92ADA8();
    v49 = *(*v4 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    swift_allocObject();
    *(v4 + v49) = sub_24F92ADA8();
    *(v4 + *(*v4 + 736)) = 0;
    v50 = (v4 + *(*v4 + 752));
    *v50 = 0;
    v50[1] = 0;
    v51 = v100;
    sub_24E60169C(v100, v4 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
    sub_24E60169C(v106, v4 + *(*v4 + 744), &qword_27F229490, &unk_24F984C40);
    v52 = type metadata accessor for InlineUnifiedMessagePresenter();
    v103.receiver = objc_allocWithZone(v52);
    v103.super_class = v52;
    *(v4 + qword_27F39CC08) = objc_msgSendSuper2(&v103, sel_init);
    v53 = v101;

    v54 = v93;

    v55 = sub_24EBBA130(v53, v54, v91, 0);
    v56 = *(*v55 + 1112);

    *(v55 + qword_27F39CC00) = v56(0);

    sub_24EBC80D0(0);

    __swift_destroy_boxed_opaque_existential_1(v102);
    sub_24E601704(v106, &qword_27F229490, &unk_24F984C40);
    v57 = v51;
  }

  else
  {
    *(v4 + qword_27F22D208) = 0;

    sub_24ECAF600(v12);
    sub_24E615E00(v102, v106);
    *(v4 + qword_27F39CC00) = 0;
    v58 = MEMORY[0x277D84F90];
    *(v4 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v4 + qword_27F2326C8) = 0;
    v59 = *(*v4 + 640);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50, &qword_24F993EE0);
    v61 = *(*(v60 - 8) + 56);
    v61(v4 + v59, 1, 1, v60);
    v62 = *(*v4 + 648);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
    (*(*(v63 - 8) + 56))(v4 + v62, 1, 1, v63);
    v64 = *(*v4 + 656);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48, &unk_24F989E20);
    (*(*(v65 - 8) + 56))(v4 + v64, 1, 1, v65);
    v61(v4 + *(*v4 + 664), 1, 1, v60);
    v66 = *(*v4 + 672);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
    (*(*(v67 - 8) + 56))(v4 + v66, 1, 1, v67);
    v68 = *(*v4 + 680);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
    (*(*(v69 - 8) + 56))(v4 + v68, 1, 1, v69);
    v70 = *(*v4 + 688);
    sub_24E74EC40();
    sub_24F927DA8();
    v104 = v58;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    (*(v97 + 104))(v98, *MEMORY[0x277D85260], v99);
    *(v4 + v70) = sub_24F92BF38();
    sub_24EBD3128(v4 + *(*v4 + 696));
    v71 = (v4 + *(*v4 + 704));
    *v71 = 0u;
    v71[1] = 0u;
    *(v71 + 25) = 0u;
    v72 = *(*v4 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
    swift_allocObject();
    *(v4 + v72) = sub_24F92ADA8();
    v73 = *(*v4 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
    swift_allocObject();
    *(v4 + v73) = sub_24F92ADA8();
    v74 = *(*v4 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    swift_allocObject();
    *(v4 + v74) = sub_24F92ADA8();
    *(v4 + *(*v4 + 736)) = 0;
    v75 = (v4 + *(*v4 + 752));
    *v75 = 0;
    v75[1] = 0;
    v76 = v100;
    sub_24E60169C(v100, v4 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
    sub_24E60169C(v106, v4 + *(*v4 + 744), &qword_27F229490, &unk_24F984C40);
    v77 = type metadata accessor for InlineUnifiedMessagePresenter();
    v105.receiver = objc_allocWithZone(v77);
    v105.super_class = v77;
    *(v4 + qword_27F39CC08) = objc_msgSendSuper2(&v105, sel_init);

    v55 = sub_24EBBA130(v78, 0, 0, 0);
    v79 = *(*v55 + 1112);

    *(v55 + qword_27F39CC00) = v79(0);

    sub_24EBC80D0(0);

    __swift_destroy_boxed_opaque_existential_1(v102);
    sub_24E601704(v106, &qword_27F229490, &unk_24F984C40);
    v57 = v76;
  }

  sub_24E601704(v57, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for FastImpressionsTracker();
  v80 = swift_dynamicCastClass();
  if (v80)
  {
    v81 = v80;
    swift_beginAccess();
    *(v81 + 24) = &protocol witness table for SearchLandingDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v82 = *(v55 + qword_27F22D208);
    if (v82)
    {
      v83 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v84 = *(v82 + 32);
      v85 = *(v82 + 40);
      *(v82 + 32) = sub_24ECB2120;
      *(v82 + 40) = v83;

      sub_24E824448(v84, v85);
    }
  }

  return v55;
}

double sub_24ECB1380(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9287F8();
    v3 = __swift_project_value_buffer(v2, qword_27F2230A0);
    sub_24ED47ED4(v3);
  }

  return result;
}

uint64_t sub_24ECB141C()
{

  return sub_24E601704(v0 + qword_27F22D1F8, &qword_27F2129B0, &unk_24F945320);
}

uint64_t SearchLandingDiffablePagePresenter.deinit()
{
  sub_24E60169C(v0 + qword_27F22D1F8, &v5, &qword_27F2129B0, &unk_24F945320);
  if (v6)
  {
    sub_24E612B0C(&v5, &v7);
    v1 = *(v0 + qword_27F22D1F0);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    v2 = v1;
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F2129B0, &unk_24F945320);
  }

  v3 = sub_24EBBF0D0();

  sub_24E601704(v3 + qword_27F22D1F8, &qword_27F2129B0, &unk_24F945320);
  return v3;
}

uint64_t SearchLandingDiffablePagePresenter.__deallocating_deinit()
{
  SearchLandingDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchLandingDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39C308);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchLandingDiffablePagePresenter.maxShelfRowCount.getter()
{
  v1 = v0 + qword_27F39C310;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchLandingDiffablePagePresenter.prefersSmallShelfTitles.getter()
{
  v1 = qword_27F39C318;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ECB1750(uint64_t a1)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v51 - v9, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v60 = v1[3];
  swift_beginAccess();
  v12 = v1[4];
  type metadata accessor for SearchLandingDiffablePageContentPresenter(0);
  v13 = swift_allocObject();
  v52 = v10;
  sub_24E60169C(v10, v7, &qword_27F228530, &unk_24F93C6E0);
  v14 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_24E911D90(v7, v16 + v14);
  *(v16 + v15) = v11;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v12;
  v18 = v11;
  v51 = v11;
  v19 = v17;
  sub_24E60169C(v10, v4, &qword_27F228530, &unk_24F93C6E0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24ECB2574;
  *(v20 + 24) = v18;
  v54 = v20;
  *(v13 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v13 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  swift_retain_n();
  v58 = v12;
  swift_retain_n();
  v23 = v16;

  *(v13 + v22) = sub_24E60986C(v21);
  v24 = (v13 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v13 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v56 = v25;
  v26 = (v13 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v13 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v55 = v27;
  v28 = (v13 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v53 = v28;
  v29 = (v13 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v13 + qword_27F39C790) = 0;
  *(v13 + qword_27F22F1D0) = 0;
  *(v13 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v13 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58, &qword_24F989E30);
  swift_allocObject();
  *(v13 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v13 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70, &qword_24F989E40);
  swift_allocObject();
  *(v13 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v13 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v13 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v36 = sub_24F92ADA8();

  v37 = v19;

  v38 = v51;

  sub_24E601704(v52, &qword_27F228530, &unk_24F93C6E0);
  *(v13 + v35) = v36;
  v39 = qword_27F22F1E0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v41 = *(*(v40 - 8) + 56);
  v41(v13 + v39, 1, 1, v40);
  v42 = v40;
  v43 = v59;
  v41(v13 + qword_27F22F1E8, 1, 1, v42);
  *(v13 + 16) = v38;
  sub_24E911D90(v57, v13 + qword_27F39C7D0);
  *v24 = sub_24ECB2478;
  v24[1] = v23;
  *v26 = 0;
  v26[1] = 0;
  if (v43)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = sub_24E965688;
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  v46 = v55;
  v47 = v56;
  *v56 = v45;
  v47[1] = v44;
  *v46 = sub_24ECB256C;
  v46[1] = v37;
  v49 = v53;
  v48 = v54;
  *v53 = sub_24ECB25B4;
  v49[1] = v48;
  *(v13 + qword_27F22F1F0) = v60;
  *(v13 + qword_27F39C7D8) = v58;
  return v13;
}

double sub_24ECB1D9C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  sub_24F2F44C8(*a1, a1[1], v2);
  if ((v2 & 0x80000000) == 0)
  {

    if (*&v1[OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage])
    {

      sub_24F92AD88();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24ECB1E54(uint64_t a1, char a2)
{
  v3 = a1;
  sub_24F2F6D5C(a1, a2);
  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount + 8);
  v6 = v2 + qword_27F39C310;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  LOBYTE(v3) = *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles);
  v7 = qword_27F39C318;
  result = swift_beginAccess();
  *(v2 + v7) = v3;
  return result;
}

Swift::Void __swiftcall SearchLandingDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_27F22D208);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_24ECB2170;
      v9[5] = v4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_24ECAEFC8;
      v9[3] = &block_descriptor_66;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_24ECB20E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECB2128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ECB2194()
{
  result = qword_27F22D218;
  if (!qword_27F22D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D218);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F22D230;
  if (!qword_27F22D230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB233C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECB2478(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24ECF37DC(a1, v1 + v4, v6, v7);
}

uint64_t sub_24ECB252C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECB257C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECB25BC()
{

  return swift_deallocObject();
}

uint64_t SearchGhostHintFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchGhostHintFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchGhostHintFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v2, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929AC8();
  if (v6)
  {
    sub_24E612E28(&v5, v7);
    sub_24ECB2910(v7, a1);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_24ECB2BA8(&v5);
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24ECB2910(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = MEMORY[0x277D837D0];
  if (!v8 || (v24 = MEMORY[0x277D837D0], v22 = v7, v23 = v8, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    if (!v14 || (v24 = v9, v22 = v13, v23 = v14, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (!v18 || (v24 = v9, v22 = v17, v23 = v18, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_24F929A28(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
      {
        v19 = a1[3];
        v20 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v19);
        result = (*(v20 + 32))(v19, v20);
        if (v21)
        {
          v24 = v9;
          v22 = result;
          v23 = v21;
          __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
          sub_24F929A28();
          return __swift_destroy_boxed_opaque_existential_1(&v22);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24ECB2BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224FA8, &qword_24F974A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECB2C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ECB2CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SearchGhostHintFieldsProvider(uint64_t a1)
{
  result = qword_27F22D240;
  if (!qword_27F22D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB2DC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECB2E84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RefreshChallengeDetailAction(uint64_t a1)
{
  result = qword_27F22D250;
  if (!qword_27F22D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB2F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D260, &qword_24F9941B0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  refreshed = type metadata accessor for RefreshChallengeDetailAction(0);
  MEMORY[0x28223BE20](refreshed);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECB32F8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = refreshed;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E862F10();
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24ECB334C(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24ECB33B0(v10);
}

uint64_t sub_24ECB3268(uint64_t a1)
{
  v2 = sub_24ECB32F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECB32A4(uint64_t a1)
{
  v2 = sub_24ECB32F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ECB32F8()
{
  result = qword_27F22D268;
  if (!qword_27F22D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D268);
  }

  return result;
}

uint64_t sub_24ECB334C(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24ECB33B0(uint64_t a1)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

unint64_t sub_24ECB3420()
{
  result = qword_27F22D270;
  if (!qword_27F22D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D270);
  }

  return result;
}

unint64_t sub_24ECB3478()
{
  result = qword_27F22D278;
  if (!qword_27F22D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D278);
  }

  return result;
}

unint64_t sub_24ECB34D0()
{
  result = qword_27F22D280;
  if (!qword_27F22D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D280);
  }

  return result;
}

uint64_t static MetricsSuppression.isMetricsSuppressed.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F22D288 = a1;
  return result;
}

uint64_t sub_24ECB3608@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F22D288;
  return result;
}

uint64_t sub_24ECB3654(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F22D288 = v1;
  return result;
}

uint64_t sub_24ECB36C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECB3780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SetNicknameAction(uint64_t a1)
{
  result = qword_27F22D290;
  if (!qword_27F22D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECB3870(uint64_t a1)
{
  sub_24ECB390C(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ECB390C(uint64_t a1)
{
  if (!qword_27F228E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    v1 = sub_24F9271C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F228E40);
    }
  }
}

uint64_t AttributedString.init(nqml:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X8>)
{
  v5 = a3[3];
  v18[2] = a3[2];
  v18[3] = v5;
  v18[4] = a3[4];
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  if (a2)
  {
    v9 = a3[3];
    v17[2] = a3[2];
    v17[3] = v9;
    v17[4] = a3[4];
    v10 = a3[1];
    v17[0] = *a3;
    v17[1] = v10;
    v11 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v12 = sub_24ECB3C7C(a1, a2, v17);
    sub_24ECB3F40(a4);

    v13 = sub_24F91F008();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 0, 1, v13);
  }

  else
  {
    sub_24E951D6C(v18);
    v16 = sub_24F91F008();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t type metadata accessor for NqmlAttributedStringGenerator(uint64_t a1)
{
  result = qword_27F22D2F0;
  if (!qword_27F22D2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECB3B34()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D2A0);
  __swift_project_value_buffer(v4, qword_27F22D2A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

char *sub_24ECB3C7C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v24 = sub_24F91EF78();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
  *&v4[v13] = sub_24E60952C(MEMORY[0x277D84F90]);
  v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything] = 0;
  v14 = objc_allocWithZone(ASKNQMLParser);
  v15 = sub_24F92B098();

  v16 = [v14 initWithString_];

  *&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser] = v16;
  v17 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_configuration];
  v18 = a3[3];
  v17[2] = a3[2];
  v17[3] = v18;
  v17[4] = a3[4];
  v19 = a3[1];
  *v17 = *a3;
  v17[1] = v19;
  sub_24F91EFF8();
  v20 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  (*(v10 + 32))(&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator], v12, v9);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v4[v20], v9);
  sub_24F91EE28();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 32))(&v4[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex], v8, v24);
  v21 = type metadata accessor for NqmlAttributedStringGenerator(0);
  v25.receiver = v4;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  [*&v22[OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser] setDelegate_];
  return v22;
}

uint64_t sub_24ECB3F40@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_24F91EF78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F008();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, v2 + v11, v7);
  sub_24F91EE28();
  (*(v8 + 8))(v10, v7);
  v13 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v13, v6, v3);
  swift_endAccess();
  [*(v2 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_parser) parse];
  sub_24ECB4150();
  return (v12)(v16, v2 + v11, v7);
}

void sub_24ECB4150()
{
  v38 = sub_24F91EF78();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v4;
  v5 = sub_24F91EE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F91F008();
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v40 = v0;
  swift_beginAccess();
  v30 = *(v9 + 16);
  v32 = v9 + 16;
  v28 = (v9 + 8);
  v35 = (v1 + 8);
  v29 = (v6 + 8);
  while (1)
  {
    v15 = v31;
    v16 = v33;
    v30(v31, v40 + v39, v33);
    sub_24F91EE18();
    (*v28)(v15, v16);
    sub_24ECB76EC(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    if (sub_24F92BBE8())
    {
      (*v29)(v8, v5);
      return;
    }

    v17 = v37;
    sub_24F92BC08();
    v18 = sub_24ECB76EC(&qword_27F22D310, MEMORY[0x277CC8B30], MEMORY[0x277CC8B38]);
    v19 = v36;
    v34 = v18;
    sub_24F92AF58();
    v20 = *v35;
    v21 = v38;
    (*v35)(v17, v38);
    v22 = sub_24F92BC88();

    v22(v45, 0);
    v20(v19, v21);
    (*v29)(v8, v5);
    v23 = sub_24F92B098();

    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    v24 = qword_27F39DBA8;
    if ([v23 length] < 1)
    {

      return;
    }

    v25 = [v23 length];
    if (__OFSUB__(v25, 1))
    {
      break;
    }

    v26 = [v24 characterIsMember_];

    if ((v26 & 1) == 0)
    {
      return;
    }

    swift_beginAccess();
    v27 = sub_24F91EE08();
    if (sub_24F92BBE8())
    {
      goto LABEL_17;
    }

    sub_24ECB76EC(&qword_27F22D318, MEMORY[0x277CC8B30], MEMORY[0x277CC8B50]);
    sub_24F92BCA8();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v11 = v37;
      sub_24F92BC08();
      v12 = v36;
      sub_24F92AF58();
      v13 = v11;
      v14 = v38;
      v20(v13, v38);
      sub_24F92BCB8();
      v20(v12, v14);
    }

    v27(v45, 0);
    swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_24ECB495C(char *a1)
{
  v2 = sub_24F91F008();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;

  sub_24F91EE58();
  swift_beginAccess();
  sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  sub_24F91EF88();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
}

void sub_24ECB4ACC()
{
  swift_beginAccess();

  v1 = sub_24ECB500C(v0);

  v2 = v1[2];
  v28 = v2;
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_24F4588C0(0, v2, 0);
    v3 = v1 + 8;
    v4 = sub_24F92C6B8();
    v5 = v28;
    v6 = 0;
    do
    {
      if (v4 < 0 || v4 >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v8 = v4 >> 6;
      v9 = 1 << v4;
      if ((v3[v4 >> 6] & (1 << v4)) == 0)
      {
        goto LABEL_27;
      }

      v10 = *(v1[6] + 8 * v4);
      v11 = *(v1 + 9);
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v26 = *(v1 + 9);
        v27 = v4;
        sub_24F4588C0((v12 > 1), v13 + 1, 1);
        v5 = v28;
        v11 = v26;
        v4 = v27;
      }

      *(v29 + 16) = v13 + 1;
      *(v29 + 8 * v13 + 32) = v10;
      v7 = 1 << *(v1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_28;
      }

      v14 = v3[v8];
      if ((v14 & v9) == 0)
      {
        goto LABEL_29;
      }

      if (v11 != *(v1 + 9))
      {
        goto LABEL_30;
      }

      v15 = v14 & (-2 << (v4 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = &v1[v8 + 9];
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_24E6586A8(v4, v11, 0);
            v5 = v28;
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_24E6586A8(v4, v11, 0);
        v5 = v28;
      }

LABEL_4:
      ++v6;
      v4 = v7;
    }

    while (v6 != v5);

    v21 = *(v29 + 16);
    if (!v21)
    {
LABEL_23:

      return;
    }

    v22 = 0;
    v23 = 32;
    while (1)
    {
      v24 = *(v29 + v23);
      v25 = __CFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        break;
      }

      v23 += 8;
      if (!--v21)
      {
        goto LABEL_23;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
  }
}

id sub_24ECB4DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NqmlAttributedStringGenerator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24ECB4F14(uint64_t a1)
{
  result = sub_24F91F008();
  if (v2 <= 0x3F)
  {
    result = sub_24F91EF78();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t *sub_24ECB500C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24ECB51E4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24ECB516C(v8, v4, v2);
  result = MEMORY[0x2530542D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_24ECB516C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24ECB51E4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_24ECB51E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_24ECB5764(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_24ECB5764(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECB52D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D360, &qword_24F93AE10);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ECB550C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213638, &unk_24F973260);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ECB5764(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D300, &unk_24F93ADB0);
  result = sub_24F92CB58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_24F92D068();
    MEMORY[0x253052A00](v17);
    result = sub_24F92D0B8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_24ECB5984(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328, &unk_24F9943B8);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v59);
  v60 = &v51 - v8;
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91EF78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return;
      }

      goto LABEL_7;
    }

    v21 = v18;
    v22 = 32;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v21 = v18;
        v22 = 1;
        goto LABEL_11;
      }

LABEL_7:
      if (qword_27F210538 == -1)
      {
LABEL_8:
        v23 = sub_24F92AAE8();
        __swift_project_value_buffer(v23, qword_27F22D2A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F9283A8();
        type metadata accessor for NqmlTextElement(0);
        v63[3] = v24;
        v63[0] = a1;
        sub_24F928438();
        sub_24E601704(v63, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A5A8();

        return;
      }

LABEL_24:
      swift_once();
      goto LABEL_8;
    }

    v21 = v18;
    v22 = 2;
  }

LABEL_11:
  v56 = v22;
  v25 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v26 = *(v10 + 16);
  v55 = v25;
  v26(v12, v2 + v25, v9);
  a1 = v20;
  sub_24F91EFB8();
  (*(v10 + 8))(v12, v9);
  sub_24ECB4ACC();
  if ((v28 & 1) == 0)
  {
    v52 = v27;
    v29 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = *(v14 + 16);
    v31 = v2 + v29;
    v32 = v21;
    v30(v16, v31, v21);
    sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    if ((sub_24F92AF98() & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v54 = v14;
    v33 = *(v14 + 32);
    v33(v7, v16, v21);
    v53 = v20;
    v34 = v58;
    v30(&v7[*(v58 + 48)], v20, v21);
    v35 = v57;
    sub_24ECB760C(v7, v57);
    v36 = *(v34 + 48);
    v33(v60, v35, v32);
    v37 = *(v54 + 8);
    v37(v35 + v36, v32);
    sub_24ECB767C(v7, v35);
    v38 = *(v34 + 48);
    a1 = v53;
    v39 = v60;
    v33(&v60[*(v59 + 36)], (v35 + v38), v32);
    v40 = v35;
    v21 = v32;
    v37(v40, v32);
    swift_beginAccess();
    sub_24E658594();
    v41 = sub_24F91F048();
    v61 = v52;
    v62 = 0;
    sub_24EA5BFF0();
    sub_24F91F148();
    v41(v63, 0);
    v14 = v54;
    sub_24E601704(v39, &qword_27F22D330, &unk_24F93FBE0);
    swift_endAccess();
  }

  v42 = a1;
  v43 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
  swift_beginAccess();
  v44 = *(v2 + v43);
  if (*(v44 + 16))
  {
    a1 = v56;
    v45 = sub_24E76DAA8(v56);
    if (v46)
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = v47 + 1;
      if (!__OFADD__(v47, 1))
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_23;
    }

    v48 = 1;
  }

  else
  {
    a1 = v56;
    v48 = 1;
  }

LABEL_20:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v2 + v43);
  *(v2 + v43) = 0x8000000000000000;
  sub_24E820718(v48, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v43) = v61;
  swift_endAccess();
  v50 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v14 + 40))(v2 + v50, v42, v21);
  swift_endAccess();
}

uint64_t sub_24ECB60E8(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328, &unk_24F9943B8);
  MEMORY[0x28223BE20](v58);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v59);
  v10 = &v50 - v9;
  v11 = sub_24F91EF78();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - v15;
  v16 = sub_24F91F008();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {

        sub_24F91EE58();
        swift_beginAccess();
        sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
        sub_24F91EF88();
        (*(v17 + 8))(v19, v16);
        return swift_endAccess();
      }

      goto LABEL_11;
    }

    v57 = v10;
    v20 = 32;
LABEL_10:
    v56 = v20;
    sub_24ECB4ACC();
    if (v22)
    {
      goto LABEL_11;
    }

    v55 = v21;
    v26 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
    swift_beginAccess();
    v27 = *(v17 + 16);
    v54 = v26;
    v27(v19, v2 + v26, v16);
    v28 = v60;
    sub_24F91EFB8();
    (*(v17 + 8))(v19, v16);
    v29 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = v61;
    v53 = *(v61 + 16);
    v53(v13, v2 + v29, v11);
    sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_24F92AF98();
    if (result)
    {
      v52 = v29;
      v51 = v2;
      v31 = v30;
      v32 = *(v30 + 32);
      v32(v8, v13, v11);
      v33 = v58;
      v53(&v8[*(v58 + 48)], v28, v11);
      sub_24ECB760C(v8, v5);
      v34 = *(v33 + 48);
      v32(v57, v5, v11);
      v35 = v51;
      v36 = *(v31 + 8);
      v36(&v5[v34], v11);
      sub_24ECB767C(v8, v5);
      v37 = *(v33 + 48);
      v38 = v35;
      v39 = v57;
      v32(&v57[*(v59 + 36)], &v5[v37], v11);
      v36(v5, v11);
      v40 = v52;
      swift_beginAccess();
      sub_24E658594();
      v41 = sub_24F91F048();
      v62 = v55;
      v63 = 0;
      sub_24EA5BFF0();
      sub_24F91F148();
      v41(v64, 0);
      sub_24E601704(v39, &qword_27F22D330, &unk_24F93FBE0);
      swift_endAccess();
      v42 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_openInlinePresentationIntents;
      swift_beginAccess();
      v43 = *(v38 + v42);
      if (!*(v43 + 16))
      {
        goto LABEL_19;
      }

      result = sub_24E76DAA8(v56);
      if ((v44 & 1) == 0)
      {
        goto LABEL_19;
      }

      v45 = *(*(v43 + 56) + 8 * result);
      v46 = __OFSUB__(v45, 1);
      v47 = v45 - 1;
      if (!v46)
      {
        v48 = v47 & ~(v47 >> 63);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v38 + v42);
        *(v38 + v42) = 0x8000000000000000;
        sub_24E820718(v48, v56, isUniquelyReferenced_nonNull_native);
        *(v38 + v42) = v62;
        swift_endAccess();
LABEL_19:
        swift_beginAccess();
        (*(v61 + 40))(v38 + v40, v60, v11);
        return swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v57 = v10;
  if (!a1)
  {
    v20 = 2;
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v20 = 1;
    goto LABEL_10;
  }

LABEL_11:
  if (qword_27F210538 != -1)
  {
    swift_once();
  }

  v23 = sub_24F92AAE8();
  __swift_project_value_buffer(v23, qword_27F22D2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  type metadata accessor for NqmlTextElement(0);
  v64[3] = v24;
  v64[0] = a1;
  sub_24F928438();
  sub_24E601704(v64, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

void sub_24ECB68E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F91EF78();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - v5;
  v55 = sub_24F91EE38();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v56 = sub_24F91F008();
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v18 = sub_24F92B098();
  v19 = [v17 initWithString_];

  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v20 = qword_27F39DBA0;
  if (qword_27F39DBA0)
  {
    v21 = [v19 length];
    v22 = sub_24F92B098();
    [v20 replaceMatchesInString:v19 options:0 range:0 withTemplate:{v21, v22}];
  }

  v52 = v19;
  v23 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v24 = v57;
  swift_beginAccess();
  v25 = *(v11 + 16);
  v26 = v24 + v23;
  v27 = v56;
  v25(v16, v26, v56);
  sub_24F91EE18();
  v53 = *(v11 + 8);
  v54 = v11 + 8;
  v53(v16, v27);
  sub_24F26D05C();
  v29 = v28;
  v30 = *(v6 + 8);
  v48 = v6 + 8;
  v46 = v30;
  v30(v10, v55);
  if (v29)
  {
    v31 = sub_24F92B098();

    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    v32 = qword_27F39DBA8;
    if ([v31 length] < 1)
    {
    }

    else
    {
      v33 = [v31 length];
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
        return;
      }

      v34 = [v32 characterIsMember_];

      if (v34)
      {
        sub_24F0A8444(v32);
      }
    }
  }

  v35 = v56;
  v25(v13, v57 + v23, v56);
  v36 = v45;
  sub_24F91EE18();
  v53(v13, v35);
  sub_24ECB76EC(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v37 = v47;
  v38 = v55;
  sub_24F92BB88();
  v39 = v49;
  sub_24F92BC08();
  sub_24ECB76EC(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v40 = v51;
  LOBYTE(v35) = sub_24F92AFF8();
  v41 = *(v50 + 8);
  v41(v39, v40);
  v41(v37, v40);
  v46(v36, v38);
  v42 = v52;
  if (v35)
  {
    if (qword_27F210F48 != -1)
    {
      swift_once();
    }

    sub_24F0A8444(qword_27F39DBA8);
  }

  v43 = v42;
  sub_24F92B168();
  sub_24F91EE58();
  swift_beginAccess();
  sub_24ECB76EC(&qword_27F22D320, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v44 = v56;
  sub_24F91EF88();
  v53(v13, v44);
  swift_endAccess();
}

uint64_t sub_24ECB6F54(uint64_t a1)
{
  if (qword_27F210538 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F22D2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything) = 0;
  return result;
}

void sub_24ECB7134()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328, &unk_24F9943B8);
  MEMORY[0x28223BE20](v35);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v36);
  v37 = v32 - v5;
  v6 = sub_24F91F008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  v38 = v0;
  sub_24ECB4ACC();
  if (v18)
  {
    goto LABEL_4;
  }

  v33 = v17;
  v19 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_accumulator;
  v20 = v38;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v32[1] = v19;
  v21(v9, v20 + v19, v6);
  sub_24F91EFB8();
  (*(v7 + 8))(v9, v6);
  v22 = OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  v23 = v11[2];
  v23(v13, v20 + v22, v10);
  sub_24ECB76EC(&qword_27F22D338, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
  if (sub_24F92AF98())
  {
    v24 = v11[4];
    v25 = v34;
    v24(v34, v13, v10);
    v26 = v16;
    v32[0] = v16;
    v27 = v35;
    v23((v25 + *(v35 + 48)), v26, v10);
    sub_24ECB760C(v25, v2);
    v28 = *(v27 + 48);
    v29 = v37;
    v24(v37, v2, v10);
    v30 = v11[1];
    v30(&v2[v28], v10);
    sub_24ECB767C(v25, v2);
    v24((v29 + *(v36 + 36)), &v2[*(v27 + 48)], v10);
    v30(v2, v10);
    swift_beginAccess();
    sub_24E658594();
    v31 = sub_24F91F048();
    v39 = v33;
    v40 = 0;
    sub_24EA5BFF0();
    sub_24F91F148();
    v31(v41, 0);
    sub_24E601704(v29, &qword_27F22D330, &unk_24F93FBE0);
    swift_endAccess();
    v30(v32[0], v10);
LABEL_4:
    *(v38 + OBJC_IVAR____TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator_didParseEverything) = 1;
    return;
  }

  __break(1u);
}

uint64_t sub_24ECB760C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328, &unk_24F9943B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECB767C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D328, &unk_24F9943B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECB76EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 RoundedButtonLayout.init(metrics:buttonView:dividerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t RoundedButtonLayout.Metrics.init(buttonTopSpace:buttonBottomSpace:dividerTopSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

double RoundedButtonLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v3 + 5), &v15);
  if (v16)
  {
    sub_24E612C80(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_24F922298();
    v10 = v3[23];
    __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
    sub_24E8ED7D8(v10);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E942EA8(&v15);
  }

  v11 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v12 = *(v7 + 8);
  v12(v9, v6);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922298();
  v13 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 15, v13);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  v12(v9, v6);
  return a2;
}

uint64_t RoundedButtonLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v6 + 5), &v24);
  v23 = v13;
  *&v22[3] = a4;
  if (v25)
  {
    sub_24E612C80(&v24, v26);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_24F922288();
    v22[1] = v28;
    v22[0] = __swift_project_boxed_opaque_existential_1(v26, v27);
    v22[2] = a2;
    v17 = v6[23];
    __swift_project_boxed_opaque_existential_1(v7 + 20, v7[23]);
    sub_24E8ED7D8(v17);
    sub_24F9223A8();
    v18 = *(v14 + 8);
    v18(v16, v13);
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    CGRectGetWidth(v29);
    sub_24F922228();
    v19 = v7[23];
    __swift_project_boxed_opaque_existential_1(v7 + 20, v19);
    sub_24E8ED7D8(v19);
    sub_24F9223A8();
    v18(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E942EA8(&v24);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922218();
  CGRectGetWidth(v30);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v20 = v7[13];
  __swift_project_boxed_opaque_existential_1(v7 + 10, v20);
  sub_24E8ED7D8(v20);
  sub_24F9223A8();
  (*(v14 + 8))(v16, v23);
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24ECB7F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_24ECB7F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24ECB8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277CDFA90], v8, v10);
  v13 = sub_24F923F68();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v14 = v16;
  v16(v12, v8);
  v17 = 16;
  if (v13)
  {
    v17 = 24;
  }

  v18 = *(a1 + v17);

  if (v18 >> 62)
  {
    v19 = sub_24F92C738();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4[2] = a3;
  v4[3] = v19;
  v20 = *(a1 + 56);
  LOBYTE(v52) = *(a1 + 32);
  v53 = *(a1 + 40);
  v54 = v20;
  type metadata accessor for HeroCarouselItemStateCoordinator(0);
  swift_allocObject();

  v4[4] = sub_24F7C6654(0, v18, &v52, a3);
  if (!v19)
  {
    v26 = v14;
    v27 = MEMORY[0x277D84F90];
    v4[5] = MEMORY[0x277D84F90];
    v4[6] = v27;

    v26(a2, v8);
LABEL_26:
    v4[7] = v27;
    return v4;
  }

  v52 = MEMORY[0x277D84F90];
  result = sub_24F92C978();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v45 = v14;
    v46 = v15;
    v47 = v8;
    v48 = a2;
    v51 = v4;
    v49 = a1;
    v50 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = 0;
      do
      {
        v23 = v22 + 1;
        v24 = MEMORY[0x253052270]();
        type metadata accessor for HeroCarouselItemBackgroundViewModel();
        v25 = swift_allocObject();
        *(v25 + 50) = 512;
        *(v25 + 24) = v24;
        *(v25 + 16) = 0;
        *(v25 + 32) = *(v24 + 16);
        *(v25 + 40) = *(v24 + 24);
        *(v25 + 48) = *(v24 + 102);
        *(v25 + 49) = *(v24 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v22 = v23;
      }

      while (v19 != v23);
    }

    else
    {
      v28 = (v18 + 32);
      type metadata accessor for HeroCarouselItemBackgroundViewModel();
      v29 = v19;
      do
      {
        v30 = *v28++;
        v31 = swift_allocObject();
        *(v31 + 50) = 512;
        *(v31 + 24) = v30;
        *(v31 + 16) = 0;
        *(v31 + 32) = *(v30 + 16);
        *(v31 + 40) = *(v30 + 24);
        *(v31 + 48) = *(v30 + 102);
        *(v31 + 49) = *(v30 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        --v29;
      }

      while (v29);
    }

    v51[5] = v52;
    v52 = MEMORY[0x277D84F90];
    sub_24F92C978();
    if (v50)
    {
      v32 = 0;
      do
      {
        v33 = v32 + 1;
        v34 = MEMORY[0x253052270]();
        type metadata accessor for HeroCarouselItemBackgroundViewModel();
        v35 = swift_allocObject();
        *(v35 + 50) = 512;
        *(v35 + 24) = v34;
        *(v35 + 16) = 1;
        *(v35 + 32) = *(v34 + 16);
        *(v35 + 40) = *(v34 + 24);
        *(v35 + 48) = *(v34 + 102);
        *(v35 + 49) = *(v34 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v32 = v33;
      }

      while (v19 != v33);
    }

    else
    {
      v36 = (v18 + 32);
      type metadata accessor for HeroCarouselItemBackgroundViewModel();
      v37 = v19;
      do
      {
        v38 = *v36++;
        v39 = swift_allocObject();
        *(v39 + 50) = 512;
        *(v39 + 24) = v38;
        *(v39 + 16) = 1;
        *(v39 + 32) = *(v38 + 16);
        *(v39 + 40) = *(v38 + 24);
        *(v39 + 48) = *(v38 + 102);
        *(v39 + 49) = *(v38 + 103);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        --v37;
      }

      while (v37);
    }

    v4 = v51;
    v51[6] = v52;
    v52 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v40 = 0;
    v41 = v48;
    v42 = v50;
    do
    {
      if (v42)
      {
        v43 = MEMORY[0x253052270](v40, v18);
      }

      else
      {
        v43 = *(v18 + 8 * v40 + 32);
      }

      ++v40;
      type metadata accessor for HeroCarouselItemOverlayViewModel(0);
      swift_allocObject();

      sub_24F4BC200(v43, a3);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v19 != v40);
    v45(v41, v47);

    v27 = v52;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECB85E4()
{

  return swift_deallocClassInstance();
}

void *sub_24ECB8660(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = 1;
  type metadata accessor for HeroCarouselItemStateCoordinator(0);
  swift_allocObject();

  v2[4] = sub_24F7C6FA4(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F941C80;
  type metadata accessor for HeroCarouselItemBackgroundViewModel();
  swift_allocObject();
  *(v6 + 32) = sub_24EB60160(a1);
  v2[5] = v6;
  v2[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D370, &qword_24F994560);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  type metadata accessor for HeroCarouselItemOverlayViewModel(0);
  swift_allocObject();

  *(v7 + 32) = sub_24F4BC994(v8, a2);
  v2[7] = v7;
  return v2;
}

double MSOContext.providerAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

BOOL MSOContext.canPersonalizeRoom(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v5 = *v0;
  v4 = v0[1];
  v11[2] = sub_24F91F398();
  v11[3] = v6;
  v11[0] = v5;
  v11[1] = v4;
  v7 = sub_24F91F7C8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_24E600AEC();

  sub_24F92C5B8();
  v9 = v8;
  sub_24ECB88E4(v3);

  return (v9 & 1) == 0;
}

uint64_t sub_24ECB88E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double AccountChannels.providerAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void *AccountChannels.init(providerAdamId:subscribedChannelIds:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84FA0];
  v4 = result[1];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = *result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

__n128 MSOContext.init(accountChannels:providerData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t MSOContext.providerRoomURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t AppPromotionDetailPagePresenter.__allocating_init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24ECB9088(a1, a2);

  return v4;
}

uint64_t AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ECB9088(a1, a2);

  return v2;
}

uint64_t sub_24ECB8B64(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ECB8BD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ECB8C70()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_27F210788;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_27F230F98;
    v5 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ECB8E14()
{
  type metadata accessor for ContingentOfferDetailPage(0);
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for OfferItemDetailPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

uint64_t sub_24ECB8EA4()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24ECB8F6C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view);

  return result;
}

uint64_t AppPromotionDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view);

  return v0;
}

uint64_t AppPromotionDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECB9088(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage) = a2;

  v5 = sub_24EC8415C(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppPromotionDetailPage(0);
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_24ECB93F0();
  v7[0] = a2;
  swift_beginAccess();

  sub_24EA095A4(v7, v5 + 40);
  swift_endAccess();
  sub_24EC832DC();

  sub_24ECB9448(v7);
  return v5;
}

uint64_t sub_24ECB9170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ECB91CC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for AppPromotionDetailPagePresenter(uint64_t a1)
{
  result = qword_27F22D380;
  if (!qword_27F22D380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECB93F0()
{
  result = qword_27F22D390;
  if (!qword_27F22D390)
  {
    type metadata accessor for AppPromotionDetailPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D390);
  }

  return result;
}

uint64_t sub_24ECB9448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F98, &unk_24F974A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorsChoice.__allocating_init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0;
  sub_24E60169C(a1, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 104) = v36;
    *(v18 + 120) = v19;
    *(v18 + 136) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v28 = a5;
    v21 = a8;
    v22 = v20;
    v29 = v10;
    v10 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v34 = v22;
    v35 = v24;
    a8 = v21;
    a5 = v28;
    a6 = v10;
    LOBYTE(v10) = v29;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v30, v18 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v18 + 16) = v31 & 1;
  v25 = v33;
  *(v18 + 24) = v32;
  *(v18 + 32) = v25;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = (v10 == 2) | v10 & 1;
  swift_beginAccess();
  *(v18 + 64) = a8;
  return v18;
}

uint64_t EditorsChoice.init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v12) = a7;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 80) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v29 = a5;
    v21 = a8;
    v22 = v20;
    v30 = v12;
    v12 = a6;
    v24 = v23;
    (*(v17 + 8))(v19, v16);
    v35 = v22;
    v36 = v24;
    a8 = v21;
    a5 = v29;
    a6 = v12;
    LOBYTE(v12) = v30;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = v41;
  *(v10 + 104) = v40;
  *(v10 + 120) = v25;
  *(v10 + 136) = v42;
  sub_24E65E0D4(v31, v10 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v10 + 16) = v32 & 1;
  v26 = v34;
  *(v10 + 24) = v33;
  *(v10 + 32) = v26;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = (v12 == 2) | v12 & 1;
  swift_beginAccess();
  *(v10 + 64) = a8;

  return v10;
}

uint64_t EditorsChoice.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EditorsChoice.notes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EditorsChoice.deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 104);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t EditorsChoice.__deallocating_deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 104);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECB9B4C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECB9BB4(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ECB9BB4(char *a1, uint64_t a2)
{
  v77 = a2;
  v63 = sub_24F91F6B8();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v70 = sub_24F928388();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v62 - v12;
  MEMORY[0x28223BE20](v13);
  v69 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v65 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  sub_24F929608();
  sub_24F928398();
  v73 = v5;
  v27 = *(v5 + 16);
  v28 = v9;
  v29 = v77;
  v27(v28, v77, v4);
  v75 = v26;
  v30 = v21;
  sub_24F929548();
  v31 = v29;
  v32 = v65;
  v74 = v4;
  v27(v84, v31, v4);
  v33 = a1;
  sub_24F928398();
  v34 = sub_24F928348();
  if (v35)
  {
    v36 = v67;
    *&v80 = v34;
    *(&v80 + 1) = v35;
  }

  else
  {
    v37 = v67;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v37;
    (*(v64 + 8))(v37, v63);
    *&v80 = v38;
    *(&v80 + 1) = v40;
  }

  sub_24F92C7F8();
  v41 = *(v68 + 8);
  v42 = v32;
  v43 = v70;
  v41(v42, v70);
  v44 = v66;
  sub_24F928398();
  LODWORD(v70) = sub_24F928278();
  v41(v44, v43);
  v45 = v69;
  sub_24F928398();
  v68 = sub_24F928348();
  v67 = v46;
  v41(v45, v43);
  v47 = v71;
  sub_24F928398();
  v69 = sub_24F928348();
  v66 = v48;
  v41(v47, v43);
  v49 = v72;
  sub_24F928398();
  LODWORD(v71) = sub_24F928278();
  v41(v49, v43);
  type metadata accessor for Action(0);
  sub_24F928398();
  v72 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v84);
  v50 = v43;
  v41(v30, v43);
  sub_24E60169C(v75, v76, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for EditorsChoice(0);
  v51 = swift_allocObject();
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0;
  sub_24E60169C(v83, &v80, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v81 + 1))
  {
    v52 = v81;
    *(v51 + 104) = v80;
    *(v51 + 120) = v52;
    *(v51 + 136) = v82;
  }

  else
  {
    v53 = v36;
    sub_24F91F6A8();
    v54 = sub_24F91F668();
    v56 = v55;
    (*(v64 + 8))(v53, v63);
    v78 = v54;
    v79 = v56;
    sub_24F92C7F8();
    sub_24E601704(&v80, &qword_27F235830, &qword_24F93B8C0);
  }

  v57 = v74;
  v58 = *(v73 + 8);
  v58(v77, v74);
  v41(v33, v50);
  sub_24E601704(v83, &qword_27F235830, &qword_24F93B8C0);
  v58(v84, v57);
  sub_24E601704(v75, &qword_27F213E68, &unk_24F93BC80);
  sub_24E65E0D4(v76, v51 + OBJC_IVAR____TtC12GameStoreKit13EditorsChoice_impressionMetrics);
  *(v51 + 16) = v70 & 1;
  v59 = v67;
  *(v51 + 24) = v68;
  *(v51 + 32) = v59;
  v60 = v66;
  *(v51 + 40) = v69;
  *(v51 + 48) = v60;
  *(v51 + 56) = (v71 == 2) | v71 & 1;
  swift_beginAccess();
  *(v51 + 64) = v72;
  return v51;
}

unint64_t sub_24ECBA39C()
{
  result = qword_27F22D398;
  if (!qword_27F22D398)
  {
    type metadata accessor for EditorsChoice(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D398);
  }

  return result;
}

uint64_t type metadata accessor for EditorsChoice(uint64_t a1)
{
  result = qword_27F22D3A0;
  if (!qword_27F22D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBA440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24ECBA490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 72, a2, &qword_27F2129B0, &unk_24F945320);
}

void sub_24ECBA4F8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InAppPurchaseStateDataSource.__allocating_init(withStateProvider:)(void *a1)
{
  v2 = swift_allocObject();
  InAppPurchaseStateDataSource.init(withStateProvider:)(a1);
  return v2;
}

void *InAppPurchaseStateDataSource.init(withStateProvider:)(void *a1)
{
  v1[8] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  sub_24E615E00(a1, (v1 + 2));
  v1[7] = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v4 = v1[5];
  v5 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v4);
  v6 = *(v5 + 16);

  v6(sub_24ECBA9D0, v3, v4, v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v1;
}

uint64_t sub_24ECBA884()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECBA8BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    sub_24E615E00(v3 + 16, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = *(v5 + 40);

    v7(sub_24ECBB48C, v6, v4, v5);

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

Swift::Void __swiftcall InAppPurchaseStateDataSource.refreshData()()
{
  swift_beginAccess();
  sub_24E615E00(v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 40);

  v4(sub_24ECBAC2C, v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  sub_24E615E00(v3 + 16, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[0] = v6;
  v11[1] = v7;
  (*(v9 + 32))(v11, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

double sub_24ECBAB78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 64);
    [v4 lock];
    sub_24ECBAC34(v3);
    [v4 unlock];
  }

  return result;
}

void sub_24ECBAC34(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_24ECBAF50(v4, v14);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v15(a1);
      }

      sub_24ECBB1D4(v14);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 56);
    v6 = *(v5 + 16);

    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v9 = MEMORY[0x277D84F90];
      while (v7 < *(v5 + 16))
      {
        sub_24ECBAF50(v8, v14);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_24ECBB19C(v14, v13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F4588F0(0, *(v9 + 16) + 1, 1);
            v9 = v16;
          }

          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_24F4588F0((v11 > 1), v12 + 1, 1);
            v9 = v16;
          }

          *(v9 + 16) = v12 + 1;
          sub_24ECBB19C(v13, v9 + 24 * v12 + 32);
        }

        else
        {
          sub_24ECBB1D4(v14);
        }

        ++v7;
        v8 += 24;
        if (v6 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  *(a1 + 56) = v9;
}

id InAppPurchaseStateDataSource.addObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 64);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_24ECBAF50(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E618F58(0, v7[2] + 1, 1, v7);
    *(v3 + 56) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E618F58((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_24ECBB19C(v12, &v7[3 * v10 + 4]);
  *(v3 + 56) = v7;
  swift_endAccess();
  sub_24ECBB1D4(v13);
  return [v6 unlock];
}

void InAppPurchaseStateDataSource.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v14 = *(v1 + 64);
  [v14 lock];
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_24ECBAF50(v7, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v10 = Strong, swift_unknownObjectRelease(), v10 == a1))
      {
        sub_24ECBB1D4(v16);
      }

      else
      {
        sub_24ECBB19C(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4588F0(0, *(v8 + 16) + 1, 1);
          v8 = v17;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_24F4588F0((v12 > 1), v13 + 1, 1);
          v8 = v17;
        }

        *(v8 + 16) = v13 + 1;
        sub_24ECBB19C(v15, v8 + 24 * v13 + 32);
      }

      ++v6;
      v7 += 24;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    *(v2 + 56) = v8;

    [v14 unlock];
  }
}

uint64_t InAppPurchaseStateDataSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t InAppPurchaseStateDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InAppPurchaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for InAppPurchaseState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24ECBB360(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_24ECBB38C(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

uint64_t sub_24ECBB548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v16 = sub_24F92A9E8();
  sub_24ECBD284();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_24F929638();
  v8 = MEMORY[0x277D21FB0];
  v18 = v7;
  v19 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24ECBBBB4();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_24F929628();
  sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v16;
  v13 = sub_24E74EC40();
  swift_retain_n();

  v14 = sub_24F92BEF8();
  v18 = v13;
  v19 = MEMORY[0x277D225C0];
  v17[0] = v14;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

void sub_24ECBB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_completionAction);
  if (v5)
  {
    v13 = type metadata accessor for Action(0);
    v14 = sub_24ECBBCE0(&qword_27F216DE8, type metadata accessor for Action);
    v12[0] = v5;
    type metadata accessor for OfferAlertActionImplementation(0, a5, v8, v9);
    swift_retain_n();
    swift_getWitnessTable();
    sub_24F1489C4(v12, a3);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v10 = sub_24E74EC40();
    swift_retain_n();
    v11 = sub_24F92BEF8();
    v13 = v10;
    v14 = MEMORY[0x277D225C0];
    v12[0] = v11;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

uint64_t sub_24ECBBA44()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24F92A9C8();
  return (*(v1 + 8))(v4, v0);
}

void sub_24ECBBB40(uint64_t a1, char a2)
{
  sub_24ECBD3CC();
  v3 = swift_allocError();
  *v4 = a2;
  sub_24F92A9A8();
}

unint64_t sub_24ECBBBB4()
{
  result = qword_27F22D438;
  if (!qword_27F22D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F510, &unk_24F93C690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D438);
  }

  return result;
}

uint64_t objectdestroyTm_31()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBBC8C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBBCE0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_24ECBBD34(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v73 - v10;
  v12 = sub_24F9289E8();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = (v73 - v15);
  v16 = sub_24F92A638();
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x28223BE20](v16);
  v86 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F928AD8();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = sub_24F92A618();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v73 - v24;
  v26 = sub_24F928AE8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v30 = sub_24F92A9E8();
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_remoteControllerRequirement) != 2 || [objc_opt_self() userHasPairedGameController])
  {
    (*(v27 + 104))(v29, *MEMORY[0x277D21CA8], v26);
    sub_24F92A9C8();
    (*(v27 + 8))(v29, v26);
    return v30;
  }

  v32._object = 0x800000024FA59920;
  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v32, v33);
  v73[4] = v34._countAndFlagsBits;
  v73[3] = v34._object;
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x800000024FA59940;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v35, v36);
  v73[2] = v37._countAndFlagsBits;
  v73[1] = v37._object;
  v38._countAndFlagsBits = 0xD000000000000020;
  v38._object = 0x800000024FA59970;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  countAndFlagsBits = localizedString(_:comment:)(v38, v39)._countAndFlagsBits;
  v74 = v11;

  v40._countAndFlagsBits = 0xD000000000000022;
  v40._object = 0x800000024FA599A0;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  localizedString(_:comment:)(v40, v41);

  sub_24F928A98();
  v42 = sub_24F928B08();
  v43 = MEMORY[0x277D21CB8];
  v92 = v42;
  v93 = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v91);

  sub_24F928AF8();
  v76 = v25;
  sub_24F92A608();
  sub_24F928A98();
  v92 = v42;
  v93 = v43;
  __swift_allocate_boxed_opaque_existential_1(v91);

  v44 = v74;
  sub_24F928AF8();
  v45 = v89;
  sub_24F92A608();
  sub_24F928A98();
  v46 = sub_24F92A628();
  (*(*(v46 - 8) + 56))(v90, 1, 1, v46);
  sub_24F91F488();
  v47 = sub_24F91F4A8();
  result = (*(*(v47 - 8) + 48))(v44, 1, v47);
  countAndFlagsBits = v20;
  if (result != 1)
  {

    sub_24F928978();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
    v48 = v81;
    v49 = *(v81 + 72);
    v50 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93A400;
    v52 = v51 + v50;
    v53 = *(v48 + 16);
    v54 = v45;
    v55 = v45;
    v56 = v85;
    v53(v52, v54, v85);
    v57 = v52 + v49;
    v58 = v56;
    v53(v57, v76, v56);
    v59 = v86;
    sub_24F92A5E8();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
    v61 = v84;
    sub_24F928EF8();
    v62 = v88;
    sub_24E8E4574(v61, v88);
    v90 = *(v60 - 8);
    v63 = v90[6](v62, 1, v60);
    v64 = v83;
    if (v63 == 1)
    {
      sub_24E8E45E4(v61);
      (*(v82 + 8))(v59, v64);
      v65 = *(v48 + 8);
      v65(v55, v58);
      v65(v76, v58);
      sub_24E8E45E4(v62);
    }

    else
    {
      v92 = v83;
      v93 = MEMORY[0x277D223B8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
      v67 = v82;
      (*(v82 + 16))(boxed_opaque_existential_1, v59, v64);
      v69 = v77;
      v68 = v78;
      v70 = v79;
      (*(v78 + 104))(v77, *MEMORY[0x277D21E18], v79);
      sub_24F929288();

      (*(v68 + 8))(v69, v70);
      sub_24E8E45E4(v61);
      (*(v67 + 8))(v86, v64);
      v71 = *(v48 + 8);
      v72 = v85;
      v71(v89, v85);
      v71(v76, v72);
      __swift_destroy_boxed_opaque_existential_1(v91);
      (v90[1])(v88, v60);
    }

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECBC748(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = v75 - v14;
  v15 = sub_24F92A638();
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v89 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F928AD8();
  MEMORY[0x28223BE20](v17 - 8);
  v88 = sub_24F92A618();
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v75 - v23;
  v25 = sub_24F9289E8();
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v90 = v75 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v94 = sub_24F92A9E8();
  v30 = objc_opt_self();
  v31 = sub_24F92B098();
  v32 = [v30 userHasPairedGameControllerSupportingInteractionProfile_];

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferAlertAction_spatialControllerRequirement))
  {
LABEL_6:
    v33 = sub_24F92CE08();

    if (!(v32 & 1 | ((v33 & 1) == 0)))
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    v34 = v94;
    sub_24F92A9C8();
    (*(v4 + 8))(v6, v3);
    return v34;
  }

  swift_bridgeObjectRelease_n();
  if (v32)
  {
    goto LABEL_7;
  }

LABEL_8:
  v77 = v19;
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x800000024FA59830;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v76 = localizedString(_:comment:)(v35, v36);
  v37._countAndFlagsBits = 0xD00000000000002BLL;
  v37._object = 0x800000024FA59860;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = localizedString(_:comment:)(v37, v38);
  v75[3] = v39._countAndFlagsBits;
  v75[2] = v39._object;
  v40._object = 0x800000024FA59890;
  v40._countAndFlagsBits = 0xD00000000000002DLL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v75[1] = localizedString(_:comment:)(v40, v41)._countAndFlagsBits;
  v42._countAndFlagsBits = 0xD00000000000002FLL;
  v42._object = 0x800000024FA598C0;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  localizedString(_:comment:)(v42, v43);
  sub_24F91F488();
  v44 = sub_24F91F4A8();
  result = (*(*(v44 - 8) + 48))(v24, 1, v44);
  if (result != 1)
  {
    v46 = v90;
    sub_24F928978();
    sub_24F928A98();
    v47 = sub_24F928B08();
    v48 = MEMORY[0x277D21CB8];
    v96 = v47;
    v97 = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(v95);

    sub_24F928AF8();
    sub_24F92A608();
    sub_24F928A98();
    v96 = v47;
    v97 = v48;
    __swift_allocate_boxed_opaque_existential_1(v95);

    sub_24F928AF8();
    v49 = v77;
    sub_24F92A608();
    sub_24F928A98();
    v50 = sub_24F92A628();
    (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
    (*(v91 + 16))(v27, v46, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
    v51 = v84;
    v52 = *(v84 + 72);
    v53 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_24F93A400;
    v55 = v54 + v53;
    v56 = *(v51 + 16);
    v57 = v49;
    v58 = v88;
    v56(v55, v57, v88);
    v56(v55 + v52, v93, v58);
    v59 = v89;
    sub_24F92A5E8();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
    v61 = v85;
    sub_24F928EF8();
    v62 = v87;
    sub_24E8E4574(v61, v87);
    v63 = *(v60 - 8);
    if ((*(v63 + 6))(v62, 1, v60) == 1)
    {
      sub_24E8E45E4(v61);
      (*(v81 + 8))(v59, v82);
      v64 = *(v51 + 8);
      v64(v77, v58);
      v64(v93, v58);
      (*(v91 + 8))(v90, v92);
      sub_24E8E45E4(v62);
    }

    else
    {
      v65 = v82;
      v96 = v82;
      v97 = MEMORY[0x277D223B8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
      v67 = v81;
      (*(v81 + 16))(boxed_opaque_existential_1, v59, v65);
      v68 = *MEMORY[0x277D21E18];
      v83 = v63;
      v69 = v62;
      v71 = v79;
      v70 = v80;
      v72 = v78;
      (*(v79 + 104))(v78, v68, v80);
      sub_24F929288();

      (*(v71 + 8))(v72, v70);
      sub_24E8E45E4(v61);
      (*(v67 + 8))(v89, v65);
      v73 = *(v51 + 8);
      v74 = v88;
      v73(v77, v88);
      v73(v93, v74);
      (*(v91 + 8))(v90, v92);
      __swift_destroy_boxed_opaque_existential_1(v95);
      (*(v83 + 1))(v69, v60);
    }

    return v94;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ECBD284()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v4 = sub_24F92A9E8();
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  sub_24F92A9C8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_24ECBD3CC()
{
  result = qword_27F22D440;
  if (!qword_27F22D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D440);
  }

  return result;
}

unint64_t sub_24ECBD454()
{
  result = qword_27F22D448;
  if (!qword_27F22D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D448);
  }

  return result;
}

void (*TodayCardMediaAppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v90 = a2;
  v88 = v2;
  v5 = *v2;
  v82 = v3;
  v83 = v5;
  v93 = sub_24F9285B8();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  sub_24F928398();
  v25 = JSONObject.appStoreColor.getter();
  v80 = v17;
  v27 = *(v17 + 8);
  v26 = v17 + 8;
  v87 = v16;
  v89 = v27;
  v27(v24, v16);
  if (!v25)
  {
    v58 = sub_24F92AC38();
    sub_24ECBE024(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v59 = 0x6F6C6F43746E6974;
    v57 = v83;
    v59[1] = 0xE900000000000072;
    v59[2] = v57;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    (*(v91 + 8))(v90, v93);
    v89(a1, v87);
    goto LABEL_10;
  }

  sub_24F929608();
  v75 = v25;
  sub_24F928398();
  v85 = a1;
  v86 = v26;
  v28 = v90;
  v30 = v91 + 16;
  v29 = *(v91 + 16);
  v31 = v12;
  v32 = v12;
  v33 = v93;
  v29(v31, v90, v93);
  v76 = v15;
  sub_24F929548();
  v84 = v29;
  v29(v9, v28, v33);
  sub_24F928398();
  v29(v32, v9, v33);
  type metadata accessor for Artwork(0);
  sub_24ECBE024(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v34 = sub_24F92B698();
  v78 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks;
  v35 = v88;
  *(v88 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = v34;
  sub_24F928398();
  v36 = v9;
  v29(v32, v9, v33);
  type metadata accessor for Video(0);
  sub_24ECBE024(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v37 = sub_24F92B698();
  v73 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
  v38 = v85;
  sub_24F928398();
  v39 = v84;
  v84(v32, v36, v33);
  sub_24E9E115C();
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics;
  v40 = v88;
  *(v88 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = v92;
  sub_24F928398();
  v77 = v36;
  v74 = v30;
  v39(v32, v36, v33);
  type metadata accessor for AppEventFormattedDate(0);
  sub_24ECBE024(&qword_27F22D450, type metadata accessor for AppEventFormattedDate, &protocol conformance descriptor for AppEventFormattedDate);
  v41 = sub_24F92B698();
  v70 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = v41;
  v42 = v75;
  v71 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = v75;
  v43 = v42;
  v44 = v38;
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v45 = v87;
  v89(v21, v87);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = v92;
  v46 = v78;
  swift_beginAccess();
  v47 = *(v40 + v46);
  if (v47 >> 62)
  {
    v62 = sub_24F92C738();
    v48 = v76;
    if (v62)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v48 = v76;
  if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v49 = *(v40 + v73);
    if (v49 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_6;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v63 = sub_24F92AC38();
    sub_24ECBE024(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v64 = 0x736B726F77747261;
    v64[1] = 0xE800000000000000;
    v64[2] = v83;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
    swift_willThrow();

    v65 = v45;
    v66 = *(v91 + 8);
    v67 = v40;
    v68 = v48;
    v69 = v93;
    v66(v90, v93);
    v89(v44, v65);
    v57 = v83;
    v66(v77, v69);
    sub_24E601704(v68, &qword_27F213E68, &unk_24F93BC80);

LABEL_10:
    swift_deallocPartialClassInstance();
    return v57;
  }

LABEL_6:
  v50 = v79;
  (*(v80 + 16))(v79, v38, v45);
  v51 = v81;
  v52 = v90;
  v53 = v93;
  v84(v81, v90, v93);
  v54 = v82;
  v55 = TodayCardMedia.init(deserializing:using:)(v50, v51);
  v56 = v45;
  if (v54)
  {

    v57 = *(v91 + 8);
    (v57)(v52, v53);
    v89(v38, v45);
    (v57)(v77, v53);
  }

  else
  {
    v57 = v55;

    v60 = *(v91 + 8);
    v60(v52, v53);
    v89(v38, v56);
    v60(v77, v53);
  }

  sub_24E601704(v48, &qword_27F213E68, &unk_24F93BC80);
  return v57;
}

uint64_t sub_24ECBE024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardMediaAppEvent.__allocating_init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v14 = sub_24F91F6B8();
  v23[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = *a6;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24E60169C(a7, v17 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v27, &v24, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v25 + 1))
  {
    v18 = v25;
    *(v17 + 32) = v24;
    *(v17 + 48) = v18;
    *(v17 + 64) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v23[0] + 8))(v16, v14);
    v23[1] = v19;
    v23[2] = v21;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a7, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  *(v17 + 16) = 10;
  *(v17 + 24) = 1;
  return v17;
}

uint64_t TodayCardMediaAppEvent.init(formattedDates:artworks:videos:artworkLayoutsWithMetrics:tintColor:blurStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_24F91F6B8();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v28 - v20;
  LOBYTE(v20) = *a6;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_formattedDates) = a1;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks) = a2;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_videos) = a3;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworkLayoutsWithMetrics) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_tintColor) = a5;
  v22 = a7;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_blurStyle) = v20;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_24E60169C(a7, v21, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v39, &v33, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v29 + 8))(v18, v30);
    v31 = v23;
    v32 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v22, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v26 = v37;
  *(v8 + 32) = v36;
  *(v8 + 48) = v26;
  *(v8 + 64) = v38;
  sub_24E65E0D4(v21, v8 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v8 + 16) = 10;
  *(v8 + 24) = 1;
  return v8;
}

double TodayCardMediaAppEvent.artworks.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t TodayCardMediaAppEvent.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TodayCardMediaAppEvent_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24ECBE6F0()
{
}

uint64_t TodayCardMediaAppEvent.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaAppEvent.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

double sub_24ECBE8E4()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for TodayCardMediaAppEvent(uint64_t a1)
{
  result = qword_27F22D458;
  if (!qword_27F22D458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBEA58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229708, &qword_24F994B80);

  return sub_24F92A988();
}

uint64_t sub_24ECBEAAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v4 = sub_24EB46264(a1, a2, "GameStoreKit/TopChartDiffableSegmentContentPresenter.swift", 58, 2);

  return v4;
}

uint64_t sub_24ECBEB40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  v6[0] = swift_allocObject();
  sub_24E60169C(a1, v6[0] + 16, &qword_27F2129B0, &unk_24F945320);
  v4 = sub_24EB48270(v6, a2, "GameStoreKit/TopChartDiffableSegmentContentPresenter.swift", 58, 2);

  sub_24EC9E62C(v6);
  return v4;
}

uint64_t TopChartDiffableSegmentContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a3;
  v71 = a1;
  v63 = a2;
  v74 = a8;
  v75 = a13;
  v76 = a11;
  v59 = a10;
  v72 = a9;
  v73 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v69 = &v58 - v19;
  v21 = swift_allocObject();
  sub_24E60169C(a2, v20, &qword_27F228530, &unk_24F93C6E0);
  v61 = a4;
  v62 = a5;
  if (a4)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v60 = a7;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v67 = v24;
  v68 = v22;
  *(v21 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v21 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  sub_24E5FCA4C(a4, a5);
  sub_24E5FCA4C(v23, a7);
  v27 = v59;
  v28 = v76;
  sub_24E5FCA4C(v59, v76);
  *(v21 + v26) = sub_24E60986C(v25);
  v29 = (v21 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v21 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v66 = v30;
  v31 = (v21 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v21 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v65 = v32;
  v33 = (v21 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v64 = v33;
  v34 = (v21 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v21 + qword_27F39C790) = 0;
  *(v21 + qword_27F22F1D0) = 0;
  *(v21 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v21 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8, &qword_24F989CE0);
  swift_allocObject();
  *(v21 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v21 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0, &qword_24F989CF0);
  swift_allocObject();
  *(v21 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v21 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v21 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v41 = sub_24F92ADA8();
  sub_24E824448(v27, v28);
  sub_24E824448(v23, v60);
  v42 = v61;
  sub_24E824448(v61, v62);
  sub_24E601704(v63, &qword_27F228530, &unk_24F93C6E0);
  *(v21 + v40) = v41;
  v43 = qword_27F22F1E0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v45 = *(*(v44 - 8) + 56);
  v45(v21 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v70;
  v45(v21 + qword_27F22F1E8, 1, 1, v46);
  *(v21 + 16) = v71;
  sub_24E911D90(v69, v21 + qword_27F39C7D0);
  v48 = v67;
  v49 = v68;
  *v29 = v42;
  v29[1] = v49;
  *v31 = v23;
  v31[1] = v48;
  if (v47)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    v51 = sub_24E965688;
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v52 = v76;
  if (!v27)
  {
    v52 = 0;
  }

  v54 = v65;
  v53 = v66;
  *v66 = v51;
  v53[1] = v50;
  v55 = v72;
  *v54 = v74;
  v54[1] = v55;
  v56 = v64;
  *v64 = v27;
  v56[1] = v52;
  *(v21 + qword_27F22F1F0) = v73;
  *(v21 + qword_27F39C7D8) = v75;
  return v21;
}

uint64_t TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v70 = a6;
  v79 = a3;
  v80 = a1;
  v73 = a2;
  v86 = a13;
  v84 = a8;
  v85 = a12;
  v82 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v20 - 8);
  v77 = &v70 - v21;
  sub_24E60169C(a2, &v70 - v21, &qword_27F228530, &unk_24F93C6E0);
  v22 = a4;
  v71 = a4;
  v72 = a5;
  if (a4)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v76 = v23;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v78 = v24;
  *(v14 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  sub_24E5FCA4C(v22, a5);
  v27 = a6;
  v28 = a7;
  sub_24E5FCA4C(v27, a7);
  sub_24E5FCA4C(a10, a11);
  *(v14 + v26) = sub_24E60986C(v25);
  v29 = (v14 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v14 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v74 = v30;
  v31 = (v14 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v14 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v14 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v75 = v33;
  v34 = (v14 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8, &qword_24F989CE0);
  swift_allocObject();
  *(v14 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v14 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0, &qword_24F989CF0);
  swift_allocObject();
  *(v14 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v14 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v41 = sub_24F92ADA8();
  v83 = a10;
  v81 = a11;
  sub_24E824448(a10, a11);
  v42 = v70;
  sub_24E824448(v70, v28);
  v43 = v71;
  sub_24E824448(v71, v72);
  sub_24E601704(v73, &qword_27F228530, &unk_24F93C6E0);
  *(v14 + v40) = v41;
  v44 = qword_27F22F1E0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v46 = *(*(v45 - 8) + 56);
  v46(v14 + v44, 1, 1, v45);
  v47 = v45;
  v48 = v79;
  v46(v14 + qword_27F22F1E8, 1, 1, v47);
  *(v14 + 16) = v80;
  sub_24E911D90(v77, v14 + qword_27F39C7D0);
  v49 = *v29;
  v50 = v29[1];
  v51 = v76;
  *v29 = v43;
  v29[1] = v51;
  sub_24E824448(v49, v50);
  v52 = *v31;
  v53 = v31[1];
  v54 = v78;
  *v31 = v42;
  v31[1] = v54;
  sub_24E824448(v52, v53);
  if (v48)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = v48;
    v56 = sub_24EC02BCC;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v57 = v83;
  if (v83)
  {
    v58 = v81;
  }

  else
  {
    v58 = 0;
  }

  v59 = v74;
  v61 = *v74;
  v60 = v74[1];
  *v74 = v56;
  v59[1] = v55;
  sub_24E824448(v61, v60);
  v62 = *v32;
  v63 = v32[1];
  v64 = v82;
  *v32 = v84;
  v32[1] = v64;
  sub_24E824448(v62, v63);
  v65 = v75;
  v66 = *v75;
  v67 = v75[1];
  *v75 = v57;
  v65[1] = v58;
  sub_24E824448(v66, v67);
  v68 = v86;
  *(v14 + qword_27F22F1F0) = v85;
  *(v14 + qword_27F39C7D8) = v68;
  return v14;
}

uint64_t TopChartDiffableSegmentContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECBF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0;
  }

  if (a10)
  {
    v17 = a11;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, a2, a3, a4, v15, a6, v16, a8, a9, a10, v17, a12, a13);
  return v18;
}

uint64_t _s12GameStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24ECBFD34;
  *(v13 + 24) = a1;
  type metadata accessor for TopChartDiffableSegmentContentPresenter(0);
  v14 = swift_allocObject();
  sub_24E60169C(v11, v8, &qword_27F228530, &unk_24F93C6E0);
  *(v14 + qword_27F22F198) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v16 = qword_27F39C780;
  v17 = a1;
  swift_retain_n();
  v18 = a2;
  swift_retain_n();

  *(v14 + v16) = sub_24E60986C(v15);
  v19 = (v14 + qword_27F22F1A8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_27F22F1B0);
  v43 = (v14 + qword_27F22F1B0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + qword_27F22F1B8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v14 + qword_27F22F1C0);
  v42 = (v14 + qword_27F22F1C0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v14 + qword_27F22F1C8);
  v41 = (v14 + qword_27F22F1C8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F39C788);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v25 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8, &qword_24F989CE0);
  swift_allocObject();
  *(v14 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v14 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0, &qword_24F989CF0);
  swift_allocObject();
  *(v14 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v31 = sub_24F92ADA8();

  sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
  *(v14 + v30) = v31;
  v32 = qword_27F22F1E0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v34 = *(*(v33 - 8) + 56);
  v34(v14 + v32, 1, 1, v33);
  v34(v14 + qword_27F22F1E8, 1, 1, v33);
  *(v14 + 16) = v17;
  sub_24E911D90(v44, v14 + qword_27F39C7D0);
  *v19 = sub_24ECBFD24;
  v19[1] = v18;
  *v21 = 0;
  v21[1] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  v36 = v42;
  v37 = v43;
  *v43 = sub_24EC02BCC;
  v37[1] = v35;
  *v36 = sub_24ECBFD2C;
  v36[1] = v17;
  v38 = v41;
  *v41 = sub_24E94DE8C;
  v38[1] = v13;
  v39 = v46;
  *(v14 + qword_27F22F1F0) = v45;
  *(v14 + qword_27F39C7D8) = v39;
  return v14;
}

uint64_t sub_24ECBFC68()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for TopChartDiffableSegmentContentPresenter(uint64_t a1)
{
  result = qword_27F22D468;
  if (!qword_27F22D468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECBFD3C()
{

  return swift_deallocObject();
}

uint64_t sub_24ECBFD74()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_24ECBFDBC()
{
  v0 = sub_24F92A468();
  __swift_allocate_value_buffer(v0, qword_27F22D478);
  __swift_project_value_buffer(v0, qword_27F22D478);
  return sub_24F92A458();
}

uint64_t sub_24ECBFE24()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24ECBFEC4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

void sub_24ECBFF94(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }
}

uint64_t sub_24ECC00A4()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 17);
}

void sub_24ECC0144(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 17);
}

void sub_24ECC0214(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }
}

uint64_t sub_24ECC0324()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 18);
}

void sub_24ECC03C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 18);
}

double sub_24ECC0494(unsigned __int8 a1)
{
  if (*(v1 + 18) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24ECC059C()
{
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  return *(v0 + 19);
}

void sub_24ECC063C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  *a2 = *(v3 + 19);
}

void sub_24ECC070C(char a1)
{
  if (*(v1 + 19) == (a1 & 1))
  {
    *(v1 + 19) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }
}

uint64_t sub_24ECC081C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  return sub_24ECCA40C(v5 + v3, a1);
}

uint64_t sub_24ECC08E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  return sub_24ECCA40C(v3 + v4, a2);
}

uint64_t sub_24ECC09AC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24ECCA40C(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD78();

  return sub_24ECC9AB8(v6);
}

uint64_t sub_24ECC0AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ECCA40C(a2, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCABEC(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t GamesSettings.__allocating_init(shareGameActivityToggle:shareGameActivityDisabled:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = swift_allocObject();
  GamesSettings.init(shareGameActivityToggle:shareGameActivityDisabled:)(v3, v2);
  return v4;
}

uint64_t GamesSettings.init(shareGameActivityToggle:shareGameActivityDisabled:)(char a1, char a2)
{
  v3 = v2;
  *(v3 + 18) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  v7 = sub_24F92A498();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 3, v7);
  v8 = v3 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = v3 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState;
  v13 = sub_24F920958();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  sub_24F91FDB8();
  *(v3 + 16) = a1;
  *(v3 + 17) = a2;
  v14 = [objc_opt_self() daemonProxy];
  sub_24F921328();

  v15 = v30;
  v16 = v31;
  v17 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v27 = v15;
  v28 = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD78();

  sub_24E601704(v26, &qword_27F22D4C8, &qword_24F994BB8);
  v20 = v30;
  v21 = v31;
  v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v27 = v20;
  v28 = *(v21 + 16);
  v23 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = swift_getKeyPath();
  MEMORY[0x28223BE20](v24);
  sub_24F91FD78();

  sub_24E601704(v26, &qword_27F22D4D0, &qword_24F994BE8);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v3;
}

uint64_t sub_24ECC1130@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v10 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v12 + v10, a5, a3, a4);
}

uint64_t sub_24ECC1210@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v11 = *a3;
  swift_beginAccess();
  return sub_24E60169C(v10 + v11, a6, a4, a5);
}

uint64_t sub_24ECC12F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_24E60169C(a1, v11, a5, a6);
  swift_getKeyPath();
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD78();

  return sub_24E601704(v11, a5, a6);
}

uint64_t sub_24ECC13F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_24E60169C(a2, v11, a3, a4);
  v9 = *a5;
  swift_beginAccess();
  sub_24E61DA68(v11, a1 + v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24ECC14C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22D4E0, &unk_24F994C00);
  return sub_24ECC1574(v4);
}

uint64_t sub_24ECC1574(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F22D4E0, &unk_24F994C00);
  v7 = sub_24ECCA4AC(v5, a1);
  sub_24E601704(v5, &qword_27F22D4E0, &unk_24F994C00);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v5, &qword_27F22D4E0, &unk_24F994C00);
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v6, &qword_27F22D4E0, &unk_24F994C00);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F22D4E0, &unk_24F994C00);
}

uint64_t sub_24ECC17A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8, &qword_24F9CF7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F22D4D8, &qword_24F9CF7D0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F22D4D8, &qword_24F9CF7D0);
}

uint64_t sub_24ECC18F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_24E60169C(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_24E61DA68(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24ECC19D4()
{
  v1[39] = v0;
  v2 = sub_24F9208F8();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8, &qword_24F9CF7D0);
  v1[43] = swift_task_alloc();
  v3 = sub_24F920958();
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  v1[49] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v1[50] = v4;
  v1[51] = *(v4 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1[54] = v5;
  v1[55] = *(v5 - 8);
  v1[56] = swift_task_alloc();
  v6 = sub_24F921668();
  v1[57] = v6;
  v1[58] = *(v6 - 8);
  v1[59] = swift_task_alloc();
  v7 = sub_24F92A498();
  v1[60] = v7;
  v1[61] = *(v7 - 8);
  v1[62] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v1[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC1D38, 0, 0);
}

uint64_t sub_24ECC1D38()
{
  v1 = v0[63];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[39];
  v5 = *(v3 + 56);
  v0[64] = v5;
  v0[65] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v2);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v0[66] = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v0[28] = v4;
  v0[67] = sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD78();

  sub_24ECC9AB8(v1);
  v7 = swift_task_alloc();
  v0[68] = v7;
  *v7 = v0;
  v7[1] = sub_24ECC1F1C;
  v8 = v0[62];
  v9 = v0[60];

  return MEMORY[0x2822008A0](v8, 0, 0, 0x6761426863746566, 0xEA00000000002928, sub_24ECC9B14, 0, v9);
}

uint64_t sub_24ECC1F1C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_24ECC22E0;
  }

  else
  {
    v2 = sub_24ECC2030;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC2030()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[60];
  v4 = v0[39];
  (*(v0[61] + 16))(v1, v0[62], v3);
  v2(v1, 0, 3, v3);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[36] = v4;
  sub_24F91FD78();

  sub_24ECC9AB8(v1);
  v0[70] = Bag.metricsResettableTopics.getter();
  v6 = sub_24F92A328();
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_24ECC21C4;
  v8 = v0[59];

  return MEMORY[0x282140780](v8, v6);
}

uint64_t sub_24ECC21C4()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_24ECC4888;
  }

  else
  {
    v2 = sub_24ECC29C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC22E0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 504);
  v3 = *(v0 + 312);
  (*(v0 + 512))(v2, 3, 3, *(v0 + 480));
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v0 + 232) = v3;
  sub_24F91FD78();

  sub_24ECC9AB8(v2);
  if (*(v3 + 18) == 2)
  {

    *(v3 + 18) = 2;
  }

  else
  {
    v5 = *(v0 + 312);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 2;
    *(v0 + 240) = v5;
    sub_24F91FD78();
  }

  v7 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v7;
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
LABEL_16:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E940);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Game Services not available.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    v26 = *(v0 + 312);

    sub_24ECC5388(v26);
    goto LABEL_21;
  }

  v9 = (v0 + 16);
  v10 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v10;
  sub_24F91FD88();

  v11 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_16;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = objc_opt_self();
  *(v0 + 616) = v12;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v13 = [v12 ams_sharedAccountStoreForMediaType_];
  v14 = [v13 ams_activeiTunesAccount];

  if (v14)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v15, qword_27F39E940);
    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "App Store is signed in.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v9, v19);
    v21 = swift_task_alloc();
    *(v0 + 640) = v21;
    *v21 = v0;
    v21[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v19, v20);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E940);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed out.", v31, 2u);
    MEMORY[0x2530542D0](v31, -1, -1);
  }

  v32 = *(v0 + 312);

  sub_24ECC5388(v32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_21:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ECC29C8()
{
  v1 = *(v0 + 560);
  v2 = v1[2];
  *(v0 + 584) = v2;
  *(v0 + 592) = 0;
  if (v2)
  {
    if (v1[2])
    {
      v3 = v1[5];
      *(v0 + 600) = v3;
      v4 = v1[4];

      v5 = swift_task_alloc();
      *(v0 + 608) = v5;
      *v5 = v0;
      v5[1] = sub_24ECC322C;

      return MEMORY[0x282140778](v4, v3);
    }

    __break(1u);
    goto LABEL_38;
  }

  v6 = *(v0 + 312);

  if (*(v6 + 18) != 2)
  {
    v7 = *(v0 + 312);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 2;
    *(v0 + 296) = v7;
    sub_24F91FD78();
  }

  if (qword_27F211880 != -1)
  {
LABEL_38:
    swift_once();
  }

  v10 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 432);
  v12 = *(v0 + 312);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v10 + 8))(v9, v11);
  v13 = *(v0 + 680);
  if (v13 == *(v12 + 19))
  {
    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 480);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v19 + 8))(v18, v20);
    *(v12 + 19) = v13;
  }

  else
  {
    v14 = *(v0 + 488);
    v49 = *(v0 + 480);
    v50 = *(v0 + 496);
    v15 = *(v0 + 464);
    v47 = *(v0 + 456);
    v48 = *(v0 + 472);
    v16 = *(v0 + 312);
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v13;
    *(v0 + 304) = v16;
    sub_24F91FD78();

    (*(v15 + 8))(v48, v47);
    (*(v14 + 8))(v50, v49);
  }

  v21 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v21;
  sub_24F91FD88();

  v22 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v21 + v22, v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
LABEL_24:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v35 = sub_24F9220D8();
    __swift_project_value_buffer(v35, qword_27F39E940);
    v36 = sub_24F9220B8();
    v37 = sub_24F92BDB8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24E5DD000, v36, v37, "Game Services not available.", v38, 2u);
      MEMORY[0x2530542D0](v38, -1, -1);
    }

    v39 = *(v0 + 312);

    sub_24ECC5388(v39);
    goto LABEL_29;
  }

  v23 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v23;
  sub_24F91FD88();

  v24 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v23 + v24, v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_24;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v25 = objc_opt_self();
  *(v0 + 616) = v25;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v26 = [v25 ams_sharedAccountStoreForMediaType_];
  v27 = [v26 ams_activeiTunesAccount];

  if (v27)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v28 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v28, qword_27F39E940);
    v29 = sub_24F9220B8();
    v30 = sub_24F92BD98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed in.", v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    v32 = *(v0 + 40);
    v33 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
    v34 = swift_task_alloc();
    *(v0 + 640) = v34;
    *v34 = v0;
    v34[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v32, v33);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v41 = sub_24F9220D8();
  __swift_project_value_buffer(v41, qword_27F39E940);
  v42 = sub_24F9220B8();
  v43 = sub_24F92BD98();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24E5DD000, v42, v43, "App Store is signed out.", v44, 2u);
    MEMORY[0x2530542D0](v44, -1, -1);
  }

  v45 = *(v0 + 312);

  sub_24ECC5388(v45);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_29:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_24ECC322C(char a1)
{
  *(*v1 + 681) = a1;

  return MEMORY[0x2822009F8](sub_24ECC334C, 0, 0);
}

uint64_t sub_24ECC334C()
{
  if (*(v0 + 681))
  {
    v1 = 1;
    goto LABEL_5;
  }

  v2 = *(v0 + 592) + 1;
  *(v0 + 592) = v2;
  if (v2 == *(v0 + 584))
  {
    v1 = 2;
LABEL_5:
    v3 = *(v0 + 312);

    if (*(v3 + 18) != v1)
    {
      v4 = *(v0 + 312);
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = v1;
      *(v0 + 296) = v4;
      sub_24F91FD78();
    }

    if (qword_27F211880 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v8 = *(v0 + 432);
    v9 = *(v0 + 312);
    sub_24F92A3B8();
    sub_24F92A408();
    (*(v7 + 8))(v6, v8);
    v10 = *(v0 + 680);
    if (v10 == *(v9 + 19))
    {
      v16 = *(v0 + 488);
      v15 = *(v0 + 496);
      v17 = *(v0 + 480);
      (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
      (*(v16 + 8))(v15, v17);
      *(v9 + 19) = v10;
    }

    else
    {
      v11 = *(v0 + 488);
      v51 = *(v0 + 480);
      v52 = *(v0 + 496);
      v12 = *(v0 + 464);
      v49 = *(v0 + 456);
      v50 = *(v0 + 472);
      v13 = *(v0 + 312);
      swift_getKeyPath();
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      *(v14 + 24) = v10;
      *(v0 + 304) = v13;
      sub_24F91FD78();

      (*(v12 + 8))(v50, v49);
      (*(v11 + 8))(v52, v51);
    }

    v18 = *(v0 + 312);
    swift_getKeyPath();
    *(v0 + 248) = v18;
    sub_24F91FD88();

    v19 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
    swift_beginAccess();
    sub_24E60169C(v18 + v19, v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
    if (*(v0 + 80))
    {
      v20 = *(v0 + 312);
      sub_24E612C80((v0 + 56), v0 + 16);
      swift_getKeyPath();
      *(v0 + 256) = v20;
      sub_24F91FD88();

      v21 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
      swift_beginAccess();
      sub_24E60169C(v20 + v21, v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
      if (*(v0 + 160))
      {
        sub_24E612C80((v0 + 136), v0 + 96);
        v22 = objc_opt_self();
        *(v0 + 616) = v22;
        *(v0 + 624) = *MEMORY[0x277CEE160];
        v23 = [v22 ams_sharedAccountStoreForMediaType_];
        v24 = [v23 ams_activeiTunesAccount];

        if (v24)
        {

          if (qword_27F211450 == -1)
          {
LABEL_16:
            v25 = sub_24F9220D8();
            *(v0 + 632) = __swift_project_value_buffer(v25, qword_27F39E940);
            v26 = sub_24F9220B8();
            v27 = sub_24F92BD98();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_24E5DD000, v26, v27, "App Store is signed in.", v28, 2u);
              MEMORY[0x2530542D0](v28, -1, -1);
            }

            v29 = *(v0 + 40);
            v30 = *(v0 + 48);
            __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
            v31 = swift_task_alloc();
            *(v0 + 640) = v31;
            *v31 = v0;
            v31[1] = sub_24ECC3BD4;

            return MEMORY[0x282165230](v29, v30);
          }

LABEL_41:
          swift_once();
          goto LABEL_16;
        }

        if (qword_27F211450 != -1)
        {
          swift_once();
        }

        v43 = sub_24F9220D8();
        __swift_project_value_buffer(v43, qword_27F39E940);
        v44 = sub_24F9220B8();
        v45 = sub_24F92BD98();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_24E5DD000, v44, v45, "App Store is signed out.", v46, 2u);
          MEMORY[0x2530542D0](v46, -1, -1);
        }

        v47 = *(v0 + 312);

        sub_24ECC5388(v47);
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        goto LABEL_32;
      }

      sub_24E601704(v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      sub_24E601704(v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
    }

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v37 = sub_24F9220D8();
    __swift_project_value_buffer(v37, qword_27F39E940);
    v38 = sub_24F9220B8();
    v39 = sub_24F92BDB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24E5DD000, v38, v39, "Game Services not available.", v40, 2u);
      MEMORY[0x2530542D0](v40, -1, -1);
    }

    v41 = *(v0 + 312);

    sub_24ECC5388(v41);
LABEL_32:

    v42 = *(v0 + 8);

    return v42();
  }

  v32 = *(v0 + 560);
  if (v2 >= *(v32 + 16))
  {
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32 + 16 * v2;
  v34 = *(v33 + 40);
  *(v0 + 600) = v34;
  v35 = *(v33 + 32);

  v36 = swift_task_alloc();
  *(v0 + 608) = v36;
  *v36 = v0;
  v36[1] = sub_24ECC322C;

  return MEMORY[0x282140778](v35, v34);
}

uint64_t sub_24ECC3BD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {
    v4 = sub_24ECC4F88;
  }

  else
  {
    v4 = sub_24ECC3CEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ECC3CEC()
{
  v1 = v0[81];
  if (*(v1 + 16))
  {
    v2 = v0[52];
    v3 = v0[53];
    v4 = v0[50];
    v5 = v0[51];
    v6 = v0[49];
    v7 = *(v5 + 16);
    v7(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v3, v2, v4);
    v7(v6, v3, v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    sub_24ECC1574(v6);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24E5DD000, v8, v9, "Game Center is signed in.", v10, 2u);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v11 = v0[15];
    v12 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v11);
    v13 = swift_task_alloc();
    v0[83] = v13;
    *v13 = v0;
    v13[1] = sub_24ECC4038;
    v14 = v0[53];
    v15 = v0[48];

    return MEMORY[0x282165208](v15, v14, v11, v12);
  }

  else
  {

    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "Game Center is signed out.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = v0[39];

    sub_24ECC5388(v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_24ECC4038()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_24ECC517C;
  }

  else
  {
    v2 = sub_24ECC414C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC414C()
{
  v69 = v0;
  v1 = *(v0[45] + 16);
  v1(v0[47], v0[48], v0[44]);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[47];
  if (v4)
  {
    v6 = v0[45];
    v7 = v0[46];
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_24F92B188();
    v64 = v1;
    v12 = v11;
    v67 = *(v6 + 8);
    v67(v5, v8);
    v13 = sub_24E7620D4(v10, v12, &v68);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Received %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2530542D0](v61, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);

    v14 = v64;
  }

  else
  {
    v15 = v0[44];
    v16 = v0[45];

    v67 = *(v16 + 8);
    v67(v5, v15);
    v14 = v1;
  }

  v62 = v0[77];
  v65 = v0[78];
  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[43];
  v20 = v0[39];
  v14(v19, v0[48], v17);
  (*(v18 + 56))(v19, 0, 1, v17);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v0[33] = v20;
  sub_24F91FD78();

  sub_24E601704(v19, &qword_27F22D4D8, &qword_24F9CF7D0);
  sub_24F9208C8();
  v23 = v22;
  v24 = [v62 ams:v65 sharedAccountStoreForMediaType:?];
  v25 = [v24 ams_activeiTunesAccount];
  v26 = [v25 ams_DSID];

  if (v26)
  {
    v27 = [v26 integerValue];

    v28 = v27 == sub_24F9208C8();
    v30 = v28 & ~v29;
  }

  else
  {
    sub_24F9208C8();
    v30 = v31;
  }

  v32 = v23 | v30 ^ 1;
  v33 = sub_24F9220B8();
  v34 = sub_24F92BD98();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109632;
    *(v35 + 4) = v32 & 1;
    *(v35 + 8) = 1024;
    *(v35 + 10) = (v23 & 1) == 0;
    *(v35 + 14) = 1024;
    *(v35 + 16) = v30 & 1;
    _os_log_impl(&dword_24E5DD000, v33, v34, "App Store needs to accept cross use: %{BOOL}d | hasLinkedDSID: %{BOOL}d, matchedWithSignedInAppStore: %{BOOL}d", v35, 0x14u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  sub_24F920938();
  v36 = sub_24F9208E8();
  v37 = sub_24F9220B8();
  v38 = sub_24F92BD98();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    v40 = v36 ^ 1;
    *(v39 + 4) = v40 & 1;
    _os_log_impl(&dword_24E5DD000, v37, v38, "Game Center needs to accept cross use: %{BOOL}d", v39, 8u);
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  else
  {

    v40 = v36 ^ 1;
  }

  v41 = v0[39];
  v42 = v32 | v40;
  v43 = ((v32 | v40) ^ 1) & 1;
  if (v43 == *(v41 + 16))
  {
    *(v41 + 16) = v43;
  }

  else
  {
    swift_getKeyPath();
    v44 = swift_task_alloc();
    *(v44 + 16) = v41;
    *(v44 + 24) = v43;
    v0[34] = v41;
    sub_24F91FD78();
  }

  v45 = v0[39];
  v46 = v42 & 1;
  if ((v42 & 1) == *(v45 + 17))
  {
    v50 = v0[53];
    v51 = v0[50];
    v52 = v0[51];
    v53 = v0[48];
    v54 = v0[44];
    (*(v0[41] + 8))(v0[42], v0[40]);
    v67(v53, v54);
    (*(v52 + 8))(v50, v51);
    *(v45 + 17) = v46;
  }

  else
  {
    v47 = v0[51];
    v63 = v0[50];
    v66 = v0[53];
    v59 = v0[44];
    v60 = v0[48];
    v48 = v0[41];
    v58 = v0[42];
    v57 = v0[40];
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v45;
    *(v49 + 24) = v46;
    v0[35] = v45;
    sub_24F91FD78();

    (*(v48 + 8))(v58, v57);
    v67(v60, v59);
    (*(v47 + 8))(v66, v63);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v55 = v0[1];

  return v55();
}