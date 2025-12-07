uint64_t sub_224D56DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_224D56DEC(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v33 = v30 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    a1 = v42;
    v6 = v43;
    v7 = v44;
    v8 = v45;
    v9 = v46;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v30[1] = v7;
  v32 = (v3 + 8);
  v36 = MEMORY[0x277D84F90];
  v31 = a1;
  v13 = v33;
  while (a1 < 0)
  {
    v19 = sub_224DAF878();
    if (!v19 || (*&v38 = v19, sub_224DAF538(), swift_dynamicCast(), v18 = *&v41[0], v16 = v8, v17 = v9, !*&v41[0]))
    {
LABEL_26:
      sub_224A3B7E4(a1);
      return;
    }

LABEL_19:
    v37 = v17;
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v35 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
    sub_224DAF528();
    sub_224DAC6C8();
    (*v32)(v13, v34);

    if (v39)
    {
      sub_224A36F98(&v38, v41);
      sub_224A36F98(v41, &v38);
      v20 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_224A5C040(0, v20[2] + 1, 1, v20);
        v47 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v36 = sub_224A5C040((v22 > 1), v23 + 1, 1, v20);
        v47 = v36;
      }

      else
      {
        v36 = v20;
      }

      v24 = v39;
      v25 = v40;
      v26 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
      MEMORY[0x28223BE20](v26, v26);
      v28 = v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      sub_224A5C064(v23, v28, &v47, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    else
    {
      sub_224A3311C(&v38, &unk_27D6F4700, &unk_224DB3A10);
    }

    v8 = v16;
    v9 = v37;
    a1 = v31;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_224D5726C(unint64_t a1, unint64_t a2)
{
  v18[1] = MEMORY[0x277D84FA0];
  if (a1)
  {
    if (a1 >> 62)
    {
      v4 = sub_224DAF838();
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_33;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA5DCC0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 intentType];
      if (v8)
      {

        v9 = [v7 defaultIntentReference];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          sub_224A3DC84(v18, [v7 extensionIdentity]);
        }
      }

      else
      {
      }
    }
  }

LABEL_16:
  if (!a2)
  {
    return;
  }

  if (a2 >> 62)
  {
    v11 = sub_224DAF838();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
LABEL_33:
    __break(1u);
    return;
  }

  for (j = 0; j != v11; ++j)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AA5DCC0](j, a2);
    }

    else
    {
      v13 = *(a2 + 8 * j + 32);
    }

    v14 = v13;
    v15 = [v13 intentType];
    if (v15)
    {

      v16 = [v14 defaultIntentReference];
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        sub_224A3DC84(v18, [v14 extensionIdentity]);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_224D574B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E0, &unk_224DC1B70);
    v3 = sub_224DAF918();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_224DAFE68();
      if (v8)
      {
        MEMORY[0x22AA5E1E0](1);

        sub_224DAEE78();
      }

      else
      {
        MEMORY[0x22AA5E1E0](0);
      }

      result = sub_224DAFEA8();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) != 0)
      {
        do
        {
          v20 = (*(v3 + 48) + 16 * v12);
          v21 = v20[1];
          if (v21)
          {
            if (v8)
            {
              v22 = *v20 == v9 && v21 == v8;
              if (v22 || (result = sub_224DAFD88(), (result & 1) != 0))
              {
LABEL_3:

                goto LABEL_4;
              }
            }

            else
            {
            }
          }

          else
          {

            if (!v8)
            {
              goto LABEL_3;
            }
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
      }

      *(v5 + 8 * v13) = v14 | v15;
      v16 = (*(v3 + 48) + 16 * v12);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_224D5767C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_224DAF838())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35D8, &qword_224DB3BB0);
      v3 = sub_224DAF918();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_224DAF838();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA5DCC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_224DAF698();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_224DAF6A8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_224DAF698();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_224DAF6A8();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_224D5796C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_224DAF838())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
      v3 = sub_224DAF918();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_224DAF838();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x22AA5DCC0](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_224DAB338();
    sub_224A39EF8(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v10 = sub_224DAED88();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_224A39EF8(&unk_281350FD0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        if (sub_224DAEDD8())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_224D57C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
    v3 = sub_224DAF918();
    v4 = 0;
    v29 = v3 + 56;
    v26 = v1;
    v27 = a1 + 32;
    while (1)
    {
      v5 = *(v27 + v4);
      v28 = v4 + 1;
      sub_224DAFE68();
      sub_224DAEE78();

      result = sub_224DAFEA8();
      v7 = ~(-1 << *(v3 + 32));
      v8 = result & v7;
      v9 = (result & v7) >> 6;
      v10 = *(v29 + 8 * v9);
      v11 = 1 << (result & v7);
      if ((v11 & v10) != 0)
      {
        do
        {
          v12 = *(*(v3 + 48) + v8);
          v13 = 0xD000000000000014;
          if (v12 == 2)
          {
            v13 = 0x64657472617473;
          }

          v14 = 0xE700000000000000;
          if (v12 != 2)
          {
            v14 = 0x8000000224DC4690;
          }

          v15 = 0x437363697274656DLL;
          if (!*(*(v3 + 48) + v8))
          {
            v15 = 0xD000000000000012;
          }

          v16 = 0xEE006465676E6168;
          if (!*(*(v3 + 48) + v8))
          {
            v16 = 0x8000000224DC4660;
          }

          if (*(*(v3 + 48) + v8) <= 1u)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (*(*(v3 + 48) + v8) <= 1u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v21 = 0x64657472617473;
            }

            else
            {
              v21 = 0xD000000000000014;
            }

            if (v5 == 2)
            {
              v20 = 0xE700000000000000;
            }

            else
            {
              v20 = 0x8000000224DC4690;
            }

            if (v17 != v21)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v19 = 0x437363697274656DLL;
            v20 = 0xEE006465676E6168;
            if (!v5)
            {
              v19 = 0xD000000000000012;
              v20 = 0x8000000224DC4660;
            }

            if (v17 != v19)
            {
              goto LABEL_33;
            }
          }

          if (v18 == v20)
          {

            goto LABEL_4;
          }

LABEL_33:
          v22 = sub_224DAFD88();

          if (v22)
          {
            goto LABEL_4;
          }

          v8 = (v8 + 1) & v7;
          v9 = v8 >> 6;
          v10 = *(v29 + 8 * (v8 >> 6));
          v11 = 1 << v8;
        }

        while ((v10 & (1 << v8)) != 0);
      }

      *(v29 + 8 * v9) = v10 | v11;
      *(*(v3 + 48) + v8) = v5;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      v4 = v28;
      if (v28 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_224D57F20(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_224DAF838();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_224DAF918();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_224DAF838();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v41 = v4;
    while (1)
    {
      v14 = MEMORY[0x22AA5DCC0](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = sub_224DAF698();
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = sub_224DAF6A8();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = *(v4 + 32 + 8 * v28);
      v30 = sub_224DAF698();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v12 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        a4(0);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = sub_224DAF6A8();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v12 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_224D5823C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CE0, &qword_224DC1B68);
    v3 = sub_224DAF918();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_224DAEE18();
      sub_224DAFE68();
      v27 = v7;
      sub_224DAEE78();
      v8 = sub_224DAFEA8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_224DAEE18();
        v18 = v17;
        if (v16 == sub_224DAEE18() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_224DAFD88();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_224D58430(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x28223BE20](a1, a2);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_224B449EC(sub_224D5C320, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_224B05554(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_224D585D8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v33 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = &v28;
    v29 = v5;
    MEMORY[0x28223BE20](v7, v8);
    v30 = &v28 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v6);
    v31 = 0;
    v32 = v2;
    v5 = 0;
    v12 = *(v2 + 56);
    v2 += 56;
    v11 = v12;
    v13 = 1 << *(v2 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v6 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v5 << 6);
      v34[0] = *(*(v32 + 48) + 8 * v19);
      MEMORY[0x28223BE20](v9, v10);
      *(&v28 - 2) = v34;
      v21 = v20;
      v22 = sub_224B449EC(sub_224D5C320, (&v28 - 4), v33);

      if (v22)
      {
        *&v30[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_224B05554(v30, v29, v31, v32);
          goto LABEL_17;
        }
      }
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v18 = *(v2 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;

  v24 = sub_224D562BC(v26, v5, v2, v27);

  MEMORY[0x22AA5EED0](v26, -1, -1);
LABEL_17:

  return v24;
}

uint64_t sub_224D58898(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_224D585D8(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];

  sub_224DAF7E8();
  v4 = sub_224DAF878();
  if (v4)
  {
    v5 = v4;
    sub_224DAF538();
    v6 = v5;
    do
    {
      v23 = v6;
      v7 = swift_dynamicCast();
      v23 = v24;
      MEMORY[0x28223BE20](v7, v8);
      v22[2] = &v23;
      v9 = sub_224B449EC(sub_224D5C320, v22, a2);
      v10 = v24;
      if (v9)
      {
        v11 = *(v3 + 16);
        if (*(v3 + 24) <= v11)
        {
          sub_224ADEE2C(v11 + 1);
        }

        v3 = v25;
        result = sub_224DAF698();
        v13 = v3 + 56;
        v14 = -1 << *(v3 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v13 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v3 + 48) + 8 * v17) = v10;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_224DAF878();
    }

    while (v6);
  }

  return v3;
}

void sub_224D58AEC(uint64_t a1, void (*a2)(void))
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365168);

  v5 = sub_224DAB228();
  v6 = sub_224DAF278();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    buf = v7;
    *v7 = 136446210;
    v8 = *(a1 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v23 = v6;
      v27 = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v8, 0);
      v9 = v27;
      v10 = a1 + 32;
      do
      {
        sub_224A3317C(v10, v26);
        __swift_project_boxed_opaque_existential_1(v26, v26[3]);
        v11 = sub_224DAE338();
        v12 = [v11 description];
        v13 = sub_224DAEE18();
        v15 = v14;

        __swift_destroy_boxed_opaque_existential_1(v26);
        v27 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_224A3DFD8((v16 > 1), v17 + 1, 1);
          v9 = v27;
        }

        *(v9 + 16) = v17 + 1;
        v18 = v9 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v10 += 40;
        --v8;
      }

      while (v8);
      v6 = v23;
    }

    v26[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v19 = sub_224DAEDA8();
    v21 = v20;

    v22 = sub_224A33F74(v19, v21, &v28);

    *(buf + 4) = v22;
    _os_log_impl(&dword_224A2F000, v5, v6, "[ReloadConfigurationRecommendations] Ignoring request (unsupported platform) for reload of configuration recommendations for extensions: %{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](buf, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_224D58DD8(uint64_t a1, int a2, uint64_t a3, unint64_t a4, char *a5, uint64_t *a6, uint64_t a7)
{
  v91 = a3;
  v89 = a2;
  v12 = sub_224DAB7B8();
  isa = v12[-1].isa;
  MEMORY[0x28223BE20](v12, v14);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DAB848();
  v85 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v92 = a5;
  sub_224A3796C(&a5[v20], &aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v98)
  {
    sub_224A364AC(a6, a7);
    sub_224A3311C(&aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = sub_224DAEE18();
    *(inited + 40) = v28;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000224DCFE80;
    v29 = sub_224D9FE14(inited);
    swift_setDeallocating();
    sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
    LOBYTE(aBlock) = 17;
    sub_224B67B98();
    sub_224B67BEC();
    v30 = a6;
    sub_224B67C40();
    v31 = sub_224DA93D8();
    sub_224D9F01C(v29);

    v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = sub_224DAEDE8();
    v34 = sub_224DAECC8();

    v35 = [v32 initWithDomain:v33 code:v31 userInfo:v34];

    v36 = sub_224DA1CC8(MEMORY[0x277D84F90]);
    v37 = v35;
    sub_224D4C788(v36, v35, v30);

    return;
  }

  v82 = isa;
  sub_224A36F98(&aBlock, &v101);
  sub_224A364AC(a6, a7);
  if (qword_281351708 != -1)
  {
LABEL_44:
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365168);

  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v87 = v19;
  v80 = a7;
  v79 = a6;
  v83 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&aBlock = v26;
    *v25 = 134349314;
    *(v25 + 4) = *(a1 + 16);

    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_224A33F74(v91, a4, &aBlock);
    _os_log_impl(&dword_224A2F000, v22, v23, "Fetching descriptors for %{public}ld extensions with reason: %{public}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  else
  {
  }

  v81 = isUniquelyReferenced_nonNull_native;
  v12 = dispatch_group_create();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D84F98];
  v90 = v38;
  *(v38 + 16) = MEMORY[0x277D84F98];
  a6 = (v38 + 16);
  v93 = swift_allocObject();
  *(v93 + 16) = v39;
  a7 = *(a1 + 16);
  if (!a7)
  {
LABEL_40:
    v70 = MEMORY[0x277D84F90];
    v71 = v92;
    v72 = swift_allocObject();
    v73 = v93;
    v72[2] = v71;
    v72[3] = v73;
    v72[4] = v90;
    v72[5] = sub_224D5BF20;
    v72[6] = v87;
    v99 = sub_224D5C2B8;
    v100 = v72;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v97 = sub_224A39F40;
    v98 = &block_descriptor_209;
    v74 = _Block_copy(&aBlock);

    v75 = v71;

    v76 = v84;
    sub_224DAB7E8();
    v95[0] = v70;
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v77 = v86;
    v78 = v83;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v74);

    (*(v82 + 1))(v77, v78);
    (*(v85 + 8))(v76, v81);

    __swift_destroy_boxed_opaque_existential_1(&v101);

    return;
  }

  a1 += 32;
  v88 = a4;
  while (1)
  {
    sub_224A3317C(a1, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v98);
    v43 = sub_224DAE338();
    __swift_project_boxed_opaque_existential_1(&v101, v102);
    if ((sub_224DAD5D8() & 1) == 0)
    {
      dispatch_group_enter(v12);
      v40 = swift_allocObject();
      v40[2] = v90;
      v40[3] = v43;
      v40[4] = v93;
      v40[5] = v12;

      v41 = v43;
      v42 = v12;
      sub_224A365A0(&aBlock, v89 & 1, v91, a4, sub_224D5C2B0, v40);

      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v101, v102);
    sub_224DAD5A8();
    v44 = sub_224DACF78();

    if (*(v44 + 16))
    {
      sub_224A3E7EC(v43);
      if (v45)
      {
      }
    }

    __swift_project_boxed_opaque_existential_1(&v101, v102);
    v46 = sub_224DAD5F8();
    if (*(v46 + 16) && (v47 = sub_224A3E7EC(v43), (v48 & 1) != 0))
    {
      a4 = *(*(v46 + 56) + 8 * v47);
    }

    else
    {
      a4 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(&v101, v102);
    v49 = sub_224DAD608();
    if (*(v49 + 16) && (v50 = sub_224A3E7EC(v43), (v51 & 1) != 0))
    {
      isUniquelyReferenced_nonNull_native = *(*(v49 + 56) + 8 * v50);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    sub_224DAE9F8();
    v52 = v43;
    v19 = sub_224DAE9B8();
    swift_beginAccess();
    v53 = *a6;
    if ((*a6 & 0xC000000000000001) != 0)
    {
      if (v53 < 0)
      {
        v54 = *a6;
      }

      else
      {
        v54 = v53 & 0xFFFFFFFFFFFFFF8;
      }

      v55 = sub_224DAF838();
      if (__OFADD__(v55, 1))
      {
        goto LABEL_42;
      }

      *a6 = sub_224D2CDB4(v54, v55 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *a6;
    v56 = v94;
    *a6 = 0x8000000000000000;
    v58 = sub_224A3E7EC(v52);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    a4 = v57;
    if (v56[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B27EA4();
      }

      goto LABEL_35;
    }

    sub_224B13F9C(v61, isUniquelyReferenced_nonNull_native);
    v62 = sub_224A3E7EC(v52);
    if ((a4 & 1) != (v63 & 1))
    {
      break;
    }

    v58 = v62;
LABEL_35:
    v64 = v94;
    if (a4)
    {
      v65 = v94[7];
      v66 = *(v65 + 8 * v58);
      *(v65 + 8 * v58) = v19;
    }

    else
    {
      v94[(v58 >> 6) + 8] |= 1 << v58;
      *(v64[6] + 8 * v58) = v52;
      *(v64[7] + 8 * v58) = v19;
      v67 = v64[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_43;
      }

      v64[2] = v69;
    }

    *a6 = v64;
    swift_endAccess();

    a4 = v88;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    a1 += 40;
    if (!--a7)
    {
      goto LABEL_40;
    }
  }

  sub_224DAF538();
  sub_224A3D418(v79, v80);
  sub_224DAFDD8();
  __break(1u);
}

id sub_224D599BC(void *a1, void *a2)
{
  v3 = [a1 nativeContainerBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_224DAEE18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = sub_224DAE348();
  if (v7)
  {
    if (v5 == v8 && v7 == v9)
    {

LABEL_17:

      return a1;
    }

    v11 = sub_224DAFD88();

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281365168);
  sub_224A3317C(a2, v37);
  v13 = a1;
  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446722;
    v18 = [v13 extensionBundleIdentifier];
    v19 = sub_224DAEE18();
    v21 = v20;

    v22 = sub_224A33F74(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = [v13 kind];
    v24 = sub_224DAEE18();
    v26 = v25;

    v27 = sub_224A33F74(v24, v26, &v36);

    *(v16 + 14) = v27;
    *(v16 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v28 = sub_224DAE348();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v31 = sub_224A33F74(v28, v30, &v36);

    *(v16 + 24) = v31;
    _os_log_impl(&dword_224A2F000, v14, v15, "Migrating descriptor nativeContainerBundleIdentifier: %{public}s:%{public}s to %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  [v13 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
  swift_dynamicCast();
  v33 = v36;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_224DAE348();
  v34 = sub_224DAEDE8();

  [v33 setNativeContainerBundleIdentifier_];

  [v33 copy];
  sub_224DAF758();

  swift_unknownObjectRelease();
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  swift_dynamicCast();
  return v36;
}

unint64_t sub_224D59E14(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v11 = MEMORY[0x277D84F90];
  v3 = a1;
  result = sub_224DAE9C8();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    sub_224DAE9F8();
    sub_224DAE9E8();
    sub_224DAE9D8();
    v10 = sub_224DAE9B8();

    return v10;
  }

  result = sub_224DAF838();
  v6 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA5DCC0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      sub_224D599BC(v8, a2);
      MEMORY[0x22AA5D350]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_224D59FB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  v16 = *(a1 + 16);
  v8 = [v16 extensionIdentity];
  v9 = sub_224DAF518();

  if (v9)
  {
    v10 = v16;
  }

  else
  {
    [v16 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v11 = v17;
    v12 = [v17 extensionIdentity];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_224DAE328();
    sub_224DA9FF8();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    v14 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A838C0(v7, v12 + v14, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();

    v15 = *(a1 + 16);
    *(a1 + 16) = v11;

    *(a1 + 24) = 1;
  }
}

void sub_224D5A1FC(uint64_t a1)
{
  v17 = *(a1 + 16);
  v2 = [v17 intentRecommendationsContainer];
  if (v2 && (v3 = v2, v4 = [v2 _didAdjustRecommendationCount], v3, (v4 & 1) != 0) || objc_msgSend(v17, sel__didMigrateToRecommendationsContainer))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365168);
    v6 = v17;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19[0] = v10;
      *v9 = 136446210;
      v11 = [v6 extensionBundleIdentifier];
      v12 = sub_224DAEE18();
      v14 = v13;

      v15 = sub_224A33F74(v12, v14, v19);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_224A2F000, v7, v8, "Cached descriptor for %{public}s needed intent recommendation updating - resaving.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    [v6 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();

    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v16 = *(a1 + 16);
    *(a1 + 16) = v18;

    *(a1 + 24) = 1;
  }

  else
  {
  }
}

void sub_224D5A488(uint64_t a1, void *a2)
{
  v40 = *(a1 + 16);
  v4 = [v40 sdkVersion];
  v5 = sub_224DAEE18();
  v7 = v6;

  if (v5 == sub_224DAEE18() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_224DAFD88();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = sub_224DAE248();
  v13 = v12;
  if (v11 == sub_224DAEE18() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_224DAFD88();

    if (v16)
    {
LABEL_13:

      return;
    }

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281365168);
    sub_224A3317C(a2, v42);
    v18 = v40;
    v19 = sub_224DAB228();
    v20 = sub_224DAF2A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136446722;
      v23 = [v18 extensionBundleIdentifier];
      v24 = sub_224DAEE18();
      v26 = v25;

      v27 = sub_224A33F74(v24, v26, &v41);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2082;
      v28 = [v18 kind];
      v29 = sub_224DAEE18();
      v31 = v30;

      v32 = sub_224A33F74(v29, v31, &v41);

      *(v21 + 14) = v32;
      *(v21 + 22) = 2082;
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v33 = sub_224DAE248();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v42);
      v36 = sub_224A33F74(v33, v35, &v41);

      *(v21 + 24) = v36;
      _os_log_impl(&dword_224A2F000, v19, v20, "Migrating descriptor sdkVersion: %{public}s:%{public}s to %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v22, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    [v18 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v37 = v41;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_224DAE248();
    v38 = sub_224DAEDE8();

    [v37 setSdkVersion_];

    v39 = *(a1 + 16);
    *(a1 + 16) = v37;

    *(a1 + 24) = 1;
  }
}

void sub_224D5A938(uint64_t a1, void *a2)
{
  v23 = *(a1 + 16);
  if ([v23 platform] || (__swift_project_boxed_opaque_existential_1(a2, a2[3]), !sub_224DAE3A8()))
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281365168);
    sub_224A3317C(a2, v25);
    v5 = v23;
    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136446722;
      v10 = [v5 extensionBundleIdentifier];
      v11 = sub_224DAEE18();
      v13 = v12;

      v14 = sub_224A33F74(v11, v13, &v24);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2082;
      v15 = [v5 kind];
      v16 = sub_224DAEE18();
      v18 = v17;

      v19 = sub_224A33F74(v16, v18, &v24);

      *(v8 + 14) = v19;
      *(v8 + 22) = 2050;
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v20 = sub_224DAE3A8();
      __swift_destroy_boxed_opaque_existential_1(v25);
      *(v8 + 24) = v20;
      _os_log_impl(&dword_224A2F000, v6, v7, "Migrating descriptor platform: %{public}s:%{public}s to %{public}lu", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    [v5 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v21 = v24;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    [v21 setPlatform_];

    v22 = *(a1 + 16);
    *(a1 + 16) = v21;

    *(a1 + 24) = 1;
  }
}

void sub_224D5AC9C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 16) nativeContainerBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_224DAEE18();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = sub_224DAE348();
  if (!v8)
  {

    goto LABEL_12;
  }

  if (v6 != v9 || v8 != v10)
  {
    v12 = sub_224DAFD88();

    if (v12)
    {
      return;
    }

LABEL_12:
    v13 = *(a1 + 16);
    v14 = sub_224D599BC(v13, a2);

    v15 = *(a1 + 16);
    *(a1 + 16) = v14;

    *(a1 + 24) = 1;
    return;
  }
}

void sub_224D5ADE8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = v8;
  sub_224DAE308();
  v10 = sub_224DAE918();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
  }

  else
  {
    v12 = sub_224DAE8F8();
    (*(v11 + 8))(v7, v10);
    if ([v9 requestedDataProtection] == v12)
    {
    }

    else
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365168);
      v14 = v9;
      v15 = sub_224DAB228();
      v16 = sub_224DAF2A8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33[0] = v31;
        *v17 = 138543874;
        v19 = [v14 extensionIdentity];
        *(v17 + 4) = v19;
        *v18 = v19;
        *(v17 + 12) = 2082;
        v20 = [v14 kind];
        v21 = sub_224DAEE18();
        v23 = v22;

        v24 = sub_224A33F74(v21, v23, v33);

        *(v17 + 14) = v24;
        *(v17 + 22) = 2082;
        v32 = v12;
        type metadata accessor for CHSDataProtectionLevel(0);
        v25 = sub_224DAEE28();
        v27 = sub_224A33F74(v25, v26, v33);

        *(v17 + 24) = v27;
        _os_log_impl(&dword_224A2F000, v15, v16, "Migrating CHSWidgetDescriptor requestedDataProtection: %{public}@:%{public}s to %{public}s", v17, 0x20u);
        sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v18, -1, -1);
        v28 = v31;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v28, -1, -1);
        MEMORY[0x22AA5EED0](v17, -1, -1);
      }

      [v14 mutableCopy];
      sub_224DAF758();
      swift_unknownObjectRelease();
      sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
      swift_dynamicCast();
      v29 = v32;
      [v32 setRequestedDataProtection_];

      v30 = *(a1 + 16);
      *(a1 + 16) = v29;

      *(a1 + 24) = 1;
    }
  }
}

void *sub_224D5B1EC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C20, &qword_224DC1A30);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;
  v5 = a1;
  sub_224D59FB0(inited, a2);
  sub_224D5A1FC(inited);
  sub_224D5A488(inited, a2);
  sub_224D5A938(inited, a2);
  sub_224D5AC9C(inited, a2);
  sub_224D5ADE8(inited, a2);
  if (*(inited + 24) == 1)
  {
    v6 = *(inited + 16);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_224D5B2BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = sub_224DAE918();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = v13;
  sub_224DAE308();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
    v15 = 2;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_224DAE8F8();
    (*(v9 + 8))(v12, v8);
  }

  if ([v14 requestedDataProtection] == v15)
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281365168);
    v17 = v14;
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v20 = 138543874;
      v22 = [v17 extensionIdentity];
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2082;
      v23 = [v17 kind];
      v24 = sub_224DAEE18();
      v26 = v25;

      v27 = sub_224A33F74(v24, v26, v36);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2082;
      v35 = v15;
      type metadata accessor for CHSDataProtectionLevel(0);
      v28 = sub_224DAEE28();
      v30 = sub_224A33F74(v28, v29, v36);

      *(v20 + 24) = v30;
      _os_log_impl(&dword_224A2F000, v18, v19, "Migrating CHSControlDescriptor requestedDataProtection: %{public}@:%{public}s to %{public}s", v20, 0x20u);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    [v17 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_27D6F5228, 0x277CFA2A0);
    swift_dynamicCast();
    v32 = v35;
    [v35 setRequestedDataProtection_];

    v33 = *(a1 + 16);
    *(a1 + 16) = v32;

    *(a1 + 24) = 1;
  }
}

void sub_224D5B724(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = sub_224DAE918();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = v13;
  sub_224DAE308();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
    v15 = 2;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_224DAE8F8();
    (*(v9 + 8))(v12, v8);
  }

  if ([v14 requestedDataProtection] == v15)
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281365168);
    v17 = v14;
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v20 = 138543618;
      v23 = [v17 extensionIdentity];
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2082;
      v30 = v15;
      type metadata accessor for CHSDataProtectionLevel(0);
      v24 = sub_224DAEE28();
      v26 = sub_224A33F74(v24, v25, v31);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_224A2F000, v18, v19, "Migrating CHSSessionPlatterDescriptor requestedDataProtection: %{public}@ to %{public}s", v20, 0x16u);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    [v17 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_27D6F6C10, 0x277CFA2A8);
    swift_dynamicCast();
    v27 = v30;
    [v30 setRequestedDataProtection_];

    v28 = *(a1 + 16);
    *(a1 + 16) = v27;

    *(a1 + 24) = 1;
  }
}

