uint64_t sub_1DB432380()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB432474()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1DB4325FC;
  }

  else
  {
    v2 = sub_1DB432588;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB432588()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4325FC()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB432670(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = sub_1DB4679C8();

  return MEMORY[0x1EEE6DFA0](sub_1DB4326E0, 0, 0);
}

uint64_t sub_1DB4326E0()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v5 = off_1EE30D3B0;
    v6 = *(off_1EE30D3B0 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E0, &qword_1DB51C9B8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E0, &qword_1DB51C9B8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1DB4695C8;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E8, &qword_1DB51C9C0);
  if (swift_dynamicCast())
  {
    v16 = sub_1DB4BABBC();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459F0, &qword_1DB51C9C8);
  if (swift_dynamicCast())
  {
    v3 = sub_1DB4C36E4();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459F8, &qword_1DB51C9D0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1DB4313A4;

    return sub_1DB43D63C();
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v18 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v18);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB432C9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB432CBC, 0, 0);
}

uint64_t sub_1DB432CBC()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(&type metadata for Bag), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v3 = off_1EE30D3B0;
    v4 = *(off_1EE30D3B0 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 128) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A20, &qword_1DB51CA50);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 208);

      *v8 = 0;
LABEL_25:
      v14 = *(v0 + 8);

      return v14();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A20, &qword_1DB51CA50);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 144);
        if (v9)
        {
          v10 = *(v0 + 152);

          v11 = swift_task_alloc();
          *(v0 + 224) = v11;
          *v11 = v0;
          v11[1] = sub_1DB43322C;
          v12 = *(v0 + 208);
          v13 = *(v0 + 216);

          return sub_1DB37F5C0(v12, v9, v13, &type metadata for Bag, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    **(v0 + 208) = *(v0 + 176);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A10, &qword_1DB51CA38);
  if (swift_dynamicCast())
  {
    sub_1DB4BABE8(*(v0 + 208));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A18, &qword_1DB51CA40);
  if (swift_dynamicCast())
  {
    sub_1DB4C3724(*(v0 + 208));

    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A28, &qword_1DB51CA58);
  if (swift_dynamicCast())
  {
    *(v0 + 232) = *(v0 + 200);
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_1DB433320;
    v16 = *(v0 + 208);

    return sub_1DB43D7F4(v16);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](6775106, 0xE300000000000000);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB43322C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB433320()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1DB4334A8;
  }

  else
  {
    v2 = sub_1DB433434;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB433434()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4334A8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB43351C(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for JetPackAssetSession();

  return MEMORY[0x1EEE6DFA0](sub_1DB433588, 0, 0);
}

uint64_t sub_1DB433588()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v5 = off_1EE30D3B0;
    v6 = *(off_1EE30D3B0 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A48, &qword_1DB51CAC8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A48, &qword_1DB51CAC8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1DB433B44;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A30, &qword_1DB51CA98);
  if (swift_dynamicCast())
  {
    v16 = sub_1DB4BAD7C();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A38, &qword_1DB51CAA0);
  if (swift_dynamicCast())
  {
    v3 = sub_1DB4C38A8();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D0, &qword_1DB51C8E0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1DB433C84;

    return sub_1DB43DB6C();
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB51C550);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB433B44()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t sub_1DB433C84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1DB433E2C;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v5 = sub_1DB433DB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB433DB0()
{
  v1 = v0[33];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1DB433E2C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB433EA0(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for JetPackAsset(0);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB433F60, 0, 0);
}

uint64_t sub_1DB433F60()
{
  if (!*(*(v0 + 208) + 16) || (v1 = sub_1DB30EE50(*(v0 + 216)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45960, &qword_1DB51C770);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_15:
      v11 = *(v0 + 216);
      v12 = *(v0 + 224);
      v13 = *(v0 + 200);

      (*(v12 + 56))(v13, 1, 1, v11);
LABEL_25:

      v23 = *(v0 + 8);

      return v23();
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45960, &qword_1DB51C770);
      result = swift_dynamicCast();
      if (result)
      {
        v14 = *(v0 + 144);
        if (v14)
        {
          v15 = *(v0 + 152);

          v16 = swift_task_alloc();
          *(v0 + 240) = v16;
          *v16 = v0;
          v16[1] = sub_1DB434598;
          v17 = *(v0 + 208);
          v18 = *(v0 + 216);
          v19 = *(v0 + 200);

          return sub_1DB37F5C0(v19, v14, v17, v18, v14, v15);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 208) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    sub_1DB468D80(*(v0 + 232), v5, type metadata accessor for JetPackAsset);
    (*(v3 + 56))(v5, 0, 1, v4);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45950, &qword_1DB51C748);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 216);
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    sub_1DB4BAF48();

    (*(v21 + 56))(v22, 0, 1, v20);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45958, &qword_1DB51C750);
  if (swift_dynamicCast())
  {
    sub_1DB4C3A90();
    (*(*(v0 + 224) + 56))(*(v0 + 200), 0, 1, *(v0 + 216));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45968, &qword_1DB51C778);
  if (swift_dynamicCast())
  {
    *(v0 + 248) = *(v0 + 192);
    v24 = swift_task_alloc();
    *(v0 + 256) = v24;
    *v24 = v0;
    v24[1] = sub_1DB4346B0;
    v25 = *(v0 + 200);

    return sub_1DB43DED8(v25);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x416B63615074654ALL, 0xEC00000074657373);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB434598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB4346B0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1DB434870;
  }

  else
  {
    v2 = sub_1DB4347C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4347C4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB434870()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4348EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43490C, 0, 0);
}

uint64_t sub_1DB43490C()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1DB30EE50(&type metadata for DiskJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A8, &qword_1DB51C878);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1DB51C480;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A8, &qword_1DB51C878);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1DB434EB0;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for DiskJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1DB30C200((v0 + 104), (v0 + 72));
  sub_1DB300B14(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459B0, &qword_1DB51C880);
  if (swift_dynamicCast())
  {
    sub_1DB4BAF74();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459B8, &qword_1DB51C888);
  if (swift_dynamicCast())
  {
    sub_1DB4C3AD0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459C0, &qword_1DB51C890);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_1DB434FA4;
    v20 = *(v0 + 256);

    return sub_1DB43E090(v20);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52F150);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB434EB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB434FA4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1DB43512C;
  }

  else
  {
    v2 = sub_1DB4350B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4350B8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB43512C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4351A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4351C0, 0, 0);
}

uint64_t sub_1DB4351C0()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1DB30EE50(&type metadata for InMemoryJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45978, &qword_1DB51C7D0);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1DB51C480;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45978, &qword_1DB51C7D0);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1DB469554;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for InMemoryJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1DB30C200((v0 + 104), (v0 + 72));
  sub_1DB300B14(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45980, &qword_1DB51C7D8);
  if (swift_dynamicCast())
  {
    sub_1DB4BAF94();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45988, &qword_1DB51C7E0);
  if (swift_dynamicCast())
  {
    sub_1DB4C3B04();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45990, &qword_1DB51C7E8);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_1DB435764;
    v20 = *(v0 + 256);

    return sub_1DB43E398(v20);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52F130);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB435764()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1DB4695D0;
  }

  else
  {
    v2 = sub_1DB469580;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB435878()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v43 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v40 = v12;
    v41 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v42 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v44.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v44);
    tv_sec = v44.tv_sec;
    tv_nsec = v44.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v44.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AE8, &qword_1DB51CCF8);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 32) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v40 + 4);
    started = type metadata accessor for StartUpPerformanceEvent();
    v35 = sub_1DB50ABA0();
    v36 = v43;
    (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v41;
    v38[4] = v42;
    v38[5] = v39;
    v38[6] = v1;
    v38[7] = started;
    v38[8] = tv_sec;
    v38[9] = tv_nsec;
    v38[10] = v24;
    v38[11] = v27;
    v38[12] = v28;
    v38[13] = v37;

    sub_1DB388F14(0, 0, v36, &unk_1DB51CD08, v38);

    return v28;
  }
}

uint64_t sub_1DB435D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v42 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v39 = v12;
    v40 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v41 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v43.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v43);
    tv_sec = v43.tv_sec;
    tv_nsec = v43.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v43.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A80, &qword_1DB51CB78);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 104) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v39 + 4);
    v34 = sub_1DB50ABA0();
    v35 = v42;
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v40;
    v37[4] = v41;
    v37[5] = v38;
    v37[6] = v1;
    v37[7] = &type metadata for JetPackAssetSession.Configuration;
    v37[8] = tv_sec;
    v37[9] = tv_nsec;
    v37[10] = v24;
    v37[11] = v27;
    v37[12] = v28;
    v37[13] = v36;

    sub_1DB388F14(0, 0, v35, &unk_1DB51CB88, v37);

    return v28;
  }
}

uint64_t sub_1DB436214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v43 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v40 = v12;
    v41 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v42 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v44.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v44);
    tv_sec = v44.tv_sec;
    tv_nsec = v44.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v44.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AB0, &qword_1DB51CBE8);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 64) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v40 + 4);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
    v35 = sub_1DB50ABA0();
    v36 = v43;
    (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v41;
    v38[4] = v42;
    v38[5] = v39;
    v38[6] = v1;
    v38[7] = v34;
    v38[8] = tv_sec;
    v38[9] = tv_nsec;
    v38[10] = v24;
    v38[11] = v27;
    v38[12] = v28;
    v38[13] = v37;

    sub_1DB388F14(0, 0, v36, &unk_1DB51CBF8, v38);

    return v28;
  }
}

uint64_t sub_1DB4366EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44[-v3];
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44[-v10];
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v49 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v46 = v12;
    v47 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v48 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v19;
      v23 = v22;
      v50.tv_sec = v22;
      *v21 = 136315138;
      sub_1DB4679C8();
      v24 = sub_1DB50BEE0();
      v26 = sub_1DB3D4EE8(v24, v25, &v50.tv_sec);

      *(v21 + 4) = v26;
      v27 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v45, v27, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E1288220](v23, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v28 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v50);
    tv_sec = v50.tv_sec;
    tv_nsec = v50.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v31 = v50.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A00, &qword_1DB51C9E8);
    v32 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = MEMORY[0x1E69E7CC0];
    *(v32 + 16) = v33;
    *(v32 + 24) = v34;
    *(v32 + 32) = 0;
    v35 = *(v1 + 24);
    v36 = *(v1 + 32);
    v37 = *(v1 + 40);
    *(v1 + 24) = v32;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v35, v36, v37);
    os_unfair_lock_unlock(v46 + 4);
    v38 = sub_1DB4679C8();
    v39 = sub_1DB50ABA0();
    v40 = v49;
    (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v47;
    v42[4] = v48;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = v38;
    v42[8] = tv_sec;
    v42[9] = tv_nsec;
    v42[10] = v28;
    v42[11] = v31;
    v42[12] = v32;
    v42[13] = v41;

    sub_1DB388F14(0, 0, v40, &unk_1DB51C9F8, v42);

    return v32;
  }
}

uint64_t sub_1DB436BC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v42 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v39 = v12;
    v40 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v41 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v43.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v43);
    tv_sec = v43.tv_sec;
    tv_nsec = v43.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v43.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 32) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v39 + 4);
    v34 = sub_1DB50ABA0();
    v35 = v42;
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v40;
    v37[4] = v41;
    v37[5] = v38;
    v37[6] = v1;
    v37[7] = &type metadata for Bag;
    v37[8] = tv_sec;
    v37[9] = tv_nsec;
    v37[10] = v24;
    v37[11] = v27;
    v37[12] = v28;
    v37[13] = v36;

    sub_1DB388F14(0, 0, v35, &unk_1DB51CA78, v37);

    return v28;
  }
}

uint64_t sub_1DB437084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v43 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v40 = v12;
    v41 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v42 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB51C550, &v44.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v44);
    tv_sec = v44.tv_sec;
    tv_nsec = v44.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v44.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A50, &qword_1DB51CAE0);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 32) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v40 + 4);
    v34 = type metadata accessor for JetPackAssetSession();
    v35 = sub_1DB50ABA0();
    v36 = v43;
    (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v41;
    v38[4] = v42;
    v38[5] = v39;
    v38[6] = v1;
    v38[7] = v34;
    v38[8] = tv_sec;
    v38[9] = tv_nsec;
    v38[10] = v24;
    v38[11] = v27;
    v38[12] = v28;
    v38[13] = v37;

    sub_1DB388F14(0, 0, v36, &unk_1DB51CAF0, v38);

    return v28;
  }
}

void *sub_1DB43754C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v44 - v6);
  v8 = sub_1DB50A230();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v15 = *(v1 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v15 + 4);
    return v16;
  }

  else
  {
    v47 = *(v1 + 24);
    v48 = v4;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v45 = v15;
    v46 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v44[1] = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v44[0] = v7;
      v25 = v24;
      v26 = swift_slowAlloc();
      v49.tv_sec = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v49.tv_sec);
      v27 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v27, "MakeDependency", "object=%s,type=async", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E1288220](v26, -1, -1);
      v28 = v25;
      v7 = v44[0];
      MEMORY[0x1E1288220](v28, -1, -1);
    }

    (*(v9 + 16))(v11, v14, v8);
    sub_1DB50A2C0();
    swift_allocObject();
    v29 = sub_1DB50A2B0();
    (*(v9 + 8))(v14, v8);
    static MonotonicTime.now.getter(&v49);
    tv_sec = v49.tv_sec;
    tv_nsec = v49.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v32 = v49.tv_sec;
    *v7 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45970, &qword_1DB51C790);
    v33 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v33[2] = v34;
    sub_1DB30C06C(v7, v33 + *(*v33 + 96), &unk_1ECC45350, &unk_1DB518F60);
    v35 = *(v1 + 24);
    v36 = *(v1 + 32);
    v37 = *(v1 + 40);
    *(v1 + 24) = v33;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v35, v36, v37);
    os_unfair_lock_unlock(v45 + 4);
    v38 = type metadata accessor for JetPackAsset(0);
    v39 = sub_1DB50ABA0();
    v40 = v48;
    (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v46;
    v42[4] = v47;
    v42[5] = v43;
    v42[6] = v1;
    v42[7] = v38;
    v42[8] = tv_sec;
    v42[9] = tv_nsec;
    v42[10] = v29;
    v42[11] = v32;
    v42[12] = v33;
    v42[13] = v41;

    sub_1DB388F14(0, 0, v40, &unk_1DB51C7A0, v42);

    return v33;
  }
}

