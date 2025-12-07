char *sub_252DA3B1C()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = [v7 taskOutcome];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7BD8(0, *(v6 + 2) + 1, 1, v6);
        }

        v12 = *(v6 + 2);
        v11 = *(v6 + 3);
        if (v12 >= v11 >> 1)
        {
          v6 = sub_2529F7BD8((v11 > 1), v12 + 1, 1, v6);
        }

        *(v6 + 2) = v12 + 1;
        *&v6[8 * v12 + 32] = v10;
        ++v5;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_21:
  }

  else
  {
    sub_252DA66F4();
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t sub_252DA3CEC()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    type metadata accessor for HomeUserTaskResponse();
    v2 = sub_252E37264();

    v3 = [v0 entity];
    if (v3)
    {

      if (v2 >> 62)
      {
LABEL_16:
        v4 = sub_252E378C4();
        if (v4)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            v1 = v4 != v5;
            if (v4 == v5)
            {
              goto LABEL_18;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x2530ADF00](v5, v2);
            }

            else
            {
              if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_15;
              }

              v6 = *(v2 + 8 * v5 + 32);
            }

            v7 = v6;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

            v8 = [v6 taskOutcome];

            ++v5;
            if (v8 == 23)
            {
              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_5;
        }
      }
    }

    v1 = 0;
LABEL_18:
  }

  return v1;
}

uint64_t sub_252DA3E40()
{
  v1 = [v0 taskResponses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  v4 = [v0 entity];
  if (v4)
  {

    if (v3 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = v3;
      v9 = v3 + 32;
      while (1)
      {
        if (v7)
        {
          v10 = MEMORY[0x2530ADF00](v6, v24);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v9 + 8 * v6);
        }

        v11 = v10;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (qword_27F53F740 != -1)
        {
          swift_once();
        }

        v3 = qword_27F575C50;
        v13 = [v11 taskOutcome];
        if (!*(v3 + 16))
        {
          goto LABEL_6;
        }

        v14 = v13;
        sub_252E37EC4();
        MEMORY[0x2530AE390](v14);
        v15 = sub_252E37F14();
        v16 = -1 << *(v3 + 32);
        v17 = v15 & ~v16;
        if (((*(v3 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_6;
        }

        v18 = ~v16;
        while (*(*(v3 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v3 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v19 = [v11 userTask];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 attribute];

          if (v21 == 67)
          {
            v22 = 1;
            goto LABEL_30;
          }
        }

        else
        {
LABEL_6:
        }

        if (v6 == i)
        {
          v22 = 0;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }
  }

  v22 = 0;
LABEL_30:

  return v22;
}

char *combineIntentResponses(intentResponses:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_15:
    v18 = combineResults(results:)(v3);

    return v18;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_2529AA400(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2530ADF00](v5, a1);
        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_2529AA400((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v19 + 16) = v8 + 1;
        v9 = v19 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = 0;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v19 + 16);
        v13 = *(v19 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          sub_2529AA400(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v19 + 16) = v12 + 1;
        v15 = v19 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = 0;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *parse(error:with:)(void *a1, void *a2)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v30 > 1u || v30)
  {
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v21 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v20[v21] = 5;
    [v20 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v22 = sub_252E37254();
    [v20 setEntityResponses_];

    return v20;
  }

LABEL_6:
  type metadata accessor for HomeEntityResponse.Builder();
  v5 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v6.n128_f64[0] = HomeEntity.Builder.init()();
  v8 = (*(*v7 + 448))(v6);

  v9 = MEMORY[0x277D84F90];
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v11 = [a2 userTask];
  v12 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v13 = sub_252E36F04();
  v14 = [v12 initWithIdentifier:0 displayString:v13];

  v15 = v14;
  [v15 setTaskOutcome_];
  [v15 setUserTask_];

  *(inited + 32) = v15;
  v16 = sub_25297D0C0(inited);

  swift_setDeallocating();
  v17 = sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
  v18 = (*(*v16 + 192))(v17);

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v19 = swift_allocObject();
  *(v19 + 16) = 4;
  *(v19 + 24) = v9;
  if (v30)
  {
    v24 = sub_252E37DB4();

    v23 = 104;
    if (v24)
    {
      v23 = 5;
    }
  }

  else
  {

    v23 = 5;
  }

  *(v19 + 16) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_252E3C290;
  *(v25 + 32) = v18;
  v26 = v18;
  v27 = sub_25297D0C0(v25);

  swift_setDeallocating();
  v28 = sub_25293847C(v25 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v20 = (*(*v27 + 176))(v28);

  return v20;
}

uint64_t sub_252DA4788(void *a1, uint64_t *a2, uint64_t a3)
{
  result = [v3 taskResponses];
  if (!result)
  {
    return result;
  }

  v8 = result;
  type metadata accessor for HomeUserTaskResponse();
  v9 = sub_252E37264();

  v10 = [v3 entity];
  if (!v10)
  {
    goto LABEL_24;
  }

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_24:

    return 0;
  }

LABEL_23:
  v11 = sub_252E378C4();
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_5:
  v12 = 0;
  v22 = a3;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v9 + 32 + 8 * v12);
    }

    v14 = v13;
    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (*a1 != -1)
    {
      swift_once();
    }

    a3 = *a2;
    v16 = [v14 taskOutcome];
    if (*(a3 + 16))
    {
      v17 = v16;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v17);
      v18 = sub_252E37F14();
      v19 = -1 << *(a3 + 32);
      v20 = v18 & ~v19;
      if ((*(a3 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_6:

    if (v12 == v11)
    {
      goto LABEL_24;
    }
  }

  v21 = ~v19;
  while (*(*(a3 + 48) + 8 * v20) != v17)
  {
    v20 = (v20 + 1) & v21;
    if (((*(a3 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

void sub_252DA49A4()
{
  v1 = [v0 taskResponses];
  if (!v1)
  {

    v8 = v15;
    return;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  v16 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:

    v9 = [v15 entity];
    v10 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setEntity_];
    v14 = sub_252E37254();

    [v13 setTaskResponses_];

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      sub_2529C6D64();
      MEMORY[0x2530AD700]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_17;
  }

  __break(1u);
}

void *combineEntityResponses(entityResponses:)(uint64_t a1)
{
  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D60);
    sub_252E379F4();

    v49 = type metadata accessor for HomeEntityResponse();
    v3 = MEMORY[0x2530AD730](a1);
    MEMORY[0x2530AD570](v3);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E9B830, 0xD00000000000008CLL, 0x8000000252E6E8A0);

    v4 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];

    v6 = 0;
    a1 = sub_252DB4BA0(v5);

    v7 = 0;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v4;
    v47 = v12;
    v48 = a1 + 64;
    v45 = a1;
    if (!v11)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v51 = v11;
      v52 = v7;
      v15 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(a1 + 48) + v15);
      v17 = *(*(a1 + 56) + v15);
      v54 = v4;
      v18 = v17 >> 62 ? sub_252E378C4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v16;

      if (v18)
      {
        break;
      }

      v25 = v4;
LABEL_24:

      if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
      {
        v26 = sub_252E378C4();
        if (v26)
        {
LABEL_27:
          v27 = 0;
LABEL_28:
          v28 = v27;
          do
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x2530ADF00](v28, v25);
            }

            else
            {
              if (v28 >= *(v25 + 16))
              {
                goto LABEL_53;
              }

              v29 = *(v25 + 8 * v28 + 32);
            }

            v30 = v29;
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_52;
            }

            v31 = [v29 taskResponses];
            if (v31)
            {
              v32 = v31;
              type metadata accessor for HomeUserTaskResponse();
              v33 = sub_252E37264();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2529F7BB4(0, v4[2] + 1, 1, v4);
              }

              v35 = v4[2];
              v34 = v4[3];
              if (v35 >= v34 >> 1)
              {
                v4 = sub_2529F7BB4((v34 > 1), v35 + 1, 1, v4);
              }

              v4[2] = v35 + 1;
              v4[v35 + 4] = v33;
              if (v27 != v26)
              {
                goto LABEL_28;
              }

              break;
            }

            ++v28;
          }

          while (v27 != v26);
        }
      }

      else
      {
        v26 = *(v25 + 16);
        if (v26)
        {
          goto LABEL_27;
        }
      }

      sub_252A75C1C(v4);

      v36 = objc_allocWithZone(v49);
      v37 = v50;
      v38 = sub_252E36F04();
      v39 = [v36 initWithIdentifier:0 displayString:v38];

      v40 = v39;
      [v40 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v41 = sub_252E37254();

      [v40 setTaskResponses_];

      v42 = v40;
      MEMORY[0x2530AD700]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      v11 = (v51 - 1) & v51;
      sub_252E372D4();

      v13 = v53;
      v12 = v47;
      v8 = v48;
      v7 = v52;
      v4 = MEMORY[0x277D84F90];
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v46 = v6;
    v19 = v4;
    v20 = 0;
    a1 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530ADF00](v20, v17);
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 taskResponses];
      if (v24)
      {

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v20;
      if (v23 == v18)
      {
        v25 = v54;
        v4 = v19;
        a1 = v45;
        v6 = v46;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  while (1)
  {
LABEL_5:
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_54;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_9;
    }
  }

  sub_252E379F4();

  v43 = MEMORY[0x2530AD730](v13, v49);
  MEMORY[0x2530AD570](v43);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E9B850, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  return v13;
}

uint64_t sub_252DA5218()
{
  result = [v0 entity];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result deviceTypes];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_252E37264();

  if (!*(v4 + 16))
  {

    return 0;
  }

  v5 = *(v4 + 32);

  if (qword_27F53F410 != -1)
  {
LABEL_20:
    swift_once();
  }

  v6 = 0;
  v7 = 1 << *(qword_27F575A48 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(qword_27F575A48 + 56);
  v10 = (v7 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          return 0;
        }

        v9 = *(qword_27F575A48 + 56 + 8 * v11);
        ++v6;
        if (v9)
        {
          v6 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v11 = v6;
LABEL_14:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (*(*(qword_27F575A48 + 48) + ((v11 << 9) | (8 * v12))) != v5);
  return 1;
}

unint64_t sub_252DA5378(id a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = sub_252DA2334();
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 userTask];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 attribute];

          if (v13 == a1)
          {

            v18 = [v9 userTask];

            v19 = [v18 value];
            return v19;
          }
        }

        ++v7;
        if (v10 == i)
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

    goto LABEL_23;
  }

  result = sub_252DA0F40(a1, a2);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    return 0;
  }

  v21 = result;
  v22 = sub_252E378C4();
  result = v21;
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x2530ADF00](0);
    goto LABEL_19;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_19:
    v15 = v14;

    v16 = [v15 userTask];

    v17 = [v16 value];
    return v17;
  }

  __break(1u);
  return result;
}