void *sub_224D5BB24(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;
  v9 = a1;
  a5(inited, a2);
  if (*(inited + 24) == 1)
  {
    v10 = *(inited + 16);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

unint64_t sub_224D5BCA8()
{
  result = qword_281352E70;
  if (!qword_281352E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281352E70);
  }

  return result;
}

uint64_t objectdestroy_147Tm()
{
  v1 = sub_224DAD448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_164Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_167Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224D5C198()
{
  sub_224DA9398();
  v1 = *(v0 + 16);

  return sub_224D49098(v1);
}

unint64_t sub_224D5C220()
{
  result = qword_27D6F6CE8;
  if (!qword_27D6F6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6CE8);
  }

  return result;
}

void sub_224D5C348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HostConfigurationPayload(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_224AFCD10(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224D5C3F0(uint64_t a1)
{
  sub_224AFCD10(319);
  if (v1 <= 0x3F)
  {
    sub_224DAF728();
    if (v2 <= 0x3F)
    {
      sub_224D5C4B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224D5C4B8(uint64_t a1)
{
  if (!qword_2813508A8)
  {
    type metadata accessor for CHSWidgetHostActivationState(255);
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813508A8);
    }
  }
}

BOOL sub_224D5C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v26 == v24 && v27 == v25)
  {
  }

  else
  {
    v9 = sub_224DAFD88();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for HostConfigurationPayload(0, a3, a4, v10);
  v12 = *(v11 + 36);
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = v13;
    v17 = sub_224DAF6A8();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = *(v11 + 40);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if ((v20 & 1) == 0)
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    return (v22 & 1) == 0;
  }

  return (v22 & 1) != 0;
}

uint64_t sub_224D5C6C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - v7;
  v10 = type metadata accessor for HostConfigurationPayload(0, *(a1 + 16), *(a1 + 24), v9);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v18, v4);
    v23 = 0x203A74736F68;
    v24 = 0xE600000000000000;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v20 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v20);

    v21 = v23;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v11 + 32))(v15, v18, v10);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x22AA5D210](0x3A64616F6C796170, 0xE900000000000020);
    sub_224DAFD48();
    v21 = v23;
    (*(v11 + 8))(v15, v10);
  }

  return v21;
}

uint64_t sub_224D5C9C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v45 = &v43 - v8;
  v10 = type metadata accessor for HostConfigurationPayload(0, a3, a4, v9);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v43 - v12;
  v43 = a3;
  v44 = a4;
  v15 = _s19ConfigurationChangeOMa(0, a3, a4, v14);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v43 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2, v25);
  v28 = &v43 - v27;
  v29 = *(v26 + 48);
  v30 = *(v16 + 16);
  v30(&v43 - v27, v51, v15);
  v30(&v28[v29], v52, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30(v23, v28, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v47;
      v38 = v48;
      (*(v47 + 32))(v13, &v28[v29], v48);
      v35 = sub_224D5C510(v23, v13, v43, v44);
      v40 = *(v39 + 8);
      v40(v13, v38);
      v40(v23, v38);
      goto LABEL_12;
    }

    v37 = v47;
    v36 = v48;
    goto LABEL_9;
  }

  v30(v20, v28, v15);
  v23 = v20;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = v49;
    v36 = v50;
LABEL_9:
    (*(v37 + 8))(v23, v36);
    v35 = 0;
    v16 = v46;
    v15 = TupleTypeMetadata2;
    goto LABEL_12;
  }

  v32 = v49;
  v31 = v50;
  v33 = v45;
  (*(v49 + 32))(v45, &v28[v29], v50);
  sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
  v52 = v23;
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v55 == v53 && v56 == v54)
  {
    v34 = *(v32 + 8);
    v34(v33, v31);

    v34(v52, v31);
    v35 = 1;
  }

  else
  {
    v35 = sub_224DAFD88();
    v41 = *(v32 + 8);
    v41(v33, v31);

    v41(v52, v31);
  }

LABEL_12:
  (*(v16 + 8))(v28, v15);
  return v35 & 1;
}