uint64_t sub_1DB437AB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v42 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v39 = v12;
    v40 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v41 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v43.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v43);
    tv_sec = v43.tv_sec;
    tv_nsec = v43.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v43.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459C8, &qword_1DB51C8A8);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 80) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v39 + 4);
    v34 = sub_1DB50ABA0();
    v35 = v42;
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v40;
    v37[4] = v41;
    v37[5] = v38;
    v37[6] = v1;
    v37[7] = &type metadata for DiskJetPackLoader;
    v37[8] = tv_sec;
    v37[9] = tv_nsec;
    v37[10] = v24;
    v37[11] = v27;
    v37[12] = v28;
    v37[13] = v36;

    sub_1DB388F14(0, 0, v35, &unk_1DB51C8B8, v37);

    return v28;
  }
}

uint64_t sub_1DB437F80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1DB50A230();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(v1 + 16);
  os_unfair_lock_lock(v12 + 4);
  v13 = *(v1 + 24);
  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v12 + 4);
    return v13;
  }

  else
  {
    v42 = v4;
    v15 = *(v1 + 32);
    v16 = qword_1EE30EAE8;
    v39 = v12;
    v40 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DB50A270();
    __swift_project_value_buffer(v17, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v18 = sub_1DB50A250();
    v19 = sub_1DB50B070();
    v20 = sub_1DB50B0E0();
    v41 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43.tv_sec = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v43.tv_sec);
      v23 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v18, v19, v23, "MakeDependency", "object=%s,type=async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1DB50A2C0();
    swift_allocObject();
    v24 = sub_1DB50A2B0();
    (*(v6 + 8))(v11, v5);
    static MonotonicTime.now.getter(&v43);
    tv_sec = v43.tv_sec;
    tv_nsec = v43.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v27 = v43.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45998, &qword_1DB51C800);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 80) = 0;
    v31 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    *(v1 + 24) = v28;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v31, v32, v33);
    os_unfair_lock_unlock(v39 + 4);
    v34 = sub_1DB50ABA0();
    v35 = v42;
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v40;
    v37[4] = v41;
    v37[5] = v38;
    v37[6] = v1;
    v37[7] = &type metadata for InMemoryJetPackLoader;
    v37[8] = tv_sec;
    v37[9] = tv_nsec;
    v37[10] = v24;
    v37[11] = v27;
    v37[12] = v28;
    v37[13] = v36;

    sub_1DB388F14(0, 0, v35, &unk_1DB51C810, v37);

    return v28;
  }
}

uint64_t sub_1DB438448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB438484, 0, 0);
}

uint64_t sub_1DB438484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  type metadata accessor for StartUpPerformanceEvent();
  *v6 = v0;
  v6[1] = sub_1DB43862C;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CD18, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43862C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DB4387D4;
  }

  else
  {
    v2 = sub_1DB438750;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB438750()
{
  sub_1DB3F9A48(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4387D4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 160);
  sub_1DB3DE0C8(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB43892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v12;
  *(v8 + 184) = v11;
  *(v8 + 168) = v10;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43896C, 0, 0);
}

uint64_t sub_1DB43896C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v8 = *(v0 + 160);
  *(v0 + 120) = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  v5 = *(v0 + 144);
  *(v4 + 16) = *(v0 + 128);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_1DB438B10;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 120, &unk_1DB51CB98, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB438B10()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1DB438CAC;
  }

  else
  {
    v2 = sub_1DB438C34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB438C34()
{
  sub_1DB3FA4D8(v0 + 16);

  sub_1DB30C018(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB438CAC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 128);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 232);
  sub_1DB3DEA54(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB438E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v12;
  *(v8 + 128) = v10;
  *(v8 + 144) = v11;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB438E40, 0, 0);
}

uint64_t sub_1DB438E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 168) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v8 = *(v0 + 120);
  *(v0 + 80) = v1;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  v5 = *(v0 + 104);
  *(v4 + 16) = *(v0 + 88);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  *v6 = v0;
  v6[1] = sub_1DB438FF4;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 80, &unk_1DB51CC08, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB438FF4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1DB439190;
  }

  else
  {
    v2 = sub_1DB439118;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB439118()
{
  sub_1DB3FA7F4(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB439190()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 88);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 192);
  sub_1DB3DED44(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB4392E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439324, 0, 0);
}

uint64_t sub_1DB439324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  sub_1DB4679C8();
  *v6 = v0;
  v6[1] = sub_1DB4394CC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CA08, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB4394CC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DB439670;
  }

  else
  {
    v2 = sub_1DB4395F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4395F0()
{
  v1 = *(v0 + 40);
  sub_1DB3FAAEC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB439670()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 160);
  sub_1DB3DF034(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB4397C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439804, 0, 0);
}

uint64_t sub_1DB439804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_1DB4399AC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CA88, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB4399AC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DB439B48;
  }

  else
  {
    v2 = sub_1DB439AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB439AD0()
{
  sub_1DB3F9794(*(v0 + 40));

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB439B48()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 160);
  sub_1DB3DDDFC(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB439CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439CDC, 0, 0);
}

uint64_t sub_1DB439CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  type metadata accessor for JetPackAssetSession();
  *v6 = v0;
  v6[1] = sub_1DB439E80;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CB00, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB439E80()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DB43A028;
  }

  else
  {
    v2 = sub_1DB439FA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB439FA4()
{
  sub_1DB3FAB1C(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB43A028()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 56);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 160);
  sub_1DB3DF064(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB43A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  *(v8 + 88) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  *(v8 + 128) = type metadata accessor for JetPackAsset(0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB43A234, 0, 0);
}

uint64_t sub_1DB43A234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 144) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v9 = *(v0 + 80);
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = *(v0 + 64);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1DB43A3D0;
  v7 = *(v0 + 136);

  return MEMORY[0x1EEE6DE98](v7, v0 + 40, &unk_1DB51C7B8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43A3D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DB43A590;
  }

  else
  {
    v2 = sub_1DB43A4F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB43A4F4()
{
  v1 = *(v0 + 136);
  sub_1DB3FADB8(v1);

  sub_1DB467374(v1, type metadata accessor for JetPackAsset);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB43A590()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 48);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB466DBC(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 168);
  sub_1DB3DF318(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB43A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v12;
  *(v8 + 144) = v10;
  *(v8 + 160) = v11;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43A730, 0, 0);
}

uint64_t sub_1DB43A730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v8 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1DB43A8D8;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1DB51C8C8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43A8D8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1DB43AA74;
  }

  else
  {
    v2 = sub_1DB43A9FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB43A9FC()
{
  sub_1DB3FB28C(v0 + 16);

  sub_1DB30BFC4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB43AA74()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 104);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 208);
  sub_1DB3DF6D8(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB43ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v12;
  *(v8 + 144) = v10;
  *(v8 + 160) = v11;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43AC08, 0, 0);
}

uint64_t sub_1DB43AC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v8 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1DB43ADB0;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1DB51C820, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43ADB0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1DB43AF4C;
  }

  else
  {
    v2 = sub_1DB43AED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB43AED4()
{
  sub_1DB3FB5A8(v0 + 16);

  sub_1DB30BF70(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB43AF4C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v5 = *(v0 + 104);
    *(v4 + 16) = v2;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_1DB466D90;
    *(v6 + 24) = v4;

    os_unfair_lock_lock(v3 + 4);
    sub_1DB4695E8(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v8 = *(v0 + 208);
  sub_1DB3DF9C8(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB43B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1DB43B23C;

  return sub_1DB42EF38(a1, a2, a3, a4);
}

uint64_t sub_1DB43B23C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695C0, 0, 0);
  }
}

uint64_t sub_1DB43B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1DB43B548;

  return sub_1DB42F224(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43B548()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695E0, 0, 0);
  }
}

uint64_t sub_1DB43B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1DB43B548;

  return sub_1DB42F534(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1DB43B23C;

  return sub_1DB42F704(a1, a2, a3, a4);
}

uint64_t sub_1DB43B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v18;
  v8[8] = v19;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a1;
  v8[4] = a6;
  v13 = sub_1DB50A280();
  v8[9] = v13;
  v8[10] = *(v13 - 8);
  v8[11] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[12] = v14;
  v8[13] = *(v14 - 8);
  v8[14] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = sub_1DB43BB84;

  return sub_1DB42F8C0((v8 + 2), a2, a3, a4, a5);
}

uint64_t sub_1DB43BB84()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DB38A280;
  }

  else
  {
    v2 = sub_1DB43BC98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB43BC98()
{
  v26 = v0;
  static MonotonicTime.now.getter(&v25);
  tv_sec = v25.tv_sec;
  tv_nsec = v25.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[5] / *&qword_1EE30ED50 + v0[4];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1DB50A270();
  __swift_project_value_buffer(v6, qword_1EE312DE8);

  v7 = sub_1DB50A250();
  sub_1DB50A2A0();
  v8 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];

    sub_1DB50A2D0();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[7];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1E1288220](v15, -1, -1);
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = v0[8];
  v22 = v0[3];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));
  *v22 = v0[2];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DB43BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[13] = v14;
  v8[14] = *(v14 - 8);
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1DB43C108;

  return sub_1DB42FA80(a1, a2, a3, a4);
}

uint64_t sub_1DB43C108(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB43C268, 0, 0);
  }
}

uint64_t sub_1DB43C268()
{
  v26 = v0;
  static MonotonicTime.now.getter(&v25);
  tv_sec = v25.tv_sec;
  tv_nsec = v25.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[6] / *&qword_1EE30ED50 + v0[5];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1DB50A270();
  __swift_project_value_buffer(v6, qword_1EE312DE8);

  v7 = sub_1DB50A250();
  sub_1DB50A2A0();
  v8 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    sub_1DB50A2D0();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[8];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1E1288220](v15, -1, -1);
  }

  v18 = v0[3];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = v0[9];

  (*(v20 + 8))(v19, v21);
  os_unfair_lock_lock((v22 + 24));
  *(v22 + 16) = v5 + *(v22 + 16);
  os_unfair_lock_unlock((v22 + 24));

  v23 = v0[1];

  return v23(v18);
}

uint64_t sub_1DB43C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1DB43B548;

  return sub_1DB42FD68(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1DB43C894;

  return sub_1DB42FF2C(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43C894()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB43C9EC, 0, 0);
  }
}

uint64_t sub_1DB43C9EC()
{
  v25 = v0;
  static MonotonicTime.now.getter(&v24);
  tv_sec = v24.tv_sec;
  tv_nsec = v24.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[3] / *&qword_1EE30ED50 + v0[2];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1DB50A270();
  __swift_project_value_buffer(v6, qword_1EE312DE8);

  v7 = sub_1DB50A250();
  sub_1DB50A2A0();
  v8 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];

    sub_1DB50A2D0();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[5];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1E1288220](v15, -1, -1);
  }

  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  v21 = v0[6];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DB43CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v20;
  v13[6] = v21;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v13[8] = *(v15 - 8);
  v13[9] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v13[10] = v16;
  v13[11] = *(v16 - 8);
  v13[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v13[13] = v17;
  *v17 = v13;
  v17[1] = sub_1DB43B548;

  return sub_1DB43023C(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43CE84()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for StartUpPerformanceEvent();
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB435878();

  return MEMORY[0x1EEE6DFA0](sub_1DB43CF50, 0, 0);
}

uint64_t sub_1DB43CF50()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D01C;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB309F2C(v2);
  sub_1DB30623C(v2, &qword_1ECC428B0, &qword_1DB51CCF0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D01C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 184) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4695CC, 0, 0);
  }

  else
  {

    v5 = *(v2 + 160);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB43D170(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D190, 0, 0);
}

uint64_t sub_1DB43D190()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB435D44();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D25C, 0, 0);
}

uint64_t sub_1DB43D25C()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30A780(v3);
  sub_1DB30623C(v3, &unk_1ECC42B90, &qword_1DB50F290);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4695CC, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1DB43D478(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D498, 0, 0);
}

uint64_t sub_1DB43D498()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB436214();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D570, 0, 0);
}

uint64_t sub_1DB43D570()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30A960(v3);
  sub_1DB30623C(v3, &unk_1ECC42BA0, &qword_1DB50F2A0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D65C()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = sub_1DB4679C8();
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB4366EC();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D728, 0, 0);
}

uint64_t sub_1DB43D728()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D01C;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB30AB2C(v2);
  sub_1DB30623C(v2, &unk_1ECC44FF0, &qword_1DB50F270);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D7F4(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D814, 0, 0);
}

uint64_t sub_1DB43D814()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 176);
  v2.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v2);
  *(v0 + 184) = sub_1DB436BC8();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D8E0, 0, 0);
}

uint64_t sub_1DB43D8E0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D9AC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB309848(v2);
  sub_1DB30623C(v2, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D9AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 192) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DB08, 0, 0);
  }

  else
  {
    v5 = *(v2 + 168);

    *v5 = *(v2 + 160);
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1DB43DB08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB43DB8C(uint64_t a1)
{
  v4 = v1;
  v3.i64[0] = *(v1 + 168);
  v3.i64[1] = type metadata accessor for JetPackAssetSession();
  sub_1DB330884(&v3);
  *(v1 + 176) = sub_1DB437084();

  return MEMORY[0x1EEE6DFA0](sub_1DB43DC54, 0, 0);
}

uint64_t sub_1DB43DC54()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43DD20;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB30ACE0(v2);
  sub_1DB30623C(v2, &unk_1ECC42B80, &qword_1DB50F280);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43DD20(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 184) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DE74, 0, 0);
  }

  else
  {

    v5 = *(v2 + 160);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB43DE74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB43DED8(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43DEF8, 0, 0);
}

uint64_t sub_1DB43DEF8()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = type metadata accessor for JetPackAsset(0);
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB43754C();

  return MEMORY[0x1EEE6DFA0](sub_1DB43DFC4, 0, 0);
}

uint64_t sub_1DB43DFC4()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30AEE4(v3);
  sub_1DB30623C(v3, &unk_1ECC42B50, &qword_1DB50F240);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E090(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43E0B0, 0, 0);
}

uint64_t sub_1DB43E0B0()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for DiskJetPackLoader;
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB437AB8();

  return MEMORY[0x1EEE6DFA0](sub_1DB43E17C, 0, 0);
}

uint64_t sub_1DB43E17C()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB43E248;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30B1C0(v3);
  sub_1DB30623C(v3, &unk_1ECC42B70, &qword_1DB50F260);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E248(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DE74, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1DB43E398(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43E3B8, 0, 0);
}

