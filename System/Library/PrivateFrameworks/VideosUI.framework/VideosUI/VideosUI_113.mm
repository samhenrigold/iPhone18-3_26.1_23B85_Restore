id sub_1E3F8B5B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  OUTLINED_FUNCTION_122();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a4];

  return v8;
}

uint64_t sub_1E3F8B620()
{
  OUTLINED_FUNCTION_27_2();
  v1 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1E37E1058;

  return sub_1E3F89CFC();
}

unint64_t sub_1E3F8B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D3F8;
  if (!qword_1ECF3D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3F8);
  }

  return result;
}

uint64_t sub_1E3F8B834(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 90))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F8B894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3F8B90C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F8B960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1E3F8B9F0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIButton) initWithType:*(v1 + 16) interfaceStyle:*(v1 + 24)];
  *a1 = result;
  return result;
}

uint64_t sub_1E3F8BA40(void *a1)
{
  v1 = [a1 canonicalID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3F8BAFC@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  a1(0);
  result = a2(v7, v6);
  *a3 = result;
  return result;
}

double sub_1E3F8BB58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E379D7E4(a1, v21, &unk_1ECF296E0, &unk_1E4298030);
    if (v22)
    {
      sub_1E3280A90(0, &qword_1ECF3D420, off_1E8728668);
      if (OUTLINED_FUNCTION_21_4())
      {
        v5 = v20[0];
        type metadata accessor for BaseImpressionManager();
        v6 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v20[0]);
        if ((*(*v4 + 576))())
        {
          OUTLINED_FUNCTION_26_0();
          v8 = (*(v7 + 192))(v21);
          if (*v9)
          {
            v10 = sub_1E4205F14();
            v12 = v11;
            v13 = [v20[0] properties];
            [v13 isWatchListed];

            v14 = sub_1E4205F14();
            v20[3] = MEMORY[0x1E69E6158];
            v20[0] = v14;
            v20[1] = v15;
            sub_1E3946774(v20, v10, v12);
            v8(v21, 0);
          }

          else
          {
            v8(v21, 0);
          }

          OUTLINED_FUNCTION_111();
          v17 = *(v16 + 584);

          v17(v18);
          (*(*v4 + 808))(2, v6);
        }

        ViewModelEvent.rawValue.getter(2);
        v19 = sub_1E4205ED4();

        [v5 selectButtonAction_];
      }
    }

    else
    {

      sub_1E325F6F0(v21, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  return result;
}

double sub_1E3F8BE58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E379D7E4(a1, v10, &unk_1ECF296E0, &unk_1E4298030);
    if (!v11)
    {

      goto LABEL_6;
    }

    sub_1E3280A90(0, &qword_1ECF3D420, off_1E8728668);
    if (OUTLINED_FUNCTION_21_4())
    {
      v5 = v9;
      v6 = [v9 properties];
      [v6 isWatchListed];

      v7 = sub_1E4205F14();
      LOBYTE(v9) = 28;
      v11 = MEMORY[0x1E69E6158];
      v10[0] = v7;
      v10[1] = v8;
      (*(*v4 + 784))(&v9, v10, &unk_1F5D5DAC8, &off_1F5D5C998);

LABEL_6:
      sub_1E325F6F0(v10, &unk_1ECF296E0, &unk_1E4298030);
      return result;
    }
  }

  return result;
}

double sub_1E3F8BFFC()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 2096))();
    OUTLINED_FUNCTION_30();
    (*(v2 + 208))(0, 1);
  }

  return result;
}

double sub_1E3F8C098()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 2096))();
    OUTLINED_FUNCTION_2_1();
    (*(v2 + 312))(0, 1);
  }

  return result;
}

uint64_t sub_1E3F8C18C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v9 = v1;
  v32 = &type metadata for ViewModelKeys.Sports;
  v33 = &off_1F5D7BC68;
  v10 = MEMORY[0x1E69E7CA0];
  v11 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v29, 31);
  sub_1E3F9F164(v11, v9, v10 + 8);

  v12 = OUTLINED_FUNCTION_86_18(v31);
  if (!v19)
  {
LABEL_6:
    sub_1E325F7A8(v34, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v20 = OUTLINED_FUNCTION_61_1(v12, v13, v14, MEMORY[0x1E69E6370], v15, v16, v17, v18, v30, v31[0]);
  if (OUTLINED_FUNCTION_32_13(v20, v21, v22, v23))
  {
    v24 = v31[0];
    goto LABEL_8;
  }

LABEL_7:
  v24 = 2;
LABEL_8:
  OUTLINED_FUNCTION_8();
  v26 = (*(v25 + 2048))();
  v27 = v26 & v24;
  if (v24 == 2)
  {
    v27 = v26;
  }

  return v27 & 1;
}

uint64_t sub_1E3F8C2A4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (v1)
  {
    v10[3] = &type metadata for ViewModelKeys.Sports;
    v10[4] = &off_1F5D7BC68;
    LOBYTE(v10[0]) = 12;
    OUTLINED_FUNCTION_21_107(v1, v2);

    v3 = OUTLINED_FUNCTION_86_18(v10);
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_13_166(v3, v4, v5, MEMORY[0x1E69E6158], v6);
      return OUTLINED_FUNCTION_10_115(v8, v10[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v11, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E3F8C37C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (v1)
  {
    v10[3] = &type metadata for ViewModelKeys.Sports;
    v10[4] = &off_1F5D7BC68;
    LOBYTE(v10[0]) = 17;
    OUTLINED_FUNCTION_21_107(v1, v2);

    OUTLINED_FUNCTION_86_18(v10);
    if (v3)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v8 = OUTLINED_FUNCTION_13_166(v4, v5, v6, v4, v7);
      return OUTLINED_FUNCTION_10_115(v8, v10[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v11, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E3F8C45C(char a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1112))();
  if (v3)
  {
    v12[3] = &type metadata for ViewModelKeys.Sports;
    v12[4] = &off_1F5D7BC68;
    LOBYTE(v12[0]) = a1;
    OUTLINED_FUNCTION_21_107(v3, v4);

    v5 = OUTLINED_FUNCTION_86_18(v12);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_13_166(v5, v6, v7, MEMORY[0x1E69E6158], v8);
      return OUTLINED_FUNCTION_10_115(v10, v12[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v13, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E3F8C53C()
{
  OUTLINED_FUNCTION_8();
  v0 += 69;
  v1 = *v0;
  v2 = (*v0)();
  v10 = MEMORY[0x1E69E7CA0];
  if (!v2)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v11 = v2;
  v53 = &type metadata for ViewModelKeys.Sports;
  v54 = &off_1F5D7BC68;
  v12 = OUTLINED_FUNCTION_23_36(v2, v3, v4, v5, v6, v7, v8, v9, v50, 10);
  sub_1E3F9F164(v12, v11, v10 + 8);

  OUTLINED_FUNCTION_86_18(v52);
  if (!v13)
  {
LABEL_6:
    v25 = sub_1E325F7A8(v55, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0, qword_1E429AC20);
  v21 = OUTLINED_FUNCTION_61_1(v14, v15, v16, v14, v17, v18, v19, v20, v50, v52[0]);
  v25 = OUTLINED_FUNCTION_32_13(v21, v22, v23, v24);
  if (v25)
  {
    return v52[0];
  }

LABEL_7:
  v27 = (v1)(v25);
  if (v27)
  {
    v35 = v27;
    v53 = &type metadata for ViewModelKeys.Sports;
    v54 = &off_1F5D7BC68;
    v36 = OUTLINED_FUNCTION_23_36(v27, v28, v29, v30, v31, v32, v33, v34, v50, 9);
    sub_1E3F9F164(v36, v35, v10 + 8);

    OUTLINED_FUNCTION_86_18(v52);
    if (v37)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0, qword_1E429AC20);
      v45 = OUTLINED_FUNCTION_61_1(v38, v39, v40, v38, v41, v42, v43, v44, v51, v52[0]);
      v49 = OUTLINED_FUNCTION_32_13(v45, v46, v47, v48);
      return OUTLINED_FUNCTION_10_115(v49, v52[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v55, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E3F8C6C8()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1160))();
  v2 = result;
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  v6 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(v2 + 8 * v3 + 32);
    v20[3] = &type metadata for ViewModelKeys;
    v20[4] = &off_1F5D7BCA8;
    LOBYTE(v20[0]) = 7;

    sub_1E3F9F164(v20, v7, v6 + 8);

    if (!v22)
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_1E325F7A8(v21, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_14;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v20);
    v8 = v24;
    if (v24)
    {
      v19 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3740F88(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v9 = v4;
      v10 = *(v4 + 16);
      v11 = v9;
      v12 = *(v9 + 24);
      v13 = v10 + 1;
      if (v10 >= v12 >> 1)
      {
        v15 = OUTLINED_FUNCTION_35(v12);
        v18 = v16;
        result = sub_1E3740F88(v15, v16, 1, v17);
        v13 = v18;
        v11 = result;
      }

      ++v3;
      *(v11 + 16) = v13;
      v14 = v11 + 16 * v10;
      v4 = v11;
      *(v14 + 32) = v19;
      *(v14 + 40) = v8;
    }

    else
    {
LABEL_14:
      ++v3;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3F8C8B0(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = sub_1E32AE9B0(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v18 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x1E69E7CC0];
  v17 = a1;
  while (v6 != v7)
  {
    if (v8)
    {
      v10 = MEMORY[0x1E6911E60](v7, v4);
    }

    else
    {
      if (v7 >= *(v18 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(v4 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v21 = v10;
    a1(&v19, &v21);
    if (v3)
    {

      return;
    }

    if ((v20 & 1) == 0)
    {
      v11 = v4;
      v12 = v6;
      v13 = v8;
      v14 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E3997AA8(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_1E3997AA8((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      *&v9[8 * v16 + 32] = v14;
      a1 = v17;
      v8 = v13;
      v6 = v12;
      v4 = v11;
    }

    ++v7;
  }
}

BOOL sub_1E3F8CA58()
{
  OUTLINED_FUNCTION_8();
  v1 = *((*(v0 + 1160))() + 16);

  return v1 != 0;
}

uint64_t sub_1E3F8CAAC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1112))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v9[3] = &type metadata for ViewModelKeys.Sports;
  v9[4] = &off_1F5D7BC68;
  LOBYTE(v9[0]) = 6;
  OUTLINED_FUNCTION_21_107(v1, v2);

  OUTLINED_FUNCTION_86_18(v9);
  if (!v3)
  {
LABEL_6:
    sub_1E325F7A8(v10, &unk_1ECF296E0, &unk_1E4298030);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (OUTLINED_FUNCTION_13_166(v4, v5, v6, v4, v7))
  {
    return v9[0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E3F8CB88()
{
  v30 = *MEMORY[0x1E69E9840];
  sub_1E41FDE24();
  swift_allocObject();
  sub_1E41FDE14();
  v1 = (*(*v0 + 552))();
  if (!v1)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_6;
  }

  v26 = &type metadata for ViewModelKeys.Sports;
  v27 = &off_1F5D7BC68;
  LOBYTE(v25[0]) = 6;
  sub_1E3F9F164(v25, v1, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v25);
  if (!*(&v29 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v28, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_32_13(v25, &v28, v3, v2) & 1) == 0)
  {
LABEL_7:
    v4 = sub_1E4205CB4();
    goto LABEL_8;
  }

  v4 = v25[0];
LABEL_8:
  v23 = MEMORY[0x1E69E7CC0];
  *&v28 = MEMORY[0x1E69E7CC0];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_16:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1E328438C(*(v4 + 56) + ((v9 << 11) | (32 * v11)), v25);
    v12 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = sub_1E4207994();
    v24 = 0;
    v14 = [v12 dataWithJSONObject:v13 options:0 error:&v24];
    swift_unknownObjectRelease();
    v15 = v24;
    if (v14)
    {
      sub_1E41FE464();

      sub_1E4205A54();
      sub_1E3F9C2EC(&unk_1EE23B660, MEMORY[0x1E69D3C38]);
      sub_1E41FDE04();
      v18 = OUTLINED_FUNCTION_17_11();
      sub_1E38DCCB0(v18, v19);
      v20 = __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E6910BF0](v20);
      v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
      {
        OUTLINED_FUNCTION_35(v21);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v23 = v28;
    }

    else
    {
      v16 = v15;
      v17 = sub_1E41FE274();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  return v23;
}

uint64_t sub_1E3F8CF6C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1136))();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!*(v1 + 16) || (v2 = *(v1 + 32), , , !*(v2 + 16)))
  {

LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = 12589;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 12589;
  *(inited + 56) = 0xE200000000000000;
  sub_1E3F8D068(inited, v2);
  v5 = v4;

  swift_setDeallocating();
  sub_1E38272B0();
  v6 = v5 ^ 1;
  return v6 & 1;
}

void sub_1E3F8D068(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = a2 + 32;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return;
      }

      v7 = 0;
      v8 = 0;
      v2 = v3;
      goto LABEL_9;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

    v9 = (v5 + 16 * v2);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_23;
    }

    ++v2;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (!v10)
      {
        return;
      }

LABEL_23:

      return;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_1E42079A4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1E3F8D1A4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1520))();
  v4 = v3 == 3 && (v1 | v2) == 0;
  v5 = !v4;
  if (!v4)
  {
    sub_1E3827608(v1, v2, v3);
  }

  return v5;
}

void sub_1E3F8D208()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E32AE9B0(v1);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
        goto LABEL_17;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = OUTLINED_FUNCTION_38_0();
        v5 = MEMORY[0x1E6911E60](v10);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_1E3742F1C(v5, v6, v7);
      sub_1E4206254();
      sub_1E4206254();
      if (v13 == v11 && v14 == v12)
      {

LABEL_17:

        return;
      }

      v9 = OUTLINED_FUNCTION_97_0(v13, v14, v11);

      ++v4;
      if (v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1E3F8D39C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E3F9C2EC(a4, a5);
  OUTLINED_FUNCTION_55_39();
  sub_1E4206254();
  OUTLINED_FUNCTION_55_39();
  sub_1E4206254();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E42079A4();
  }

  return v9 & 1;
}

BOOL sub_1E3F8D46C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1E3F8D550()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 1208))())
  {
    v1 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v1 = (*(v2 + 1216))() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1E3F8D5C8()
{
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2216))();
  v5 = OUTLINED_FUNCTION_33_14();
  v6(v5);
  OUTLINED_FUNCTION_0_305();
  v7 = OUTLINED_FUNCTION_74();
  v13 = sub_1E3F8D39C(v7, v8, v9, v10, v11, v12);
  v14 = *(v1 + 8);
  v15 = OUTLINED_FUNCTION_13_8();
  v14(v15);
  v16 = OUTLINED_FUNCTION_11_6();
  v14(v16);
  return v13 & 1;
}

void sub_1E3F8D740()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1568);
  if ((v5() & 1) == 0 && (v5() & 0x100) == 0)
  {
    OUTLINED_FUNCTION_8();
    v46 = *(v6 + 2216);
    v46(v7);
    v8 = *(v1 + 104);
    v9 = OUTLINED_FUNCTION_33_14();
    v8(v9);
    OUTLINED_FUNCTION_0_305();
    v10 = OUTLINED_FUNCTION_74();
    v16 = sub_1E3F8D39C(v10, v11, v12, v13, v14, v15);
    v17 = *(v1 + 8);
    v18 = OUTLINED_FUNCTION_13_8();
    v17(v18);
    v19 = OUTLINED_FUNCTION_11_6();
    v20 = (v17)(v19);
    if (v16)
    {
      OUTLINED_FUNCTION_8();
      v22 = (*(v21 + 552))();
      if (v22)
      {
        v47[3] = &type metadata for ViewModelKeys.Sports;
        v47[4] = &off_1F5D7BC68;
        LOBYTE(v47[0]) = 34;
        sub_1E3F9F164(v47, v22, MEMORY[0x1E69E7CA0] + 8);

        v23 = __swift_destroy_boxed_opaque_existential_1(v47);
        if (*(&v49 + 1))
        {
          OUTLINED_FUNCTION_111_11(v23, v24, v25, MEMORY[0x1E69E6370]);
          goto LABEL_9;
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      sub_1E325F7A8(&v48, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_9;
    }

    v46(v20);
    v26 = OUTLINED_FUNCTION_33_14();
    v8(v26);
    OUTLINED_FUNCTION_0_305();
    v27 = OUTLINED_FUNCTION_74();
    v33 = sub_1E3F8D39C(v27, v28, v29, v30, v31, v32);
    v34 = OUTLINED_FUNCTION_13_8();
    v17(v34);
    v35 = OUTLINED_FUNCTION_11_6();
    v36 = (v17)(v35);
    if ((v33 & 1) == 0)
    {
      v46(v36);
      v37 = OUTLINED_FUNCTION_33_14();
      v8(v37);
      OUTLINED_FUNCTION_0_305();
      v38 = OUTLINED_FUNCTION_74();
      sub_1E3F8D39C(v38, v39, v40, v41, v42, v43);
      v44 = OUTLINED_FUNCTION_13_8();
      v17(v44);
      v45 = OUTLINED_FUNCTION_11_6();
      v17(v45);
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8DAEC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v10 = &type metadata for ViewModelKeys.Sports;
  v11 = &off_1F5D7BC68;
  v9[0] = 29;
  OUTLINED_FUNCTION_21_107(v1, v2);

  v3 = OUTLINED_FUNCTION_86_18(v9);
  if (!v7)
  {
LABEL_6:
    sub_1E325F7A8(v12, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if (OUTLINED_FUNCTION_13_166(v3, v4, v5, MEMORY[0x1E69E6370], v6))
  {
    return v9[0];
  }

  return 0;
}

uint64_t sub_1E3F8DBB4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 648))();
  if (!v1 || (v2 = v1, OUTLINED_FUNCTION_5_0(v1 + 56, v17), v3 = *(v2 + 56), , , !v3) || (OUTLINED_FUNCTION_8(), v5 = (*(v4 + 1024))(), , !v5))
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_11;
  }

  sub_1E3277E60(0xD000000000000012, 0x80000001E428B400, v5, &v18);

  if (!v19)
  {
LABEL_11:
    sub_1E325F7A8(&v18, &unk_1ECF296E0, &unk_1E4298030);
LABEL_12:
    OUTLINED_FUNCTION_34_31();
    goto LABEL_13;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_13_166(v6, v7, v8, v6, v9) & 1) == 0 || !v15)
  {
    goto LABEL_12;
  }

  sub_1E3277E60(0x656372756F73, 0xE600000000000000, v15, &v18);

  if (!v19)
  {
LABEL_13:
    sub_1E325F7A8(&v18, &unk_1ECF296E0, &unk_1E4298030);
    return OUTLINED_FUNCTION_32_0();
  }

  if (OUTLINED_FUNCTION_13_166(v10, v11, v12, MEMORY[0x1E69E6158], v13))
  {
    sub_1E3DE5560(0x746375646F72702CLL, 0xED0000656761705FLL, v15, v16);
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F8DD90()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v9 = v1;
  v28[3] = &type metadata for ViewModelKeys.Sports;
  v28[4] = &off_1F5D7BC68;
  v10 = MEMORY[0x1E69E7CA0];
  v11 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v26, 30);
  sub_1E3F9F164(v11, v9, v10 + 8);

  v12 = OUTLINED_FUNCTION_86_18(v28);
  if (!v19)
  {
LABEL_6:
    sub_1E325F7A8(v29, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v20 = OUTLINED_FUNCTION_61_1(v12, v13, v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v27, v28[0]);
  if (OUTLINED_FUNCTION_32_13(v20, v21, v22, v23))
  {
    return sub_1E4205774();
  }

LABEL_7:
  v25 = sub_1E4205784();
  return OUTLINED_FUNCTION_56_3(v25);
}

BOOL sub_1E3F8DE84()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1616))();
  v3 = sub_1E3F8DEE8(1, v1, v2);

  return v3;
}

BOOL sub_1E3F8DEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a2 + 32;
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    ++v4;
    sub_1E381AB4C(a1, a2, a3);
    a1 = sub_1E4205E84();
  }

  while ((a1 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1E3F8DF6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 248, a2);
  v3 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v3, v4);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F8DFA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 248, a2);
  v5 = *(v2 + 248);
  v6 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return sub_1E37FAED8(v5, v6);
}

double sub_1E3F8E064(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 264, a2);
  swift_weakAssign();

  return result;
}

void (*sub_1E3F8E0A8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_11_3(v1 + 264, v3);
  v3[3] = swift_weakLoadStrong();
  return sub_1E3F8E11C;
}

void sub_1E3F8E11C()
{
  OUTLINED_FUNCTION_106_2();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

double sub_1E3F8E1BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 280, a2);
  *(v2 + 280) = a1;

  return result;
}

double sub_1E3F8E1F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 288, a2);

  return result;
}

uint64_t sub_1E3F8E224(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 288, a2);
  *(v2 + 288) = a1;
}