uint64_t sub_224D5CF3C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    result = sub_224DAF798();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      sub_224DAF9B8();
      sub_224DAF9F8();
      v1 = v19;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_224A3E204(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224D5D150(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_224DAFA58();
    v5 = v4;
    v6 = sub_224DAFB38();
    v8 = v7;
    v9 = MEMORY[0x22AA5DE00](v3, v5, v6, v7);
    sub_224A3E204(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_224A3E204(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_224DAF798();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_224D6DBB8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_224A3E204(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_224D5D284(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_224DAF7D8();
    v5 = v4;
    v6 = sub_224DAF898();
    v8 = v7;
    v9 = MEMORY[0x22AA5DB70](v3, v5, v6, v7);
    sub_224A3E204(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_224A3E204(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_224DAF798();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_224A94D00(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_224A3E204(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_224D5D3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - v6;
  v8 = sub_224DAF798();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v16 + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 + 48);
    sub_224C16918(v7, &v7[v11], v8, *(a1 + 36), 0, a1);
    v12 = sub_224DAAF48();
    (*(*(v12 - 8) + 32))(a2, v7, v12);
    v13 = *(v4 + 48);
    v14 = sub_224DAB018();
    (*(*(v14 - 8) + 32))(a2 + v13, &v7[v11], v14);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_224D5D590(uint64_t a1)
{
  v2 = sub_224DAF798();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_224A73280(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_224D5D5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_224DAF798();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_224D6DD0C(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_224DAC918();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_224D5D6CC(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_224DAFA58();
    v7 = v6;
    v8 = sub_224DAFB38();
    v10 = v9;
    v11 = MEMORY[0x22AA5DE00](v5, v7, v8, v9);
    sub_224A3E204(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_224A3E204(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_224DAF798();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(&v14, v5, v7, v4 != 0, a1);
  sub_224A3E204(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_224D5D824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_224DAB798();
  __swift_allocate_value_buffer(v5, a2);
  *__swift_project_value_buffer(v5, a2) = a3;
  v6 = *(*(v5 - 8) + 104);

  return v6();
}

uint64_t sub_224D5D8B8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_224DAC0E8();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_224D5D920(__n128 a1)
{
  if (*(v1 + 104))
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = sub_224DAC0D8();
    *(v1 + 104) = v2;
  }

  return v2;
}

uint64_t sub_224D5D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v36 = a6;
  v37 = a8;
  v35 = a5;
  v38 = a2;
  v39 = a9;
  v13 = sub_224DAC268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAC198();
  (*(v14 + 16))(v17, a3, v13);
  sub_224A3317C(a7, v42);
  sub_224A3317C(a1, &v40);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = a4;
  *(v22 + 24) = v23;
  (*(v14 + 32))(v22 + v19, v17, v13);
  *(v22 + v20) = v36;
  sub_224A36F98(v42, v22 + v21);
  v24 = v18;
  sub_224A36F98(&v40, v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v25 = sub_224DAC1A8();
  v26 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v27 = sub_224DABDB8();
  v28 = *v26;
  v29 = *(v28 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v29 + 16));
  sub_224A7E188(v28, v27, &v40);
  os_unfair_lock_unlock(*(v29 + 16));

  if (v41)
  {
    sub_224A36F98(&v40, v42);
    sub_224A3317C(v42, &v40);
    v30 = swift_allocObject();
    sub_224A36F98(&v40, v30 + 16);
    *(v30 + 56) = v25;

    v31 = sub_224DAC1A8();

    result = __swift_destroy_boxed_opaque_existential_1(v42);
    v25 = v31;
  }

  else
  {
    result = sub_224A3311C(&v40, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v33 = MEMORY[0x277CF9950];
  v34 = v39;
  v39[3] = v24;
  v34[4] = v33;
  *v34 = v25;
  return result;
}

uint64_t sub_224D5DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v43 = a6;
  v44 = a4;
  v38 = a5;
  v42 = a3;
  v6 = sub_224DAB258();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v34 - v11;
  v13 = sub_224DA9878();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v34 - v20;
  v22 = sub_224DA9688();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_224DAC3F8();
  v36 = v12;
  v37 = v23;
  v42 = v22;
  sub_224DA9808();
  sub_224DA9768();
  v35 = *(v14 + 8);
  v35(v18, v13);
  v27 = v38;
  v28 = v38[3];
  v34[2] = v38[4];
  v38 = v28;
  v34[1] = __swift_project_boxed_opaque_existential_1(v27, v28);
  if (qword_281351810 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAA528();
  __swift_project_value_buffer(v29, qword_281365180);
  v30 = v36;
  (*(v14 + 16))(v36, v21, v13);
  (*(v14 + 56))(v30, 0, 1, v13);
  v31 = MEMORY[0x277CC9578];
  sub_224A6018C(&qword_281351A30, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_224A6018C(&qword_281351A48, v31, MEMORY[0x277CC9580]);
  sub_224DAA3E8();
  v32 = v37;
  sub_224A3311C(v30, &qword_27D6F32B0, &qword_224DB3EA0);
  v35(v21, v13);
  (*(v32 + 8))(v26, v42);
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  return sub_224DAE1F8();
}

uint64_t sub_224D5E224(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE1F8();
  return sub_224DAC188();
}

uint64_t sub_224D5E270(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    sub_224D5E390(v6);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_224D5E390(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - v11;
  sub_224DAC218();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &qword_27D6F56C0, &unk_224DB3580);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_224DAA1F8();
  if (v14)
  {
  }

  else
  {
    v15 = sub_224DAC248();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v18 = *(v17 + 1);

    if (v18)
    {

      __swift_project_boxed_opaque_existential_1((v2 + 152), *(v2 + 176));
      sub_224B567E4(a1);
    }
  }

  return (*(v9 + 8))(v12, v8);
}

void sub_224D5E5C4(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D5E678(a1, a3);
  }

  else
  {
    v5 = sub_224DAE4F8();
    (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }
}

uint64_t sub_224D5E678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v329 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v312 = &v290 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v313 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v296 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v314 = &v290 - v11;
  v339 = sub_224DAB258();
  KeyPath = *(v339 - 8);
  v13 = MEMORY[0x28223BE20](v339, v12);
  v304 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v294 = &v290 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v326 = &v290 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v325 = &v290 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v322 = &v290 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v306 = &v290 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v291 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v300 = &v290 - v31;
  v301 = sub_224DA9428();
  v303 = *(v301 - 8);
  MEMORY[0x28223BE20](v301, v32);
  v292 = &v290 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DAD158();
  v335 = *(v34 - 8);
  v336 = v34;
  MEMORY[0x28223BE20](v34, v35);
  v302 = &v290 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_224DAE4F8();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328, v37);
  v344 = &v290 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DAE478();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v341 = &v290 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = sub_224DAB728();
  v330 = *(v331 - 8);
  v43 = MEMORY[0x28223BE20](v331, v42);
  v338 = &v290 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v290 - v46;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v49 = MEMORY[0x28223BE20](v319, v48);
  v310 = &v290 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v309 = &v290 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v308 = &v290 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v323 = &v290 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v315 = &v290 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v332 = &v290 - v65;
  MEMORY[0x28223BE20](v64, v66);
  v68 = &v290 - v67;
  v69 = sub_224DAC268();
  v70 = *(v69 - 8);
  v72 = MEMORY[0x28223BE20](v69, v71);
  v311 = &v290 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v293 = &v290 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v324 = &v290 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v321 = &v290 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v320 = &v290 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v333 = &v290 - v88;
  MEMORY[0x28223BE20](v87, v89);
  v91 = &v290 - v90;
  v92 = sub_224DABE18();
  v93 = *(v92 - 8);
  v95 = MEMORY[0x28223BE20](v92, v94);
  v305 = &v290 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x28223BE20](v95, v97);
  *&v334 = &v290 - v99;
  MEMORY[0x28223BE20](v98, v100);
  v102 = &v290 - v101;
  v342 = *(v70 + 16);
  v343 = v70 + 16;
  v342(v91, a1, v69);
  sub_224DABD88();
  v103 = *(v347 + 328);
  v346 = a1;
  v295 = v103;
  sub_224DAC178();
  if (!v349[0])
  {
    (*(v93 + 8))(v102, v92);
    return (*(v327 + 56))(v329, 1, 1, v328);
  }

  v307 = v102;
  v316 = v93;
  v317 = v92;
  v104 = v349[0];

  sub_224DADDE8();

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(v349, v349[3]);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v349);
  sub_224DABE58();
  v105 = sub_224DAC248();
  v106 = *(v70 + 8);
  v106(v91, v69);
  [v105 family];

  sub_224DAE488();
  sub_224DAB5F8();
  v298 = v104;
  sub_224DABE58();
  sub_224DAC258();
  v340 = v106;
  v341 = (v70 + 8);
  v106(v91, v69);
  sub_224DAB628();
  (*(v330 + 16))(v338, v47, v331);
  sub_224DAE4D8();
  v107 = v332;
  sub_224A3796C(v68, v332, &qword_27D6F5238, &qword_224DBB1E0);
  v109 = v335;
  v108 = v336;
  v110 = v335 + 48;
  v318 = *(v335 + 48);
  v111 = v318(v107, 1, v336);
  v337 = v69;
  v338 = v68;
  v299 = v47;
  v297 = v110;
  if (v111 == 1)
  {
    v112 = v69;
    sub_224A3311C(v107, &qword_27D6F5238, &qword_224DBB1E0);
    v113 = v306;
    (*(KeyPath + 16))(v306, v347 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v339);
    v342(v333, v346, v69);
    v114 = v316;
    v115 = *(v316 + 16);
    v116 = v307;
    v117 = v317;
    v115(v334, v307, v317);
    v118 = v305;
    v115(v305, v116, v117);
    swift_retain_n();
    v119 = sub_224DAB228();
    v120 = sub_224DAF288();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v349[0] = v122;
      *v121 = 136315650;
      sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v123 = v333;
      v124 = sub_224DAFD28();
      v126 = v125;
      v340(v123, v112);
      v127 = sub_224A33F74(v124, v126, v349);

      *(v121 + 4) = v127;
      *(v121 + 12) = 2080;
      sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v128 = v334;
      v129 = sub_224DAFD28();
      v131 = v130;
      v132 = *(v316 + 8);
      v132(v128, v117);
      v133 = sub_224A33F74(v129, v131, v349);

      *(v121 + 14) = v133;
      *(v121 + 22) = 1024;
      v134 = sub_224DAC108();
      v135 = v305;
      v136 = sub_224D42370(v305, v134);
      v137 = v347;

      v132(v135, v317);
      *(v121 + 24) = v136;

      _os_log_impl(&dword_224A2F000, v119, v120, "Missing environment for: %s (%s) - store has timeline key - %{BOOL}d", v121, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v122, -1, -1);
      MEMORY[0x22AA5EED0](v121, -1, -1);

      v138 = v339;
      (*(KeyPath + 8))(v306, v339);
      v139 = v137;
    }

    else
    {
      v139 = v347;

      v151 = *(v114 + 8);
      v151(v118, v117);

      v151(v334, v117);
      v340(v333, v112);
      v138 = v339;
      (*(KeyPath + 8))(v113, v339);
    }

    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
    sub_224DAE588();
    v152 = swift_allocObject();
    v334 = xmmword_224DB3100;
    *(v152 + 16) = xmmword_224DB3100;
    sub_224DAE578();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D60, &qword_224DC2168);
    sub_224DAE768();
    *(swift_allocObject() + 16) = v334;
    sub_224DAE758();
    sub_224DAE4B8();
    v153 = v338;
    v148 = KeyPath;
    v154 = v322;
    v155 = v315;
    v156 = v320;
  }

  else
  {
    v141 = v302;
    (*(v109 + 32))(v302, v107, v108);
    swift_getKeyPath();
    sub_224DAD038();
    sub_224DAE4B8();
    swift_getKeyPath();
    v142 = sub_224DAD0B8();
    v143 = v142;
    v144 = *(v142 + 16);
    if (v144)
    {
      v145 = sub_224B0CD70(*(v142 + 16), 0);
      v146 = *(sub_224DAE588() - 8);
      v147 = sub_224B2FE58(v349, &v145[(*(v146 + 80) + 32) & ~*(v146 + 80)], v144, v143);
      result = sub_224A3B7E4(v349[0]);
      v148 = KeyPath;
      v149 = v303;
      if (v147 != v144)
      {
        __break(1u);
        return result;
      }

      v138 = v339;
      v150 = v301;
    }

    else
    {

      v138 = v339;
      v148 = KeyPath;
      v150 = v301;
      v149 = v303;
    }

    sub_224DAE4B8();
    swift_getKeyPath();
    v157 = sub_224DAD128();
    sub_224D405BC(v157);

    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAD058();
    sub_224DAF548();
    sub_224DAE4B8();
    v158 = v300;
    sub_224DAD0D8();
    if ((*(v149 + 48))(v158, 1, v150) == 1)
    {
      (*(v335 + 8))(v141, v336);
      sub_224A3311C(v158, &qword_27D6F6D20, &unk_224DC1FE0);
    }

    else
    {
      v159 = v148;
      v160 = v292;
      (*(v149 + 32))(v292, v158, v150);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D68, &qword_224DC22D0);
      v161 = (*(v291 + 80) + 32) & ~*(v291 + 80);
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_224DB3100;
      (*(v149 + 16))(v162 + v161, v160, v150);
      (*(v149 + 56))(v162 + v161, 0, 1, v150);
      sub_224DAE4B8();
      v163 = v160;
      v148 = v159;
      (*(v149 + 8))(v163, v150);
      (*(v335 + 8))(v141, v336);
    }

    v153 = v338;
    v154 = v322;
    v155 = v315;
    v156 = v320;
    v139 = v347;
  }

  v164 = *(v148 + 16);
  v332 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v165 = v139;
  *&v334 = v148 + 16;
  v333 = v164;
  (v164)(v154, v139 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v138);
  v166 = v337;
  v342(v156, v346, v337);
  sub_224A3796C(v153, v155, &qword_27D6F5238, &qword_224DBB1E0);
  v167 = sub_224DAB228();
  LODWORD(v315) = sub_224DAF278();
  if (os_log_type_enabled(v167, v315))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v348 = v169;
    *v168 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v170 = sub_224DAE4A8();
    if (v170)
    {
      v171 = v170;
      swift_endAccess();

      v172 = sub_224DAB528();
      v173 = MEMORY[0x22AA5D380](v171, v172);
      v175 = v174;
    }

    else
    {
      v173 = 7104878;
      swift_endAccess();

      v175 = 0xE300000000000000;
    }

    v178 = sub_224A33F74(v173, v175, &v348);

    *(v168 + 4) = v178;
    *(v168 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v179 = v320;
    v166 = v337;
    v180 = sub_224DAFD28();
    v182 = v181;
    v340(v179, v166);
    v183 = sub_224A33F74(v180, v182, &v348);

    *(v168 + 14) = v183;
    *(v168 + 22) = 2082;
    v184 = sub_224DAF708();
    v186 = v185;
    sub_224A3311C(v155, &qword_27D6F5238, &qword_224DBB1E0);
    v187 = sub_224A33F74(v184, v186, &v348);

    *(v168 + 24) = v187;
    _os_log_impl(&dword_224A2F000, v167, v315, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v168, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v169, -1, -1);
    MEMORY[0x22AA5EED0](v168, -1, -1);

    v176 = *(KeyPath + 8);
    v138 = v339;
    v176(v322, v339);
    v177 = v346;
    v165 = v347;
    v153 = v338;
  }

  else
  {

    sub_224A3311C(v155, &qword_27D6F5238, &qword_224DBB1E0);
    v340(v156, v166);
    v176 = *(v148 + 8);
    v176(v154, v138);
    v177 = v346;
  }

  v188 = v165;
  v189 = v325;
  (v333)(v325, v165 + v332, v138);
  v190 = v321;
  v191 = v177;
  v342(v321, v177, v166);
  v192 = v323;
  sub_224A3796C(v153, v323, &qword_27D6F5238, &qword_224DBB1E0);
  v193 = sub_224DAB228();
  LODWORD(v320) = sub_224DAF278();
  v194 = os_log_type_enabled(v193, v320);
  v322 = v176;
  if (v194)
  {
    v195 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v348 = v196;
    *v195 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v197 = sub_224DAE4A8();
    if (v197)
    {
      v198 = v197;
      swift_endAccess();

      v199 = sub_224DAE588();
      v200 = MEMORY[0x22AA5D380](v198, v199);
      v202 = v201;
    }

    else
    {
      v200 = 7104878;
      swift_endAccess();

      v202 = 0xE300000000000000;
    }

    v204 = v321;
    v205 = sub_224A33F74(v200, v202, &v348);

    *(v195 + 4) = v205;
    *(v195 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v206 = v204;
    v166 = v337;
    v207 = sub_224DAFD28();
    v209 = v208;
    v340(v206, v166);
    v210 = sub_224A33F74(v207, v209, &v348);

    *(v195 + 14) = v210;
    *(v195 + 22) = 2082;
    v211 = v323;
    v212 = sub_224DAF708();
    v214 = v213;
    sub_224A3311C(v211, &qword_27D6F5238, &qword_224DBB1E0);
    v215 = sub_224A33F74(v212, v214, &v348);

    *(v195 + 24) = v215;
    _os_log_impl(&dword_224A2F000, v193, v320, "Using rendering schemes(s): %{public}s for key: %{public}s, modifiers: %{public}s", v195, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v196, -1, -1);
    MEMORY[0x22AA5EED0](v195, -1, -1);

    v138 = v339;
    v176 = v322;
    (v322)(v325, v339);
    v203 = v346;
    v188 = v347;
    v153 = v338;
  }

  else
  {

    sub_224A3311C(v192, &qword_27D6F5238, &qword_224DBB1E0);
    v340(v190, v166);
    v176(v189, v138);
    v203 = v191;
  }

  v216 = v326;
  (v333)(v326, v188 + v332, v138);
  v217 = v324;
  v342(v324, v203, v166);
  v218 = v308;
  sub_224A3796C(v153, v308, &qword_27D6F5238, &qword_224DBB1E0);
  v219 = sub_224DAB228();
  v220 = sub_224DAF278();
  if (os_log_type_enabled(v219, v220))
  {
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v348 = v222;
    *v221 = 136315650;
    swift_getKeyPath();
    swift_beginAccess();
    v223 = sub_224DAE4A8();
    if (v223)
    {
      v224 = v223;
      swift_endAccess();

      v225 = sub_224DAE768();
      v226 = MEMORY[0x22AA5D380](v224, v225);
      v228 = v227;
    }

    else
    {
      v226 = 7104878;
      swift_endAccess();

      v228 = 0xE300000000000000;
    }

    v230 = v324;
    v231 = sub_224A33F74(v226, v228, &v348);

    *(v221 + 4) = v231;
    *(v221 + 12) = 2080;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v232 = v337;
    v233 = sub_224DAFD28();
    v235 = v234;
    v340(v230, v232);
    v236 = sub_224A33F74(v233, v235, &v348);

    *(v221 + 14) = v236;
    *(v221 + 22) = 2080;
    v237 = sub_224DAF708();
    v239 = v238;
    sub_224A3311C(v218, &qword_27D6F5238, &qword_224DBB1E0);
    v240 = sub_224A33F74(v237, v239, &v348);

    *(v221 + 24) = v240;
    _os_log_impl(&dword_224A2F000, v219, v220, "Using levelsOfDetail: %s for key: %s, modifiers: %s", v221, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v222, -1, -1);
    MEMORY[0x22AA5EED0](v221, -1, -1);

    v138 = v339;
    v229 = v322;
    (v322)(v326, v339);
    v153 = v338;
  }

  else
  {

    sub_224A3311C(v218, &qword_27D6F5238, &qword_224DBB1E0);
    v340(v217, v166);
    v229 = v176;
    v176(v216, v138);
  }

  swift_getKeyPath();
  v241 = v309;
  sub_224A3796C(v153, v309, &qword_27D6F5238, &qword_224DBB1E0);
  v242 = v336;
  v243 = v318(v241, 1, v336);
  v244 = v311;
  if (v243 == 1)
  {
    sub_224A3311C(v241, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD018();
    (*(v335 + 8))(v241, v242);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  v245 = v310;
  sub_224A3796C(v153, v310, &qword_27D6F5238, &qword_224DBB1E0);
  if (v318(v245, 1, v242) == 1)
  {
    sub_224A3311C(v245, &qword_27D6F5238, &qword_224DBB1E0);
    v246 = v337;
LABEL_42:
    v260 = v304;
    (v333)(v304, v347 + v332, v138);
    v342(v244, v346, v246);
    v261 = sub_224DAB228();
    v262 = v246;
    v263 = v138;
    v264 = sub_224DAF278();
    if (os_log_type_enabled(v261, v264))
    {
      v265 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v349[0] = v266;
      *v265 = 136446210;
      sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v267 = sub_224DAFD28();
      v269 = v268;
      v340(v244, v262);
      v270 = sub_224A33F74(v267, v269, v349);

      *(v265 + 4) = v270;
      __swift_destroy_boxed_opaque_existential_1(v266);
      MEMORY[0x22AA5EED0](v266, -1, -1);
      MEMORY[0x22AA5EED0](v265, -1, -1);

      (v322)(v260, v263);
    }

    else
    {

      v340(v244, v246);
      v229(v260, v263);
    }

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    sub_224DAB558();
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    v349[0] = MEMORY[0x277D84F90];
    sub_224A6018C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
    sub_224DAF788();
    v271 = v344;
    swift_beginAccess();
    goto LABEL_48;
  }

  v247 = sub_224DACFE8();
  (*(v335 + 8))(v245, v242);
  v246 = v337;
  if ((v247 & 1) == 0)
  {
    goto LABEL_42;
  }

  v248 = v294;
  (v333)(v294, v347 + v332, v138);
  v249 = v293;
  v342(v293, v346, v246);
  v250 = sub_224DAB228();
  v251 = v246;
  v252 = v138;
  v253 = sub_224DAF278();
  if (os_log_type_enabled(v250, v253))
  {
    v254 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v349[0] = v255;
    *v254 = 136446210;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v256 = sub_224DAFD28();
    v258 = v257;
    v340(v249, v251);
    v259 = sub_224A33F74(v256, v258, v349);

    *(v254 + 4) = v259;
    __swift_destroy_boxed_opaque_existential_1(v255);
    MEMORY[0x22AA5EED0](v255, -1, -1);
    MEMORY[0x22AA5EED0](v254, -1, -1);

    (v322)(v248, v252);
  }

  else
  {

    v340(v249, v246);
    v229(v248, v252);
  }

  KeyPath = swift_getKeyPath();
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  sub_224DAB558();
  *(swift_allocObject() + 16) = xmmword_224DB30F0;
  v349[0] = MEMORY[0x277D84F90];
  sub_224A6018C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
  sub_224DAF788();
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_224DB3100;
  sub_224DAB548();
  v349[0] = v272;
  sub_224DAF788();
  v271 = v344;
  swift_beginAccess();
LABEL_48:
  sub_224DAE4B8();
  swift_endAccess();
  v273 = v327;
  v274 = v314;
  sub_224DAE7B8();
  v275 = sub_224DAE7C8();
  (*(*(v275 - 8) + 56))(v274, 0, 1, v275);
  v276 = v312;
  sub_224DAC218();
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v278 = *(v277 - 8);
  if ((*(v278 + 48))(v276, 1, v277) == 1)
  {
    sub_224A3311C(v276, &qword_27D6F56C0, &unk_224DB3580);
LABEL_52:
    v282 = 0;
    goto LABEL_53;
  }

  sub_224DAA1F8();
  v280 = v279;
  (*(v278 + 8))(v276, v277);
  if (!v280)
  {
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1((v347 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider), *(v347 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider + 24));
  v281 = v296;
  sub_224DAD4E8();

  sub_224A3311C(v274, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v281, v274, &qword_27D6F48C0, &qword_224DB8220);
  v282 = 1;
LABEL_53:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v283 = swift_allocObject();
  v347 = xmmword_224DB3100;
  *(v283 + 16) = xmmword_224DB3100;
  *(v283 + 32) = v282;
  swift_beginAccess();
  sub_224DAE4B8();
  swift_getKeyPath();
  v284 = swift_allocObject();
  *(v284 + 16) = v347;
  *(v284 + 32) = v282;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v285 = (*(v313 + 80) + 32) & ~*(v313 + 80);
  v286 = swift_allocObject();
  *(v286 + 16) = v347;
  sub_224A3796C(v274, v286 + v285, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v287 = swift_allocObject();
  *(v287 + 16) = v347;
  *(v287 + 32) = v282;
  sub_224DAE4B8();
  swift_endAccess();

  sub_224A3311C(v274, &qword_27D6F48C0, &qword_224DB8220);
  (*(v330 + 8))(v299, v331);
  sub_224A3311C(v338, &qword_27D6F5238, &qword_224DBB1E0);
  (*(v316 + 8))(v307, v317);
  v288 = v329;
  v289 = v328;
  (*(v273 + 16))(v329, v271, v328);
  (*(v273 + 56))(v288, 0, 1, v289);
  return (*(v273 + 8))(v271, v289);
}

double sub_224D611B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D61208();
  }

  return result;
}

void sub_224D61208()
{
  v1 = sub_224DA9428();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v209 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v208 = &v198 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v216 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v219 = &v198 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v215 = &v198 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v226 = &v198 - v19;
  v265 = sub_224DAD158();
  v213 = *(v265 - 8);
  v21 = MEMORY[0x28223BE20](v265, v20);
  v218 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v250 = &v198 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v232 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v251 = &v198 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v241 = &v198 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v198 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v263 = &v198 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v43 = MEMORY[0x28223BE20](v41 - 8, v42);
  v240 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v239 = &v198 - v46;
  v47 = sub_224DAC268();
  v242 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47, v48);
  v259 = &v198 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v230 = &v198 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v261 = &v198 - v55;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v201 = *(v249 - 8);
  v57 = MEMORY[0x28223BE20](v249, v56);
  v220 = &v198 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v248 = &v198 - v61;
  MEMORY[0x28223BE20](v60, v62);
  v199 = &v198 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v66 = MEMORY[0x28223BE20](v64 - 8, v65);
  v68 = &v198 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v69);
  v247 = &v198 - v70;
  v268 = MEMORY[0x277D84F98];
  v72 = v0[22];
  v71 = v0[23];
  v212 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 19, v72);
  (*(*(v71 + 8) + 32))(v267, 768, v72);
  if (!v267[5])
  {
    sub_224A3311C(v267, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_5:
    v73 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_6;
  }

  v73 = sub_224A86CAC();
  sub_224A699F0(v267);
  if (!v73)
  {
    goto LABEL_5;
  }

LABEL_6:
  v74 = v261;
  v75 = v248;
  v76 = v247;
  v77 = 0;
  v207 = 0;
  v200 = v73;
  v78 = v73 + 64;
  v79 = 1 << *(v73 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v73 + 64);
  v82 = (v79 + 63) >> 6;
  v221 = (v201 + 16);
  v224 = (v201 + 32);
  v238 = (v201 + 56);
  v237 = (v201 + 48);
  v223 = (v201 + 8);
  v236 = (v213 + 56);
  v211 = v213 + 16;
  v260 = (v213 + 48);
  v235 = (v213 + 32);
  v264 = (v2 + 56);
  v225 = (v2 + 48);
  v210 = (v2 + 32);
  v217 = (v213 + 8);
  v258 = (v242 + 16);
  v257 = (v242 + 8);
  v83 = MEMORY[0x277D84F90];
  v229 = v242 + 32;
  v234 = xmmword_224DB2780;
  v227 = MEMORY[0x277D84F90];
  v246 = v68;
  v203 = v73 + 64;
  v202 = v82;
  v228 = v38;
  v233 = v1;
  v231 = v47;
  while (1)
  {
    v262 = v83;
    if (!v81)
    {
      break;
    }

    v206 = v77;
    v84 = v77;
LABEL_20:
    v205 = (v81 - 1) & v81;
    v87 = __clz(__rbit64(v81)) | (v84 << 6);
    v88 = v200;
    v89 = v201;
    v90 = v199;
    v91 = v249;
    (*(v201 + 16))(v199, *(v200 + 48) + *(v201 + 72) * v87, v249);
    v92 = *(*(v88 + 56) + 8 * v87);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v94 = *(v93 + 48);
    v95 = *(v89 + 32);
    v68 = v246;
    v95(v246, v90, v91);
    *&v68[v94] = v92;
    (*(*(v93 - 8) + 56))(v68, 0, 1, v93);
    v96 = v92;
    v75 = v248;
    v76 = v247;
LABEL_21:
    sub_224A44E4C(v68, v76, &qword_27D6F4930, &unk_224DB8D00);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v97 - 8) + 48))(v76, 1, v97) == 1)
    {

      v196 = v212;

      sub_224DADDC8();

      v197 = *(v196 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock);

      os_unfair_lock_lock(v197 + 4);
      *(v196 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions) = v227;

      os_unfair_lock_unlock(v197 + 4);

      return;
    }

    v98 = *(v76 + *(v97 + 48));
    v222 = *v224;
    v222(v75, v76, v249);
    v204 = v98;
    v99 = [v98 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v100 = sub_224DAF008();

    v101 = v207;
    v102 = sub_224A7B5CC(v100);
    v207 = v101;

    v103 = v102;
    if (v102 >> 62)
    {
      v104 = sub_224DAF838();
      v103 = v102;
    }

    else
    {
      v104 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v262;
    if (v104)
    {
      v105 = 0;
      v245 = v103 & 0xC000000000000001;
      v214 = v103 & 0xFFFFFFFFFFFFFF8;
      v244 = v103;
      v243 = v104;
      while (1)
      {
        if (v245)
        {
          v106 = MEMORY[0x22AA5DCC0](v105);
        }

        else
        {
          if (v105 >= *(v214 + 16))
          {
            goto LABEL_99;
          }

          v106 = *(v103 + 8 * v105 + 32);
        }

        v107 = v106;
        if (__OFADD__(v105, 1))
        {
          break;
        }

        v262 = v83;
        v108 = [v106 widget];
        v109 = [v107 metrics];
        v110 = [v107 container];
        v255 = v105;
        v254 = v105 + 1;
        if (v110)
        {
          v111 = v110;
          v256 = [v110 canAppearInSecureEnvironment];
        }

        else
        {
          v256 = 0;
        }

        v112 = v249;
        sub_224DAA1F8();
        v113 = v75;
        v114 = sub_224DAA048();

        if (v114)
        {
          v115 = v239;
          (*v221)(v239, v113, v112);
          v116 = 0;
        }

        else
        {
          v116 = 1;
          v115 = v239;
        }

        (*v238)(v115, v116, 1, v112);
        v117 = v109;
        v118 = v108;
        sub_224DAC228();
        v119 = v240;
        sub_224DAC218();
        if ((*v237)(v119, 1, v112) == 1)
        {
          sub_224A3311C(v119, &qword_27D6F56C0, &unk_224DB3580);
          v120 = v241;
        }

        else
        {
          v121 = v220;
          v222(v220, v119, v112);
          sub_224DAA1F8();
          v120 = v241;
          if (v122)
          {

            sub_224D670B0(v74, v267);
            sub_224A3317C(v267, &v266);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v227 = sub_224AD97A8(0, v227[2] + 1, 1, v227);
            }

            v124 = v227[2];
            v123 = v227[3];
            if (v124 >= v123 >> 1)
            {
              v227 = sub_224AD97A8((v123 > 1), v124 + 1, 1, v227);
            }

            __swift_destroy_boxed_opaque_existential_1(v267);
            (*v223)(v121, v112);
            v125 = v227;
            v227[2] = v124 + 1;
            sub_224A36F98(&v266, &v125[5 * v124 + 4]);
          }

          else
          {
            (*v223)(v121, v112);
          }
        }

        v126 = v268;
        v127 = *(v268 + 16);
        v128 = v236;
        v129 = v260;
        v253 = v117;
        v252 = v118;
        if (v127 && (v130 = sub_224A61E5C(v74), (v131 & 1) != 0))
        {
          (*(v213 + 16))(v263, *(v126 + 56) + *(v213 + 72) * v130, v265);
          v132 = 0;
        }

        else
        {
          v132 = 1;
        }

        v133 = *v128;
        v134 = v263;
        v135 = v265;
        (*v128)(v263, v132, 1, v265);
        v133(v38, 1, 1, v135);
        sub_224A3796C(v134, v120, &qword_27D6F5238, &qword_224DBB1E0);
        v136 = *v129;
        if ((*v129)(v120, 1, v135) == 1)
        {
          sub_224A3311C(v120, &qword_27D6F5238, &qword_224DBB1E0);
          v137 = v251;
          sub_224DAD148();
          v138 = v265;
          v133(v137, 0, 1, v265);
          sub_224C089E8(v137, v38);
          if (v136(v38, 1, v138) == 1)
          {
            goto LABEL_112;
          }

          sub_224DACFF8();
          [v107 supportedColorSchemes];
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_103;
          }

          sub_224DAD098();
          v139 = [v107 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v140 = sub_224DAF008();

          v267[0] = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8, MEMORY[0x277D83970]);
          v141 = sub_224DAEF58();

          sub_224AE97C0(v141);

          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_115;
          }

          sub_224DAD0C8();
          [v107 supportsLowLuminance];
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_104;
          }

          sub_224DAD108();
          [v107 showsWidgetLabel];
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_113;
          }

          sub_224DAD028();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = v234;
          *(inited + 32) = [v107 displayProperties];
          sub_224AE995C(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_106;
          }

          sub_224DAD138();
          [v107 supportedProximities];
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_114;
          }

          sub_224DAD068();
          v143 = [v107 idealizedDateComponents];
          v144 = *v264;
          if (v143)
          {
            v145 = v143;
            v146 = 1;
            v147 = v216;
            v148 = v233;
            v144(v216, 1, 1, v233);
            sub_224A6018C(&qword_27D6F6D58, MEMORY[0x277CC8990], MEMORY[0x277CC89B8]);
            sub_224DAFBE8();

            v149 = v148;
            v150 = v219;
            if ((*v225)(v147, 1, v149) != 1)
            {
              v151 = v107;
              v152 = v150;
              v153 = *v210;
              v154 = v209;
              (*v210)(v209, v216, v149);
              v153(v152, v154, v149);
              v150 = v152;
              v107 = v151;
              v146 = 0;
            }
          }

          else
          {
            v146 = 1;
            v149 = v233;
            v150 = v219;
          }

          v144(v150, v146, 1, v149);
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_107;
          }

          v179 = v107;
          sub_224DAD0E8();
        }

        else
        {
          v155 = v265;
          (*v235)(v250, v120, v265);
          v156 = v251;
          sub_224DAD148();
          v133(v156, 0, 1, v155);
          sub_224C089E8(v156, v38);
          sub_224DACFE8();
          if (v136(v38, 1, v155) == 1)
          {
            goto LABEL_116;
          }

          sub_224DACFF8();
          sub_224DAD088();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_105;
          }

          sub_224DAD098();
          v157 = [v107 supportedColorSchemes];
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_118;
          }

          v159 = sub_224DAD078();
          if ((v157 & ~*v158) != 0)
          {
            *v158 |= v157;
          }

          v159(v267, 0);
          sub_224DAD0B8();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_108;
          }

          sub_224DAD0C8();
          v160 = [v107 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v161 = sub_224DAF008();

          v267[0] = v161;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8, MEMORY[0x277D83970]);
          v162 = sub_224DAEF58();

          v163 = sub_224AE97C0(v162);

          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_117;
          }

          v164 = sub_224DAD0A8();
          sub_224C70AB4(v163);
          v164(v267, 0);
          v165 = v250;
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v107 supportsLowLuminance];
          }

          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_110;
          }

          sub_224DAD108();
          if ((sub_224DAD018() & 1) == 0)
          {
            [v107 showsWidgetLabel];
          }

          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_119;
          }

          sub_224DAD028();
          sub_224DAD128();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_109;
          }

          sub_224DAD138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          v166 = swift_initStackObject();
          *(v166 + 16) = v234;
          *(v166 + 32) = [v107 displayProperties];
          v167 = sub_224AE995C(v166);
          swift_setDeallocating();
          swift_arrayDestroy();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_101;
          }

          v168 = sub_224DAD118();
          sub_224C70AE0(v167);
          v168(v267, 0);
          sub_224DAD058();
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_111;
          }

          sub_224DAD068();
          v169 = [v107 idealizedDateComponents];
          v170 = *v264;
          if (v169)
          {
            v171 = v169;
            v172 = 1;
            v173 = v215;
            v174 = v233;
            v170(v215, 1, 1, v233);
            sub_224A6018C(&qword_27D6F6D58, MEMORY[0x277CC8990], MEMORY[0x277CC89B8]);
            sub_224DAFBE8();

            v175 = v174;
            v176 = v173;
            v165 = v250;
            if ((*v225)(v176, 1, v174) != 1)
            {
              v177 = *v210;
              v178 = v208;
              (*v210)(v208, v215, v175);
              v177(v226, v178, v175);
              v172 = 0;
            }
          }

          else
          {
            v172 = 1;
            v175 = v233;
          }

          v170(v226, v172, 1, v175);
          if (v136(v38, 1, v265) == 1)
          {
            goto LABEL_102;
          }

          v179 = v107;
          sub_224DAD0E8();
          (*v217)(v165, v265);
        }

        v180 = *v258;
        v181 = v230;
        v182 = v231;
        (*v258)(v230, v261, v231);
        v183 = v232;
        sub_224A3796C(v38, v232, &qword_27D6F5238, &qword_224DBB1E0);
        if (v136(v183, 1, v265) == 1)
        {
          sub_224A3311C(v183, &qword_27D6F5238, &qword_224DBB1E0);
          v184 = v181;
          v185 = v251;
          sub_224B0DC70(v184, v251);
          sub_224A3311C(v185, &qword_27D6F5238, &qword_224DBB1E0);
          v186 = *v257;
          (*v257)(v184, v182);
        }

        else
        {
          v187 = v218;
          (*v235)(v218, v183, v265);
          v188 = v268;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v267[0] = v188;
          sub_224B224C8(v187, v181, isUniquelyReferenced_nonNull_native);
          v190 = v181;
          v186 = *v257;
          (*v257)(v190, v182);
          v268 = v267[0];
        }

        v83 = v262;
        v191 = v253;
        v192 = v261;
        v180(v259);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_224AD93E4(0, v83[2] + 1, 1, v83);
        }

        v194 = v83[2];
        v193 = v83[3];
        if (v194 >= v193 >> 1)
        {
          v83 = sub_224AD93E4((v193 > 1), v194 + 1, 1, v83);
        }

        sub_224A3311C(v263, &qword_27D6F5238, &qword_224DBB1E0);
        v74 = v192;
        v186(v192, v182);
        v83[2] = v194 + 1;
        (*(v242 + 32))(v83 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v194, v259, v182);
        v38 = v228;
        sub_224A3311C(v228, &qword_27D6F5238, &qword_224DBB1E0);
        v105 = v255 + 1;
        v75 = v248;
        v68 = v246;
        v76 = v247;
        v103 = v244;
        if (v254 == v243)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_9:

    (*v223)(v75, v249);
    v77 = v206;
    v78 = v203;
    v82 = v202;
    v81 = v205;
  }

  if (v82 <= v77 + 1)
  {
    v85 = v77 + 1;
  }

  else
  {
    v85 = v82;
  }

  v86 = v85 - 1;
  while (1)
  {
    v84 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v84 >= v82)
    {
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v195 - 8) + 56))(v68, 1, 1, v195);
      v205 = 0;
      v206 = v86;
      goto LABEL_21;
    }

    v81 = *(v78 + 8 * v84);
    ++v77;
    if (v81)
    {
      v206 = v84;
      goto LABEL_20;
    }
  }

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
}