uint64_t sub_1DB43E3B8()
{
  v3 = v0;
  v2.i64[0] = *(v0 + 168);
  v2.i64[1] = &type metadata for InMemoryJetPackLoader;
  sub_1DB330884(&v2);
  *(v0 + 176) = sub_1DB437F80();

  return MEMORY[0x1EEE6DFA0](sub_1DB43E484, 0, 0);
}

uint64_t sub_1DB43E484()
{
  v1 = v0 + 2;
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30B3A0(v3);
  sub_1DB30623C(v3, &unk_1ECC42B60, &qword_1DB50F250);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E570()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC0, &qword_1DB51CCB8);
  *v1 = v0;
  v1[1] = sub_1DB43E6B0;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CCB0, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43E6B0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB469588, 0, 0);
  }

  else
  {
    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1DB43E808()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D8, &qword_1DB51C9A8);
  *v1 = v0;
  v1[1] = sub_1DB43E6B0;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51C9A0, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43E968()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A40, &qword_1DB51CAB8);
  *v1 = v0;
  v1[1] = sub_1DB43EAA8;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CAB0, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43EAA8()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4092E0, 0, 0);
  }

  else
  {
    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

unint64_t sub_1DB43EBE0()
{
  sub_1DB50B320();

  v25[0] = 0xD000000000000024;
  v25[1] = 0x80000001DB52F3D0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v26 = 0xD000000000000024;
  v27 = 0x80000001DB52F3D0;
  v3 = v0[2];
  if (*(sub_1DB4303FC(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v25[0], v25[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1DB2FEA60(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1DB4102CC(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v15);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1DB34130C((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v21 = sub_1DB50A5E0();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1E1285C70](v21, v23);

  MEMORY[0x1E1285C70](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1DB43F02C()
{
  sub_1DB50B320();

  v25[0] = 0xD000000000000034;
  v25[1] = 0x80000001DB52F400;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v26 = 0xD000000000000034;
  v27 = 0x80000001DB52F400;
  v3 = v0[2];
  if (*(sub_1DB4306D4(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v25[0], v25[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1DB2FEA60(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1DB4102CC(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v15);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1DB34130C((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v21 = sub_1DB50A5E0();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1E1285C70](v21, v23);

  MEMORY[0x1E1285C70](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1DB43F474()
{
  sub_1DB50B320();

  v25[0] = 0xD00000000000002DLL;
  v25[1] = 0x80000001DB52F100;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v26 = 0xD00000000000002DLL;
  v27 = 0x80000001DB52F100;
  v3 = v0[2];
  if (*(sub_1DB430A1C(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v25[0], v25[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1DB2FEA60(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1DB4102CC(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v15);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1DB34130C((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v21 = sub_1DB50A5E0();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1E1285C70](v21, v23);

  MEMORY[0x1E1285C70](v25[0], v25[1]);

  return v26;
}

uint64_t sub_1DB43F8C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43F8E0, 0, 0);
}

uint64_t sub_1DB43F8E0()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB4314D0(v3, v1);
}

uint64_t sub_1DB43F994(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43F9B4, 0, 0);
}

uint64_t sub_1DB43F9B4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB431D88(v3, v1);
}

uint64_t sub_1DB43FA68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FA88, 0, 0);
}

uint64_t sub_1DB43FA88()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB432C9C(v3, v1);
}

uint64_t sub_1DB43FB3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FB5C, 0, 0);
}

uint64_t sub_1DB43FB5C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB433EA0(v3, v1);
}

uint64_t sub_1DB43FC10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FC30, 0, 0);
}

uint64_t sub_1DB43FC30()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB3372E8;
  v3 = v0[2];

  return sub_1DB4348EC(v3, v1);
}

uint64_t sub_1DB43FCE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FD04, 0, 0);
}

uint64_t sub_1DB43FD04()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB4351A0(v3, v1);
}

uint64_t sub_1DB43FDB8(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FDD8, 0, 0);
}

uint64_t sub_1DB43FDD8()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[5];
  v1 = swift_task_alloc();
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A08, &qword_1DB51CA30);
  *v1 = v0;
  v1[1] = sub_1DB43FF18;
  v2 = v0[5];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CA28, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43FF18()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DB4400EC;
  }

  else
  {
    v2 = sub_1DB44002C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB44002C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    **(v0 + 32) = v1;
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1DB43EBE0();
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB440104(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4401A4, 0, 0);
}

uint64_t sub_1DB4401A4()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB4402D0;
  v2 = v0[6];
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v2, v0 + 2, &unk_1DB51C738, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4402D0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DB3A0414;
  }

  else
  {
    v2 = sub_1DB4403E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4403E4()
{
  v1 = v0[6];
  v2 = type metadata accessor for JetPackAsset(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB43F474();
    return sub_1DB50B580();
  }

  else
  {
    sub_1DB468D80(v1, v0[3], type metadata accessor for JetPackAsset);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1DB440524()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE30E178);
  __swift_project_value_buffer(v0, qword_1EE30E178);
  return sub_1DB50A260();
}

double sub_1DB4405A8()
{
  result = 0.0;
  xmmword_1ECC458E8 = 0u;
  unk_1ECC458F8 = 0u;
  xmmword_1ECC458C8 = 0u;
  unk_1ECC458D8 = 0u;
  xmmword_1ECC458B8 = 0u;
  return result;
}

uint64_t static JetPackAssetSession.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECC42138 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DB400AF8(&xmmword_1ECC458B8, v2);
}

uint64_t JetPackAssetSession.Configuration.init(cache:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = &type metadata for JetPackAssetStandardCachePolicy;
  v6 = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1DB2FEA0C(a1, a2);
  return sub_1DB2FEA0C(&v4, a2 + 40);
}

uint64_t JetPackAssetSession.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(a1);
  return v2;
}

void *JetPackAssetSession.init(configuration:)(uint64_t a1)
{
  sub_1DB400AF8(a1, (v1 + 3));
  v3 = sub_1DB31440C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45908, &qword_1DB51C490);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v1[2] = v4;
  v1[16] = &type metadata for JetPackAssetDaemonClient;
  v1[17] = &off_1F56FDE60;
  v8 = &type metadata for CoreAnalyticsLogger;
  v9 = &protocol witness table for CoreAnalyticsLogger;
  v5 = swift_allocObject();
  *&v7 = v5;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 40) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
  *(v5 + 48) = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
  sub_1DB30C018(a1);
  sub_1DB2FEA0C(&v7, (v1 + 18));
  return v1;
}

uint64_t JetPackAssetSession.jetPack(urlRequest:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[155] = v3;
  v4[154] = a3;
  v4[153] = a2;
  v4[152] = a1;
  v4[156] = type metadata accessor for DaemonError(0);
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB44086C, 0, 0);
}

uint64_t sub_1DB44086C()
{
  if (sub_1DB509B50())
  {
    v1 = sub_1DB509C30();
    v3 = v2;
    *(v0 + 1344) = v2;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v4 = sub_1DB50B8F0();
    v6 = v5;
    *(v0 + 1352) = v5;
    v7 = swift_task_alloc();
    *(v0 + 1360) = v7;
    *v7 = v0;
    v8 = sub_1DB4423BC;
LABEL_3:
    v7[1] = v8;
    v9 = *(v0 + 1216);

    return sub_1DB443368(v9, v1, v3, v4, v6);
  }

  sub_1DB400AF8(*(v0 + 1240) + 24, v0 + 96);
  v11 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v11;
  *(v0 + 80) = *(v0 + 160);
  v12 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v12;
  sub_1DB466224(v0 + 16, v0 + 176);
  if (*(v0 + 200))
  {
    v13 = *(v0 + 224);
    *(v0 + 288) = *(v0 + 208);
    *(v0 + 304) = v13;
    *(v0 + 320) = *(v0 + 240);
    v14 = *(v0 + 192);
    *(v0 + 256) = *(v0 + 176);
    *(v0 + 272) = v14;
    sub_1DB30C4B8(v0 + 256, v0 + 336, &qword_1ECC45910, &qword_1DB51C4A0);
    v15 = swift_task_alloc();
    *(v0 + 1328) = v15;
    *v15 = v0;
    v15[1] = sub_1DB4421FC;
    v16 = *(v0 + 1232);
    v17 = *(v0 + 1224);
    v18 = *(v0 + 1216);

    return sub_1DB444354(v18, v17, v16, v0 + 336, v0 + 376);
  }

  else
  {
    if (sub_1DB509B50())
    {
      v1 = sub_1DB509C30();
      v3 = v19;
      *(v0 + 1280) = v19;
      sub_1DB509CA0();
      sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v4 = sub_1DB50B8F0();
      v6 = v20;
      *(v0 + 1288) = v20;
      v7 = swift_task_alloc();
      *(v0 + 1296) = v7;
      *v7 = v0;
      v8 = sub_1DB440BD4;
      goto LABEL_3;
    }

    v21 = swift_task_alloc();
    *(v0 + 1312) = v21;
    *v21 = v0;
    v21[1] = sub_1DB440CFC;
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1216);

    return sub_1DB4463F0(v23, v22);
  }
}

uint64_t sub_1DB440BD4()
{
  *(*v1 + 1304) = v0;

  if (v0)
  {
    v2 = sub_1DB440E1C;
  }

  else
  {

    v2 = sub_1DB440E98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB440CFC()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 1320) = v0;
    v3 = sub_1DB440F1C;
  }

  else
  {
    v3 = sub_1DB440E98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB440E1C()
{

  *(v0 + 1320) = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1DB440F1C, 0, 0);
}