double sub_1E3F8E260(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 296, a2);

  return result;
}

uint64_t sub_1E3F8E28C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 296, a2);
  *(v2 + 296) = a1;
}

uint64_t sub_1E3F8E2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1424))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8E38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34550, &qword_1E42E1250);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8E484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8E534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34550, &qword_1E42E1250);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8E618()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3F8E68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E3F8E6E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1E38275A4(*a1, v2, v3);
  return sub_1E3F8E734(v1, v2, v3);
}

uint64_t sub_1E3F8E734(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8E7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D438, &qword_1E42E12F0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430, &qword_1E42E12E8);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8E8B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  if (v3)
  {
    v0 = 256;
  }

  else
  {
    v0 = 0;
  }

  return v0 | v2;
}

uint64_t sub_1E3F8E93C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1568))();
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1E3F8E9D0(char a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8EA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D450, &unk_1E42E1350);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448, &qword_1E42E1348);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8EB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1616))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8EBF8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  return sub_1E4200684();
}

uint64_t sub_1E3F8EC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8, &qword_1E42DD940);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8ED68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1664))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8EE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60, qword_1E42D2830);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8EF10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1712))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8EFC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8F0B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1760))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8F168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8F260@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1808))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8F310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8F3F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3F8F464@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1856))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8F4E0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8F56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D468, &qword_1E42E1528);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460, &qword_1E42E1520);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8F650(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3F8F688(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_1E3F8F708(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerPresenter, a2);
  OUTLINED_FUNCTION_72_3();
  swift_weakAssign();

  return result;
}

void (*sub_1E3F8F758(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerPresenter;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3(v1 + v4, v3);
  v3[3] = swift_weakLoadStrong();
  return sub_1E3F8F7D4;
}

void sub_1E3F8F7D4()
{
  OUTLINED_FUNCTION_106_2();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1E3F8F85C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1952))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8F90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60, qword_1E42D2830);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8FA04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2000))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8FAB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60, qword_1E42D2830);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8FBAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2048))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8FC40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  return sub_1E4200684();
}

uint64_t sub_1E3F8FCB8(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_80(v2 + *a1, a2);
  v3 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3F8FD20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3F8FE04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3F8FE3C(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_1E3F8FE80())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3(v0, v1);
  return j_j__swift_endAccess;
}

uint64_t sub_1E3F8FED4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3F8FF0C(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E3F8FF50(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3F8FF88(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E3F8FFEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_80(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport, a2);
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_72_3();
  v4(v3);
  return swift_endAccess();
}

void sub_1E3F90064()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v44 = v3;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus, &v46);
  v42 = *(v6 + 16);
  v43 = v11;
  v42(v10, v2 + v11, v4);
  v12 = OUTLINED_FUNCTION_34();
  v14 = v13(v12);
  v15 = MEMORY[0x1E69D3BB0];
  if (v14 != *MEMORY[0x1E69D3B90])
  {
    if (v14 == *MEMORY[0x1E69D3B68])
    {
LABEL_4:
      v17 = OUTLINED_FUNCTION_73_6();
      goto LABEL_7;
    }

    if (v14 != *MEMORY[0x1E69D3B70])
    {
      if (v14 == *MEMORY[0x1E69D3B78])
      {
        goto LABEL_4;
      }

      if (v14 == *MEMORY[0x1E69D3BA8] || v14 == *MEMORY[0x1E69D3BB0] || v14 == *MEMORY[0x1E69D3BA0] || v14 == *MEMORY[0x1E69D3B80] || v14 == *MEMORY[0x1E69D3B88])
      {
        sub_1E3F8F138(0);
        goto LABEL_8;
      }

      if (v14 != *MEMORY[0x1E69D3B98])
      {
        v39 = OUTLINED_FUNCTION_73_6();
        sub_1E3F8F138(v39);
        sub_1E3F8EF90(1);
        v40 = OUTLINED_FUNCTION_34();
        v41(v40);
        goto LABEL_8;
      }
    }

    v18 = OUTLINED_FUNCTION_73_6();
    sub_1E3F8F138(v18);
    v17 = 1;
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_73_6();
  sub_1E3F8F138(v16);
  v17 = 0;
LABEL_7:
  sub_1E3F8EF90(v17);
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E0, &unk_1E42A0F90);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E429A240;
  v22 = v21 + v20;
  v23 = *(v6 + 104);
  v23(v22, *v15, v4);
  v23(v22 + v19, *MEMORY[0x1E69D3BA0], v4);
  v23(v22 + 2 * v19, *MEMORY[0x1E69D3B80], v4);
  v23(v22 + 3 * v19, *MEMORY[0x1E69D3B88], v4);
  v23(v22 + 4 * v19, *MEMORY[0x1E69D3BA8], v4);
  v25 = v42;
  v24 = v43;
  v26 = (v42)(v1, v2 + v43, v4);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_27();
  *(v27 - 16) = v1;
  OUTLINED_FUNCTION_89_16();
  LOBYTE(v22) = sub_1E3F8D46C(v28, v29, v30, v31);
  swift_setDeallocating();
  sub_1E38272F4();
  v32 = *(v6 + 8);
  v32(v1, v4);
  v33 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled, &v45);
  *(v2 + v33) = v22 & 1;
  v25(v1, v2 + v24, v4);
  sub_1E3F9C2EC(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  LOBYTE(v33) = sub_1E4205E84();
  v32(v1, v4);
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    if ((*(v34 + 1928))())
    {
      sub_1E401C810();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F90508@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_15_0(v3 + *a1, a2);
  a2(0);
  OUTLINED_FUNCTION_2();
  return (*(v7 + 16))(a3, v3 + v6);
}

uint64_t sub_1E3F90580(uint64_t a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_9();
  v7 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus, v15);
  v8 = OUTLINED_FUNCTION_69_2();
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + v7, v14);
  OUTLINED_FUNCTION_77();
  v10();
  swift_endAccess();
  sub_1E3F90064();
  v11 = *(v5 + 8);
  v11(a1, v2);
  v12 = OUTLINED_FUNCTION_74();
  return (v11)(v12);
}

uint64_t sub_1E3F906A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel);
  }

  else
  {
    v3 = v0;
    OUTLINED_FUNCTION_8();
    (*(v4 + 1096))();
    type metadata accessor for FollowStateViewModel(0);
    v5 = OUTLINED_FUNCTION_57();
    v2 = sub_1E38486C0(v5, v6);
    *(v3 + v1) = v2;
  }

  return v2;
}

double sub_1E3F90754(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel) = a1;

  return result;
}

uint64_t sub_1E3F9076C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider) == 1)
  {
    sub_1E3F907F0();
    *v1 = v2;
    v1[1] = v3;
    swift_unknownObjectRetain();
    v4 = OUTLINED_FUNCTION_24_4();
    sub_1E3BB95CC(v4);
  }

  v5 = OUTLINED_FUNCTION_32_0();
  sub_1E3BB95DC(v5);
  return OUTLINED_FUNCTION_34();
}

void sub_1E3F907F0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FE5D4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_9_2();
  v6 = (*(v5 + 1096))();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_111();
    v11 = (*(v10 + 1120))();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      OUTLINED_FUNCTION_111();
      v16 = (*(v15 + 1128))();
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        OUTLINED_FUNCTION_111();
        if ((*(v20 + 2120))())
        {
          OUTLINED_FUNCTION_111();
          v30 = (*(v21 + 2144))();
          OUTLINED_FUNCTION_111();
          v23 = (*(v22 + 1104))();
          v25 = v24;
          OUTLINED_FUNCTION_9_2();
          v29.n128_u64[1] = (*(v26 + 1232))();
          v29.n128_u64[0] = v25;
          sub_1E3C05940((v30 & 1) == 0, v8, v9, v13, v14, v18, v19, v23, v31, v29, v27);
          type metadata accessor for Tier1PlusLiveUpdateProvider();
          OUTLINED_FUNCTION_50();
          swift_unknownObjectRetain();
          sub_1E3C05C5C(v31, v2, &off_1F5D8FD18);
        }

        else
        {

          type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
          sub_1E41FE594();

          sub_1E376EE58(v28, 2, v0);
          type metadata accessor for Tier1LiveUpdateProvider();

          j__OUTLINED_FUNCTION_18();

          OUTLINED_FUNCTION_74();
          sub_1E3C05A88();
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F90B14(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  *v3 = a1;
  v3[1] = a2;
  return sub_1E3BB95CC(v4);
}

uint64_t (*sub_1E3F90B34(uint64_t *a1))(__int128 *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E3F9076C();
  a1[1] = v3;
  return sub_1E3F90B7C;
}

uint64_t sub_1E3F90B7C(__int128 *a1, char a2)
{
  *(*(a1 + 2) + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider) = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    v2 = OUTLINED_FUNCTION_32_0();
    sub_1E3BB95CC(v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_32_0();

    return sub_1E3BB95CC(v4);
  }
}

uint64_t sub_1E3F90C0C()
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_36();
  (*(v1 + 2192))();
  sub_1E4205BE4();
  OUTLINED_FUNCTION_49_4();
  v2 = OUTLINED_FUNCTION_13_8();
  v3(v2);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_1E3F90CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout);
  if (!v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_0(v3 + 120, a2);
  return *(v3 + 120);
}

void sub_1E3F90D94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v105 = v4;
  v106 = v5;
  v104 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v92 = v9;
  OUTLINED_FUNCTION_138();
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v107 = v11;
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v13 - v12);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460, &qword_1E42E1520);
  OUTLINED_FUNCTION_0_10();
  v102 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v100 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_0_10();
  v113 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v109 = v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448, &qword_1E42E1348);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430, &qword_1E42E12E8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_128();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_139();
  *(v0 + 31) = 0;
  *(v0 + 32) = 0;
  swift_weakInit();
  *(v0 + 34) = 0;
  *(v0 + 35) = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(v0 + 36) = MEMORY[0x1E69E7CC0];
  *(v0 + 37) = v32;
  *(v0 + 38) = v32;
  type metadata accessor for SportsVoiceOverViewModel(0);
  *(v0 + 39) = sub_1E3FE2E1C();
  v33 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresPublisher;
  v116[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  sub_1E4200634();
  v34 = *(v30 + 32);
  v34(&v0[v33], v1, v28);
  v35 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher;
  sub_1E4200634();
  v34(&v0[v35], v1, v28);
  v116[1] = 0;
  v117 = 3;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v36 = OUTLINED_FUNCTION_66_35();
  v37(v36, v2, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D440, &qword_1E42E12F8);
  sub_1E4200634();
  v38 = OUTLINED_FUNCTION_66_35();
  v39(v38, v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0, &unk_1E42A0718);
  sub_1E4200634();
  v40 = OUTLINED_FUNCTION_66_35();
  v41(v40, v97, v98);
  v42 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventDateText;
  v116[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
  sub_1E4200634();
  v43 = *(v113 + 32);
  v43(&v3[v42], v109, v110);
  v44 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  LOBYTE(v116[0]) = 1;
  sub_1E4200634();
  v45 = *(v100 + 32);
  v45(&v3[v44], v99, v111);
  v46 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v46], v99, v111);
  v47 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v47], v99, v111);
  v48 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  LOBYTE(v116[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D458, &qword_1E42E14D0);
  sub_1E4200634();
  (*(v102 + 32))(&v3[v48], v101, v103);
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled] = 0;
  swift_weakInit();
  v49 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName;
  sub_1E4200634();
  v43(&v3[v49], v109, v110);
  v50 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle;
  v116[0] = 0;
  sub_1E4200634();
  v43(&v3[v50], v109, v110);
  v51 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v51], v99, v111);
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled] = 1;
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported] = 0;
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_cancellables] = MEMORY[0x1E69E7CD0];
  v52 = *MEMORY[0x1E69D3D80];
  v53 = *(v107 + 104);
  v53(&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport], *MEMORY[0x1E69D3D80], v108);
  v54 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  v55 = *MEMORY[0x1E69D3B98];
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v56 + 104))(&v3[v54], v55);
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider] = xmmword_1E42C0270;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout] = 0;

  v57 = sub_1E39BEDCC(v104, v105, v106);
  if (!v57)
  {
    goto LABEL_33;
  }

  v114 = v52;
  if (v106)
  {
    v58 = *(*v106 + 392);

    v60 = v58(v59);

    if (v60)
    {
      if (*v60 == _TtC8VideosUI31SportsCanonicalBannerViewLayout)
      {
        *(v57 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout) = v60;
      }
    }
  }

  else
  {
  }

  v61 = [objc_opt_self() sharedPreferences];
  v62 = [v61 sportsScoreSpoilersAllowed];

  v63 = sub_1E3F8FC2C(v62);
  v64 = *(*v57 + 552);
  v112 = v53;
  if (!v64(v63))
  {
    v65 = &off_1F5D7BC68;
    v120 = 0u;
    v121 = 0u;
    goto LABEL_13;
  }

  v118 = &type metadata for ViewModelKeys.Sports;
  v119 = &off_1F5D7BC68;
  v65 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_84_20(14);

  v66 = __swift_destroy_boxed_opaque_existential_1(v116);
  if (!*(&v121 + 1))
  {
LABEL_13:
    sub_1E325F7A8(&v120, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_113_11(v66, v67, v68, MEMORY[0x1E69E6370]))
  {
    v69 = v116[0];
    goto LABEL_15;
  }

LABEL_14:
  v69 = 0;
LABEL_15:
  v70 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  v71 = OUTLINED_FUNCTION_3_0(v57 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported, &v115);
  *(v57 + v70) = v69;
  if (!v64(v71))
  {
    v120 = 0u;
    v121 = 0u;
    v75 = &unk_1EE2AA000;
    goto LABEL_20;
  }

  v118 = &type metadata for ViewModelKeys.Sports;
  v119 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_84_20(15);

  v72 = __swift_destroy_boxed_opaque_existential_1(v116);
  v75 = &unk_1EE2AA000;
  if (!*(&v121 + 1))
  {
LABEL_20:
    sub_1E325F7A8(&v120, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_21;
  }

  if (!OUTLINED_FUNCTION_113_11(v72, v73, v74, MEMORY[0x1E69E6370]))
  {
LABEL_21:
    v76 = 0;
    goto LABEL_22;
  }

  v76 = v116[0];
LABEL_22:
  v77 = v75[268];
  v78 = OUTLINED_FUNCTION_3_0(v57 + v77, v116);
  *(v57 + v77) = v76;
  (*(*v57 + 1128))(v78);
  if (v79)
  {
    sub_1E4205BD4();
  }

  else
  {
    v65 = v93;
    v112(v93, v114, v108);
  }

  v80 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  OUTLINED_FUNCTION_11_3(v57 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport, &v120);
  (*(v107 + 40))(v57 + v80, v93, v108);
  swift_endAccess();
  sub_1E3F93CA4();
  OUTLINED_FUNCTION_30_1();
  v82 = (*(v81 + 464))();

  if (!v82)
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  (*(*v57 + 2384))(v82, 1);

  if ((*(*v57 + 1216))(v83))
  {
    OUTLINED_FUNCTION_30_1();
    (*(v84 + 1168))();
    OUTLINED_FUNCTION_30_1();
    v65 = v92;
    (*(v85 + 1240))();
    sub_1E3F91C40();

    sub_1E325F7A8(v92, &qword_1ECF2BD98, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_30_1();
  (*(v86 + 1096))();
  if (v87)
  {
    v88 = v87;
    if (*(v57 + v70) == 1)
    {
      OUTLINED_FUNCTION_118();
      sub_1E4205004();
      v89 = sub_1E4204FF4();
      OUTLINED_FUNCTION_4_0();
      v90 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_5_10();
      v91 = swift_allocObject();
      v91[2] = v90;
      v91[3] = v65;
      v91[4] = v88;

      OUTLINED_FUNCTION_13_8();
      sub_1E4204F34();
    }

    else
    {
    }
  }

LABEL_33:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F91C40()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E3F989B4();
  if (v0)
  {
    sub_1E3F96094();
    OUTLINED_FUNCTION_25_2();

    return;
  }

  OUTLINED_FUNCTION_30_1();
  v3 = (*(v2 + 464))();
  if (!v3)
  {
LABEL_23:
    MEMORY[0x1EEE9AC00](v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AD0, &qword_1E42CCBD8);
    sub_1E4148DE0(sub_1E3F9C0C4);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v4 = v3;
  v5 = sub_1E32AE9B0(v3);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      MEMORY[0x1EEE9AC00](v13);
      OUTLINED_FUNCTION_89_16();
      sub_1E3F8C8B0(v14, v15, v16);
      OUTLINED_FUNCTION_11_5();

      goto LABEL_23;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_168();
      v7 = MEMORY[0x1E6911E60](v12);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C(v7, v8, v9);
    sub_1E4206254();
    sub_1E4206254();
    if (v19 == v17 && v20 == v18)
    {
    }

    else
    {
      v11 = OUTLINED_FUNCTION_97_0(v19, v20, v17);

      if ((v11 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E3F91F2C()
{
  OUTLINED_FUNCTION_31_1();
  v68 = v2;
  v63 = v4;
  v64 = v3;
  v65 = sub_1E4204D64();
  OUTLINED_FUNCTION_0_10();
  v67 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v66 = v11;
  OUTLINED_FUNCTION_138();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v61 = v13;
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v60 = v15 - v14;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000, &unk_1E42C71E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_50_1();
  v26 = OUTLINED_FUNCTION_11_6();
  sub_1E379D7E4(v26, v27, &qword_1ECF36000, &unk_1E42C71E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v66;
    v28 = v67;
    v30 = OUTLINED_FUNCTION_11_6();
    v31 = v65;
    v32(v30);
    sub_1E3E37F30();
    OUTLINED_FUNCTION_22_6();
    v33(v21);
    (*(v28 + 16))(v9, v29, v31);

    v34 = sub_1E41FFC94();
    v35 = sub_1E42067E4();

    v36 = v17;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v64 = v1;
      v38 = v37;
      v70[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1E3270FC8(v63, v68, v70);
      *(v38 + 12) = 2080;
      sub_1E3F9C2EC(&qword_1ECF3DAD0, MEMORY[0x1E69D3990]);
      v39 = sub_1E4207AB4();
      v40 = v36;
      v42 = v41;
      v43 = v9;
      v44 = *(v67 + 8);
      v44(v43, v31);
      v45 = sub_1E3270FC8(v39, v42, v70);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_1E323F000, v34, v35, "SportsCanonicalBannerScoreboardViewModel unable to retrieve subscription: %s error: %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v40 + 8))(v21, v64);
      v44(v66, v65);
    }

    else
    {

      v55 = *(v67 + 8);
      v55(v9, v31);
      (*(v17 + 8))(v21, v1);
      v55(v66, v31);
    }
  }

  else
  {
    v46 = v68;
    v47 = *v0;
    OUTLINED_FUNCTION_5_0(v64 + 16, v70);
    if (swift_weakLoadStrong())
    {
      v48 = sub_1E3E37F30();
      (*(v17 + 16))(v24, v48, v1);

      v49 = sub_1E41FFC94();
      v50 = sub_1E42067E4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v69 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1E3270FC8(v63, v46, &v69);
        _os_log_impl(&dword_1E323F000, v49, v50, "SportsCanonicalBannerScoreboardViewModel successfully retrieved subscription: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v53 = OUTLINED_FUNCTION_97_1();
      v54(v53);
      v56 = v60;
      v57 = sub_1E42056A4();
      sub_1E4205044();
      v58 = sub_1E42056D4();
      sub_1E3F92560(v58);
      OUTLINED_FUNCTION_11_5();

      sub_1E3F8EBE4(0);
      if (sub_1E3C088F4())
      {
        sub_1E3F928D4();
      }

      v59 = sub_1E4205024();
      sub_1E3F92AC8(v59);

      (*(v61 + 8))(v56, v62);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F92560(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3F928AC()
{

  return sub_1E3F8EBE4(v0);
}

void sub_1E3F928D4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_247();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_7();
  sub_1E3F962DC();
  v4 = sub_1E42056A4();
  sub_1E4205044();

  v5 = *(v1 + 104);
  v6 = OUTLINED_FUNCTION_69_2();
  v5(v6);
  OUTLINED_FUNCTION_0_305();
  LOBYTE(v4) = OUTLINED_FUNCTION_116_13(v7, v8, v9, v10, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
  v11 = *(v1 + 8);
  v12 = OUTLINED_FUNCTION_74();
  v11(v12);
  v13 = OUTLINED_FUNCTION_39_3();
  v11(v13);
  if (v4 & 1) != 0 || (v14 = sub_1E42056A4(), sub_1E4205044(), v14, v15 = OUTLINED_FUNCTION_69_2(), v5(v15), OUTLINED_FUNCTION_0_305(), LOBYTE(v14) = OUTLINED_FUNCTION_116_13(v16, v17, v18, v19, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]), v20 = OUTLINED_FUNCTION_74(), v11(v20), v21 = OUTLINED_FUNCTION_39_3(), v11(v21), (v14))
  {
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F92AC8(uint64_t a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36();
  (*(v2 + 2216))();
  sub_1E3F97540();
  v3 = OUTLINED_FUNCTION_74();
  return v4(v3);
}

double sub_1E3F92BB0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));
  swift_weakDestroy();

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_72_3();
  v3(v4);
  (v3)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher, v1);
  v5 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__clockPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430, &qword_1E42E12E8);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__winnerPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448, &qword_1E42E1348);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_2();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_72_3();
  v13(v14);
  v15 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v18 = *(v17 + 8);
  v18(v0 + v15, v16);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible, v16);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback, v16);
  v19 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460, &qword_1E42E1520);
  OUTLINED_FUNCTION_10();
  (*(v20 + 8))(v0 + v19);
  swift_weakDestroy();
  (v13)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName, v11);
  (v13)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle, v11);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers, v16);

  v21 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v22 + 8))(v0 + v21);
  v23 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_10();
  (*(v24 + 8))(v0 + v23);

  sub_1E3BB95CC(*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider));
  OUTLINED_FUNCTION_25_2();

  return result;
}

