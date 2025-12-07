uint64_t sub_21A3A4590()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A48EC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A498C;

  return sub_21A3A01DC();
}

uint64_t sub_21A3A498C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A4A94, 0, 0);
}

uint64_t sub_21A3A4A94()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CE60(&type metadata for SaveRecipeAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A4E70;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A4E70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A4FAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A4FAC()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  v5[10] = a5;
  v10 = swift_task_alloc();
  v5[19] = v10;
  *v10 = v5;
  v10[1] = sub_21A3A53D0;

  return sub_21A3A0510(a2, a3, a4, a5);
}

uint64_t sub_21A3A53D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = a2;
  v3[20] = a2;

  return MEMORY[0x2822009F8](sub_21A3A54D8, 0, 0);
}

uint64_t sub_21A3A54D8()
{
  v20 = v0;
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[12];
    off_282B3CF98(&type metadata for GetIngredientsAppIntent);
    v3 = v0[5];
    v4 = v0[6];
    sub_21A360CEC(v0 + 2, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[21] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A5890;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v12 = sub_21A3B26CC();
      v18 = v9;
      v14 = v13;

      v15 = sub_21A3AF0A8(v12, v14, &v19);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_21A3A5890(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_21A3A5D04;
  }

  else
  {
    v4 = sub_21A3A59CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A59CC()
{
  v17 = v0;
  v1 = v0[23];
  if (*(v1 + 16))
  {
    v2 = v0[14];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 2);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 2);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v10 = sub_21A3B26CC();
      v15 = v7;
      v12 = v11;

      v13 = sub_21A3AF0A8(v10, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A5D04()
{
  sub_21A361318((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3A5D68(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A5E08;

  return sub_21A3A0AD8();
}

uint64_t sub_21A3A5E08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = a2;
  v3[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A5F10, 0, 0);
}

uint64_t sub_21A3A5F10()
{
  v20 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D048(&type metadata for SelectIngredientAppIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A6310;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136446210;
      v16 = sub_21A3B26CC();
      v17 = v9;
      v12 = v11;

      v13 = sub_21A3AF0A8(v16, v12, &v19);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_21A35E000, v8, v17, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21A3A6310(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21A3AC350;
  }

  else
  {
    v4 = sub_21A3A644C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A644C()
{
  v17 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136446210;
      v13 = sub_21A3B26CC();
      v14 = v7;
      v10 = v9;

      v11 = sub_21A3AF0A8(v13, v10, &v16);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_21A35E000, v6, v14, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v15);
      MEMORY[0x21CED8F60](v15, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A67CC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A686C;

  return sub_21A3A0F08();
}

uint64_t sub_21A3A686C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A6974, 0, 0);
}

uint64_t sub_21A3A6974()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D1F0(&type metadata for UnsaveRecipeAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A6D50;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A6D50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A6E8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A6E8C()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A71E8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A7288;

  return sub_21A3A123C();
}

uint64_t sub_21A3A7288(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A7390, 0, 0);
}

uint64_t sub_21A3A7390()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D2A8(&type metadata for ShowPreviousStepAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A776C;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A776C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A78A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A78A8()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A7C04(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A7CA4;

  return sub_21A3A1570();
}

uint64_t sub_21A3A7CA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = a2;
  v3[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A7DAC, 0, 0);
}

uint64_t sub_21A3A7DAC()
{
  v20 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D6D8(&type metadata for UnselectIngredientAppIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A81AC;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136446210;
      v16 = sub_21A3B26CC();
      v17 = v9;
      v12 = v11;

      v13 = sub_21A3AF0A8(v16, v12, &v19);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_21A35E000, v8, v17, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21A3A81AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21A3AC350;
  }

  else
  {
    v4 = sub_21A3A82E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A82E8()
{
  v17 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136446210;
      v13 = sub_21A3B26CC();
      v14 = v7;
      v10 = v9;

      v11 = sub_21A3AF0A8(v13, v10, &v16);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_21A35E000, v6, v14, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v15);
      MEMORY[0x21CED8F60](v15, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A8668(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A8708;

  return sub_21A3A18A4();
}

uint64_t sub_21A3A8708(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A8810, 0, 0);
}

uint64_t sub_21A3A8810()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D790(&type metadata for StopCookingAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A8BEC;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A8BEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A8D28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A8D28()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A9084(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A9124;

  return sub_21A3A1BD8();
}

uint64_t sub_21A3A9124(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A922C, 0, 0);
}

uint64_t sub_21A3A922C()
{
  v20 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D868(&type metadata for ShowIngredientsAppIntent);
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A9608;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v17 = sub_21A3B26CC();
      v18 = v9;
      v13 = v12;

      v14 = sub_21A3AF0A8(v17, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21A35E000, v8, v18, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v11);
      MEMORY[0x21CED8F60](v11, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A3A9608(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_21A3AC34C;
  }

  else
  {
    v4 = sub_21A3A9744;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3A9744()
{
  v17 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A9AA0(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A9B40;

  return sub_21A3A1F0C();
}

uint64_t sub_21A3A9B40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = a2;
  v3[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A9C48, 0, 0);
}

uint64_t sub_21A3A9C48()
{
  v20 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D9A0(&type metadata for ShowSpecificStepIntent);
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_21A3AA048;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v8 = sub_21A3B21DC();
    v9 = sub_21A3B25DC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136446210;
      v16 = sub_21A3B26CC();
      v17 = v9;
      v12 = v11;

      v13 = sub_21A3AF0A8(v16, v12, &v19);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_21A35E000, v8, v17, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v10, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v10, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21A3AA048(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21A3AA504;
  }

  else
  {
    v4 = sub_21A3AA184;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3AA184()
{
  v17 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136446210;
      v13 = sub_21A3B26CC();
      v14 = v7;
      v10 = v9;

      v11 = sub_21A3AF0A8(v13, v10, &v16);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_21A35E000, v6, v14, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v15);
      MEMORY[0x21CED8F60](v15, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3AA504()
{
  sub_21A361318((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3AA568(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *(v1 + 16);
  v3 = swift_task_alloc();
  v2[13] = v3;
  *v3 = v2;
  v3[1] = sub_21A3AA600;

  return sub_21A3A24C4();
}

uint64_t sub_21A3AA600(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[14] = a2;

  return MEMORY[0x2822009F8](sub_21A3AA708, 0, 0);
}

uint64_t sub_21A3AA708(uint64_t a1)
{
  v21 = v1;
  v2 = v1[14];
  if (v2)
  {
    v3 = v1[8];
    sub_21A3B187C();
    v4 = v1[5];
    v5 = v1[6];
    sub_21A360CEC(v1 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v1[15] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    v1[16] = v7;
    *v7 = v1;
    v7[1] = sub_21A3AAAC4;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = sub_21A3B21FC();
    sub_21A365DC4(v8, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v9 = sub_21A3B21DC();
    v10 = sub_21A3B25DC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      v18 = sub_21A3B26CC();
      v19 = v10;
      v14 = v13;

      v15 = sub_21A3AF0A8(v18, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21A35E000, v9, v19, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v11, 0xCu);
      sub_21A361318(v12);
      MEMORY[0x21CED8F60](v12, -1, -1);
      MEMORY[0x21CED8F60](v11, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_21A3AAAC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_21A3AAF5C;
  }

  else
  {
    v4 = sub_21A3AAC00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3AAC00()
{
  v17 = v0;
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 2);
    v4 = v0[1];
  }

  else
  {

    sub_21A361318(v0 + 2);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v5 = sub_21A3B21FC();
    sub_21A365DC4(v5, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v6 = sub_21A3B21DC();
    v7 = sub_21A3B25DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v14 = sub_21A3B26CC();
      v15 = v7;
      v11 = v10;

      v12 = sub_21A3AF0A8(v14, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21A35E000, v6, v15, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v8, 0xCu);
      sub_21A361318(v9);
      MEMORY[0x21CED8F60](v9, -1, -1);
      MEMORY[0x21CED8F60](v8, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3AAF5C()
{
  sub_21A361318((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3AAFC0()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24C38);
  sub_21A365DC4(v9, qword_27CD24C38);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3AB1A0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3AB264, 0, 0);
}

uint64_t sub_21A3AB264()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B62C0, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A3AB498;
  v8 = v0[12];

  return sub_21A39E6F8(v8);
}

uint64_t sub_21A3AB498()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A3AB5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3AB5AC()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_21A3AC314();
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v7));
  }

  else
  {
    v8 = v0[12];
    v9 = v0[10];
    os_unfair_lock_unlock((v5 + v7));

    sub_21A361318(v0 + 2);
    sub_21A36A72C(&qword_27CD23EC8, type metadata accessor for RecipeEntity, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    sub_21A36769C(v9, type metadata accessor for CookingSupportAppIntentInvocation);

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_21A3AB804@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E80 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3AB8AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD249C8, &qword_21A3B6330);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD249D0, &qword_21A3B6338);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD249D8, &qword_21A3B6368);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A3ABA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3AB1A0(a1);
}

double sub_21A3ABAF0@<D0>(uint64_t a2@<X8>)
{
  sub_21A3ABBB0(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21A3ABB34(uint64_t a1)
{
  v2 = sub_21A3902BC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3ABBB0@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A36A72C(&qword_27CD23FB8, type metadata accessor for RecipeEntity, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A3AC360()
{
  result = qword_27CD249E0;
  if (!qword_27CD249E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249E0);
  }

  return result;
}

unint64_t sub_21A3AC3B8()
{
  result = qword_27CD249E8;
  if (!qword_27CD249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249E8);
  }

  return result;
}

unint64_t sub_21A3AC410()
{
  result = qword_27CD249F0;
  if (!qword_27CD249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249F0);
  }

  return result;
}

unint64_t sub_21A3AC468()
{
  result = qword_27CD249F8;
  if (!qword_27CD249F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249F8);
  }

  return result;
}

uint64_t sub_21A3AC4BC()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v1 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v2 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  qword_27CD24C50 = v0;
  *algn_27CD24C58 = v1;
  qword_27CD24C60 = v2;
  unk_27CD24C68 = result;
  return result;
}

uint64_t sub_21A3AC5D8@<X0>(void *a1@<X8>)
{
  if (qword_27CD23E88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27CD24C58;
  v2 = qword_27CD24C60;
  v3 = unk_27CD24C68;
  *a1 = qword_27CD24C50;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

unint64_t sub_21A3AC678()
{
  result = qword_27CD24A00;
  if (!qword_27CD24A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A00);
  }

  return result;
}

unint64_t sub_21A3AC6CC()
{
  result = qword_27CD24A08;
  if (!qword_27CD24A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A08);
  }

  return result;
}

unint64_t sub_21A3AC724()
{
  result = qword_27CD24A10;
  if (!qword_27CD24A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A10);
  }

  return result;
}

uint64_t sub_21A3AC778@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E90 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21A3AC824()
{
  result = qword_27CD24A18;
  if (!qword_27CD24A18)
  {
    sub_21A364A10(&qword_27CD24A20, &qword_21A3B65D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A18);
  }

  return result;
}

uint64_t sub_21A3AC888(uint64_t a1)
{
  v2 = sub_21A36AA54();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_21A3AC8D8()
{
  result = qword_27CD24A28;
  if (!qword_27CD24A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A28);
  }

  return result;
}

uint64_t sub_21A3AC934()
{
  v0 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v15 - v2;
  v4 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = sub_21A3B20EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v11 = sub_21A3B24CC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_21A3B24BC();
  sub_21A3B24AC();
  sub_21A3B19CC();
  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = sub_21A3B1BBC();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return sub_21A3B1BCC();
}

uint64_t sub_21A3ACBA4(uint64_t a1)
{
  v2 = sub_21A3AC724();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21A3ACBF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A3ACC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A3ACC88()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v17 - v2;
  v17[0] = sub_21A3B20CC();
  v4 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0], v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A3B212C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_21A3B20EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_21A3B1C9C();
  sub_21A365DFC(v15, qword_27CD24C70);
  sub_21A365DC4(v15, qword_27CD24C70);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_21A3B20FC();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_21A3B1C8C();
}

uint64_t sub_21A3ACFB0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_21A3ACFEC()
{
  result = qword_27CD24A30;
  if (!qword_27CD24A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A30);
  }

  return result;
}

unint64_t sub_21A3AD044()
{
  result = qword_27CD24A38;
  if (!qword_27CD24A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A38);
  }

  return result;
}

uint64_t sub_21A3AD09C(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A390364(a1, &v11 - v8);
  sub_21A390364(v9, v6);
  sub_21A3B1A2C();
  return sub_21A365D1C(v9, &qword_27CD23F78, &unk_21A3B2F40);
}

uint64_t sub_21A3AD180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v9 = swift_task_alloc();
  v5[15] = v9;
  *v9 = v5;
  v9[1] = sub_21A3AD238;

  return sub_21A3B14FC(a3, a4, a5);
}

uint64_t sub_21A3AD238(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[16] = a2;

  return MEMORY[0x2822009F8](sub_21A3AD340, 0, 0);
}

uint64_t sub_21A3AD340(uint64_t a1)
{
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[8];
    sub_21A3B187C();
    v4 = v1[5];
    v5 = v1[6];
    sub_21A360CEC(v1 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v1[17] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    v1[18] = v7;
    *v7 = v1;
    v7[1] = sub_21A3AD4CC;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v8 = v1[10];
    v9 = sub_21A3B205C();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_21A3AD4CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_21A3AD744;
  }

  else
  {

    v4 = sub_21A3AD5E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3AD5E8()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    v5 = 0;
  }

  else
  {

    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[10], v5, 1, v3);
  sub_21A361318(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_21A3AD744()
{
  v18 = v0;

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138543618;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v12;
    *v9 = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_21A3AF0A8(0x6569646572676E49, 0xEF7972657551746ELL, &v17);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v8, 0x16u);
    sub_21A365D1C(v9, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v9, -1, -1);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v14 = sub_21A3B205C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_21A3AD9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a1;
  v10 = sub_21A3B20CC();
  v5[5] = v10;
  v5[6] = *(v10 - 8);
  v5[7] = swift_task_alloc();
  sub_21A3B212C();
  v5[8] = swift_task_alloc();
  sub_21A3B24DC();
  v5[9] = swift_task_alloc();
  sub_21A3B20EC();
  v5[10] = swift_task_alloc();
  v11 = sub_21A3B1D6C();
  v5[11] = v11;
  v5[12] = *(v11 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v12 = swift_task_alloc();
  v5[16] = v12;
  v13 = sub_21A3B205C();
  v5[17] = v13;
  v5[18] = *(v13 - 8);
  v5[19] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[20] = v14;
  *v14 = v5;
  v14[1] = sub_21A3ADCA0;

  return sub_21A3AD180(v12, a2, a3, a4, a5);
}

uint64_t sub_21A3ADCA0()
{

  return MEMORY[0x2822009F8](sub_21A3ADD9C, 0, 0);
}

uint64_t sub_21A3ADD9C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    goto LABEL_31;
  }

  (*(v2 + 32))(v0[19], v3, v1);

  v5 = sub_21A3B1348(v4);

  result = sub_21A3B1F9C();
  v7 = result;
  v71 = *(result + 16);
  v72 = v0;
  if (!v71)
  {
    v58 = MEMORY[0x277D84F90];
LABEL_24:

    v37 = *(v58 + 16);
    if (v37)
    {
      v38 = v0[12];
      v39 = v0[6];
      v73 = MEMORY[0x277D84F90];
      sub_21A3AF670(0, v37, 0);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      v40 = v73;
      v41 = *(v38 + 16);
      v38 += 16;
      v63 = v41;
      v42 = v58 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
      v62 = *(v38 + 56);
      v61 = *MEMORY[0x277CC9110];
      v59 = (v38 - 8);
      v60 = (v39 + 104);
      do
      {
        v70 = v37;
        v43 = v72[13];
        v67 = v72[11];
        v44 = v72[7];
        v45 = v72[5];
        v63(v43, v42);
        v68 = sub_21A3B1D4C();
        v47 = v46;
        v48 = sub_21A3B1D5C();
        v64 = v49;
        v66 = v48;
        sub_21A3B247C();
        sub_21A3B211C();
        (*v60)(v44, v61, v45);
        sub_21A3B20FC();
        v50 = sub_21A3B19EC();
        v72[2] = v66;
        v72[3] = v64;
        sub_21A3B1A8C();

        sub_21A3B19DC();
        (*v59)(v43, v67);

        v52 = *(v73 + 16);
        v51 = *(v73 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_21A3AF670((v51 > 1), v52 + 1, 1);
        }

        *(v73 + 16) = v52 + 1;
        v53 = (v73 + 24 * v52);
        v53[4] = v68;
        v53[5] = v47;
        v53[6] = v50;
        v42 += v62;
        --v37;
      }

      while (v70 != 1);
      v0 = v72;
      (*(v72[18] + 8))(v72[19], v72[17]);

      goto LABEL_32;
    }

    v55 = v0[18];
    v54 = v0[19];
    v56 = v0[17];

    (*(v55 + 8))(v54, v56);
LABEL_31:
    v40 = MEMORY[0x277D84F90];
LABEL_32:

    v57 = v0[1];

    return v57(v40);
  }

  v8 = 0;
  v9 = v0[12];
  v10 = v5 + 56;
  v65 = (v9 + 32);
  v58 = MEMORY[0x277D84F90];
  v69 = result;
  while (v8 < *(v7 + 16))
  {
    v13 = v0[15];
    v14 = v0[11];
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = *(v9 + 72);
    (*(v9 + 16))(v13, v7 + v15 + v16 * v8, v14);
    v17 = sub_21A3B1D4C();
    v19 = v18;
    if (*(v5 + 16) && (v20 = v17, sub_21A3B26AC(), sub_21A3B250C(), v21 = sub_21A3B26BC(), v22 = -1 << *(v5 + 32), v23 = v21 & ~v22, ((*(v10 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(v5 + 48) + 16 * v23);
        v26 = *v25 == v20 && v25[1] == v19;
        if (v26 || (sub_21A3B267C() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v10 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v27 = v72[14];
      v28 = v72[15];
      v29 = v72[11];

      v30 = *v65;
      (*v65)(v27, v28, v29);
      v31 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3AF690(0, *(v58 + 16) + 1, 1);
        v31 = v58;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21A3AF690((v32 > 1), v33 + 1, 1);
        v31 = v58;
      }

      v34 = v72[14];
      v35 = v72[11];
      *(v31 + 16) = v33 + 1;
      v58 = v31;
      v36 = v31 + v15 + v33 * v16;
      v0 = v72;
      result = v30(v36, v34, v35);
    }

    else
    {
LABEL_5:
      v0 = v72;
      v11 = v72[15];
      v12 = v72[11];

      result = (*(v9 + 8))(v11, v12);
    }

    ++v8;
    v7 = v69;
    if (v8 == v71)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3AE3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B13E0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_21A3AE404(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A36A774;

  return sub_21A3AD9EC(a1, v4, v5, v7, v6);
}

unint64_t sub_21A3AE4C4()
{
  result = qword_27CD24A40;
  if (!qword_27CD24A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A40);
  }

  return result;
}

uint64_t sub_21A3AE518(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21A3AC468();
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_21A3AE5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a1;
  v6[9] = a2;
  v11 = sub_21A3B20CC();
  v6[10] = v11;
  v6[11] = *(v11 - 8);
  v6[12] = swift_task_alloc();
  v12 = sub_21A3B212C();
  v6[13] = v12;
  v6[14] = *(v12 - 8);
  v6[15] = swift_task_alloc();
  sub_21A3B24DC();
  v6[16] = swift_task_alloc();
  sub_21A3B20EC();
  v6[17] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24128, &qword_21A3B3718);
  v6[18] = swift_task_alloc();
  v13 = sub_21A3B1D6C();
  v6[19] = v13;
  v6[20] = *(v13 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v14 = swift_task_alloc();
  v6[24] = v14;
  v15 = sub_21A3B205C();
  v6[25] = v15;
  v6[26] = *(v15 - 8);
  v6[27] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[28] = v16;
  *v16 = v6;
  v16[1] = sub_21A3AE8E8;

  return sub_21A3AD180(v14, a3, a4, a5, a6);
}

uint64_t sub_21A3AE8E8()
{

  return MEMORY[0x2822009F8](sub_21A3AE9E4, 0, 0);
}

uint64_t sub_21A3AE9E4()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    goto LABEL_21;
  }

  (*(v2 + 32))(v0[27], v3, v1);
  result = sub_21A3B1F9C();
  v5 = MEMORY[0x277D84F90];
  v57 = *(result + 16);
  if (!v57)
  {
LABEL_14:

    v22 = *(v5 + 16);
    if (v22)
    {
      v23 = v0[20];
      v24 = v0[11];
      v61 = MEMORY[0x277D84F90];
      sub_21A3AF670(0, v22, 0);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      v60 = v61;
      v25 = *(v23 + 16);
      v23 += 16;
      v26 = v5 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v46 = *(v23 + 56);
      v47 = v25;
      v45 = *MEMORY[0x277CC9110];
      v43 = (v23 - 8);
      v44 = (v24 + 104);
      do
      {
        v58 = v22;
        v27 = v0[21];
        v54 = v0[19];
        v28 = v0[12];
        v29 = v0[10];
        v47(v27, v26);
        v56 = sub_21A3B1D4C();
        v31 = v30;
        v32 = sub_21A3B1D5C();
        v51 = v33;
        v52 = v32;
        sub_21A3B247C();
        sub_21A3B211C();
        (*v44)(v28, v45, v29);
        sub_21A3B20FC();
        v34 = sub_21A3B19EC();
        v0[6] = v52;
        v0[7] = v51;
        sub_21A3B1A8C();

        sub_21A3B19DC();
        (*v43)(v27, v54);

        v35 = v60;
        v37 = *(v60 + 16);
        v36 = *(v60 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21A3AF670((v36 > 1), v37 + 1, 1);
          v35 = v60;
        }

        v60 = v35;
        *(v35 + 16) = v37 + 1;
        v38 = (v35 + 24 * v37);
        v38[4] = v56;
        v38[5] = v31;
        v38[6] = v34;
        v26 += v46;
        v22 = v58 - 1;
      }

      while (v58 != 1);
      (*(v0[26] + 8))(v0[27], v0[25]);

      goto LABEL_22;
    }

    v40 = v0[26];
    v39 = v0[27];
    v41 = v0[25];

    (*(v40 + 8))(v39, v41);
LABEL_21:
    v60 = MEMORY[0x277D84F90];
LABEL_22:

    v42 = v0[1];

    return v42(v60);
  }

  v6 = 0;
  v7 = v0[20];
  v50 = (v0[14] + 56);
  v53 = v7;
  v55 = result;
  v48 = (v7 + 8);
  v49 = (v7 + 32);
  while (v6 < *(result + 16))
  {
    v8 = v5;
    v9 = v0[18];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v13 = *(v53 + 72);
    (*(v53 + 16))(v0[23], result + v59 + v13 * v6, v0[19]);
    v0[2] = sub_21A3B1D5C();
    v0[3] = v14;
    v0[4] = v11;
    v0[5] = v12;
    (*v50)(v9, 1, 1, v10);
    sub_21A36E1E4();
    sub_21A3B260C();
    v16 = v15;
    sub_21A365D1C(v9, &qword_27CD24128, &qword_21A3B3718);

    if (v16)
    {
      (*v48)(v0[23], v0[19]);
      v5 = v8;
    }

    else
    {
      v17 = *v49;
      (*v49)(v0[22], v0[23], v0[19]);
      v5 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3AF690(0, *(v8 + 16) + 1, 1);
        v5 = v8;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21A3AF690((v18 > 1), v19 + 1, 1);
        v5 = v8;
      }

      v20 = v0[22];
      v21 = v0[19];
      *(v5 + 16) = v19 + 1;
      v17(v5 + v59 + v19 * v13, v20, v21);
    }

    ++v6;
    result = v55;
    if (v57 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3AEFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = swift_task_alloc();
  *(v4 + 24) = v11;
  *v11 = v4;
  v11[1] = sub_21A3689C0;

  return sub_21A3AE5CC(a2, a3, v7, v8, v10, v9);
}

unint64_t sub_21A3AF0A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21A3AF174(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21A3B17BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_21A361318(v11);
  return v7;
}

unint64_t sub_21A3AF174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21A3AF280(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21A3B265C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21A3AF280(uint64_t a1, unint64_t a2)
{
  v3 = sub_21A3AF2CC(a1, a2);
  sub_21A3AF3FC(&unk_282B3C7B8);
  return v3;
}

void *sub_21A3AF2CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21A3AF4E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21A3B265C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21A3B252C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A3AF4E8(v10, 0);
        result = sub_21A3B263C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21A3AF3FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21A3AF55C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A3AF4E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21A365B50(&qword_27CD24A58, &qword_21A3B6998);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21A3AF55C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A365B50(&qword_27CD24A58, &qword_21A3B6998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21A3AF650(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3AF6B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3AF670(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3AF7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A3AF690(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3AF8DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3AF6B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A3AF7BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A365B50(&qword_27CD24A48, &qword_21A3B6980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3AF8DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_21A365B50(&qword_27CD24A50, &qword_21A3B6988);
  v10 = *(sub_21A3B1D6C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21A3B1D6C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21A3AFAB4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21A3B20BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]);
  v34 = a2;
  v12 = sub_21A3B244C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_21A3B1818(&qword_27CD24170, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDC0]);
      v22 = sub_21A3B246C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_21A3B04A0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_21A3AFD94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A3B26AC();
  sub_21A3B250C();
  v8 = sub_21A3B26BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A3B267C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21A3B0744(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A3AFEE4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21A3B20BC();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  result = sub_21A3B262C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]);
      result = sub_21A3B244C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_21A3B0240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  result = sub_21A3B262C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21A3B26AC();
      sub_21A3B250C();
      result = sub_21A3B26BC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21A3B04A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21A3B20BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21A3AFEE4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21A3B08C4();
      goto LABEL_12;
    }

    sub_21A3B0C58(v11 + 1);
  }

  v13 = *v3;
  sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]);
  v14 = sub_21A3B244C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21A3B1818(&qword_27CD24170, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDC0]);
      v22 = sub_21A3B246C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21A3B269C();
  __break(1u);
  return result;
}

uint64_t sub_21A3B0744(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21A3B0240(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A3B0AFC();
      goto LABEL_16;
    }

    sub_21A3B0F74(v8 + 1);
  }

  v10 = *v4;
  sub_21A3B26AC();
  sub_21A3B250C();
  result = sub_21A3B26BC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21A3B267C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21A3B269C();
  __break(1u);
  return result;
}

void *sub_21A3B08C4()
{
  v1 = v0;
  v2 = sub_21A3B20BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  v7 = *v0;
  v8 = sub_21A3B261C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_21A3B0AFC()
{
  v1 = v0;
  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  v2 = *v0;
  v3 = sub_21A3B261C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21A3B0C58(uint64_t a1)
{
  v2 = v1;
  v34 = sub_21A3B20BC();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  v8 = sub_21A3B262C();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]);
      result = sub_21A3B244C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_21A3B0F74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  result = sub_21A3B262C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21A3B26AC();

      sub_21A3B250C();
      result = sub_21A3B26BC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21A3B11AC(uint64_t a1)
{
  v2 = sub_21A3B20BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]);
  result = MEMORY[0x21CED8A50](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_21A3AFAB4(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_21A3B1348(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED8A50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21A3AFD94(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21A3B13E0()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  sub_21A3B1C7C();
  return v0;
}

uint64_t sub_21A3B14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_21A3B1FFC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v3[13] = swift_task_alloc();
  type metadata accessor for RecipeEntity(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3B1624, 0, 0);
}

uint64_t sub_21A3B1624()
{
  if (sub_21A3B1C6C() || sub_21A3B1C6C())
  {
    v1 = v0[14];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v2 = *v1;
    v3 = v1[1];

    sub_21A36FF74(v1);

    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    sub_21A3B187C();
    v6 = v0[5];
    v7 = v0[6];
    sub_21A360CEC(v0 + 2, v6);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_21A36FCA8;
    v9 = v0[13];

    return MEMORY[0x28214F8F0](v9, v6, v7);
  }
}

uint64_t sub_21A3B17BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3B1818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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