uint64_t sub_1DB440E98()
{
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB440F1C()
{
  v1 = *(v0 + 1320);
  *(v0 + 1208) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1272);
    v4 = *(v0 + 1264);
    v5 = *(v0 + 1256);

    sub_1DB468D80(v3, v4, type metadata accessor for DaemonError);
    sub_1DB468D18(v4, v5, type metadata accessor for DaemonError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v30 = (v0 + 696);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1264);
      v32 = *(v0 + 1248);
      sub_1DB50BEB0();
      v33 = *(v0 + 520);
      v34 = *(v0 + 528);
      __swift_project_boxed_opaque_existential_1((v0 + 496), v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1DB50EE90;
      v121 = sub_1DB301BC0(0, 54, 0, MEMORY[0x1E69E7CC0]);
      v36._countAndFlagsBits = 0xD000000000000035;
      v36._object = 0x80000001DB52EDB0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v0 + 944) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 920));
      sub_1DB468D18(v31, boxed_opaque_existential_0, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 920, v0 + 952, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v30 = 0u;
      *(v0 + 712) = 0u;
      sub_1DB30C2D8(v0 + 952, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 728) = 0;
      v38 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v121 + 2) + 1, 1, v121);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = *v30;
      v43 = *(v0 + 712);
      v41[64] = *(v0 + 728);
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1DB30623C(v0 + 920, &qword_1ECC426B0, &qword_1DB50EEB0);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v35 + 32) = v38;
      Logger.error(_:)(v35, v33, v34);

      __swift_destroy_boxed_opaque_existential_0((v0 + 496));
      v45 = swift_task_alloc();
      *(v0 + 1448) = v45;
      *v45 = v0;
      v45[1] = sub_1DB442AC4;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 0;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v13 = **(v0 + 1256);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v14 = *(v0 + 480);
      v15 = *(v0 + 488);
      __swift_project_boxed_opaque_existential_1((v0 + 456), v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1DB50EE90;
      v120 = sub_1DB301BC0(0, 71, 0, MEMORY[0x1E69E7CC0]);
      v17._countAndFlagsBits = 0xD00000000000003ELL;
      v17._object = 0x80000001DB52ED70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      *(v0 + 880) = MEMORY[0x1E69E63B0];
      *(v0 + 856) = v13;
      sub_1DB30C4B8(v0 + 856, v0 + 888, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      sub_1DB30C2D8(v0 + 888, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 688) = 0;
      v18 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB301BC0(0, *(v120 + 2) + 1, 1, v120);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[40 * v20];
      v22 = *(v0 + 656);
      v23 = *(v0 + 672);
      v21[64] = *(v0 + 688);
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      sub_1DB30623C(v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
      v24._countAndFlagsBits = 0x73646E6F63657320;
      v24._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      *(v16 + 32) = v18;
      Logger.error(_:)(v16, v14, v15);

      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
      v25 = swift_task_alloc();
      *(v0 + 1464) = v25;
      *v25 = v0;
      v25[1] = sub_1DB442C94;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 5;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v46 = *(v0 + 1264);
      v47 = *(v0 + 1256);
      sub_1DB468C90(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      sub_1DB468D18(v46, v48, type metadata accessor for DaemonError);
      swift_willThrow();
      sub_1DB467374(v46, type metadata accessor for DaemonError);
      sub_1DB46625C(v0 + 16);
      sub_1DB467374(v47, type metadata accessor for DaemonError);
LABEL_24:

      goto LABEL_25;
    }

    v7 = *(v0 + 1256);
    v8 = *v7;
    *(v0 + 1376) = *v7;
    v9 = [v8 domain];
    v10 = sub_1DB50A650();
    v12 = v11;

    if (v10 == 0xD000000000000015 && 0x80000001DB52EDF0 == v12)
    {

LABEL_29:
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 1264);
      v53 = *(v0 + 1248);
      sub_1DB50BEB0();
      v54 = *(v0 + 640);
      v55 = *(v0 + 648);
      __swift_project_boxed_opaque_existential_1((v0 + 616), v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1DB50EE90;
      v122 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
      v57._countAndFlagsBits = 0xD00000000000003ALL;
      v57._object = 0x80000001DB52EF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      *(v0 + 1168) = v53;
      v58 = __swift_allocate_boxed_opaque_existential_0((v0 + 1144));
      sub_1DB468D18(v52, v58, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 1144, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      sub_1DB30C2D8(v0 + 1176, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 848) = 0;
      v59 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1DB301BC0(0, *(v122 + 2) + 1, 1, v122);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_1DB301BC0((v60 > 1), v61 + 1, 1, v59);
      }

      *(v59 + 2) = v61 + 1;
      v62 = &v59[40 * v61];
      v63 = *(v0 + 816);
      v64 = *(v0 + 832);
      v62[64] = *(v0 + 848);
      *(v62 + 2) = v63;
      *(v62 + 3) = v64;
      sub_1DB30623C(v0 + 1144, &qword_1ECC426B0, &qword_1DB50EEB0);
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v65);
      *(v56 + 32) = v59;
      Logger.error(_:)(v56, v54, v55);

      __swift_destroy_boxed_opaque_existential_0((v0 + 616));
      v66 = swift_task_alloc();
      *(v0 + 1384) = v66;
      *v66 = v0;
      v66[1] = sub_1DB4425C0;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 1;
LABEL_36:

      return sub_1DB443C40(v28, v27, v26, v29);
    }

    v51 = sub_1DB50BA30();

    if (v51)
    {
      goto LABEL_29;
    }

    v67 = [v8 domain];
    v68 = sub_1DB50A650();
    v70 = v69;

    if (v68 == 0xD000000000000016 && 0x80000001DB52B980 == v70)
    {
    }

    else
    {
      v71 = sub_1DB50BA30();

      if ((v71 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if ([v8 code] == 3)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v72 = *(v0 + 600);
      v73 = *(v0 + 608);
      __swift_project_boxed_opaque_existential_1((v0 + 576), v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000046;
      *(v0 + 1120) = 0x80000001DB52EED0;
      *(v75 + 48) = 0u;
      *(v75 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1112, v75 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v75 + 64) = 0;
      *(v74 + 32) = v75;
      Logger.error(_:)(v74, v72, v73);

      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      v76 = swift_task_alloc();
      *(v0 + 1400) = v76;
      *v76 = v0;
      v76[1] = sub_1DB442788;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 4;
      goto LABEL_36;
    }

LABEL_47:
    v77 = [v8 domain];
    v78 = sub_1DB50A650();
    v80 = v79;

    if (v78 == 0xD00000000000002ALL && 0x80000001DB52EE10 == v80)
    {

LABEL_51:
      v82 = (v0 + 776);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 1264);
      v84 = *(v0 + 1248);
      sub_1DB50BEB0();
      v85 = *(v0 + 560);
      v86 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1((v0 + 536), v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1DB50EE90;
      v123 = sub_1DB301BC0(0, 60, 0, MEMORY[0x1E69E7CC0]);
      v88._countAndFlagsBits = 0xD00000000000003BLL;
      v88._object = 0x80000001DB52EE90;
      LogMessage.StringInterpolation.appendLiteral(_:)(v88);
      *(v0 + 1072) = v84;
      v89 = __swift_allocate_boxed_opaque_existential_0((v0 + 1048));
      sub_1DB468D18(v83, v89, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 1048, v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v82 = 0u;
      *(v0 + 792) = 0u;
      sub_1DB30C2D8(v0 + 1080, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 808) = 0;
      v90 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_1DB301BC0(0, *(v123 + 2) + 1, 1, v123);
      }

      v92 = *(v90 + 2);
      v91 = *(v90 + 3);
      if (v92 >= v91 >> 1)
      {
        v90 = sub_1DB301BC0((v91 > 1), v92 + 1, 1, v90);
      }

      *(v90 + 2) = v92 + 1;
      v93 = &v90[40 * v92];
      v94 = *v82;
      v95 = *(v0 + 792);
      v93[64] = *(v0 + 808);
      *(v93 + 2) = v94;
      *(v93 + 3) = v95;
      sub_1DB30623C(v0 + 1048, &qword_1ECC426B0, &qword_1DB50EEB0);
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v96);
      *(v87 + 32) = v90;
      Logger.error(_:)(v87, v85, v86);

      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
      v97 = swift_task_alloc();
      *(v0 + 1416) = v97;
      *v97 = v0;
      v97[1] = sub_1DB44289C;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 6;
      goto LABEL_36;
    }

    v81 = sub_1DB50BA30();

    if (v81)
    {
      goto LABEL_51;
    }

    v98 = [v8 domain];
    v99 = sub_1DB50A650();
    v101 = v100;

    if (v99 == 0xD000000000000024 && 0x80000001DB529AF0 == v101)
    {
    }

    else
    {
      v102 = sub_1DB50BA30();

      if ((v102 & 1) == 0)
      {
LABEL_70:
        v118 = *(v0 + 1264);
        sub_1DB468C90(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        sub_1DB468D18(v118, v119, type metadata accessor for DaemonError);
        swift_willThrow();

        sub_1DB467374(v118, type metadata accessor for DaemonError);
        sub_1DB46625C(v0 + 16);
        goto LABEL_24;
      }
    }

    if ([v8 code] == 5)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v103 = *(v0 + 1264);
      v104 = *(v0 + 1248);
      sub_1DB50BEB0();
      v105 = *(v0 + 440);
      v106 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1DB50EE90;
      v124 = sub_1DB301BC0(0, 73, 0, MEMORY[0x1E69E7CC0]);
      v108._countAndFlagsBits = 0xD000000000000048;
      v108._object = 0x80000001DB52EE40;
      LogMessage.StringInterpolation.appendLiteral(_:)(v108);
      *(v0 + 1008) = v104;
      v109 = __swift_allocate_boxed_opaque_existential_0((v0 + 984));
      sub_1DB468D18(v103, v109, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 984, v0 + 1016, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 736) = 0u;
      *(v0 + 752) = 0u;
      sub_1DB30C2D8(v0 + 1016, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 768) = 0;
      v110 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1DB301BC0(0, *(v124 + 2) + 1, 1, v124);
      }

      v112 = *(v110 + 2);
      v111 = *(v110 + 3);
      if (v112 >= v111 >> 1)
      {
        v110 = sub_1DB301BC0((v111 > 1), v112 + 1, 1, v110);
      }

      *(v110 + 2) = v112 + 1;
      v113 = &v110[40 * v112];
      v114 = *(v0 + 736);
      v115 = *(v0 + 752);
      v113[64] = *(v0 + 768);
      *(v113 + 2) = v114;
      *(v113 + 3) = v115;
      sub_1DB30623C(v0 + 984, &qword_1ECC426B0, &qword_1DB50EEB0);
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v116);
      *(v107 + 32) = v110;
      Logger.error(_:)(v107, v105, v106);

      __swift_destroy_boxed_opaque_existential_0((v0 + 416));
      v117 = swift_task_alloc();
      *(v0 + 1432) = v117;
      *v117 = v0;
      v117[1] = sub_1DB4429B0;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 7;
      goto LABEL_36;
    }

    goto LABEL_70;
  }

  sub_1DB46625C(v0 + 16);

LABEL_25:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1DB4421FC()
{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = sub_1DB4432B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 376));
    __swift_destroy_boxed_opaque_existential_0((v2 + 336));
    v3 = sub_1DB442320;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB442320()
{
  sub_1DB30623C(v0 + 256, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4423BC()
{
  v2 = *v1;
  *(v2 + 1368) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB442528, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB442528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4425C0()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_1DB442E50;
  }

  else
  {
    v2 = sub_1DB4426D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4426D4()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB442788()
{
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v2 = sub_1DB442F0C;
  }

  else
  {
    v2 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB44289C()
{
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v2 = sub_1DB442FC8;
  }

  else
  {
    v2 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4429B0()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_1DB443084;
  }

  else
  {
    v2 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB442AC4()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_1DB443140;
  }

  else
  {
    v2 = sub_1DB442BD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB442BD8()
{
  v1 = *(v0 + 1256);
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);
  sub_1DB467374(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB442C94()
{
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v2 = sub_1DB443204;
  }

  else
  {
    v2 = sub_1DB442DA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB442DA8()
{
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB442E50()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB442F0C()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB442FC8()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB443084()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB443140()
{
  v1 = *(v0 + 1256);
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);
  sub_1DB467374(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB443204()
{
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4432B4()
{
  sub_1DB30623C((v0 + 32), &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB46625C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB443368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB443390, 0, 0);
}

uint64_t sub_1DB443390()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  sub_1DB50BEB0();
  v3 = *(v0 + 40);
  v33 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v38 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52DD20;
  v5._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  *(v0 + 120) = MEMORY[0x1E69E6158];
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1DB30C4B8(v0 + 96, v0 + 128, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB30C2D8(v0 + 128, v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 88) = 2;
  v6 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  v34 = *(v0 + 184);
  v36 = *(v0 + 192);
  v9 = *(v0 + 176);
  v32 = *(v0 + 168);
  v10 = *(v0 + 160);
  *(v6 + 2) = v8 + 1;
  v11 = &v6[40 * v8];
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v11[64] = *(v0 + 88);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  *&v37 = v6;
  sub_1DB30623C(v0 + 96, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v6;
  Logger.info(_:)(v4, v3, v33);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = type metadata accessor for JetPackAsset(0);
  v16 = (v10 + v15[5]);
  v17 = type metadata accessor for JetPackAsset.Metadata(0);

  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  v18 = [objc_opt_self() processInfo];
  [v18 operatingSystemVersion];

  v19 = JEGestaltGetBuildVersion();
  v20 = sub_1DB50A650();
  v22 = v21;

  *v16 = 0u;
  v16[1] = 0u;
  v23 = v16 + v17[7];
  *v23 = v37;
  *(v23 + 2) = v39;
  v23[24] = 0;
  v24 = (v16 + v17[8]);
  *v24 = v20;
  v24[1] = v22;
  v25 = (v16 + v17[9]);
  *v25 = 0;
  v25[1] = 0;
  *(v16 + v17[10]) = 2;
  v26 = v16 + v17[11];
  *v26 = 0x40AC200000000000;
  v26[8] = 0;
  *(v26 + 2) = 0;
  v26[24] = 1;
  *(v26 + 4) = 0x4143C68000000000;
  *(v26 + 20) = 0;
  v10[3] = &type metadata for JetPackFileStreamSource;
  v10[4] = &protocol witness table for JetPackFileStreamSource;
  v27 = swift_allocObject();
  *v10 = v27;
  v27[2] = v32;
  v27[3] = v9;
  v27[4] = 0;
  v27[5] = 0;
  v28 = v10 + v15[6];
  *v28 = 0;
  v28[4] = 1;
  v29 = (v10 + v15[7]);
  *v29 = v34;
  v29[1] = v36;
  *(v10 + v15[8]) = 0;
  *(v10 + v15[9]) = 0;
  *(v10 + v15[10]) = 0;
  v30 = (v10 + v15[11]);
  *v30 = 0;
  v30[1] = 0;
  v35 = *(v0 + 8);

  return v35();
}

uint64_t JetPackAssetSession.jetPack(urlRequest:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4437EC, 0, 0);
}

uint64_t sub_1DB4437EC(uint64_t a1)
{
  if (sub_1DB509B50())
  {
    v2 = sub_1DB509C30();
    v4 = v3;
    v1[5] = v3;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v5 = sub_1DB50B8F0();
    v7 = v6;
    v1[6] = v6;
    v8 = swift_task_alloc();
    v1[7] = v8;
    *v8 = v1;
    v8[1] = sub_1DB443998;
    v9 = v1[2];

    return sub_1DB443368(v9, v2, v4, v5, v7);
  }

  else
  {
    v11 = swift_task_alloc();
    v1[9] = v11;
    *v11 = v1;
    v11[1] = sub_1DB443AE0;
    v12 = v1[3];
    v13 = v1[2];

    return sub_1DB4463F0(v13, v12);
  }
}

uint64_t sub_1DB443998()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB443BD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB443AE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB443BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB443C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 250) = a4;
  *(v5 + 336) = a3;
  *(v5 + 344) = v4;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB443C68, 0, 0);
}

uint64_t sub_1DB443C68()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000012;
  v2 = *(v0 + 250);
  sub_1DB50BEB0();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v28 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000003ALL;
  v6._object = 0x80000001DB52F460;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v7 = 0xEF726F7272452072;
        v1 = 0x656E6961746E6F43;
      }

      else
      {
        v7 = 0x80000001DB52F4A0;
        v1 = 0xD00000000000001CLL;
      }
    }

    else if (v2 == 4)
    {
      v7 = 0x80000001DB52F4C0;
    }

    else
    {
      v7 = 0xE700000000000000;
      v1 = 0x74756F656D6954;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 0x80000001DB52F4E0;
      v1 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xEF68637469777320;
      v1 = 0x6C6C696B20676142;
    }
  }

  else if (v2)
  {
    v7 = 0xEE00726F72724520;
    v1 = 0x6573616261746144;
  }

  else
  {
    v7 = 0xE800000000000000;
    v1 = 0x726F727245637078;
  }

  *(v0 + 280) = MEMORY[0x1E69E6158];
  *(v0 + 256) = v1;
  *(v0 + 264) = v7;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v8 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 250);
  *(v8 + 2) = v10 + 1;
  v13 = &v8[40 * v10];
  v14 = *(v0 + 216);
  v15 = *(v0 + 232);
  v13[64] = *(v0 + 248);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v8;
  Logger.warning(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v17 = v11[21];
  v18 = v11[22];
  __swift_project_boxed_opaque_existential_1(v11 + 18, v17);
  *(v0 + 249) = 0x706050402030100uLL >> (8 * v12);
  v19 = *(v18 + 8);
  v20 = sub_1DB468B08();
  v19(v0 + 249, &type metadata for JetPackClientFallbackErrorLog, v20, v17, v18);
  v21 = type metadata accessor for JetPackAssetDiskCache(0);
  v22 = JetPackAssetDiskCache.__allocating_init()();
  *(v0 + 40) = v21;
  *(v0 + 48) = &protocol witness table for JetPackAssetDiskCache;
  *(v0 + 16) = v22;
  *(v0 + 80) = &type metadata for JetPackAssetStandardCachePolicy;
  *(v0 + 88) = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_1DB444138;
  v24 = *(v0 + 336);
  v25 = *(v0 + 320);
  v26 = *(v0 + 328);

  return sub_1DB444354(v25, v26, v24, v0 + 96, v0 + 136);
}

uint64_t sub_1DB444138()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1DB4442D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 136));
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v3 = sub_1DB44425C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44425C()
{
  sub_1DB30623C(v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4442D0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB444354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a3;
  v6[43] = v5;
  v6[40] = a1;
  v6[41] = a2;
  v9 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v6[44] = v9;
  v6[45] = *(v9 + 64);
  v6[46] = swift_task_alloc();
  v10 = type metadata accessor for URLJetPackAssetRequest(0);
  v6[47] = v10;
  v11 = *(v10 - 8);
  v6[48] = v11;
  v6[49] = *(v11 + 64);
  v6[50] = swift_task_alloc();
  v12 = sub_1DB50A230();
  v6[51] = v12;
  v6[52] = *(v12 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_1DB30BE90(a4, (v6 + 2));
  sub_1DB30BE90(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB444510, 0, 0);
}

uint64_t sub_1DB444510()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);

  (*(v9 + 16))(v7, v6, v8);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 440) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 328);
  sub_1DB50BEB0();
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  v42 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001DB52F170;
  v13._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 280) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  sub_1DB468D18(v11, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v15 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 384);
  v20 = *(v0 + 368);
  v38 = *(v0 + 392);
  v37 = *(v0 + 352);
  v39 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 336);
  *(v15 + 2) = v17 + 1;
  v23 = &v15[40 * v17];
  v24 = *(v0 + 216);
  v25 = *(v0 + 232);
  v23[64] = *(v0 + 248);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v12 + 32) = v15;
  Logger.info(_:)(v12, v41, v40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB468D18(v21, v18, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468D18(v22, v20, type metadata accessor for URLJetPackAssetFetcher);
  v27 = (*(v19 + 80) + 96) & ~*(v19 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v37 + 80) + v28 + 8) & ~*(v37 + 80);
  v30 = swift_allocObject();
  *(v0 + 448) = v30;
  v31 = *(v0 + 144);
  v30[3] = *(v0 + 128);
  v30[4] = v31;
  v30[5] = *(v0 + 160);
  v32 = *(v0 + 112);
  v30[1] = *(v0 + 96);
  v30[2] = v32;
  sub_1DB468D80(v18, v30 + v27, type metadata accessor for URLJetPackAssetRequest);
  *(v30 + v28) = v39;
  sub_1DB468D80(v20, v30 + v29, type metadata accessor for URLJetPackAssetFetcher);

  v33 = swift_task_alloc();
  *(v0 + 456) = v33;
  *v33 = v0;
  v33[1] = sub_1DB444A48;
  v34 = *(v0 + 320);
  v35 = *(v0 + 328);

  return sub_1DB446F3C(v34, v35, &unk_1DB51CC78, v30);
}