void sub_1E3F92F20()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E3E37F30();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SportsCanonicalBannerScoreboardViewModel is deallocated", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v11 = OUTLINED_FUNCTION_57();
  v12(v11);
  v13 = ViewModel.deinit();
  sub_1E37FAED8(*(v13 + 248), *(v13 + 256));
  swift_weakDestroy();

  v14 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresPublisher;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_2();
  v17 = *(v16 + 8);
  v17(v13 + v14, v15);
  v17(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher, v15);
  v18 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__clockPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430, &qword_1E42E12E8);
  OUTLINED_FUNCTION_10();
  (*(v19 + 8))(v13 + v18);
  v20 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__winnerPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448, &qword_1E42E1348);
  OUTLINED_FUNCTION_10();
  (*(v21 + 8))(v13 + v20);
  v22 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_10();
  (*(v23 + 8))(v13 + v22);
  v24 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventDateText;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08, &qword_1E42D2828);
  OUTLINED_FUNCTION_2();
  v27 = *(v26 + 8);
  v27(v13 + v24, v25);
  v28 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v31 = *(v30 + 8);
  v31(v13 + v28, v29);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible, v29);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback, v29);
  v32 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460, &qword_1E42E1520);
  OUTLINED_FUNCTION_10();
  (*(v33 + 8))(v13 + v32);
  swift_weakDestroy();
  v27(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName, v25);
  v27(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle, v25);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers, v29);

  v34 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v35 + 8))(v13 + v34);
  v36 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_10();
  (*(v37 + 8))(v13 + v36);

  sub_1E3BB95CC(*(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider));

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F9339C()
{
  sub_1E3F92F20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F933F0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 1112))())
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_8();
  (*(v1 + 1136))();
  OUTLINED_FUNCTION_8();
  (*(v2 + 1216))();
  v3 = OUTLINED_FUNCTION_34();
  sub_1E3FE3268(v3, v4, v5);
}

uint64_t sub_1E3F934F0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E3F8F2E0(1);
  sub_1E3E37F30();
  OUTLINED_FUNCTION_22_6();
  v1 = OUTLINED_FUNCTION_33_14();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "SportsCanonicalBannerScoreboardViewModel: Logo image download failed, falling back to abbreviations", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_13_8();
  return v7(v6);
}

void sub_1E3F93634()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E32ADE38();
  v12 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_weakInit();
  v18[4] = v4;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E378AEA4;
  v18[3] = v2;
  v14 = _Block_copy(v18);

  sub_1E4203FE4();
  v18[0] = MEMORY[0x1E69E7CC0];
  sub_1E3F9C2EC(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v0, v14);
  _Block_release(v14);

  v15 = OUTLINED_FUNCTION_11_6();
  v16(v15);
  (*(v7 + 8))(v11, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F938C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v32 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1096))();
  if (v10)
  {
    if (v4 == 2 || (sub_1E3849AAC(v9, v10, v11), (sub_1E4205E84() & 1) == 0))
    {
      v13 = *(**sub_1E3FF7F7C() + 176);

      v14 = OUTLINED_FUNCTION_123_1();
      v12 = v13(v14);
    }

    else
    {
      v12 = 1;
    }

    sub_1E3F8FC2C(v12 & 1);
    if (v4 != 2)
    {
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000012, 0x80000001E428B420);
      sub_1E4207614();
    }

    OUTLINED_FUNCTION_111();
    v15 += 256;
    v16 = *v15;
    v17 = (*v15)();
    v18 = sub_1E3E37F30();
    (*(v6 + 16))(v1, v18, v32);

    v19 = sub_1E41FFC94();
    v20 = sub_1E42067E4();

    if (os_log_type_enabled(v19, v20))
    {
      v31 = v16;
      v21 = v6;
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v22 = 67109378;
      *(v22 + 4) = v17 & 1;
      *(v22 + 8) = 2080;
      v23 = OUTLINED_FUNCTION_24_4();
      v26 = sub_1E3270FC8(v23, v24, v25);

      *(v22 + 10) = v26;
      _os_log_impl(&dword_1E323F000, v19, v20, "SportsCanonicalBannerScoreboardViewModel.setupScoreboard: show scores: %{BOOL}d %s", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v27 = (*(v21 + 8))(v1, v32);
      v28 = (v31)(v27);
    }

    else
    {

      v29 = (*(v6 + 8))(v1, v32);
      v28 = (v16)(v29);
    }

    v30 = *v2;
    if (v28)
    {
      (*(v30 + 2368))();
    }

    else
    {
      (*(v30 + 2376))(0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F93CA4()
{
  v1 = v0;
  sub_1E4205004();
  v2 = sub_1E4204FF4();
  sub_1E4204F84();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568, &unk_1E42A0980);
  OUTLINED_FUNCTION_29_92(&qword_1EE28A1D8);
  OUTLINED_FUNCTION_114_11();
  OUTLINED_FUNCTION_38();

  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_cancellables;
  OUTLINED_FUNCTION_31_80(v1 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_cancellables, v4);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_9_2();
  (*(v5 + 1096))();
  if (v7)
  {
    OUTLINED_FUNCTION_49_4();
    v8 = *(**sub_1E3847108() + 104);

    v9 = OUTLINED_FUNCTION_63_0();
    v8(v9);

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570, &unk_1E42E1820);
    OUTLINED_FUNCTION_29_92(&qword_1EE28A208);
    OUTLINED_FUNCTION_114_11();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_31_80(v1 + v3, v10);
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

double sub_1E3F93ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_5_0(a1 + 16, v12);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_106();
    v5 = sub_1E4206474();
    OUTLINED_FUNCTION_56_3(v5);
    OUTLINED_FUNCTION_5_10();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = a1;
    v7 = OUTLINED_FUNCTION_103_13();
    sub_1E376FE58(v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1E3F93FA0()
{
  OUTLINED_FUNCTION_24();
  v1 = **(v0 + 16) + 2352;
  *(v0 + 24) = *v1;
  *(v0 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0x2190000000000000;
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F94054, v3, v2);
}

uint64_t sub_1E3F94054()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);

  v1(2);
  OUTLINED_FUNCTION_54();

  return v2();
}

double sub_1E3F940C0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  OUTLINED_FUNCTION_5_0(a2 + 16, v16);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_118();
    v10 = sub_1E4206474();
    OUTLINED_FUNCTION_56_3(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = a2;
    *(v11 + 40) = v7;
    *(v11 + 48) = v6;
    *(v11 + 56) = v8;

    v12 = OUTLINED_FUNCTION_103_13();
    sub_1E376FE58(v12, v13, v14, v15, v11);
  }

  return result;
}

uint64_t sub_1E3F941B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3F941CC()
{
  OUTLINED_FUNCTION_24();
  v1 = **(v0 + 16) + 2352;
  *(v0 + 24) = *v1;
  *(v0 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0x2190000000000000;
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F94280, v3, v2);
}

uint64_t sub_1E3F94280()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v2(v1 & 1);
  OUTLINED_FUNCTION_54();

  return v3();
}

double sub_1E3F942F0()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2264))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return sub_1E3FE4198();
}

void sub_1E3F94378(char a1)
{
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 2264))())
  {
    OUTLINED_FUNCTION_49_4();
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(a1 & 1, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E3FE3F18();
}

void sub_1E3F94408()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v122 = v3;
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_112_15();
  v7 = MEMORY[0x1E69E7CC0];
  *v8 = MEMORY[0x1E69E7CC0];

  v6(&v136, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = OUTLINED_FUNCTION_112_15();
  *v10 = v7;

  v9(&v136, 0);

  v11 = v5;

  OUTLINED_FUNCTION_3_0(v0 + 288, &v135);
  *(v0 + 288) = v7;

  OUTLINED_FUNCTION_3_0(v0 + 280, &v134);
  *(v0 + 280) = 0;

  v132 = 0;
  v133 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
  v13 = sub_1E4206314();
  v13[2] = 3;
  v13[4] = 0;
  v121 = v13 + 4;
  v13[5] = 0;
  v13[6] = 0;
  v129 = v12;
  v14 = sub_1E4206314();
  v14[2] = 2;
  v14[4] = 0;
  v120 = v14 + 4;
  v14[5] = 0;
  v130 = v2;
  v123 = v14;
  v126 = v5;
  v128 = sub_1E32AE9B0(v5);
  if (v128)
  {
    v127 = v5 & 0xC000000000000001;
    OUTLINED_FUNCTION_3_0(v2 + 272, &v131);
    v15 = 0;
    v125 = v5 & 0xFFFFFFFFFFFFFF8;
    v124 = v5 + 32;
    while (1)
    {
      if (v127)
      {
        v16 = MEMORY[0x1E6911E60](v15, v11);
        v18 = v16;
      }

      else
      {
        if (v15 >= *(v125 + 16))
        {
          goto LABEL_208;
        }

        v18 = *(v124 + 8 * v15);
      }

      if (__OFADD__(v15++, 1))
      {
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v20 = v18[49];
      switch(v18[49])
      {
        case 0x11u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          if (!v13[2])
          {
            goto LABEL_215;
          }

          v38 = &v139;
          goto LABEL_87;
        case 0x12u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v35 = v18;
          }

          else
          {
            v35 = 0;
          }

          if (v13[2] < 2uLL)
          {
            goto LABEL_213;
          }

          v13[5] = v35;
          goto LABEL_90;
        case 0x13u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v34 = v18;
          }

          else
          {
            v34 = 0;
          }

          if (v13[2] < 3uLL)
          {
            goto LABEL_214;
          }

          v13[6] = v34;
          goto LABEL_90;
        case 0x14u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          if (!v14[2])
          {
            goto LABEL_211;
          }

          v38 = &v138;
LABEL_87:
          **(v38 - 32) = v21;
          goto LABEL_90;
        case 0x15u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v33 = v18;
          }

          else
          {
            v33 = 0;
          }

          if (v14[2] < 2uLL)
          {
            goto LABEL_212;
          }

          v14[5] = v33;
          goto LABEL_90;
        case 0x16u:
          goto LABEL_90;
        case 0x17u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {
          }

          else
          {
            v36 = 0;
          }

          v12 = v2;
          sub_1E3F8F8DC(v36);
          goto LABEL_90;
        default:
          if ((v20 - 53) < 2)
          {
            if (v122)
            {
              *(v2 + 272) = v18;
            }
          }

          else
          {
            switch(v20)
            {
              case 3:
                if (*v18 != _TtC8VideosUI13TextViewModel)
                {

                  v18 = 0;
                }

                *(v2 + 280) = v18;
                break;
              case 4:
                LOBYTE(v139) = 2;
                (*(*v18 + 776))(&v136, &v139, &unk_1F5D5D528, &off_1F5D5C858);
                if (v138)
                {
                  if (swift_dynamicCast())
                  {
                    v37 = v139;
                    v12 = v140;
                    goto LABEL_95;
                  }
                }

                else
                {
                  sub_1E325F7A8(&v136, &unk_1ECF296E0, &unk_1E4298030);
                }

                v37 = 0;
                v12 = 0;
LABEL_95:
                ViewModelKeys.Sports.rawValue.getter(11);
                if (!v12)
                {

                  goto LABEL_103;
                }

                if (v39 == v37 && v12 == v40)
                {

LABEL_111:
                  if (*v18 == _TtC8VideosUI13TextViewModel)
                  {

                    v46 = v18;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v136 = v46;
                  MEMORY[0x1EEE9AC00](v42);
                  OUTLINED_FUNCTION_1_27();
                  *(v47 - 16) = &v133;
                  v48 = sub_1E3F57524;
LABEL_128:
                  v12 = &v136;
                  sub_1E4148DE0(v48);

                  goto LABEL_139;
                }

                v2 = OUTLINED_FUNCTION_55_46(v39);

                if (v2)
                {

                  OUTLINED_FUNCTION_201();
                  goto LABEL_111;
                }

LABEL_103:
                ViewModelKeys.Sports.rawValue.getter(25);
                if (v12)
                {
                  if (v43 == v37 && v12 == v44)
                  {

                    goto LABEL_124;
                  }

                  v2 = OUTLINED_FUNCTION_55_46(v43);

                  if (v2)
                  {
LABEL_124:

                    v2 = v130;
                    if (*v18 == _TtC8VideosUI13TextViewModel)
                    {

                      v54 = v18;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    v136 = v54;
                    MEMORY[0x1EEE9AC00](v53);
                    OUTLINED_FUNCTION_1_27();
                    *(v55 - 16) = &v132;
                    v48 = sub_1E3F577CC;
                    goto LABEL_128;
                  }
                }

                else
                {
                }

                ViewModelKeys.Sports.rawValue.getter(26);
                if (!v12)
                {

                  goto LABEL_138;
                }

                v51 = v49 == v37 && v12 == v50;
                v2 = v130;
                if (v51)
                {
                }

                else
                {
                  v52 = OUTLINED_FUNCTION_55_46(v49);

                  if ((v52 & 1) == 0)
                  {
LABEL_135:

                    goto LABEL_139;
                  }
                }

                if (*v18 == _TtC8VideosUI13TextViewModel)
                {

                  v56 = v18;
                }

                else
                {
                  v56 = 0;
                }

                v136 = v56;
                v12 = &v136;
                sub_1E4148DE0(sub_1E3F99CC4);

                goto LABEL_135;
              case 235:
                v12 = v18;
                v22 = (*(*v18 + 464))(v16, v17);
                if (v22)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = MEMORY[0x1E69E7CC0];
                }

                if (!(v23 >> 62))
                {
                  v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v2)
                  {
                    goto LABEL_20;
                  }

LABEL_137:

LABEL_138:
                  OUTLINED_FUNCTION_201();
LABEL_139:
                  v11 = v126;
                  goto LABEL_91;
                }

                v2 = sub_1E4207384();
                if (!v2)
                {
                  goto LABEL_137;
                }

LABEL_20:
                if (v2 >= 1)
                {
                  v24 = 0;
                  while (1)
                  {
                    if ((v23 & 0xC000000000000001) != 0)
                    {
                      v1 = MEMORY[0x1E6911E60](v24, v23);
                    }

                    else
                    {
                      v1 = *(v23 + 8 * v24 + 32);
                    }

                    v25 = *(v1 + 98);
                    switch(v25)
                    {
                      case 15:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v31 = v1;
                        }

                        else
                        {
                          v31 = 0;
                        }

                        v136 = v31;
                        v32 = sub_1E3F99E20;
                        break;
                      case 16:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v27 = v1;
                        }

                        else
                        {
                          v27 = 0;
                        }

                        v136 = v27;
                        v32 = sub_1E3F99DA8;
                        break;
                      case 40:
                        type metadata accessor for ImageViewModel();
                        v29 = swift_dynamicCastClass();
                        if (v29)
                        {
                        }

                        v136 = v29;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990, &qword_1E42DDF40);
                        v30 = sub_1E3F99E98;
                        v12 = &v136;
                        goto LABEL_51;
                      case 238:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v28 = v1;
                        }

                        else
                        {
                          v28 = 0;
                        }

                        v136 = v28;
                        v32 = sub_1E3F99F10;
                        break;
                      case 237:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v26 = v1;
                        }

                        else
                        {
                          v26 = 0;
                        }

                        v136 = v26;
                        v32 = sub_1E3F99F24;
                        break;
                      default:
                        goto LABEL_52;
                    }

                    v30 = v32;
                    v12 = &v136;
LABEL_51:
                    sub_1E4148DE0(v30);

LABEL_52:

                    if (v2 == ++v24)
                    {

                      OUTLINED_FUNCTION_201();
                      v14 = v123;
                      goto LABEL_139;
                    }
                  }
                }