__objc2_class **sub_252DA55BC(id a1)
{
  v2 = v1;
  v3 = [v1 entity];
  v4 = [v2 taskResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeUserTaskResponse();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for HomeEntityResponse();
  v7 = HomeEntityResponse.__allocating_init(entity:taskResponses:)(v3, v6);
  v8 = [v7 taskResponses];
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for HomeUserTaskResponse();
    v11 = sub_252E37264();

    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v21 = v10;
      v22 = v7;
      v13 = 0;
      v7 = &off_279711000;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2530ADF00](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v14 userTask];
        if (v16 && (v17 = v16, v18 = [v16 attribute], v17, v18 == a1))
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v13;
        if (v10 == i)
        {
          v7 = v22;
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

    v19 = sub_252E37254();
  }

  else
  {
    v19 = 0;
  }

  [v7 setTaskResponses_];

  return v7;
}

uint64_t sub_252DA582C()
{
  result = sub_2529FC1F0(&unk_2864A1AC8);
  qword_27F575C38 = result;
  return result;
}

uint64_t sub_252DA5854()
{
  result = sub_2529FC1F0(&unk_2864A18D8);
  qword_27F575C40 = result;
  return result;
}

uint64_t sub_252DA587C()
{
  result = sub_2529FC1F0(&unk_2864A52F0);
  qword_27F575C48 = result;
  return result;
}

uint64_t sub_252DA58A4()
{
  result = sub_2529FC1F0(&unk_2864A71C8);
  qword_27F575C50 = result;
  return result;
}

unint64_t sub_252DA58CC()
{
  result = sub_252CC4994(&unk_2864A1760);
  qword_27F575C58 = result;
  return result;
}