uint64_t sub_1DB444A48()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1DB444C50;
  }

  else
  {

    v2 = sub_1DB444B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB444B64()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[51];
  sub_1DB4662E0(v0[55], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB444C50()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];

  sub_1DB4662E0(v1, "Perform JetPack Request");

  (*(v4 + 8))(v2, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB444D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[57] = a3;
  v6[58] = v5;
  v6[55] = a1;
  v6[56] = a2;
  v9 = *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v6[59] = v9;
  v6[60] = *(v9 + 64);
  v6[61] = swift_task_alloc();
  v10 = sub_1DB50A230();
  v6[62] = v10;
  v6[63] = *(v10 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  sub_1DB30BE90(a4, (v6 + 2));
  sub_1DB30BE90(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB444E9C, 0, 0);
}

uint64_t sub_1DB444E9C()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 16))(v7, v6, v9);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 528) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 448);
  sub_1DB50BEB0();
  v41 = *(v0 + 208);
  v42 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  v43 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v12._object = 0x80000001DB52F170;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 400) = &type metadata for SilverBulletJetPackAssetRequest;
  v13 = swift_allocObject();
  *(v0 + 376) = v13;
  v14 = *(v10 + 32);
  v15 = *(v10 + 16);
  *(v13 + 16) = *v10;
  *(v13 + 32) = v15;
  *(v13 + 48) = v14;
  sub_1DB30C4B8(v0 + 376, v0 + 408, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB467318(v10, v0 + 256);
  sub_1DB30C2D8(v0 + 408, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v16 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 488);
  v20 = *(v0 + 472);
  v40 = *(v0 + 464);
  v21 = *(v0 + 448);
  v22 = *(v0 + 456);
  *(v16 + 2) = v18 + 1;
  v23 = &v16[40 * v18];
  v24 = *(v0 + 216);
  v25 = *(v0 + 232);
  v23[64] = *(v0 + 248);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1DB30623C(v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v11 + 32) = v16;
  Logger.info(_:)(v11, v42, v41);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v27 = *(v21 + 32);
  v28 = *(v21 + 16);
  *(v0 + 296) = *v21;
  *(v0 + 312) = v28;
  *(v0 + 328) = v27;
  sub_1DB468D18(v22, v19, type metadata accessor for SilverBulletJetPackAssetFetcher);
  v29 = (*(v20 + 80) + 144) & ~*(v20 + 80);
  v30 = swift_allocObject();
  v31 = *(v0 + 144);
  *(v30 + 48) = *(v0 + 128);
  *(v30 + 64) = v31;
  v32 = *(v0 + 160);
  v33 = *(v0 + 112);
  *(v30 + 16) = *(v0 + 96);
  *(v30 + 32) = v33;
  v34 = *(v0 + 296);
  v35 = *(v0 + 312);
  *(v30 + 80) = v32;
  *(v30 + 96) = v34;
  *(v0 + 536) = v30;
  *(v30 + 112) = v35;
  *(v30 + 128) = *(v0 + 328);
  *(v30 + 136) = v40;
  sub_1DB468D80(v19, v30 + v29, type metadata accessor for SilverBulletJetPackAssetFetcher);
  sub_1DB467318(v21, v0 + 336);

  v36 = swift_task_alloc();
  *(v0 + 544) = v36;
  *v36 = v0;
  v36[1] = sub_1DB4453A4;
  v37 = *(v0 + 440);
  v38 = *(v0 + 448);

  return sub_1DB44738C(v37, v38, &unk_1DB51C938, v30);
}

uint64_t sub_1DB4453A4()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1DB4455B0;
  }

  else
  {
    v2 = sub_1DB4454D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4454D4()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[62];
  sub_1DB4662E0(v0[66], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4455B0()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[62];
  sub_1DB4662E0(v0[66], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB44568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[44] = a7;
  v8[45] = v7;
  v8[42] = a3;
  v8[43] = a6;
  v8[40] = a1;
  v8[41] = a2;
  v11 = *(a6 - 8);
  v8[46] = v11;
  v8[47] = *(v11 + 64);
  v8[48] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[49] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[50] = v13;
  v8[51] = *(v13 + 64);
  v8[52] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[53] = v14;
  v8[54] = *(v14 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  sub_1DB30BE90(a4, (v8 + 2));
  sub_1DB30BE90(a5, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB44586C, 0, 0);
}

uint64_t sub_1DB44586C()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 424);
  v9 = *(v0 + 432);

  (*(v9 + 16))(v7, v6, v8);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 456) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 392);
  v10 = *(v0 + 400);
  v12 = *(v0 + 328);
  sub_1DB50BEB0();
  v47 = *(v0 + 208);
  v48 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v14._object = 0x80000001DB52F170;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 280) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  v46 = *(v10 + 16);
  v46(boxed_opaque_existential_0, v12, v11);
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v16 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1DB301BC0(0, *(v49 + 2) + 1, 1, v49);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 416);
  v20 = *(v0 + 400);
  v21 = *(v0 + 384);
  v43 = *(v0 + 408);
  v22 = *(v0 + 368);
  v44 = *(v0 + 352);
  v45 = *(v0 + 360);
  v42 = *(v0 + 344);
  v23 = *(v0 + 328);
  v40 = *(v0 + 392);
  v41 = *(v0 + 336);
  *(v16 + 2) = v18 + 1;
  v24 = &v16[40 * v18];
  v25 = *(v0 + 216);
  v26 = *(v0 + 232);
  v24[64] = *(v0 + 248);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v13 + 32) = v16;
  Logger.info(_:)(v13, v48, v47);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v46(v19, v23, v40);
  (*(v22 + 16))(v21, v41, v42);
  v28 = (*(v20 + 80) + 112) & ~*(v20 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v22 + 80) + v29 + 8) & ~*(v22 + 80);
  v31 = swift_allocObject();
  *(v0 + 464) = v31;
  *(v31 + 16) = v42;
  *(v31 + 24) = v44;
  v32 = *(v0 + 144);
  *(v31 + 64) = *(v0 + 128);
  *(v31 + 80) = v32;
  *(v31 + 96) = *(v0 + 160);
  v33 = *(v0 + 112);
  *(v31 + 32) = *(v0 + 96);
  *(v31 + 48) = v33;
  (*(v20 + 32))(v31 + v28, v19, v40);
  *(v31 + v29) = v45;
  (*(v22 + 32))(v31 + v30, v21, v42);

  v34 = swift_task_alloc();
  *(v0 + 472) = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v34 = v0;
  v34[1] = sub_1DB445DDC;
  v36 = *(v0 + 392);
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);

  return sub_1DB447820(v37, v38, &unk_1DB51CC20, v31, v36, AssociatedConformanceWitness);
}

uint64_t sub_1DB445DDC()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1DB445FE4;
  }

  else
  {

    v2 = sub_1DB445EF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB445EF8()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[53];
  sub_1DB4662E0(v0[57], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB445FE4()
{
  v1 = v0[57];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];

  sub_1DB4662E0(v1, "Perform JetPack Request");

  (*(v4 + 8))(v2, v3);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v5 = v0[1];

  return v5();
}

uint64_t JetPackAssetSession.jetPack(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4460FC, 0, 0);
}

uint64_t sub_1DB4460FC(uint64_t a1)
{
  if (sub_1DB509B50())
  {
    v2 = sub_1DB509C30();
    v4 = v3;
    v1[5] = v3;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v5 = sub_1DB50B8F0();
    v7 = v6;
    v1[6] = v6;
    v8 = swift_task_alloc();
    v1[7] = v8;
    *v8 = v1;
    v8[1] = sub_1DB4462A8;
    v9 = v1[2];

    return sub_1DB443368(v9, v2, v4, v5, v7);
  }

  else
  {
    v11 = swift_task_alloc();
    v1[9] = v11;
    *v11 = v1;
    v11[1] = sub_1DB46955C;
    v12 = v1[3];
    v13 = v1[2];

    return sub_1DB4463F0(v13, v12);
  }
}

uint64_t sub_1DB4462A8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB4463F0(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for URLJetPackAssetRequest(0);
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v3[38] = *(v5 + 64);
  v3[39] = swift_task_alloc();
  v6 = sub_1DB50A230();
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB446524, 0, 0);
}

uint64_t sub_1DB446524()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Perform JetPack Asset Daemon Request", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);

  (*(v9 + 16))(v7, v6, v8);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 352) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 272);
  sub_1DB50BEB0();
  v41 = *(v0 + 48);
  v42 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  v43 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  v12._object = 0x80000001DB52F500;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_1DB509CA0();
  *(v0 + 160) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v10, v13);
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_1DB30C2D8(v0 + 168, v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 88) = 0;
  v15 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  *(v15 + 2) = v17 + 1;
  v20 = &v15[40 * v17];
  v21 = *(v0 + 56);
  v22 = *(v0 + 72);
  v20[64] = *(v0 + 88);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v23._object = 0x80000001DB52F530;
  v23._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = *(v19 + *(v18 + 20));
  *(v0 + 224) = &type metadata for JetPackAssetRequestSourcePolicy;
  *(v0 + 200) = v24;
  sub_1DB30C4B8(v0 + 200, v0 + 232, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB30C2D8(v0 + 232, v0 + 96, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
  }

  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  if (v26 >= v25 >> 1)
  {
    v15 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v15);
  }

  v27 = *(v0 + 312);
  v28 = *(v0 + 296);
  v30 = *(v0 + 272);
  v29 = *(v0 + 280);
  *(v15 + 2) = v26 + 1;
  v31 = &v15[40 * v26];
  v32 = *(v0 + 96);
  v33 = *(v0 + 112);
  v31[64] = *(v0 + 128);
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  sub_1DB30623C(v0 + 200, &qword_1ECC426B0, &qword_1DB50EEB0);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  *(v11 + 32) = v15;
  Logger.info(_:)(v11, v42, v41);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB468D18(v30, v27, type metadata accessor for URLJetPackAssetRequest);
  v35 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v36 = swift_allocObject();
  *(v0 + 360) = v36;
  *(v36 + 16) = v29;
  sub_1DB468D80(v27, v36 + v35, type metadata accessor for URLJetPackAssetRequest);

  v37 = swift_task_alloc();
  *(v0 + 368) = v37;
  *v37 = v0;
  v37[1] = sub_1DB446AD8;
  v38 = *(v0 + 272);
  v39 = *(v0 + 264);

  return sub_1DB446F3C(v39, v38, &unk_1DB51CC58, v36);
}

uint64_t sub_1DB446AD8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1DB446CB4;
  }

  else
  {

    v2 = sub_1DB446BF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB446BF4()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[40];
  sub_1DB4662E0(v0[44], "Perform JetPack Asset Daemon Request");

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB446CB4()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];

  sub_1DB4662E0(v1, "Perform JetPack Asset Daemon Request");

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB446D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB446DA0, 0, 0);
}

uint64_t sub_1DB446DA0()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 104), *(v0[3] + 128));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DB446E48;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DB486FD0(v3, v2);
}

uint64_t sub_1DB446E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB446F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB446F64, 0, 0);
}

uint64_t sub_1DB446F64()
{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 16);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1DB468C40((v2 + 16), &v11);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v11;
  *(v0 + 64) = v11;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for JetPackAsset(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v5 = v0;
  v5[1] = sub_1DB4470B4;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, v4, v6, v7, v9);
}

uint64_t sub_1DB4470B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DB4472B0;
  }

  else
  {
    v2 = sub_1DB4471C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB4471C8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v2 + 6);
  sub_1DB4695A4(&v2[4]);
  if (v1)
  {
    v4 = (v0[7] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    os_unfair_lock_unlock((v0[7] + 24));

    v5 = v0[1];

    v5();
  }
}

uint64_t sub_1DB4472B0()
{
  v1 = v0[7];
  v2 = v0[3];
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v1 + 6);
  sub_1DB468C74(&v1[4]);
  os_unfair_lock_unlock((v0[7] + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB44738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1DB4473C0, 0, 0);
}

uint64_t sub_1DB4473C0()
{
  v12 = v0;
  v1 = *(*(v0 + 160) + 16);
  *(v0 + 168) = v1;
  v2 = swift_task_alloc();
  v3 = *(v0 + 144);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v3;
  os_unfair_lock_lock((v1 + 24));
  sub_1DB4674D4((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  v4 = v11;
  *(v0 + 176) = v11;

  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  v6 = type metadata accessor for JetPackAsset(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v5 = v0;
  v5[1] = sub_1DB447510;
  v8 = *(v0 + 136);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, v4, v6, v7, v9);
}

uint64_t sub_1DB447510()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1DB447728;
  }

  else
  {
    v2 = sub_1DB447624;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB447624()
{
  *(v0 + 96) = *(v0 + 16);
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(swift_task_alloc() + 16) = v0 + 96;
  os_unfair_lock_lock(v2 + 6);
  sub_1DB46958C(&v2[4]);
  if (v1)
  {
    v5 = (*(v0 + 168) + 24);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_unlock((*(v0 + 168) + 24));

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DB447728()
{
  *(v0 + 56) = *(v0 + 16);
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 72) = *(v0 + 32);
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(swift_task_alloc() + 16) = v0 + 56;
  os_unfair_lock_lock(v1 + 6);
  sub_1DB467524(&v1[4]);
  os_unfair_lock_unlock((*(v0 + 168) + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB447820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB44784C, 0, 0);
}

uint64_t sub_1DB44784C()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 64) + 16);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1DB46765C((v2 + 16), &v12);
  os_unfair_lock_unlock((v2 + 24));
  v5 = v12;
  *(v0 + 72) = v12;

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v6 = v0;
  v6[1] = sub_1DB4479A0;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, v5, v7, v8, v10);
}