LABEL_216:
                __break(1u);
LABEL_217:
                v112 = MEMORY[0x1E6911E60](0, v12);
                goto LABEL_195;
            }
          }

LABEL_90:

LABEL_91:
          if (v15 == v128)
          {
            goto LABEL_140;
          }

          break;
      }
    }
  }

LABEL_140:
  OUTLINED_FUNCTION_30_1();
  v60 = (*(v57 + 1376))(v58, v59);
  sub_1E32AE9B0(v60);
  OUTLINED_FUNCTION_11_5();

  if (v11)
  {
    v65 = 0;
LABEL_143:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_30_1();
  v64 = (*(v61 + 1400))(v62, v63);
  sub_1E32AE9B0(v64);
  OUTLINED_FUNCTION_11_5();

  v143 = MEMORY[0x1E69E7CC0];
  v12 = v126;
  v103 = sub_1E32AE9B0(v126);
  v2 = 0;
  v104 = v12 & 0xC000000000000001;
  v105 = v12 & 0xFFFFFFFFFFFFFF8;
  while (v103 != v2)
  {
    if (v104)
    {
      v106 = MEMORY[0x1E6911E60](v2, v126);
      v1 = v106;
    }

    else
    {
      if (v2 >= *(v105 + 16))
      {
        goto LABEL_210;
      }

      v1 = *(v126 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_209;
    }

    v142 = *(v1 + 98);
    v141 = 235;
    sub_1E3742F1C(v106, v107, v108);
    OUTLINED_FUNCTION_168();
    sub_1E4206254();
    OUTLINED_FUNCTION_168();
    sub_1E4206254();
    v12 = v137;
    if (v136 == v139 && v137 == v140)
    {
    }

    else
    {
      v110 = sub_1E42079A4();

      if ((v110 & 1) == 0)
      {

        goto LABEL_188;
      }
    }

    v12 = &v143;
    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
LABEL_188:
    ++v2;
    v14 = v123;
  }

  v12 = v143;
  if (sub_1E32AE9B0(v143) != 1)
  {

    v65 = 0;
    OUTLINED_FUNCTION_201();
    goto LABEL_143;
  }

  sub_1E32AE9B0(v12);
  OUTLINED_FUNCTION_201();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v111)
  {
    goto LABEL_197;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_217;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v112 = *(v12 + 32);

LABEL_195:

    v65 = v112;
    sub_1E39C408C();
    OUTLINED_FUNCTION_38();

    if (v112 && *v112 != _TtC8VideosUI13TextViewModel)
    {
LABEL_197:

      v65 = 0;
    }

LABEL_144:
    v66 = v65;
    v12 = v2;
    sub_1E3F8FA84(v66);
    OUTLINED_FUNCTION_30_1();
    (*(v67 + 2344))(v68, v69);
    if (TVAppFeature.isEnabled.getter(10, v70, v71))
    {
      v72 = 0;
      v136 = v1;
      v73 = v13[2];
      v74 = v1;
      while (v73 != v72)
      {
        if (v72 >= v13[2])
        {
          goto LABEL_205;
        }

        v2 = v13[v72++ + 4];
        if (v2)
        {

          v12 = &v136;
          MEMORY[0x1E6910BF0](v75);
          v76 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v76 >> 1)
          {
            OUTLINED_FUNCTION_35(v76);
            sub_1E42062F4();
          }

          sub_1E4206324();
          v74 = v136;
        }
      }

      v92 = 0;
      v136 = v1;
      v93 = v14[2];
      while (v93 != v92)
      {
        if (v92 >= v14[2])
        {
          goto LABEL_206;
        }

        v2 = v14[v92++ + 4];
        if (v2)
        {

          v12 = &v136;
          MEMORY[0x1E6910BF0](v94);
          OUTLINED_FUNCTION_102_17();
          if (v91)
          {
            OUTLINED_FUNCTION_35(v95);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_24_4();
          sub_1E4206324();
          v1 = v136;
        }
      }

      v96 = v74;
      v97 = v1;
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_30_1();
    if ((*(v77 + 1216))(v78, v79))
    {
      v80 = v133;
      if (v133)
      {
        static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
        OUTLINED_FUNCTION_8();
        (*(v81 + 328))(v82, v83);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;
      v85 = v132;
      *(inited + 32) = v80;
      *(inited + 40) = v85;
      v86 = *(*v2 + 1664);

      v12 = v2;
      v88 = 0;
      *(inited + 48) = v86(v87);
      v136 = v1;
      while (v88 != 3)
      {
        if (v88 > 2)
        {
          goto LABEL_207;
        }

        v2 = *(inited + 8 * v88++ + 32);
        if (v2)
        {

          v12 = &v136;
          MEMORY[0x1E6910BF0](v89);
          OUTLINED_FUNCTION_102_17();
          if (v91)
          {
            OUTLINED_FUNCTION_35(v90);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_24_4();
          sub_1E4206324();
          v1 = v136;
        }
      }

      swift_setDeallocating();
      sub_1E3CAF5C0();

      v97 = sub_1E3AF46D0();
      v96 = v1;
LABEL_174:
      sub_1E3F8E734(v96, v97, 1);
    }

    else
    {

      v98 = v133;
      if (v133)
      {
        v99 = v132;
        if (v132)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_1E429DCC0;
          *(v100 + 32) = v98;
          *(v100 + 40) = v99;
          swift_retain_n();
          swift_retain_n();
          sub_1E3AF46D0();
          v101 = OUTLINED_FUNCTION_20_2();
          sub_1E3F8E734(v101, v102, 1);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          OUTLINED_FUNCTION_5_10();
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1E4298880;
          *(v117 + 32) = v98;
          swift_retain_n();
          sub_1E3AF46D0();
          v118 = OUTLINED_FUNCTION_20_2();
          sub_1E3F8E734(v118, v119, 1);
        }
      }

      else
      {
        OUTLINED_FUNCTION_30_1();
        if (!(*(v113 + 1328))(v114, v115))
        {
          goto LABEL_203;
        }

        sub_1E3F8E734(v116, 0, 0);
        sub_1E3F8EF90(0);
      }
    }

LABEL_203:

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F9577C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F95854()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1616))();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  while (1)
  {
    if (v4 == v3)
    {
      v5 = 3;
LABEL_7:

      return v5;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + v3++ + 32);
    result = OUTLINED_FUNCTION_189_0(v5);
    if (result)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3F958F0(uint64_t a1)
{
  if (a1 < 0)
  {
    sub_1E4205044();
  }

  else
  {
    v1 = sub_1E42056A4();
    sub_1E4205044();
  }
}

void sub_1E3F95964()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_247();
  sub_1E4205834();
  OUTLINED_FUNCTION_8_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v9 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  if ((v3 & 0x8000000000000000) != 0)
  {
    sub_1E376DBD0();
    OUTLINED_FUNCTION_8();
    v18 = *(v17 + 200);

    v20 = v18(v19);

    sub_1E4205854();

    sub_1E376D170();
    (*(v7 + 8))(v1, v0);
  }

  else
  {
    type metadata accessor for SportsRunningClockViewModel(0);
    (*(v11 + 16))(v15, v5, v9);

    v16 = v3;
    sub_1E3F95B54();
    sub_1E4205304();
  }

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95B54()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_247();
  sub_1E4205914();
  OUTLINED_FUNCTION_8_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v8 = *(v0 + qword_1ECF71938);
  v9 = v2;
  v8();

  v10 = sub_1E42053A4();

  OUTLINED_FUNCTION_77();
  v11();
  sub_1E4205924();

  (*(v6 + 8))(v4, v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95C80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_118();
  v6 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if ((v1 & 0x8000000000000000) != 0)
  {
    type metadata accessor for TextViewModel();
    sub_1E3F95964();
    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v14;
    v21[1] = v15;

    v16 = sub_1E3C27638(4, v21, v5, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = v16;
    v21[0] = MEMORY[0x1E69E7CC0];

    if (*(inited + 32))
    {

      MEMORY[0x1E6910BF0](v18);
      OUTLINED_FUNCTION_18_63();
      if (v20)
      {
        OUTLINED_FUNCTION_35(v19);
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    swift_setDeallocating();
    sub_1E3CAF5C0();
    sub_1E3AF46D0();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    type metadata accessor for SportsRunningClockViewModel(0);
    (*(v8 + 16))(v12, v3, v6);

    v13 = v1;
    sub_1E3F95B54();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95EB0(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = sub_1E4205054();
  }

  else
  {
    v1 = sub_1E42056A4();
    v2 = sub_1E4205054();
  }

  v3 = sub_1E4205684();

  v4 = sub_1E4205294();
  sub_1E4205514();
}

BOOL sub_1E3F95F4C()
{
  OUTLINED_FUNCTION_106();
  v2 = sub_1E4205074();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  if (v0 < 0 || !sub_1E42056C4())
  {
    return 0;
  }

  else
  {
    v6 = (*(v4 + 104))(v1, *MEMORY[0x1E69D3A28], v2);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_1_27();
    *(v7 - 16) = v1;
    OUTLINED_FUNCTION_89_16();
    v12 = sub_1E3F8D46C(v8, v9, v10, v11);

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
  }

  return v12;
}

void sub_1E3F96094()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E4205AF4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_9();
  if (*(v3 + 16) == 2)
  {
    v28 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
    v7 = sub_1E383ACA0(0, v28, &off_1F5D8FCF0);
    v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = v8;
    v27 = *(v5 + 72);
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v5 + 72);
    }

    v26 = *MEMORY[0x1E69D3C88];
    v25 = *(v5 + 104);
    v10 = OUTLINED_FUNCTION_69_2();
    v11(v10);
    v12 = MEMORY[0x1E69D3C90];
    v13 = MEMORY[0x1E69D3C90];
    v14 = MEMORY[0x1E69D3CA0];
    v24 = sub_1E3F8D39C(v8 + v9, v1, MEMORY[0x1E69D3C90], &qword_1ECF3D498, MEMORY[0x1E69D3C90], MEMORY[0x1E69D3CA0]);
    v15 = *(v5 + 8);
    v16 = OUTLINED_FUNCTION_74();
    v15(v16);
    if (sub_1E383ACA0(0, v28, &off_1F5D8FCF0))
    {
      v17 = v27;
    }

    else
    {
      v17 = 0;
    }

    v25(v1, v26, v0);
    v18 = sub_1E3F8D39C(v23 + v17, v1, v12, &qword_1ECF3D498, v13, v14);
    v19 = OUTLINED_FUNCTION_74();
    v15(v19);
    sub_1E3F8E9D0(v24 & 1, v18 & 1);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3F8E9D0(v20, v21);
  }
}

void sub_1E3F962DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v101 = v6;
  OUTLINED_FUNCTION_138();
  v109 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v99 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v98 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E4205914();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v102 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v96 - v23;
  v25 = v3;
  v26 = sub_1E42056A4();
  sub_1E4205044();

  sub_1E3F90580(v24);
  OUTLINED_FUNCTION_9_2();
  v28 = (*(v27 + 1664))();
  v100 = v8;
  if (v28)
  {
    sub_1E3C27024();
  }

  type metadata accessor for SportsRunningClockViewModel(0);
  sub_1E3F96B98();
  v108 = v25;
  sub_1E3F95B54();
  v110 = v29;
  OUTLINED_FUNCTION_9_2();
  v31 = v30 + 2216;
  v32 = *(v30 + 2216);
  v32();
  v33 = *MEMORY[0x1E69D3B90];
  v34 = *(v17 + 104);
  v35 = v102;
  v106 = v17 + 104;
  v34(v21, v33, v102);
  OUTLINED_FUNCTION_0_305();
  v36 = OUTLINED_FUNCTION_17_11();
  v42 = sub_1E3F8D39C(v36, v37, v38, v39, v40, v41);
  v43 = *(v17 + 8);
  v44 = OUTLINED_FUNCTION_123_1();
  v43(v44);
  v45 = OUTLINED_FUNCTION_102_1();
  v43(v45);
  v107 = v32;
  v104 = v43;
  v105 = v34;
  v103 = v17 + 8;
  if (v42)
  {
    OUTLINED_FUNCTION_111();
    if ((*(v46 + 1328))())
    {

      sub_1E3F8E734(v47, 0, 0);
    }
  }

  else
  {

    v48 = sub_1E4205304();
    v97 = v31;
    if (v48 || v49 != 0xE000000000000000)
    {
      v50 = sub_1E42079A4();

      if ((v50 & 1) == 0)
      {
        sub_1E3F8E734(v110, 0, 2);
        v59 = sub_1E3E37F30();
        v60 = v100;
        v61 = v98;
        v62 = v109;
        (*(v100 + 16))(v98, v59, v109);

        v63 = sub_1E41FFC94();
        v64 = sub_1E42067E4();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v111[0] = v99;
          *v65 = 136315138;
          HIDWORD(v96) = v64;
          v66 = sub_1E4205324();
          sub_1E3270FC8(v66, v67, v111);
          OUTLINED_FUNCTION_11_5();

          *(v65 + 4) = v62;
          _os_log_impl(&dword_1E323F000, v63, BYTE4(v96), "SportsCanonicalBannerScoreboardViewModel: Clock updated 🕒: %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v99);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v60 + 8))(v61, v109);
        }

        else
        {

          (*(v60 + 8))(v61, v62);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v51 = v109;
    v52 = sub_1E3E37F30();
    v53 = v99;
    v54 = v100;
    (*(v100 + 16))(v99, v52, v51);
    v55 = sub_1E41FFC94();
    v56 = v51;
    v57 = sub_1E42067E4();
    if (os_log_type_enabled(v55, v57))
    {
      v58 = OUTLINED_FUNCTION_125_0();
      *v58 = 0;
      _os_log_impl(&dword_1E323F000, v55, v57, "SportsCanonicalBannerScoreboardViewModel: Error: RunningClock value is empty! Ignoring latest clock update.", v58, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v54 + 8))(v53, v56);
  }

LABEL_17:
  v68 = v107;
  v107();
  v69 = v105;
  v105(v21, *MEMORY[0x1E69D3B78], v35);
  OUTLINED_FUNCTION_0_305();
  v70 = OUTLINED_FUNCTION_17_11();
  v76 = sub_1E3F8D39C(v70, v71, v72, v73, v74, v75);
  v77 = OUTLINED_FUNCTION_123_1();
  v109 = v1;
  v78 = v104;
  v104(v77);
  v79 = OUTLINED_FUNCTION_17_11();
  v80 = v78(v79);
  if (v76 & 1) != 0 || ((v68)(v80), v69(v21, *MEMORY[0x1E69D3B88], v35), OUTLINED_FUNCTION_0_305(), v83 = sub_1E3F8D39C(v24, v21, v81, v82, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]), (v78)(v21, v35), v84 = OUTLINED_FUNCTION_17_11(), v78(v84), (v83))
  {
    v87 = v109;
    OUTLINED_FUNCTION_3_0(v109 + 272, v111);
    *(v87 + 272) = 0;

    v88 = sub_1E42056A4();
    sub_1E4205024();

    v89 = sub_1E42053B4();

    v90 = sub_1E4205294();

    v91 = v101;
    sub_1E4205514();

    sub_1E3F91C40();

    sub_1E325F7A8(v91, &qword_1ECF2BD98, &qword_1E42E3AB0);
  }

  if (TVAppFeature.isEnabled.getter(10, v85, v86))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v92 + 1208))())
    {
      v93 = 1;
LABEL_27:
      sub_1E3F8F4E0(v93);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_8();
    if ((*(v94 + 1216))())
    {
      v93 = 2;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_8();
    if ((*(v95 + 1200))())
    {
      v93 = 0;
      goto LABEL_27;
    }
  }

LABEL_28:
  sub_1E3FE3B24();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F96B98()
{
  v1 = v0;
  sub_1E42058E4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_9();
  v3 = sub_1E42058B4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E4205904();
  (*(v5 + 104))(v9, *MEMORY[0x1E69D3C20], v3);
  v10 = sub_1E42058C4();
  if (sub_1E3F90CF8(v10, v11) == 2)
  {
    (*(*v1 + 1088))();
  }

  v12 = OUTLINED_FUNCTION_69_2();
  v13(v12);
  return sub_1E42058F4();
}

void sub_1E3F96D60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v79 = v6;
  OUTLINED_FUNCTION_138();
  v86 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v93 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v85 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v96 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v94 = v15 - v14;
  OUTLINED_FUNCTION_138();
  v16 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v92 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  v95 = v3;
  sub_1E4205044();
  v28 = sub_1E3F90580(v27);
  v29 = *(*v1 + 1664);
  v77 = *v1 + 1664;
  v76 = v29;
  v30 = v29(v28);
  v84 = v16;
  if (v30)
  {
    sub_1E3C27024();
  }

  v31 = *(*v1 + 2192);
  v32 = v94;
  v88 = *v1 + 2192;
  v89 = v31;
  v31(v30);
  sub_1E4205BE4();
  v33 = *(v96 + 8);
  v90 = v11;
  v96 += 8;
  v87 = v33;
  v33(v32, v11);
  v34 = v85;
  sub_1E3F96B98();
  OUTLINED_FUNCTION_38_0();
  sub_1E3F95964();
  v78 = v35;
  v37 = v36;

  v38 = *(v93 + 8);
  v93 += 8;
  v39 = v38(v34, v86);
  v40 = *v1;
  v82 = *(*v1 + 2216);
  v83 = v40 + 2216;
  (v82)(v39);
  v41 = *MEMORY[0x1E69D3B90];
  v42 = v92;
  v43 = v92 + 104;
  v44 = v84;
  v91 = *(v92 + 104);
  v91(v21, v41, v84);
  OUTLINED_FUNCTION_0_305();
  v47 = sub_1E3F8D39C(v24, v21, v45, v46, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
  v49 = *(v42 + 8);
  v48 = v42 + 8;
  v50 = OUTLINED_FUNCTION_102_1();
  v49(v50);
  (v49)(v24, v44);

  v80 = v49;
  v81 = v43;
  if (v47)
  {
    if ((*(*v1 + 1328))(v51))
    {

      sub_1E3F8E734(v52, 0, 0);
    }
  }

  else
  {
    v53 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v53 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = v76(v51);
      v92 = v48;
      if (v54)
      {
        v78 = sub_1E3C27024();
      }

      else
      {
        v78 = 0;
      }

      v55 = v94;
      v89(v54);
      sub_1E4205BE4();
      v87(v55, v90);
      v56 = v85;
      sub_1E3F96B98();
      sub_1E3F95C80();
      OUTLINED_FUNCTION_49_4();
      LODWORD(v78) = v57;

      v38(v56, v86);
      v58 = OUTLINED_FUNCTION_63_0();
      sub_1E3F8E734(v58, v59, v78);
    }
  }

  v60 = v82;
  v82();
  v61 = v60;
  v91(v21, *MEMORY[0x1E69D3B78], v44);
  OUTLINED_FUNCTION_0_305();
  LOBYTE(v60) = sub_1E3F8D39C(v24, v21, v62, v63, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
  v64 = OUTLINED_FUNCTION_102_1();
  v65 = v80;
  v80(v64);
  v66 = v65(v24, v44);
  if (v60 & 1) != 0 || (v61(v66), v91(v21, *MEMORY[0x1E69D3B88], v44), OUTLINED_FUNCTION_0_305(), v69 = sub_1E3F8D39C(v24, v21, v67, v68, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]), v70 = OUTLINED_FUNCTION_102_1(), (v65)(v70), v71 = v65(v24, v44), (v69))
  {
    OUTLINED_FUNCTION_3_0((v1 + 34), &v97);
    v1[34] = 0;

    v72 = v95;
    sub_1E4205024();
    v73 = v79;
    sub_1E3F95EB0(v72);
    sub_1E3F91C40();

    v71 = sub_1E325F7A8(v73, &qword_1ECF2BD98, &qword_1E42E3AB0);
  }

  v74 = v94;
  v89(v71);
  sub_1E3FE3F68();
  v87(v74, v90);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F97540()
{
  OUTLINED_FUNCTION_31_1();
  v89 = v0;
  v87 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v81 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_7();
  v86 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v88 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v83 = v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v14 + 104);
  v19(v17 - v16, *MEMORY[0x1E69D3B90], v12);
  OUTLINED_FUNCTION_0_305();
  v20 = OUTLINED_FUNCTION_97_1();
  v26 = sub_1E3F8D39C(v20, v21, v22, v23, v24, v25);
  v27 = *(v14 + 8);
  v28 = OUTLINED_FUNCTION_55_39();
  v27(v28);
  if (v26 & 1) != 0 || (v19(v18, *MEMORY[0x1E69D3B98], v12), OUTLINED_FUNCTION_0_305(), v29 = OUTLINED_FUNCTION_97_1(), v35 = sub_1E3F8D39C(v29, v30, v31, v32, v33, v34), v36 = OUTLINED_FUNCTION_55_39(), v27(v36), (v35))
  {
LABEL_59:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D478, &qword_1E42E17E8);
  v37 = *(v81 + 72);
  v38 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1E4299720;
  v40 = v83;
  v85 = *(*v89 + 2192);
  v85();
  sub_1E4205BC4();
  v84 = *(v88 + 8);
  v84(v40, v86);
  LODWORD(v40) = *MEMORY[0x1E69D3D50];
  v82 = *(v81 + 104);
  v41 = v82(v39 + v38 + v37, *MEMORY[0x1E69D3D50], v87);
  v42 = (*(*v89 + 464))(v41);
  v80 = MEMORY[0x1E69E7CC0];
  v79 = v40;
  if (!v42)
  {

    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v43 = v42;
  v96 = MEMORY[0x1E69E7CC0];
  v44 = sub_1E32AE9B0(v42);
  for (i = 0; v44 != i; ++i)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1E6911E60](i, v43);
    }

    else
    {
      if (i >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_62;
    }

    sub_1E3742F1C(v46, v47, v48);
    sub_1E4206254();
    sub_1E4206254();
    if (v92 == v90 && v95 == v91)
    {
    }

    else
    {
      v50 = OUTLINED_FUNCTION_97_0(v92, v95, v90);

      if ((v50 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    OUTLINED_FUNCTION_13_8();
    sub_1E4207594();
    sub_1E4207554();
  }

  v51 = sub_1E32AE9B0(v96);
  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  while (v51 != v52)
  {
    if ((v96 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v52, v96);
    }

    else
    {
      if (v52 >= *(v96 + 16))
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(v52, 1))
    {
      goto LABEL_64;
    }

    sub_1E3F97E2C();
    v55 = v54;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1E3F999EC(0, v53[2] + 1, 1, v53);
    }

    v57 = v53[2];
    v56 = v53[3];
    if (v57 >= v56 >> 1)
    {
      v58 = OUTLINED_FUNCTION_35(v56);
      v53 = sub_1E3F999EC(v58, v57 + 1, 1, v53);
    }

    v53[2] = v57 + 1;
    v53[v57 + 4] = v55;
    ++v52;
  }

LABEL_34:
  v59 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v61 = v53[2];
  v62 = (v81 + 8);
  while (2)
  {
    if (v61 == v59)
    {
      if (sub_1E32AE9B0(v60) == 2)
      {
        sub_1E3F8E35C(v60);
      }

      else
      {
      }

      OUTLINED_FUNCTION_97_16();
      v70 = 0;
      for (j = MEMORY[0x1E69E7CC0]; ; v80 = j)
      {
        while (1)
        {
          if (v61 == v70)
          {

            if (sub_1E32AE9B0(v80) == 2)
            {
              sub_1E3F8E504(v80);
            }

            else
            {
            }

            goto LABEL_59;
          }

          if (v70 >= v53[2])
          {
            goto LABEL_61;
          }

          v71 = v53[v70 + 4];
          v82(v9, v79, v87);
          if (*(v71 + 16))
          {
            break;
          }

LABEL_52:
          v73 = OUTLINED_FUNCTION_123_1();
          v74(v73);
          ++v70;
        }

        sub_1E3997C14(v9);
        if ((v72 & 1) == 0)
        {

          goto LABEL_52;
        }

        v75 = *v62;

        v76 = OUTLINED_FUNCTION_123_1();
        (v75)(v76);

        MEMORY[0x1E6910BF0](v77);
        OUTLINED_FUNCTION_18_63();
        if (v69)
        {
          OUTLINED_FUNCTION_35(v78);
          sub_1E42062F4();
        }

        ++v70;
        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
      }
    }

    if (v59 < v53[2])
    {
      v63 = v53[v59 + 4];

      (v85)(v64);
      sub_1E4205BC4();
      v84(v9, v86);
      if (*(v63 + 16) && (sub_1E3997C14(v1), (v65 & 1) != 0))
      {
        v66 = *v62;

        v66(v1, v87);

        MEMORY[0x1E6910BF0](v67);
        OUTLINED_FUNCTION_18_63();
        if (v69)
        {
          OUTLINED_FUNCTION_35(v68);
          sub_1E42062F4();
        }

        ++v59;
        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
        v60 = v93;
      }

      else
      {

        (*v62)(v1, v87);
        ++v59;
      }

      continue;
    }

    break;
  }

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
}

void sub_1E3F97E2C()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v69 = v8;
  OUTLINED_FUNCTION_138();
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_24_100();
  sub_1E3F9C2EC(v9, v10);
  v11 = sub_1E4205CB4();
  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 552))();
  if (!v13)
  {
    v76 = 0u;
    v77 = 0u;
    goto LABEL_18;
  }

  v75[3] = &type metadata for ViewModelKeys.Sports;
  v75[4] = &off_1F5D7BC68;
  LOBYTE(v75[0]) = 7;
  sub_1E3F9F164(v75, v13, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v75);
  if (!*(&v77 + 1))
  {
LABEL_18:
    sub_1E325F7A8(&v76, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v64 = v5;
    v15 = v75[0];
    v14 = v75[1];
    v16 = 0;
    v72 = sub_1E32AE9B0(v2);
    v74 = v2 & 0xC000000000000001;
    v70 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v72 == v16)
      {

        goto LABEL_19;
      }

      if (v74)
      {
        v17 = MEMORY[0x1E6911E60](v16, v2);
      }

      else
      {
        if (v16 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v17 = *(v2 + 8 * v16 + 32);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        sub_1E4207A74();
        __break(1u);
        return;
      }

      v19 = sub_1E4205964();
      v20 = sub_1E42054D4();
      v22 = v21;

      if (v20 == v15 && v22 == v14)
      {
        v68 = v2;

        goto LABEL_23;
      }

      v24 = sub_1E42079A4();

      if (v24)
      {
        break;
      }

      ++v16;
    }

    v68 = v2;
LABEL_23:
    OUTLINED_FUNCTION_97_16();

    v25 = *(v66 + 16);
    v26 = v69;
    if (v25)
    {
      v71 = *(v64 + 16);
      v27 = v66 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v73 = *(v64 + 72);
      v65 = v64 + 16;
      v67 = (v65 - 8);
      v63 = v18;
      do
      {
        v28 = OUTLINED_FUNCTION_11_6();
        v71(v28);
        (v71)(v20, v26, v3);
        if (v74)
        {
          v29 = v18;
          MEMORY[0x1E6911E60](0, v68);
        }

        else
        {
          if (!*(v70 + 16))
          {
            goto LABEL_47;
          }

          v30 = *(v68 + 32);
          v31 = v18;
          v32 = v30;
        }

        OUTLINED_FUNCTION_118();
        sub_1E4205A54();
        sub_1E4206F64();

        sub_1E3F98E04();
        if (v33)
        {
          v34 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v20;
          v20 = isUniquelyReferenced_nonNull_native;
          v75[0] = v11;
          v37 = sub_1E3997C14(v36);
          if (__OFADD__(v11[2], (v38 & 1) == 0))
          {
            goto LABEL_46;
          }

          v39 = v37;
          v40 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D490, &unk_1E42E1800);
          if (sub_1E4207644())
          {
            OUTLINED_FUNCTION_97_16();
            v41 = sub_1E3997C14(v20);
            if ((v40 & 1) != (v42 & 1))
            {
              goto LABEL_49;
            }

            v39 = v41;
          }

          else
          {
            OUTLINED_FUNCTION_97_16();
          }

          v11 = v75[0];
          if (v40)
          {
            *(*(v75[0] + 56) + 8 * v39) = v34;

            v15 = (v65 - 8);
            v51 = *v67;
            v52 = OUTLINED_FUNCTION_123_1();
            v51(v52);
            v26 = v69;
            v53 = OUTLINED_FUNCTION_125();
            v51(v53);
          }

          else
          {
            *(v75[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
            (v71)(v11[6] + v39 * v73, v20, v3);
            *(v11[7] + 8 * v39) = v34;
            v15 = (v65 - 8);
            v54 = *v67;
            v55 = OUTLINED_FUNCTION_123_1();
            v54(v55);
            v26 = v69;
            v56 = OUTLINED_FUNCTION_125();
            v54(v56);
            v57 = v11[2];
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_48;
            }

            v11[2] = v59;
          }
        }

        else
        {
          v43 = sub_1E3997C14(v20);
          if (v44)
          {
            v45 = v43;
            swift_isUniquelyReferenced_nonNull_native();
            v75[0] = v11;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D490, &unk_1E42E1800);
            v26 = v69;
            sub_1E4207644();
            v46 = v75[0];
            v47 = *(v75[0] + 48) + v45 * v73;
            v15 = (v65 - 8);
            v48 = *v67;
            (*v67)(v47, v3);

            sub_1E4207664();
            v49 = OUTLINED_FUNCTION_123_1();
            v48(v49);
            v50 = OUTLINED_FUNCTION_125();
            v48(v50);
            v11 = v46;
            v18 = v63;
          }

          else
          {
            v15 = (v65 - 8);
            v60 = *v67;
            v61 = OUTLINED_FUNCTION_123_1();
            v60(v61);
            v62 = OUTLINED_FUNCTION_125();
            v60(v62);
          }
        }

        v27 += v73;
        --v25;
      }

      while (v25);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F984B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v58 = v3;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v57 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  v18 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_36();
  v26 = (*(v25 + 552))();
  if (!v26)
  {
    v60 = 0u;
    v61 = 0u;
    goto LABEL_8;
  }

  v56 = v0;
  v59[3] = &type metadata for ViewModelKeys.Sports;
  v59[4] = &off_1F5D7BC68;
  LOBYTE(v59[0]) = 7;
  sub_1E3F9F164(v59, v26, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v59);
  if (!*(&v61 + 1))
  {
LABEL_8:
    sub_1E325F7A8(&v60, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_32_13(v59, &v60, v27, MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v54 = v20;
  v55 = v24;
  v29 = v59[0];
  v28 = v59[1];
  sub_1E379D7E4(v2, v17, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v30 = sub_1E4205784();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v30);
  v53[1] = v18;
  if (EnumTagSinglePayload == 1)
  {
LABEL_11:
    OUTLINED_FUNCTION_8();
    (*(v36 + 2192))();
    sub_1E4205BC4();
    (*(v57 + 8))(v9, v4);
    goto LABEL_12;
  }

  sub_1E379D7E4(v17, v14, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v32 = OUTLINED_FUNCTION_32_0();
  if (v33(v32) != *MEMORY[0x1E69D3BF8])
  {
    v34 = OUTLINED_FUNCTION_32_0();
    v35(v34);
    goto LABEL_11;
  }

  (*(v54 + 104))(v55, *MEMORY[0x1E69D3D50], v18);
LABEL_12:
  sub_1E325F7A8(v17, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v37 = v58;
  v38 = sub_1E32AE9B0(v58);
  v39 = 0;
  v40 = v37 & 0xC000000000000001;
  v41 = v37 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v38 == v39)
    {

      goto LABEL_29;
    }

    if (v40)
    {
      v42 = MEMORY[0x1E6911E60](v39, v58);
    }

    else
    {
      if (v39 >= *(v41 + 16))
      {
        goto LABEL_31;
      }

      v42 = *(v58 + 8 * v39 + 32);
    }

    v43 = v42;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v44 = sub_1E4205964();
    v45 = sub_1E42054D4();
    v47 = v46;

    if (v45 == v29 && v47 == v28)
    {

LABEL_27:

      v50 = sub_1E4205984();

      if (v50)
      {
        sub_1E4205AE4();
      }

LABEL_29:
      v51 = OUTLINED_FUNCTION_39_3();
      v52(v51);
      goto LABEL_9;
    }

    v49 = sub_1E42079A4();

    if (v49)
    {
      goto LABEL_27;
    }

    ++v39;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1E3F989B4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0, &qword_1E42E1810);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40[-1] - v8;
  v10 = sub_1E4205AF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_36();
  v16 = (*(v15 + 1160))();
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);

    v40[3] = &type metadata for ViewModelKeys.Sports;
    v40[4] = &off_1F5D7BC68;
    LOBYTE(v40[0]) = 7;
    sub_1E3F9F164(v40, v17, MEMORY[0x1E69E7CA0] + 8);

    v18 = __swift_destroy_boxed_opaque_existential_1(v40);
    if (*(&v42 + 1))
    {
      OUTLINED_FUNCTION_111_11(v18, v19, v20, MEMORY[0x1E69E6158]);
      goto LABEL_6;
    }
  }

  else
  {

    v41 = 0u;
    v42 = 0u;
  }

  sub_1E325F7A8(&v41, &unk_1ECF296E0, &unk_1E4298030);
LABEL_6:

  v40[0] = sub_1E3EA9868(v21);
  OUTLINED_FUNCTION_89_16();
  sub_1E3F9A5C4(v22, v23, v24);
  if (!v4)
  {

    v4 = v40[0];
    if (!sub_1E32AE9B0(v40[0]))
    {

      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      goto LABEL_14;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](0, v4);
      goto LABEL_11;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v4 + 32);
LABEL_11:
      v26 = v25;
      sub_1E4205974();

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v28 = *(v12 + 32);
        v28(v1, v9, v10);
        sub_1E37CB21C(v4);
        OUTLINED_FUNCTION_38();

        if (v26)
        {
          sub_1E4205974();

          if (__swift_getEnumTagSinglePayload(v0, 1, v10) != 1)
          {
            v28(v2, v0, v10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAC0, &qword_1E42E1818);
            v33 = *(v12 + 72);
            v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1E4299720;
            v36 = v35 + v34;
            (*(v12 + 16))(v36, v1, v10);
            v28(v36 + v33, v2, v10);
            v37 = OUTLINED_FUNCTION_38_0();
            v38(v37);
            goto LABEL_21;
          }

          v29 = OUTLINED_FUNCTION_38_0();
          v30(v29);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_38_0();
          v32(v31);
          __swift_storeEnumTagSinglePayload(v0, 1, 1, v10);
        }

        v27 = v0;
LABEL_20:
        sub_1E325F7A8(v27, &qword_1ECF3DAB0, &qword_1E42E1810);
LABEL_21:
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_14:
      v27 = v9;
      goto LABEL_20;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E3F98E04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E3F9936C();
  v55 = v8;
  if (v8 == 263)
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_22_6();
    v9(v7);
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_125_0();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, v11, "Unsupported StatisticName", v12, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v13 = OUTLINED_FUNCTION_57();
    v14(v13);
    goto LABEL_38;
  }

  v15 = (*(*v3 + 464))();
  if (!v15)
  {
LABEL_38:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v15;
  v53 = v1;
  v54 = v3;
  v17 = sub_1E32AE9B0(v15);
  v18 = 0;
  while (1)
  {
    if (v17 == v18)
    {

      goto LABEL_38;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6911E60](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    sub_1E3742F1C(v19, v20, v21);
    sub_1E4206254();
    sub_1E4206254();
    if (v56 == v58 && v57 == v59)
    {
      break;
    }

    v23 = OUTLINED_FUNCTION_97_0(v56, v57, v58);

    if (v23)
    {
      goto LABEL_23;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_40;
    }
  }

LABEL_23:

  v25 = sub_1E4205984();
  if (!v25)
  {
LABEL_37:

    MEMORY[0x1EEE9AC00](v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
    sub_1E4148DE0(sub_1E3F9BDA4);
    goto LABEL_38;
  }

  v26 = v25;
  sub_1E4205AE4();

  v27 = [objc_opt_self() sharedInstance];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1E4206694();
    v30 = sub_1E3D76818(v29, 0x6C616D69636564, 0xE700000000000000, 48, 0xE100000000000000, 12333, 0xE200000000000000, 0, v28);
    v32 = v31;

    if (sub_1E373F6E0(v55, 238, v33, v34, v35, v36))
    {
      sub_1E414A784(40, 0xE100000000000000, v30, v32);
      v38 = v37;

      MEMORY[0x1E69109E0](41, 0xE100000000000000);

      v32 = v38;
    }

    if (v32)
    {
      sub_1E384EE08(v55);
      v40 = v39;
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      ViewModelKeys.rawValue.getter(14);
      *(inited + 32) = v44;
      *(inited + 40) = v45;
      v58 = 0;
      v59 = 0xE000000000000000;
      v46 = (v53 & 1) != 0 ? 46 : 0;
      v47 = (v53 & 1) != 0 ? 0xE100000000000000 : 0xE000000000000000;
      MEMORY[0x1E69109E0](v46, v47);

      v48 = OUTLINED_FUNCTION_123_1();
      MEMORY[0x1E69109E0](v48);
      v49 = v59;
      *(inited + 48) = v58;
      *(inited + 56) = v49;
      v50 = sub_1E4205CB4();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
      v58 = v50;
      v51 = sub_1E3A7CD30(v40, v42, &v58, v54);

      __swift_destroy_boxed_opaque_existential_1(&v58);
      if (v51)
      {
        if (*v51 != _TtC8VideosUI13TextViewModel)
        {
        }
      }
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

void sub_1E3F9936C()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v2;
  v27 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v6 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(v8 + 16);
  v15(&v26 - v13, v26, v6, v12);
  (v15)(v0, v14, v6);
  OUTLINED_FUNCTION_36();
  (*(v16 + 2192))();
  sub_1E4205BC4();
  (*(v4 + 8))(v1, v27);
  OUTLINED_FUNCTION_24_100();
  sub_1E3F9C2EC(v17, v18);
  OUTLINED_FUNCTION_24_4();
  v19 = sub_1E4205E84();
  v20 = *(v8 + 8);
  v21 = OUTLINED_FUNCTION_38_0();
  v20(v21);
  v22 = OUTLINED_FUNCTION_55_39();
  v20(v22);
  if ((v19 & 1) != 0 || (v23 = OUTLINED_FUNCTION_13_8(), v24(v23) != *MEMORY[0x1E69D3D50]))
  {
    v25 = OUTLINED_FUNCTION_13_8();
    v20(v25);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F995F0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_247();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_7();
  sub_1E3F96D60();
  sub_1E4205024();
  sub_1E4205044();
  v4 = sub_1E376DA04();
  OUTLINED_FUNCTION_5_0(v4, &v24);
  OUTLINED_FUNCTION_168();
  sub_1E3F97540();

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_39_3();
  v5(v6);
  sub_1E4205044();
  v7 = *(v1 + 104);
  v8 = OUTLINED_FUNCTION_69_2();
  v7(v8);
  OUTLINED_FUNCTION_0_305();
  v13 = OUTLINED_FUNCTION_116_13(v9, v10, v11, v12, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
  v14 = OUTLINED_FUNCTION_74();
  v5(v14);
  v15 = OUTLINED_FUNCTION_39_3();
  v5(v15);
  if (v13 & 1) != 0 || (sub_1E4205044(), v16 = OUTLINED_FUNCTION_69_2(), v7(v16), OUTLINED_FUNCTION_0_305(), v21 = OUTLINED_FUNCTION_116_13(v17, v18, v19, v20, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]), v22 = OUTLINED_FUNCTION_74(), v5(v22), v23 = OUTLINED_FUNCTION_39_3(), v5(v23), (v21))
  {
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F99820@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 552))())
  {
    OUTLINED_FUNCTION_8();
    (*(v3 + 624))();
    v4 = OUTLINED_FUNCTION_38();
    sub_1E3744600(v4);

    v5 = OUTLINED_FUNCTION_63_0();
    sub_1E3C5F7FC(v5, v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);

  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v9);
}

uint64_t sub_1E3F998F4(uint64_t a1)
{
  v2 = (*(*a1 + 464))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  (*(*v1 + 2384))(v3, 0);

  return 1;
}

void *sub_1E3F999EC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D480, &qword_1E42E17F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D488, &qword_1E42E17F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3F99B28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (*Strong + 1352);
    v6 = *v5;
    v7 = (*v5)();
    sub_1E32AE9B0(v7);
    OUTLINED_FUNCTION_11_5();

    if (v3 == 2)
    {
      v9 = (v6)(v8);
      v10 = sub_1E32AE9B0(v9);
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          goto LABEL_15;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v17 = OUTLINED_FUNCTION_39_3();
          MEMORY[0x1E6911E60](v17);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        type metadata accessor for LayoutGrid();
        sub_1E3A256EC();
        OUTLINED_FUNCTION_30_1();
        v13 = (*(v12 + 1016))();
        v15 = sub_1E41494A8(v13, v14);

        if (v15)
        {
          v16 = OUTLINED_FUNCTION_73_6();
          sub_1E3F8F2E0(v16);
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_73_6();
      sub_1E3F8F2E0(v18);
LABEL_15:
    }
  }
}

double sub_1E3F99CC4()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2096))())
  {

    sub_1E3F8EDE8(v2);
    OUTLINED_FUNCTION_8();
    if ((*(v3 + 1664))())
    {
      static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
      OUTLINED_FUNCTION_8();
      (*(v4 + 328))();
    }
  }

  return result;
}