double sub_224D631CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v2 + 32;
      do
      {
        v6 = sub_224A3317C(v5, v8);
        MEMORY[0x28223BE20](v6, v7);
        sub_224DAC128();
        __swift_destroy_boxed_opaque_existential_1(v8);
        v5 += 40;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

double sub_224D632B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v46 = v36 - v5;
  v47 = sub_224DAF3B8();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v48 = v36 - v12;
  v13 = sub_224DABE18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v44 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v36 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v14;
    v22 = *(v14 + 16);
    v49 = v20;
    v22();
    v43 = a1;
    v23 = sub_224DAC168();
    if (v23 && (v41 = v10, v24 = sub_224A73210(v23), , v24))
    {
      sub_224DABE38();

      v40 = v9;
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v39 = sub_224DAD178();
      v51 = v39;
      sub_224DAF378();
      v36[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      v37 = sub_224DAF3D8();
      v50 = v37;
      v25 = sub_224DAF358();
      v26 = *(*(v25 - 8) + 56);
      v38 = v22;
      v27 = v46;
      v26(v46, 1, 1, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
      sub_224B67CF4();
      v28 = v48;
      sub_224DAB468();
      sub_224A3311C(v27, &qword_27D6F5090, &qword_224DB5C30);

      (*(v45 + 8))(v8, v47);

      __swift_destroy_boxed_opaque_existential_1(v52);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = v44;
      (v38)(v44, v43, v13);
      v31 = v42;
      v32 = (*(v42 + 80) + 24) & ~*(v42 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      (*(v31 + 32))(v33 + v32, v30, v13);
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
      v34 = v40;
      v35 = sub_224DAB488();

      (*(v41 + 8))(v28, v34);
    }

    else
    {
      v35 = 0;
    }

    swift_beginAccess();
    sub_224B09B90(v35, v49);
    swift_endAccess();
  }

  return result;
}

double sub_224D63848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D638A8(a3);
  }

  return result;
}

void sub_224D638A8(uint64_t a1)
{
  v111 = sub_224DACB98();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v3);
  v110 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_224DACB08();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v5);
  v108 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_224DACB28();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v7);
  v105 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACC88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB258();
  v128 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v113 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAB728();
  v125 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v17);
  v119 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DAE4F8();
  v124 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v19);
  v118 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAC268();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v126 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v87 - v31;
  v116 = v1;
  v33 = sub_224DAC168();
  if (v33)
  {
    v99 = v13;
    v100 = v10;
    v101 = v9;
    v102 = a1;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_224DBF6A0;
    *(v35 + 32) = swift_getKeyPath();
    *(v35 + 40) = swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    LODWORD(v112) = 0;
    v38 = 0;
    v117 = v35;
    *(v35 + 48) = KeyPath;
    v127 = v34;
    v39 = *(v34 + 64);
    v120 = v34 + 64;
    v40 = 1 << *(v34 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v39;
    v94 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v43 = (v40 + 63) >> 6;
    v122 = v22 + 32;
    v123 = v22 + 16;
    v129 = (v22 + 8);
    v98 = (v125 + 8);
    v97 = (v124 + 8);
    v93 = (v128 + 16);
    v92 = (v128 + 8);
    *&v37 = 136446210;
    v91 = v37;
    v95 = v14;
    v44 = v22;
    v128 = v22;
    v124 = v29;
    v125 = v32;
    v121 = v43;
LABEL_5:
    v45 = v38;
    if (v42)
    {
      while (1)
      {
        v46 = v45;
LABEL_14:
        v48 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v49 = v48 | (v46 << 6);
        v50 = v126;
        v51 = v127;
        v52 = v21;
        v53 = v21;
        v54 = v44;
        (*(v44 + 16))(v126, *(v127 + 48) + *(v44 + 72) * v49, v52);
        v55 = *(*(v51 + 56) + 8 * v49);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v57 = *(v56 + 48);
        v58 = *(v54 + 32);
        v21 = v53;
        v29 = v124;
        v58(v124, v50, v21);
        *&v29[v57] = v55;
        (*(*(v56 - 8) + 56))(v29, 0, 1, v56);
        v59 = v55;
        v38 = v46;
        v32 = v125;
        v43 = v121;
LABEL_15:
        sub_224A44E4C(v29, v32, &qword_27D6F47F0, &unk_224DB7850);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        if ((*(*(v60 - 8) + 48))(v32, 1, v60) == 1)
        {
          break;
        }

        v61 = *&v32[*(v60 + 48)];
        sub_224DABE68();
        if (v131)
        {
          sub_224A36F98(&v130, v133);
          v96 = v133[4];
          __swift_project_boxed_opaque_existential_1(v133, v133[3]);
          sub_224DAEA78();
          sub_224DABE38();
          v96 = v132;
          __swift_project_boxed_opaque_existential_1(&v130, v131);
          sub_224DAD168();

          v63 = sub_224DAE4E8();

          (*v98)(v119, v115);
          (*v97)(v118, v114);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          if (v63)
          {
          }

          else
          {
            v64 = v95;
            (*v93)(v113, v116 + v94, v95);
            v65 = v61;
            v96 = sub_224DAB228();
            v66 = sub_224DAF2A8();
            v112 = v65;

            v90 = v66;
            v67 = v66;
            v68 = v96;
            if (os_log_type_enabled(v96, v67))
            {
              v69 = swift_slowAlloc();
              v89 = v69;
              v88 = swift_slowAlloc();
              *&v130 = v88;
              *v69 = v91;
              v70 = v126;
              sub_224DABE58();
              sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
              v71 = sub_224DAFD28();
              v73 = v72;
              v74 = v70;
              v32 = v125;
              (*v129)(v74, v21);
              v75 = sub_224A33F74(v71, v73, &v130);

              v76 = v89;
              *(v89 + 1) = v75;
              v77 = v96;
              _os_log_impl(&dword_224A2F000, v96, v90, "Reloading snapshot for %{public}s because environment no longer matches.", v76, 0xCu);
              v78 = v88;
              __swift_destroy_boxed_opaque_existential_1(v88);
              MEMORY[0x22AA5EED0](v78, -1, -1);
              MEMORY[0x22AA5EED0](v89, -1, -1);
            }

            else
            {
            }

            (*v92)(v113, v64);
            LODWORD(v112) = 1;
          }

          __swift_destroy_boxed_opaque_existential_1(v133);
          (*v129)(v32, v21);
          v44 = v128;
          goto LABEL_5;
        }

        sub_224A3311C(&v130, &unk_27D6F3CB0, &unk_224DB7860);
        (*v129)(v32, v21);
        v45 = v38;
        v44 = v128;
        if (!v42)
        {
          goto LABEL_7;
        }
      }

      v79 = v102;
      v80 = v101;
      v81 = v100;
      v82 = v99;
      if (v112)
      {
        (*(v103 + 104))(v105, *MEMORY[0x277CF9B50], v104);
        (*(v106 + 104))(v108, *MEMORY[0x277CF9B40], v107);
        (*(v109 + 104))(v110, *MEMORY[0x277CF9BA8], v111);
        sub_224DACC48();
        sub_224DACC38();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
        v83 = sub_224DABE18();
        v84 = *(v83 - 8);
        v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_224DB3100;
        (*(v84 + 16))(v86 + v85, v79, v83);
        sub_224D68AC0(v86, v82);
        swift_setDeallocating();
        (*(v84 + 8))(v86 + v85, v83);
        swift_deallocClassInstance();
        (*(v81 + 8))(v82, v80);
      }
    }

    else
    {
LABEL_7:
      if (v43 <= v45 + 1)
      {
        v47 = v45 + 1;
      }

      else
      {
        v47 = v43;
      }

      v38 = v47 - 1;
      while (1)
      {
        v46 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v62 - 8) + 56))(v29, 1, 1, v62);
          v42 = 0;
          goto LABEL_15;
        }

        v42 = *(v120 + 8 * v46);
        ++v45;
        if (v42)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