uint64_t sub_1DB4479A0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DB447B28;
  }

  else
  {
    v2 = sub_1DB447AB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB447AB4()
{
  sub_1DB46230C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB447B28()
{
  sub_1DB46230C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB447B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB447BC0, 0, 0);
}

uint64_t sub_1DB447BC0()
{
  sub_1DB466224(*(v0 + 432) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1DB30C4B8(v0 + 16, v0 + 256, &qword_1ECC45910, &qword_1DB51C4A0);
      v5 = swift_task_alloc();
      *(v0 + 440) = v5;
      *v5 = v0;
      v5[1] = sub_1DB447EB0;
      v6 = *(v0 + 424);
      v7 = *(v0 + 408);
      v8 = *(v0 + 416);

      return sub_1DB444D44(v7, v8, v6, v0 + 256, v0 + 296);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB46625C(v0 + 176);
  }

  sub_1DB30623C(v0 + 96, &qword_1ECC45918, &qword_1DB51C4F0);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001DB52EF60;
  *(v13 + 48) = 0u;
  *(v13 + 32) = 0u;
  sub_1DB30C2D8(v0 + 376, v13 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v13 + 64) = 0;
  *(v12 + 32) = v13;
  Logger.error(_:)(v12, v11, v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  sub_1DB46628C();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DB447EB0()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1DB447FD4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 296));
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v3 = sub_1DB4695E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB447FD4()
{
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t JetPackAssetSession.jetPack<A>(for:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB448080, 0, 0);
}

uint64_t sub_1DB448080()
{
  sub_1DB466224(*(v0 + 448) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1DB30C4B8(v0 + 16, v0 + 256, &qword_1ECC45910, &qword_1DB51C4A0);
      v5 = swift_task_alloc();
      *(v0 + 456) = v5;
      *v5 = v0;
      v5[1] = sub_1DB448374;
      v6 = *(v0 + 440);
      v7 = *(v0 + 424);
      v8 = *(v0 + 432);
      v9 = *(v0 + 408);
      v10 = *(v0 + 416);

      return sub_1DB44568C(v9, v10, v7, v0 + 256, v0 + 296, v8, v6);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB46625C(v0 + 176);
  }

  sub_1DB30623C(v0 + 96, &qword_1ECC45918, &qword_1DB51C4F0);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v13 = *(v0 + 360);
  v12 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB50EE90;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001DB52EF60;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1DB30C2D8(v0 + 376, v15 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  Logger.error(_:)(v14, v13, v12);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  sub_1DB46628C();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB448374()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1DB448498;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 296));
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v3 = sub_1DB4695E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB448498()
{
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB44851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB448544, 0, 0);
}

uint64_t sub_1DB448544()
{
  sub_1DB50AC80();
  v9 = *(v0 + 24);
  v1 = *(v9 + 24);
  v2 = *(v9 + 32);
  v8 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v9, v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v8;
  v10 = (*(v2 + 64) + **(v2 + 64));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for JetPackAsset(0);
  *v4 = v0;
  v4[1] = sub_1DB448710;
  v6 = *(v0 + 16);

  return v10(v6, &unk_1DB51CC88, v3, v5, v1, v2);
}

uint64_t sub_1DB448710()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB44884C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB44884C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4488B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4488DC, 0, 0);
}

uint64_t sub_1DB4488DC()
{
  sub_1DB50AC80();
  v9 = *(v0 + 24);
  v10 = *(v0 + 56);
  v1 = *(v9 + 24);
  v2 = *(v9 + 32);
  v8 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v9, v1);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v3[1] = v10;
  v3[2] = v9;
  v3[3] = v8;
  v11 = (*(v2 + 64) + **(v2 + 64));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = type metadata accessor for JetPackAsset(0);
  *v4 = v0;
  v4[1] = sub_1DB448AB4;
  v6 = *(v0 + 16);

  return v11(v6, &unk_1DB51CC30, v3, v5, v1, v2);
}

uint64_t sub_1DB448AB4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB448BF0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB448BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB448C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[193] = a5;
  v5[192] = a4;
  v5[191] = a3;
  v5[190] = a2;
  v5[189] = a1;
  v6 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v5[194] = v6;
  v5[195] = *(v6 + 64);
  v5[196] = swift_task_alloc();
  v7 = type metadata accessor for URLJetPackAssetRequest(0);
  v5[197] = v7;
  v8 = *(v7 - 8);
  v5[198] = v8;
  v5[199] = *(v8 + 64);
  v5[200] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v5[201] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v5[202] = v9;
  v5[203] = *(v9 - 8);
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  v5[207] = swift_task_alloc();
  v5[208] = swift_task_alloc();
  v5[209] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v5[212] = swift_task_alloc();
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB448EF4, 0, 0);
}

uint64_t sub_1DB448EF4()
{
  v1 = v0[218];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[190];
  v5 = *(v2 + 56);
  v0[219] = v5;
  v0[220] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v0[221] = sub_1DB509CA0();
  v0[222] = sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v8 = sub_1DB50B8F0();
  v10 = v9;
  v0[223] = v9;
  v14 = (*(v7 + 16) + **(v7 + 16));
  v11 = swift_task_alloc();
  v0[224] = v11;
  *v11 = v0;
  v11[1] = sub_1DB4490D0;
  v12 = v0[217];

  return v14(v12, v8, v10, v6, v7);
}

uint64_t sub_1DB4490D0()
{
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v2 = sub_1DB44AA00;
  }

  else
  {

    v2 = sub_1DB4491EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB4491EC()
{
  v163 = v0;
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  sub_1DB30C2D8(*(v0 + 1736), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1728);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    v144 = *(v0 + 1800);
  }

  else
  {
    sub_1DB468D80(v6, *(v0 + 1672), type metadata accessor for JetPackAsset);
    if (qword_1EE30E1A8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1800);
    v13 = qword_1EE312DD8;
    *(v0 + 1472) = sub_1DB50B8F0();
    *(v0 + 1480) = v14;
    v15 = *(v13 + 16);
    *(swift_task_alloc() + 16) = v0 + 1472;
    os_unfair_lock_lock((v15 + 24));
    sub_1DB469568((v15 + 16), v162);
    os_unfair_lock_unlock((v15 + 24));
    if (v12)
    {
      return;
    }

    v64 = v162[0];

    if (v64)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v155 = *(v0 + 1752);
      v65 = *(v0 + 1744);
      v66 = *(v0 + 1616);
      v67 = *(v0 + 1520);
      sub_1DB50BEB0();
      v68 = *(v0 + 280);
      v69 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1DB50EE90;
      *(v0 + 1368) = MEMORY[0x1E69E6158];
      *(v0 + 1344) = 0xD000000000000054;
      *(v0 + 1352) = 0x80000001DB52F340;
      *(v71 + 48) = 0u;
      *(v71 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1344, v71 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v71 + 64) = 0;
      *(v70 + 32) = v71;
      Logger.error(_:)(v70, v68, v69);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      v155(v65, 1, 1, v66);
      v72 = v67[3];
      v73 = v67[4];
      __swift_project_boxed_opaque_existential_1(v67, v72);
      v159 = (*(v73 + 24) + **(v73 + 24));
      v74 = swift_task_alloc();
      *(v0 + 1808) = v74;
      *v74 = v0;
      v74[1] = sub_1DB44BFEC;
      v75 = *(v0 + 1672);

      v159(v75, v72, v73);
      return;
    }

    sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
    v144 = 0;
  }

  v7 = *(v0 + 1744);
  v8 = *(v0 + 1624);
  v9 = *(v0 + 1616);
  v10 = *(v8 + 48);
  *(v0 + 1824) = v10;
  *(v0 + 1832) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v7, 1, v9))
  {
    v11 = 0;
  }

  else
  {
    v16 = v7 + *(v9 + 20);
    v11 = *(v16 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v143 = v11;
  *(v0 + 689) = v11 & 1;
  v17 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v7, v17, &qword_1ECC46F20, qword_1DB5105D0);
  v154 = v10;
  if (v10(v17, 1, v9) == 1)
  {
    v18 = 4;
  }

  else
  {
    v19 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v19, type metadata accessor for JetPackAsset);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v20);
    v22 = *(v21 + 8);
    v23 = v21;
    v10 = v154;
    v22(v162, v19, v20, v23);
    v18 = LOBYTE(v162[0]);
    sub_1DB467374(v19, type metadata accessor for JetPackAsset);
  }

  v158 = v18;
  *(v0 + 690) = v18;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v24 = (v0 + 776);
  v25 = *(v0 + 1744);
  v26 = *(v0 + 1712);
  v27 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v147 = *(v0 + 408);
  v150 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v150);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB50EE90;
  v162[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0x7341646568636163;
  v29._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  sub_1DB30C4B8(v25, v26, &qword_1ECC46F20, qword_1DB5105D0);
  v30 = v10(v26, 1, v27);
  v31 = *(v0 + 1712);
  if (v30 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v31, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v24 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v33 = v162[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = (v0 + 856);
  v37 = (v0 + 1056);
  *(v33 + 2) = v35 + 1;
  v38 = &v33[40 * v35];
  v39 = *v24;
  v40 = *(v0 + 792);
  v38[64] = *(v0 + 808);
  *(v38 + 2) = v39;
  *(v38 + 3) = v40;
  v162[0] = v33;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v41._countAndFlagsBits = 0x3D73757461747320;
  v41._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  if (v158 == 4)
  {
    v42 = 0;
    *v37 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v37 = v158;
    v42 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v42;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v36 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v43 = v162[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v43);
  }

  v46 = *(v0 + 1576);
  v47 = *(v0 + 1528);
  *(v43 + 2) = v45 + 1;
  v48 = &v43[40 * v45];
  v49 = *v36;
  v50 = *(v0 + 872);
  v48[64] = *(v0 + 888);
  *(v48 + 2) = v49;
  *(v48 + 3) = v50;
  v162[0] = v43;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  *(v28 + 32) = v162[0];
  Logger.info(_:)(v28, v150, v147);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v52 = *(v46 + 20);
  LOBYTE(v162[0]) = *(v47 + v52);
  v53 = sub_1DB42E620();
  v54 = v154;
  if (v158 != 4 && (v53 & 1) != 0)
  {
    v55 = *(v0 + 1744);
    v56 = *(v0 + 1704);
    v57 = *(v0 + 1616);
    v58 = swift_allocBox();
    v60 = v59;
    sub_1DB30C4B8(v55, v56, &qword_1ECC46F20, qword_1DB5105D0);
    v61 = v56;
    v54 = v154;
    v62 = v154(v61, 1, v57);
    v63 = *(v0 + 1704);
    if (v62 == 1)
    {
      sub_1DB30623C(v63, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      v76 = v58;
      sub_1DB468D80(v63, v60, type metadata accessor for JetPackAsset);
      if (v158 < 2 && (v143 & 1) == 0)
      {
        v157 = v60;
        sub_1DB50BEB0();
        v124 = *(v0 + 320);
        v152 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v124);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v126 = swift_allocObject();
        *(v126 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v126 + 48) = 0u;
        *(v126 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v126 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v126 + 64) = 0;
        *(v125 + 32) = v126;
        Logger.info(_:)(v125, v124, v152);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v158 - 1 < 2)
        {
          LOBYTE(v162[0]) = *(v47 + v52);
          if (sub_1DB42E724())
          {
            v127 = *(v0 + 1608);
            v161 = v127;
            v128 = *(v0 + 1600);
            v129 = *(v0 + 1568);
            v149 = *(v0 + 1592);
            v153 = *(v0 + 1560);
            v145 = *(v0 + 1584);
            v146 = *(v0 + 1552);
            v130 = *(v0 + 1544);
            v131 = *(v0 + 1536);
            v132 = *(v0 + 1528);
            v133 = *(v0 + 1520);
            *(v157 + *(*(v0 + 1616) + 40)) = 1;
            v134 = sub_1DB50ABA0();
            (*(*(v134 - 8) + 56))(v127, 1, 1, v134);
            sub_1DB468D18(v132, v128, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v130, v129, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v133, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v135 = (*(v145 + 80) + 40) & ~*(v145 + 80);
            v136 = (v149 + *(v146 + 80) + v135) & ~*(v146 + 80);
            v137 = (v153 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
            v138 = swift_allocObject();
            v138[2] = 0;
            v138[3] = 0;
            v138[4] = v131;
            sub_1DB468D80(v128, v138 + v135, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v129, v138 + v136, type metadata accessor for URLJetPackAssetFetcher);
            *(v138 + v137) = v76;
            v139 = (v138 + ((v137 + 15) & 0xFFFFFFFFFFFFFFF8));
            v140 = *(v0 + 80);
            v139[3] = *(v0 + 64);
            v139[4] = v140;
            v141 = *(v0 + 48);
            v139[1] = *(v0 + 32);
            v139[2] = v141;
            *v139 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v161, &unk_1DB51CC98, v138);
          }
        }

        v142 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v157, v142, type metadata accessor for JetPackAsset);

        goto LABEL_63;
      }
    }
  }

  LOBYTE(v162[0]) = *(v47 + v52);
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
    goto LABEL_63;
  }

  if (v158 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
  }

  sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 96, v0 + 176);
  sub_1DB30BE90(v0 + 136, v0 + 216);
  sub_1DB50AC80();
  if (v144)
  {
    v78 = *(v0 + 1824);
    v79 = *(v0 + 1744);
    v80 = *(v0 + 1680);
    v81 = *(v0 + 1616);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    sub_1DB30C4B8(v79, v80, &qword_1ECC46F20, qword_1DB5105D0);
    if (v78(v80, 1, v81) == 1)
    {
      sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
    }

    else
    {
      v91 = *(v0 + 690);
      sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
      if (v91 != 4 && !*(v0 + 690) && *(v0 + 689) == 1)
      {
        sub_1DB50BEB0();
        v92 = *(v0 + 560);
        v93 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1((v0 + 536), v92);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1DB50EE90;
        v162[0] = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v95._countAndFlagsBits = 0xD000000000000025;
        v95._object = 0x80000001DB52F200;
        LogMessage.StringInterpolation.appendLiteral(_:)(v95);
        swift_getErrorValue();
        v96 = *(v0 + 1376);
        v97 = *(v0 + 1384);
        *(v0 + 952) = v97;
        v98 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
        (*(*(v97 - 8) + 16))(v98, v96, v97);
        sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 656) = 0u;
        *(v0 + 672) = 0u;
        sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 688) = 0;
        v99 = v162[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1DB301BC0(0, *(v99 + 2) + 1, 1, v99);
        }

        v101 = *(v99 + 2);
        v100 = *(v99 + 3);
        if (v101 >= v100 >> 1)
        {
          v99 = sub_1DB301BC0((v100 > 1), v101 + 1, 1, v99);
        }

        v156 = *(v0 + 1632);
        v148 = *(v0 + 1696);
        v151 = *(v0 + 1512);
        *(v99 + 2) = v101 + 1;
        v102 = &v99[40 * v101];
        v103 = *(v0 + 656);
        v104 = *(v0 + 672);
        v102[64] = *(v0 + 688);
        *(v102 + 2) = v103;
        *(v102 + 3) = v104;
        v162[0] = v99;
        sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v105);
        *(v94 + 32) = v162[0];
        Logger.error(_:)(v94, v92, v93);

        __swift_destroy_boxed_opaque_existential_0((v0 + 536));
        sub_1DB50BEB0();
        v106 = *(v0 + 600);
        v107 = *(v0 + 608);
        __swift_project_boxed_opaque_existential_1((v0 + 576), v106);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_1DB50EE90;
        *(v0 + 984) = MEMORY[0x1E69E6158];
        *(v0 + 960) = 0xD000000000000075;
        *(v0 + 968) = 0x80000001DB52F230;
        *(v109 + 48) = 0u;
        *(v109 + 32) = 0u;
        sub_1DB30C2D8(v0 + 960, v109 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v109 + 64) = 0;
        *(v108 + 32) = v109;
        Logger.warning(_:)(v108, v106, v107);

        sub_1DB30623C(v148, &qword_1ECC46F20, qword_1DB5105D0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 576));
        sub_1DB468D80(v156, v151, type metadata accessor for JetPackAsset);
        goto LABEL_63;
      }

      sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
    }

    v110 = *(v0 + 1696);
    swift_willThrow();
    sub_1DB30623C(v110, &qword_1ECC46F20, qword_1DB5105D0);