uint64_t sub_1E3F99DA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_80(v2 + 304, a2);

  MEMORY[0x1E6910BF0](v3);
  sub_1E38C5A18(*((*(v2 + 304) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

uint64_t sub_1E3F99E20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_80(v2 + 296, a2);

  MEMORY[0x1E6910BF0](v3);
  sub_1E38C5A18(*((*(v2 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

uint64_t sub_1E3F99E98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_80(v2 + 288, a2);

  MEMORY[0x1E6910BF0](v3);
  sub_1E38C5A18(*((*(v2 + 288) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

double sub_1E3F99F38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  v2 = sub_1E4200664();
  v4 = v3;
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1E4206324();
  v2(&v6, 0);

  return result;
}

uint64_t sub_1E3F99FF4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E3F9C2EC(a4, a5);
  OUTLINED_FUNCTION_123_1();
  return sub_1E4205E84() & 1;
}

uint64_t type metadata accessor for SportsCanonicalBannerScoreboardViewModel(uint64_t a1)
{
  result = qword_1EE2904E0;
  if (!qword_1EE2904E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3F9A134(uint64_t a1)
{
  sub_1E3928D10(319, &qword_1EE289F98, &qword_1ECF2B6E8, &qword_1E42A0FA0);
  if (v1 <= 0x3F)
  {
    sub_1E3F9A4BC(319, &qword_1EE28A048, &type metadata for SportsClockState);
    if (v2 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289F58, &qword_1ECF3D440, &qword_1E42E12F8);
      if (v3 <= 0x3F)
      {
        sub_1E3928D10(319, &qword_1EE289F80, &qword_1ECF2B4C0, &unk_1E42A0718);
        if (v4 <= 0x3F)
        {
          sub_1E3928D10(319, &qword_1EE28A068, &qword_1ECF29088, &qword_1E42B7E40);
          if (v5 <= 0x3F)
          {
            sub_1E3F9A4BC(319, &qword_1EE289F50, MEMORY[0x1E69E6370]);
            if (v6 <= 0x3F)
            {
              sub_1E3928D10(319, &qword_1EE28A038, &qword_1ECF3D458, &qword_1E42E14D0);
              if (v7 <= 0x3F)
              {
                sub_1E4205BF4();
                if (v8 <= 0x3F)
                {
                  sub_1E4205754();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_1E3F9A4BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E3F9A514(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void *sub_1E3F9A568(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      return OUTLINED_FUNCTION_25_9(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1E3F9A5C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E3F9A6E4(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3F9A678(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3F9C0F0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E3F9A81C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3F9A6E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3EA8B74(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E3F9AAC4(v12, v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3F9A81C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3F9B33C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3F9AA68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F9A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
    while (2)
    {
      v25 = v8;
      v26 = a3;
      v10 = *(v27 + 8 * a3);
      v24 = v9;
      while (1)
      {
        v11 = *v8;
        v12 = v10;
        v13 = v11;
        v14 = sub_1E4205964();
        v15 = sub_1E42054D4();
        v17 = v16;

        if (!a6)
        {
          break;
        }

        if (v15 == a5 && v17 == a6)
        {
        }

        else
        {
          v19 = sub_1E42079A4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (!v27)
        {
          __break(1u);
          return result;
        }

        v21 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v21;
        v8 -= 8;
        if (__CFADD__(v9++, 1))
        {
          goto LABEL_17;
        }
      }

LABEL_17:
      a3 = v26 + 1;
      v8 = v25 + 8;
      v9 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1E3F9AA68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F9AAC4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_119:
      v104 = v9 + 16;
      v105 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        v106 = v105 - 2;
        if (v105 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v108 = &v9[16 * v105];
        v109 = *v108;
        v9 = v104;
        v129 = v105;
        v110 = &v104[16 * v105];
        v111 = *(v110 + 1);
        v112 = (v107 + 8 * *v108);
        v113 = (v107 + 8 * *v110);
        v114 = (v107 + 8 * v111);

        sub_1E3F9B908(v112, v113, v114, v125, a5, a6);
        if (v131)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_145;
        }

        if (v106 >= *v9)
        {
          goto LABEL_146;
        }

        v104 = v9;
        *v108 = v109;
        *(v108 + 1) = v111;
        if (*v9 < v129)
        {
          goto LABEL_147;
        }

        v105 = *v9 - 1;
        memmove(v110, v110 + 16, 16 * (*v9 - v129));
        *v9 = v105;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_154:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_119;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v132 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v121 = v9;
      v12 = *a3;
      v13 = a6;
      v14 = v8 + 1;
      v118 = v8;
      v15 = *(*a3 + 8 * v8);
      v9 = *(*a3 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v126 = 1;
        }

        else
        {
          v126 = sub_1E42079A4();
        }
      }

      else
      {
        v126 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v118 + 16);
      v125 = v7;
      for (j = 8 * v118 + 8; ; j += 8)
      {
        a6 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v24 = *(v22 - 1);
        v25 = *v22;
        v9 = v24;
        v26 = sub_1E4205964();
        v27 = sub_1E42054D4();
        v29 = v28;

        if (v132)
        {
          if (v27 == a5 && v29 == v132)
          {

            v7 = v125;
            if ((v126 & 1) == 0)
            {
              v11 = a6 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v31 = sub_1E42079A4() & 1;

            v7 = v125;
            if ((v126 & 1) != v31)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v125;
          if (v126)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v126 & 1) == 0)
      {
LABEL_36:
        v9 = v121;
        a6 = v132;
        goto LABEL_37;
      }

LABEL_26:
      v11 = a6 + 1;
      v32 = v118;
      if (a6 + 1 < v118)
      {
        goto LABEL_151;
      }

      if (v118 >= v11)
      {
        v9 = v121;
        a6 = v132;
        v10 = v118;
        goto LABEL_38;
      }

      v33 = a6;
      v9 = v121;
      v34 = 8 * v118;
      a6 = v132;
      do
      {
        if (v32 != v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_158;
          }

          v36 = *(v35 + v34);
          *(v35 + v34) = *(v35 + j);
          *(v35 + j) = v36;
        }

        ++v32;
        j -= 8;
        v34 += 8;
      }

      while (v32 < v33--);
LABEL_37:
      v10 = v118;
    }

LABEL_38:
    v38 = a3[1];
    if (v11 < v38)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_150;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_149;
    }

    v128 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1E37FFF70(0, *(v9 + 2) + 1, 1, v9);
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v9 = sub_1E37FFF70((v57 > 1), v58 + 1, 1, v9);
    }

    *(v9 + 2) = v59;
    v60 = v9 + 32;
    v61 = &v9[16 * v58 + 32];
    *v61 = v10;
    *(v61 + 1) = v128;
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        v63 = &v60[16 * v59 - 16];
        v64 = &v9[16 * v59];
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v65 = *(v9 + 4);
          v66 = *(v9 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_84:
          if (v68)
          {
            goto LABEL_136;
          }

          v80 = *v64;
          v79 = *(v64 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_139;
          }

          v84 = *(v63 + 1);
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_144;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v59 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v59 < 2)
        {
          goto LABEL_138;
        }

        v87 = *v64;
        v86 = *(v64 + 1);
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_99:
        if (v83)
        {
          goto LABEL_141;
        }

        v89 = *v63;
        v88 = *(v63 + 1);
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_143;
        }

        if (v90 < v82)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v62 - 1 >= v59)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
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
          goto LABEL_153;
        }

        v94 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v95 = &v60[16 * v62 - 16];
        v96 = *v95;
        v97 = v62;
        v98 = &v60[16 * v62];
        v99 = *(v98 + 1);
        v100 = (v94 + 8 * *v95);
        v101 = (v94 + 8 * *v98);
        v102 = (v94 + 8 * v99);
        a6 = v132;

        sub_1E3F9B908(v100, v101, v102, v125, a5, v132);
        if (v131)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_131;
        }

        v103 = *(v9 + 2);
        if (v97 > v103)
        {
          goto LABEL_132;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v103)
        {
          goto LABEL_133;
        }

        v59 = v103 - 1;
        memmove(v98, v98 + 16, 16 * (v103 - 1 - v97));
        *(v9 + 2) = v103 - 1;
        v60 = v9 + 32;
        a6 = v132;
        if (v103 <= 2)
        {
          goto LABEL_113;
        }
      }

      v69 = &v60[16 * v59];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_134;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_135;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_137;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_140;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_148;
        }

        if (v67 < v93)
        {
          v62 = v59 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v8 = v128;
    v7 = a3[1];
    if (v128 >= v7)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_152;
  }

  if (v10 + a4 >= v38)
  {
    v39 = a3[1];
  }

  else
  {
    v39 = v10 + a4;
  }

  if (v39 < v10)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v11 == v39)
  {
    goto LABEL_64;
  }

  v120 = v39;
  v122 = v9;
  v40 = v11;
  v41 = *a3;
  v42 = *a3 + 8 * v40 - 8;
  v119 = v10;
  v43 = v10 - v40;
LABEL_48:
  v125 = v42;
  v127 = v40;
  v44 = *(v41 + 8 * v40);
  v124 = v43;
  v45 = v42;
  while (1)
  {
    v46 = *v45;
    v47 = v44;
    v48 = v46;
    v49 = sub_1E4205964();
    v50 = sub_1E42054D4();
    v52 = v51;

    if (!a6)
    {

LABEL_62:
      v40 = v127 + 1;
      v42 = (v125 + 1);
      v43 = v124 - 1;
      if (v127 + 1 == v120)
      {
        v11 = v120;
        v9 = v122;
        v10 = v119;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v50 == a5 && v52 == a6)
    {
    }

    else
    {
      v54 = sub_1E42079A4();

      if ((v54 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v41)
    {
      break;
    }

    v55 = *v45;
    v44 = *(v45 + 8);
    *v45 = v44;
    *(v45 + 8) = v55;
    v45 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_62;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:

  __break(1u);
LABEL_158:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E3F9B33C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v72 = result;
  v76 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v71 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return result;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v73 = v8;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = sub_1E37FFF70((v28 > 1), v29 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v30;
      v31 = v7 + 32;
      v32 = (v7 + 32 + 16 * v29);
      *v32 = v6;
      v32[1] = v8;
      v74 = *v72;
      if (!*v72)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = (v31 + 16 * (v30 - 1));
          v35 = (v7 + 16 * v30);
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = *(v7 + 32);
            v37 = *(v7 + 40);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = (v31 + 16 * (v33 - 1));
          v66 = *v65;
          v67 = (v31 + 16 * v33);
          v68 = v67[1];
          result = sub_1E3F9BC10((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v74);
          if (v4)
          {
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = *(v7 + 16);
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          result = memmove((v31 + 16 * v33), v67 + 2, 16 * (v70 - 1 - v33));
          *(v69 + 16) = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = v31 + 16 * v30;
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v73;
      a4 = v71;
      if (v73 >= v5)
      {
        v76 = v7;
        break;
      }
    }
  }

  if (!*v72)
  {
    goto LABEL_115;
  }

  sub_1E3F9B7DC(&v76, *v72, a3);
}

uint64_t sub_1E3F9B7DC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3F9BC10((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3F9B908(void **__src, id *__dst, id *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = a3 - __dst;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[v10];
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v27 = v9;
        goto LABEL_53;
      }

      v47 = v8;
      v15 = v6;
      v16 = *v6;
      v17 = *v8;
      v18 = v16;
      v19 = sub_1E4205964();
      v20 = sub_1E42054D4();
      v22 = v21;

      if (!a6)
      {
        break;
      }

      if (v20 == a5 && v22 == a6)
      {
      }

      else
      {
        v24 = sub_1E42079A4();

        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v25 = v47;
      v8 = v47 + 1;
      v6 = v15;
      if (v9 != v47)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v9;
    }

LABEL_20:
    v25 = v15;
    v6 = v15 + 1;
    v8 = v47;
    if (v9 == v15)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v9 = *v25;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[v11];
  v44 = v6;
  v45 = v9;
LABEL_32:
  v27 = v8--;
  for (--v7; v13 > v6 && v27 > v9; --v7)
  {
    v48 = v13;
    v30 = v13 - 1;
    v29 = *(v13 - 1);
    v31 = v8;
    v32 = *v8;
    v33 = v29;
    v34 = v32;
    v35 = sub_1E4205964();
    v36 = sub_1E42054D4();
    v38 = v37;

    if (a6)
    {
      if (v36 == a5 && v38 == a6)
      {

        v8 = v31;
LABEL_50:
        v6 = v44;
        v9 = v45;
        v13 = v48;
        if (v7 + 1 != v27)
        {
          *v7 = *v8;
        }

        goto LABEL_32;
      }

      v40 = sub_1E42079A4();

      v8 = v31;
      if (v40)
      {
        goto LABEL_50;
      }
    }

    else
    {

      v8 = v31;
    }

    v6 = v44;
    if (v48 != v7 + 1)
    {
      *v7 = *v30;
    }

    v13 = v30;
    v9 = v45;
  }

LABEL_53:
  v41 = v13 - v6;
  if (v27 != v6 || v27 >= &v6[v41])
  {
    memmove(v27, v6, 8 * v41);
  }

  return 1;
}

uint64_t sub_1E3F9BC10(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 8;
    }

    v13 = *v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_25:
  v16 = v6 - 8;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v11 - 1);
    if (v18 < *v16)
    {
      v14 = v5 + 8 == v6;
      v6 -= 8;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 8)
    {
      *v5 = v18;
    }

    v11 -= 8;
  }

LABEL_38:
  v19 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

unint64_t sub_1E3F9BDA4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v5 = (*(**(v1 + 16) + 480))(v9);
  v6 = *v4;
  if (!*v4)
  {
    return v5(v9, 0);
  }

  v7 = v4;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v7 = v6;
  if (v6 >> 62 || (result & 1) == 0)
  {
    result = sub_1E37EFA58(v6);
    v6 = result;
    *v7 = result;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v2)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v3;

    return v5(v9, 0);
  }

  __break(1u);
  return result;
}

double sub_1E3F9BEB4()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v7);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (*(*Strong + 1280))(Strong);

    if (v3)
    {
      OUTLINED_FUNCTION_5_0(v3 + 16, &v6);
      v4 = *(v3 + 16);

      v4(v5);
    }
  }

  return result;
}

void sub_1E3F9BF68(uint64_t a1@<X8>)
{
  sub_1E3F984B8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1E3F9BFB8(char *a1)
{
  v2 = v1;
  if (*(a1 + 2) == 2 && (v3 = a1 + 32, *(a1 + 4) != *(a1 + 5)) && ((v9 = a1, , sub_1E3F9A678(&v9), (v4 = *(v9 + 2)) == 0) ? (v5 = 0) : (v5 = *&v9[8 * v4 + 24]), , v4))
  {
    v9 = v2;
    v6 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
    v7 = v3[(sub_1E383ACA0(0, v6, &off_1F5D8FCF0) & 1) == 0];
    return sub_1E3F8E9D0(v7 == v5, v7 != v5);
  }

  else
  {

    return sub_1E3F8E9D0(0, 0);
  }
}

uint64_t sub_1E3F9C114()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v9;
  v4[1] = sub_1E37E1058;

  return sub_1E3F941B4(v4, v5, v6, v1, v7, v8, v2);
}

uint64_t objectdestroy_52Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3F9C1FC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v6;
  v3[1] = sub_1E388EDB0;

  return sub_1E3F93F8C(v3, v4, v5, v1);
}

uint64_t sub_1E3F9C2EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_84_20@<X0>(char a1@<W8>)
{
  *(v3 - 168) = a1;

  return sub_1E3F9F164((v3 - 168), v1, v2 + 8);
}

uint64_t OUTLINED_FUNCTION_111_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_112_15()
{

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_113_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_114_11()
{

  return sub_1E4200844();
}

uint64_t OUTLINED_FUNCTION_116_13(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{

  return sub_1E3F8D39C(v7, v6, a3, a4, a5, a6);
}

uint64_t sub_1E3F9C48C(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_3_0(v2 + 72, v6);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
  return result;
}

double sub_1E3F9C528(__n128 a1, __n128 a2, __n128 a3)
{
  if ((*(v3 + 152) & 1) == 0)
  {
    return *(v3 + 136);
  }

  sub_1E40BF120();
  *(v3 + 136) = result;
  *(v3 + 144) = v5;
  *(v3 + 152) = 0;
  return result;
}

uint64_t sub_1E3F9C564()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4A0, &qword_1E42E1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4A8, &qword_1E42E1958);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3F9F14C;
    *(v4 + 24) = v0;
    *(v3 + 32) = 1;
    *(v3 + 40) = sub_1E3F9EFA0;
    *(v3 + 48) = v4;
    OUTLINED_FUNCTION_2_4();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1E3F9EFA8;
    *(v5 + 24) = v0;
    *(v3 + 56) = 0;
    *(v3 + 64) = sub_1E3F9F150;
    *(v3 + 72) = v5;
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
    OUTLINED_FUNCTION_40_66();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4B0, &qword_1E42E1960);
    sub_1E3F9EFB0(&qword_1ECF3D4B8, &unk_1E42E1908);
    *(inited + 40) = OUTLINED_FUNCTION_18_127();
    *(inited + 48) = 2;
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E3F9EFF4;
    *(v7 + 24) = v0;
    *(v6 + 32) = 1;
    *(v6 + 40) = sub_1E3F9F150;
    *(v6 + 48) = v7;
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1E3F9F000;
    *(v8 + 24) = v0;
    *(v6 + 56) = 0;
    *(v6 + 64) = sub_1E3F9F150;
    *(v6 + 72) = v8;
    OUTLINED_FUNCTION_40_66();
    *(inited + 56) = OUTLINED_FUNCTION_18_127();
    *(inited + 64) = 3;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1E3F9F010;
    *(v10 + 24) = v0;
    *(v9 + 32) = 1;
    *(v9 + 40) = sub_1E3F9F150;
    *(v9 + 48) = v10;
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1E3F9F154;
    *(v11 + 24) = v0;
    *(v9 + 56) = 0;
    *(v9 + 64) = sub_1E3F9F150;
    *(v9 + 72) = v11;
    OUTLINED_FUNCTION_40_66();
    *(inited + 72) = OUTLINED_FUNCTION_18_127();
    *(inited + 80) = 4;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E3F9F018;
    *(v13 + 24) = v0;
    *(v12 + 32) = 1;
    *(v12 + 40) = sub_1E3F9F150;
    *(v12 + 48) = v13;
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1E3F9F020;
    *(v14 + 24) = v0;
    *(v12 + 56) = 0;
    *(v12 + 64) = sub_1E3F9F150;
    *(v12 + 72) = v14;
    OUTLINED_FUNCTION_40_66();
    *(inited + 88) = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4C0, &qword_1E42E1968);
    v1 = sub_1E4205CB4();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3F9C930@<X0>(void *a1@<X0>, double *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void, void, void, double, double)@<X5>, uint64_t *a7@<X8>)
{
  result = a6(*a1, *a3, *a4, *a5, *(a5 + 8), *a2, a2[1]);
  *a7 = result;
  return result;
}

uint64_t sub_1E3F9C984(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  sub_1E3F9CA0C(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_1E3F9CA0C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 80) = 0;
  *(v7 + 88) = xmmword_1E42E1860;
  *(v7 + 104) = xmmword_1E42E1870;
  *(v7 + 120) = xmmword_1E42E1880;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 1;
  *(v7 + 160) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t sub_1E3F9CA64(uint64_t a1, char a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_8();
  (*(*v4 + 152))();
  OUTLINED_FUNCTION_2_15();

  return sub_1E3F9CB08(v8, a2, a3, a4, v9, v10);
}

uint64_t sub_1E3F9CB08(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_0_8();
  v14 = v13;
  v15 = sub_1E32AE9B0(v13);
  v16 = sub_1E3F9C564();
  sub_1E39260C8(v15, v16);
  v18 = v17;

  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1E3F9CD50(a3, v18);
  v21 = v20;

  v22 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
    return v22;
  }

  v47 = v14;
  v46[0] = v7;
  v46[1] = v6;
  v45 = a2 & 1;
  v44 = a4 & 1;
  v42 = a5;
  v43 = a6 & 1;
  v19(&v41, &v47, v46, &v45, &v44, &v42);
  sub_1E34AF594(v19, v21);
  v23 = v41;
  result = sub_1E32AE9B0(v14);
  if (!result)
  {
    return v23;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1E6911E60](0, v14);
LABEL_7:
    v26 = v25;
    v27 = [v25 vuiIsRTL];

    if (v27)
    {
      v28 = *(v23 + 16);
      if (v28)
      {
        v46[0] = v22;
        sub_1E3F9F02C(0, v28, 0);
        v22 = v46[0];
        v29 = v23 + 56;
        do
        {
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v46[0] = v22;
          v39 = *(v22 + 16);
          v38 = *(v22 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1E3F9F02C((v38 > 1), v39 + 1, 1);
            v22 = v46[0];
          }

          *(v22 + 16) = v39 + 1;
          v40 = (v22 + 32 * v39);
          v40[4] = v31;
          v40[5] = v33;
          v40[6] = v35;
          v40[7] = v37;
          v29 += 32;
          --v28;
        }

        while (v28);
      }

      return v22;
    }

    return v23;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v14 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F9CD50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3887C44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1E3F9CDA8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_8();
  v9 = sub_1E3F9CB08(v7, 1, v8, v6 & 1, 0, 0);
  OUTLINED_FUNCTION_2_15();
  v12 = sub_1E3F9CB08(v10, 1, a2, v11, 0x3FF0000000000000, 0);
  if (a4)
  {
    v13 = *(v9 + 16);
    if (v13)
    {
      v14 = *(v9 + 32 * v13 + 24);
    }

    else
    {
      v14 = 0.0;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    v16 = *(v12 + 16);
    v15 = v16 ? *(v12 + 32 * v16 + 24) : 0.0;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!*(v9 + 16) || !*(v12 + 16))
    {
      goto LABEL_17;
    }

    v14 = *(v9 + 48);
    v15 = *(v12 + 48);
  }

  if (fabs(v14 - v15) >= 50.0)
  {
LABEL_17:
    v18 = sub_1E3F9EEBC(v9, v12);

    v17 = v18 ^ 1;
    return v17 & 1;
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

void sub_1E3F9CF0C(uint64_t a1, double a2, CGFloat a3)
{
  v4 = a1;
  sub_1E3F9D050([objc_allocWithZone(MEMORY[0x1E6958608]) init], *(v3 + 16));
  v7 = (*(*v3 + 152))();
  v9 = sub_1E3F9DD98(a2, a3, v7, 1, v4, v7, v8 & 1);

  v10 = (v9 + 56);
  v11 = -*(v9 + 16);
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {
LABEL_6:

      return;
    }

    if (++v12 >= *(v9 + 16))
    {
      break;
    }

    v13 = *v10;
    v17.origin.x = OUTLINED_FUNCTION_2_15();
    v17.size.height = v13;
    v14.n128_f64[0] = CGRectGetWidth(v17);
    if (v14.n128_f64[0] >= sub_1E3F9C528(v14, v15, v16))
    {
      v10 += 4;
      v18.origin.x = OUTLINED_FUNCTION_2_15();
      v18.size.height = v13;
      if (CGRectGetHeight(v18) >= *(v3 + 144))
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1E3F9D050(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1E3D529CC();
      v4 = sub_1E4206314();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

double sub_1E3F9D0D4(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a2.n128_f64[0];
  v9 = a1.n128_f64[0];
  if (a6)
  {
    sub_1E40BF120();
    OUTLINED_FUNCTION_171();
    sub_1E40BF094();
  }

  else
  {
    sub_1E40BF114(a2.n128_f64[0] + -33.0, *(v6 + 24), *(v6 + 32));
    OUTLINED_FUNCTION_171();
    sub_1E40BF0A0();
  }

  OUTLINED_FUNCTION_35_73();
  v13 = sub_1E40BF0B0(v10, v9, v8, v11, v12, v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
  v20 = swift_allocObject();
  *&result = 1;
  *(v20 + 16) = xmmword_1E4297BE0;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = v19;
  return result;
}

uint64_t sub_1E3F9D198(double a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v11 = v7;
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v18 = swift_allocObject();
  if (a7)
  {
    v19 = 0.655;
  }

  else
  {
    v19 = 0.5;
    if (*&a6 >= 0.5)
    {
      if (*&a6 <= 0.655)
      {
        v19 = *&a6;
      }

      else
      {
        v19 = 0.655;
      }
    }
  }

  if (a5)
  {
    v20 = OUTLINED_FUNCTION_31_81();
    sub_1E3952BD8(v20, v21, v22);
    v81 = a2;
    v23 = *(v11 + 24);
    v24 = *(v11 + 32);
    OUTLINED_FUNCTION_30_79();
    sub_1E40BF114(v25, v26, v27);
    OUTLINED_FUNCTION_23_92();
    *(v18 + 16) = v28;
    *(v18 + 24) = v29;
    OUTLINED_FUNCTION_30_79();
    sub_1E40BF114(v30, v31, v32);
    OUTLINED_FUNCTION_171();
    *(v17 + 16) = v33;
    *(v17 + 24) = v34;
    v35 = v9 / v33;
    v36 = OUTLINED_FUNCTION_4_229();
    sub_1E3F9D4D8(v36, v37, v38);
    v79 = a1;
    if (v39 > a1)
    {
      OUTLINED_FUNCTION_30_79();
      sub_1E40BF120();
      OUTLINED_FUNCTION_23_92();
      OUTLINED_FUNCTION_3_0(v18 + 16, v87);
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      OUTLINED_FUNCTION_30_79();
      sub_1E40BF120();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_3_0(v17 + 16, v86);
      *(v17 + 16) = v19;
      *(v17 + 24) = v8;
    }

    v40 = v23;
    v41 = OUTLINED_FUNCTION_4_229();
    v44 = v81;
    if (sub_1E3F9D558(v41, v42, v43) <= v81)
    {
      v45 = 1;
    }

    else
    {
      sub_1E40BF114(v81, v40, v24);
      OUTLINED_FUNCTION_23_92();
      v45 = 1;
      OUTLINED_FUNCTION_3_0(v18 + 16, v89);
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      sub_1E40BF114(v10 / v35, v40, v24);
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_3_0(v17 + 16, v88);
      *(v17 + 16) = v19;
      *(v17 + 24) = v8;
    }

    a1 = v79;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_31_81();
    sub_1E3952BE0(v46, v47, v48, v49);
    sub_1E40BF120();
    OUTLINED_FUNCTION_23_92();
    *(v18 + 16) = v50;
    *(v18 + 24) = v51;
    v44 = a2;
    sub_1E40BF120();
    OUTLINED_FUNCTION_171();
    v45 = 0;
    *(v17 + 16) = v52;
    *(v17 + 24) = v53;
  }

  j__OUTLINED_FUNCTION_1_248();
  OUTLINED_FUNCTION_35_73();
  sub_1E40BF0B0(v54, a1, v44, v55, v56, v9);
  OUTLINED_FUNCTION_23_92();
  v58 = v57;
  j__OUTLINED_FUNCTION_1_248();
  OUTLINED_FUNCTION_35_73();
  v62 = sub_1E40BF0B0(v59, a1, v44, v60, v61, v19);
  v80 = v64;
  v66 = v65;
  if (v45)
  {
    v67 = v62;
    v68 = OUTLINED_FUNCTION_4_229();
    v10 = (v44 - sub_1E3F9D558(v68, v69, v70)) * 0.5;
    v90.origin.x = OUTLINED_FUNCTION_20_116();
    MaxY = CGRectGetMaxY(v90);
    v72 = MaxY + sub_1E3952BD8(v85, v84, v83);
  }

  else
  {
    v72 = v63;
    v73 = OUTLINED_FUNCTION_4_229();
    sub_1E3F9D4D8(v73, v74, v75);
    OUTLINED_FUNCTION_37_73();
    v91.origin.x = OUTLINED_FUNCTION_20_116();
    MaxX = CGRectGetMaxX(v91);
    v67 = MaxX + sub_1E3952BE0(v85, v84, v83, v82);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1E4299720;
  *(v77 + 32) = v9;
  *(v77 + 40) = v10;
  *(v77 + 48) = a1;
  *(v77 + 56) = v58;
  *(v77 + 64) = v67;
  *(v77 + 72) = v72;
  *(v77 + 80) = v80;
  *(v77 + 88) = v66;

  return v77;
}

void sub_1E3F9D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_9_170(a1, a2, a3);
    OUTLINED_FUNCTION_10_153(v4, v5, v6, v7, v8, v9, v10, v11, v25);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_9_170(a1, a2, a3);
    v13 = *(a2 + 16);
    OUTLINED_FUNCTION_10_153(v12, v14, v15, v16, v17, v18, v19, v20, v25);
    v21 = OUTLINED_FUNCTION_22_94();
    floor(v13 + sub_1E3952BE0(v21, v22, v23, v24));
  }
}

double sub_1E3F9D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_9_170(a1, a2, a3);
    v6 = *(a2 + 24);
    OUTLINED_FUNCTION_10_153(v5, v7, v8, v9, v10, v11, v12, v13, v28);
    v14 = OUTLINED_FUNCTION_22_94();
    v17 = v6 + sub_1E3952BD8(v14, v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_9_170(a1, a2, a3);
    v19 = *(a2 + 24);
    OUTLINED_FUNCTION_10_153(v18, v20, v21, v22, v23, v24, v25, v26, v28);
    v17 = *(a3 + 24);
    if (v19 > v17)
    {
      v17 = v19;
    }
  }

  return floor(v17);
}

uint64_t sub_1E3F9D5D8(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    v9 = v5[3];
    v10 = v5[4];
    sub_1E40BF120();
    v124 = v11;
    *(v8 + 16) = v11;
    *(v8 + 24) = v12;
    v13 = v5[8];
    v143 = v5[7];
    sub_1E3952BE0(v5[5], v5[6], v143, v13);
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_11_170();
    sub_1E40BF120();
    v145 = v15;
    *(v14 + 16) = v15;
    v17 = v16;
    *(v14 + 24) = v16;
    OUTLINED_FUNCTION_2_4();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_11_170();
    sub_1E40BF120();
    v129 = v20;
    v131 = v19;
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    OUTLINED_FUNCTION_39_61();
    v21 = a2;
    if (OUTLINED_FUNCTION_39_61() <= a2)
    {
      OUTLINED_FUNCTION_36_65();
      rect = v17;
      v25 = v124;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_25_94();
      v24 = sub_1E3952BD8(v22, v23, v143);
      v137 = a2;
      v25 = sub_1E40BF114((v9 + v9) * (v10 / v9) / (v10 + (v9 + v9) * (v10 / v9)) * (a2 - v24), v9, v10);
      v27 = v26;
      OUTLINED_FUNCTION_15_149(v28, v154);
      *(v8 + 16) = v25;
      *(v8 + 24) = v27;
      v29 = OUTLINED_FUNCTION_25_94();
      sub_1E3952BE0(v29, v30, v143, v13);
      OUTLINED_FUNCTION_11_170();
      sub_1E40BF120();
      v32 = v31;
      v34 = v33;
      OUTLINED_FUNCTION_3_0(v14 + 16, v153);
      v145 = v32;
      *(v14 + 16) = v32;
      *(v14 + 24) = v34;
      rect = v34;
      sub_1E40BF120();
      v36 = v35;
      v38 = v37;
      OUTLINED_FUNCTION_3_0(v18 + 16, v152);
      v129 = v38;
      v131 = v36;
      *(v18 + 16) = v36;
      *(v18 + 24) = v38;
      v9 = 0.0;
      v21 = v137;
    }

    v62 = sub_1E40BF0A0();
    v155.origin.x = sub_1E40BF0B0(*v62, a1, v21, 0.0, v9, v25);
    x = v155.origin.x;
    height = v155.size.height;
    v123 = v155.origin.x;
    y = v155.origin.y;
    width = v155.size.width;
    v66 = v155.size.height;
    MinX = CGRectGetMinX(v155);
    v156.origin.x = x;
    v156.origin.y = y;
    v156.size.width = width;
    v156.size.height = v66;
    MaxY = CGRectGetMaxY(v156);
    v68 = OUTLINED_FUNCTION_24_101();
    v157.origin.y = MaxY + sub_1E3952BD8(v68, v69, v143);
    v139 = v157.origin.y;
    v157.origin.x = MinX;
    v157.size.width = v145;
    v157.size.height = rect;
    MaxX = CGRectGetMaxX(v157);
    v71.n128_f64[0] = OUTLINED_FUNCTION_24_101();
    v127 = MaxX + OUTLINED_FUNCTION_26_107(v71, v72, v73, v74);
    v158.origin.x = v123;
    v158.origin.y = y;
    v158.size.width = width;
    v158.size.height = height;
    v75 = CGRectGetMaxY(v158);
    v76.n128_f64[0] = OUTLINED_FUNCTION_24_101();
    v80 = v75 + OUTLINED_FUNCTION_26_107(v76, v77, v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1E4297BD0;
    *(v81 + 32) = v123;
    *(v81 + 40) = y;
    *(v81 + 48) = width;
    *(v81 + 56) = height;
    *(v81 + 64) = MinX;
    *(v81 + 72) = v139;
    *(v81 + 80) = v145;
    *(v81 + 88) = rect;
    *(v81 + 96) = v127;
    *(v81 + 104) = v80;
    *(v81 + 112) = v131;
    *(v81 + 120) = v129;
  }

  else
  {
    v40 = v5[3];
    v39 = v5[4];
    sub_1E3F9EB44(2, a1, a2);
    OUTLINED_FUNCTION_2_4();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_2_229();
    sub_1E40BF120();
    v42 = a2;
    v44 = v43;
    *(v41 + 16) = v43;
    *(v41 + 24) = v45;
    v46 = v5[8];
    v144 = v5[6];
    v146 = v5[5];
    recta = v5[7];
    sub_1E3952BD8(v146, v144, recta);
    v138 = v42;
    OUTLINED_FUNCTION_36_65();
    OUTLINED_FUNCTION_2_4();
    v47 = swift_allocObject();
    v48 = OUTLINED_FUNCTION_2_229();
    v51 = sub_1E40BF114(v48, v49, v50);
    *(v47 + 16) = v51;
    v53 = v52;
    *(v47 + 24) = v52;
    v54 = OUTLINED_FUNCTION_2_229();
    v57 = sub_1E40BF114(v54, v55, v56);
    v150 = v57;
    v151 = v58;
    v136 = v58;
    v135 = v46;
    v126 = a1;
    if (sub_1E3F9E728(v41) <= a1)
    {
      v133 = v57;
      v46 = v51;
    }

    else
    {
      sub_1E3952BE0(v146, v144, recta, v46);
      OUTLINED_FUNCTION_2_229();
      sub_1E40BF120();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_15_149(v59, v147);
      *(v47 + 16) = v46;
      *(v47 + 24) = v53;
      OUTLINED_FUNCTION_2_229();
      sub_1E40BF120();
      v133 = v60;
      v150 = v60;
      v151 = v61;
      v136 = v61;
    }

    v82 = v44;
    OUTLINED_FUNCTION_5_0(v47 + 16, v154);
    v83 = *(v47 + 24);
    OUTLINED_FUNCTION_5_0(&v150, v153);
    v84 = OUTLINED_FUNCTION_22_94();
    v87 = v83 + sub_1E3952BD8(v84, v85, v86);
    OUTLINED_FUNCTION_5_0(v41 + 16, v152);
    v88 = *(v41 + 24);
    if (v87 > v88)
    {
      v88 = v87;
    }

    if (floor(v88) <= v138)
    {
      v130 = v46;
    }

    else
    {
      v82 = sub_1E40BF114(v138, v40, v39);
      v90 = v89;
      OUTLINED_FUNCTION_3_0(v41 + 16, v149);
      *(v41 + 16) = v82;
      *(v41 + 24) = v90;
      sub_1E3952BD8(v146, v144, recta);
      OUTLINED_FUNCTION_36_65();
      v91 = OUTLINED_FUNCTION_2_229();
      sub_1E40BF114(v91, v92, v93);
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_15_149(v94, v148);
      v130 = v46;
      *(v47 + 16) = v46;
      *(v47 + 24) = v53;
      v95 = OUTLINED_FUNCTION_2_229();
      v133 = sub_1E40BF114(v95, v96, v97);
      v136 = v98;
    }

    sub_1E40BF094();
    OUTLINED_FUNCTION_35_73();
    sub_1E40BF0B0(v99, v126, v138, v100, v101, v82);
    v140 = v102;
    v104 = v103;
    v106 = v105;
    v107 = (v126 - sub_1E3F9E728(v41)) * 0.5;
    OUTLINED_FUNCTION_32_81();
    CGRect.center.getter(v108, v109, v110, v111);
    v132 = v112 - recta - v53;
    OUTLINED_FUNCTION_32_81();
    v113 = CGRectGetMaxX(v159);
    v128 = v113 + sub_1E3952BE0(v146, v144, recta, v135);
    OUTLINED_FUNCTION_32_81();
    CGRect.center.getter(v114, v115, v116, v117);
    v125 = v146 + v118;
    OUTLINED_FUNCTION_24_101();
    OUTLINED_FUNCTION_32_81();
    v119 = CGRectGetMaxX(v160);
    v120 = v119 + sub_1E3952BE0(v146, v144, recta, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1E4297BD0;
    *(v81 + 32) = v107;
    *(v81 + 40) = v140;
    *(v81 + 48) = v104;
    *(v81 + 56) = v106;
    *(v81 + 64) = v128;
    *(v81 + 72) = v132;
    *(v81 + 80) = v130;
    *(v81 + 88) = v53;
    *(v81 + 96) = v120;
    *(v81 + 104) = v125;
    *(v81 + 112) = v133;
    *(v81 + 120) = v136;
  }

  return v81;
}

double sub_1E3F9DCF8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_0(a1 + 16, v15);
  v8 = *(a1 + 24);
  v9 = sub_1E3952BD8(a2[5], a2[6], a2[7]);
  OUTLINED_FUNCTION_5_0(a3 + 16, v14);
  v10 = *(a3 + 24);
  OUTLINED_FUNCTION_5_0(a4 + 16, v13);
  v11 = *(a4 + 24);
  if (v10 > v11)
  {
    v11 = v10;
  }

  return floor(v8 + v9 + v11);
}

uint64_t sub_1E3F9DD98(double a1, CGFloat a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  v181.origin.x = a2;
  v9 = v7[4];
  if (a5)
  {
    OUTLINED_FUNCTION_5_214();
    sub_1E40BF120();
    v156 = v10;
    v167 = v11;
    v12 = v7[5];
    v13 = v7[6];
    v14 = v7[7];
    v15 = v7[8];
    v16 = OUTLINED_FUNCTION_34_71();
    v20 = sub_1E3952BE0(v16, v17, v18, v19);
    OUTLINED_FUNCTION_33_78(v20);
    OUTLINED_FUNCTION_2_4();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v179 = v22;
    *(v21 + 16) = v22;
    rect = v23;
    *(v21 + 24) = v23;
    OUTLINED_FUNCTION_2_4();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v170 = v26;
    v172 = v25;
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    OUTLINED_FUNCTION_2_4();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v162 = v29;
    v164 = v28;
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;
    v30 = OUTLINED_FUNCTION_34_71();
    sub_1E3952BD8(v30, v31, v32);
    v33 = sub_1E3F9E68C(v21);
    v160 = *&v12;
    v34 = sub_1E3952BD8(v12, v13, v14);
    if (floor(sub_1E3F9E68C(v21) + v167 + v34 + v34) <= v181.origin.x)
    {
      OUTLINED_FUNCTION_36_65();
      v57 = *&v13;
      v41 = v156;
    }

    else
    {
      v35 = v13;
      sub_1E3952BD8(*&v160, v13, v14);
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF114(v36, v37, v38);
      v39 = OUTLINED_FUNCTION_24_101();
      v41 = v40;
      v43 = sub_1E3952BE0(v39, v42, v14, v15);
      OUTLINED_FUNCTION_33_78(v43);
      OUTLINED_FUNCTION_4_94();
      sub_1E40BF120();
      v45 = v44;
      v47 = v46;
      OUTLINED_FUNCTION_3_0(v21 + 16, v183);
      v179 = v45;
      *(v21 + 16) = v45;
      *(v21 + 24) = v47;
      rect = v47;
      OUTLINED_FUNCTION_4_94();
      sub_1E40BF120();
      v49 = v48;
      v51 = v50;
      OUTLINED_FUNCTION_15_149(v52, v182);
      v170 = v51;
      v172 = v49;
      *(v24 + 16) = v49;
      *(v24 + 24) = v51;
      OUTLINED_FUNCTION_17_4();
      sub_1E40BF120();
      v54 = v53;
      v56 = v55;
      OUTLINED_FUNCTION_3_0(v27 + 16, &v181.origin.y);
      v162 = v56;
      v164 = v54;
      *(v27 + 16) = v54;
      *(v27 + 24) = v56;
      v33 = 0.0;
      v57 = *&v35;
    }

    v96 = sub_1E40BF0A0();
    v184.origin.x = sub_1E40BF0B0(*v96, a1, v181.origin.x, 0.0, v33, v41);
    v181.origin.x = v184.origin.x;
    y = v184.origin.y;
    width = v184.size.width;
    height = v184.size.height;
    v149 = v184.size.height;
    MinX = CGRectGetMinX(v184);
    v185.origin.x = OUTLINED_FUNCTION_2_229();
    v185.size.height = height;
    MaxY = CGRectGetMaxY(v185);
    v101.n128_u64[0] = v160;
    v102.n128_u64[0] = v57;
    v186.origin.y = MaxY + OUTLINED_FUNCTION_26_107(v101, v102, v103, v104);
    v177 = v186.origin.y;
    v186.origin.x = MinX;
    v186.size.width = v179;
    v186.size.height = rect;
    v105.n128_f64[0] = CGRectGetMaxX(v186);
    v154 = v105.n128_f64[0] + OUTLINED_FUNCTION_19_138(v105, v106, v107, v108);
    v187.origin.x = v181.origin.x;
    v187.origin.y = y;
    v187.size.width = width;
    v187.size.height = v149;
    v158 = CGRectGetMaxY(v187);
    v109.n128_u64[0] = v160;
    v110.n128_u64[0] = v57;
    v159 = v158 + OUTLINED_FUNCTION_26_107(v109, v110, v111, v112);
    v188.origin.y = v159;
    v188.origin.x = v154;
    v188.size.height = v170;
    v188.size.width = v172;
    v113.n128_f64[0] = CGRectGetMaxX(v188);
    v153 = v113.n128_f64[0] + OUTLINED_FUNCTION_19_138(v113, v114, v115, v116);
    v189.origin.x = v181.origin.x;
    v189.origin.y = y;
    v189.size.width = width;
    v189.size.height = v149;
    v117.n128_f64[0] = CGRectGetMaxY(v189);
    v121 = v117.n128_f64[0] + OUTLINED_FUNCTION_19_138(v117, v118, v119, v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1E4298AD0;
    *(v122 + 32) = v181.origin.x;
    *(v122 + 40) = y;
    *(v122 + 48) = width;
    *(v122 + 56) = v149;
    *(v122 + 64) = MinX;
    *(v122 + 72) = v177;
    *(v122 + 80) = v179;
    *(v122 + 88) = rect;
    *(v122 + 96) = v154;
    *(v122 + 104) = v159;
    *(v122 + 112) = v172;
    *(v122 + 120) = v170;
    *(v122 + 128) = v153;
    *(v122 + 136) = v121;
    *(v122 + 144) = v164;
    *(v122 + 152) = v162;
  }

  else
  {
    recta = v7[5];
    v59 = v7[7];
    v58 = v7[8];
    v168 = v58;
    v171 = v7[6];
    sub_1E3952BD8(recta, v171, v59);
    v60 = v7[3];
    sub_1E3F9EB44(3, a1, v181.origin.x);
    OUTLINED_FUNCTION_2_4();
    v61 = swift_allocObject();
    sub_1E40BF120();
    v62 = v9;
    v173 = v63;
    *(v61 + 16) = v64;
    *(v61 + 24) = v63;
    v151 = v64;
    sub_1E3952BE0(recta, v171, v59, v58);
    OUTLINED_FUNCTION_2_4();
    v65 = swift_allocObject();
    sub_1E40BF120();
    v67 = v66;
    v163 = v68;
    *(v65 + 16) = v68;
    *(v65 + 24) = v66;
    sub_1E40BF120();
    v180 = v69;
    v71 = v70;
    sub_1E40BF120();
    v157 = v73;
    v161 = v72;
    v165 = v59;
    v74 = v67 + v71 + v73;
    v75 = OUTLINED_FUNCTION_11_170();
    v76 = v173;
    v79 = sub_1E3952BD8(v75, v77, v78);
    v80 = v74 + v79 + v79;
    if (v80 <= v173)
    {
      v80 = v173;
    }

    if (floor(v80) <= v181.origin.x)
    {
      v166 = v67;
      v93 = v151;
      v88 = v71;
    }

    else
    {
      v81 = sub_1E3952BD8(recta, v171, v165);
      v82 = sub_1E40BF114((v181.origin.x - (v81 + v81)) / 3.0, v60, v62);
      v84 = v83;
      OUTLINED_FUNCTION_3_0(v65 + 16, v182);
      v163 = v82;
      *(v65 + 16) = v82;
      *(v65 + 24) = v84;
      v166 = v84;
      v85 = OUTLINED_FUNCTION_17_4();
      v180 = sub_1E40BF114(v85, v86, v62);
      v88 = v87;
      v89 = OUTLINED_FUNCTION_17_4();
      v91 = sub_1E40BF114(v89, v90, v62);
      v157 = v92;
      v161 = v91;
      v93 = sub_1E40BF114(v181.origin.x, v60, v62);
      v76 = v94;
      OUTLINED_FUNCTION_15_149(v95, &v181.origin.y);
      *(v61 + 16) = v93;
      *(v61 + 24) = v76;
    }

    if (sub_1E3F9E728(v61) > a1)
    {
      sub_1E3952BE0(recta, v171, v165, v168);
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v124 = v123;
      v126 = v125;
      OUTLINED_FUNCTION_3_0(v65 + 16, v183);
      v163 = v124;
      *(v65 + 16) = v124;
      *(v65 + 24) = v126;
      v166 = v126;
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v180 = v127;
      v88 = v128;
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v157 = v130;
      v161 = v129;
    }

    v131 = (v181.origin.x - v76) * 0.5;
    v181.origin.x = (a1 - sub_1E3F9E728(v61)) * 0.5;
    CGRect.center.getter(v181.origin.x, v131, v93, v76);
    v133 = v132 - v88 * 0.5;
    v178 = v133;
    v190.origin.x = v181.origin.x;
    v190.origin.y = v131;
    v190.size.width = v93;
    v190.size.height = v76;
    MaxX = CGRectGetMaxX(v190);
    v191.origin.x = MaxX + sub_1E3952BE0(recta, v171, v165, v168);
    x = v191.origin.x;
    v191.origin.y = v133;
    v191.size.width = v180;
    v191.size.height = v88;
    CGRectGetMinY(v191);
    v135 = OUTLINED_FUNCTION_7_205();
    v152 = v133 - sub_1E3952BD8(v135, v136, v137) - v166;
    v192.origin.x = v181.origin.x;
    v192.origin.y = v131;
    v192.size.width = v93;
    v192.size.height = v76;
    CGRectGetMaxX(v192);
    v138 = OUTLINED_FUNCTION_7_205();
    v150 = v133 + sub_1E3952BE0(v138, v139, v140, v141);
    v193.origin.x = x;
    v193.origin.y = v133;
    v193.size.width = v180;
    v193.size.height = v88;
    CGRectGetMaxY(v193);
    v142 = OUTLINED_FUNCTION_7_205();
    v148 = v133 + sub_1E3952BD8(v142, v143, v144);
    OUTLINED_FUNCTION_5_214();
    v194.size.height = v76;
    v145 = CGRectGetMaxX(v194);
    v146 = v145 + sub_1E3952BE0(recta, v171, v165, v168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1E4298AD0;
    *(v122 + 32) = v181.origin.x;
    *(v122 + 40) = v131;
    *(v122 + 48) = v93;
    *(v122 + 56) = v76;
    *(v122 + 64) = v150;
    *(v122 + 72) = v152;
    *(v122 + 80) = v163;
    *(v122 + 88) = v166;
    *(v122 + 96) = x;
    *(v122 + 104) = v178;
    *(v122 + 112) = v180;
    *(v122 + 120) = v88;
    *(v122 + 128) = v146;
    *(v122 + 136) = v148;
    *(v122 + 144) = v161;
    *(v122 + 152) = v157;
  }

  return v122;
}

double sub_1E3F9E68C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_38_66(a1);
  OUTLINED_FUNCTION_5_0(v4, v17);
  v16 = *(v3 + 24);
  OUTLINED_FUNCTION_5_0(v2 + 16, v15);
  v13 = *(v2 + 24);
  v14 = 0;
  v5 = OUTLINED_FUNCTION_5_0(v1 + 16, v12);
  v10 = *(v1 + 24);
  v11 = 0;
  v8 = sub_1E3793CAC(v5, v6, v7);
  max<A>(_:_:_:)(&v16, &v13, &v10, MEMORY[0x1E69E7DE0], v8);
  return floor(v18);
}

double sub_1E3F9E728(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_38_66(a1);
  OUTLINED_FUNCTION_5_0(v4, v8);
  v5 = *(v3 + 16);
  OUTLINED_FUNCTION_5_0(v2 + 16, &v7);
  return floor(v5 + *(v2 + 16) + sub_1E3952BE0(v1[5], v1[6], v1[7], v1[8]));
}

CGFloat sub_1E3F9E794(double a1)
{
  v2 = v1[6];
  v101 = v1[5];
  v4 = v1[7];
  v3 = v1[8];
  OUTLINED_FUNCTION_21_108();
  sub_1E3952BE0(v5, v6, v7, v8);
  OUTLINED_FUNCTION_37_73();
  v9 = v1[3];
  v10 = v1[4];
  OUTLINED_FUNCTION_28_82(v11, v12, v13);
  v15 = v14.n128_f64[0];
  v113 = v16.n128_f64[0];
  OUTLINED_FUNCTION_28_82(v14, v16, v17);
  v19 = v18.n128_f64[0];
  v103 = v18.n128_u64[0];
  v109 = v20.n128_u64[0];
  OUTLINED_FUNCTION_28_82(v18, v20, v21);
  v110 = v22;
  v108 = v23;
  v99 = v9;
  sub_1E40BF120();
  v107 = v24;
  v112 = v15;
  v25 = v15 + v19;
  v27 = v26;
  OUTLINED_FUNCTION_21_108();
  v32 = v25 + sub_1E3952BE0(v28, v29, v30, v31);
  v102 = v27;
  v105 = v4;
  v33 = v110 + v27 + sub_1E3952BE0(v101, v2, v4, v3);
  if (v32 > v33)
  {
    v33 = v32;
  }

  if (v33 <= a1 && (v32 = v113 + v107 + sub_1E3952BD8(v101, v2, v4), OUTLINED_FUNCTION_21_108(), sub_1E3952BD8(v34, v35, v36), OUTLINED_FUNCTION_29_93(), v37 <= v38))
  {
    v53 = v110 + v27;
  }

  else
  {
    sub_1E3952BD8(v101, v2, v4);
    OUTLINED_FUNCTION_37_73();
    v39 = sub_1E40BF114(v32, v99, v10);
    v113 = v40;
    v41 = OUTLINED_FUNCTION_25_94();
    v43 = sub_1E40BF114(v41, v42, v10);
    v45 = v44;
    v46 = OUTLINED_FUNCTION_25_94();
    v48 = sub_1E40BF114(v46, v47, v10);
    v50 = v49;
    v51 = OUTLINED_FUNCTION_25_94();
    v112 = v39;
    v103 = *&v43;
    v25 = v43 + v39;
    v110 = v48;
    v102 = sub_1E40BF114(v51, v52, v10);
    v53 = v48 + v102;
    v107 = v54;
    v108 = v50;
    v109 = v45;
  }

  v55 = OUTLINED_FUNCTION_17_4();
  v57 = v25 + sub_1E3952BE0(v55, v56, v105, v3);
  v58 = OUTLINED_FUNCTION_6();
  v62 = v53 + sub_1E3952BE0(v58, v59, v60, v61);
  if (v57 > v62)
  {
    v62 = v57;
  }

  v63 = (a1 - v62) * 0.5;
  v64 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v64, v65, v66);
  v67 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v67, v68, v69);
  OUTLINED_FUNCTION_29_93();
  v114.origin.y = (v71 - v70) * 0.5;
  rect = v114.origin.y;
  v114.origin.x = v63;
  v100 = v63;
  v114.size.width = v112;
  v114.size.height = v113;
  MaxX = CGRectGetMaxX(v114);
  v73 = OUTLINED_FUNCTION_6();
  v104 = MaxX + sub_1E3952BE0(v73, v74, v75, v76);
  v77 = OUTLINED_FUNCTION_6();
  v81 = v25 + sub_1E3952BE0(v77, v78, v79, v80);
  v82 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v82, v83, v84, v85);
  OUTLINED_FUNCTION_37_73();
  v115.origin.x = v63;
  v115.origin.y = rect;
  v115.size.width = v112;
  v115.size.height = v113;
  MaxY = CGRectGetMaxY(v115);
  v87 = OUTLINED_FUNCTION_6();
  v90 = MaxY + sub_1E3952BD8(v87, v88, v89);
  v116.origin.x = v81;
  v116.origin.y = v90;
  v116.size.width = v102;
  v116.size.height = v107;
  v91 = CGRectGetMaxX(v116);
  v92 = OUTLINED_FUNCTION_6();
  v96 = v91 + sub_1E3952BE0(v92, v93, v94, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1E4298AD0;
  *(v97 + 32) = v100;
  *(v97 + 40) = rect;
  *(v97 + 48) = v112;
  *(v97 + 56) = v113;
  *(v97 + 64) = v104;
  *(v97 + 72) = rect;
  *(v97 + 80) = v103;
  *(v97 + 88) = v109;
  *(v97 + 96) = v96;
  *(v97 + 104) = v90;
  *(v97 + 112) = v110;
  *(v97 + 120) = v108;
  result = v81;
  *(v97 + 128) = v81;
  *(v97 + 136) = v90;
  *(v97 + 144) = v102;
  *(v97 + 152) = v107;
  return result;
}