double sub_224D646AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B3E430(a1);
    swift_endAccess();
  }

  return result;
}

void sub_224D64740(int64_t a1, char **a2, uint64_t a3)
{
  v118 = a1;
  v119 = a2;
  v3 = sub_224DAB258();
  v117 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_224DABE18();
  v100 = *(v112 - 8);
  v8 = MEMORY[0x28223BE20](v112, v7);
  v111 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v93 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v98 = v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v110 = v93 - v22;
  v23 = sub_224DACB98();
  v114 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v115 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DACB08();
  v26 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v27);
  v107 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_224DACB28();
  v29 = *(v105 - 1);
  MEMORY[0x28223BE20](v105, v30);
  v106 = v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_224DACC88();
  v108 = *(v121 - 8);
  v33 = MEMORY[0x28223BE20](v121, v32);
  v35 = v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = v93 - v37;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v120 = Strong;
    v40 = sub_224DAC148();
    v116 = v20;
    v41 = v23;
    v42 = v118;

    v122 = v6;
    v113 = v3;
    v43 = sub_224D6E1B8(v40, v42);
    v102 = v13;
    v44 = v117;
    v45 = v43;
    v93[1] = 0;

    (*(v29 + 104))(v106, *MEMORY[0x277CF9B50], v105);
    (*(v26 + 104))(v107, *MEMORY[0x277CF9B40], v109);
    v114[2](v115, v119, v41);
    sub_224DACC48();
    v109 = v38;
    sub_224DACC38();
    v47 = 0;
    v48 = *(v45 + 64);
    v95 = v45 + 64;
    v99 = v45;
    v49 = 1 << *(v45 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v48;
    v107 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v106 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters;
    v94 = (v49 + 63) >> 6;
    v114 = (v100 + 32);
    v115 = (v100 + 16);
    v105 = (v44 + 16);
    v119 = (v100 + 8);
    v104 = (v44 + 8);
    v103 = (v108 + 2);
    ++v108;
    *&v46 = 136446210;
    v96 = v46;
    v52 = v112;
    v53 = v122;
    v97 = v35;
LABEL_7:
    v54 = v116;
    if (!v51)
    {
      if (v94 <= v47 + 1)
      {
        v56 = v47 + 1;
      }

      else
      {
        v56 = v94;
      }

      while (1)
      {
        v55 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_29;
        }

        if (v55 >= v94)
        {
          v65 = v52;
          v118 = v56 - 1;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
          (*(*(v92 - 8) + 56))(v54, 1, 1, v92);
          v51 = 0;
          goto LABEL_16;
        }

        v51 = *(v95 + 8 * v55);
        ++v47;
        if (v51)
        {
          goto LABEL_15;
        }
      }
    }

    v55 = v47;
LABEL_15:
    v57 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v58 = v57 | (v55 << 6);
    v59 = v99;
    v60 = v100;
    v61 = v98;
    (*(v100 + 16))(v98, *(v99 + 48) + *(v100 + 72) * v58, v52);
    v118 = *(*(v59 + 56) + 8 * v58);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v63 = *(v62 + 48);
    v64 = *(v60 + 32);
    v54 = v116;
    v65 = v52;
    v64(v116, v61, v52);
    *(v54 + v63) = v118;
    (*(*(v62 - 8) + 56))(v54, 0, 1, v62);

    v118 = v55;
    v53 = v122;
    v35 = v97;
LABEL_16:
    v66 = v110;
    sub_224A44E4C(v54, v110, &qword_27D6F6D30, &qword_224DC2F60);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
    v69 = v111;
    if (v68 != 1)
    {

      v70 = v102;
      v71 = v65;
      (*v114)(v102, v66, v65);
      v72 = v120;
      v73 = v113;
      (*v105)(v53, &v107[v120], v113);
      (*v115)(v69, v70, v71);
      v74 = sub_224DAB228();
      v75 = v69;
      v76 = sub_224DAF2A8();
      if (os_log_type_enabled(v74, v76))
      {
        v77 = v71;
        v78 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v123 = v101;
        *v78 = v96;
        sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
        v79 = sub_224DAFD28();
        v81 = v80;
        v117 = *v119;
        (v117)(v75, v77);
        v72 = v120;
        v82 = sub_224A33F74(v79, v81, &v123);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_224A2F000, v74, v76, "Reloading snapshots for %{public}s due to external trigger.", v78, 0xCu);
        v83 = v101;
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x22AA5EED0](v83, -1, -1);
        MEMORY[0x22AA5EED0](v78, -1, -1);

        (*v104)(v122, v113);
      }

      else
      {

        v117 = *v119;
        (v117)(v75, v71);
        (*v104)(v53, v73);
      }

      (*v103)(v35, v109, v121);
      v84 = *&v106[v72];
      v85 = v84 + 32;
      v86 = -*(v84 + 16);
      v87 = -1;
      while (1)
      {
        if (v86 + v87 == -1)
        {
          sub_224DAC138();
LABEL_6:
          (*v108)(v35, v121);
          v52 = v112;
          (v117)(v70, v112);
          v47 = v118;
          v53 = v122;
          goto LABEL_7;
        }

        if (++v87 >= *(v84 + 16))
        {
          break;
        }

        v88 = v85 + 40;
        sub_224A3317C(v85, &v123);
        v89 = v124;
        v90 = v125;
        __swift_project_boxed_opaque_existential_1(&v123, v124);
        v91 = (*(v90 + 8))(v70, v35, v89, v90);
        __swift_destroy_boxed_opaque_existential_1(&v123);
        v85 = v88;
        if ((v91 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    (*v108)(v109, v121);
  }
}

double sub_224D6531C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28[-v9];
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = v11;
    v34 = v7;
    (*(v12 + 16))(v15, Strong + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v11);
    v32 = *(v3 + 16);
    v32(v10, v35, v2);
    v18 = sub_224DAB228();
    v19 = sub_224DAF278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v20;
      v31 = swift_slowAlloc();
      v36 = v31;
      *v20 = 136446210;
      sub_224A6018C(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v29 = v19;
      v21 = sub_224DAFD28();
      v23 = v22;
      (*(v3 + 8))(v10, v2);
      v24 = sub_224A33F74(v21, v23, &v36);

      v25 = v30;
      *(v30 + 1) = v24;
      v26 = v25;
      _os_log_impl(&dword_224A2F000, v18, v29, "Protection Type changed to %{public}s", v25, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v10, v2);
    }

    (*(v12 + 8))(v15, v33);
    v32(v34, v35, v2);
    sub_224DAC0A8();
  }

  return result;
}

double sub_224D65690(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong, v3);
    sub_224DAC128();
  }

  return result;
}

double sub_224D6573C(uint64_t a1, void *a2)
{
  v76 = sub_224DAC268();
  v3 = *(v76 - 8);
  v5 = MEMORY[0x28223BE20](v76, v4);
  v75 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v74 = &v56 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v73 = &v56 - v11;
  v59 = a2;
  v12 = *(a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService + 24);
  v13 = *(a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService), v12);
  (*(v13 + 32))(v80, 768, v12, v13);
  if (v81)
  {
    if (*(v81 + 16))
    {

      v15 = sub_224B3DF0C(v14);

      sub_224A699F0(v80);
      __swift_project_boxed_opaque_existential_1(v59 + 24, v59[27]);
      if (sub_224DAD8C8())
      {
        v80[0] = MEMORY[0x277D84FA0];
        v16 = v15;
        v62 = v15;
        if (v15 >> 62)
        {
          goto LABEL_46;
        }

        for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v16 = v62)
        {
          v18 = 0;
          v61 = v16 & 0xC000000000000001;
          v58 = v16 & 0xFFFFFFFFFFFFFF8;
          v57 = v16 + 32;
          v71 = (v3 + 8);
          v72 = (v3 + 16);
          v19 = &off_27853F000;
          v20 = &off_27853F000;
          v21 = &selRef_pairingState;
          v22 = &selRef_pairingState;
          v60 = i;
          while (1)
          {
            if (v61)
            {
              v23 = v18;
              v24 = MEMORY[0x22AA5DCC0](v18, v16);
            }

            else
            {
              if (v18 >= *(v58 + 16))
              {
                goto LABEL_45;
              }

              v23 = v18;
              v24 = *(v57 + 8 * v18);
            }

            v79 = v24;
            v25 = __OFADD__(v23, 1);
            v3 = v23 + 1;
            if (v25)
            {
              break;
            }

            v64 = v3;
            v26 = sub_224DACF28();
            v3 = v26;
            v28 = v27;
            if (v26 >> 62)
            {
              v29 = sub_224DAF838();
              if (v28 != v29)
              {
LABEL_15:
                v70 = v3 & 0xC000000000000001;
                v66 = v3 + 32;
                v67 = v3 & 0xFFFFFFFFFFFFFF8;
                v65 = v3;
                v68 = v29;
                while (1)
                {
                  if (v70)
                  {
                    v30 = MEMORY[0x22AA5DCC0](v28, v3);
                  }

                  else
                  {
                    if ((v28 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_42;
                    }

                    if (v28 >= *(v67 + 16))
                    {
                      goto LABEL_43;
                    }

                    v30 = *(v66 + 8 * v28);
                  }

                  v31 = v30;
                  v25 = __OFADD__(v28++, 1);
                  if (v25)
                  {
                    break;
                  }

                  v32 = [v30 v19[311]];
                  v33 = [v32 v20[327]];

                  if (v33)
                  {
                    [v31 supportedFamilies];
                    v34 = sub_224DAF4C8();
                    v35 = v34;
                    v36 = *(v34 + 16);
                    if (v36)
                    {
                      v69 = v28;
                      v37 = 32;
                      v77 = v34;
                      v78 = v31;
                      do
                      {
                        v38 = *(v35 + v37);
                        v39 = [v31 v21[222]];
                        v40 = [v31 v22[223]];

                        if (v40)
                        {
                          v41 = [v79 metricsSpecification];
                          v42 = [v41 metricsForFamily_];

                          if (v42)
                          {
                            v43 = v40;
                            v44 = v42;
                            v45 = v73;
                            sub_224DAC238();
                            v46 = v22;
                            v48 = v75;
                            v47 = v76;
                            (*v72)(v75, v45, v76);
                            v49 = v74;
                            v50 = v48;
                            v22 = v46;
                            v31 = v78;
                            sub_224ADCAF4(v74, v50);

                            v51 = *v71;
                            (*v71)(v49, v47);
                            v52 = v45;
                            v35 = v77;
                            v53 = v47;
                            v21 = &selRef_pairingState;
                            v51(v52, v53);
                          }

                          else
                          {
                          }
                        }

                        v37 += 8;
                        --v36;
                      }

                      while (v36);

                      v19 = &off_27853F000;
                      v20 = &off_27853F000;
                      v3 = v65;
                      v28 = v69;
                    }

                    else
                    {
                    }

                    v29 = v68;
                  }

                  else
                  {
                  }

                  if (v28 == v29)
                  {
                    goto LABEL_7;
                  }
                }

                __break(1u);
LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                break;
              }
            }

            else
            {
              v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v27 != v29)
              {
                goto LABEL_15;
              }
            }

LABEL_7:

            v18 = v64;
            v16 = v62;
            if (v64 == v60)
            {

              v55 = v80[0];
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          i = sub_224DAF838();
        }

        v55 = MEMORY[0x277D84FA0];
LABEL_48:
        sub_224D65D3C(v55);
      }

      else
      {
      }
    }

    else
    {
      sub_224A699F0(v80);
    }
  }

  else
  {
    sub_224A3311C(v80, &qword_27D6F50E0, &qword_224DB41A0);
  }

  return result;
}

double sub_224D65D3C(void *a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v123 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB848();
  v122 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAB878();
  v119 = *(v120 - 8);
  v12 = MEMORY[0x28223BE20](v120, v11);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v118 = &v109 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v115 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v124 = &v109 - v21;
  v136 = sub_224DABE18();
  v147 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v22);
  v140 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_224DAB258();
  v24 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v25);
  v144 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_224DAC268();
  v142 = *(v127 - 8);
  v28 = MEMORY[0x28223BE20](v127, v27);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v139 = &v109 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v141 = &v109 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v148 = &v109 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v135 = &v109 - v41;
  v42 = sub_224DA9878();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v44);
  v47 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2])
  {
    v116 = v30;
    v112 = v8;
    v113 = v5;
    v114 = v4;
    sub_224DA9868();
    if (qword_27D6F2D28 != -1)
    {
LABEL_30:
      swift_once();
    }

    v111 = sub_224DAB798();
    v48 = __swift_project_value_buffer(v111, qword_27D6F6D08);
    v49 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_keysToFetch;
    swift_beginAccess();
    v50 = a1;
    a1 = v2;
    v110 = sub_224D6A368(v50, (v2 + v49), v51, v48, 5);
    swift_endAccess();
    (*(v43 + 8))(v47, v42);

    v53 = sub_224AD7304(v52);
    v43 = 0;
    v146 = 0;
    v56 = v53 + 56;
    v55 = *(v53 + 56);
    v138 = v53;
    v57 = 1 << *(v53 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v55;
    v133 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v60 = (v57 + 63) >> 6;
    v149 = (v142 + 16);
    v137 = v142 + 32;
    v131 = (v24 + 16);
    v150 = (v142 + 8);
    v130 = (v24 + 8);
    v129 = (v147 + 8);
    *&v54 = 136446210;
    v125 = v54;
    v61 = v127;
    v42 = v141;
    v134 = v53 + 56;
    v132 = v60;
    v126 = v2;
    while (v59)
    {
      v63 = v2;
LABEL_14:
      v65 = v142;
      v66 = *(v142 + 16);
      v67 = v135;
      (v66)(v135, *(v138 + 48) + *(v142 + 72) * (__clz(__rbit64(v59)) | (v43 << 6)), v61);
      v68 = *(v65 + 32);
      v69 = v148;
      v128 = v68;
      v68(v148, v67, v61);
      v71 = v143;
      v70 = v144;
      (*v131)(v144, v63 + v133, v143);
      v145 = v66;
      (v66)(v42, v69, v61);
      v72 = sub_224DAB228();
      v73 = v71;
      v74 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock[0] = v76;
        *v75 = v125;
        sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v77 = sub_224DAFD28();
        v79 = v78;
        v147 = *v150;
        (v147)(v42, v61);
        v80 = sub_224A33F74(v77, v79, aBlock);

        *(v75 + 4) = v80;
        _os_log_impl(&dword_224A2F000, v72, v74, "Prefetching snapshots for %{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        v81 = v76;
        v2 = v126;
        MEMORY[0x22AA5EED0](v81, -1, -1);
        v82 = v75;
        v83 = v140;
        MEMORY[0x22AA5EED0](v82, -1, -1);

        (*v130)(v144, v143);
        v84 = v146;
      }

      else
      {

        v147 = *v150;
        (v147)(v42, v61);
        (*v130)(v70, v73);
        v84 = v146;
        v2 = v63;
        v83 = v140;
      }

      v24 = v148;
      v85 = v145;
      (v145)(v139, v148, v61);
      sub_224DABD88();
      a1 = v2[41];
      v86 = sub_224DAD288();
      v47 = &v109;
      LOBYTE(v151) = 0;
      MEMORY[0x28223BE20](v86, v87);
      *(&v109 - 4) = v83;
      *(&v109 - 3) = v24;
      *(&v109 - 2) = v2;
      *(&v109 - 1) = &v151;
      sub_224DAC128();
      v146 = v84;
      if (v151 == 1)
      {
        sub_224DAB348();
        v88 = sub_224DAC248();
        a1 = [v88 extensionIdentity];

        v89 = a1 + *MEMORY[0x277CFA128];
        swift_beginAccess();
        v47 = *(v89 + 1);

        if (v47)
        {

          v90 = v116;
          v85();
          v91 = v124;
          sub_224DAC218();
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v92 = *(v47 - 1);
          v93 = (*(v92 + 48))(v91, 1, v47);
          sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
          if (v93 == 1)
          {
            sub_224DAC248();
            sub_224DAC258();
            if (qword_27D6F2C98 != -1)
            {
              swift_once();
            }

            v94 = __swift_project_value_buffer(v47, qword_27D6F7198);
            v95 = v115;
            (*(v92 + 16))(v115, v94, v47);
            (*(v92 + 56))(v95, 0, 1, v47);
            v96 = v139;
            sub_224DAC228();
            v47 = v127;
            (v147)(v90, v127);
            v128(v90, v96, v47);
            v83 = v140;
            v24 = v148;
          }

          a1 = v2;
          sub_224D6C2F8(v24);
          if (v97)
          {
            v47 = v97;
            a1 = *__swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
            sub_224B55AAC(v90, v47);
          }

          v62 = v90;
          v61 = v127;
          (v147)(v62, v127);
        }
      }

      v59 &= v59 - 1;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      (*v129)(v83, v136);
      (v147)(v24, v61);
      v42 = v141;
      v56 = v134;
      v60 = v132;
    }

    while (1)
    {
      v64 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v64);
      ++v43;
      if (v59)
      {
        v63 = v2;
        v43 = v64;
        goto LABEL_14;
      }
    }

    v150 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_prefetchQueue);
    v98 = v117;
    sub_224DAB858();
    v99 = v2;
    if (qword_27D6F2D20 != -1)
    {
      swift_once();
    }

    v100 = __swift_project_value_buffer(v111, qword_27D6F6CF0);
    v101 = v118;
    MEMORY[0x22AA59C40](v98, v100);
    v149 = *(v119 + 8);
    v102 = v120;
    v149(v98, v120);
    v103 = swift_allocObject();
    v104 = v110;
    *(v103 + 16) = v99;
    *(v103 + 24) = v104;
    aBlock[4] = sub_224D6DDCC;
    aBlock[5] = v103;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_57;
    v105 = _Block_copy(aBlock);

    v106 = v121;
    sub_224DAB7E8();
    v151 = MEMORY[0x277D84F90];
    sub_224A6018C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v107 = v123;
    v108 = v114;
    sub_224DAF788();
    MEMORY[0x22AA5D6A0](v101, v106, v107, v105);
    _Block_release(v105);
    (*(v113 + 8))(v107, v108);
    (*(v122 + 8))(v106, v112);
    v149(v101, v102);
  }

  return result;
}

char *sub_224D66CEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_224DAF838();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v4;
    }

    while (v5 != v3);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v6 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v7 = sub_224DAB258();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService));

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver));
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider));
  return v1;
}

uint64_t sub_224D66F3C()
{
  sub_224D66CEC();

  return swift_deallocClassInstance();
}

uint64_t sub_224D66F9C(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224D670B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, a1, v6);
  sub_224DABD88();
  sub_224DAD288();
  v22 = 0;
  v18 = v15;
  v19 = a1;
  v20 = v3;
  v21 = &v22;
  sub_224DAC128();
  if (v22 == 1)
  {
    sub_224DAB348();
    sub_224D67F90(a1);
  }

  sub_224A36F98(&v23, a2);
  return (*(v12 + 8))(v15, v11);
}