LABEL_63:
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v111 = *(v0 + 8);

    v111();
    return;
  }

  v82 = *(v0 + 1696);
  v83 = *(v0 + 1688);
  v84 = *(v0 + 1616);
  sub_1DB50BEB0();
  v85 = *(v0 + 520);
  v160 = *(v0 + 528);
  v86 = v54;
  __swift_project_boxed_opaque_existential_1((v0 + 496), v85);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1DB50EE90;
  v162[0] = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v88._countAndFlagsBits = 0xD000000000000032;
  v88._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v88);
  sub_1DB30C4B8(v82, v83, &qword_1ECC46F20, qword_1DB5105D0);
  v89 = v86(v83, 1, v84);
  v90 = *(v0 + 1688);
  if (v89 == 1)
  {
    sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v112 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1DB468D80(v90, v112, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v113 = v162[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v113 = sub_1DB301BC0(0, *(v113 + 2) + 1, 1, v113);
  }

  v115 = *(v113 + 2);
  v114 = *(v113 + 3);
  if (v115 >= v114 >> 1)
  {
    v113 = sub_1DB301BC0((v114 > 1), v115 + 1, 1, v113);
  }

  *(v113 + 2) = v115 + 1;
  v116 = &v113[40 * v115];
  v117 = *(v0 + 816);
  v118 = *(v0 + 832);
  v116[64] = *(v0 + 848);
  *(v116 + 2) = v117;
  *(v116 + 3) = v118;
  v162[0] = v113;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v119);
  *(v87 + 32) = v162[0];
  Logger.info(_:)(v87, v85, v160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v120 = swift_task_alloc();
  *(v0 + 1856) = v120;
  *v120 = v0;
  v120[1] = sub_1DB44EB00;
  v121 = *(v0 + 1696);
  v122 = *(v0 + 1648);
  v123 = *(v0 + 1528);

  sub_1DB41BE7C(v122, v123, v121, v0 + 456);
}

uint64_t sub_1DB44AA00()
{
  v121 = v0;
  v1 = (v0 + 696);

  v2 = *(v0 + 1800);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 640);
  v4 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v120 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1432);
  *(v0 + 1336) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1312, v0 + 1216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 1216, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v10 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v120 + 2) + 1, 1, v120);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 712);
  v13[64] = *(v0 + 728);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v120 = v10;
  sub_1DB30623C(v0 + 1312, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v17 = *(v0 + 1744);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v18 + 48);
  *(v0 + 1824) = v20;
  *(v0 + 1832) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v116 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v109 = v21;
  *(v0 + 689) = v21 & 1;
  v23 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v116(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v26);
    (*(v27 + 8))(&v120, v25, v26, v27);
    v24 = v120;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 690) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 776);
  v29 = *(v0 + 1744);
  v30 = *(v0 + 1712);
  v31 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v111 = *(v0 + 400);
  v113 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v111);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DB50EE90;
  v120 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v33._countAndFlagsBits = 0x7341646568636163;
  v33._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v34 = v116(v30, 1, v31);
  v35 = *(v0 + 1712);
  if (v34 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v36 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v35, v36, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v37 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
  }

  v40 = (v0 + 856);
  v41 = (v0 + 1056);
  *(v37 + 2) = v39 + 1;
  v42 = &v37[40 * v39];
  v43 = *v28;
  v44 = *(v0 + 792);
  v42[64] = *(v0 + 808);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v120 = v37;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v46;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v40 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v47 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1576);
  v51 = *(v0 + 1528);
  *(v47 + 2) = v49 + 1;
  v52 = &v47[40 * v49];
  v53 = *v40;
  v54 = *(v0 + 872);
  v52[64] = *(v0 + 888);
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  v120 = v47;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  *(v32 + 32) = v120;
  Logger.info(_:)(v32, v111, v113);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v56 = *(v50 + 20);
  LOBYTE(v120) = *(v51 + v56);
  v57 = sub_1DB42E620();
  if (v24 != 4 && (v57 & 1) != 0)
  {
    v58 = *(v0 + 1744);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1616);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v116(v59, 1, v60);
    v65 = *(v0 + 1704);
    if (v64 == 1)
    {
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v65, v63, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v109 & 1) == 0)
      {
        sub_1DB50BEB0();
        v90 = *(v0 + 320);
        v118 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v90);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v92 + 48) = 0u;
        *(v92 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v92 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v92 + 64) = 0;
        *(v91 + 32) = v92;
        Logger.info(_:)(v91, v90, v118);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v24 - 1 < 2)
        {
          LOBYTE(v120) = *(v51 + v56);
          if (sub_1DB42E724())
          {
            v93 = *(v0 + 1608);
            v94 = *(v0 + 1600);
            v95 = *(v0 + 1568);
            v110 = *(v0 + 1584);
            v112 = v95;
            v117 = *(v0 + 1560);
            v119 = v93;
            v114 = *(v0 + 1552);
            v115 = *(v0 + 1592);
            v96 = *(v0 + 1544);
            v97 = *(v0 + 1536);
            v98 = *(v0 + 1528);
            v99 = *(v0 + 1520);
            *(v63 + *(*(v0 + 1616) + 40)) = 1;
            v100 = sub_1DB50ABA0();
            (*(*(v100 - 8) + 56))(v93, 1, 1, v100);
            sub_1DB468D18(v98, v94, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v96, v95, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v99, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v101 = (*(v110 + 80) + 40) & ~*(v110 + 80);
            v102 = (v115 + v114[80] + v101) & ~v114[80];
            v103 = (v117 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
            v104 = swift_allocObject();
            v104[2] = 0;
            v104[3] = 0;
            v104[4] = v97;
            sub_1DB468D80(v94, v104 + v101, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v112, v104 + v102, type metadata accessor for URLJetPackAssetFetcher);
            *(v104 + v103) = v61;
            v105 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
            v106 = *(v0 + 80);
            v105[3] = *(v0 + 64);
            v105[4] = v106;
            v107 = *(v0 + 48);
            v105[1] = *(v0 + 32);
            v105[2] = v107;
            *v105 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v119, &unk_1DB51CC98, v104);
          }
        }

        v108 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v63, v108, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

        v76 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v120) = *(v51 + v56);
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
    sub_1DB30BE90(v0 + 96, v0 + 176);
    sub_1DB30BE90(v0 + 136, v0 + 216);
    sub_1DB50AC80();
    v67 = *(v0 + 1696);
    v68 = *(v0 + 1688);
    v69 = *(v0 + 1616);
    sub_1DB50BEB0();
    v70 = *(v0 + 520);
    v71 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v70);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1DB50EE90;
    v120 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v73._countAndFlagsBits = 0xD000000000000032;
    v73._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v73);
    sub_1DB30C4B8(v67, v68, &qword_1ECC46F20, qword_1DB5105D0);
    v74 = v116(v68, 1, v69);
    v75 = *(v0 + 1688);
    if (v74 == 1)
    {
      sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1024) = 0u;
      *(v0 + 1040) = 0u;
    }

    else
    {
      *(v0 + 1048) = *(v0 + 1616);
      v78 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
      sub_1DB468D80(v75, v78, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v79 = v120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1DB301BC0(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_1DB301BC0((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[40 * v81];
    v83 = *(v0 + 816);
    v84 = *(v0 + 832);
    v82[64] = *(v0 + 848);
    *(v82 + 2) = v83;
    *(v82 + 3) = v84;
    v120 = v79;
    sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    *(v72 + 32) = v120;
    Logger.info(_:)(v72, v70, v71);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    *(v0 + 480) = &type metadata for SystemDateProvider;
    *(v0 + 488) = &protocol witness table for SystemDateProvider;
    v86 = swift_task_alloc();
    *(v0 + 1856) = v86;
    *v86 = v0;
    v86[1] = sub_1DB44EB00;
    v87 = *(v0 + 1696);
    v88 = *(v0 + 1648);
    v89 = *(v0 + 1528);

    return sub_1DB41BE7C(v88, v89, v87, v0 + 456);
  }

  sub_1DB46628C();
  swift_allocError();
  *v66 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v76 = *(v0 + 8);
LABEL_43:

  return v76();
}

uint64_t sub_1DB44BFEC()
{
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v2 = sub_1DB44D500;
  }

  else
  {
    v2 = sub_1DB44C100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB44C100()
{
  v140 = v0;
  sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v123 = *(v0 + 1816);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v2 + 48);
  *(v0 + 1824) = v4;
  *(v0 + 1832) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v122 = v5;
  *(v0 + 689) = v5 & 1;
  v7 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  v133 = v4;
  if (v4(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v10);
    v12 = *(v11 + 8);
    v13 = v11;
    v4 = v133;
    v12(&v139, v9, v10, v13);
    v8 = v139;
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  v136 = v8;
  *(v0 + 690) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v14 = (v0 + 776);
  v15 = *(v0 + 1744);
  v16 = *(v0 + 1712);
  v17 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v126 = *(v0 + 408);
  v129 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v129);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  v139 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0x7341646568636163;
  v19._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  sub_1DB30C4B8(v15, v16, &qword_1ECC46F20, qword_1DB5105D0);
  v20 = v4(v16, 1, v17);
  v21 = *(v0 + 1712);
  if (v20 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v21, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v14 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v23 = v139;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
  }

  v26 = (v0 + 856);
  v27 = (v0 + 1056);
  *(v23 + 2) = v25 + 1;
  v28 = &v23[40 * v25];
  v29 = *v14;
  v30 = *(v0 + 792);
  v28[64] = *(v0 + 808);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  v139 = v23;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0x3D73757461747320;
  v31._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  if (v136 == 4)
  {
    v32 = 0;
    *v27 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v27 = v136;
    v32 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v32;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v26 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v33 = v139;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = *(v0 + 1576);
  v37 = *(v0 + 1528);
  *(v33 + 2) = v35 + 1;
  v38 = &v33[40 * v35];
  v39 = *v26;
  v40 = *(v0 + 872);
  v38[64] = *(v0 + 888);
  *(v38 + 2) = v39;
  *(v38 + 3) = v40;
  v139 = v33;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  *(v18 + 32) = v139;
  Logger.info(_:)(v18, v129, v126);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v42 = *(v36 + 20);
  LOBYTE(v139) = *(v37 + v42);
  v43 = sub_1DB42E620();
  v44 = v133;
  if (v136 != 4 && (v43 & 1) != 0)
  {
    v45 = *(v0 + 1744);
    v46 = *(v0 + 1704);
    v47 = *(v0 + 1616);
    v48 = swift_allocBox();
    v50 = v49;
    sub_1DB30C4B8(v45, v46, &qword_1ECC46F20, qword_1DB5105D0);
    v51 = v46;
    v44 = v133;
    v52 = v133(v51, 1, v47);
    v53 = *(v0 + 1704);
    if (v52 == 1)
    {
      sub_1DB30623C(v53, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      v54 = v48;
      sub_1DB468D80(v53, v50, type metadata accessor for JetPackAsset);
      if (v136 < 2 && (v122 & 1) == 0)
      {
        v135 = v50;
        sub_1DB50BEB0();
        v103 = *(v0 + 320);
        v131 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v103);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v105 + 48) = 0u;
        *(v105 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v105 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v105 + 64) = 0;
        *(v104 + 32) = v105;
        Logger.info(_:)(v104, v103, v131);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v136 - 1 < 2)
        {
          LOBYTE(v139) = *(v37 + v42);
          if (sub_1DB42E724())
          {
            v106 = *(v0 + 1608);
            v138 = v106;
            v107 = *(v0 + 1600);
            v108 = *(v0 + 1568);
            v128 = *(v0 + 1592);
            v132 = *(v0 + 1560);
            v124 = *(v0 + 1584);
            v125 = *(v0 + 1552);
            v109 = *(v0 + 1544);
            v110 = *(v0 + 1536);
            v111 = *(v0 + 1528);
            v112 = *(v0 + 1520);
            *(v135 + *(*(v0 + 1616) + 40)) = 1;
            v113 = sub_1DB50ABA0();
            (*(*(v113 - 8) + 56))(v106, 1, 1, v113);
            sub_1DB468D18(v111, v107, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v109, v108, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v112, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v114 = (*(v124 + 80) + 40) & ~*(v124 + 80);
            v115 = (v128 + *(v125 + 80) + v114) & ~*(v125 + 80);
            v116 = (v132 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
            v117 = swift_allocObject();
            v117[2] = 0;
            v117[3] = 0;
            v117[4] = v110;
            sub_1DB468D80(v107, v117 + v114, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v108, v117 + v115, type metadata accessor for URLJetPackAssetFetcher);
            *(v117 + v116) = v54;
            v118 = (v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8));
            v119 = *(v0 + 80);
            v118[3] = *(v0 + 64);
            v118[4] = v119;
            v120 = *(v0 + 48);
            v118[1] = *(v0 + 32);
            v118[2] = v120;
            *v118 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v138, &unk_1DB51CC98, v117);
          }
        }

        v121 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v135, v121, type metadata accessor for JetPackAsset);

        goto LABEL_50;
      }
    }
  }

  LOBYTE(v139) = *(v37 + v42);
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    goto LABEL_50;
  }

  if (v136 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
  }

  sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 96, v0 + 176);
  sub_1DB30BE90(v0 + 136, v0 + 216);
  sub_1DB50AC80();
  if (v123)
  {
    v56 = *(v0 + 1824);
    v57 = *(v0 + 1744);
    v58 = *(v0 + 1680);
    v59 = *(v0 + 1616);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
    if (v56(v58, 1, v59) == 1)
    {
      sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
    }

    else
    {
      v69 = *(v0 + 690);
      sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
      if (v69 != 4 && !*(v0 + 690) && *(v0 + 689) == 1)
      {
        sub_1DB50BEB0();
        v70 = *(v0 + 560);
        v71 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1((v0 + 536), v70);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1DB50EE90;
        v139 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v73._countAndFlagsBits = 0xD000000000000025;
        v73._object = 0x80000001DB52F200;
        LogMessage.StringInterpolation.appendLiteral(_:)(v73);
        swift_getErrorValue();
        v74 = *(v0 + 1376);
        v75 = *(v0 + 1384);
        *(v0 + 952) = v75;
        v76 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
        (*(*(v75 - 8) + 16))(v76, v74, v75);
        sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 656) = 0u;
        *(v0 + 672) = 0u;
        sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 688) = 0;
        v77 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1DB301BC0(0, *(v77 + 2) + 1, 1, v77);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_1DB301BC0((v78 > 1), v79 + 1, 1, v77);
        }

        v134 = *(v0 + 1632);
        v127 = *(v0 + 1696);
        v130 = *(v0 + 1512);
        *(v77 + 2) = v79 + 1;
        v80 = &v77[40 * v79];
        v81 = *(v0 + 656);
        v82 = *(v0 + 672);
        v80[64] = *(v0 + 688);
        *(v80 + 2) = v81;
        *(v80 + 3) = v82;
        v139 = v77;
        sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v83);
        *(v72 + 32) = v139;
        Logger.error(_:)(v72, v70, v71);

        __swift_destroy_boxed_opaque_existential_0((v0 + 536));
        sub_1DB50BEB0();
        v84 = *(v0 + 600);
        v85 = *(v0 + 608);
        __swift_project_boxed_opaque_existential_1((v0 + 576), v84);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1DB50EE90;
        *(v0 + 984) = MEMORY[0x1E69E6158];
        *(v0 + 960) = 0xD000000000000075;
        *(v0 + 968) = 0x80000001DB52F230;
        *(v87 + 48) = 0u;
        *(v87 + 32) = 0u;
        sub_1DB30C2D8(v0 + 960, v87 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v87 + 64) = 0;
        *(v86 + 32) = v87;
        Logger.warning(_:)(v86, v84, v85);

        sub_1DB30623C(v127, &qword_1ECC46F20, qword_1DB5105D0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 576));
        sub_1DB468D80(v134, v130, type metadata accessor for JetPackAsset);
        goto LABEL_50;
      }

      sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
    }

    v88 = *(v0 + 1696);
    swift_willThrow();
    sub_1DB30623C(v88, &qword_1ECC46F20, qword_1DB5105D0);