id sub_252DA58F4(void **a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v32 = a3;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *a1;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_27F544D60);
  v35 = *(v5 + 16);
  v35(v9, v11, v4);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD000000000000018;
  v34 = 0x8000000252E9B8B0;
  v40 = 0xD000000000000018;
  v41 = 0x8000000252E9B8B0;
  v36 = v10;
  v12 = [v10 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    v12 = HomeAttributeType.description.getter(v14);
  }

  else
  {
    v15 = 0;
  }

  v38 = v12;
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(v40, v41, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v17 = *(v5 + 8);
  v17(v9, v4);
  v40 = 0x7475626972747441;
  v41 = 0xEB00000000203A65;
  v18 = v37;
  v19 = HomeAttributeType.description.getter(v37);
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(v40, v41, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v35(v42, v11, v4);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  v40 = v33;
  v41 = v34;
  v20 = v36;
  v21 = [v36 userTask];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 taskType];
  }

  else
  {
    v23 = 0;
  }

  v38 = v23;
  LOBYTE(v39) = v22 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  v25 = v42;
  sub_252CC3D90(v40, v41, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v17(v25, v4);
  result = [v20 userTask];
  if (result)
  {
    v27 = result;
    v28 = [result attribute];

    if (v28 == v18)
    {
      result = [v20 userTask];
      if (result)
      {
        v29 = result;
        v30 = [result taskType];

        return (v30 == v32);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252DA5D40(void **a1, void *a2, void *a3, void *a4, int a5)
{
  v88 = a3;
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v84 - v11;
  v13 = *a1;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_27F544D60);
  v15 = *(v7 + 16);
  v91 = v14;
  v15(v12);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_252E379F4();

  v95 = 0xD000000000000018;
  v96 = 0x8000000252E9B8B0;
  v92 = v13;
  v16 = [v13 userTask];
  v89 = v10;
  if (v16)
  {
    v17 = v16;
    v18 = [v16 attribute];

    v16 = HomeAttributeType.description.getter(v18);
  }

  else
  {
    v19 = 0;
  }

  v93 = v16;
  v94 = v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v20 = sub_252E36F94();
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(v95, v96, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v21 = *(v7 + 8);
  v21(v12, v6);
  v95 = 0x7475626972747441;
  v96 = 0xEB00000000203A65;
  v22 = HomeAttributeType.description.getter(v90);
  MEMORY[0x2530AD570](v22);

  v23 = v91;
  sub_252CC3D90(v95, v96, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v24 = v89;
  (v15)(v89, v23, v6);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_252E379F4();

  v95 = 0xD000000000000014;
  v96 = 0x8000000252E9B8D0;
  v25 = [v92 userTask];
  if (!v25)
  {
    v27 = 0;
    goto LABEL_10;
  }

  v26 = v25;
  v27 = [v25 value];

  if (!v27)
  {
LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  v28 = [v27 description];

  v27 = sub_252E36F34();
  v30 = v29;

  v24 = v89;
LABEL_11:
  v93 = v27;
  v94 = v30;
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  sub_252CC3D90(v95, v96, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v21(v24, v6);
  v95 = 0x203A65756C6156;
  v96 = 0xE700000000000000;
  v32 = v88;
  v33 = [v88 description];
  v34 = sub_252E36F34();
  v36 = v35;

  MEMORY[0x2530AD570](v34, v36);

  sub_252CC3D90(v95, v96, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  v37 = v92;
  v38 = [v92 userTask];
  if (!v38)
  {
    goto LABEL_67;
  }

  v39 = v38;
  v40 = [v38 attribute];

  if (v40 != v90)
  {
    goto LABEL_67;
  }

  if ((v86 & 1) == 0)
  {
    v41 = [v37 userTask];
    if (!v41)
    {
      goto LABEL_67;
    }

    v42 = v41;
    v43 = [v41 taskType];

    if (v43 != v85)
    {
      goto LABEL_67;
    }
  }

  v44 = [v32 type];
  v45 = 0;
  if (v44 > 3)
  {
    if (v44 <= 5)
    {
      if (v44 == 4)
      {
        v66 = [v37 userTask];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 value];

          if (v68)
          {
            v49 = [v68 integerValue];

            v50 = [v32 integerValue];
            goto LABEL_40;
          }
        }

        [v32 integerValue];
      }

      else
      {
        v46 = [v37 userTask];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 value];

          if (v48)
          {
            v49 = [v48 limitValue];

            v50 = [v32 limitValue];
LABEL_40:
            v45 = v49 == v50;
            return v45 & 1;
          }
        }

        [v32 limitValue];
      }

LABEL_67:
      v45 = 0;
      return v45 & 1;
    }

    if (v44 == 6)
    {
      v69 = [v37 userTask];
      v70 = [v69 value];

      v59 = [v70 rangeValue];
      v71 = [v32 rangeValue];
      v61 = v71;
      if (v59)
      {
        if (v71)
        {
          type metadata accessor for HomeAttributeRange();
          goto LABEL_44;
        }

LABEL_62:

        goto LABEL_67;
      }

      goto LABEL_48;
    }

    if (v44 == 8)
    {
      v57 = [v37 userTask];
      v58 = [v57 value];

      v59 = [v58 cleaningJob];
      v60 = [v32 cleaningJob];
      v61 = v60;
      if (v59)
      {
        if (v60)
        {
          type metadata accessor for HomeAttributeCleaningJob();
LABEL_44:
          v45 = sub_252E37694();

          return v45 & 1;
        }

        goto LABEL_62;
      }

LABEL_48:
      if (v61)
      {

        goto LABEL_67;
      }

LABEL_69:
      v45 = 1;
      return v45 & 1;
    }

    return v45 & 1;
  }

  switch(v44)
  {
    case 1:
      v62 = [v37 userTask];
      if (!v62 || (v63 = v62, v64 = [v62 value], v63, !v64))
      {
        [v32 BOOLValue];
        goto LABEL_67;
      }

      v65 = [v64 BOOLValue];

      v45 = v65 ^ [v32 BOOLValue] ^ 1;
      return v45 & 1;
    case 2:
      v72 = [v37 userTask];
      if (v72)
      {
        v73 = v72;
        v74 = [v72 value];

        if (v74)
        {
          [v74 doubleValue];
          v76 = v75;

          [v32 doubleValue];
          v45 = v76 == v77;
          return v45 & 1;
        }
      }

      [v32 doubleValue];
      goto LABEL_67;
    case 3:
      v51 = [v37 userTask];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 value];

        if (!v53)
        {
LABEL_55:
          v56 = 0;
LABEL_56:
          v78 = [v32 stringValue];
          if (v78)
          {
            v79 = v78;
            v80 = sub_252E36F34();
            v82 = v81;

            if (v56)
            {
              if (v82)
              {
                if (v53 == v80 && v56 == v82)
                {

                  v45 = 1;
                }

                else
                {
                  v45 = sub_252E37DB4();
                }

                return v45 & 1;
              }
            }

            else if (!v82)
            {
              goto LABEL_69;
            }
          }

          else if (!v56)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        v54 = [v53 stringValue];

        if (v54)
        {
          v53 = sub_252E36F34();
          v56 = v55;

          goto LABEL_56;
        }
      }

      v53 = 0;
      goto LABEL_55;
  }

  return v45 & 1;
}

uint64_t sub_252DA66F4()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);
}

char *sub_252DA6828()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_252E378C4();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &off_279711000;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x2530ADF00](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v11 = [v9 userTask];
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = v7[203];
          v13 = v11;
          v14 = [v11 v12];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2529F7A6C(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_2529F7A6C((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          *&v6[8 * v16 + 32] = v14;
          v7 = &off_279711000;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252DA6A00()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
}

uint64_t sub_252DA6B34(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_252A44A10(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252DA6CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_252E37EC4();
  sub_252E37044();
  v8 = sub_252E37F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_252E37DB4() & 1) != 0)
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

    sub_252DAD34C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_252DA6E78(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = sub_252E378D4();

    if (v16)
    {

      a6(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_252DAA0A8(v15, result + 1, a3, a4, a5);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_252DAA7C0(v30 + 1, a3, a4);
        }

        sub_252DAD0DC(v31, v29);

        *v9 = v29;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v35 = v6;
  sub_252E37EC4();
  sub_252E32E84();
  sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  v18 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
  MEMORY[0x2530AE390](*(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v19 = (a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

  sub_252E37044();

  v20 = sub_252E37F14();
  v21 = -1 << *(v12 + 32);
  v22 = v20 & ~v21;
  if (((*(v12 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v35;

    sub_252DAF330(v28, v22, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v35 = v38;
    *a1 = a2;
    return 1;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = *(*(v12 + 48) + 8 * v22);

    if ((sub_252E32E54() & 1) == 0 || *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + v18))
    {

      goto LABEL_10;
    }

    if (*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v19 && *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v19[1])
    {
      break;
    }

    v26 = sub_252E37DB4();

    if (v26)
    {
      goto LABEL_25;
    }

LABEL_10:
    v22 = (v22 + 1) & v23;
    if (((*(v12 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_25:

  *a1 = *(*(v12 + 48) + 8 * v22);

  return 0;
}

uint64_t sub_252DA7244(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_252E37EC4();
  sub_252E37EE4();
  if (a3)
  {
    sub_252E37044();
  }

  v8 = sub_252E37F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_252DAD4CC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_252E37DB4() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_252DA73E8(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_252E37EB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_252DAD7F8(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA7524(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *v3;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v24 = sub_252E378D4();

    if (v24)
    {

      v70[9] = v24;
      type metadata accessor for HomeAutomationEntityState(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v70[0];
      return result;
    }

    result = sub_252E378C4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v50 = sub_252DA999C(v23, result + 1);
    v70[0] = v50;
    v51 = *(v50 + 16);
    if (*(v50 + 24) <= v51)
    {
      sub_252DAAF70(v51 + 1);
      v50 = v70[0];
    }

    sub_252DAD224(v52, v50);

    *v3 = v50;
    *a1 = a2;
    return 1;
  }

  v56 = v19;
  v63 = v15;
  v64 = v18;
  v57 = v13;
  v53 = v3;
  v54 = a1;
  sub_252E37EC4();
  sub_252A66B38(v70);
  v26 = sub_252E37F14();
  v69 = v22;
  v27 = -1 << *(v22 + 32);
  v28 = v26 & ~v27;
  v61 = v22 + 56;
  if (((*(v22 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_30:
    v47 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = *v47;

    sub_252DADB64(v49, v28, isUniquelyReferenced_nonNull_native);
    *v47 = v70[0];
    *v54 = a2;
    return 1;
  }

  v59 = v9;
  v67 = ~v27;
  v68 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
  v60 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
  v29 = (v7 + 48);
  v58 = (v7 + 32);
  v65 = (v7 + 8);
  v55 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
  v66 = a2;
  v30 = v64;
  v31 = v61;
  while (1)
  {
    v32 = *(*(v69 + 48) + 8 * v28);
    v33 = *(v30 + 48);
    sub_252956C1C(v32 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v21);
    sub_252956C1C(a2 + v68, &v21[v33]);
    v34 = *v29;
    if ((*v29)(v21, 1, v6) == 1)
    {
      v35 = v34(&v21[v33], 1, v6);

      if (v35 != 1)
      {
        goto LABEL_17;
      }

      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v36 = v63;
      sub_252956C1C(v21, v63);
      if (v34(&v21[v33], 1, v6) == 1)
      {
        v37 = *v65;

        v37(v36, v6);
        v30 = v64;
LABEL_17:
        sub_25293847C(v21, &qword_27F540758, &unk_252E4D160);

        goto LABEL_11;
      }

      v38 = v59;
      (*v58)(v59, &v21[v33], v6);
      sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);

      v62 = sub_252E36EF4();
      v39 = *v65;
      v40 = v38;
      v31 = v61;
      (*v65)(v40, v6);
      v39(v36, v6);
      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
      v30 = v64;
      if ((v62 & 1) == 0)
      {
LABEL_10:

        a2 = v66;
        goto LABEL_11;
      }
    }

    v41 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    v42 = *(v66 + v60);
    if (v41)
    {
      if (!v42)
      {
        goto LABEL_10;
      }

      v43 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v41, v42);

      if ((v43 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v42)
    {
      goto LABEL_10;
    }

    v44 = *(v30 + 48);
    v45 = v56;
    sub_252956C1C(v32 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v56);
    a2 = v66;
    sub_252956C1C(v66 + v55, v45 + v44);
    if (v34(v45, 1, v6) == 1)
    {
      break;
    }

    sub_252956C1C(v45, v57);
    if (v34((v45 + v44), 1, v6) == 1)
    {
      (*v65)(v57, v6);
      goto LABEL_27;
    }

    (*v58)(v59, (v45 + v44), v6);
    sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
    v62 = sub_252E36EF4();
    v46 = *v65;
    (*v65)(v59, v6);
    v46(v57, v6);
    sub_25293847C(v45, &qword_27F540298, &unk_252E3C270);

    v31 = v61;
    if (v62)
    {
      goto LABEL_37;
    }

LABEL_11:
    v28 = (v28 + 1) & v67;
    if (((*(v31 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v34((v45 + v44), 1, v6) != 1)
  {
LABEL_27:
    sub_25293847C(v45, &qword_27F540758, &unk_252E4D160);

    v31 = v61;
    goto LABEL_11;
  }

  sub_25293847C(v45, &qword_27F540298, &unk_252E3C270);

LABEL_37:

  *v54 = *(*(v69 + 48) + 8 * v28);

  return 0;
}

uint64_t sub_252DA7E2C(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v4;
  v8 = sub_252E37EC4();
  a3(v8);
  sub_252E37044();

  v9 = sub_252E37F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (a3)();
      v15 = v14;
      if (v13 == (a3)() && v15 == v16)
      {
        break;
      }

      v18 = sub_252E37DB4();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v7 + 48) + v11);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    a4(a2, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA7FE0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_252E37EC4();
  sub_252A9AD58(a2);
  sub_252E37044();

  v7 = sub_252E37F14();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_252A9AD58(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == sub_252A9AD58(a2) && v13 == v14)
      {
        break;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_252DAE6BC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA81E0(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_252E378D4();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_252DA9EB0(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_252DACC30(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_252DAD2C8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_252E37684();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_252E37694();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_252DAE2F8(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_252DA8480(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[7];
  v6 = a2[5];
  v66 = a2[6];
  v67 = v5;
  v7 = a2[7];
  v68 = a2[8];
  v8 = a2[3];
  v9 = a2[1];
  v62 = a2[2];
  v63 = v8;
  v10 = a2[3];
  v11 = a2[5];
  v64 = a2[4];
  v65 = v11;
  v12 = a2[1];
  v60 = *a2;
  v61 = v12;
  v13 = *v2;
  v76 = v66;
  v77 = v7;
  v78 = a2[8];
  v72 = v62;
  v73 = v10;
  v74 = v64;
  v75 = v6;
  v69 = *(a2 + 72);
  v79 = *(a2 + 72);
  v70 = v60;
  v71 = v9;
  sub_252E37EC4();
  sub_252A34930(v58);
  v14 = sub_252E37F14();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(v13 + 48) + 152 * v16;
      v19 = *(v18 + 16);
      v58[0] = *v18;
      v58[1] = v19;
      v20 = *(v18 + 80);
      v22 = *(v18 + 32);
      v21 = *(v18 + 48);
      v58[4] = *(v18 + 64);
      v58[5] = v20;
      v58[2] = v22;
      v58[3] = v21;
      v23 = *(v18 + 96);
      v24 = *(v18 + 112);
      v25 = *(v18 + 128);
      v59 = *(v18 + 144);
      v58[7] = v24;
      v58[8] = v25;
      v58[6] = v23;
      v54 = *(v18 + 96);
      v55 = *(v18 + 112);
      v56 = *(v18 + 128);
      v57 = *(v18 + 144);
      v50 = *(v18 + 32);
      v51 = *(v18 + 48);
      v52 = *(v18 + 64);
      v53 = *(v18 + 80);
      v48 = *v18;
      v49 = *(v18 + 16);
      sub_25297DE08(v58, v46);
      v26 = sub_252A39200(&v48, &v60);
      v76 = v54;
      v77 = v55;
      v78 = v56;
      v79 = v57;
      v72 = v50;
      v73 = v51;
      v74 = v52;
      v75 = v53;
      v70 = v48;
      v71 = v49;
      sub_2529AEC80(&v70);
      if (v26)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v46[6] = v66;
    v46[7] = v67;
    v46[8] = v68;
    v47 = v69;
    v46[2] = v62;
    v46[3] = v63;
    v46[4] = v64;
    v46[5] = v65;
    v46[0] = v60;
    v46[1] = v61;
    sub_2529AEC80(v46);
    v33 = *(v13 + 48) + 152 * v16;
    v34 = *(v33 + 96);
    v35 = *(v33 + 112);
    v36 = *(v33 + 128);
    v57 = *(v33 + 144);
    v55 = v35;
    v56 = v36;
    v54 = v34;
    v37 = *(v33 + 32);
    v38 = *(v33 + 48);
    v39 = *(v33 + 80);
    v52 = *(v33 + 64);
    v53 = v39;
    v51 = v38;
    v40 = *(v33 + 16);
    v48 = *v33;
    v49 = v40;
    v50 = v37;
    v41 = *(v33 + 112);
    *(a1 + 96) = *(v33 + 96);
    *(a1 + 112) = v41;
    *(a1 + 128) = *(v33 + 128);
    *(a1 + 144) = *(v33 + 144);
    v42 = *(v33 + 48);
    *(a1 + 32) = *(v33 + 32);
    *(a1 + 48) = v42;
    v43 = *(v33 + 80);
    *(a1 + 64) = *(v33 + 64);
    *(a1 + 80) = v43;
    v44 = *(v33 + 16);
    *a1 = *v33;
    *(a1 + 16) = v44;
    sub_25297DE08(&v48, v45);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v70 = v60;
    v71 = v61;
    *&v48 = *v3;
    sub_25297DE08(&v70, v58);
    sub_252DAE8A4(&v70, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v48;
    v28 = v67;
    *(a1 + 96) = v66;
    *(a1 + 112) = v28;
    *(a1 + 128) = v68;
    *(a1 + 144) = v69;
    v29 = v63;
    *(a1 + 32) = v62;
    *(a1 + 48) = v29;
    v30 = v65;
    *(a1 + 64) = v64;
    *(a1 + 80) = v30;
    v31 = v61;
    result = 1;
    *a1 = v60;
    *(a1 + 16) = v31;
  }

  return result;
}

uint64_t sub_252DA87DC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_252E37EB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_252DAEB44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA88E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F440]);
  v31 = a2;
  v11 = sub_252E36E84();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_2529E6488(qword_27F542ED0, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F448]);
      v19 = sub_252E36EF4();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_252DAEEA4(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_252DA8BCC(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  v6 = sub_252E37F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = HueSemantic.rawValue.getter();
      v12 = v11;
      if (v10 == HueSemantic.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_252E37DB4();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOWORD(a2) = *(*(v5 + 48) + 2 * v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_252DAF148(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA8D80(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_252E37EC4();
  MEMORY[0x2530AE390](a2);
  v12 = sub_252E37F14();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_252DAD688(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_252DA8F78(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[1];
  v57 = *a2;
  v58 = v5;
  v6 = a2[3];
  v59 = a2[2];
  v60 = v6;
  sub_252E37EC4();
  IconInfo.hash(into:)(&v54);
  v7 = sub_252E37F14();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v45 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v57 = *v44;
    sub_252C76A80(v45, &v54);
    sub_252DAF76C(v45, v9, isUniquelyReferenced_nonNull_native);
    *v44 = v57;
    v35 = v45[1];
    *a1 = *v45;
    a1[1] = v35;
    v36 = v45[3];
    a1[2] = v45[2];
    a1[3] = v36;
    return 1;
  }

  v52 = ~v8;
  v10 = *(a2 + 32);
  v49 = *(a2 + 33);
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v50 = *(a2 + 6);
  v51 = *(a2 + 3);
  v47 = *(a2 + 5);
  v48 = *(a2 + 7);
  while (1)
  {
    v14 = (*(v4 + 48) + (v9 << 6));
    v16 = v14[2];
    v15 = v14[3];
    v17 = v14[1];
    v54 = *v14;
    v55 = v17;
    *v56 = v16;
    *&v56[16] = v15;
    if (v54 != __PAIR128__(v12, v11) && (sub_252E37DB4() & 1) == 0 || v55 != __PAIR128__(v51, v13) && (sub_252E37DB4() & 1) == 0)
    {
      goto LABEL_5;
    }

    v18 = 0x6F7268636F6E6F6DLL;
    if (v56[0] != 2)
    {
      v18 = 0x657474656C6170;
    }

    v19 = 0xE700000000000000;
    if (v56[0] == 2)
    {
      v19 = 0xEA0000000000656DLL;
    }

    v20 = 0xEA0000000000726FLL;
    v21 = 0x6C6F6369746C756DLL;
    if (!v56[0])
    {
      v21 = 0x6863726172656968;
      v20 = 0xEC0000006C616369;
    }

    v22 = v56[0] <= 1u ? v21 : v18;
    v23 = v56[0] <= 1u ? v20 : v19;
    if (v10 > 1)
    {
      v24 = v10 == 2 ? 0x6F7268636F6E6F6DLL : 0x657474656C6170;
      v25 = v10 == 2 ? 0xEA0000000000656DLL : 0xE700000000000000;
    }

    else
    {
      v24 = 0x6863726172656968;
      v25 = 0xEC0000006C616369;
      if (v10)
      {
        v25 = 0xEA0000000000726FLL;
        v24 = 0x6C6F6369746C756DLL;
      }
    }

    if (v22 == v24 && v23 == v25)
    {
      sub_252C76A80(&v54, &v57);
    }

    else
    {
      v26 = sub_252E37DB4();
      sub_252C76A80(&v54, &v57);

      if ((v26 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v56[1] > 1u)
    {
      if (v56[1] == 2)
      {
        v27 = 0x6F7268636F6E6F6DLL;
        v28 = 0xEA0000000000656DLL;
      }

      else
      {
        v28 = 0xE700000000000000;
        v27 = 0x657474656C6170;
      }
    }

    else
    {
      v27 = 0x6863726172656968;
      v28 = 0xEC0000006C616369;
      if (v56[1])
      {
        v28 = 0xEA0000000000726FLL;
        v27 = 0x6C6F6369746C756DLL;
      }
    }

    if (v49 > 1)
    {
      if (v49 != 2)
      {
        v30 = 0xE700000000000000;
        if (v27 != 0x657474656C6170)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v29 = 0x6F7268636F6E6F6DLL;
      v30 = 0xEA0000000000656DLL;
    }

    else
    {
      v29 = 0x6863726172656968;
      v30 = 0xEC0000006C616369;
      if (v49)
      {
        v30 = 0xEA0000000000726FLL;
        if (v27 != 0x6C6F6369746C756DLL)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }
    }

    if (v27 != v29)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v28 == v30)
    {

      goto LABEL_52;
    }

LABEL_51:
    v31 = sub_252E37DB4();

    if ((v31 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_52:
    if (*&v56[16])
    {
      if (!v50 || *&v56[8] != __PAIR128__(v50, v47) && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v50)
    {
      goto LABEL_4;
    }

    v32 = *&v56[24];
    if (!*&v56[24])
    {
      break;
    }

    if (!v48)
    {
      goto LABEL_4;
    }

    v33 = sub_252DA6B34(v32, v48);

    sub_252C76ADC(&v54);
    if (v33)
    {
      goto LABEL_64;
    }

LABEL_5:
    v9 = (v9 + 1) & v52;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  if (v48)
  {
LABEL_4:
    sub_252C76ADC(&v54);
    goto LABEL_5;
  }

  sub_252C76ADC(&v54);
LABEL_64:
  sub_252C76ADC(v45);
  v38 = (*(v4 + 48) + (v9 << 6));
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[3];
  v59 = v38[2];
  v60 = v41;
  v57 = v39;
  v58 = v40;
  v42 = v38[1];
  *a1 = *v38;
  a1[1] = v42;
  v43 = v38[3];
  a1[2] = v38[2];
  a1[3] = v43;
  sub_252C76A80(&v57, v53);
  return 0;
}

uint64_t sub_252DA9508(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_252E378D4();

    if (v17)
    {

      sub_25293F638(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_252E378C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_252DAA360(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_252DACC30(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_252DAD2C8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_25293F638(0, a3, a4);
    v19 = sub_252E37684();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_252E37694();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_252DAF5DC(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_252DA977C(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *v3;
  memcpy(v20, a2, sizeof(v20));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v18);
  v7 = sub_252E37F14();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 504 * v9;
      memcpy(v18, v11, sizeof(v18));
      memcpy(__src, v11, sizeof(__src));
      sub_2529353AC(v18, v16);
      LOBYTE(v11) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__src, __dst);
      memcpy(v20, __src, sizeof(v20));
      sub_252935408(v20);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v16, __dst, sizeof(v16));
    sub_252935408(v16);
    v14 = (*(v6 + 48) + 504 * v9);
    memcpy(__src, v14, sizeof(__src));
    memcpy(a1, v14, 0x1F8uLL);
    sub_2529353AC(__src, &v15);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v20, __dst, sizeof(v20));
    __src[0] = *v3;
    sub_2529353AC(v20, v18);
    sub_252DAFCCC(v20, v9, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x1F8uLL);
    return 1;
  }
}

uint64_t sub_252DA999C(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
    v12 = sub_252E37994();
    v38 = v12;
    sub_252E37874();
    v13 = sub_252E37904();
    if (v13)
    {
      v14 = v13;
      v35 = type metadata accessor for HomeAutomationEntityState(0);
      v36 = v3;
      v15 = v14;
      v16 = (v4 + 48);
      v34 = (v4 + 8);
      v32 = (v4 + 32);
      do
      {
        v37[0] = v15;
        swift_dynamicCast();
        v18 = *(v12 + 16);
        if (*(v12 + 24) <= v18)
        {
          sub_252DAAF70(v18 + 1);
        }

        v19 = v37[9];
        v12 = v38;
        sub_252E37EC4();
        sub_252956C1C(v19 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v11);
        v20 = *v16;
        if ((*v16)(v11, 1, v3) == 1)
        {
          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
          sub_252E37EE4();
        }

        else
        {
          sub_252E36304();
          (*v34)(v11, v3);
          sub_252E37EE4();
          sub_252E37044();
        }

        v21 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v21)
        {
          sub_252E37EE4();
          sub_252956C1C(v21 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
          v3 = v36;
          if (v20(v9, 1, v36) == 1)
          {
            sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
            if (*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
            {

              HomeAutomationAbstractMeasurement.hash(into:)(v37);
            }

            else
            {
              sub_252E37EE4();
            }
          }

          else
          {
            v22 = v33;
            (*v32)(v33, v9, v3);
            sub_252E36304();
            sub_252E37044();

            (*v34)(v22, v3);
          }
        }

        else
        {
          sub_252E37EE4();
          v3 = v36;
        }

        result = sub_252E37F14();
        v24 = v12 + 56;
        v25 = -1 << *(v12 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 56 + 8 * (v26 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v26) & ~*(v12 + 56 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = 0;
          v29 = (63 - v25) >> 6;
          do
          {
            if (++v27 == v29 && (v28 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v30 = v27 == v29;
            if (v27 == v29)
            {
              v27 = 0;
            }

            v28 |= v30;
            v31 = *(v24 + 8 * v27);
          }

          while (v31 == -1);
          v17 = __clz(__rbit64(~v31)) + (v27 << 6);
        }

        *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v12 + 48) + 8 * v17) = v19;
        ++*(v12 + 16);
        v15 = sub_252E37904();
      }

      while (v15);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v12;
}

uint64_t sub_252DA9EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_252E37994();
    v21 = v8;
    sub_252E37874();
    if (sub_252E37904())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_252DACC30(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_252E37684();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_252DAA0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_252E37994();
    v21 = v8;
    sub_252E37874();
    if (sub_252E37904())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_252DAA7C0(v15 + 1, a3, a4);
        }

        v8 = v21;
        sub_252E37EC4();
        sub_252E32E84();
        sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

        sub_252E37044();

        result = sub_252E37F14();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_252DAA360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_252E37994();
    v23 = v10;
    sub_252E37874();
    if (sub_252E37904())
    {
      sub_25293F638(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_252DACC30(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_252E37684();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_252E37904());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_252DAA560(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E37984();
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
      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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

uint64_t sub_252DAA7C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

      sub_252E37044();

      result = sub_252E37F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_252DAAAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E37984();
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
      v20 = *v18;
      v19 = v18[1];
      sub_252E37EC4();
      sub_252E37EE4();
      if (v19)
      {
        sub_252E37044();
      }

      result = sub_252E37F14();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_252DAAD3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  result = sub_252E37984();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_252E37EB4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DAAF70(uint64_t a1)
{
  v2 = v1;
  v46 = sub_252E36324();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E37984();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v47 = (v3 + 48);
    v43 = (v3 + 8);
    v44 = v9;
    v39 = v1;
    v40 = (v3 + 32);
    v18 = result + 56;
    v19 = v45;
    v20 = v46;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v25 = *(*(v9 + 48) + 8 * (v22 | (v12 << 6)));
      sub_252E37EC4();
      sub_252956C1C(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v19);
      v26 = *v47;
      if ((*v47)(v19, 1, v20) == 1)
      {
        sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v43)(v19, v20);
        sub_252E37EE4();
        sub_252E37044();
      }

      v27 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v27)
      {
        sub_252E37EE4();
        v28 = v42;
        sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v42);
        v20 = v46;
        if (v26(v28, 1, v46) == 1)
        {
          sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
          if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {

            HomeAutomationAbstractMeasurement.hash(into:)(v49);
          }

          else
          {
            sub_252E37EE4();
          }
        }

        else
        {
          v29 = v28;
          v30 = v41;
          (*v40)(v41, v29, v20);
          sub_252E36304();
          sub_252E37044();

          (*v43)(v30, v20);
        }
      }

      else
      {
        sub_252E37EE4();
        v20 = v46;
      }

      result = sub_252E37F14();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v19 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_7:
      *(v18 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v11 + 48) + 8 * v21) = v25;
      ++*(v11 + 16);
      v9 = v44;
      v16 = v48;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v9 + 32);
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    v2 = v39;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_252DAB4E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E37984();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_252E37EC4();
      sub_252A9AD58(v17);
      sub_252E37044();

      result = sub_252E37F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_252DAB750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  result = sub_252E37984();
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
    for (i = (v8 + 63) >> 6; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = *(v3 + 48) + 152 * (v12 | (v6 << 6));
      v16 = *(v15 + 112);
      v17 = *(v15 + 80);
      v47 = *(v15 + 96);
      v48 = v16;
      v18 = *(v15 + 112);
      v49 = *(v15 + 128);
      v19 = *(v15 + 48);
      v20 = *(v15 + 16);
      v43 = *(v15 + 32);
      v44 = v19;
      v21 = *(v15 + 48);
      v22 = *(v15 + 80);
      v45 = *(v15 + 64);
      v46 = v22;
      v23 = *(v15 + 16);
      v41 = *v15;
      v42 = v23;
      v37 = v47;
      v38 = v18;
      v39 = *(v15 + 128);
      v33 = v43;
      v34 = v21;
      v35 = v45;
      v36 = v17;
      v50 = *(v15 + 144);
      v40 = *(v15 + 144);
      v31 = v41;
      v32 = v20;
      sub_252E37EC4();
      sub_252A34930(v30);
      sub_252E37F14();
      result = sub_252E37854();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v24 = *(v5 + 48) + 152 * result;
      v25 = v48;
      *(v24 + 96) = v47;
      *(v24 + 112) = v25;
      *(v24 + 128) = v49;
      *(v24 + 144) = v50;
      v26 = v44;
      *(v24 + 32) = v43;
      *(v24 + 48) = v26;
      v27 = v46;
      *(v24 + 64) = v45;
      *(v24 + 80) = v27;
      v28 = v42;
      *v24 = v41;
      *(v24 + 16) = v28;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DAB9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  result = sub_252E37984();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_252E37EB4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DABBF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v6 + 16))
  {
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      v21 = sub_252E37EC4();
      a4(v21);
      sub_252E37044();

      result = sub_252E37F14();
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
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
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
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_252DABE64(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F440]);
      result = sub_252E36E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_252DAC1C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  result = sub_252E37984();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      sub_252E37EC4();
      HueSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 2 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DAC448(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_252E37EC4();
      MEMORY[0x2530AE390](v19);
      result = sub_252E37F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_252DAC690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  v4 = sub_252E37984();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_47:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = 0x6F7268636F6E6F6DLL;
  v46 = v1;
  v47 = (v3 + 56);
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
  v12 = v4 + 56;
  v51 = v4;
  v48 = v11;
  for (i = v3; ; v3 = i)
  {
    if (!v10)
    {
      v17 = v6;
      result = v47;
      while (1)
      {
        v6 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_49;
        }

        if (v6 >= v11)
        {
          v45 = 1 << *(v3 + 32);
          if (v45 >= 64)
          {
            bzero(v47, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v47 = -1 << v45;
          }

          v2 = v46;
          *(v3 + 16) = 0;
          goto LABEL_47;
        }

        v19 = v47[v6];
        ++v17;
        if (v19)
        {
          v15 = v7;
          v16 = __clz(__rbit64(v19));
          v54 = (v19 - 1) & v19;
          goto LABEL_15;
        }
      }
    }

    v15 = v7;
    v16 = __clz(__rbit64(v10));
    v54 = (v10 - 1) & v10;
LABEL_15:
    v20 = *(v3 + 48) + ((v16 | (v6 << 6)) << 6);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v57 = *(v20 + 33);
    v58 = *(v20 + 34);
    v59 = *(v20 + 38);
    v55 = *(v20 + 40);
    v56 = *(v20 + 48);
    v26 = *(v20 + 56);
    sub_252E37EC4();
    sub_252E37044();
    v52 = v24;
    v53 = v23;
    v27 = v25;
    sub_252E37044();
    v7 = v15;
    sub_252E37044();

    v28 = v56;
    sub_252E37044();

    if (!v56)
    {
      sub_252E37EE4();
      if (!v26)
      {
        goto LABEL_33;
      }

LABEL_17:
      v50 = v27;
      sub_252E37EE4();
      v29 = 1 << *(v26 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v26 + 64);
      v32 = (v29 + 63) >> 6;

      v33 = 0;
      for (j = 0; v31; v33 ^= result)
      {
        v35 = j;
LABEL_26:
        v36 = *(*(v26 + 56) + 8 * (__clz(__rbit64(v31)) | (v35 << 6)));
        v31 &= v31 - 1;

        sub_252E37044();

        if (v36 == 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v36;
        }

        MEMORY[0x2530AE3C0](*&v37);
        result = sub_252E37F14();
      }

      while (1)
      {
        v35 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v35 >= v32)
        {

          MEMORY[0x2530AE390](v33);
          v7 = 0x6F7268636F6E6F6DLL;
          v27 = v50;
          v28 = v56;
          goto LABEL_34;
        }

        v31 = *(v26 + 64 + 8 * v35);
        ++j;
        if (v31)
        {
          j = v35;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_252E37EE4();
    sub_252E37044();
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_33:
    sub_252E37EE4();
LABEL_34:
    result = sub_252E37F14();
    v5 = v51;
    v38 = -1 << *(v51 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v12 + 8 * (v39 >> 6))) == 0)
    {
      break;
    }

    v13 = __clz(__rbit64((-1 << v39) & ~*(v12 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v51 + 48) + (v13 << 6);
    *v14 = v21;
    *(v14 + 8) = v22;
    *(v14 + 16) = v53;
    *(v14 + 24) = v52;
    *(v14 + 32) = v27;
    *(v14 + 33) = v57;
    *(v14 + 34) = v58;
    *(v14 + 38) = v59;
    v10 = v54;
    *(v14 + 40) = v55;
    *(v14 + 48) = v28;
    *(v14 + 56) = v26;
    ++*(v51 + 16);
    v11 = v48;
  }

  v41 = 0;
  v42 = (63 - v38) >> 6;
  while (++v40 != v42 || (v41 & 1) == 0)
  {
    v43 = v40 == v42;
    if (v40 == v42)
    {
      v40 = 0;
    }

    v41 |= v43;
    v44 = *(v12 + 8 * v40);
    if (v44 != -1)
    {
      v13 = __clz(__rbit64(~v44)) + (v40 << 6);
      goto LABEL_7;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_252DACC30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_252E37684();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_252DACE50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E37984();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v1;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 504 * (v14 | (v6 << 6)));
      memcpy(__src, v17, sizeof(__src));
      memcpy(__dst, v17, sizeof(__dst));
      sub_252E37EC4();
      HomeAutomationIntent.hash(into:)(v27);
      result = sub_252E37F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = memcpy((*(v5 + 48) + 504 * v13), __src, 0x1F8uLL);
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_252DAD0DC(uint64_t a1, uint64_t a2)
{
  sub_252E37EC4();
  sub_252E32E84();
  sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

  sub_252E37044();

  sub_252E37F14();
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_252DAD224(uint64_t a1, uint64_t a2)
{
  sub_252E37EC4();
  sub_252A66B38(v5);
  sub_252E37F14();
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_252DAD2C8(uint64_t a1, uint64_t a2)
{
  sub_252E37684();
  result = sub_252E37854();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_252DAD34C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_252DAA560(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_252DAFEB0();
      goto LABEL_16;
    }

    sub_252DB1128(v8 + 1);
  }

  v10 = *v4;
  sub_252E37EC4();
  sub_252E37044();
  result = sub_252E37F14();
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

      result = sub_252E37DB4();
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
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAD4CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_252DAAAC0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_252DB000C();
      goto LABEL_22;
    }

    sub_252DB162C(v9 + 1);
  }

  v11 = *v4;
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  result = sub_252E37F14();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            result = sub_252E37E14();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_252DAD688(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAC448(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_252DB0A6C(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_252DB2DE8(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v7);
  result = sub_252E37F14();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

unint64_t sub_252DAD7F8(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_252DAAD3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_252DB0164();
      result = v7;
      goto LABEL_12;
    }

    sub_252DB1880(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_252E37EB4();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAD924(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F541668, &qword_252E40930, AccessoryTypeSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F541668, &qword_252E40930);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F541668, &qword_252E40930, AccessoryTypeSemantic.rawValue.getter);
  }

  v8 = *v3;
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = AccessoryTypeSemantic.rawValue.getter();
      v13 = v12;
      if (v11 == AccessoryTypeSemantic.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DADB64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v53 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v16 = MEMORY[0x28223BE20](v69);
  v56 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = v53 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v57 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_252DAAF70(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        result = sub_252DB0B9C(&qword_27F544608, &qword_252E54DF8);
        goto LABEL_32;
      }

      sub_252DB1A80(v21 + 1);
    }

    v23 = *v3;
    sub_252E37EC4();
    sub_252A66B38(v70);
    result = sub_252E37F14();
    v24 = v23 + 56;
    v67 = v23 + 56;
    v68 = v23;
    v25 = -1 << *(v23 + 32);
    a2 = result & ~v25;
    if ((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = v13;
      v66 = ~v25;
      v65 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      v60 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
      v55 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v53[1] = type metadata accessor for HomeAutomationEntityState(0);
      a3 = v8 + 48;
      v58 = (v8 + 32);
      v59 = a1;
      v62 = v15;
      v63 = (v8 + 8);
      v64 = v8 + 48;
      do
      {
        v27 = *(*(v68 + 48) + 8 * a2);
        v28 = *(v69 + 48);
        sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v20);
        sub_252956C1C(a1 + v65, &v20[v28]);
        v29 = *a3;
        if ((*a3)(v20, 1, v7) == 1)
        {
          v30 = v29(&v20[v28], 1, v7);

          if (v30 != 1)
          {
            goto LABEL_11;
          }

          sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
        }

        else
        {
          sub_252956C1C(v20, v15);
          if (v29(&v20[v28], 1, v7) == 1)
          {
            v26 = *v63;

            v26(v15, v7);
LABEL_11:
            sub_25293847C(v20, &qword_27F540758, &unk_252E4D160);

            goto LABEL_12;
          }

          v31 = v61;
          (*v58)(v61, &v20[v28], v7);
          sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v32 = v7;
          v33 = v15;

          v34 = sub_252E36EF4();
          v35 = *v63;
          v36 = v31;
          a1 = v59;
          (*v63)(v36, v32);
          v37 = v33;
          v7 = v32;
          v35(v37, v32);
          sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
          if ((v34 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v38 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        v39 = *(a1 + v60);
        if (v38)
        {
          a3 = v64;
          if (!v39 || (, v40 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v38, v39), , (v40 & 1) == 0))
          {
LABEL_25:

            v15 = v62;
            goto LABEL_12;
          }
        }

        else
        {
          a3 = v64;
          if (v39)
          {
            goto LABEL_25;
          }
        }

        v41 = *(v69 + 48);
        a3 = v56;
        sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v56);
        sub_252956C1C(a1 + v55, a3 + v41);
        if (v29(a3, 1, v7) == 1)
        {
          if (v29((a3 + v41), 1, v7) == 1)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }

        v42 = a3;
        v43 = a3;
        v44 = v54;
        sub_252956C1C(v42, v54);
        if (v29((v43 + v41), 1, v7) == 1)
        {
          (*v63)(v44, v7);
          a3 = v43;
LABEL_28:
          sub_25293847C(a3, &qword_27F540758, &unk_252E4D160);
LABEL_29:

          v15 = v62;
          a3 = v64;
          goto LABEL_12;
        }

        v45 = v61;
        (*v58)(v61, (v43 + v41), v7);
        sub_252DB4F00(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
        v46 = sub_252E36EF4();
        v47 = *v63;
        v48 = v45;
        a1 = v59;
        (*v63)(v48, v7);
        v47(v44, v7);
        sub_25293847C(v43, &qword_27F540298, &unk_252E3C270);

        v15 = v62;
        a3 = v64;
        if (v46)
        {
          goto LABEL_36;
        }

LABEL_12:
        a2 = (a2 + 1) & v66;
      }

      while (((*(v67 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_32:
  v49 = *v57;
  *(v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v49 + 48) + 8 * a2) = a1;
  v50 = *(v49 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
LABEL_35:
    sub_25293847C(a3, &qword_27F540298, &unk_252E3C270);

LABEL_36:
    result = sub_252E37E14();
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v52;
  }

  return result;
}

void sub_252DAE2F8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_252DACC30(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_252DB0E60(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_252DB3500(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_252E37684();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_252E37694();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_252E37E14();
  __break(1u);
}

uint64_t sub_252DAE47C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F541638, &qword_252E40900, StateSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F541638, &qword_252E40900);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F541638, &qword_252E40900, StateSemantic.rawValue.getter);
  }

  v8 = *v3;
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = StateSemantic.rawValue.getter();
      v13 = v12;
      if (v11 == StateSemantic.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAE6BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DAB4E4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_252DB05BC(&qword_27F5445E8, &qword_252E54DD8);
      goto LABEL_16;
    }

    sub_252DB1FC4(v7 + 1);
  }

  v9 = *v3;
  sub_252E37EC4();
  sub_252A9AD58(v6);
  sub_252E37044();

  result = sub_252E37F14();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_252A9AD58(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == sub_252A9AD58(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAE8A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 112);
  v70 = *(result + 96);
  v71 = v7;
  v72 = *(result + 128);
  v73 = *(result + 144);
  v8 = *(result + 48);
  v66 = *(result + 32);
  v67 = v8;
  v9 = *(result + 80);
  v68 = *(result + 64);
  v69 = v9;
  v10 = *(result + 16);
  v64 = *result;
  v65 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAB750(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_252DB02CC();
      goto LABEL_12;
    }

    sub_252DB2200(v11 + 1);
  }

  v13 = *v3;
  v14 = *(v6 + 112);
  v60 = *(v6 + 96);
  v61 = v14;
  v62 = *(v6 + 128);
  v63 = *(v6 + 144);
  v15 = *(v6 + 48);
  v56 = *(v6 + 32);
  v57 = v15;
  v16 = *(v6 + 80);
  v58 = *(v6 + 64);
  v59 = v16;
  v17 = *(v6 + 16);
  v54 = *v6;
  v55 = v17;
  sub_252E37EC4();
  sub_252A34930(v52);
  result = sub_252E37F14();
  v18 = -1 << *(v13 + 32);
  a2 = result & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    do
    {
      v20 = *(v13 + 48) + 152 * a2;
      v21 = *(v20 + 16);
      v52[0] = *v20;
      v52[1] = v21;
      v22 = *(v20 + 80);
      v24 = *(v20 + 32);
      v23 = *(v20 + 48);
      v52[4] = *(v20 + 64);
      v52[5] = v22;
      v52[2] = v24;
      v52[3] = v23;
      v25 = *(v20 + 96);
      v26 = *(v20 + 112);
      v27 = *(v20 + 128);
      v53 = *(v20 + 144);
      v52[7] = v26;
      v52[8] = v27;
      v52[6] = v25;
      v28 = *(v20 + 112);
      v48 = *(v20 + 96);
      v49 = v28;
      v50 = *(v20 + 128);
      v51 = *(v20 + 144);
      v29 = *(v20 + 48);
      v44 = *(v20 + 32);
      v45 = v29;
      v30 = *(v20 + 80);
      v46 = *(v20 + 64);
      v47 = v30;
      v31 = *(v20 + 16);
      v42 = *v20;
      v43 = v31;
      sub_25297DE08(v52, &v54);
      v32 = sub_252A39200(&v42, &v64);
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v56 = v44;
      v57 = v45;
      v58 = v46;
      v59 = v47;
      v54 = v42;
      v55 = v43;
      result = sub_2529AEC80(&v54);
      if (v32)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v33 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = *(v33 + 48) + 152 * a2;
  v35 = v69;
  *(v34 + 64) = v68;
  *(v34 + 80) = v35;
  v36 = v67;
  *(v34 + 32) = v66;
  *(v34 + 48) = v36;
  *(v34 + 144) = v73;
  v37 = v72;
  *(v34 + 112) = v71;
  *(v34 + 128) = v37;
  *(v34 + 96) = v70;
  v38 = v65;
  *v34 = v64;
  *(v34 + 16) = v38;
  v39 = *(v33 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v33 + 16) = v41;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEB44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAB9CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252DB047C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252DB2440(v5 + 1);
  }

  v8 = *v3;
  result = sub_252E37EB4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEC64(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F545DF0, &qword_252E600D0, AttributeSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F545DF0, &qword_252E600D0);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F545DF0, &qword_252E600D0, AttributeSemantic.rawValue.getter);
  }

  v8 = *v3;
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = AttributeSemantic.rawValue.getter();
      v13 = v12;
      if (v11 == AttributeSemantic.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEEA4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DABE64(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252DB06EC();
      goto LABEL_12;
    }

    sub_252DB2874(v10 + 1);
  }

  v12 = *v3;
  sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F440]);
  v13 = sub_252E36E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2529E6488(qword_27F542ED0, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F448]);
      v21 = sub_252E36EF4();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAF148(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DAC1C4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB092C();
      goto LABEL_16;
    }

    sub_252DB2B94(v6 + 1);
  }

  v8 = *v3;
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = HueSemantic.rawValue.getter();
      v13 = v12;
      if (v11 == HueSemantic.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_252E37DB4();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 2 * a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAF330(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v23 = a6;
      sub_252DAA7C0(v9 + 1, a4, a5);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_252DB0B9C(a4, a5);
        goto LABEL_20;
      }

      v23 = a6;
      sub_252DB1360(v9 + 1, a4, a5);
    }

    v11 = *v6;
    sub_252E37EC4();
    sub_252E32E84();
    sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252E36E94();
    v12 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v13 = (v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    result = sub_252E37F14();
    v14 = -1 << *(v11 + 32);
    a2 = result & ~v14;
    if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(v11 + 48) + 8 * a2);

        if ((sub_252E32E54() & 1) != 0 && *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v8 + v12))
        {
          if (*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v13 && *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v13[1])
          {
            goto LABEL_23;
          }

          v18 = sub_252E37DB4();

          if (v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        a2 = (a2 + 1) & v15;
      }

      while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v8;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_23:

LABEL_24:
    v23(0);
    result = sub_252E37E14();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

void sub_252DAF5DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_252DACC30(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252DB0E60(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_252DB3500(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_252E37684();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_25293F638(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_252E37694();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_252E37E14();
  __break(1u);
}

uint64_t sub_252DAF76C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v46 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_252DAC690(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB0CDC();
      goto LABEL_69;
    }

    sub_252DB3000(v6 + 1);
  }

  v8 = *v3;
  v9 = *(v5 + 16);
  v54[0] = *v5;
  v54[1] = v9;
  v10 = *(v5 + 48);
  v54[2] = *(v5 + 32);
  v54[3] = v10;
  sub_252E37EC4();
  IconInfo.hash(into:)(&v51);
  result = sub_252E37F14();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v50 = ~v11;
    v12 = *(v5 + 32);
    v47 = *(v5 + 33);
    v13 = *v5;
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v48 = *(v5 + 48);
    v49 = *(v5 + 24);
    v43 = *(v5 + 40);
    v44 = *(v5 + 56);
    do
    {
      v16 = (*(v8 + 48) + (a2 << 6));
      v18 = v16[2];
      v17 = v16[3];
      v19 = v16[1];
      v51 = *v16;
      v52 = v19;
      *v53 = v18;
      *&v53[16] = v17;
      if (v51 != __PAIR128__(v14, v13))
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v52 != __PAIR128__(v49, v15))
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v20 = 0x6F7268636F6E6F6DLL;
      if (v53[0] != 2)
      {
        v20 = 0x657474656C6170;
      }

      v21 = 0xE700000000000000;
      if (v53[0] == 2)
      {
        v21 = 0xEA0000000000656DLL;
      }

      v22 = 0xEA0000000000726FLL;
      v23 = 0x6C6F6369746C756DLL;
      if (!v53[0])
      {
        v23 = 0x6863726172656968;
        v22 = 0xEC0000006C616369;
      }

      if (v53[0] <= 1u)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      if (v53[0] <= 1u)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v26 = 0x6F7268636F6E6F6DLL;
        }

        else
        {
          v26 = 0x657474656C6170;
        }

        if (v12 == 2)
        {
          v27 = 0xEA0000000000656DLL;
        }

        else
        {
          v27 = 0xE700000000000000;
        }
      }

      else
      {
        v26 = 0x6863726172656968;
        v27 = 0xEC0000006C616369;
        if (v12)
        {
          v27 = 0xEA0000000000726FLL;
          v26 = 0x6C6F6369746C756DLL;
        }
      }

      if (v24 == v26 && v25 == v27)
      {
        sub_252C76A80(&v51, v54);
      }

      else
      {
        v28 = sub_252E37DB4();
        sub_252C76A80(&v51, v54);

        if ((v28 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v53[1] > 1u)
      {
        if (v53[1] == 2)
        {
          v29 = 0x6F7268636F6E6F6DLL;
          v30 = 0xEA0000000000656DLL;
        }

        else
        {
          v30 = 0xE700000000000000;
          v29 = 0x657474656C6170;
        }
      }

      else
      {
        v29 = 0x6863726172656968;
        v30 = 0xEC0000006C616369;
        if (v53[1])
        {
          v30 = 0xEA0000000000726FLL;
          v29 = 0x6C6F6369746C756DLL;
        }
      }

      if (v47 > 1)
      {
        if (v47 != 2)
        {
          v32 = 0xE700000000000000;
          if (v29 != 0x657474656C6170)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }

        v31 = 0x6F7268636F6E6F6DLL;
        v32 = 0xEA0000000000656DLL;
      }

      else
      {
        v31 = 0x6863726172656968;
        v32 = 0xEC0000006C616369;
        if (v47)
        {
          v32 = 0xEA0000000000726FLL;
          if (v29 != 0x6C6F6369746C756DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }
      }

      if (v29 != v31)
      {
        goto LABEL_58;
      }

LABEL_55:
      if (v30 == v32)
      {

        goto LABEL_59;
      }

LABEL_58:
      v33 = sub_252E37DB4();

      if ((v33 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_59:
      if (*&v53[16])
      {
        if (!v48 || *&v53[8] != __PAIR128__(v48, v43) && (sub_252E37DB4() & 1) == 0)
        {
LABEL_11:
          result = sub_252C76ADC(&v51);
          goto LABEL_12;
        }
      }

      else if (v48)
      {
        goto LABEL_11;
      }

      v34 = *&v53[24];
      if (*&v53[24])
      {
        if (!v44)
        {
          goto LABEL_11;
        }

        v35 = sub_252DA6B34(v34, v44);

        result = sub_252C76ADC(&v51);
        if (v35)
        {
          goto LABEL_68;
        }
      }

      else
      {
        result = sub_252C76ADC(&v51);
        if (!v44)
        {
LABEL_68:
          result = sub_252E37E14();
          __break(1u);
          break;
        }
      }

LABEL_12:
      a2 = (a2 + 1) & v50;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v36 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v37 = (*(v36 + 48) + (a2 << 6));
  v38 = v46[1];
  *v37 = *v46;
  v37[1] = v38;
  v39 = v46[3];
  v37[2] = v46[2];
  v37[3] = v39;
  v40 = *(v36 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v42;
  }

  return result;
}

void *sub_252DAFCCC(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DACE50(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_252DB0FA0();
      goto LABEL_12;
    }

    sub_252DB370C(v8 + 1);
  }

  v10 = *v4;
  memcpy(v22, __src, sizeof(v22));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v21);
  v11 = sub_252E37F14();
  v12 = -1 << *(v10 + 32);
  a2 = v11 & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 504 * a2;
      memcpy(v21, v14, sizeof(v21));
      memcpy(v20, v14, sizeof(v20));
      sub_2529353AC(v21, v22);
      LOBYTE(v14) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v20, __dst);
      memcpy(v22, v20, sizeof(v22));
      sub_252935408(v22);
      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v15 + 48) + 504 * a2), __dst, 0x1F8uLL);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

void *sub_252DAFEB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  v2 = *v0;
  v3 = sub_252E37974();
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

void *sub_252DB000C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  v2 = *v0;
  v3 = sub_252E37974();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_252DB0164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  v2 = *v0;
  v3 = sub_252E37974();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252DB02CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  v2 = *v0;
  v3 = sub_252E37974();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_25297DE08(v26, v25))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 152 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[5];
      v26[4] = v17[4];
      v26[5] = v20;
      v26[3] = v19;
      v21 = v17[6];
      v22 = v17[7];
      v23 = v17[8];
      v27 = *(v17 + 72);
      v26[7] = v22;
      v26[8] = v23;
      v26[6] = v21;
      v24 = v17[1];
      v26[0] = *v17;
      v26[1] = v24;
      v26[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x92uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_252DB047C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  v2 = *v0;
  v3 = sub_252E37974();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252DB05BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_252DB06EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  v6 = *v0;
  v7 = sub_252E37974();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_252DB092C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  v2 = *v0;
  v3 = sub_252E37974();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252DB0A6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_252DB0B9C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_252DB0CDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  v2 = *v0;
  v3 = sub_252E37974();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_252C76A80(v27, &v26);
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

id sub_252DB0E60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_252DB0FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  v2 = *v0;
  v3 = sub_252E37974();
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
        v17 = *(v2 + 48);
        v18 = 504 * (v14 | (v8 << 6));
        memcpy(__dst, (v17 + v18), sizeof(__dst));
        memmove((*(v4 + 48) + v18), (v17 + v18), 0x1F8uLL);
        result = sub_2529353AC(__dst, &v19);
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

uint64_t sub_252DB1128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E37984();
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
      sub_252E37EC4();

      sub_252E37044();
      result = sub_252E37F14();
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

uint64_t sub_252DB1360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_252E36E94();
      MEMORY[0x2530AE390](*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

      sub_252E37044();

      result = sub_252E37F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v27;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_252DB162C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E37984();
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
      v19 = *v17;
      v18 = v17[1];
      sub_252E37EC4();
      sub_252E37EE4();
      if (v18)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_252DB1880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  result = sub_252E37984();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_252E37EB4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_252DB1A80(uint64_t a1)
{
  v2 = v1;
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v39 - v9;
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E37984();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v47 = (v4 + 48);
    v43 = (v4 + 8);
    v44 = v10;
    v39 = v1;
    v40 = (v4 + 32);
    v19 = result + 56;
    v45 = v3;
    v20 = v46;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
LABEL_15:
      v25 = *(*(v10 + 48) + 8 * (v22 | (v13 << 6)));
      sub_252E37EC4();
      sub_252956C1C(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v20);
      v26 = *v47;
      v27 = (*v47)(v20, 1, v3);

      if (v27 == 1)
      {
        sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v43)(v20, v3);
        sub_252E37EE4();
        sub_252E37044();
      }

      v28 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v28)
      {
        sub_252E37EE4();
        v29 = v42;
        sub_252956C1C(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v42);
        v3 = v45;
        if (v26(v29, 1, v45) == 1)
        {
          sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
          v10 = v44;
          if (*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {

            HomeAutomationAbstractMeasurement.hash(into:)(v49);
          }

          else
          {
            sub_252E37EE4();
          }
        }

        else
        {
          v30 = v29;
          v31 = v41;
          (*v40)(v41, v30, v3);
          sub_252E36304();
          sub_252E37044();

          (*v43)(v31, v3);
          v10 = v44;
        }
      }

      else
      {
        sub_252E37EE4();
        v10 = v44;
        v3 = v45;
      }

      result = sub_252E37F14();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v20 = v46;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_38;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v25;
      ++*(v12 + 16);
      v17 = v48;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v39;
        goto LABEL_36;
      }

      v24 = *(v14 + 8 * v13);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_252DB1FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E37984();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_252E37EC4();
      sub_252A9AD58(v16);
      sub_252E37044();

      result = sub_252E37F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

unint64_t sub_252DB2200(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  result = sub_252E37984();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v2 + 48) + 152 * (v10 | (v5 << 6));
      v14 = *(v13 + 80);
      v16 = *(v13 + 32);
      v15 = *(v13 + 48);
      v49 = *(v13 + 64);
      v50 = v14;
      v47 = v16;
      v48 = v15;
      v17 = *(v13 + 96);
      v18 = *(v13 + 112);
      v19 = *(v13 + 128);
      v54 = *(v13 + 144);
      v52 = v18;
      v53 = v19;
      v51 = v17;
      v20 = *(v13 + 16);
      v45 = *v13;
      v46 = v20;
      v21 = *(v13 + 112);
      v41 = *(v13 + 96);
      v42 = v21;
      v43 = *(v13 + 128);
      v44 = *(v13 + 144);
      v22 = *(v13 + 48);
      v37 = *(v13 + 32);
      v38 = v22;
      v23 = *(v13 + 80);
      v39 = *(v13 + 64);
      v40 = v23;
      v24 = *(v13 + 16);
      v35 = *v13;
      v36 = v24;
      sub_252E37EC4();
      sub_25297DE08(&v45, &v33);
      sub_252A34930(v34);
      sub_252E37F14();
      result = sub_252E37854();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v25 = *(v4 + 48) + 152 * result;
      v26 = v46;
      *v25 = v45;
      *(v25 + 16) = v26;
      v27 = v50;
      v29 = v47;
      v28 = v48;
      *(v25 + 64) = v49;
      *(v25 + 80) = v27;
      *(v25 + 32) = v29;
      *(v25 + 48) = v28;
      v30 = v51;
      v31 = v52;
      v32 = v53;
      *(v25 + 144) = v54;
      *(v25 + 112) = v31;
      *(v25 + 128) = v32;
      *(v25 + 96) = v30;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_14;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_252DB2440(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  result = sub_252E37984();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_252E37EB4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_252DB2630(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      v20 = sub_252E37EC4();
      a4(v20);
      sub_252E37044();

      result = sub_252E37F14();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }

  return result;
}