void sub_224D672A4(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v111 = a5;
  v110 = a4;
  v98 = sub_224DACB98();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v8);
  v97 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_224DACB08();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v10);
  v95 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v12);
  v92 = &v77[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = sub_224DACC88();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v14);
  v109 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v88 = &v77[-v18];
  v19 = sub_224DAE918();
  v107 = *(v19 - 8);
  v108 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v91 = &v77[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v77[-v24];
  v106 = sub_224DAC268();
  v104 = *(v106 - 8);
  v27 = MEMORY[0x28223BE20](v106, v26);
  v29 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v30);
  v103 = &v77[-v31];
  v87 = sub_224DABE18();
  v102 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v32);
  v86 = &v77[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_224DAB258();
  v34 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v35);
  v105 = &v77[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD3D8();
  if (v116)
  {

    *v111 = 0;
    return;
  }

  v83 = v29;
  v85 = v25;
  v84 = a1;
  v37 = v101;
  (*(v34 + 16))(v105, v110 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v101);
  v38 = v86;
  v39 = a2;
  v40 = v87;
  (*(v102 + 16))(v86, a2, v87);
  v41 = *(v104 + 16);
  v42 = a3;
  v43 = v106;
  v81 = v104 + 16;
  v80 = v41;
  v41(v103, a3, v106);
  v44 = sub_224DAB228();
  v45 = sub_224DAF2A8();
  v46 = os_log_type_enabled(v44, v45);
  v82 = v39;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v115[0] = v79;
    *v47 = 136446466;
    sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v78 = v45;
    v48 = sub_224DAFD28();
    v49 = v38;
    v51 = v50;
    (*(v102 + 8))(v49, v40);
    v52 = sub_224A33F74(v48, v51, v115);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v53 = v103;
    v54 = sub_224DAFD28();
    v56 = v55;
    (*(v104 + 8))(v53, v43);
    v57 = sub_224A33F74(v54, v56, v115);

    *(v47 + 14) = v57;
    _os_log_impl(&dword_224A2F000, v44, v78, "%{public}s:%{public}s Creating entry", v47, 0x16u);
    v58 = v79;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v58, -1, -1);
    MEMORY[0x22AA5EED0](v47, -1, -1);

    (*(v34 + 8))(v105, v101);
  }

  else
  {

    (*(v104 + 8))(v103, v43);
    (*(v102 + 8))(v38, v40);
    (*(v34 + 8))(v105, v37);
  }

  v59 = v88;
  v104 = v42;
  v60 = sub_224DAC248();
  v61 = [v60 extensionIdentity];

  v62 = v110;
  sub_224A3317C((v110 + 42), v115);
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  v105 = v61;
  v63 = v112;
  sub_224DADBE8();
  v64 = v84;
  if (v63)
  {

    __swift_destroy_boxed_opaque_existential_1(v115);
    v66 = v107;
    v65 = v108;
    (*(v107 + 56))(v59, 1, 1, v108);
    v112 = 0;
    v67 = v97;
    v68 = v85;
    v69 = v96;
    goto LABEL_9;
  }

  v112 = 0;
  v66 = v107;
  v65 = v108;
  (*(v107 + 56))(v59, 0, 1, v108);
  __swift_destroy_boxed_opaque_existential_1(v115);
  v70 = (*(v66 + 48))(v59, 1, v65);
  v67 = v97;
  v68 = v85;
  v69 = v96;
  if (v70 == 1)
  {
LABEL_9:
    (*(v66 + 104))(v68, *MEMORY[0x277CE3D50], v65);
    if ((*(v66 + 48))(v59, 1, v65) != 1)
    {
      sub_224A3311C(v59, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_12;
  }

  (*(v66 + 32))(v85, v59, v65);
LABEL_12:
  v71 = v98;
  (*(v89 + 104))(v92, *MEMORY[0x277CF9B50], v90);
  (*(v93 + 104))(v95, *MEMORY[0x277CF9B40], v94);
  (*(v69 + 104))(v67, *MEMORY[0x277CF9BF0], v71);
  sub_224DACC48();
  sub_224DACC38();
  __swift_project_boxed_opaque_existential_1(v62 + 14, v62[17]);
  sub_224DADA58();
  sub_224DABE88();
  v80(v83, v104, v106);
  v72 = v107;
  v73 = v68;
  v74 = v108;
  (*(v107 + 16))(v91, v73, v108);
  sub_224A3317C(v115, &v114);
  sub_224A3317C(v62 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver, v113);
  v75 = sub_224DABE48();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v114 = v75;
  sub_224DAD3B8();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v76 = v109;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v115);
  (*(v99 + 8))(v76, v100);
  (*(v72 + 8))(v85, v74);

  *v111 = 1;
}

void sub_224D67F90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33 - v10;
  v12 = sub_224DAC268();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v33 - v19;
  v21 = sub_224DAC248();
  v22 = [v21 extensionIdentity];

  v23 = &v22[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v24 = *(v23 + 1);

  if (v24)
  {
    v33 = v2;

    (*(v13 + 16))(v20, a1, v12);
    sub_224DAC218();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v11, 1, v25);
    sub_224A3311C(v11, &qword_27D6F56C0, &unk_224DB3580);
    if (v27 == 1)
    {
      sub_224DAC248();
      sub_224DAC258();
      if (qword_27D6F2C98 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v25, qword_27D6F7198);
      (*(v26 + 16))(v8, v28, v25);
      (*(v26 + 56))(v8, 0, 1, v25);
      sub_224DAC228();
      (*(v13 + 8))(v20, v12);
      (*(v13 + 32))(v20, v17, v12);
    }

    v29 = a1;
    v30 = v33;
    sub_224D6C2F8(v29);
    if (v31)
    {
      v32 = v31;
      __swift_project_boxed_opaque_existential_1((v30 + 152), *(v30 + 176));
      sub_224B55AAC(v20, v32);
    }

    (*(v13 + 8))(v20, v12);
  }
}

void sub_224D68324()
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v1 = MEMORY[0x28223BE20](v82, v0);
  v81 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v80 = &v65 - v5;
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v65 - v7;
  v76 = sub_224DABE18();
  v8 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v9);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v65 - v17;
  v89 = MEMORY[0x277D84F90];
  v19 = sub_224DAC148();
  v20 = 0;
  v21 = *(v19 + 64);
  v67 = v19 + 64;
  v72 = v19;
  v22 = 1 << *(v19 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v66 = (v22 + 63) >> 6;
  v69 = v8 + 16;
  v68 = v8 + 32;
  v71 = v8;
  v73 = (v8 + 8);
  v74 = v18;
  v75 = v15;
LABEL_6:
  if (v24)
  {
    v25 = v20;
LABEL_15:
    v78 = (v24 - 1) & v24;
    v28 = __clz(__rbit64(v24)) | (v25 << 6);
    v30 = v71;
    v29 = v72;
    v31 = v70;
    v32 = v76;
    (*(v71 + 16))(v70, *(v72 + 48) + *(v71 + 72) * v28, v76);
    v33 = *(*(v29 + 56) + 8 * v28);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v15 = v75;
    v36(v75, v31, v32);
    *&v15[v35] = v33;
    (*(*(v34 - 8) + 56))(v15, 0, 1, v34);

    v27 = v25;
    v18 = v74;
LABEL_16:
    sub_224A44E4C(v15, v18, &qword_27D6F6D30, &qword_224DC2F60);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v37 - 8) + 48))(v18, 1, v37) == 1)
    {

      return;
    }

    v77 = v27;
    v38 = *&v18[*(v37 + 48)];
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v85 = v38;

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    v83 = v43;
    v84 = v39;
    if (!v42)
    {
      goto LABEL_22;
    }

    do
    {
      v88 = v45;
LABEL_26:
      v47 = __clz(__rbit64(v42)) | (v44 << 6);
      v48 = v85;
      v49 = *(v85 + 48);
      v86 = sub_224DAC268();
      v50 = *(v86 - 8);
      v51 = v79;
      (*(v50 + 16))(v79, v49 + *(v50 + 72) * v47, v86);
      v52 = *(*(v48 + 56) + 8 * v47);
      v53 = v82;
      *(v51 + *(v82 + 48)) = v52;
      v54 = v80;
      sub_224A3796C(v51, v80, &qword_27D6F47F8, &unk_224DC2000);
      v55 = *(v54 + *(v53 + 48));
      v56 = v52;

      v87 = sub_224DAC248();
      v57 = *(v50 + 8);
      v58 = v86;
      v57(v54, v86);
      v59 = v81;
      sub_224A3796C(v51, v81, &qword_27D6F47F8, &unk_224DC2000);

      v60 = sub_224DAC258();
      sub_224A3311C(v51, &qword_27D6F47F8, &unk_224DC2000);
      v57(v59, v58);
      v45 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_224AD9600(0, v45[2] + 1, 1, v45);
      }

      v62 = v45[2];
      v61 = v45[3];
      v43 = v83;
      if (v62 >= v61 >> 1)
      {
        v45 = sub_224AD9600((v61 > 1), v62 + 1, 1, v45);
      }

      v42 &= v42 - 1;
      v45[2] = v62 + 1;
      v63 = &v45[2 * v62];
      v63[4] = v87;
      v63[5] = v60;
      v39 = v84;
    }

    while (v42);
LABEL_22:
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v43)
      {

        sub_224B42A30(v45);
        v18 = v74;
        (*v73)(v74, v76);
        v20 = v77;
        v24 = v78;
        v15 = v75;
        goto LABEL_6;
      }

      v42 = *(v39 + 8 * v46);
      ++v44;
      if (v42)
      {
        v88 = v45;
        v44 = v46;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    if (v66 <= v20 + 1)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = v66;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v66)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
        (*(*(v64 - 8) + 56))(v15, 1, 1, v64);
        v78 = 0;
        goto LABEL_16;
      }

      v24 = *(v67 + 8 * v25);
      ++v20;
      if (v24)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
}