LABEL_50:
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v89 = *(v0 + 8);

    return v89();
  }

  v60 = *(v0 + 1696);
  v61 = *(v0 + 1688);
  v62 = *(v0 + 1616);
  sub_1DB50BEB0();
  v63 = *(v0 + 520);
  v137 = *(v0 + 528);
  v64 = v44;
  __swift_project_boxed_opaque_existential_1((v0 + 496), v63);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1DB50EE90;
  v139 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v66._countAndFlagsBits = 0xD000000000000032;
  v66._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v66);
  sub_1DB30C4B8(v60, v61, &qword_1ECC46F20, qword_1DB5105D0);
  v67 = v64(v61, 1, v62);
  v68 = *(v0 + 1688);
  if (v67 == 1)
  {
    sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v91 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1DB468D80(v68, v91, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v92 = v139;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_1DB301BC0(0, *(v92 + 2) + 1, 1, v92);
  }

  v94 = *(v92 + 2);
  v93 = *(v92 + 3);
  if (v94 >= v93 >> 1)
  {
    v92 = sub_1DB301BC0((v93 > 1), v94 + 1, 1, v92);
  }

  *(v92 + 2) = v94 + 1;
  v95 = &v92[40 * v94];
  v96 = *(v0 + 816);
  v97 = *(v0 + 832);
  v95[64] = *(v0 + 848);
  *(v95 + 2) = v96;
  *(v95 + 3) = v97;
  v139 = v92;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v98);
  *(v65 + 32) = v139;
  Logger.info(_:)(v65, v63, v137);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v99 = swift_task_alloc();
  *(v0 + 1856) = v99;
  *v99 = v0;
  v99[1] = sub_1DB44EB00;
  v100 = *(v0 + 1696);
  v101 = *(v0 + 1648);
  v102 = *(v0 + 1528);

  return sub_1DB41BE7C(v101, v102, v100, v0 + 456);
}

uint64_t sub_1DB44D500()
{
  v121 = v0;
  v1 = (v0 + 696);
  sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1816);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 640);
  v4 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v120 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1432);
  *(v0 + 1336) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1312, v0 + 1216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 1216, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v10 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v120 + 2) + 1, 1, v120);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 712);
  v13[64] = *(v0 + 728);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v120 = v10;
  sub_1DB30623C(v0 + 1312, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v17 = *(v0 + 1744);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v18 + 48);
  *(v0 + 1824) = v20;
  *(v0 + 1832) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v116 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v109 = v21;
  *(v0 + 689) = v21 & 1;
  v23 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v116(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v26);
    (*(v27 + 8))(&v120, v25, v26, v27);
    v24 = v120;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 690) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 776);
  v29 = *(v0 + 1744);
  v30 = *(v0 + 1712);
  v31 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v111 = *(v0 + 400);
  v113 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v111);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DB50EE90;
  v120 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v33._countAndFlagsBits = 0x7341646568636163;
  v33._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v34 = v116(v30, 1, v31);
  v35 = *(v0 + 1712);
  if (v34 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v36 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v35, v36, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v37 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
  }

  v40 = (v0 + 856);
  v41 = (v0 + 1056);
  *(v37 + 2) = v39 + 1;
  v42 = &v37[40 * v39];
  v43 = *v28;
  v44 = *(v0 + 792);
  v42[64] = *(v0 + 808);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v120 = v37;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v46;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v40 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v47 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1576);
  v51 = *(v0 + 1528);
  *(v47 + 2) = v49 + 1;
  v52 = &v47[40 * v49];
  v53 = *v40;
  v54 = *(v0 + 872);
  v52[64] = *(v0 + 888);
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  v120 = v47;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  *(v32 + 32) = v120;
  Logger.info(_:)(v32, v111, v113);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v56 = *(v50 + 20);
  LOBYTE(v120) = *(v51 + v56);
  v57 = sub_1DB42E620();
  if (v24 != 4 && (v57 & 1) != 0)
  {
    v58 = *(v0 + 1744);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1616);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v116(v59, 1, v60);
    v65 = *(v0 + 1704);
    if (v64 == 1)
    {
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v65, v63, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v109 & 1) == 0)
      {
        sub_1DB50BEB0();
        v90 = *(v0 + 320);
        v118 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v90);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v92 + 48) = 0u;
        *(v92 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v92 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v92 + 64) = 0;
        *(v91 + 32) = v92;
        Logger.info(_:)(v91, v90, v118);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v24 - 1 < 2)
        {
          LOBYTE(v120) = *(v51 + v56);
          if (sub_1DB42E724())
          {
            v93 = *(v0 + 1608);
            v94 = *(v0 + 1600);
            v95 = *(v0 + 1568);
            v110 = *(v0 + 1584);
            v112 = v95;
            v117 = *(v0 + 1560);
            v119 = v93;
            v114 = *(v0 + 1552);
            v115 = *(v0 + 1592);
            v96 = *(v0 + 1544);
            v97 = *(v0 + 1536);
            v98 = *(v0 + 1528);
            v99 = *(v0 + 1520);
            *(v63 + *(*(v0 + 1616) + 40)) = 1;
            v100 = sub_1DB50ABA0();
            (*(*(v100 - 8) + 56))(v93, 1, 1, v100);
            sub_1DB468D18(v98, v94, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v96, v95, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v99, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v101 = (*(v110 + 80) + 40) & ~*(v110 + 80);
            v102 = (v115 + v114[80] + v101) & ~v114[80];
            v103 = (v117 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
            v104 = swift_allocObject();
            v104[2] = 0;
            v104[3] = 0;
            v104[4] = v97;
            sub_1DB468D80(v94, v104 + v101, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v112, v104 + v102, type metadata accessor for URLJetPackAssetFetcher);
            *(v104 + v103) = v61;
            v105 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
            v106 = *(v0 + 80);
            v105[3] = *(v0 + 64);
            v105[4] = v106;
            v107 = *(v0 + 48);
            v105[1] = *(v0 + 32);
            v105[2] = v107;
            *v105 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v119, &unk_1DB51CC98, v104);
          }
        }

        v108 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v63, v108, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

        v76 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v120) = *(v51 + v56);
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
    sub_1DB30BE90(v0 + 96, v0 + 176);
    sub_1DB30BE90(v0 + 136, v0 + 216);
    sub_1DB50AC80();
    v67 = *(v0 + 1696);
    v68 = *(v0 + 1688);
    v69 = *(v0 + 1616);
    sub_1DB50BEB0();
    v70 = *(v0 + 520);
    v71 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v70);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1DB50EE90;
    v120 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v73._countAndFlagsBits = 0xD000000000000032;
    v73._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v73);
    sub_1DB30C4B8(v67, v68, &qword_1ECC46F20, qword_1DB5105D0);
    v74 = v116(v68, 1, v69);
    v75 = *(v0 + 1688);
    if (v74 == 1)
    {
      sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1024) = 0u;
      *(v0 + 1040) = 0u;
    }

    else
    {
      *(v0 + 1048) = *(v0 + 1616);
      v78 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
      sub_1DB468D80(v75, v78, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v79 = v120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1DB301BC0(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_1DB301BC0((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[40 * v81];
    v83 = *(v0 + 816);
    v84 = *(v0 + 832);
    v82[64] = *(v0 + 848);
    *(v82 + 2) = v83;
    *(v82 + 3) = v84;
    v120 = v79;
    sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    *(v72 + 32) = v120;
    Logger.info(_:)(v72, v70, v71);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    *(v0 + 480) = &type metadata for SystemDateProvider;
    *(v0 + 488) = &protocol witness table for SystemDateProvider;
    v86 = swift_task_alloc();
    *(v0 + 1856) = v86;
    *v86 = v0;
    v86[1] = sub_1DB44EB00;
    v87 = *(v0 + 1696);
    v88 = *(v0 + 1648);
    v89 = *(v0 + 1528);

    return sub_1DB41BE7C(v88, v89, v87, v0 + 456);
  }

  sub_1DB46628C();
  swift_allocError();
  *v66 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v76 = *(v0 + 8);
LABEL_43:

  return v76();
}

uint64_t sub_1DB44EB00()
{
  v2 = *v1;
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v3 = sub_1DB44EF68;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 456));
    v3 = sub_1DB44EC1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44EC1C()
{
  v1 = v0[207];
  v2 = v0[202];
  sub_1DB468D80(v0[206], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[25];
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[234] = v10;
    *v10 = v0;
    v10[1] = sub_1DB44F654;
    v11 = v0[207];
    v12 = v0[205];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[212];
    sub_1DB468D80(v0[207], v0[189], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C(v0[218], &qword_1ECC46F20, qword_1DB5105D0);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DB44EF68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1616);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_1DB30C4B8(v3, v4, &qword_1ECC46F20, qword_1DB5105D0);
  v31 = v1;
  if (v2(v4, 1, v5) == 1)
  {
    sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_12:
    v27 = *(v0 + 1696);
    swift_willThrow();
    sub_1DB30623C(v27, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v26 = *(v0 + 8);
    goto LABEL_13;
  }

  v6 = *(v0 + 690);
  sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
  if (v6 == 4 || *(v0 + 690) || *(v0 + 689) != 1)
  {
    sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  sub_1DB50BEB0();
  v7 = *(v0 + 560);
  v8 = *(v0 + 568);
  __swift_project_boxed_opaque_existential_1((v0 + 536), v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50EE90;
  v32 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB52F200;
  v10._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 1376);
  v12 = *(v0 + 1384);
  *(v0 + 952) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v14 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1696);
  v29 = *(v0 + 1512);
  v30 = *(v0 + 1632);
  *(v14 + 2) = v16 + 1;
  v18 = &v14[40 * v16];
  v19 = *(v0 + 656);
  v20 = *(v0 + 672);
  v18[64] = *(v0 + 688);
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v9 + 32) = v14;
  Logger.error(_:)(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  sub_1DB50BEB0();
  v22 = *(v0 + 600);
  v23 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DB50EE90;
  *(v0 + 984) = MEMORY[0x1E69E6158];
  *(v0 + 960) = 0xD000000000000075;
  *(v0 + 968) = 0x80000001DB52F230;
  *(v25 + 48) = 0u;
  *(v25 + 32) = 0u;
  sub_1DB30C2D8(v0 + 960, v25 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v25 + 64) = 0;
  *(v24 + 32) = v25;
  Logger.warning(_:)(v24, v22, v23);

  sub_1DB30623C(v17, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  sub_1DB468D80(v30, v29, type metadata accessor for JetPackAsset);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v26 = *(v0 + 8);
LABEL_13:

  return v26();
}