uint64_t sub_224D68A2C(uint64_t a1)
{
  v2 = sub_224DAC148();
  if (*(v2 + 16) && (v3 = sub_224B0BDA0(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    v6 = sub_224D5CF3C(v5);

    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_224D68AC0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_224DACC88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  result = MEMORY[0x28223BE20](v8, v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 16);
  if (v39)
  {
    v14 = 0;
    v15 = *(v33 + 328);
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v36 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v37 = v17;
    v30 = (v4 + 16);
    v31 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters;
    v27 = (v4 + 8);
    v28 = v8;
    v38 = v16;
    v18 = *(v16 + 56);
    v34 = (v16 - 8);
    v35 = v18;
    v29 = v3;
    v26 = v15;
    v17(v13, v36, v8);
    while (!sub_224DAC168())
    {
LABEL_5:
      ++v14;
      result = (*v34)(v13, v8);
      if (v14 == v39)
      {
        return result;
      }

      v37(v13, v36 + v35 * v14, v8);
    }

    (*v30)(v7, v32, v3);
    v19 = *(v33 + v31);
    result = v19 + 32;
    v20 = -*(v19 + 16);
    v21 = -1;
    while (1)
    {
      if (v20 + v21 == -1)
      {
        sub_224DAC138();
LABEL_4:
        v3 = v29;
        (*v27)(v7, v29);
        v8 = v28;
        goto LABEL_5;
      }

      if (++v21 >= *(v19 + 16))
      {
        break;
      }

      v22 = result + 40;
      sub_224A3317C(result, v40);
      v23 = v41;
      v24 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v25 = (*(v24 + 8))(v13, v7, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v40);
      result = v22;
      if ((v25 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224D68DAC(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v35 = a1;
  v2 = sub_224DACB98();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DACB08();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DACB28();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_224DACC88();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v12);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAC268();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DABE18();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v35, v14);
  sub_224DABD88();
  (*(v8 + 104))(v11, *MEMORY[0x277CF9B50], v31);
  (*(v33 + 104))(v32, *MEMORY[0x277CF9B40], v34);
  (*(v37 + 16))(v36, v40, v38);
  sub_224DACC48();
  v24 = v30;
  sub_224DACC38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_224DB3100;
  (*(v20 + 16))(v26 + v25, v23, v19);
  sub_224D68AC0(v26, v24);
  swift_setDeallocating();
  v27 = *(v20 + 8);
  v27(v26 + v25, v19);
  swift_deallocClassInstance();
  (*(v39 + 8))(v24, v41);
  return (v27)(v23, v19);
}

uint64_t sub_224D69264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB6B8();
  *a1 = result;
  return result;
}

uint64_t sub_224D692BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_224A3796C(a1, &v6 - v4, &qword_27D6F6D20, &unk_224DC1FE0);
  return sub_224DAB6A8();
}

uint64_t sub_224D69364(void *a1, uint64_t a2)
{
  v5 = sub_224DABE18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_224DAD3C8();
  v23 = a2;
  v11 = sub_224AD8604(sub_224D6E428, v22, v10);

  v12 = v11;
  v13 = v11[2];
  if (v13)
  {
    v19[0] = v12;
    v19[1] = v2;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v20 = *(v14 + 56);
    v21 = v15;
    v24 = v14;
    v17 = (v14 - 8);
    do
    {
      v21(v9, v16, v5);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_224DAD3F8();
      (*v17)(v9, v5);
      v16 += v20;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_224D69540@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v6 = sub_224DABDB8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_224DAE338();
  v8 = sub_224DAF6A8();

  v9 = sub_224DABE18();
  v10 = *(v9 - 8);
  if (v8)
  {
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v10 + 56))(a3, v11, 1, v9);
}

uint64_t sub_224D69678(void *a1, uint64_t a2, uint64_t a3)
{
  v97 = sub_224DACB98();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v6);
  v96 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DACB08();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v8);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v10);
  v91 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DACC88();
  v113 = *(v120 - 8);
  v13 = MEMORY[0x28223BE20](v120, v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v112 = &v88 - v17;
  v18 = sub_224DABE18();
  v115 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v88 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v103 = &v88 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v104 = (&v88 - v31);
  v32 = sub_224DAB258();
  v34 = MEMORY[0x28223BE20](v32, v33);
  v118 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v41 = &v88 - v38;
  v101 = a1;
  v121 = v18;
  v126 = v22;
  v111 = a3;
  v119 = v37;
  v98 = v40;
  if (a2)
  {

    v43 = sub_224A3DADC(v42);

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v108 = *(result + 16);
    if (v108)
    {
      v45 = 0;
      v106 = v115 + 16;
      v105 = (v43 & 0xC000000000000001);
      v46 = v43 & 0xFFFFFFFFFFFFFF8;
      if (v43 < 0)
      {
        v46 = v43;
      }

      *&v100 = v46;
      v117 = (v43 + 56);
      v102 = (v115 + 32);
      v99 = (v115 + 8);
      v47 = MEMORY[0x277D84F90];
      v18 = v121;
      v48 = v43;
      v49 = v104;
      v122 = v48;
      v107 = result;
      while (1)
      {
        if (v45 >= *(result + 16))
        {
          goto LABEL_47;
        }

        v116 = ((*(v115 + 80) + 32) & ~*(v115 + 80));
        v110 = *(v115 + 72);
        (*(v115 + 16))(v49, v116 + result + v110 * v45, v18);
        v50 = sub_224DABDB8();
        if (v105)
        {
          v51 = sub_224DAF888();

          if (v51)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v114 = v47;
          if (*(v48 + 16))
          {
            sub_224DAF538();
            v56 = sub_224DAF698();
            v57 = -1 << *(v48 + 32);
            v58 = v56 & ~v57;
            if ((*&v117[(v58 >> 3) & 0xFFFFFFFFFFFFFF8] >> v58))
            {
              v59 = ~v57;
              while (1)
              {
                v60 = *(*(v48 + 48) + 8 * v58);
                v61 = sub_224DAF6A8();

                if (v61)
                {
                  break;
                }

                v58 = (v58 + 1) & v59;
                v48 = v122;
                if (((*&v117[(v58 >> 3) & 0xFFFFFFFFFFFFFF8] >> v58) & 1) == 0)
                {
                  goto LABEL_6;
                }
              }

              v22 = v126;
              v47 = v114;
              v49 = v104;
LABEL_12:
              v52 = *v102;
              (*v102)(v103, v49, v121);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v123 = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA49C(0, *(v47 + 16) + 1, 1);
                v47 = v123;
              }

              v55 = *(v47 + 16);
              v54 = *(v47 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_224ADA49C((v54 > 1), v55 + 1, 1);
                v47 = v123;
              }

              *(v47 + 16) = v55 + 1;
              v18 = v121;
              v52(v116 + v47 + v55 * v110, v103, v121);
              v49 = v104;
              v48 = v122;
              goto LABEL_8;
            }
          }

LABEL_6:

          v22 = v126;
          v47 = v114;
          v49 = v104;
        }

        v18 = v121;
        (*v99)(v49, v121);
LABEL_8:
        ++v45;
        result = v107;
        if (v45 == v108)
        {
          goto LABEL_28;
        }
      }
    }

    v47 = MEMORY[0x277D84F90];
    v18 = v121;
LABEL_28:

    v66 = v47;
    a3 = v111;
  }

  else
  {
    (*(v40 + 16))(&v88 - v38, a3 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v39);
    v62 = sub_224DAB228();
    v63 = sub_224DAF2A8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_224A2F000, v62, v63, "Locale change detected - reloading all snapshots", v64, 2u);
      v65 = v64;
      v18 = v121;
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    (*(v98 + 8))(v41, v119);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v66 = sub_224DAD3C8();
  }

  (*(v89 + 104))(v91, *MEMORY[0x277CF9B50], v90);
  (*(v92 + 104))(v94, *MEMORY[0x277CF9B40], v93);
  (*(v95 + 104))(v96, *MEMORY[0x277CF9BA8], v97);
  sub_224DACC48();
  result = sub_224DACC38();
  v110 = *(v66 + 16);
  if (!v110)
  {

    v73 = *(v113 + 8);
    return (v73)(v112, v120);
  }

  v68 = 0;
  v69 = *(a3 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters);
  v108 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v70 = *(v69 + 16);
  v71 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v114 = v66;
  v107 = v66 + v71;
  v106 = v115 + 16;
  v105 = (v98 + 16);
  v117 = (v115 + 8);
  v104 = (v98 + 8);
  v103 = (v113 + 16);
  v102 = (v69 + 32);
  v113 += 8;
  v72 = -v70;
  *&v67 = 138543362;
  v100 = v67;
  v109 = v15;
  while (2)
  {
    if (v68 < *(v114 + 16))
    {
      v74 = *(v115 + 72);
      v122 = v68;
      v75 = *(v115 + 16);
      v75(v26, v107 + v74 * v68, v18);
      (*v105)(v118, v111 + v108, v119);
      v75(v22, v26, v18);
      v76 = sub_224DAB228();
      v77 = v18;
      v78 = sub_224DAF2A8();
      if (os_log_type_enabled(v76, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = v100;
        v81 = sub_224DABDB8();
        v116 = *v117;
        v116(v126, v77);
        *(v79 + 4) = v81;
        *v80 = v81;
        _os_log_impl(&dword_224A2F000, v76, v78, "Locale change detected - reloading snapshots for  %{public}@", v79, 0xCu);
        sub_224A3311C(v80, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v80, -1, -1);
        v82 = v79;
        v22 = v126;
        MEMORY[0x22AA5EED0](v82, -1, -1);
      }

      else
      {

        v116 = *v117;
        v116(v22, v77);
      }

      ++v122;
      (*v104)(v118, v119);
      v83 = v109;
      (*v103)(v109, v112, v120);
      v84 = -1;
      result = v102;
      while (v72 + v84 != -1)
      {
        if (++v84 >= *(v69 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        v85 = result + 40;
        sub_224A3317C(result, &v123);
        v86 = v124;
        v87 = v125;
        __swift_project_boxed_opaque_existential_1(&v123, v124);
        LOBYTE(v86) = (*(v87 + 8))(v26, v83, v86, v87);
        __swift_destroy_boxed_opaque_existential_1(&v123);
        result = v85;
        v22 = v126;
        if ((v86 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      __swift_project_boxed_opaque_existential_1(v101, v101[3]);
      sub_224DAD3E8();
LABEL_32:
      v73 = *v113;
      (*v113)(v83, v120);
      v18 = v121;
      result = (v116)(v26, v121);
      v68 = v122;
      if (v122 != v110)
      {
        continue;
      }

      return (v73)(v112, v120);
    }

    break;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_224D6A368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v203 = a5;
  v238 = a4;
  v241 = sub_224DAB258();
  v261 = *(v241 - 8);
  v8 = MEMORY[0x28223BE20](v241, v7);
  v207 = &v199[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v10);
  v258 = &v199[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v202 = &v199[-v14];
  v237 = sub_224DAB798();
  v15 = *(v237 - 8);
  v17 = MEMORY[0x28223BE20](v237, v16);
  v236 = &v199[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v19);
  v235 = &v199[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v217 = &v199[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v209 = &v199[-v26];
  v215 = sub_224DA9688();
  v259 = *(v215 - 8);
  v28 = MEMORY[0x28223BE20](v215, v27);
  v206 = &v199[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v30);
  v245 = &v199[-v31];
  v260 = sub_224DA9878();
  v32 = *(v260 - 8);
  v34 = MEMORY[0x28223BE20](v260, v33);
  v230 = &v199[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v229 = &v199[-v38];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v199[-v41];
  MEMORY[0x28223BE20](v40, v43);
  v253 = &v199[-v44];
  v45 = sub_224DAC268();
  v46 = *(v45 - 8);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v201 = &v199[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = MEMORY[0x28223BE20](v48, v50);
  v221 = &v199[-v52];
  v54 = MEMORY[0x28223BE20](v51, v53);
  v211 = &v199[-v55];
  v57 = MEMORY[0x28223BE20](v54, v56);
  v204 = &v199[-v58];
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = &v199[-v61];
  MEMORY[0x28223BE20](v60, v63);
  v226 = &v199[-v64];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D40, &qword_224DC2020);
  v67 = MEMORY[0x28223BE20](v65 - 8, v66);
  v247 = &v199[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v67, v69);
  v239 = &v199[-v70];
  v71 = *a2;
  v72 = *(*a2 + 64);
  v240 = *a2 + 64;
  v264 = a1;
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v72;
  v225 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v213 = (v73 + 63) >> 6;
  v251 = (v46 + 16);
  v252 = (v32 + 16);
  v254 = (v46 + 32);
  v257 = (v32 + 32);
  v224 = v261 + 2;
  v248 = v46;
  v246 = (v46 + 8);
  v223 = v261 + 1;
  v214 = (v259 + 8);
  v222 = (v32 + 56);
  v234 = (v15 + 16);
  v233 = (v15 + 88);
  v232 = *MEMORY[0x277D85188];
  v218 = *MEMORY[0x277D85178];
  v210 = *MEMORY[0x277D85170];
  v205 = *MEMORY[0x277D85168];
  v200 = *MEMORY[0x277D85180];
  v231 = (v15 + 8);
  v243 = v32;
  v250 = (v32 + 8);
  v228 = (v15 + 96);
  v208 = a1;

  v76 = 0;
  v77 = 0;
  *&v78 = 136446466;
  v212 = v78;
  v227 = v71;
  v244 = v71;
  v216 = a2;
  v79 = v62;
  v262 = v45;
  v80 = v258;
  v256 = v42;
  v259 = v62;
  while (v75)
  {
    v81 = v262;
    v261 = v77;
    v82 = v76;
LABEL_16:
    v255 = (v75 - 1) & v75;
    v86 = __clz(__rbit64(v75)) | (v82 << 6);
    v87 = v227;
    v88 = v248;
    v89 = v226;
    (*(v248 + 16))(v226, *(v227 + 48) + *(v248 + 72) * v86, v81);
    v90 = v243;
    v91 = *(v87 + 56) + *(v243 + 72) * v86;
    v92 = v253;
    v93 = v260;
    (*(v243 + 16))(v253, v91, v260);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
    v95 = *(v94 + 48);
    v96 = *(v88 + 32);
    v85 = v247;
    v96(v247, v89, v81);
    (*(v90 + 32))(v85 + v95, v92, v93);
    (*(*(v94 - 8) + 56))(v85, 0, 1, v94);
    v77 = v261;
    v80 = v258;
    v79 = v259;
    v42 = v256;
LABEL_17:
    v97 = v239;
    sub_224A44E4C(v85, v239, &qword_27D6F6D40, &qword_224DC2020);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
    if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
    {
      v261 = v77;

      v154 = v208 + 56;
      v155 = 1 << *(v208 + 32);
      v156 = -1;
      if (v155 < 64)
      {
        v156 = ~(-1 << v155);
      }

      v157 = v156 & *(v208 + 56);
      v158 = (v155 + 63) >> 6;

      v159 = 0;
      v77 = v211;
      v160 = v242;
      v259 = v154;
      v260 = v158;
      while (v157)
      {
LABEL_58:
        v162 = v248;
        v163 = *(v248 + 16);
        v164 = v204;
        v165 = v262;
        v163(v204, *(v208 + 48) + *(v248 + 72) * (__clz(__rbit64(v157)) | (v159 << 6)), v262);
        (*(v162 + 32))(v77, v164, v165);
        swift_getObjectType();
        v166 = v211;
        v167 = v206;
        v168 = v261;
        sub_224DAC3F8();
        v261 = v168;
        if (v168)
        {
          v169 = v160 + v225;
          v170 = v241;
          (*v224)(v207, v169, v241);
          v171 = v201;
          v163(v201, v166, v262);
          v172 = v168;
          v173 = sub_224DAB228();
          v174 = sub_224DAF288();

          v175 = os_log_type_enabled(v173, v174);
          v176 = v246;
          if (v175)
          {
            v177 = v168;
            v178 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v263 = v258;
            *v178 = v212;
            sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
            v179 = sub_224DAFD28();
            LODWORD(v256) = v174;
            v181 = v180;
            v182 = *v176;
            (*v176)(v171, v262);
            v183 = sub_224A33F74(v179, v181, &v263);

            *(v178 + 4) = v183;
            *(v178 + 12) = 2114;
            v184 = v177;
            v185 = _swift_stdlib_bridgeErrorToNSError();
            *(v178 + 14) = v185;
            v186 = v257;
            *v257 = v185;
            _os_log_impl(&dword_224A2F000, v173, v256, "Failed to get url for %{public}s error: %{public}@, Prefetching snapshots anyway", v178, 0x16u);
            sub_224A3311C(v186, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v186, -1, -1);
            v187 = v258;
            __swift_destroy_boxed_opaque_existential_1(v258);
            MEMORY[0x22AA5EED0](v187, -1, -1);
            v188 = v178;
            v154 = v259;
            MEMORY[0x22AA5EED0](v188, -1, -1);

            v79 = v182;
            (*v223)(v207, v241);
          }

          else
          {

            v79 = *v176;
            (*v176)(v171, v262);
            (*v223)(v207, v170);
          }

          v194 = v216;
          v77 = v211;
          if (*(v244 + 16) == v203)
          {
            goto LABEL_70;
          }

          v195 = v253;
          sub_224DA9868();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v263 = *v194;
          sub_224B23E3C(v195, v77, isUniquelyReferenced_nonNull_native);
          v244 = v263;
          *v194 = v263;
          v197 = v202;
          sub_224B0331C(v77, v202);

          sub_224A3311C(v197, &qword_27D6F4A18, &qword_224DB9070);
          v261 = 0;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1((v160 + 40), *(v160 + 64));
          sub_224DA9648();
          v189 = sub_224DAA378();

          if (v189)
          {
            (*v214)(v167, v215);
            v79 = *v246;
            v77 = v211;
            v154 = v259;
          }

          else
          {
            v190 = v216;
            v77 = v211;
            v154 = v259;
            if (*(v244 + 16) == v203)
            {

              (*v214)(v206, v215);
              (*v246)(v77, v262);
              return v264;
            }

            v191 = v253;
            sub_224DA9868();
            v192 = swift_isUniquelyReferenced_nonNull_native();
            v263 = *v190;
            sub_224B23E3C(v191, v77, v192);
            v244 = v263;
            *v190 = v263;
            v193 = v202;
            sub_224B0331C(v77, v202);
            sub_224A3311C(v193, &qword_27D6F4A18, &qword_224DB9070);
            (*v214)(v206, v215);
            v79 = *v246;
          }
        }

        v157 &= v157 - 1;
        v79(v77, v262);
        v160 = v242;
        v158 = v260;
      }

      while (1)
      {
        v161 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
          break;
        }

        if (v161 >= v158)
        {

          return v264;
        }

        v157 = *(v154 + 8 * v161);
        ++v159;
        if (v157)
        {
          v159 = v161;
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_73:
      result = sub_224DAFB58();
      __break(1u);
      return result;
    }

    v99 = *(v98 + 48);
    (*v254)(v79, v97, v262);
    v249 = *v257;
    v249(v42, &v97[v99], v260);
    v100 = v242;
    swift_getObjectType();
    v101 = v245;
    sub_224DAC3F8();
    if (v77)
    {
      v102 = v241;
      (*v224)(v80, v100 + v225, v241);
      v103 = v221;
      v104 = v262;
      (*v251)(v221, v79, v262);
      v105 = v77;
      v106 = v104;
      v107 = v80;
      v108 = sub_224DAB228();
      v109 = sub_224DAF288();

      v110 = os_log_type_enabled(v108, v109);
      v75 = v255;
      if (v110)
      {
        v111 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v263 = v261;
        *v111 = v212;
        sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v219 = v109;
        v112 = v106;
        v113 = sub_224DAFD28();
        v115 = v114;
        v116 = v246;
        (*v246)(v103, v112);
        v117 = sub_224A33F74(v113, v115, &v263);

        *(v111 + 4) = v117;
        *(v111 + 12) = 2114;
        v118 = v77;
        v119 = _swift_stdlib_bridgeErrorToNSError();
        *(v111 + 14) = v119;
        v120 = v220;
        *v220 = v119;
        _os_log_impl(&dword_224A2F000, v108, v219, "Failed to get url for %{public}s error: %{public}@", v111, 0x16u);
        sub_224A3311C(v120, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v120, -1, -1);
        v121 = v261;
        __swift_destroy_boxed_opaque_existential_1(v261);
        MEMORY[0x22AA5EED0](v121, -1, -1);
        MEMORY[0x22AA5EED0](v111, -1, -1);

        (*v223)(v258, v241);
        v261 = 0;
        v122 = v116;
      }

      else
      {

        v122 = v246;
        (*v246)(v103, v106);
        (*v223)(v107, v102);
        v261 = 0;
      }

      goto LABEL_29;
    }

    v261 = 0;
    __swift_project_boxed_opaque_existential_1((v100 + 40), *(v100 + 64));
    sub_224DA9648();
    v123 = sub_224DAA378();

    v75 = v255;
    if ((v123 & 1) == 0)
    {
      (*v214)(v101, v215);
      v122 = v246;
LABEL_29:
      v134 = v237;
      v125 = v236;
      v135 = v235;
      goto LABEL_30;
    }

    v124 = sub_224A61E5C(v259);
    v122 = v246;
    v125 = v236;
    v126 = v209;
    if (v127)
    {
      v128 = v124;
      v129 = v216;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v131 = *v129;
      v263 = *v129;
      if (!v130)
      {
        sub_224B2B050();
        v131 = v263;
      }

      (*(v248 + 8))(*(v131 + 48) + *(v248 + 72) * v128, v262);
      v132 = v260;
      v249(v126, (*(v131 + 56) + *(v243 + 72) * v128), v260);
      sub_224B1EC10(v128, v131);
      (*v214)(v245, v215);
      v133 = 0;
      v244 = v131;
      *v129 = v131;
      v134 = v237;
      v135 = v235;
    }

    else
    {
      (*v214)(v245, v215);
      v133 = 1;
      v134 = v237;
      v135 = v235;
      v132 = v260;
    }

    (*v222)(v126, v133, 1, v132);
    sub_224A3311C(v126, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_30:
    v42 = v256;
    v137 = *v234;
    (*v234)(v135, v238, v134);
    v137(v125, v135, v134);
    v138 = (*v233)(v125, v134);
    if (v138 == v232)
    {
      (*v231)(v135, v134);
      (*v228)(v125, v134);
      v139 = v250;
      goto LABEL_37;
    }

    v139 = v250;
    if (v138 == v218 || v138 == v210 || v138 == v205)
    {
      (*v231)(v135, v134);
      (*v228)(v125, v134);
LABEL_37:
      v140 = v253;
      sub_224DA9868();
      v141 = v260;
      (*v252)(v230, v42, v260);
      v142 = v229;
      sub_224DA9738();
      v143 = sub_224DA9788();
      v144 = *v139;
      (*v139)(v142, v141);
      v144(v140, v141);
      if (v143)
      {
        v145 = sub_224A61E5C(v259);
        if (v146)
        {
          v147 = v145;
          v148 = v216;
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v150 = *v148;
          v263 = *v148;
          if (!v149)
          {
            sub_224B2B050();
            v150 = v263;
          }

          (*(v248 + 8))(*(v150 + 48) + *(v248 + 72) * v147, v262);
          v151 = v217;
          v152 = v260;
          v249(v217, (*(v150 + 56) + *(v243 + 72) * v147), v260);
          sub_224B1EC10(v147, v150);
          v153 = 0;
          v244 = v150;
          *v148 = v150;
          v42 = v256;
        }

        else
        {
          v153 = 1;
          v151 = v217;
          v152 = v260;
        }

        (*v222)(v151, v153, 1, v152);
        sub_224A3311C(v151, &qword_27D6F32B0, &qword_224DB3EA0);
        v144(v42, v152);
      }

      else
      {
        v144(v42, v141);
      }

      goto LABEL_5;
    }

    if (v138 != v200)
    {
      goto LABEL_73;
    }

    (*v231)(v135, v134);
    (*v139)(v42, v260);
LABEL_5:
    v79 = v259;
    (*v122)(v259, v262);
    v77 = v261;
    v80 = v258;
  }

  if (v213 <= v76 + 1)
  {
    v83 = v76 + 1;
  }

  else
  {
    v83 = v213;
  }

  v84 = v83 - 1;
  v85 = v247;
  while (1)
  {
    v82 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v82 >= v213)
    {
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
      (*(*(v136 - 8) + 56))(v85, 1, 1, v136);
      v255 = 0;
      v76 = v84;
      goto LABEL_17;
    }

    v75 = *(v240 + 8 * v82);
    ++v76;
    if (v75)
    {
      v81 = v262;
      v261 = v77;
      v76 = v82;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_70:
  v79(v77, v262);

  return v264;
}

uint64_t sub_224D6BDD4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v12 = a2;
  sub_224DAC238();
  sub_224D670B0(v10, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_224D6BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_224DADDD8();

  return v3;
}

uint64_t sub_224D6BFB0(uint64_t a1, unint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_224DACC88();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v20, v6);
  sub_224DABD88();
  sub_224A8571C(v21, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_224DB3100;
  (*(v12 + 16))(v17 + v16, v15, v11);
  sub_224D68AC0(v17, v5);
  swift_setDeallocating();
  v18 = *(v12 + 8);
  v18(v17 + v16, v11);
  swift_deallocClassInstance();
  (*(v22 + 8))(v5, v23);
  return (v18)(v15, v11);
}

void sub_224D6C2F8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v60 = &v54 - v3;
  v68 = sub_224DAE588();
  v61 = *(v68 - 8);
  v5 = MEMORY[0x28223BE20](v68, v4);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v54 - v11;
  v13 = sub_224DAD158();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DA9908();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA98F8();
  sub_224DA9898();
  (*(v18 + 8))(v21, v17);
  v22 = sub_224DAC248();
  v23 = sub_224DAC258();
  v24 = objc_allocWithZone(MEMORY[0x277CFA288]);
  v25 = sub_224DAEDE8();

  v26 = [v24 initWithUniqueIdentifier:v25 widget:v22 metrics:v23];

  v27 = v62;

  sub_224DADDE8();

  if ((*(v27 + 48))(v12, 1, v13) == 1)
  {
    sub_224A3311C(v12, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    v28 = *(v27 + 32);
    v57 = v13;
    v28(v16, v12, v13);
    v29 = sub_224DAD088();
    v55 = v26;
    [v26 setSupportedColorSchemes_];
    v56 = v16;
    v30 = sub_224DAD0B8();
    v58 = MEMORY[0x277D84F90];
    v69 = MEMORY[0x277D84F90];
    v31 = *(v30 + 56);
    v59 = v30 + 56;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v35 = (v32 + 63) >> 6;
    v36 = v61;
    v63 = v61 + 8;
    v64 = v61 + 16;
    v65 = v30;

    v37 = 0;
    if (!v34)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v66;
        v40 = *(v36 + 16);
        v41 = v68;
        v40(v66, *(v65 + 48) + *(v36 + 72) * (v38 | (v37 << 6)), v68);
        sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
        v40(v67, v39, v41);
        v42 = sub_224DAF588();
        v43 = (*(v36 + 8))(v39, v41);
        if (v42)
        {
          break;
        }

        if (!v34)
        {
          goto LABEL_8;
        }
      }

      MEMORY[0x22AA5D350](v43);
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();
      v58 = v69;
    }

    while (v34);
    while (1)
    {
LABEL_8:
      v44 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return;
      }

      if (v44 >= v35)
      {
        break;
      }

      v34 = *(v59 + 8 * v44);
      ++v37;
      if (v34)
      {
        v37 = v44;
        goto LABEL_6;
      }
    }

    sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
    v45 = sub_224DAEFF8();

    v46 = v55;
    [v55 setSupportedRenderSchemes_];

    v47 = v56;
    v48 = sub_224DAD128();
    v49 = sub_224D5D284(v48);

    if (v49)
    {
      [v46 setDisplayProperties_];
    }

    [v46 setShowsWidgetLabel_];
    [v46 setSupportedProximities_];
    v50 = v60;
    sub_224DAD0D8();
    v51 = sub_224DA9428();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      sub_224A3311C(v50, &qword_27D6F6D20, &unk_224DC1FE0);
      v53 = 0;
    }

    else
    {
      v53 = sub_224DA9418();
      (*(v52 + 8))(v50, v51);
    }

    [v46 setIdealizedDateComponents_];

    (*(v62 + 8))(v47, v57);
  }
}

uint64_t sub_224D6CA20()
{
  v2 = v1;
  v57 = sub_224DA9688();
  v54 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57, v3);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v51 = v50 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v56 = v50 - v11;
  v66 = sub_224DAC268();
  v12 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66, v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v50 - v18;
  sub_224D68324();
  v21 = *(v20 + 16);
  v52 = v19;
  v53 = v6;
  if (v21)
  {
    v64 = v0;
    v58 = v1;
    v67 = MEMORY[0x277D84F90];
    v22 = v20;
    sub_224ADA224(0, v21, 0);
    v23 = v67;
    v65 = (v12 + 32);
    v63 = v22;
    v24 = (v22 + 40);
    do
    {
      v25 = *v24;
      v26 = *(v24 - 1);
      v27 = v25;
      sub_224DAC238();
      v67 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_224ADA224((v28 > 1), v29 + 1, 1);
        v23 = v67;
      }

      *(v23 + 16) = v29 + 1;
      (*(v12 + 32))(v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v16, v66);
      v24 += 2;
      --v21;
    }

    while (v21);

    v2 = v58;
    v19 = v52;
    v6 = v53;
    v0 = v64;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v30 = *(v23 + 16);
  v31 = v66;
  if (v30)
  {
    v32 = *(v0 + 24);
    v63 = *(v0 + 32);
    v64 = v32;
    ObjectType = swift_getObjectType();
    v35 = *(v12 + 16);
    v34 = v12 + 16;
    v61 = v35;
    v62 = ObjectType;
    v36 = v23 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v59 = (v34 - 8);
    v60 = v37;
    v50[0] = v54 + 8;
    v55 = (v54 + 32);
    v65 = MEMORY[0x277D84F90];
    v50[1] = v34;
    v35(v19, v36, v31);
    while (1)
    {
      sub_224DAC3F8();
      if (v2)
      {

        (*v59)(v19, v31);
        v2 = 0;
      }

      else
      {
        v38 = v31;
        v39 = v51;
        sub_224DA9548();
        v40 = v57;
        (*v50[0])(v6, v57);
        (*v59)(v19, v38);
        v41 = *v55;
        (*v55)(v56, v39, v40);
        v42 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_224AD9420(0, v42[2] + 1, 1, v42);
        }

        v45 = v42[2];
        v44 = v42[3];
        v65 = v42;
        v31 = v66;
        v19 = v52;
        if (v45 >= v44 >> 1)
        {
          v65 = sub_224AD9420((v44 > 1), v45 + 1, 1, v65);
        }

        v46 = v65;
        v65[2] = v45 + 1;
        v41(&v46[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45], v56, v57);
        v2 = v58;
        v6 = v53;
      }

      v36 += v60;
      if (!--v30)
      {
        break;
      }

      v61(v19, v36, v31);
    }

    v47 = v65;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v48 = sub_224AE9040(v47);

  return v48;
}

uint64_t sub_224D6CF08()
{
  v2 = v1;
  v3 = sub_224DA9688();
  v41 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - v13;
  v47[0] = *(v0 + 24);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x277D84FA0];
  }

  v37 = v14;
  v38 = v3;
  v39 = v11;
  v40 = v7;
  v15 = v48;
  v48 = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
  result = sub_224DAC678();
  v17 = result;
  v18 = *(result + 16);
  if (!v18)
  {

    return MEMORY[0x277D84FA0];
  }

  v19 = 0;
  v20 = result + 32;
  v21 = v41 + 16;
  v22 = (v41 + 8);
  v35 = result;
  v36 = v15;
  v33 = result + 32;
  v34 = v18;
  v46 = v41 + 16;
  while (v19 < *(v17 + 16))
  {
    sub_224A3317C(v20 + 40 * v19, v47);
    v23 = sub_224DAC9A8();
    if (v2)
    {

      result = __swift_destroy_boxed_opaque_existential_1(v47);
      v2 = 0;
    }

    else
    {
      v24 = v21;
      v44 = v23;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v25 = *(v44 + 16);
      if (v25)
      {
        v42 = v19;
        v43 = 0;
        v26 = v40;
        v27 = v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v45 = *(v41 + 72);
        v28 = *(v41 + 16);
        v30 = v38;
        v29 = v39;
        v31 = v37;
        do
        {
          v28(v31, v27, v30);
          sub_224DA9548();
          sub_224ADB390(v29, v26);
          v32 = *v22;
          (*v22)(v29, v30);
          v32(v31, v30);
          v27 += v45;
          --v25;
        }

        while (v25);

        v19 = v42;
        v2 = v43;
        v17 = v35;
        v20 = v33;
        v18 = v34;
        v21 = v46;
      }

      else
      {

        v21 = v24;
      }
    }

    if (++v19 == v18)
    {

      return v48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D6D294()
{
  v0 = sub_224DAA528();
  __swift_allocate_value_buffer(v0, qword_281365180);
  __swift_project_value_buffer(v0, qword_281365180);
  return sub_224DAA518();
}

void sub_224D6D2F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v80 = &v72 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v82 = &v72 - v12;
  v96 = sub_224DA9688();
  v13 = *(v96 - 8);
  v15 = MEMORY[0x28223BE20](v96, v14);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v77 = &v72 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v91 = &v72 - v25;
  v95 = sub_224DA9878();
  v26 = *(v95 - 8);
  v28 = MEMORY[0x28223BE20](v95, v27);
  v74 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v101 = MEMORY[0x277D84FA0];
  v84 = &v72 - v31;
  sub_224DA9808();
  v32 = *(a1 + 48);
  v35 = *(v32 + 56);
  v34 = v32 + 56;
  v33 = v35;
  v36 = 1 << *(*(a1 + 48) + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v33;
  v39 = (v36 + 63) >> 6;
  v94 = v13 + 16;
  v90 = v13 + 32;
  v92 = v13;
  v88 = (v13 + 8);
  v76 = (v26 + 56);
  v85 = (v26 + 48);
  v73 = (v26 + 32);
  v83 = (v26 + 8);
  v40 = v23;

  v42 = 0;
  v89 = 0;
  v87 = v39;
  v79 = v2;
  v86 = v23;
  v81 = v41;
  while (v38)
  {
LABEL_10:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v41;
    v47 = v91;
    v46 = v92;
    v48 = *(v41 + 48) + *(v92 + 72) * (v44 | (v42 << 6));
    v49 = v96;
    v93 = *(v92 + 16);
    v93(v91, v48, v96);
    (*(v46 + 32))(v40, v47, v49);
    v99 = sub_224DA95A8();
    v100 = v50;
    v51 = v2[6];
    v97 = v2[5];
    v98 = v51;
    sub_224AFC154();
    LOBYTE(v46) = sub_224DAF748();

    if (v46)
    {
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v52 = v82;
      v53 = v89;
      sub_224DAA398();
      if (v53)
      {

        (*v76)(v52, 1, 1, v95);
        v89 = 0;
LABEL_14:
        sub_224A3311C(v52, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_15:
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        if (qword_281351810 != -1)
        {
          swift_once();
        }

        v55 = sub_224DAA528();
        __swift_project_value_buffer(v55, qword_281365180);
        v56 = MEMORY[0x277CC9578];
        sub_224A6018C(&qword_281351A30, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
        sub_224A6018C(&qword_281351A48, v56, MEMORY[0x277CC9580]);
        v57 = v80;
        v58 = v95;
        sub_224DAA3B8();
        v59 = *v85;
        v60 = (*v85)(v57, 1, v58);
        v61 = v96;
        if (v60 == 1)
        {
          goto LABEL_20;
        }

        v62 = v75;
        sub_224A3796C(v57, v75, &qword_27D6F32B0, &qword_224DB3EA0);
        v63 = v95;
        if (v59(v62, 1, v95) == 1)
        {
          goto LABEL_27;
        }

        v64 = sub_224DA9788();
        (*v83)(v62, v63);
        if (v64)
        {
LABEL_20:
          v65 = v78;
          v66 = v86;
          v93(v78, v86, v61);
          v67 = v77;
          v68 = v65;
          v40 = v66;
          sub_224ADB390(v77, v68);
          v69 = *v88;
          (*v88)(v67, v61);
          v69(v66, v61);
        }

        else
        {
          v40 = v86;
          (*v88)(v86, v61);
        }

        v39 = v87;
        sub_224A3311C(v57, &qword_27D6F32B0, &qword_224DB3EA0);
        v2 = v79;
        v41 = v81;
      }

      else
      {
        v89 = 0;
        v54 = v95;
        if ((*v85)(v52, 1, v95) == 1)
        {
          goto LABEL_14;
        }

        v70 = v74;
        (*v73)(v74, v52, v54);
        v71 = sub_224DA9788();
        (*v83)(v70, v54);
        if ((v71 & 1) == 0)
        {
          goto LABEL_15;
        }

        v40 = v86;
        (*v88)(v86, v96);
        v41 = v81;
        v39 = v87;
      }
    }

    else
    {
      (*v88)(v40, v49);
      v41 = v45;
      v39 = v87;
    }
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v39)
    {

      (*v83)(v84, v95);
      return;
    }

    v38 = *(v34 + 8 * v43);
    ++v42;
    if (v38)
    {
      v42 = v43;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t *sub_224D6DB1C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_224D6DE10(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_224D6DBB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_224DAFAE8();
      sub_224DABF48();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    if (sub_224DAFAA8() == *(a4 + 36))
    {
      sub_224DAFAB8();
      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      sub_224B304F8();
      v5 = v4;

      if (v5)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 64) >> a1) & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_12:
}

uint64_t sub_224D6DD0C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_224DAC918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_224D6DE10(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v38 = a2;
  v39 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v6 = MEMORY[0x28223BE20](v50, v5);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v48 = &v38 - v9;
  v47 = sub_224DABE18();
  result = MEMORY[0x28223BE20](v47, v10);
  v54 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v52 = a3;
  v15 = *(a3 + 64);
  v42 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v40 = 0;
  v41 = (v16 + 63) >> 6;
  v45 = v12 + 16;
  v46 = v12;
  v44 = v12 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v52;
    v24 = v46;
    v25 = v47;
    v26 = *(v46 + 16);
    v27 = v54;
    v26(v54, v52[6] + *(v46 + 72) * v22, v47);
    v28 = v23[7];
    v43 = v22;
    v29 = *(v28 + 8 * v22);
    v30 = v48;
    v26(v48, v27, v25);
    v31 = v49;
    *(v30 + *(v50 + 48)) = v29;
    sub_224A3796C(v30, v31, &qword_27D6F6D38, &unk_224DC2010);
    swift_bridgeObjectRetain_n();

    v32 = sub_224DABDB8();
    v33 = *(v24 + 8);
    v34 = v33(v31, v25);
    v56 = v32;
    MEMORY[0x28223BE20](v34, v35);
    *(&v38 - 2) = &v56;
    v36 = v55;
    LOBYTE(v31) = sub_224B449EC(sub_224D6E378, (&v38 - 4), v51);
    v55 = v36;
    sub_224A3311C(v30, &qword_27D6F6D38, &unk_224DC2010);

    result = v33(v54, v25);
    v18 = v53;
    if (v31)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v39, v38, v40, v52);
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v41)
    {
      return sub_224B2E0C4(v39, v38, v40, v52);
    }

    v21 = *(v42 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D6E1B8(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_224D6DB1C(v13, v7, a1, a2);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_224D6DE10((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

double sub_224D6E398(uint64_t a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224D63848(a1, v4, v5);
}

uint64_t sub_224D6E444()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);

  return sub_224D5DC80(v4, v5, v0 + v2, v6, (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224D6E4F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_224D6E540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static _ChronodStartupHelper.bootstrap()()
{
  v0 = sub_224DA9878();
  v64 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB798();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v56 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_224DAB878();
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v55 = &v49 - v17;
  v53 = sub_224DAF3C8();
  v18 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAF318();
  MEMORY[0x28223BE20](v22, v23);
  v24 = sub_224DAB848();
  v59 = *(v24 - 8);
  v60 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v50 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224AC319C();
  v51 = ".snapshot-expiration";
  sub_224DAB808();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A47C58(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v18 + 104))(v21, *MEMORY[0x277D85268], v53);
  v27 = v50;
  v53 = sub_224DAF418();
  v28 = swift_allocObject();
  sub_224DAD198();
  *(v28 + 16) = sub_224DAD188();
  v29 = v54;
  sub_224DAB858();
  v31 = v56;
  v30 = v57;
  *v56 = 20;
  v32 = v58;
  (*(v30 + 104))(v31, *MEMORY[0x277D85188], v58);
  v33 = v55;
  MEMORY[0x22AA59C40](v29, v31);
  (*(v30 + 8))(v31, v32);
  v34 = *(v66 + 8);
  v66 += 8;
  v58 = v34;
  v34(v29, v65);
  aBlock[4] = sub_224D6EE58;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_58;
  v35 = _Block_copy(aBlock);

  v36 = v27;
  sub_224DAB7E8();
  v67 = MEMORY[0x277D84F90];
  sub_224A47C58(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v38 = v61;
  v37 = v62;
  v39 = v53;
  sub_224DAF788();
  MEMORY[0x22AA5D6A0](v33, v36, v38, v35);
  _Block_release(v35);
  (*(v63 + 8))(v38, v37);
  (*(v59 + 8))(v36, v60);
  v58(v33, v65);

  CHDRegisterForTemporaryFolder();
  CHDEnterSandbox();
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281364DF0);
  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_224A2F000, v41, v42, "Elevating inactive jetsam band.", v43, 2u);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  CHDJetsamSetElevatedInactivePriority(1);
  sub_224DAEEB8();
  v44 = sub_224DAEE48();

  notify_post((v44 + 32));

  sub_224D6F100(v39);
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224C3DE38(sub_224D6EE94, 0);
  v45 = *MEMORY[0x277CBF058];
  v46 = (v64 + 8);
  while (1)
  {
    sub_224DA9748();
    sub_224DA97D8();
    v48 = v47;
    (*v46)(v3, v0);
    CFRunLoopRunInMode(v45, v48, 0);
  }
}

double sub_224D6EE58()
{
  swift_beginAccess();
  *(v0 + 16) = 0;

  return result;
}

void sub_224D6EE94()
{
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364DF0);
  oslog = sub_224DAB228();
  v1 = sub_224DAF2A8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_224A2F000, oslog, v1, "Startup completed.", v2, 2u);
    MEMORY[0x22AA5EED0](v2, -1, -1);
  }
}

void sub_224D6EF7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364DF0);

  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_224A33F74(a2, a3, v12);
    _os_log_impl(&dword_224A2F000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
}

void sub_224D6F100(NSObject *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_224DA9E78();
  sub_224DA9E68();
  v2 = sub_224DA9D08();

  if (v2)
  {
    out_token = -1;
    v3 = swift_allocObject();
    *(v3 + 16) = 60;
    v4 = (v3 + 16);
    v5 = swift_allocObject();
    v5[2] = 0xD000000000000017;
    v5[3] = 0x8000000224DD0110;
    v5[4] = v3;
    aBlock[4] = sub_224D6F5CC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224AC3A24;
    aBlock[3] = &block_descriptor_11_0;
    v6 = _Block_copy(aBlock);

    LODWORD(a1) = notify_register_dispatch("com.apple.chronod.start", &out_token, a1, v6);
    _Block_release(v6);
    if (a1)
    {
      if (qword_281351480 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281364DF0);
      a1 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      if (os_log_type_enabled(a1, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock[0] = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, aBlock);
        _os_log_impl(&dword_224A2F000, a1, v14, "%{public}s: Waiting", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x22AA5EED0](v16, -1, -1);
        MEMORY[0x22AA5EED0](v15, -1, -1);
      }

      swift_beginAccess();
      if (*v4 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v8 = sub_224DAB228();
        v18 = sub_224DAF2A8();
        if (os_log_type_enabled(v8, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v22 = v20;
          *v19 = 136446210;
          *(v19 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, &v22);
          _os_log_impl(&dword_224A2F000, v8, v18, "%{public}s: Done waiting; startup continues", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x22AA5EED0](v20, -1, -1);
          v12 = v19;
          goto LABEL_15;
        }

LABEL_16:

        return;
      }

      while (1)
      {
        sleep(1u);
        v17 = *v4 - 1;
        if (__OFSUB__(*v4, 1))
        {
          break;
        }

        *v4 = v17;
        if (v17 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364DF0);
    v8 = sub_224DAB228();
    v9 = sub_224DAF288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, aBlock);
      *(v10 + 12) = 1026;
      *(v10 + 14) = a1;
      _os_log_impl(&dword_224A2F000, v8, v9, "%{public}s: %{public}u", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      v12 = v10;
LABEL_15:
      MEMORY[0x22AA5EED0](v12, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }
}

unint64_t sub_224D6F690()
{
  result = qword_27D6F6D70;
  if (!qword_27D6F6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6D70);
  }

  return result;
}

unint64_t sub_224D6F6E8()
{
  result = qword_27D6F6D78;
  if (!qword_27D6F6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6D78);
  }

  return result;
}

id sub_224D6F754()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19[-v9];
  v11 = [v1 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v7 + 16))(v10, &v11[v12], v6);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v5);
  v14 = sub_224DAF508();

  v15 = [v1 kind];
  if (!v15)
  {
    sub_224DAEE18();
    v15 = sub_224DAEDE8();
  }

  v16 = [v1 intentReference];
  v17 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v14 kind:v15 intentReference:v16];

  return v17;
}

id sub_224D6F99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v36 = v32 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v7 = v32 - v6;
  v8 = [v0 controlItems];
  v9 = sub_224DAF5D8();
  v10 = sub_224DAF008();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:

    v29 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
    v30 = sub_224DAEFF8();

    v31 = [v29 initWithControlItems_];

    return v31;
  }

  v11 = sub_224DAF838();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v38 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v32[1] = v9;
    v13 = sub_224DAF538();
    v14 = 0;
    v33 = v10 & 0xC000000000000001;
    v34 = v13;
    v15 = (v4 + 16);
    v35 = v11;
    do
    {
      if (v33)
      {
        v17 = MEMORY[0x22AA5DCC0](v14, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v10;
      v20 = [v17 controlIdentity];
      v21 = [v20 extensionIdentity];
      v22 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*v15)(v7, &v21[v22], v37);
      v23 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      sub_224AFD468(&v21[v23], v36);
      v24 = sub_224DAF508();

      v25 = [v20 kind];
      if (!v25)
      {
        sub_224DAEE18();
        v25 = sub_224DAEDE8();
      }

      v26 = [v20 intentReference];
      v27 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v24 kind:v25 intentReference:v26];

      v28 = [v18 uniqueIdentifier];
      if (!v28)
      {
        sub_224DAEE18();
        v28 = sub_224DAEDE8();
      }

      ++v14;
      v16 = [v18 location];
      [objc_allocWithZone(MEMORY[0x277CFA200]) initWithUniqueIdentifier:v28 controlIdentity:v27 location:v16];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v10 = v19;
    }

    while (v35 != v14);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_224D6FDFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19[-v9];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v7 + 16))(v10, &v11[v12], v6);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v5);
  sub_224DA9898();
  v14 = sub_224DAF508();

  v15 = [v1 kind];
  if (!v15)
  {
    sub_224DAEE18();
    v15 = sub_224DAEDE8();
  }

  v16 = [v1 intentReference];
  v17 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v14 kind:v15 intentReference:v16];

  return v17;
}

void sub_224D70054(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 controlIdentity];
  v5 = [v4 extensionIdentity];

  v6 = &v5[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 1);

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v8 == sub_224DA9898() && v7 == v9)
  {

    goto LABEL_9;
  }

  v11 = sub_224DAFD88();

  if (v11)
  {
LABEL_9:
    v12 = v3;
    goto LABEL_10;
  }

LABEL_7:
  v3 = 0;
LABEL_10:
  *a2 = v3;
}

uint64_t sub_224D701AC()
{
  v1 = v0;
  v2 = *(v0 + qword_28135C9F0);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  if (*(v1 + qword_28135CA40))
  {

    sub_224DAC5F8();
  }

  os_unfair_lock_unlock(*(v2 + 16));

  v4 = qword_281365438;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  sub_224A3311C(v1 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  if (*(v1 + qword_28135CA30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + qword_28135CA30));
  }

  sub_224A3311C(v1 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);

  return v1;
}

uint64_t sub_224D70358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_224DAA428();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  v16 = qword_28135CA28;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_224A683FC(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      (*(v12 + 16))(v15, v20 + qword_281365430, v11);
      v21 = *(*v20 + 104);
      swift_beginAccess();
      v22 = *(v20 + v21);
      v23 = *(*v20 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v10, v20 + v23, v6);
      v24 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      v25 = swift_allocObject();
      (*(v12 + 32))(v25 + qword_281365418, v15, v11);
      *(v25 + *(*v25 + 104)) = v24;
      (*(v7 + 32))(v25 + *(*v25 + 112), v10, v6);
      return v25;
    }
  }

  return 0;
}