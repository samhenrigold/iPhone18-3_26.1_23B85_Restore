void *PFLDataCollector.selectOffsets(numOfNotifications:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v6 = a1 * v4;
  if ((a1 * v4) >> 64 != (a1 * v4) >> 63)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v6 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = a1 * v4;
  }

  if (a1 < 0)
  {
    goto LABEL_86;
  }

  if (!a1)
  {
    v7 = MEMORY[0x277D84F90];
    if (v6 < 1)
    {
      goto LABEL_22;
    }

LABEL_11:
    v8 = 0;
    v9 = v7 + 32;
    while (1)
    {
      if (v8 == a1)
      {
        if (!v2)
        {
          goto LABEL_22;
        }

          ;
        }

        v8 = 0;
      }

      if (v8 >= a1)
      {
        goto LABEL_76;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_77;
      }

      if (v8 >= *(v7 + 16))
      {
        goto LABEL_78;
      }

      v10 = *(v9 + 8 * v8);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_79;
      }

      *(v9 + 8 * v8++) = v12;
      if (v2-- <= 1)
      {
        goto LABEL_22;
      }
    }
  }

  v7 = sub_275B7AEAC();
  *(v7 + 16) = a1;
  bzero((v7 + 32), 8 * a1);
  if (v6 >= 1)
  {
    goto LABEL_11;
  }

LABEL_22:
  v14 = MEMORY[0x277D84F90];
  if (v3 < 1)
  {
    v15 = MEMORY[0x277D84F90];
    if (a1)
    {
LABEL_25:
      v16 = 0;
      v2 = 0;
      v45 = v7 + 32;
      v17 = v14;
      v43 = v7;
      while (1)
      {
        v46[0] = v14;
        v18 = *(v7 + 16);
        if (v16 >= v18)
        {
          break;
        }

        if (*(v45 + 8 * v16) < 1)
        {
          v19 = v14;
          if (v16 >= v18)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v19 = sub_275B1160C(0, 1, 1, v14);
          v21 = *(v19 + 2);
          v20 = *(v19 + 3);
          if (v21 >= v20 >> 1)
          {
            v19 = sub_275B1160C((v20 > 1), v21 + 1, 1, v19);
          }

          *(v19 + 2) = v21 + 1;
          *&v19[8 * v21 + 32] = 0;
          v46[0] = v19;
          v18 = *(v7 + 16);
          if (v16 >= v18)
          {
            goto LABEL_74;
          }
        }

        v22 = *(v45 + 8 * v16);
        v11 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v11)
        {
          goto LABEL_75;
        }

        if (v23 >= 1)
        {
          v44 = v17;
          v24 = v15[2];
          if (v24)
          {
            if (v24 != 1)
            {
              v25 = 0;
              v26 = v24 - 2;
              while (1)
              {
                v47 = 0;
                MEMORY[0x277C89DC0](&v47, 8);
                v28 = (v47 * v24) >> 64;
                if (v24 > v47 * v24)
                {
                  v29 = -v24 % v24;
                  if (v29 > v47 * v24)
                  {
                    do
                    {
                      v47 = 0;
                      MEMORY[0x277C89DC0](&v47, 8);
                    }

                    while (v29 > v47 * v24);
                    v28 = (v47 * v24) >> 64;
                  }
                }

                v30 = v25 + v28;
                if (__OFADD__(v25, v28))
                {
                  break;
                }

                if (v25 != v30)
                {
                  v31 = v15[2];
                  if (v25 >= v31)
                  {
                    goto LABEL_69;
                  }

                  if (v30 >= v31)
                  {
                    goto LABEL_70;
                  }

                  v32 = v15[v25 + 4];
                  v33 = v15[v30 + 4];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = sub_275B5A2BC(v15);
                  }

                  v34 = v15[2];
                  if (v25 >= v34)
                  {
                    goto LABEL_71;
                  }

                  v15[v25 + 4] = v33;
                  if (v30 >= v34)
                  {
                    goto LABEL_72;
                  }

                  v15[v30 + 4] = v32;
                }

                --v24;
                if (v25++ == v26)
                {
                  v18 = *(v43 + 16);
                  goto LABEL_53;
                }
              }

              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              break;
            }

LABEL_53:
            if (v16 >= v18)
            {
              goto LABEL_80;
            }

            v35 = *(v45 + 8 * v16);
            v11 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v11)
            {
              goto LABEL_81;
            }

            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            if (v15[2] < v36)
            {
              goto LABEL_83;
            }

            v37 = (2 * v36) | 1;

            sub_275B3098C(v38, (v15 + 4), 0, v37);
            v19 = v46[0];
          }

          v17 = v44;
        }

        v47 = v19;

        sub_275B59FF4(&v47);

        v39 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_275B1176C(0, v17[2] + 1, 1, v17);
        }

        v41 = v17[2];
        v40 = v17[3];
        if (v41 >= v40 >> 1)
        {
          v17 = sub_275B1176C((v40 > 1), v41 + 1, 1, v17);
        }

        ++v16;
        v17[2] = v41 + 1;
        v17[v41 + 4] = v39;
        v7 = v43;
        v14 = MEMORY[0x277D84F90];
        if (v16 == a1)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  else
  {
    v15 = sub_275B0B754(v3, 0);
    if (sub_275B5A1C8(v46, (v15 + 4), v3, 1, v3) != v3)
    {
LABEL_87:
      __break(1u);

      __break(1u);
      return result;
    }

    v14 = MEMORY[0x277D84F90];
    if (a1)
    {
      goto LABEL_25;
    }
  }

  return MEMORY[0x277D84F90];
}

void *PFLDataCollector.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t PFLDataCollector.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_275B59FF4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A2BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_275B7B18C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_275B7AEAC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_275B16C5C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_275B5A128(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_275B5A1B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_275B5A1C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_275B5A2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33910, &qword_275B7E7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon16PFLDataCollectorC15joinPflMessages09openLabelI003buykI0Say01iabC4Core23SubscriptiondPFLMessageVGAJ_AJtFZ_0(unint64_t a1, void *a2)
{
  v7 = sub_275B7A3CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v42 - v14;
  v16 = *(a1 + 16);
  v17 = a2[2];
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v18 < 11)
  {

    goto LABEL_23;
  }

  if (!v16)
  {
    a1 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = sub_275B11790(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = *(v8 + 72);
  v43 = a1 + v4;
  v44 = v19;
  sub_275B55DF8(a1 + v4, v15);
  a1 = v2[2];
  v18 = v2[3];
  v3 = a1 + 1;
  if (a1 >= v18 >> 1)
  {
    goto LABEL_34;
  }

LABEL_5:
  v2[2] = v3;
  v20 = v2 + v4 + a1 * v44;
  v21 = v44;
  sub_275B5A760(v15, v20);
  if (v16 != 1)
  {
    sub_275B55DF8(v43 + v21, v15);
    a1 = v2[2];
    v18 = v2[3];
    v3 = a1 + 1;
    if (a1 >= v18 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  while (1)
  {
    a1 = v2;
LABEL_20:
    v18 = *(a1 + 16);
    v2 = (v18 - 10);
    if (v18 > 0xA)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      v2 = sub_275B11790((v18 > 1), v3, 1, v2);
      goto LABEL_5;
    }

    if (v18 == 10)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    if (v17)
    {
      break;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v2 = sub_275B11790((v18 > 1), v3, 1, v2);
LABEL_7:
    v2[2] = v3;
    v22 = v2 + v4 + a1 * v44;
    v23 = v44;
    sub_275B5A760(v15, v22);
    if (v16 != 2)
    {
      sub_275B55DF8(v43 + 2 * v23, v15);
      v25 = v2[2];
      v24 = v2[3];
      v3 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v2 = sub_275B11790((v24 > 1), v25 + 1, 1, v2);
      }

      v2[2] = v3;
      v26 = v2 + v4 + v25 * v44;
      v27 = v44;
      sub_275B5A760(v15, v26);
      if (v16 != 3)
      {
        sub_275B55DF8(v43 + 3 * v27, v15);
        v29 = v2[2];
        v28 = v2[3];
        v3 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v2 = sub_275B11790((v28 > 1), v29 + 1, 1, v2);
        }

        v2[2] = v3;
        v30 = v2 + v4 + v29 * v44;
        v31 = v44;
        sub_275B5A760(v15, v30);
        if (v16 != 4)
        {
          sub_275B55DF8(v43 + 4 * v31, v15);
          v33 = v2[2];
          v32 = v2[3];
          v3 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v2 = sub_275B11790((v32 > 1), v33 + 1, 1, v2);
          }

          v2[2] = v3;
          sub_275B5A760(v15, v2 + v4 + v33 * v44);
        }
      }
    }
  }

  v18 = 9 - v18;
  if (v18 >= v17)
  {
    goto LABEL_36;
  }

  v35 = sub_275B11790(0, 1, 1, MEMORY[0x277D84F90]);
  v36 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v37 = a2 + v36;
  v38 = *(v8 + 72);
  a2 = v35;
  do
  {
    sub_275B55DF8(v37, v11);
    v40 = a2[2];
    v39 = a2[3];
    if (v40 >= v39 >> 1)
    {
      a2 = sub_275B11790((v39 > 1), v40 + 1, 1, a2);
    }

    a2[2] = v40 + 1;
    sub_275B5A760(v11, a2 + v36 + v40 * v38);
    v37 += v38;
    v41 = __CFADD__(v2, 1);
    v2 = (v2 + 1);
  }

  while (!v41);
LABEL_23:
  v45 = a1;
  sub_275B30AA0(a2);
  return v45;
}

uint64_t sub_275B5A760(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A3CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PflDataStoreEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x53617461446C6670, 0xEC00000065726F74);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PflDataStoreEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x53617461446C6670, 0xEC00000065726F74);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PflDataStoreEvent.addDuration(_:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.addMessagesFetched(_:)(uint64_t a1)
{
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.addMessagesToWrite(_:)(uint64_t a1)
{
  sub_275B79B7C();
}

uint64_t PflDataStoreEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18PFLFeatureNameListC3getSayAA07FeatureF0OGyFZ_0()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(&unk_2884A7FB0 + v0 + 32);
    if (((1 << v4) & 0x4BFF0FC7FFFEFFLL) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275B0E5F4(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_275B0E5F4((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 55);
  return v1;
}

uint64_t sub_275B5AD80()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33920);
  __swift_project_value_buffer(v0, qword_280A33920);
  type metadata accessor for PingAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33948, &unk_275B7E8C0);
  return sub_275B7A97C();
}

uint64_t PingAPI.getResponse(request:)(uint64_t a1)
{
  v2 = sub_275B79C2C();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280A32E00 != -1)
  {
    swift_once();
  }

  v6 = sub_275B7A96C();
  __swift_project_value_buffer(v6, qword_280A33920);
  strcpy(v14, "PingRequest=");
  HIBYTE(v14[6]) = 0;
  v14[7] = -5120;
  sub_275B79BCC();
  sub_275B5B308(&qword_280A33938, MEMORY[0x277D7F5C8], MEMORY[0x277D7F5C0]);
  v7 = sub_275B7965C();
  MEMORY[0x277C89240](v7);

  sub_275B7A91C();

  MEMORY[0x28223BE20](v8, v9);
  *&v13[-16] = a1;
  sub_275B5B308(&qword_280A33940, MEMORY[0x277D7F5E0], MEMORY[0x277D7F5D8]);
  sub_275B7968C();
  v10 = sub_275B797EC();
  MEMORY[0x28223BE20](v10, v11);
  *&v13[-16] = v5;
  sub_275B5B308(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
  sub_275B7968C();
  return sub_275B5B350(v5);
}

uint64_t sub_275B5B0B4()
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B85930);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  HIDWORD(v2[1]) = -335544318;
  MEMORY[0x277C89240](0, 0xE000000000000000);

  strcpy(v2, " clientMsg=[");
  v0 = sub_275B79BBC();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](93, 0xE100000000000000);

  MEMORY[0x277C89240](v2[0], v2[1]);

  return sub_275B79C1C();
}

uint64_t sub_275B5B258(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79C2C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_275B5B3E8(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_275B797AC();
}

uint64_t sub_275B5B308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275B5B350(uint64_t a1)
{
  v2 = sub_275B79C2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B5B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79C2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *static QuotaDaemonNotifierFactory.indXpcClientWithBackoff()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ICloudNotificationXpcClient();
  v3 = swift_allocObject();
  v4 = sub_275B79CFC();
  v6 = *v4;
  v5 = v4[1];
  type metadata accessor for DaemonStateManager();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = qword_280A32C38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static BackingOffINDNotifier.kDefaultBackoffDuration;
  v10 = type metadata accessor for BackingOffINDNotifier();
  result = swift_allocObject();
  result[5] = v2;
  result[6] = &off_2884AA078;
  result[2] = v3;
  result[7] = v7;
  result[8] = v9;
  a1[3] = v10;
  a1[4] = &protocol witness table for BackingOffINDNotifier;
  *a1 = result;
  return result;
}

uint64_t static QuotaDaemonNotifierFactory.indXpcClient()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ICloudNotificationXpcClient();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2884AA078;
  *a1 = result;
  return result;
}

uint64_t RealAssetInterface.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void RealAssetInterface.getLocalUrl()()
{
  v1 = [*(v0 + 16) getLocalUrl];
  if (v1)
  {
    v2 = v1;
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

void RealAssetInterface.startCatalogDownload(_:options:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_275B7ACDC();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275B5B780;
  v11[3] = &block_descriptor_5;
  v10 = _Block_copy(v11);

  [v8 startCatalogDownload:v9 options:a3 then:v10];
  _Block_release(v10);
}

uint64_t sub_275B5B780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void RealAssetInterface.startDownload(_:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_275B5B780;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);
  v7 = v5;

  [v7 startDownload:a1 then:v6];
  _Block_release(v6);
}

id RealAssetInterface.getAttributes()()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_275B7AC8C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealAssetInterface.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_275B5B994()
{
  result = [*(*v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_275B7AC8C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_275B5BA04()
{
  v1 = [*(*v0 + 16) getLocalUrl];
  if (v1)
  {
    v2 = v1;
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

void sub_275B5BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_275B7ACDC();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275B5B780;
  v11[3] = &block_descriptor_9_1;
  v10 = _Block_copy(v11);

  [v8 startCatalogDownload:v9 options:a3 then:v10];
  _Block_release(v10);
}

uint64_t sub_275B5BBD4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140DF10);
  __swift_project_value_buffer(v0, qword_28140DF10);
  type metadata accessor for RealBatteryStateProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33950, "ʕ");
  return sub_275B7A97C();
}

Swift::Bool __swiftcall RealBatteryStateProvider.isCharging()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(v0);

  return v1;
}

BOOL sub_275B5BCD4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(v0);

  return v1;
}

BOOL _s33iCloudSubscriptionOptimizerDaemon24RealBatteryStateProviderC10isCharging6deviceSbSo8UIDeviceC_tFZ_0(void *a1)
{
  [a1 setBatteryMonitoringEnabled_];
  v2 = [a1 batteryState];
  [a1 setBatteryMonitoringEnabled_];
  if (qword_28140DF08 != -1)
  {
    swift_once();
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_28140DF10);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000001FLL, 0x8000000275B85A50);
  type metadata accessor for BatteryState(0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x726168437369205DLL, 0xEE005B3D676E6967);
  v5 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 2;
  if (v3 == 2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x277C89240](v6, v7);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  return v5;
}

uint64_t RealBiomeManager.getIsDoNotDisturbOn(timestamp:)(uint64_t a1)
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)(a1) == 0xD000000000000023 && 0x8000000275B7FC60 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_275B7B1BC();
  }

  return v3 & 1;
}

uint64_t RealBiomeManager.getIsDrivingModeOn(timestamp:)(uint64_t a1)
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)(a1) == 0xD000000000000023 && 0x8000000275B7FC90 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_275B7B1BC();
  }

  return v3 & 1;
}

uint64_t RealBiomeManager.getAppLaunch1w(timestamp:)(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, a1, &unk_2884A7E98);
}

__n128 RealBiomeManager.getNotificationFeatures1w(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0, 0xE000000000000000);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

__n128 RealBiomeManager.getICloudNotificationFeatures2w(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0xD000000000000019, 0x8000000275B7F610);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t RealBiomeManager.getAppLaunchSameSlotLast24Hours(displayTimestamp:offsetTimeInterval:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7AC4C();
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  v3 = sub_275B7ABBC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, v3, MEMORY[0x277D84F90]);
}

__n128 RealBiomeManager.getNotificationFeaturesSameSlotLast24Hours(displayTimestamp:offsetTimeInterval:)@<Q0>(uint64_t a3@<X8>)
{
  v4 = sub_275B7AC4C();
  v5 = sub_275B7ABBC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v6 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, v5, 0, 0xE000000000000000);
  sub_275B15F6C(v6, v9);

  v7 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v7;
  *(a3 + 64) = v10;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t RealBiomeManager.getMinsSinceLastAppLaunch1w(timestamp:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BiomeAppLaunch.MinsSinceLastAppLaunch();
  v6 = sub_275B7AC4C();
  return static BiomeAppLaunch.MinsSinceLastAppLaunch.get(appBundleId:startTime:endTime:)(a2, a3, v6, a1);
}

uint64_t RealBiomeManager.getUserTier(_:)(uint64_t a1)
{
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();

  return static BiomeICloudSubscription.UserTier.get(_:_:)(a1, v2);
}

uint64_t sub_275B5C5AC(uint64_t a1)
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)(a1) == 0xD000000000000023 && 0x8000000275B7FC60 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_275B7B1BC();
  }

  return v3 & 1;
}

uint64_t sub_275B5C640(uint64_t a1)
{
  type metadata accessor for BiomeFocusSleep();
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)(a1) == 0xD000000000000023 && 0x8000000275B7FC90 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_275B7B1BC();
  }

  return v3 & 1;
}

uint64_t sub_275B5C6D4(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, a1, &unk_2884A7E98);
}

__n128 sub_275B5C738@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0, 0xE000000000000000);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_275B5C7F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v5 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, a1, 0xD000000000000019, 0x8000000275B7F610);
  sub_275B15F6C(v5, v8);

  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_275B5C8FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7AC4C();
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  v3 = sub_275B7ABBC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, v3, MEMORY[0x277D84F90]);
}

__n128 sub_275B5C978@<Q0>(uint64_t a3@<X8>)
{
  v4 = sub_275B7AC4C();
  v5 = sub_275B7ABBC();
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v6 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v4, v5, 0, 0xE000000000000000);
  sub_275B15F6C(v6, v9);

  v7 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v7;
  *(a3 + 64) = v10;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_275B5CA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BiomeAppLaunch.MinsSinceLastAppLaunch();
  v6 = sub_275B7AC4C();
  return static BiomeAppLaunch.MinsSinceLastAppLaunch.get(appBundleId:startTime:endTime:)(a2, a3, v6, a1);
}

uint64_t sub_275B5CAEC(uint64_t a1)
{
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();

  return static BiomeICloudSubscription.UserTier.get(_:_:)(a1, v2);
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC28getAppLaunchCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fL0C05photoL0_AH03alliL0t01iabC4Core0O0V_AK0Q5DeltaVtF_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7AEAC();
  *(v2 + 16) = 14;
  *(v2 + 32) = 0u;
  v27 = v2 + 32;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  v29 = v2;
  v3 = sub_275B7AEAC();
  *(v3 + 16) = 14;
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  *(v3 + 32) = 0u;
  v26 = v3 + 32;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  v4 = 1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  v28 = v3;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = sub_275B7AC4C();
    v7 = sub_275B7ABBC();
    result = static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v6, v7, v5);
    v9 = result;
    v10 = *(result + 16);
    if (v10)
    {
      break;
    }

    v11 = v5;
    v15 = *(v5 + 16);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_12:
    v16 = 0;
LABEL_13:
    v20 = v4 - 1;

    if ((v4 - 1) >= *(v29 + 16))
    {
      goto LABEL_23;
    }

    *(v27 + 8 * v20) = v16;
    if (*(v9 + 16) && (v21 = sub_275B180D4(0xD000000000000019, 0x8000000275B7F3C0), (v22 & 1) != 0))
    {
      v23 = *(*(v9 + 56) + 8 * v21);
    }

    else
    {
      v23 = 0;
    }

    if (v20 >= *(v28 + 16))
    {
      goto LABEL_24;
    }

    *(v26 + 8 * v20) = v23;
    if (v4++ == 14)
    {
      v25 = _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v28);

      _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v29);

      return v25;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33178, &unk_275B7C570);
  v11 = swift_allocObject();
  v12 = _swift_stdlib_malloc_size(v11);
  v13 = v12 - 32;
  if (v12 < 32)
  {
    v13 = v12 - 25;
  }

  v11[2] = v10;
  v11[3] = 2 * (v13 >> 3);
  v30 = sub_275B0B83C(&v31, v11 + 4, v10, v9);
  v14 = v31;

  result = sub_275B0C684(v14);
  if (v30 != v10)
  {
    goto LABEL_25;
  }

  v15 = v11[2];
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_7:
  v16 = 0;
  v17 = v11 + 4;
  while (1)
  {
    v18 = *v17++;
    v19 = __OFADD__(v16, v18);
    v16 += v18;
    if (v19)
    {
      break;
    }

    if (!--v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *_s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC14getFocusMode2w16displayTimestampSaySSG01iabC4Core0L0V_tF_0(uint64_t a1)
{
  v1 = type metadata accessor for BiomeFocusSleep();
  v2 = sub_275B7AC4C();
  v29 = v1;
  v3 = static BiomeFocusSleep.getEnabledFocusMode(timestamp:)(v2);
  v5 = v4;
  v6 = sub_275B11064(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_275B11064((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v3;
  *(v9 + 5) = v5;
  v28 = objc_opt_self();
  sub_275B0F00C();
  for (i = 2; i != 15; ++i)
  {
    v30 = v6;
    sub_275B7AC4C();
    v11 = [v28 userFocusComputedMode];
    sub_275B7AC4C();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    v14 = sub_275B7AB3C();
    v15 = sub_275B7AB3C();
    v16 = sub_275B7AF9C();
    v17 = [v11 publisherWithStartTime:v14 endTime:v15 maxEvents:v16 reversed:1];

    v35 = nullsub_1;
    v36 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_275B0C864;
    v34 = &block_descriptor_16;
    v18 = _Block_copy(&aBlock);
    v19 = swift_allocObject();
    v19[2] = v29;
    v19[3] = v12;
    v19[4] = v13;
    v35 = sub_275B0F594;
    v36 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_275B0C864;
    v34 = &block_descriptor_22;
    v20 = _Block_copy(&aBlock);

    v21 = [v17 sinkWithCompletion:v18 receiveInput:v20];

    _Block_release(v20);
    _Block_release(v18);

    v6 = v30;
    swift_beginAccess();
    v22 = *(v12 + 16);
    v23 = *(v12 + 24);

    v25 = *(v30 + 2);
    v24 = *(v30 + 3);
    if (v25 >= v24 >> 1)
    {
      v6 = sub_275B11064((v24 > 1), v25 + 1, 1, v30);
    }

    *(v6 + 2) = v25 + 1;
    v26 = &v6[16 * v25];
    *(v26 + 4) = v22;
    *(v26 + 5) = v23;
  }

  return v6;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC19getSleepModeCount2w16displayTimestampSi01iabC4Core0M0V_tF_0(uint64_t a1)
{
  v16 = type metadata accessor for BiomeFocusSleep();
  v15 = objc_opt_self();
  sub_275B0F00C();
  v1 = 0;
  v2 = 1;
  while (1)
  {
    sub_275B7AC4C();
    v3 = [v15 sleepModeStream];
    sub_275B7AC4C();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v5 = sub_275B7AB3C();
    v6 = sub_275B7AB3C();
    v7 = sub_275B7AF9C();
    v8 = [v3 publisherWithStartTime:v5 endTime:v6 maxEvents:v7 reversed:1];

    v21 = nullsub_1;
    v22 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_275B0C864;
    v20 = &block_descriptor_6;
    v9 = _Block_copy(&aBlock);
    v10 = swift_allocObject();
    *(v10 + 16) = v16;
    *(v10 + 24) = v4;
    v21 = sub_275B0F0F4;
    v22 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_275B0C864;
    v20 = &block_descriptor_7_0;
    v11 = _Block_copy(&aBlock);

    v12 = [v8 sinkWithCompletion:v9 receiveInput:v11];

    _Block_release(v11);
    _Block_release(v9);

    swift_beginAccess();
    LODWORD(v9) = *(v4 + 16);

    if (v9 == 1 && __OFADD__(v1++, 1))
    {
      break;
    }

    if (++v2 == 15)
    {
      return v1;
    }
  }

  __break(1u);
  return v1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16RealBiomeManagerC31getNotificationCountStatsLast2w16displayTimestamp18offsetTimeIntervalAA0fK0C05totaljK0_AH06openedjK0t01iabC4Core0N0V_AK0P5DeltaVtF_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7AEAC();
  *(v2 + 16) = 14;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  v3 = sub_275B7AEAC();
  *(v3 + 16) = 14;
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v4 = 4;
  *(v3 + 128) = 0u;
  while (1)
  {
    v5 = sub_275B7AC4C();
    v6 = sub_275B7ABBC();
    v7 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(v5, v6, 0, 0xE000000000000000);
    sub_275B15F6C(v7, v12);

    v9 = v4 - 4;
    if ((v4 - 4) >= *(v2 + 16))
    {
      break;
    }

    *(v2 + 8 * v4) = v12[0];
    v10 = v12[1];
    result = sub_275B13748(v12);
    if (v9 >= *(v3 + 16))
    {
      goto LABEL_7;
    }

    *(v3 + 8 * v4++) = v10;
    if (v9 == 13)
    {
      v11 = _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v2);

      _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(v3);

      return v11;
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t RealDESRecordStore.__allocating_init()()
{
  v0 = swift_allocObject();
  RealDESRecordStore.init()();
  return v0;
}

uint64_t RealDESRecordStore.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x277D05630]);
  v2 = sub_275B7ACDC();
  v3 = [v1 initWithBundleIdentifier_];

  if (v3)
  {
    *(v0 + 16) = v3;
  }

  else
  {
    sub_275B2D020();
    swift_allocError();
    *v4 = 0xD000000000000024;
    v4[1] = 0x8000000275B85600;
    swift_willThrow();
    type metadata accessor for RealDESRecordStore();
    swift_deallocPartialClassInstance();
  }

  return v0;
}

void RealDESRecordStore.saveRecord(with:recordInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  v9 = sub_275B7951C();
  v10 = sub_275B7AC7C();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_275B5D920;
  v12[3] = &block_descriptor_7;
  v11 = _Block_copy(v12);

  [v8 saveRecordWithData:v9 recordInfo:v10 completion:v11];
  _Block_release(v11);
}

uint64_t sub_275B5D920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33958, &qword_275B7EAC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_275B795EC();
    v11 = sub_275B795FC();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_275B795FC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_275B5DF10(v9);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void RealDESRecordStore.fetchSavedRecordInfo(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_275B5DB40;
  v6[3] = &block_descriptor_3_0;
  v4 = _Block_copy(v6);
  v5 = v3;

  [v5 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_275B5DB40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_275B795FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33260, &qword_275B7C6C0);
    sub_275B5DEB8();
    v4 = sub_275B7AC8C();
  }

  v6 = a3;
  v5(v4, a3);
}

void RealDESRecordStore.deleteSavedRecord(withIdentfier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = sub_275B795DC();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_275B28178;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_275B36A24;
  v10[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v10);

  [v6 deleteSavedRecordWithIdentfier:v7 completion:v9];
  _Block_release(v9);
}

uint64_t RealDESRecordStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_275B5DD88(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_275B5DB40;
  v6[3] = &block_descriptor_12_0;
  v4 = _Block_copy(v6);
  v5 = v3;

  [v5 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v4);
}

unint64_t sub_275B5DEB8()
{
  result = qword_28140FBD8;
  if (!qword_28140FBD8)
  {
    sub_275B795FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FBD8);
  }

  return result;
}

uint64_t sub_275B5DF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33958, &qword_275B7EAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B5DF90()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33960);
  __swift_project_value_buffer(v0, qword_280A33960);
  type metadata accessor for ShadowEvaluationAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33990, "̔");
  return sub_275B7A97C();
}

void *ShadowEvaluationAPI.__allocating_init(withMobileAssetLocalManager:withShadowModeModelProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[4] = MEMORY[0x277D84F90];
  v4[5] = v5;
  v6 = type metadata accessor for RealBiomeManager();
  v7 = swift_allocObject();
  v4[9] = v6;
  v4[10] = &protocol witness table for RealBiomeManager;
  v4[6] = v7;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *ShadowEvaluationAPI.init(withMobileAssetLocalManager:withShadowModeModelProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  v2[4] = MEMORY[0x277D84F90];
  v2[5] = v5;
  v6 = type metadata accessor for RealBiomeManager();
  v7 = swift_allocObject();
  v2[9] = v6;
  v2[10] = &protocol witness table for RealBiomeManager;
  v2[6] = v7;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t ShadowEvaluationAPI.getResponse(request:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v112 = a2;
  v111 = sub_275B7A54C();
  v106 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v6);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_275B7A6DC();
  v105 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v8);
  v108 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B7A42C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v107 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_275B7AA6C();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_275B79C5C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32E10 != -1)
  {
    swift_once();
  }

  v21 = sub_275B7A96C();
  __swift_project_value_buffer(v21, qword_280A33960);
  v114 = 0;
  v115 = 0xE000000000000000;
  sub_275B7B09C();

  v114 = 0xD000000000000024;
  v115 = 0x8000000275B85B40;
  sub_275B7A2AC();
  sub_275B60964(&qword_280A33978, MEMORY[0x277D7F750], MEMORY[0x277D7F748]);
  v22 = sub_275B7965C();
  MEMORY[0x277C89240](v22);

  sub_275B7A91C();

  sub_275B5F07C(a1);

  v24 = sub_275B31714(v23);

  v28 = (*(**(v3 + 24) + 112))(v25);
  if (!*(v28 + 16))
  {

    sub_275B79C4C();
    sub_275B79C3C();
    v46 = sub_275B797EC();
    MEMORY[0x28223BE20](v46, v47);
    *(&v97 - 2) = v20;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
LABEL_12:
    sub_275B7968C();
    goto LABEL_13;
  }

  v29 = sub_275B6046C(v24, v28);

  if (v29[2] != *(v24 + 16))
  {
    sub_275B6074C(v24, v29);

    v114 = 0;
    v115 = 0xE000000000000000;
    sub_275B7B09C();
    v48 = sub_275B7AF3C();
    v50 = v49;

    v114 = v48;
    v115 = v50;
    MEMORY[0x277C89240](0xD000000000000022, 0x8000000275B85B70);
    sub_275B79C4C();
    sub_275B79C3C();
    v51 = sub_275B797EC();
    MEMORY[0x28223BE20](v51, v52);
    *(&v97 - 2) = v20;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_275B19CD4((v4 + 6), &v114);
  v30 = sub_275B7A24C();
  v31 = v4[5];
  v32 = qword_280A32E18;
  v102 = v4[4];

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v13, static ShadowModePipeline.kDefaultTrialSet);
  sub_275B60AF0(v33, v16, MEMORY[0x277D7F888]);
  v103 = sub_275B7A25C();
  v34 = v4[2];
  type metadata accessor for ShadowModeEvaluator(0);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 88) = MEMORY[0x277D84F90];
  *(v35 + 96) = v36;
  v97 = v35 + 96;
  *(v35 + 104) = v36;
  v98 = v35 + 104;
  *(v35 + 112) = v36;
  *(v35 + 120) = v36;
  *(v35 + 128) = v36;
  sub_275B19CD4(&v114, v35 + 16);
  *(v35 + 56) = v30;
  *(v35 + 88) = v29;
  v37 = *(v31 + 16);
  v104 = v34;
  if (!v37)
  {

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_275B7D0A0;
  v39 = *(v31 + 16);
  if (v39)
  {
    v40 = result;
    v41 = v31 + 48 * v39;
    v42 = *(v41 - 16);
    v43 = *(v41 - 8);
    v44 = *v41;
    v100 = *(v41 + 8);
    v99 = *(v41 + 16);
    v101 = *(v41 + 24);

    v45 = v42;

    *(v40 + 32) = v45;
    *(v40 + 40) = v43;
    *(v40 + 48) = v44;
    *(v40 + 56) = v100;
    *(v40 + 64) = v99;
    v31 = v40;
    *(v40 + 72) = v101;
LABEL_16:
    *(v35 + 120) = v31;
    v55 = v102;
    v56 = *(v102 + 16);
    if (v56)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_275B7D0A0;
      v58 = v55 + 56 * v56;
      v59 = *(v58 - 8);
      v60 = *v58;
      v61 = *(v58 + 8);
      v62 = *(v58 + 16);
      v63 = *(v58 + 24);
      *(v57 + 32) = *(v58 - 24);
      *(v57 + 48) = v59;
      *(v57 + 56) = v60;
      *(v57 + 64) = v61;
      *(v57 + 72) = v62;
      *(v57 + 80) = v63;

      v55 = v57;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
    *(v35 + 112) = v55;
    *(v35 + 128) = &unk_2884A8308;
    sub_275B60A88(v16, v35 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet, MEMORY[0x277D7F888]);
    *(v35 + 72) = v103 & 1;
    v64 = v104;
    *(v35 + 64) = v104;
    type metadata accessor for ModelProvider();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v35 + 80) = v65;
    *(v35 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = 4320;

    ShadowModeEvaluator.runOnOpenLabelNotifications()();
    if (!v66)
    {
      ShadowModeEvaluator.runOnBuyLabelNotifications()();
      if (!v66)
      {
        v67 = v98;
        v68 = v97;
        if ((v103 & 1) == 0)
        {
          swift_beginAccess();
          if (*(*v68 + 16) || (swift_beginAccess(), *(*v67 + 16)))
          {
            ShadowModeEvaluator.publishMetrics()();
          }
        }

        v69 = v107;
        sub_275B7A41C();
        sub_275B7A28C();
        sub_275B7A40C();
        swift_beginAccess();
        v70 = *v68;
        swift_beginAccess();
        v71 = *v67;
        v72 = *(v70 + 16);
        v104 = *v67;
        if (v72)
        {
          v73 = *v69;
          v74 = v70 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
          v75 = *(v105 + 72);
          v105 = v70;

          do
          {
            v76 = v108;
            sub_275B60AF0(v74, v108, MEMORY[0x277D7F7C0]);
            sub_275B60964(&qword_280A33980, MEMORY[0x277D7F7C0], MEMORY[0x277D7F7B8]);
            v77 = sub_275B7965C();
            v79 = v78;
            sub_275B60A28(v76, MEMORY[0x277D7F7C0]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_275B11064(0, *(v73 + 2) + 1, 1, v73);
            }

            v81 = *(v73 + 2);
            v80 = *(v73 + 3);
            if (v81 >= v80 >> 1)
            {
              v73 = sub_275B11064((v80 > 1), v81 + 1, 1, v73);
            }

            *(v73 + 2) = v81 + 1;
            v82 = &v73[16 * v81];
            *(v82 + 4) = v77;
            *(v82 + 5) = v79;
            v74 += v75;
            --v72;
          }

          while (v72);

          v69 = v107;
          *v107 = v73;
          v71 = v104;
        }

        else
        {
        }

        v83 = *(v71 + 16);
        if (v83)
        {
          v84 = v69[1];
          v85 = v71 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
          v86 = *(v106 + 72);
          do
          {
            v87 = v110;
            sub_275B60AF0(v85, v110, MEMORY[0x277D7F7A0]);
            sub_275B60964(&qword_280A33988, MEMORY[0x277D7F7A0], MEMORY[0x277D7F798]);
            v88 = sub_275B7965C();
            v90 = v89;
            sub_275B60A28(v87, MEMORY[0x277D7F7A0]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v84 = sub_275B11064(0, *(v84 + 2) + 1, 1, v84);
            }

            v92 = *(v84 + 2);
            v91 = *(v84 + 3);
            if (v92 >= v91 >> 1)
            {
              v84 = sub_275B11064((v91 > 1), v92 + 1, 1, v84);
            }

            *(v84 + 2) = v92 + 1;
            v93 = &v84[16 * v92];
            *(v93 + 4) = v88;
            *(v93 + 5) = v90;
            v85 += v86;
            --v83;
          }

          while (v83);

          v94 = v107;
          v107[1] = v84;
        }

        else
        {

          v94 = v69;
        }

        v95 = sub_275B797EC();
        MEMORY[0x28223BE20](v95, v96);
        *(&v97 - 2) = v94;
        sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        sub_275B7968C();
        swift_setDeallocating();
        ShadowModeEvaluator.deinit();
        swift_deallocClassInstance();
        v53 = MEMORY[0x277D7F780];
        v54 = v94;
        return sub_275B60A28(v54, v53);
      }
    }

    swift_setDeallocating();
    ShadowModeEvaluator.deinit();
    swift_deallocClassInstance();
    v114 = 0;
    v115 = 0xE000000000000000;
    v113 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    sub_275B79C4C();
    sub_275B79C3C();
    v26 = sub_275B797EC();
    MEMORY[0x28223BE20](v26, v27);
    *(&v97 - 2) = v20;
    sub_275B60964(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    sub_275B7968C();

LABEL_13:
    v53 = MEMORY[0x277D7F5F0];
    v54 = v20;
    return sub_275B60A28(v54, v53);
  }

  __break(1u);
  return result;
}

uint64_t sub_275B5EFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v13 - v10;
  sub_275B60AF0(a2, &v13 - v10, a4);
  return a5(v11);
}

uint64_t sub_275B5F07C(uint64_t a1)
{
  if (sub_275B7A28C())
  {
    v2 = type metadata accessor for MockBiomeManager();
    v3 = &protocol witness table for MockBiomeManager;
  }

  else
  {
    v2 = type metadata accessor for RealBiomeManager();
    v3 = &protocol witness table for RealBiomeManager;
  }

  v42 = v2;
  v43 = v3;
  *&v41 = swift_allocObject();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_275B075DC(&v41, v1 + 48);
  swift_endAccess();
  v4 = type metadata accessor for DataCollectorUtils();
  sub_275B19CD4(v1 + 48, &v41);
  v5 = sub_275B7A29C();
  v6 = sub_275B7A27C();
  v7 = sub_275B7A26C();
  v8 = v42;
  v9 = v43;
  v10 = __swift_project_boxed_opaque_existential_1(&v41, v42);
  v11 = sub_275B202AC(v10, v5, v6, v7, v4, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  *(v1 + 32) = v11;

  v38 = v1;
  sub_275B19CD4(v1 + 48, &v41);
  sub_275B7A29C();
  sub_275B7A27C();
  sub_275B7A26C();
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v12 = sub_275B7ABCC();
  sub_275B7AB2C();
  v13 = sub_275B7ABCC();
  v14 = v42;
  v15 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, v42);
  v16 = (v15[19])(v13, v12, v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16;
    sub_275B7AB2C();
    v19 = 0;
    v20 = v18 + 56;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v40 = v21;
      v22 = *(v20 - 24);
      v23 = *(v20 - 16);
      if (v19 < v17 - 1)
      {
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v24 = v43;
      __swift_project_boxed_opaque_existential_1(&v41, v42);
      v25 = v24[20];
      v39 = v22;
      v26 = v23;
      v27 = v25();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v21 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_275B11B44(0, *(v40 + 2) + 1, 1, v40);
      }

      v35 = *(v21 + 2);
      v34 = *(v21 + 3);
      if (v35 >= v34 >> 1)
      {
        v21 = sub_275B11B44((v34 > 1), v35 + 1, 1, v21);
      }

      ++v19;
      *(v21 + 2) = v35 + 1;
      v36 = &v21[48 * v35];
      *(v36 + 4) = v39;
      *(v36 + 5) = v26;
      v36[48] = v27 & 1;
      *(v36 + 7) = v29;
      v36[64] = v31 & 1;
      *(v36 + 9) = v33;
      v20 += 16;
    }

    while (v17 != v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v41);
  *(v38 + 40) = v21;
}

void *ShadowEvaluationAPI.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  return v0;
}

uint64_t ShadowEvaluationAPI.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_275B5F4C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  v2 = *v0;
  v3 = sub_275B7B06C();
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

uint64_t sub_275B5F61C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_275B5FCB8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_275B5F748(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_275B7B26C();

    sub_275B7AD7C();
    v23 = sub_275B7B2AC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_275B7B1BC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_275B6002C(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_275B7B26C();

            sub_275B7AD7C();
            v42 = sub_275B7B2AC();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_275B7B1BC() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_275B5FDF4(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x277C89DA0](v51, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_275B0C684(v13);
    return v5;
  }

  result = MEMORY[0x277C89DA0](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_275B5FCB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_275B7B26C();
  sub_275B7AD7C();
  v6 = sub_275B7B2AC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_275B7B1BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_275B5F4C0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_275B60250(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_275B5FDF4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_275B6002C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_275B7B26C();

        sub_275B7AD7C();
        v19 = sub_275B7B2AC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_275B7B1BC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_275B6002C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  result = sub_275B7B08C();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_275B7B26C();

    sub_275B7AD7C();
    result = sub_275B7B2AC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_275B60250(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_275B7B02C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_275B7B26C();

        sub_275B7AD7C();
        v10 = sub_275B7B2AC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_275B6046C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel(0) - 8;
  MEMORY[0x28223BE20](v4, v5);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v11 = (&v27 - v10);
  v31 = *(a2 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = 0;
  v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = a2 + v28;
  v13 = *(v9 + 72);
  v14 = a1 + 56;
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_275B60AF0(v30 + v13 * v12, v11, type metadata accessor for ShadowModel);
    if (*(a1 + 16) && (v16 = *v11, v17 = v11[1], sub_275B7B26C(), sub_275B7AD7C(), v18 = sub_275B7B2AC(), v19 = -1 << *(a1 + 32), v20 = v18 & ~v19, ((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = (*(a1 + 48) + 16 * v20);
        v23 = *v22 == v16 && v22[1] == v17;
        if (v23 || (sub_275B7B1BC() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_275B60AF0(v11, v29, type metadata accessor for ShadowModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_275B115E4(0, v15[2] + 1, 1, v15);
      }

      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        v15 = sub_275B115E4((v24 > 1), v25 + 1, 1, v15);
      }

      sub_275B60A28(v11, type metadata accessor for ShadowModel);
      v15[2] = v25 + 1;
      sub_275B60A88(v29, v15 + v28 + v25 * v13, type metadata accessor for ShadowModel);
    }

    else
    {
LABEL_3:
      sub_275B60A28(v11, type metadata accessor for ShadowModel);
    }

    ++v12;
  }

  while (v12 != v31);
  return v15;
}

uint64_t sub_275B6074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel(0) - 8;
  MEMORY[0x28223BE20](v4, v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_275B60AF0(v10, v8, type metadata accessor for ShadowModel);
      v14 = *v8;
      v13 = v8[1];

      sub_275B60A28(v8, type metadata accessor for ShadowModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_275B11064(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_275B11064((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v13;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v18 = sub_275B31714(v12);

  if (*(v18 + 16) <= *(a1 + 16) >> 3)
  {
    v22 = a1;

    sub_275B5F61C(v18);

    return v22;
  }

  else
  {

    v19 = sub_275B5F748(v18, a1);

    return v19;
  }
}

uint64_t sub_275B60964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275B60A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B60A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B60AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShadowModeEvaluator.__allocating_init(biomeManager:numOffsets:shadowModeModels:notificationsFromNotifStream:notificationsFromSubStream:trialSet:percentiles:minsUntilOpen:skipPublishMetrics:withMobileAssetLocalManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 88) = MEMORY[0x277D84F90];
  *(v15 + 96) = v16;
  *(v15 + 104) = v16;
  *(v15 + 112) = v16;
  *(v15 + 120) = v16;
  *(v15 + 128) = v16;
  v37 = a1;
  sub_275B19CD4(a1, v15 + 16);
  *(v15 + 56) = a2;
  *(v15 + 88) = a3;
  v17 = *(a5 + 16);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_275B7D0A0;
    v19 = (a5 + 48 * v17);
    v20 = *(v19 - 1);
    v21 = *v19;
    v22 = *(v19 + 1);
    v23 = v19[16];
    v24 = *(v19 + 3);
    v25 = *(v19 - 2);

    *(v18 + 32) = v25;
    *(v18 + 40) = v20;
    *(v18 + 48) = v21;
    *(v18 + 56) = v22;
    *(v18 + 64) = v23;
    a5 = v18;
    *(v18 + 72) = v24;
  }

  *(v15 + 120) = a5;
  v26 = *(a4 + 16);
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v27 = swift_allocObject();
    v28 = (a4 + 56 * v26);
    v29 = *(v28 - 1);
    v30 = *v28;
    v31 = v28[1];
    v32 = *(v28 + 16);
    v33 = v28[3];
    v34 = *(v28 - 3);
    *(v27 + 16) = xmmword_275B7D0A0;
    *(v27 + 32) = v34;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    *(v27 + 64) = v31;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;

    a4 = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  *(v15 + 112) = a4;
  *(v15 + 128) = a7;
  sub_275B60FD8(a6, v15 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
  *(v15 + 72) = a9 & 1;
  *(v15 + 64) = a10;
  type metadata accessor for ModelProvider();
  v35 = swift_allocObject();
  *(v35 + 16) = a10;
  *(v15 + 80) = v35;
  *(v15 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = a8;

  return v15;
}

uint64_t ShadowModeEvaluator.init(biomeManager:numOffsets:shadowModeModels:notificationsFromNotifStream:notificationsFromSubStream:trialSet:percentiles:minsUntilOpen:skipPublishMetrics:withMobileAssetLocalManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v15 = MEMORY[0x277D84F90];
  *(v10 + 88) = MEMORY[0x277D84F90];
  *(v10 + 96) = v15;
  *(v10 + 104) = v15;
  *(v10 + 112) = v15;
  *(v10 + 120) = v15;
  *(v10 + 128) = v15;
  sub_275B19CD4(a1, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 88) = a3;
  v16 = *(a5 + 16);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_275B7D0A0;
    v18 = (a5 + 48 * v16);
    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = *(v18 + 1);
    v22 = v18[16];
    v23 = *(v18 + 3);
    v24 = *(v18 - 2);

    *(v17 + 32) = v24;
    *(v17 + 40) = v19;
    *(v17 + 48) = v20;
    *(v17 + 56) = v21;
    *(v17 + 64) = v22;
    a5 = v17;
    *(v17 + 72) = v23;
  }

  *(v10 + 120) = a5;

  v25 = *(a4 + 16);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v26 = swift_allocObject();
    v27 = (a4 + 56 * v25);
    v28 = *(v27 - 1);
    v29 = *v27;
    v30 = v27[1];
    v31 = *(v27 + 16);
    v32 = v27[3];
    v33 = *(v27 - 3);
    *(v26 + 16) = xmmword_275B7D0A0;
    *(v26 + 32) = v33;
    *(v26 + 48) = v28;
    *(v26 + 56) = v29;
    *(v26 + 64) = v30;
    *(v26 + 72) = v31;
    *(v26 + 80) = v32;

    a4 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v10 + 112) = a4;

  *(v10 + 128) = a7;

  sub_275B60FD8(a6, v10 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
  *(v10 + 72) = a9 & 1;
  *(v10 + 64) = a10;
  type metadata accessor for ModelProvider();
  v34 = swift_allocObject();
  *(v34 + 16) = a10;
  *(v10 + 80) = v34;
  *(v10 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = a8;

  return v10;
}

uint64_t sub_275B60FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7AA6C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.run()()
{
  ShadowModeEvaluator.runOnOpenLabelNotifications()();
  if (!v1)
  {
    ShadowModeEvaluator.runOnBuyLabelNotifications()();
    if (!v2 && (*(v0 + 72) & 1) == 0)
    {
      swift_beginAccess();
      if (*(*(v0 + 96) + 16) || (swift_beginAccess(), *(*(v0 + 104) + 16)))
      {
        ShadowModeEvaluator.publishMetrics()();
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.runOnBuyLabelNotifications()()
{
  v2 = sub_275B7AA6C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[15];
  v28 = *(v5 + 16);
  if (v28)
  {
    v34 = v1;
    v26 = sub_275B7AB2C();
    v25 = 0x8000000275B82DD0;
    v21 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen;
    v24 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet;
    v23 = v0[10];
    v22 = v0[7];

    v6 = 0;
    v7 = v5 + 72;
    v27 = v5;
    while (v6 < *(v5 + 16))
    {
      v8 = *(v7 - 32);
      v33 = *(v7 - 40);
      v31 = v6;
      v32 = v8;
      if (*(v7 - 8) != 1 || (v9 = 1.0, *(v0 + v21) < sub_275B7AB1C()))
      {
        v9 = 0.0;
      }

      v30 = v7;
      sub_275B19CD4((v0 + 2), v35);
      v10 = v0[11];
      v11 = v29;
      sub_275B6260C(v0 + v24, v29, MEMORY[0x277D7F888]);
      v12 = v0[16];
      type metadata accessor for MLEvaluationProvider(0);
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D84F90];
      *(v13 + 16) = MEMORY[0x277D84F90];
      *(v13 + 24) = v14;
      *(v13 + 32) = v14;
      *(v13 + 40) = v14;
      *(v13 + 48) = v14;
      *(v13 + 56) = v14;
      *(v13 + 64) = v14;
      v15 = v26;
      *(v13 + 72) = v14;
      *(v13 + 80) = v15;
      sub_275B075DC(v35, v13 + 88);
      *(v13 + 56) = v10;
      v16 = v32;
      *(v13 + 128) = v22;
      *(v13 + 136) = v16;
      *(v13 + 144) = v9;
      *(v13 + 152) = v23;
      *(v13 + 160) = 0xD000000000000012;
      *(v13 + 168) = v25;
      sub_275B60FD8(v11, v13 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet);
      swift_beginAccess();
      *(v13 + 32) = v12;
      v17 = v33;

      MLEvaluationProvider.calculateMetrics()();
      if (v18)
      {

        swift_setDeallocating();
        MLEvaluationProvider.deinit();
        swift_deallocClassInstance();
        return;
      }

      v34 = 0;
      v6 = v31 + 1;
      swift_beginAccess();
      swift_beginAccess();

      sub_275B30840(v19);
      swift_endAccess();
      swift_beginAccess();
      swift_beginAccess();

      sub_275B3086C(v20);
      swift_endAccess();

      swift_setDeallocating();

      __swift_destroy_boxed_opaque_existential_1((v13 + 88));

      sub_275B62674(v13 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
      swift_deallocClassInstance();
      v7 = v30 + 48;
      v5 = v27;
      if (v28 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowModeEvaluator.runOnOpenLabelNotifications()()
{
  v2 = sub_275B7AA6C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v27 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[14];
  v26 = *(v5 + 16);
  if (v26)
  {
    v32 = v1;
    v24 = sub_275B7AB2C();
    v23 = 0x8000000275B85C30;
    v19 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen;
    v22 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet;
    v21 = v0[10];
    v20 = v0[7];

    v6 = 0;
    v7 = v5 + 80;
    v25 = v5;
    while (v6 < *(v5 + 16))
    {
      v29 = v6;
      v31 = *(v7 - 48);
      if (*(v7 - 8) != 1 || (v8 = 1.0, *(v0 + v19) < sub_275B7AB1C()))
      {
        v8 = 0.0;
      }

      v28 = v7;
      sub_275B19CD4((v0 + 2), v33);
      v9 = v0[11];
      v10 = v21;

      v11 = v27;
      sub_275B6260C(v0 + v22, v27, MEMORY[0x277D7F888]);
      v30 = v0[16];
      type metadata accessor for MLEvaluationProvider(0);
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D84F90];
      *(v12 + 16) = MEMORY[0x277D84F90];
      *(v12 + 24) = v13;
      *(v12 + 32) = v13;
      *(v12 + 40) = v13;
      *(v12 + 48) = v13;
      *(v12 + 56) = v13;
      *(v12 + 64) = v13;
      v14 = v24;
      *(v12 + 72) = v13;
      *(v12 + 80) = v14;
      sub_275B075DC(v33, v12 + 88);
      *(v12 + 56) = v9;
      v15 = v31;
      *(v12 + 128) = v20;
      *(v12 + 136) = v15;
      *(v12 + 144) = v8;
      *(v12 + 152) = v10;
      *(v12 + 160) = 0xD000000000000014;
      *(v12 + 168) = v23;
      sub_275B60FD8(v11, v12 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet);
      swift_beginAccess();
      *(v12 + 32) = v30;

      MLEvaluationProvider.calculateMetrics()();
      if (v16)
      {

        swift_setDeallocating();
        MLEvaluationProvider.deinit();
        swift_deallocClassInstance();
        return;
      }

      v32 = 0;
      v6 = v29 + 1;
      swift_beginAccess();
      swift_beginAccess();

      sub_275B30840(v17);
      swift_endAccess();
      swift_beginAccess();
      swift_beginAccess();

      sub_275B3086C(v18);
      swift_endAccess();

      swift_setDeallocating();

      __swift_destroy_boxed_opaque_existential_1((v12 + 88));

      sub_275B62674(v12 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
      swift_deallocClassInstance();
      v7 = v28 + 56;
      v5 = v25;
      if (v26 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ShadowModeEvaluator.publishMetrics()()
{
  v1 = sub_275B7A54C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275B7AA6C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B7A6DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v0 + 96);
  v16 = *(v15 + 16);
  if (v16)
  {
    v28 = v2;
    v29 = v0;
    v33 = "eatures' is present.";
    v32 = "normalizedCrossEntropy";
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v31 = "der";
    v30 = *(v11 + 72);
    v27[1] = v15;

    do
    {
      sub_275B6260C(v17, v14, MEMORY[0x277D7F7C0]);
      if (qword_28140F5C0 != -1)
      {
        swift_once();
      }

      sub_275B19CD4(qword_28140F5C8 + 16, v37);
      type metadata accessor for MLModelPerformanceEvent();
      swift_allocObject();
      sub_275B19CD4(v37, v36);
      if (qword_28140F6F8 != -1)
      {
        swift_once();
      }

      v34 = qword_28140F700;
      v35 = unk_28140F708;

      MEMORY[0x277C89240](46, 0xE100000000000000);
      MEMORY[0x277C89240](0xD000000000000012, v31 | 0x8000000000000000);
      sub_275B19CD4(v36, &v34);
      v18 = sub_275B79B9C();
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      sub_275B7A6AC();

      sub_275B79B4C();

      sub_275B7A5DC();
      sub_275B79B6C();

      sub_275B7A65C();
      sub_275B79B6C();

      sub_275B7A5BC();
      sub_275B79B6C();

      sub_275B7A5FC();
      sub_275B79B5C();

      sub_275B7A61C();
      sub_275B79B4C();

      sub_275B7A63C();
      sub_275B79B4C();

      sub_275B7A67C();
      sub_275B79B7C();

      sub_275B7A68C();
      sub_275B7AA4C();
      v19 = MEMORY[0x277D7F888];
      sub_275B62674(v9, MEMORY[0x277D7F888]);
      sub_275B79B4C();

      sub_275B7A68C();
      sub_275B7AA0C();
      sub_275B62674(v9, v19);
      sub_275B79B4C();

      sub_275B7A68C();
      sub_275B62674(v14, MEMORY[0x277D7F7C0]);
      sub_275B7AA2C();
      sub_275B62674(v9, v19);
      sub_275B79B4C();

      (*(*v18 + 200))(v20);

      v17 += v30;
      --v16;
    }

    while (v16);

    v0 = v29;
    v2 = v28;
  }

  swift_beginAccess();
  v21 = *(v0 + 104);
  v22 = *(v21 + 16);
  if (v22)
  {
    v33 = "yModel";
    v32 = "Agent remote proxy error: ";
    v23 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v31 = "mlModelPerformance";
    v30 = *(v2 + 72);
    v28 = v21;

    v29 = 0xD000000000000011;
    do
    {
      sub_275B6260C(v23, v5, MEMORY[0x277D7F7A0]);
      if (qword_28140F5C0 != -1)
      {
        swift_once();
      }

      sub_275B19CD4(qword_28140F5C8 + 16, v37);
      type metadata accessor for MLDelayPerformanceEvent();
      swift_allocObject();
      sub_275B19CD4(v37, v36);
      if (qword_28140F6F8 != -1)
      {
        swift_once();
      }

      v34 = qword_28140F700;
      v35 = unk_28140F708;

      MEMORY[0x277C89240](46, 0xE100000000000000);
      MEMORY[0x277C89240](0xD000000000000012, v31 | 0x8000000000000000);
      sub_275B19CD4(v36, &v34);
      v24 = sub_275B79B9C();
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      sub_275B7A45C();
      sub_275B7AB2C();
      sub_275B7AB1C();

      sub_275B79B7C();

      sub_275B7A51C();
      sub_275B79B4C();

      sub_275B7A4DC();
      sub_275B79B4C();

      sub_275B7A4BC();
      sub_275B79B7C();

      sub_275B7A47C();
      sub_275B79B5C();

      sub_275B7A49C();
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B7AA4C();
      v25 = MEMORY[0x277D7F888];
      sub_275B62674(v9, MEMORY[0x277D7F888]);
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B7AA0C();
      sub_275B62674(v9, v25);
      sub_275B79B4C();

      sub_275B7A4FC();
      sub_275B62674(v5, MEMORY[0x277D7F7A0]);
      sub_275B7AA2C();
      sub_275B62674(v9, v25);
      sub_275B79B4C();

      (*(*v24 + 200))(v26);

      v23 += v30;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_275B6260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B62674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *ShadowModeEvaluator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_275B62674(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet, MEMORY[0x277D7F888]);
  return v0;
}

uint64_t ShadowModeEvaluator.__deallocating_deinit()
{
  ShadowModeEvaluator.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShadowModeEvaluator(uint64_t a1)
{
  result = qword_280A339A8;
  if (!qword_280A339A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275B62874(uint64_t a1)
{
  result = sub_275B7AA6C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t ShadowModel.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShadowModel.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShadowModel(0) + 20);
  v4 = sub_275B794EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShadowModel(uint64_t a1)
{
  result = qword_28140F248;
  if (!qword_28140F248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShadowModel.init(name:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ShadowModel(0) + 20);
  v7 = sub_275B794EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_275B62AF0(uint64_t a1)
{
  result = sub_275B794EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *ShadowModeModelProvider.__allocating_init(kShadowModeModelPrefix:withMobileAssetLocalManager:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t sub_275B62BE8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E150);
  __swift_project_value_buffer(v0, qword_28140E150);
  type metadata accessor for ShadowModeModelProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339B8, &qword_275B7EC48);
  return sub_275B7A97C();
}

void *ShadowModeModelProvider.init(kShadowModeModelPrefix:withMobileAssetLocalManager:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return v4;
}

void *ShadowModeModelProvider.getModelList(modelType:)()
{
  v1 = v0;
  v84 = *MEMORY[0x277D85DE8];
  v66 = type metadata accessor for ShadowModel(0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v2);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_275B7945C();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v6);
  v63 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B794EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v69 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v54 - v14;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = v54 - v19;
  (*(**(v0 + 16) + 96))(&v78, v18);
  if (v79)
  {
    v73 = v5;
    v62 = v4;
    sub_275B075DC(&v78, &v80);
    v21 = v82;
    v22 = v83;
    v70 = v8;
    __swift_project_boxed_opaque_existential_1(&v80, v82);
    v23 = v70;
    (*(v22 + 16))(v21, v22);
    sub_275B794AC();
    v68 = v9;
    v24 = v9 + 8;
    v25 = *(v9 + 8);
    v25(v15, v23);
    v26 = *(v0 + 24);
    sub_275B794CC();
    v27 = sub_275B7ACDC();

    *&v78 = 0;
    v28 = [v26 contentsOfDirectoryAtPath:v27 error:&v78];

    v29 = v78;
    if (!v28)
    {
      v50 = v78;
      sub_275B7944C();

      swift_willThrow();
      v25(v20, v23);
      __swift_destroy_boxed_opaque_existential_1(&v80);
      return v73;
    }

    v30 = sub_275B7AE7C();
    v31 = v29;

    if (qword_28140E148 != -1)
    {
      swift_once();
    }

    v32 = sub_275B7A96C();
    __swift_project_value_buffer(v32, qword_28140E150);
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v78 = 0x20646E756F46;
    *(&v78 + 1) = 0xE600000000000000;
    v33 = MEMORY[0x277C89330](v30, MEMORY[0x277D837D0]);
    MEMORY[0x277C89240](v33);

    MEMORY[0x277C89240](0x662073656C696620, 0xEC000000206D6F72);
    v34 = sub_275B794CC();
    MEMORY[0x277C89240](v34);

    sub_275B7A91C();

    v35 = *(v30 + 16);
    v54[1] = v30;
    if (v35)
    {
      v36 = *(*v1 + 120);
      v71 = *v1 + 120;
      v72 = v36;
      v58 = *MEMORY[0x277CC91D8];
      v57 = v73 + 13;
      v56 = (v73 + 1);
      v55 = (v68 + 16);
      v37 = (v30 + 40);
      v73 = MEMORY[0x277D84F90];
      v61 = v1;
      v60 = v24;
      v59 = v25;
      do
      {
        v39 = *(v37 - 1);
        v38 = *v37;

        if (v72(v39, v38) & 1) != 0 && ((*(*v1 + 128))(v39, v38))
        {
          *&v78 = v39;
          *(&v78 + 1) = v38;
          v76 = 0x6C65646F6D6C6D2ELL;
          v77 = 0xE900000000000063;
          v74 = 0;
          v75 = 0xE000000000000000;
          sub_275B2AA24();
          v68 = sub_275B7AFFC();
          v67 = v40;
          *&v78 = v39;
          *(&v78 + 1) = v38;
          v41 = v63;
          v42 = v64;
          (*v57)(v63, v58, v64);
          v43 = v69;
          sub_275B794DC();
          (*v56)(v41, v42);

          v44 = v62;
          (*v55)(v62 + *(v66 + 20), v43, v70);
          v45 = v67;
          *v44 = v68;
          v44[1] = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_275B115E4(0, v73[2] + 1, 1, v73);
          }

          v47 = v73[2];
          v46 = v73[3];
          v1 = v61;
          if (v47 >= v46 >> 1)
          {
            v73 = sub_275B115E4((v46 > 1), v47 + 1, 1, v73);
          }

          v25 = v59;
          (v59)(v69);
          v48 = v73;
          v73[2] = v47 + 1;
          sub_275B63714(v44, v48 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v47);
        }

        else
        {
        }

        v37 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v25(v20, v70);
    __swift_destroy_boxed_opaque_existential_1(&v80);
  }

  else
  {
    sub_275B42888(&v78);
    if (qword_28140E148 != -1)
    {
      swift_once();
    }

    v49 = sub_275B7A96C();
    __swift_project_value_buffer(v49, qword_28140E150);
    sub_275B7A91C();
    v73 = MEMORY[0x277D84F90];
  }

  if (qword_28140E148 != -1)
  {
    swift_once();
  }

  v51 = sub_275B7A96C();
  __swift_project_value_buffer(v51, qword_28140E150);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_275B7B09C();

  v80 = 0xD000000000000017;
  v81 = 0x8000000275B85CE0;
  v52 = MEMORY[0x277C89330](v73, v66);
  MEMORY[0x277C89240](v52);

  MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B85D00);
  sub_275B7A91C();

  return v73;
}

Swift::Bool __swiftcall ShadowModeModelProvider.modelHasValidPrefix(_:)(Swift::String a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (!v3 || (sub_275B7ADFC() & 1) != 0)
  {
    return 1;
  }

  return sub_275B7ADFC();
}

uint64_t ShadowModeModelProvider.deinit()
{

  return v0;
}

uint64_t ShadowModeModelProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B63714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShadowModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModePipeline.kDefaultTrialSet.unsafeMutableAddressor()
{
  if (qword_280A32E18 != -1)
  {
    swift_once();
  }

  v0 = sub_275B7AA6C();

  return __swift_project_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
}

uint64_t sub_275B6380C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E798);
  __swift_project_value_buffer(v0, qword_28140E798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339C0, &qword_275B7ECB0);
  return sub_275B7A97C();
}

uint64_t sub_275B63898()
{
  v0 = sub_275B7AA6C();
  __swift_allocate_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
  __swift_project_value_buffer(v0, static ShadowModePipeline.kDefaultTrialSet);
  sub_275B641EC();
  return sub_275B7968C();
}

uint64_t sub_275B63920()
{
  sub_275B7AA5C();
  sub_275B7AA1C();
  return sub_275B7AA3C();
}

uint64_t static ShadowModePipeline.kDefaultTrialSet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280A32E18 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7AA6C();
  v3 = __swift_project_value_buffer(v2, static ShadowModePipeline.kDefaultTrialSet);
  return sub_275B63AB8(v3, a1, MEMORY[0x277D7F888]);
}

uint64_t ShadowModePipeline.getLastRun(_:)()
{
  if ((sub_275B799DC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7997C();
  return sub_275B7AB6C();
}

uint64_t ShadowModePipeline.updateLastRun(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_275B63AB8(a2, a3, MEMORY[0x277D7F5A8]);
  sub_275B7AB5C();
  return sub_275B7998C();
}

uint64_t sub_275B63AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B63B4C()
{
  if ((sub_275B799DC() & 1) == 0)
  {
    return 0;
  }

  sub_275B7997C();
  return sub_275B7AB6C();
}

uint64_t sub_275B63B90@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_275B63AB8(a2, a3, MEMORY[0x277D7F5A8]);
  sub_275B7AB5C();
  return sub_275B7998C();
}

void sub_275B63BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_275B7AA6C();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*a6 + 112))(v16);
  v58 = a7;
  v59 = v18;
  v57 = a5;
  if (*(v19 + 16))
  {
    v20 = v19;
    sub_275B19CD4(a1, v61);
    if (qword_280A32E18 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v14, static ShadowModePipeline.kDefaultTrialSet);
    sub_275B63AB8(v21, v59, MEMORY[0x277D7F888]);
    type metadata accessor for MobileAssetLocalManager();
    v22 = swift_allocObject();
    type metadata accessor for ShadowModeEvaluator(0);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D84F90];
    *(v23 + 88) = MEMORY[0x277D84F90];
    *(v23 + 96) = v24;
    v56 = v23 + 96;
    *(v23 + 104) = v24;
    v55 = v23 + 104;
    *(v23 + 112) = v24;
    *(v23 + 120) = v24;
    *(v23 + 128) = v24;
    sub_275B19CD4(v61, v23 + 16);
    *(v23 + 56) = a2;
    *(v23 + 88) = v20;
    v25 = a4;
    v26 = *(a4 + 16);
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_275B7D0A0;
      v28 = v25 + 48 * v26;
      v29 = *(v28 - 16);
      v30 = *(v28 - 8);
      v31 = *v28;
      v32 = *(v28 + 8);
      v33 = *(v28 + 16);
      v34 = *(v28 + 24);
      *(v27 + 32) = v29;
      *(v27 + 40) = v30;
      *(v27 + 48) = v31;
      *(v27 + 56) = v32;
      *(v27 + 64) = v33;
      *(v27 + 72) = v34;
      v35 = v29;
      v25 = v27;
    }

    else
    {
    }

    *(v23 + 120) = v25;
    v37 = *(a3 + 16);
    v38 = v59;
    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
      v39 = swift_allocObject();
      v40 = (a3 + 56 * v37);
      v41 = *(v40 - 1);
      v42 = *v40;
      v43 = v40[1];
      v44 = *(v40 + 16);
      v45 = v40[3];
      v46 = *(v40 - 3);
      *(v39 + 16) = xmmword_275B7D0A0;
      *(v39 + 32) = v46;
      *(v39 + 48) = v41;
      *(v39 + 56) = v42;
      *(v39 + 64) = v43;
      *(v39 + 72) = v44;
      *(v39 + 80) = v45;

      a3 = v39;
    }

    else
    {
    }

    v47 = v58;
    __swift_destroy_boxed_opaque_existential_1(v61);
    *(v23 + 112) = a3;
    *(v23 + 128) = &unk_2884A8308;
    sub_275B60FD8(v38, v23 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_trialSet);
    v48 = v57;
    *(v23 + 72) = v57 & 1;
    *(v23 + 64) = v22;
    type metadata accessor for ModelProvider();
    v49 = swift_allocObject();
    *(v49 + 16) = v22;
    *(v23 + 80) = v49;
    *(v23 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon19ShadowModeEvaluator_minsUntilOpen) = v47;

    ShadowModeEvaluator.runOnOpenLabelNotifications()();
    if (v50 || (ShadowModeEvaluator.runOnBuyLabelNotifications()(), v50))
    {
      swift_setDeallocating();
      ShadowModeEvaluator.deinit();
      swift_deallocClassInstance();
      if (qword_28140E790 != -1)
      {
        swift_once();
      }

      v51 = sub_275B7A96C();
      __swift_project_value_buffer(v51, qword_28140E798);
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B85DC0);
      v60 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      sub_275B7A95C();
    }

    else
    {
      if ((v48 & 1) == 0)
      {
        v52 = v56;
        swift_beginAccess();
        if (*(*v52 + 16) || (v53 = v55, swift_beginAccess(), *(*v53 + 16)))
        {
          ShadowModeEvaluator.publishMetrics()();
        }
      }

      swift_setDeallocating();
      ShadowModeEvaluator.deinit();
      swift_deallocClassInstance();
    }
  }

  else
  {

    if (qword_28140E790 != -1)
    {
      swift_once();
    }

    v36 = sub_275B7A96C();
    __swift_project_value_buffer(v36, qword_28140E798);
    sub_275B7A91C();
  }
}

uint64_t sub_275B64154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275B6419C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275B641EC()
{
  result = qword_280A339C8;
  if (!qword_280A339C8)
  {
    sub_275B7AA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A339C8);
  }

  return result;
}

void *SimpleTimeFeatureProvider.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_275B6428C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A339D0);
  __swift_project_value_buffer(v0, qword_280A339D0);
  type metadata accessor for SimpleTimeFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A339E8, &unk_275B7ECF0);
  return sub_275B7A97C();
}

void *SimpleTimeFeatureProvider.init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t SimpleTimeFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v20[-v5];
  if (a1 > 0x32u)
  {
    if (a1 == 51)
    {
      v18 = *(v1 + 32);
      type metadata accessor for Feature();
      v8 = swift_allocObject();
      *(v8 + 16) = 51;
      v15 = [objc_opt_self() featureValueWithInt64_];
LABEL_13:
      v11 = v15;
      v12 = 1;
      goto LABEL_14;
    }

    if (a1 == 53)
    {
      sub_275B7ABCC();
      v12 = 1;
      v13 = sub_275B7AB1C();
      type metadata accessor for Feature();
      v8 = swift_allocObject();
      *(v8 + 16) = 53;
      v11 = [objc_opt_self() featureValueWithInt64_];
      goto LABEL_14;
    }

LABEL_8:
    if (qword_280A32E20 != -1)
    {
      swift_once();
    }

    v14 = sub_275B7A96C();
    __swift_project_value_buffer(v14, qword_280A339D0);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    v20[15] = a1;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000031, 0x8000000275B85E20);
    sub_275B7A95C();

    type metadata accessor for Feature();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v15 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_13;
  }

  if (!a1)
  {
    v16 = sub_275B7961C();
    v12 = 1;
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = sub_275B7AC6C();
    sub_275B0A398(v6);
    type metadata accessor for Feature();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v11 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v7 = sub_275B7961C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_275B7AC5C();
  sub_275B0A398(v6);
  type metadata accessor for Feature();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = sub_275B7ACDC();

  v10 = [objc_opt_self() featureValueWithString_];

  v11 = v10;
  v12 = 3;
LABEL_14:
  *(v8 + 24) = v11;
  *(v8 + 32) = v12;
  return v8;
}

Swift::Int64 __swiftcall SimpleTimeFeatureProvider.getSecondsSincePush()()
{
  sub_275B7ABCC();

  return sub_275B7AB1C();
}

uint64_t sub_275B64778()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A339F0);
  __swift_project_value_buffer(v0, qword_280A339F0);
  type metadata accessor for SnapshotFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A08, &qword_275B7ED18);
  return sub_275B7A97C();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23SnapshotFeatureProviderC03getF6ByNameyAA0F0CAA0fJ0OFZ_0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v11 = [objc_opt_self() processInfo];
        [v11 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 5;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      case 6u:
        v20 = [objc_opt_self() processInfo];
        [v20 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 6;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      case 7u:
        v6 = [objc_opt_self() processInfo];
        [v6 operatingSystemVersion];

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = 7;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
      default:
LABEL_15:
        if (qword_280A32E28 != -1)
        {
          swift_once();
        }

        v13 = sub_275B7A96C();
        __swift_project_value_buffer(v13, qword_280A339F0);
        sub_275B7B09C();
        MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
        sub_275B7B0EC();
        MEMORY[0x277C89240](0xD00000000000002FLL, 0x8000000275B85F10);
        sub_275B7A95C();

        type metadata accessor for Feature();
        v1 = swift_allocObject();
        *(v1 + 16) = a1;
        v7 = [objc_opt_self() featureValueWithInt64_];
        break;
    }

LABEL_24:
    v4 = v7;
    v5 = 1;
    goto LABEL_25;
  }

  if (a1 == 2)
  {
    v8 = sub_275B34900();
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    type metadata accessor for Feature();
    v1 = swift_allocObject();
    *(v1 + 16) = 2;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_24;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC18getDeviceModelNameSSyFZ_0();
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 4;
      v2 = sub_275B7ACDC();

      v3 = [objc_opt_self() featureValueWithString_];

      v4 = v3;
      v5 = 3;
LABEL_25:
      *(v1 + 24) = v4;
      *(v1 + 32) = v5;
      return v1;
    }

    goto LABEL_15;
  }

  v14 = sub_275B34900();
  if (v15 & 1) != 0 || (v16 = v14, result = sub_275B34920(), (v18))
  {
    v19 = -1;
LABEL_23:
    type metadata accessor for Feature();
    v1 = swift_allocObject();
    *(v1 + 16) = 3;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_24;
  }

  v19 = v16 - result;
  if (!__OFSUB__(v16, result))
  {
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_275B64C88()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F368);
  __swift_project_value_buffer(v0, qword_28140F368);
  type metadata accessor for SubscriptionDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A10, &unk_275B7ED70);
  return sub_275B7A97C();
}

void *SubscriptionDaemon.__allocating_init(batteryStateProvider:)(void *a1)
{
  v2 = sub_275B79CFC();
  v4 = *v2;
  v3 = v2[1];
  type metadata accessor for DaemonStateManager();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = sub_275B7AB2C();
  v8 = sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v8;
  type metadata accessor for MobileAssetLocalManager();
  v10 = swift_allocObject();
  v11 = objc_allocWithZone(MEMORY[0x277D289C0]);
  swift_bridgeObjectRetain_n();
  v12 = [v11 init];
  v13 = type metadata accessor for RealAssetInterface();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  type metadata accessor for MobileAssetDownloadManager();
  v15 = swift_allocObject();
  *(v15 + 64) = v13;
  *(v15 + 72) = &protocol witness table for RealAssetInterface;
  *(v15 + 80) = 0;
  *(v15 + 16) = v5;
  *(v15 + 24) = v9;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  sub_275B19CD4(a1, v18);
  type metadata accessor for SubscriptionDaemon();
  swift_allocObject();
  v16 = sub_275B65C34(v15, v18, 300.0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

void *SubscriptionDaemon.__allocating_init(maxInativeSecs:mobileAssetDownloadManager:batteryStateProvider:)(uint64_t a1, void *a2, double a3)
{
  swift_allocObject();
  v6 = sub_275B65C34(a1, a2, a3);

  return v6;
}

void *SubscriptionDaemon.init(maxInativeSecs:mobileAssetDownloadManager:batteryStateProvider:)(uint64_t a1, void *a2, double a3)
{
  v3 = sub_275B65C34(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall SubscriptionDaemon.run()()
{
  if (qword_28140F360 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140F368);
  sub_275B7B09C();

  v15 = 0xD00000000000001CLL;
  v16 = 0x8000000275B812E0;
  v2 = [objc_opt_self() isInternalBuild];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x277C89240](v4, v5);

  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  sub_275B7A91C();

  sub_275B7A9DC();

  sub_275B7A9DC();

  v6 = sub_275B7A91C();
  (*(**(v0 + 24) + 120))(v6);
  v7 = *(v0 + 40);
  if (*(v7 + 80) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28140DDF0);
    sub_275B7A91C();
    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)(0, 2005);
  }

  if (*(v7 + 81) == 1)
  {
    if (qword_28140DDE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_28140DDF0);
    sub_275B7A91C();
    MobileAssetDownloadManager.reportErrorAndSetRetry(_:errorCode:)(1, 2006);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_275B7B09C();
  v8 = MEMORY[0x277C89240](0xD00000000000001CLL, 0x8000000275B86000);
  v9 = *(**(v0 + 16) + 96);
  v14[0] = v9(v8);
  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  sub_275B7A91C();

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, &v15);
  type metadata accessor for DaemonExitEvent();
  swift_allocObject();
  sub_275B19CD4(&v15, v14);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v13[0] = qword_28140F700;
  v13[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x78456E6F6D656164, 0xEA00000000007469);
  sub_275B19CD4(v14, v13);
  v10 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v15);
  v9(v11);
  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v10 + 200))(v12);
}

uint64_t sub_275B654F8()
{
  v1 = sub_275B79ABC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  if (((*(v6 + 8))(v5, v6) & 1) == 0)
  {
    if (qword_28140F360 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v55[4] = &type metadata for PFLDataCollectionPipeline;
  v55[5] = &protocol witness table for PFLDataCollectionPipeline;
  v7 = sub_275B79CFC();
  v8 = *v7;
  v9 = v7[1];
  type metadata accessor for DaemonStateManager();
  v10 = 32;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v55[0] = v11;
  v56[4] = &type metadata for PETDataCollectionPipeline;
  v56[5] = &protocol witness table for PETDataCollectionPipeline;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  v56[0] = v12;
  type metadata accessor for MobileAssetLocalManager();
  v47 = swift_allocObject();
  v13 = swift_allocObject();
  v14 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v15 = [v14 defaultManager];
  type metadata accessor for ShadowModeModelProvider();
  v16 = swift_allocObject();
  v16[4] = 0x776F64616873;
  v16[5] = 0xE600000000000000;
  v16[2] = v13;
  v16[3] = v15;
  v57[4] = &type metadata for ShadowModePipeline;
  v57[5] = &protocol witness table for ShadowModePipeline;
  v17 = swift_allocObject();
  v57[1] = v17;
  *(v17 + 16) = v47;
  *(v17 + 24) = 0;
  *(v17 + 32) = v16;
  *(v17 + 40) = 4320;
  v19 = *v7;
  v18 = v7[1];
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v57[0] = v20;

  v21 = MEMORY[0x277D84F90];
  do
  {
    sub_275B660C8(&v54[v10], v51);
    sub_275B1E4C0(v4);
    v22 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v23 = _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV02iseF6Needed8pipeline5state3nowSbAA0eF8Pipeline_p_01iabC4Core0D5StateVAI9TimestampVtFZ_0(v51 + 1, v4, v22);
    sub_275B09600(v4);
    if (v23)
    {
      v48 = v51[0];
      v49 = v51[1];
      v50 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_275B0E614(0, *(v21 + 16) + 1, 1);
        v21 = v53;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_275B0E614((v25 > 1), v26 + 1, 1);
        v21 = v53;
      }

      *(v21 + 16) = v26 + 1;
      v27 = (v21 + 48 * v26);
      v28 = v48;
      v29 = v50;
      v27[3] = v49;
      v27[4] = v29;
      v27[2] = v28;
    }

    else
    {
      sub_275B66124(v51);
    }

    v10 += 48;
  }

  while (v10 != 176);
  v30 = *(v21 + 16);

  if (v30)
  {
    v31 = type metadata accessor for RealBiomeManager();
    v47 = v31;
    v32 = swift_allocObject();
    v33 = sub_275B66178(10, 3, 3);
    v34 = sub_275B665FC(10, 3, 3);
    sub_275B660C8(v55, v51);
    *(&v49 + 1) = v31;
    *&v50 = &protocol witness table for RealBiomeManager;
    *&v48 = v32;
    v35 = v52;
    __swift_project_boxed_opaque_existential_1(v51 + 1, v52);
    v36 = *(*(&v35 + 1) + 40);

    v46 = v33;
    v37 = v36(&v48, 23, v33, v34, v35, *(&v35 + 1));
    sub_275B1E92C(v37);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    sub_275B66124(v51);
    sub_275B660C8(v56, v51);
    *(&v49 + 1) = v47;
    *&v50 = &protocol witness table for RealBiomeManager;
    *&v48 = v32;
    v38 = v52;
    __swift_project_boxed_opaque_existential_1(v51 + 1, v52);
    v39 = *(*(&v38 + 1) + 40);
    swift_retain_n();
    v40 = v39(&v48, 23, v33, v34, v38, *(&v38 + 1));
    sub_275B1E92C(v40);

    __swift_destroy_boxed_opaque_existential_1(&v48);
    sub_275B66124(v51);
    sub_275B660C8(v57, v51);
    swift_arrayDestroy();
    *(&v49 + 1) = v47;
    *&v50 = &protocol witness table for RealBiomeManager;
    *&v48 = v32;
    v41 = v52;
    __swift_project_boxed_opaque_existential_1(v51 + 1, v52);
    v42 = *(*(&v41 + 1) + 40);
    swift_retain_n();
    v42(&v48, 23, v46, v34, v41, *(&v41 + 1));

    sub_275B1E92C(v43);

    __swift_destroy_boxed_opaque_existential_1(&v48);
    return sub_275B66124(v51);
  }

  swift_arrayDestroy();
  if (qword_28140F360 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_16:
  v45 = sub_275B7A96C();
  __swift_project_value_buffer(v45, qword_28140F368);
  return sub_275B7A91C();
}

uint64_t SubscriptionDaemon.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t SubscriptionDaemon.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_275B65C34(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v3[6] = 0;
  if (qword_28140F360 != -1)
  {
    swift_once();
  }

  v8 = sub_275B7A96C();
  __swift_project_value_buffer(v8, qword_28140F368);
  sub_275B7A91C();
  sub_275B7AA9C();
  v3[2] = sub_275B7AA8C();
  sub_275B19CD4(a2, (v3 + 7));
  sub_275B7A9FC();
  swift_allocObject();
  v3[3] = sub_275B7A9EC();
  type metadata accessor for XpcSubscriptionServer();
  swift_allocObject();
  v3[4] = XpcSubscriptionServer.init()();
  v3[5] = a1;

  XpcSubscriptionServer.runAsync()();

  v9 = [objc_opt_self() scheduledTimerWithTimeInterval:v3 target:sel_onExitTimerRun selector:0 userInfo:0 repeats:a3];
  v10 = v3[6];
  v3[6] = v9;

  v11 = v3[6];
  if (v11)
  {
    [v11 setTolerance_];
  }

  type metadata accessor for SystemActivityHistoryManager();
  v12 = swift_allocObject();
  v12[2] = 0xD00000000000001FLL;
  v12[3] = 0x8000000275B86180;
  v12[4] = 20;
  qword_28140D970 = v12;

  v13 = sub_275B79CFC();
  v15 = *v13;
  v14 = v13[1];
  type metadata accessor for DaemonStateManager();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  type metadata accessor for DelayedNotificationActivity();
  swift_allocObject();

  off_28140DC78 = sub_275B25BF8(v17, sub_275B26124, 0);

  _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(v18);

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v26);
  type metadata accessor for DaemonLaunchedEvent();
  swift_allocObject();
  sub_275B19CD4(v26, v25);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v24[0] = qword_28140F700;
  v24[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x614C6E6F6D656164, 0xEE00646568636E75);
  sub_275B19CD4(v25, v24);
  v19 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v20 = *(*v4[2] + 96);

  v20(v21);

  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v19 + 200))(v22);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

char *sub_275B66178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v3 = sub_275B7ABCC();
  sub_275B7AB2C();
  v4 = sub_275B7ABCC();
  type metadata accessor for BiomeNotificationStream.ReceivedEvents();
  v5 = static BiomeNotificationStream.ReceivedEvents.get(beginTime:endTime:)(v4, v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5;
    v29 = sub_275B7AB2C();
    v8 = (v7 + 64);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v32 = *(v8 - 2);
      v33 = v10;
      v34 = v11;
      v35 = v12;

      v31 = static BiomeNotificationStream.ICloudLabel.get(event:duration:)(&v32, v29);
      v30 = v13;
      v14 = v32;
      v15 = v33;
      v16 = v34;
      v17 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_275B11A1C(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_275B11A1C((v18 > 1), v19 + 1, 1, v9);
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[56 * v19];
      *(v20 + 2) = v14;
      *(v20 + 6) = v15;
      *(v20 + 7) = v16;
      *(v20 + 8) = v17;
      v20[72] = v31;
      *(v20 + 10) = v30;
      v8 += 5;
      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v21 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC17sampleWithSpacing20labeledNotifications7maximum13spacingInDaysSayAA19LabeledNotificationVGAJ_s5Int64VALtFZ_0(v9, 3, 3);

  sub_275B2005C();
  v22 = v21;
  if (*(v21 + 2) >= 4uLL)
  {
    sub_275B1FF6C(v21, (v21 + 32), 0, 7uLL);
    v24 = v23;

    v22 = v24;
  }

  if (qword_28140EA00 != -1)
  {
    swift_once();
  }

  v25 = sub_275B7A96C();
  __swift_project_value_buffer(v25, qword_28140EA08);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x20646E756F46, 0xE600000000000000);

  v26 = sub_275B7B19C();
  MEMORY[0x277C89240](v26);

  MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B815A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x20646E6120, 0xE500000000000000);
  sub_275B7B0EC();
  MEMORY[0x277C89240](8238, 0xE200000000000000);
  sub_275B7B09C();

  v27 = sub_275B7B19C();
  MEMORY[0x277C89240](v27);

  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B815E0);

  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B815C0);

  sub_275B7A91C();

  return v22;
}

char *sub_275B665FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v58 = v53 - v9;
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v10 = sub_275B7ABCC();
  sub_275B7AB2C();
  v11 = sub_275B7ABCC();
  v12 = static BiomeICloudSubscription.ICloudNotification.getDisplayedNotifications(beginTime:endTime:)(v11, v10);
  v13 = *(v12 + 16);
  if (v13)
  {
    v57 = sub_275B7AB2C();
    v55 = v13 - 1;
    v54 = sub_275B7AB2C();
    v14 = 0;
    v53[2] = &v69;
    v53[1] = v12;
    v15 = v12 + 56;
    v16 = MEMORY[0x277D84F90];
    v56 = v13;
    do
    {
      v65 = v16;
      v17 = *(v15 - 24);
      v18 = *(v15 - 16);
      v64 = v14;
      if (v14 < v55)
      {
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v63 = v15;
      v61 = swift_allocObject();
      *(v61 + 16) = -1;
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v60 = v19 + 16;
      v20 = v54;
      *(v19 + 24) = v54;
      *(v19 + 32) = 0;
      *(v19 + 40) = v20;
      sub_275B7ABBC();
      v62 = v17;
      v21 = [BiomeLibrary() iCloud];
      swift_unknownObjectRelease();
      v59 = [v21 Subscription];
      swift_unknownObjectRelease();
      v22 = v18;
      v23 = v58;
      sub_275B7AC2C();
      v24 = sub_275B795CC();
      v25 = *(v24 - 8);
      v26 = *(v25 + 56);
      v26(v23, 0, 1, v24);
      sub_275B7AC2C();
      v27 = v6;
      v26(v6, 0, 1, v24);
      v66 = v22;
      v28 = sub_275B7ABAC();
      v29 = *(v25 + 48);
      v30 = 0;
      if (v29(v23, 1, v24) != 1)
      {
        v31 = v58;
        v30 = sub_275B795AC();
        (*(v25 + 8))(v31, v24);
      }

      v32 = v29(v27, 1, v24);
      v16 = v65;
      if (v32 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = sub_275B795AC();
        (*(v25 + 8))(v27, v24);
      }

      v6 = v27;
      v34 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v30 endDate:v33 maxEvents:0 lastN:0 reversed:v28 & 1];

      v35 = v59;
      v36 = [v59 publisherWithOptions_];

      v71 = sub_275B12560;
      v72 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_275B0C864;
      v70 = &block_descriptor_8;
      v37 = _Block_copy(&aBlock);
      v38 = swift_allocObject();
      v39 = v61;
      v38[2] = v66;
      v38[3] = v39;
      v38[4] = v19;
      v71 = sub_275B12534;
      v72 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_275B0A330;
      v70 = &block_descriptor_17;
      v40 = _Block_copy(&aBlock);

      v41 = [v36 sinkWithCompletion:v37 receiveInput:v40];
      _Block_release(v40);
      _Block_release(v37);

      swift_beginAccess();
      v42 = *(v19 + 16);
      v43 = *(v19 + 24);
      v44 = *(v19 + 32);
      v45 = *(v19 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_275B11B44(0, *(v16 + 2) + 1, 1, v16);
      }

      v46 = v64;
      v48 = *(v16 + 2);
      v47 = *(v16 + 3);
      if (v48 >= v47 >> 1)
      {
        v16 = sub_275B11B44((v47 > 1), v48 + 1, 1, v16);
      }

      v14 = v46 + 1;
      *(v16 + 2) = v48 + 1;
      v49 = &v16[48 * v48];
      v50 = v63;
      v51 = v66;
      *(v49 + 4) = v62;
      *(v49 + 5) = v51;
      v49[48] = v42;
      *(v49 + 7) = v43;
      v49[64] = v44;
      *(v49 + 9) = v45;
      v15 = v50 + 16;
    }

    while (v56 != v14);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SystemActivity.init(identifier:activityType:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 258;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return v3;
}

uint64_t SystemActivity.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_275B66D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_275B7A7BC();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_275B7A76C();
  MEMORY[0x28223BE20](v64, v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v57 - v14;
  if (a2)
  {
    v62 = a2;
  }

  else
  {
    SystemActivity.criteriaFor(interval:)(a1);
    v62 = v16;
  }

  v60 = *(v2 + 32);
  v63 = a1;
  if (v60)
  {
    if (qword_28140D970)
    {
      v17 = *(v2 + 24);
      v59 = *(v2 + 16);
      v58 = v17;
      aBlock = 0;
      v68 = 0xE000000000000000;
      swift_unknownObjectRetain();

      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000001CLL, 0x8000000275B864F0);
      v66[0] = a1;
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v19 = aBlock;
      v18 = v68;
      v20 = sub_275B7A8DC();
      MEMORY[0x28223BE20](v20, v21);
      *(&v57 - 2) = v22;
      sub_275B69518(&qword_28140FBA8, MEMORY[0x277D7F878], MEMORY[0x277D7F870]);
      sub_275B7968C();
      swift_storeEnumTagMultiPayload();
      v23 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      MEMORY[0x28223BE20](v23, v24);
      *(&v57 - 4) = v25;
      *(&v57 - 3) = v19;
      *(&v57 - 2) = v18;
      *(&v57 - 1) = v15;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
      sub_275B7968C();

      sub_275B6B234(v59, v58, v9);

      sub_275B6941C(v9, MEMORY[0x277D7F818]);
      sub_275B6941C(v15, MEMORY[0x277D7F808]);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v35 = v62;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v36 = sub_275B7A96C();
    __swift_project_value_buffer(v36, qword_28140F1B0);
    aBlock = 0;
    v68 = 0xE000000000000000;
    sub_275B7B09C();
    v37 = "Activity unregister. [";
    v38 = 0xD00000000000002ALL;
  }

  else
  {
    if (qword_28140D970)
    {
      v26 = *(v2 + 24);
      v59 = *(v2 + 16);
      v58 = v26;
      aBlock = 0;
      v68 = 0xE000000000000000;
      swift_unknownObjectRetain();

      sub_275B7B09C();
      MEMORY[0x277C89240](0x7265747369676552, 0xEF3D79616C656420);
      v66[0] = a1;
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v28 = aBlock;
      v27 = v68;
      v29 = sub_275B7A8DC();
      MEMORY[0x28223BE20](v29, v30);
      *(&v57 - 2) = v31;
      sub_275B69518(&qword_28140FBA8, MEMORY[0x277D7F878], MEMORY[0x277D7F870]);
      sub_275B7968C();
      swift_storeEnumTagMultiPayload();
      v32 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      MEMORY[0x28223BE20](v32, v33);
      *(&v57 - 4) = v34;
      *(&v57 - 3) = v28;
      *(&v57 - 2) = v27;
      *(&v57 - 1) = v15;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
      sub_275B7968C();

      sub_275B6B234(v59, v58, v9);

      sub_275B6941C(v9, MEMORY[0x277D7F818]);
      sub_275B6941C(v15, MEMORY[0x277D7F808]);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v35 = v62;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v39 = sub_275B7A96C();
    __swift_project_value_buffer(v39, qword_28140F1B0);
    aBlock = 0;
    v68 = 0xE000000000000000;
    sub_275B7B09C();
    v37 = "Register repeating interval=";
    v38 = 0xD00000000000001DLL;
  }

  MEMORY[0x277C89240](v38, v37 | 0x8000000000000000);
  v66[0] = v63;
  sub_275B7B0EC();
  MEMORY[0x277C89240](5972014, 0xE300000000000000);
  v66[0] = v2;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v71 = sub_275B69598;
  v72 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_275B0B464;
  v70 = &block_descriptor_19_0;
  v40 = _Block_copy(&aBlock);

  v41 = sub_275B7AD4C();
  xpc_activity_register((v41 + 32), v35, v40);

  _Block_release(v40);
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, &aBlock);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(&aBlock, v66);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v65[0] = qword_28140F700;
  v65[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v66, v65);
  v42 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  sub_275B79B4C();

  sub_275B79B4C();

  v43 = v61;
  sub_275B7A8CC();
  swift_storeEnumTagMultiPayload();
  sub_275B69498(v43, v15, v44);
  v45 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v45, v46);
  if ((v47 & 1) == 0)
  {
    v48 = sub_275B7AE4C();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    MEMORY[0x277C89200](v48, v50, v52, v54);
  }

  sub_275B79B4C();

  sub_275B6941C(v43, MEMORY[0x277D7F808]);
  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v42 + 200))(v55);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t SystemActivity.unregister()(uint64_t a1)
{
  sub_275B68E44();
}

uint64_t SystemActivity.checkIn()(uint64_t a1)
{
  sub_275B68C7C();
}

uint64_t SystemActivity.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A18, &qword_275B7ED80);
  v3 = sub_275B7AD1C();
  MEMORY[0x277C89240](40, 0xE100000000000000);
  MEMORY[0x277C89240](*(v0 + 16), *(v0 + 24));
  MEMORY[0x277C89240](32, 0xE100000000000000);

  MEMORY[0x277C89240](0x696669746E656469, 0xEB000000003D7265);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A20, &qword_275B7ED88);
  v1 = sub_275B7AFBC();
  MEMORY[0x277C89240](v1);

  MEMORY[0x277C89240](0x6169726574697263, 0xE90000000000003DLL);

  MEMORY[0x277C89240](41, 0xE100000000000000);

  return v3;
}

uint64_t SystemActivity.refreshState(timeout:)(uint64_t a1)
{
  sub_275B7AA9C();
  v2 = sub_275B7AA8C();
  *(v1 + 49) = 1;
  sub_275B68C7C();
  if (*(v1 + 49) == 1)
  {
    while (1)
    {
      (*(*v2 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
      if ((*(v1 + 49) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  else
  {
LABEL_4:

    return 1;
  }
}

uint64_t sub_275B67B84(_xpc_activity_s *a1)
{
  v2 = v1;
  v52 = *v1;
  v49 = sub_275B7A7BC();
  MEMORY[0x28223BE20](v49, v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_275B7A76C();
  MEMORY[0x28223BE20](v48, v6);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AA9C();
  v8 = sub_275B7AA8C();
  v53 = a1;
  state = xpc_activity_get_state(a1);
  v10 = _s33iCloudSubscriptionOptimizerDaemon14SystemActivityC8toStringySSSiFZ_0(state);
  v12 = v11;
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v13 = sub_275B7A96C();
  __swift_project_value_buffer(v13, qword_28140F1B0);
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B862C0);
  v54 = v10;
  MEMORY[0x277C89240](v10, v12);
  MEMORY[0x277C89240](1528835677, 0xE400000000000000);
  v55 = v1;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  if (state == 2)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_275B7B09C();
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);

    v56 = v14;
    v57 = v15;
    MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B86360);
    sub_275B7A91C();

    (*(*v1 + 168))(v16);
    v17 = xpc_activity_set_state(v53, 5);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_275B7B09C();

    v56 = 0xD000000000000012;
    v57 = 0x8000000275B86380;
    MEMORY[0x277C89240](v14, v15);
    MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B863A0);
    if (v17)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x277C89240](v18, v19);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v20 = v54;
    if (qword_28140D970)
    {
      v56 = 0;
      v57 = 0xE000000000000000;

      v21 = MEMORY[0x277C89240](0x6B6F6F74206E7552, 0xE900000000000020);
      v55 = (*(*v8 + 96))(v21);
      sub_275B7B0EC();
      MEMORY[0x277C89240](46, 0xE100000000000000);
      v22 = v56;
      v23 = v57;
      v24 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      v25 = v15;
      v52 = v15;
      v26 = v50;
      sub_275B6C6E8(v14, v25, v24, v50);
      v27 = swift_storeEnumTagMultiPayload();
      v53 = v12;
      v48 = v8;
      MEMORY[0x28223BE20](v27, v28);
      *(&v47 - 4) = v24;
      *(&v47 - 3) = v22;
      *(&v47 - 2) = v23;
      *(&v47 - 1) = v26;
      sub_275B69518(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
      v29 = v14;
      v30 = v51;
      sub_275B7968C();
      v20 = v54;

      v12 = v53;
      v31 = v29;
      v8 = v48;
      sub_275B6B234(v31, v52, v30);

      sub_275B6941C(v30, MEMORY[0x277D7F818]);
      sub_275B6941C(v26, MEMORY[0x277D7F808]);
    }
  }

  else
  {
    v32 = v12;
    v33 = v53;
    sub_275B689C0(v53);
    if (v34 != 2)
    {
      v35 = v34;
      v48 = v8;
      v36 = *(v1 + 32);
      if (v34)
      {
        v37 = 0x6E69746165706572;
      }

      else
      {
        v37 = 0x7552656C676E6973;
      }

      if (v34)
      {
        v38 = 0xE900000000000067;
      }

      else
      {
        v38 = 0xE90000000000006ELL;
      }

      if (*(v1 + 32))
      {
        v39 = 0x6E69746165706572;
      }

      else
      {
        v39 = 0x7552656C676E6973;
      }

      if (*(v1 + 32))
      {
        v40 = 0xE900000000000067;
      }

      else
      {
        v40 = 0xE90000000000006ELL;
      }

      if (v37 == v39 && v38 == v40)
      {

        v8 = v48;
      }

      else
      {
        v41 = sub_275B7B1BC();

        v8 = v48;
        if ((v41 & 1) == 0)
        {
          v56 = 0;
          v57 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](0xD000000000000025, 0x8000000275B862F0);
          MEMORY[0x277C89240](*(v2 + 16), *(v2 + 24));
          MEMORY[0x277C89240](0xD000000000000018, 0x8000000275B86320);
          v42 = v57;
          v51 = v56;
          v56 = 0;
          v57 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](23328, 0xE200000000000000);
          LOBYTE(v55) = v35 & 1;
          sub_275B7B0EC();
          v33 = v53;
          MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B86340);
          LOBYTE(v55) = v36;
          sub_275B7B0EC();
          MEMORY[0x277C89240](93, 0xE100000000000000);
          v43 = v56;
          v44 = v57;
          v56 = v51;
          v57 = v42;

          MEMORY[0x277C89240](v43, v44);
          v8 = v48;

          sub_275B7A95C();
        }
      }
    }

    *(v2 + 40) = sub_275B689C0(v33);
    *(v2 + 48) = v45;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_275B7B09C();
    v55 = v2;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0x61747320726F6620, 0xEC0000005B206574);
    v20 = v54;
    v12 = v32;
    MEMORY[0x277C89240](v54, v32);
    MEMORY[0x277C89240](0x2D6F6E207369205DLL, 0xEB000000002E706FLL);
    sub_275B7A91C();
  }

  sub_275B69208(v2, v20, v12, v8);
}

void SystemActivity.criteriaFor(interval:)(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
    v3 = *MEMORY[0x277D86360];
    if (*(v1 + 32))
    {
      xpc_dictionary_set_BOOL(v2, v3, 1);
      v4 = *MEMORY[0x277D86288];
      v5 = sub_275B7AB1C();
      xpc_dictionary_set_int64(v2, v4, v5);
      xpc_dictionary_set_int64(v2, *MEMORY[0x277D86250], 1);
      v6 = *MEMORY[0x277D86270];
      v7 = v5 / 2;
      v8 = v2;
    }

    else
    {
      xpc_dictionary_set_BOOL(v2, v3, 0);
      v9 = *MEMORY[0x277D86250];
      v7 = sub_275B7AB1C();
      v8 = v2;
      v6 = v9;
    }

    xpc_dictionary_set_int64(v8, v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275B68520()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F1B0);
  __swift_project_value_buffer(v0, qword_28140F1B0);
  type metadata accessor for SystemActivity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A18, &qword_275B7ED80);
  return sub_275B7A97C();
}

iCloudSubscriptionOptimizerDaemon::SystemActivity::ActivityType_optional __swiftcall SystemActivity.ActivityType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_275B7B17C();

  if (v1 == 1)
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_SystemActivity_ActivityType_repeating;
  }

  else
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_SystemActivity_ActivityType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SystemActivity.ActivityType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E69746165706572;
  }

  else
  {
    return 0x7552656C676E6973;
  }
}

uint64_t sub_275B6862C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E69746165706572;
  }

  else
  {
    v3 = 0x7552656C676E6973;
  }

  if (v2)
  {
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v5 = 0x6E69746165706572;
  }

  else
  {
    v5 = 0x7552656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xE900000000000067;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_275B7B1BC();
  }

  return v8 & 1;
}

uint64_t sub_275B686D8()
{
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B68760(uint64_t a1)
{
  sub_275B7AD7C();
}

uint64_t sub_275B687D4(uint64_t a1)
{
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B68858@<X0>(char *a2@<X8>)
{
  v3 = sub_275B7B17C();

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

void sub_275B688B8(uint64_t *a1@<X8>)
{
  v2 = 0x7552656C676E6973;
  if (*v1)
  {
    v2 = 0x6E69746165706572;
  }

  v3 = 0xE900000000000067;
  if (!*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SystemActivity.__allocating_init(identifier:activityType:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 258;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  return result;
}

uint64_t sub_275B689C0(_xpc_activity_s *a1)
{
  v1 = xpc_activity_copy_criteria(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v3 = sub_275B7A96C();
    __swift_project_value_buffer(v3, qword_28140F1B0);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000033, 0x8000000275B86420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A90, &unk_275B7EED0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    xpc_dictionary_get_int64(v2, *MEMORY[0x277D86250]);
    xpc_dictionary_get_int64(v2, *MEMORY[0x277D86288]);
    v4 = sub_275B7AB2C();
    xpc_dictionary_get_BOOL(v2, *MEMORY[0x277D86360]);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28140F1A8 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_28140F1B0);
    sub_275B7B09C();

    v6 = sub_275B7B2EC();
    MEMORY[0x277C89240](v6);

    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();

    return 0;
  }

  return v4;
}

uint64_t SystemActivity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B68C7C()
{
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140F1B0);
  aBlock = 0;
  v7 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B86460);
  v12 = v0;
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v2 = *MEMORY[0x277D86238];
  v10 = sub_275B6947C;
  v11 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_275B0B464;
  v9 = &block_descriptor_9;
  v3 = _Block_copy(&aBlock);

  v4 = sub_275B7AD4C();
  xpc_activity_register((v4 + 32), v2, v3);

  _Block_release(v3);
  return v0;
}

uint64_t sub_275B68E44()
{
  if (qword_28140D970)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);

    v3._countAndFlagsBits = v1;
    v3._object = v2;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    SystemActivityHistoryManager.addUnregisterAction(_:_:)(v3, v4);
  }

  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v5 = sub_275B7A96C();
  __swift_project_value_buffer(v5, qword_28140F1B0);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000016, 0x8000000275B864A0);
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  v6 = sub_275B7AD4C();
  xpc_activity_unregister((v6 + 32));

  return v0;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon14SystemActivityC8toStringySSSiFZ_0(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0xE500000000000000;
        v2 = 0x5245464544;
        goto LABEL_15;
      case 5:
        v1 = 0xE400000000000000;
        v2 = 1162760004;
        goto LABEL_15;
      case 4:
        v1 = 0xE800000000000000;
        v2 = 0x45554E49544E4F43;
        goto LABEL_15;
    }

LABEL_12:
    v1 = 0xE700000000000000;
    v2 = 0x4E574F4E4B4E55;
    goto LABEL_15;
  }

  if (!a1)
  {
    v1 = 0xE800000000000000;
    v2 = 0x4E495F4B43454843;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v1 = 0xE400000000000000;
    v2 = 1414086999;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0xE300000000000000;
  v2 = 5133650;
LABEL_15:
  v4 = sub_275B7B19C();
  MEMORY[0x277C89240](58, 0xE100000000000000);
  MEMORY[0x277C89240](v2, v1);

  return v4;
}

unint64_t sub_275B690D4()
{
  result = qword_280A33A28;
  if (!qword_280A33A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33A28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemActivity.Criteria(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemActivity.Criteria(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_275B69208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 49) = 0;
  if (qword_28140F1A8 != -1)
  {
    swift_once();
  }

  v7 = sub_275B7A96C();
  __swift_project_value_buffer(v7, qword_28140F1B0);
  sub_275B7B09C();

  MEMORY[0x277C89240](a2, a3);
  MEMORY[0x277C89240](8285, 0xE200000000000000);
  v8 = MEMORY[0x277C89240](0x207265746661, 0xE600000000000000);
  (*(*a4 + 96))(v8);
  sub_275B7B0EC();
  MEMORY[0x277C89240](5972014, 0xE300000000000000);
  type metadata accessor for SystemActivity();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);

  MEMORY[0x277C89240](0, 0xE000000000000000);

  sub_275B7A91C();
}

uint64_t sub_275B6941C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B69498(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_275B7A76C();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B69518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SystemActivityEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_275B696A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_275B7AE2C() != a1 || v9 != a2)
  {
    v10 = sub_275B7B1BC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_275B7AD8C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SystemActivityEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t SystemActivityEvent.addIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addActivityType(_:)(char a1)
{
  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addActionType(_:)(uint64_t a1, double a2)
{
  v3 = sub_275B7A76C();
  v5 = MEMORY[0x28223BE20](v3, v4);
  sub_275B69498(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v7 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v7, v8);
  if ((v9 & 1) == 0)
  {
    v10 = sub_275B7AE4C();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    MEMORY[0x277C89200](v10, v12, v14, v16);
  }

  sub_275B79B4C();
}

uint64_t SystemActivityEvent.addInterval(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();
  }
}

uint64_t SystemActivityEvent.addDeviationFromExpectedTime(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();
  }
}

uint64_t SystemActivityEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

Swift::String __swiftcall SystemActivityHistory_Action.OneOf_Type.toString()()
{
  v1 = sub_275B7A76C();
  v3 = MEMORY[0x28223BE20](v1, v2);
  sub_275B69498(v0, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v5 = sub_275B7AD1C();
  v7 = v6;
  sub_275B696A4(40, 0xE100000000000000, v5, v6);
  if ((v8 & 1) == 0)
  {
    v9 = sub_275B7AE4C();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v5 = MEMORY[0x277C89200](v9, v11, v13, v15);
    v7 = v16;
  }

  v17 = v5;
  v18 = v7;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void *SystemActivityHistoryManager.__allocating_init(historyFile:maxHistorySize:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  v9 = 0x8000000275B86180;
  v10 = 0xD00000000000001FLL;
  if (a2)
  {
    v10 = a1;
    v9 = a2;
  }

  result[2] = v10;
  result[3] = v9;
  v11 = 20;
  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  result[4] = v11;
  return result;
}

uint64_t static SystemActivityHistoryManager.initShared(_:)(uint64_t a1)
{
  qword_28140D970 = a1;
}

uint64_t sub_275B69ED4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140D958);
  __swift_project_value_buffer(v0, qword_28140D958);
  type metadata accessor for SystemActivityHistoryManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA8, &qword_275B7EFA0);
  return sub_275B7A97C();
}

void *SystemActivityHistoryManager.init(historyFile:maxHistorySize:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = 0x8000000275B86180;
  v6 = 0xD00000000000001FLL;
  if (a2)
  {
    v6 = a1;
    v5 = a2;
  }

  v4[2] = v6;
  v4[3] = v5;
  v7 = 20;
  if ((a4 & 1) == 0)
  {
    v7 = a3;
  }

  v4[4] = v7;
  return v4;
}

uint64_t SystemActivityHistoryManager.addRegisterAction(_:activityType:interval:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_275B7A7BC();
  MEMORY[0x28223BE20](v11, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_275B7A76C();
  MEMORY[0x28223BE20](v15, v16);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A8DC();
  v20[10] = a4;
  sub_275B6DD70(&qword_28140FBA8, MEMORY[0x277D7F878], MEMORY[0x277D7F870]);
  sub_275B7968C();
  swift_storeEnumTagMultiPayload();
  v20[4] = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = v18;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
  sub_275B7968C();
  sub_275B6B234(a1, a2, v14);
  sub_275B6DC74(v14, MEMORY[0x277D7F818]);
  return sub_275B6DC74(v18, MEMORY[0x277D7F808]);
}

uint64_t sub_275B6A1C0(uint64_t a1, uint64_t a2)
{
  sub_275B7AB1C();
  sub_275B7A8AC();
  sub_275B7AAAC();
  return sub_275B7A8BC();
}

Swift::Void __swiftcall SystemActivityHistoryManager.addRunAction(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v3 = a1._object;
  v4 = a1._countAndFlagsBits;
  v5 = sub_275B7A7BC();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B7A76C();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B6C6E8(v4, v3, v13, v12);
  swift_storeEnumTagMultiPayload();
  v16 = v13;
  v17 = countAndFlagsBits;
  v18 = object;
  v19 = v12;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
  sub_275B7968C();
  sub_275B6B234(v4, v3, v8);
  sub_275B6DC74(v8, MEMORY[0x277D7F818]);
  sub_275B6DC74(v12, MEMORY[0x277D7F808]);
}

Swift::Void __swiftcall SystemActivityHistoryManager.addUnregisterAction(_:_:)(Swift::String a1, Swift::String a2)
{
  v63 = a2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v58 = &v57 - v6;
  v7 = sub_275B7A8DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v57 - v12;
  v14 = sub_275B7A7BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v57 - v20;
  v22 = sub_275B7A76C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v59 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v57 - v28;
  sub_275B7A80C();
  v30 = v29;
  swift_storeEnumTagMultiPayload();
  v60 = sub_275B7AB2C();
  v31 = countAndFlagsBits;
  sub_275B6D19C(countAndFlagsBits, object, v13);
  v32 = *(v15 + 48);
  v62 = v14;
  if (v32(v13, 1, v14) == 1)
  {
    sub_275B29CD4(v13, &qword_280A33AA0, &unk_275B7EF58);
    v33 = object;
    v34 = countAndFlagsBits;
    v35 = v30;
  }

  else
  {
    sub_275B6DCD4(v13, v21, MEMORY[0x277D7F818]);
    v36 = v58;
    sub_275B6DA94(v21, v58);
    sub_275B6DC74(v21, MEMORY[0x277D7F818]);
    v34 = v31;
    v35 = v30;
    if ((*(v23 + 48))(v36, 1, v22) == 1)
    {
      sub_275B29CD4(v36, &qword_280A33A98, &qword_275B7EF50);
      v33 = object;
    }

    else
    {
      v33 = object;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_275B6DC74(v36, MEMORY[0x277D7F808]);
      }

      else
      {
        v37 = v36;
        v38 = v57;
        sub_275B6DCD4(v37, v57, MEMORY[0x277D7F878]);
        sub_275B7A89C();
        sub_275B6DC74(v38, MEMORY[0x277D7F878]);
        sub_275B7AB2C();
      }
    }
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v66);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(v66, v65);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v64[0] = qword_28140F700;
  v64[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v65, v64);
  v39 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v66);

  sub_275B79B4C();

  sub_275B6DB80(v35, v59, MEMORY[0x277D7F808]);
  v40 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v40, v41);
  if ((v42 & 1) == 0)
  {
    v43 = sub_275B7AE4C();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    MEMORY[0x277C89200](v43, v45, v47, v49);
  }

  sub_275B79B4C();

  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v39 + 200))(v50);

  v51 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  MEMORY[0x28223BE20](v51, v52);
  v54 = v63._countAndFlagsBits;
  v53 = v63._object;
  *(&v57 - 4) = v55;
  *(&v57 - 3) = v54;
  *(&v57 - 2) = v53;
  *(&v57 - 1) = v35;
  sub_275B6DD70(&qword_28140FBB8, MEMORY[0x277D7F818], MEMORY[0x277D7F810]);
  v56 = v61;
  sub_275B7968C();
  sub_275B6B234(v34, v33, v56);
  sub_275B6DC74(v56, MEMORY[0x277D7F818]);
  sub_275B6DC74(v35, MEMORY[0x277D7F808]);
}

uint64_t sub_275B6ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[2] = a3;
  v19 = a5;
  v18[1] = a4;
  v6 = sub_275B7959C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B795CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AB5C();
  sub_275B7A7AC();
  sub_275B7AC2C();
  sub_275B6AE30(v10);
  sub_275B7953C();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  sub_275B7A77C();

  sub_275B7A78C();
  sub_275B29CD4(a1, &qword_280A33A98, &qword_275B7EF50);
  sub_275B6DB80(v19, a1, MEMORY[0x277D7F808]);
  v16 = sub_275B7A76C();
  return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
}

uint64_t sub_275B6AE30@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v36 = &v31 - v3;
  v35 = sub_275B7961C();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_275B7958C();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B7956C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_275B7954C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_275B7955C();
  v23 = MEMORY[0x28223BE20](v21, v22);
  (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460], v23);
  v26 = v16;
  v27 = v35;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v26);
  v28 = v10;
  v29 = v36;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v28, *MEMORY[0x277CC9480], v34);
  sub_275B7960C();
  result = (*(v4 + 48))(v29, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v32, v29, v27);
    return sub_275B7957C();
  }

  return result;
}

uint64_t sub_275B6B234(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v52 - v7;
  v62 = sub_275B7A7BC();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v9);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_275B796BC();
  v60 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v52 - v20;
  v22 = sub_275B7A6FC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v3;
  SystemActivityHistoryManager.readHistory()(v21);
  v29 = *(v23 + 48);
  v27 = v23 + 48;
  v28 = v29;
  v30 = v29(v21, 1, v22);
  v54 = v13;
  if (v30 == 1)
  {
    sub_275B7A6EC();
    v31 = v28(v21, 1, v22);
    if (v31 != 1)
    {
      v31 = sub_275B29CD4(v21, &qword_280A33AB0, &qword_275B7EFA8);
    }
  }

  else
  {
    v31 = sub_275B6DCD4(v21, v26, MEMORY[0x277D7F7D0]);
  }

  v33 = 0;
  v57 = v26;
  v34 = *v26;
  v35 = *(*v26 + 16);
  while (1)
  {
    if (v35 == v33)
    {
      MEMORY[0x28223BE20](v31, v32);
      v47 = v61;
      *(&v52 - 4) = a1;
      *(&v52 - 3) = v47;
      *(&v52 - 2) = v58;
      sub_275B6DD70(&qword_28140FBD0, MEMORY[0x277D7F500], MEMORY[0x277D7F4F8]);
      v48 = v54;
      sub_275B7968C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_275B11490(0, v34[2] + 1, 1, v34);
      }

      v46 = v57;
      v50 = v34[2];
      v49 = v34[3];
      if (v50 >= v49 >> 1)
      {
        v34 = sub_275B11490((v49 > 1), v50 + 1, 1, v34);
      }

      v34[2] = v50 + 1;
      sub_275B6DCD4(v48, v34 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50, MEMORY[0x277D7F500]);
      goto LABEL_37;
    }

    v36 = v33;
    if (v33 >= v34[2])
    {
      goto LABEL_41;
    }

    v13 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v27 = *(v60 + 72) * v33;
    sub_275B6DB80(v34 + v13 + v27, v17, MEMORY[0x277D7F500]);
    v22 = sub_275B7969C();
    v38 = v37;
    sub_275B6DC74(v17, MEMORY[0x277D7F500]);
    if (v22 == a1 && v38 == v61)
    {
      break;
    }

    v22 = sub_275B7B1BC();

    v33 = v36 + 1;
    if (v22)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v17 = v56;
  sub_275B6DB80(v58, v56, MEMORY[0x277D7F818]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v39 = v55;
    if (v36 >= v34[2])
    {
      __break(1u);
    }

    else
    {
      v61 = v34;
      v22 = v34 + v13;
      a1 = *(v34 + v13 + v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + v13 + v27) = a1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }
    }

    a1 = sub_275B114B8(0, a1[2] + 1, 1, a1);
    *(v22 + v27) = a1;
LABEL_15:
    v13 = a1[2];
    v41 = a1[3];
    if (v13 >= v41 >> 1)
    {
      a1 = sub_275B114B8((v41 > 1), v13 + 1, 1, a1);
      *(v22 + v27) = a1;
    }

    a1[2] = v13 + 1;
    v34 = ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v42 = *(v39 + 72);
    sub_275B6DCD4(v17, v34 + a1 + v42 * v13, MEMORY[0x277D7F818]);
    if (v36 < *(v61 + 16))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v34 = sub_275B6DD3C(v34);
  }

  v13 = *(v59 + 32);
  v43 = (v39 + 56);
  a1 = *(v22 + v27);
  while (1)
  {
    v44 = a1[2];
    if (v13 >= v44)
    {
      break;
    }

    if (!v44)
    {
      goto LABEL_39;
    }

    sub_275B6DB80(v34 + a1, v8, MEMORY[0x277D7F818]);
    (*v43)(v8, 0, 1, v62);
    sub_275B29CD4(v8, &qword_280A33AA0, &unk_275B7EF58);
    a1 = *(v22 + v27);
    v17 = a1[2];
    if (!v17)
    {
      goto LABEL_40;
    }

    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v27) = a1;
    if (!v45 || (v17 - 1) > a1[3] >> 1)
    {
      a1 = sub_275B114B8(v45, v17, 1, a1);
      *(v22 + v27) = a1;
    }

    v17 = v34 + a1;
    sub_275B6DC74(v34 + a1, MEMORY[0x277D7F818]);
    if (v42 > 0 || v17 >= v34 + a1 + v42 + (a1[2] - 1) * v42)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v42)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --a1[2];
    *(v22 + v27) = a1;
    if (v36 >= *(v61 + 16))
    {
      goto LABEL_38;
    }
  }

  v46 = v57;
  v34 = v61;
LABEL_37:
  *v46 = v34;
  sub_275B6C1B0(v46);
  return sub_275B6DC74(v46, MEMORY[0x277D7F7D0]);
}

uint64_t sub_275B6B9F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_275B796AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33228, &qword_275B7C688);
  v6 = *(sub_275B7A7BC() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_275B7D0A0;
  sub_275B6DB80(a4, v8 + v7, MEMORY[0x277D7F818]);

  *a1 = v8;
  return result;
}

uint64_t SystemActivityHistoryManager.readHistory()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275B7964C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_275B7A6FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B794EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DaemonStateManager();
  static DaemonStateManager.toUrl(_:)(*(v1 + 16), *(v1 + 24), v14);
  v36 = v11;
  v37 = a1;
  v15 = [objc_opt_self() defaultManager];
  sub_275B794CC();
  v16 = sub_275B7ACDC();

  v17 = [v15 fileExistsAtPath_];

  if ((v17 & 1) == 0)
  {
    if (qword_28140D950 != -1)
    {
      swift_once();
    }

    v18 = sub_275B7A96C();
    __swift_project_value_buffer(v18, qword_28140D958);
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v38 = 0xD000000000000024;
    *(&v38 + 1) = 0x8000000275B865F0;
    v19 = sub_275B794CC();
    MEMORY[0x277C89240](v19);

    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();

    (*(v36 + 8))(v14, v10);
    v20 = 1;
    v21 = v37;
    return (*(v6 + 56))(v21, v20, 1, v5);
  }

  v22 = sub_275B794FC();
  v24 = v23;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_275B1E0B4(v22, v23);
  sub_275B7963C();
  sub_275B6DD70(&qword_28140FBC0, MEMORY[0x277D7F7D0], MEMORY[0x277D7F7C8]);
  sub_275B7966C();
  if (qword_28140D950 != -1)
  {
    swift_once();
  }

  v26 = sub_275B7A96C();
  v27 = __swift_project_value_buffer(v26, qword_28140D958);
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_275B7B09C();
  result = MEMORY[0x277C89240](0x5B3D657A6973, 0xE600000000000000);
  v28 = v24 >> 62;
  v35[1] = v27;
  if ((v24 >> 62) > 1)
  {
    v29 = 0;
    if (v28 != 2)
    {
      goto LABEL_18;
    }

    v31 = *(v22 + 16);
    v30 = *(v22 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(v24);
LABEL_18:
    v35[0] = 0x8000000275B86620;
    v41 = v29;
    v33 = sub_275B7B19C();
    MEMORY[0x277C89240](v33);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86640);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v34 = v38;
    *&v38 = 0xD00000000000001FLL;
    *(&v38 + 1) = v35[0];
    MEMORY[0x277C89240](v34, *(&v34 + 1));

    sub_275B7A91C();

    sub_275B1E160(v22, v24);
    (*(v36 + 8))(v14, v10);
    v21 = v37;
    sub_275B6DCD4(v9, v37, MEMORY[0x277D7F7D0]);
    v20 = 0;
    return (*(v6 + 56))(v21, v20, 1, v5);
  }

  LODWORD(v29) = HIDWORD(v22) - v22;
  if (!__OFSUB__(HIDWORD(v22), v22))
  {
    v29 = v29;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_275B6C1B0(uint64_t a1)
{
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16) < 6uLL)
  {
    v13 = v6;
    type metadata accessor for DaemonStateManager();
    static DaemonStateManager.toUrl(_:)(*(v1 + 16), *(v1 + 24), v8);
    sub_275B7A6FC();
    sub_275B6DD70(&qword_28140FBC0, MEMORY[0x277D7F7D0], MEMORY[0x277D7F7C8]);
    v14 = sub_275B7967C();
    v16 = v15;
    sub_275B7952C();
    if (qword_28140D950 != -1)
    {
      swift_once();
    }

    v17 = sub_275B7A96C();
    v18 = __swift_project_value_buffer(v17, qword_28140D958);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_275B7B09C();
    result = MEMORY[0x277C89240](0x5B3D657A6973, 0xE600000000000000);
    v19 = v16 >> 62;
    v27[1] = v18;
    if ((v16 >> 62) > 1)
    {
      v20 = 0;
      if (v19 != 2)
      {
        goto LABEL_16;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v20 = BYTE6(v16);
      goto LABEL_16;
    }

    LODWORD(v20) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
LABEL_16:
    v27[2] = v20;
    v24 = sub_275B7B19C();
    MEMORY[0x277C89240](v24);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86640);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v25 = v28;
    v26 = v29;
    v28 = 0xD000000000000020;
    v29 = 0x8000000275B86700;
    MEMORY[0x277C89240](v25, v26);

    sub_275B7A91C();

    sub_275B1E160(v14, v16);
    return (*(v4 + 8))(v8, v13);
  }

  if (qword_28140D950 != -1)
  {
    swift_once();
  }

  v9 = sub_275B7A96C();
  __swift_project_value_buffer(v9, qword_28140D958);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B86780);
  sub_275B7A6FC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  v10 = v28;
  v11 = v29;
  v28 = 0xD000000000000042;
  v29 = 0x8000000275B86730;
  MEMORY[0x277C89240](v10, v11);

  sub_275B7A95C();
}

uint64_t sub_275B6C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v7 = sub_275B7A76C();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v63 = &v55 - v12;
  v58 = sub_275B7A86C();
  MEMORY[0x28223BE20](v58, v13);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v55 - v17;
  v19 = sub_275B7A8DC();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v56 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v55 - v24;
  v26 = sub_275B7A7BC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a4;
  sub_275B7A85C();
  v62 = a1;
  v64 = a2;
  sub_275B6D19C(a1, a2, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_275B29CD4(v25, &qword_280A33AA0, &unk_275B7EF58);
    v31 = 1;
    v32 = v63;
  }

  else
  {
    sub_275B6DCD4(v25, v30, MEMORY[0x277D7F818]);
    sub_275B6DA94(v30, v18);
    if ((v61[6])(v18, 1, v7) == 1)
    {
      sub_275B6DC74(v30, MEMORY[0x277D7F818]);
      sub_275B29CD4(v18, &qword_280A33A98, &qword_275B7EF50);
      v31 = 1;
      v32 = v63;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v63;
      if (EnumCaseMultiPayload)
      {
        sub_275B6DC74(v30, MEMORY[0x277D7F818]);
        sub_275B6DC74(v18, MEMORY[0x277D7F808]);
        v31 = 1;
      }

      else
      {
        v34 = v18;
        v35 = v56;
        sub_275B6DCD4(v34, v56, MEMORY[0x277D7F878]);
        sub_275B7A79C();
        sub_275B7AB6C();
        sub_275B7A89C();
        sub_275B7AB2C();
        v36 = sub_275B7ABBC();
        v37 = sub_275B7ABCC();
        v61 = &v55;
        MEMORY[0x28223BE20](v37, v38);
        *(&v55 - 2) = v36;
        *(&v55 - 1) = v39;
        sub_275B6DD70(&qword_28140FBB0, MEMORY[0x277D7F858], MEMORY[0x277D7F850]);
        v40 = v59;
        sub_275B7968C();
        sub_275B6DC74(v35, MEMORY[0x277D7F878]);
        sub_275B6DC74(v30, MEMORY[0x277D7F818]);
        v41 = v60;
        sub_275B6DC74(v60, MEMORY[0x277D7F858]);
        sub_275B6DCD4(v40, v41, MEMORY[0x277D7F858]);
        v31 = 0;
      }
    }
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v68);
  type metadata accessor for SystemActivityEvent();
  swift_allocObject();
  sub_275B19CD4(v68, v67);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v66[0] = qword_28140F700;
  v66[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x63416D6574737973, 0xEE00797469766974);
  sub_275B19CD4(v67, v66);
  v42 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v68);

  sub_275B79B4C();

  sub_275B7A85C();
  swift_storeEnumTagMultiPayload();
  sub_275B6DB80(v32, v65, MEMORY[0x277D7F808]);
  v43 = sub_275B7AD1C();
  sub_275B696A4(40, 0xE100000000000000, v43, v44);
  if ((v45 & 1) == 0)
  {
    v46 = sub_275B7AE4C();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    MEMORY[0x277C89200](v46, v48, v50, v52);
  }

  sub_275B79B4C();

  sub_275B6DC74(v32, MEMORY[0x277D7F808]);
  if ((v31 & 1) == 0)
  {
    sub_275B7AB1C();
    sub_275B79B7C();

    sub_275B7AB1C();
    sub_275B79B7C();
  }

  (*(*v42 + 200))(v53);
}

uint64_t sub_275B6CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a3;
  v3 = sub_275B7959C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B795CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7AB5C();
  sub_275B7A82C();
  sub_275B7AC2C();
  sub_275B6AE30(v7);
  sub_275B7953C();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  sub_275B7A83C();
  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  v14[5] = v14[0];
  sub_275B7B0EC();
  return sub_275B7A84C();
}

char *sub_275B6D19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v94 = &v88 - v7;
  v96 = sub_275B7A7BC();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v8);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v95 = &v88 - v12;
  v100 = sub_275B7A76C();
  v90 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v13);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v99 = &v88 - v17;
  v18 = sub_275B796BC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v91 = (&v88 - v25);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v88 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v88 - v32;
  v34 = sub_275B7A6FC();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  SystemActivityHistoryManager.readHistory()(v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_275B29CD4(v33, &qword_280A33AB0, &qword_275B7EFA8);
    return (*(v93 + 56))(a3, 1, 1, v96);
  }

  v88 = v29;
  v89 = a3;
  sub_275B6DCD4(v33, v38, MEMORY[0x277D7F7D0]);
  v39 = *v38;
  v40 = *(*v38 + 16);
  v41 = v100;
  result = v38;
  v43 = v92;
  if (!v40)
  {
LABEL_10:
    sub_275B6DC74(result, MEMORY[0x277D7F7D0]);
    a3 = v89;
    return (*(v93 + 56))(a3, 1, 1, v96);
  }

  v44 = 0;
  v97 = result;
  while (1)
  {
    if (v44 >= *(v39 + 16))
    {
      __break(1u);
      return result;
    }

    sub_275B6DB80(v39 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v44, v22, MEMORY[0x277D7F500]);
    if (sub_275B7969C() == a1 && v45 == v43)
    {
      break;
    }

    v46 = sub_275B7B1BC();

    if (v46)
    {
      goto LABEL_13;
    }

    ++v44;
    sub_275B6DC74(v22, MEMORY[0x277D7F500]);
    result = v97;
    if (v40 == v44)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v47 = MEMORY[0x277D7F500];
  v48 = v91;
  sub_275B6DCD4(v22, v91, MEMORY[0x277D7F500]);
  v49 = v48;
  v50 = v88;
  sub_275B6DCD4(v49, v88, v47);
  sub_275B7A8CC();
  swift_storeEnumTagMultiPayload();
  v51 = v93;
  v91 = *(v93 + 56);
  v92 = v93 + 56;
  (v91)(v95, 1, 1, v96);
  v52 = *(*v50 + 16);
  v53 = v94;
  v54 = v98;
  if (v52)
  {
    v55 = *v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v56 = v90 + 6;
    v57 = *(v51 + 72);
    v90 += 6;
    do
    {
      sub_275B6DB80(v55, v54, MEMORY[0x277D7F818]);
      sub_275B6DB80(v99, v101, MEMORY[0x277D7F808]);
      v58 = sub_275B7AD1C();
      v60 = v59;
      sub_275B696A4(40, 0xE100000000000000, v58, v59);
      if ((v61 & 1) == 0)
      {
        v62 = sub_275B7AE4C();
        v64 = v63;
        v66 = v65;
        v68 = v67;

        v69 = v66;
        v54 = v98;
        v58 = MEMORY[0x277C89200](v62, v64, v69, v68);
        v60 = v70;
        v41 = v100;
      }

      sub_275B6DA94(v54, v53);
      if ((*v56)(v53, 1, v41) == 1)
      {
        sub_275B29CD4(v53, &qword_280A33A98, &qword_275B7EF50);
      }

      else
      {
        sub_275B6DB80(v53, v101, MEMORY[0x277D7F808]);
        v71 = sub_275B7AD1C();
        v73 = v72;
        sub_275B696A4(40, 0xE100000000000000, v71, v72);
        if ((v74 & 1) == 0)
        {
          v75 = sub_275B7AE4C();
          v77 = v76;
          v79 = v78;
          v80 = v57;
          v82 = v81;

          v83 = v75;
          v54 = v98;
          v84 = v79;
          v53 = v94;
          v71 = MEMORY[0x277C89200](v83, v77, v84, v82);
          v73 = v85;
          v57 = v80;
          v56 = v90;
        }

        sub_275B6DC74(v53, MEMORY[0x277D7F808]);
        if (v58 == v71 && v60 == v73)
        {

          v41 = v100;
LABEL_27:
          v87 = v95;
          sub_275B29CD4(v95, &qword_280A33AA0, &unk_275B7EF58);
          sub_275B6DCD4(v54, v87, MEMORY[0x277D7F818]);
          (v91)(v87, 0, 1, v96);
          goto LABEL_17;
        }

        v86 = sub_275B7B1BC();

        v41 = v100;
        if (v86)
        {
          goto LABEL_27;
        }
      }

      sub_275B6DC74(v54, MEMORY[0x277D7F818]);
LABEL_17:
      v55 += v57;
      --v52;
    }

    while (v52);
  }

  sub_275B6DC74(v99, MEMORY[0x277D7F808]);
  sub_275B6DC74(v88, MEMORY[0x277D7F500]);
  sub_275B6DC74(v97, MEMORY[0x277D7F7D0]);
  return sub_275B6DBE8(v95, v89);
}

uint64_t sub_275B6DA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33A98, &qword_275B7EF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemActivityHistoryManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B6DB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B6DBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AA0, &unk_275B7EF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B6DC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B6DCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B6DD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275B6DDBC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F050);
  __swift_project_value_buffer(v0, qword_28140F050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A33AD0, &qword_275B7EFE8);
  return sub_275B7A97C();
}

void sub_275B6DE3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  dispatch_group_leave(a5);
}

uint64_t sub_275B6DEE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC8, &qword_275B7EFE0);
    v4 = sub_275B7AC8C();
  }

  v6 = a3;
  v5(v4, a3);
}

id _s33iCloudSubscriptionOptimizerDaemon14SystemSettingsV010isSharingiA14DiagnosticDataSbyFZ_0()
{
  v0 = dispatch_group_create();
  v1 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  dispatch_group_enter(v0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  if (v1)
  {
    v5 = v1;
    v22 = v1;
    v6 = sub_275B7AE6C();
    sub_275B35FEC();
    v7 = sub_275B7ACDC();

    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v2;
    v8[4] = v0;
    aBlock[4] = sub_275B6E594;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275B6DEE4;
    aBlock[3] = &block_descriptor_10;
    v9 = _Block_copy(aBlock);

    v10 = v0;

    [v5 configurationInfoWithIdentifiers:v6 forAltDSID:v7 completion:v9];
    _Block_release(v9);

    v1 = v22;
  }

  sub_275B7AB2C();
  if (sub_275B7AF6C())
  {
    if (qword_28140F048 != -1)
    {
      swift_once();
    }

    v11 = sub_275B7A96C();
    __swift_project_value_buffer(v11, qword_28140F050);
    sub_275B7A95C();
  }

  else
  {
    swift_beginAccess();
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = v12;
      if (qword_28140F048 != -1)
      {
        swift_once();
      }

      v14 = sub_275B7A96C();
      __swift_project_value_buffer(v14, qword_28140F050);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000001BLL, 0x8000000275B867C0);
      MEMORY[0x277C89240](0xD000000000000029, 0x8000000275B7F580);
      MEMORY[0x277C89240](0x726F727265202E5DLL, 0xEA00000000005B3DLL);
      v26 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      sub_275B7A95C();

      return 0;
    }

    if (qword_28140F048 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_28140F050);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_275B7B09C();

    v26 = 0xD00000000000001FLL;
    v27 = 0x8000000275B867A0;
    swift_beginAccess();
    aBlock[6] = *v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB8, &unk_275B7EFD0);
    v16 = sub_275B7AD1C();
    MEMORY[0x277C89240](v16);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    v17 = *v4;
    if (v17)
    {
      if (*(v17 + 16))
      {

        sub_275B180D4(0xD000000000000029, 0x8000000275B7F580);
        if (v18)
        {
          swift_unknownObjectRetain();

          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            v20 = [v19 BOOLValue];

            swift_unknownObjectRelease();
            return v20;
          }

          swift_unknownObjectRelease();
          goto LABEL_8;
        }
      }

      else
      {
      }

      return 0;
    }
  }

LABEL_8:

  return 0;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B6E5B8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33AE0);
  __swift_project_value_buffer(v0, qword_280A33AE0);
  type metadata accessor for UsageTrackingFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AF8, &unk_275B7F020);
  return sub_275B7A97C();
}

uint64_t UsageTrackingFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1;
  v3 = sub_275B793FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v2 == 50)
  {
    sub_275B7AB9C();
    type metadata accessor for UsageTrackingFeatures();
    v8 = static UsageTrackingFeatures.getTotalScreenTimeInSeconds(_:)();
    (*(v4 + 8))(v7, v3);
    v1 = 50;
  }

  else
  {
    if (qword_280A32E30 != -1)
    {
      swift_once();
    }

    v9 = sub_275B7A96C();
    __swift_project_value_buffer(v9, qword_280A33AE0);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    v12[15] = v1;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000034, 0x8000000275B86830);
    sub_275B7A95C();

    v8 = -1;
  }

  type metadata accessor for Feature();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v10 + 32) = 1;
  return v10;
}

uint64_t static UsageTrackingFeatures.getTotalScreenTimeInSeconds(_:)()
{
  v1 = v0;
  sub_275B7AA9C();
  v2 = sub_275B7AA8C();
  v3 = [objc_allocWithZone(MEMORY[0x277D77B60]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_275B7AB2C();
  sub_275B793EC();
  v6 = v5;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = sub_275B793DC();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v1;
  v9[5] = v1;
  v22 = sub_275B6EFD4;
  v23 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_275B6EFE4;
  v21 = &block_descriptor_11;
  v10 = _Block_copy(&aBlock);
  v11 = v7;

  [v3 fetchReportsDuringInterval:v8 partitionInterval:v10 completionHandler:v6];
  _Block_release(v10);

  if (qword_280A32E40 != -1)
  {
    swift_once();
  }

  if (sub_275B7AF6C())
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v12 = sub_275B7A96C();
    __swift_project_value_buffer(v12, qword_280A33B00);
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_275B7B09C();
    v13 = MEMORY[0x277C89240](0xD000000000000029, 0x8000000275B86900);
    (*(*v2 + 96))(v13);
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    sub_275B7A91C();

    if (qword_280A32E48 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v14 = sub_275B7A96C();
    __swift_project_value_buffer(v14, qword_280A33B00);
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B86930);
    swift_beginAccess();
    sub_275B7B0EC();
    MEMORY[0x277C89240](8238, 0xE200000000000000);
    v15 = MEMORY[0x277C89240](0x617275446C6C6163, 0xED00003D6E6F6974);
    (*(*v2 + 96))(v15);
    sub_275B7B0EC();

    MEMORY[0x277C89240](0, 0xE000000000000000);

    sub_275B7A91C();
  }

  v16 = sub_275B7AB1C();

  return v16;
}

uint64_t sub_275B6EDA8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33B00);
  __swift_project_value_buffer(v0, qword_280A33B00);
  type metadata accessor for UsageTrackingFeatures();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B28, &qword_275B7F048);
  return sub_275B7A97C();
}

uint64_t sub_275B6EE24()
{
  result = sub_275B7AB2C();
  qword_280A33B18 = result;
  return result;
}

uint64_t sub_275B6EE5C()
{
  result = sub_275B7AB2C();
  qword_280A33B20 = result;
  return result;
}

void sub_275B6EE94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5, uint64_t a6)
{
  if (a4)
  {
    if (qword_280A32E38 != -1)
    {
      swift_once();
    }

    v8 = sub_275B7A96C();
    __swift_project_value_buffer(v8, qword_280A33B00);
    sub_275B7B09C();

    v9 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
    v10 = sub_275B7AD1C();
    MEMORY[0x277C89240](v10);

    sub_275B7A95C();
  }

  else
  {
    v12 = _s33iCloudSubscriptionOptimizerDaemon21UsageTrackingFeaturesC17getScreenTimeSecsy01iabC4Core0J5DeltaVSaySo13USUsageReportCGSgFZ_0(a1);
    swift_beginAccess();
    *(a6 + 16) = v12;
  }

  dispatch_group_leave(a5);
}

uint64_t sub_275B6EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_275B6F2D0();
    v8 = sub_275B7AE7C();
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B38, &unk_275B7F050);
    a3 = sub_275B7AC8C();
  }

  if (a4)
  {
    sub_275B6F2D0();
    a4 = sub_275B7AE7C();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon21UsageTrackingFeaturesC17getScreenTimeSecsy01iabC4Core0J5DeltaVSaySo13USUsageReportCGSgFZ_0(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_16:

    if (qword_280A32E48 == -1)
    {
      return qword_280A33B20;
    }

LABEL_23:
    swift_once();
    return qword_280A33B20;
  }

  if (!sub_275B7B11C())
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x277C89550](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v2 = *(v1 + 32);

    v3 = v2;
  }

  v4 = v3;

  [v4 screenTime];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return sub_275B7AB2C();
}

unint64_t sub_275B6F2D0()
{
  result = qword_280A33B30;
  if (!qword_280A33B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A33B30);
  }

  return result;
}

uint64_t XpcCallFinishedEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x466C6C6143637078, 0xEF64656873696E69);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallFinishedEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x466C6C6143637078, 0xEF64656873696E69);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallFinishedEvent.addXpcMethod(_:)(uint64_t a1, uint64_t a2)
{
  sub_275B79B4C();
}

uint64_t XpcCallFinishedEvent.addDuration(_:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t XpcCallFinishedEvent.addWasSuccessful(_:)(uint64_t a1)
{
  sub_275B79B5C();
}

uint64_t XpcCallFinishedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t XpcCallStartedEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x536C6C6143637078, 0xEE00646574726174);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallStartedEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x536C6C6143637078, 0xEE00646574726174);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallStartedEvent.addXpcMethod(_:)(uint64_t a1, uint64_t a2)
{
  sub_275B79B4C();
}

uint64_t XpcCallStartedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t XpcCallToIndFinishedEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallToIndFinishedEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t XpcCallToIndFinishedEvent.addCallDuration(_:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t XpcCallToIndFinishedEvent.addWasSuccessful(_:)(uint64_t a1)
{
  sub_275B79B5C();
}

uint64_t XpcCallToIndFinishedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B6FDC8(uint64_t a1)
{
  v1 = sub_275B79CFC();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for DaemonStateManager();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = sub_275B7AB2C();
  v7 = sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  v8[5] = v7;
  type metadata accessor for MobileAssetLocalManager();
  v9 = swift_allocObject();
  v10 = objc_allocWithZone(MEMORY[0x277D289C0]);
  swift_bridgeObjectRetain_n();
  v11 = [v10 init];
  v12 = type metadata accessor for RealAssetInterface();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  type metadata accessor for MobileAssetDownloadManager();
  result = swift_allocObject();
  *(result + 64) = v12;
  *(result + 72) = &protocol witness table for RealAssetInterface;
  *(result + 80) = 0;
  *(result + 16) = v4;
  *(result + 24) = v8;
  *(result + 32) = v9;
  *(result + 40) = v13;
  return result;
}

uint64_t sub_275B6FF28()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33B40);
  __swift_project_value_buffer(v0, qword_280A33B40);
  type metadata accessor for XpcSubscriptionClientProtocolServer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33BC0, &unk_275B7F190);
  return sub_275B7A97C();
}

uint64_t sub_275B6FFA4()
{
  result = sub_275B7AB2C();
  qword_280A33B58 = result;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.request(_:withReply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v6 = sub_275B7A96C();
  __swift_project_value_buffer(v6, qword_280A33B40);
  sub_275B7A91C();
  v7 = *MEMORY[0x277D7F508];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  XpcSubscriptionClientProtocolServer.request(_:withReply:)((a1 + v7), sub_275B701C0, v8);
}

void sub_275B700FC(uint64_t a1, void (*a2)(void))
{
  v4 = sub_275B797EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  sub_275B77C9C(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F580]);
  v7 = objc_allocWithZone(sub_275B796DC());
  v8 = sub_275B796CC();
  a2();
}

uint64_t XpcSubscriptionClientProtocolServer.request(_:withReply:)(char *a1, uint64_t a2, uint64_t a3)
{
  v23 = *v3;
  v24 = a2;
  v22[0] = sub_275B797EC();
  MEMORY[0x28223BE20](v22[0], v6);
  v22[1] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B7970C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v13 = sub_275B7A96C();
  __swift_project_value_buffer(v13, qword_280A33B40);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_275B7B09C();

  v25 = 0xD000000000000022;
  v26 = 0x8000000275B86BA0;
  v14 = sub_275B796FC();
  MEMORY[0x277C89240](v14);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  sub_275B7AA9C();
  v15 = sub_275B7AA8C();
  sub_275B77C9C(a1, v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F530]);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_275B77AB0(v12, v19 + v16, MEMORY[0x277D7F530]);
  *(v19 + v17) = v15;
  v20 = (v19 + v18);
  *v20 = v24;
  v20[1] = a3;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;

  sub_275B70CB4(a1, sub_275B70B9C, v19);
}

uint64_t sub_275B70828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v22[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F8, &unk_275B7D090);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v22 - v8;
  sub_275B77BD4(a1, v22 - v8, &qword_280A334F8, &unk_275B7D090);
  v10 = sub_275B7971C();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_275B29CD4(v9, &qword_280A334F8, &unk_275B7D090);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_275B77C3C(v9, MEMORY[0x277D7F538]);
    v12 = 0xE000000000000000;
    if (EnumCaseMultiPayload)
    {
      v11 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      MEMORY[0x277C89240](0x5B3D726F72726520, 0xE800000000000000);
      sub_275B797EC();
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      v11 = v23;
      v12 = v24;
    }
  }

  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v14 = sub_275B7A96C();
  __swift_project_value_buffer(v14, qword_280A33B40);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_275B7B09C();

  v23 = 0xD000000000000020;
  v24 = 0x8000000275B86DA0;
  v15 = sub_275B796FC();
  MEMORY[0x277C89240](v15);

  MEMORY[0x277C89240](2109021, 0xE300000000000000);
  v16 = v23;
  v17 = v24;
  v23 = 0;
  v24 = 0xE000000000000000;
  v18 = MEMORY[0x277C89240](0x6E6F697461727564, 0xEA00000000005B3DLL);
  v22[1] = (*(*a3 + 96))(v18);
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  v19 = v23;
  v20 = v24;
  v23 = v16;
  v24 = v17;

  MEMORY[0x277C89240](v19, v20);

  MEMORY[0x277C89240](v11, v12);

  sub_275B7A91C();

  return (v22[0])(a1);
}

uint64_t sub_275B70B9C(uint64_t a1)
{
  v3 = *(sub_275B7970C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_275B70828(a1, v1 + v4, v6, v7);
}

uint64_t sub_275B70C54(uint64_t a1, uint64_t a2)
{
  swift_getErrorValue();
  sub_275B7B21C();
  return sub_275B79C3C();
}

uint64_t sub_275B70CB4(char *a1, void (*a2)(char *), uint64_t a3)
{
  v217 = a3;
  v218 = a2;
  v4 = sub_275B7A3FC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v211 = (v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_275B7A2AC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v212 = (v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_275B7A5AC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v209 = v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v194 = v190 - v15;
  v16 = sub_275B7A6FC();
  v192 = *(v16 - 8);
  v193 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v195 = v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_275B7A10C();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v208 = (v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_275B7A0CC();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v206 = (v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_275B7A58C();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v202 = (v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = sub_275B79E2C();
  MEMORY[0x28223BE20](v203, v28);
  v214 = v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_275B7A17C();
  MEMORY[0x28223BE20](v30 - 8, v31);
  v210 = v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_275B79B3C();
  MEMORY[0x28223BE20](v33 - 8, v34);
  v199 = (v190 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_275B79E5C();
  MEMORY[0x28223BE20](v36 - 8, v37);
  v204 = (v190 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_275B79D7C();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v205 = (v190 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_275B7A7FC();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v197 = (v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_275B79BCC();
  MEMORY[0x28223BE20](v45 - 8, v46);
  v196 = v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_275B7989C();
  MEMORY[0x28223BE20](v201, v48);
  v216 = v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_275B797EC();
  MEMORY[0x28223BE20](v50, v51);
  v198 = v190 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v200 = v190 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = v190 - v58;
  MEMORY[0x28223BE20](v60, v61);
  v191 = v190 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v66 = v190 - v65;
  MEMORY[0x28223BE20](v67, v68);
  v70 = v190 - v69;
  MEMORY[0x28223BE20](v71, v72);
  v207 = v190 - v73;
  v74 = sub_275B79DDC();
  MEMORY[0x28223BE20](v74 - 8, v75);
  v213 = v190 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B98, &qword_275B7F188);
  MEMORY[0x28223BE20](v77 - 8, v78);
  v80 = v190 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81, v82);
  v84 = v190 - v83;
  sub_275B77BD4(a1, v190 - v83, &qword_280A33B98, &qword_275B7F188);
  v85 = sub_275B796EC();
  v86 = (*(*(v85 - 8) + 48))(v84, 1, v85);
  if (v86 == 1)
  {
    MEMORY[0x28223BE20](v86, v87);
    v190[-2] = a1;
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    sub_275B7968C();
    v218(v70);
    v88 = MEMORY[0x277D7F580];
    v89 = v70;
LABEL_3:
    sub_275B77C3C(v89, v88);
  }

  else
  {
    v190[1] = v50;
    sub_275B77BD4(v84, v80, &qword_280A33B98, &qword_275B7F188);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v91 = v70;
    v92 = v216;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v190[0] = v84;
        sub_275B77AB0(v80, v213, MEMORY[0x277D7F628]);
        v138 = sub_275B79CFC();
        v140 = *v138;
        v139 = v138[1];
        type metadata accessor for DaemonStateManager();
        v141 = swift_allocObject();
        *(v141 + 16) = v140;
        *(v141 + 24) = v139;

        v142 = sub_275B35FEC();
        if (v143)
        {
          v142 = sub_275B7A98C();
          v215 = v144;
        }

        else
        {
          v215 = 0;
        }

        type metadata accessor for MobileAssetLocalManager();
        v168 = swift_allocObject();
        type metadata accessor for ModelProvider();
        v169 = swift_allocObject();
        *(v169 + 16) = v168;
        v171 = *v138;
        v170 = v138[1];
        v172 = swift_allocObject();
        *(v172 + 16) = v171;
        *(v172 + 24) = v170;
        type metadata accessor for MLDelayProvider(0);
        v173 = swift_allocObject();
        *(v173 + 16) = v169;
        *(v173 + 24) = v172;
        sub_275B77B8C(&qword_280A33438, MEMORY[0x277D7F598], MEMORY[0x277D7F590]);

        v174 = v219;
        sub_275B7968C();
        if (!v174)
        {
          sub_275B77AB0(v92, v173 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo, MEMORY[0x277D7F598]);

          type metadata accessor for NewOfferAPI();
          inited = swift_initStackObject();
          v176 = v215;
          inited[4] = v142;
          inited[5] = v176;
          inited[2] = v141;
          inited[3] = v173;
          inited[6] = sub_275B49EF0;
          inited[7] = 0;
          v177 = v207;
          v178 = v213;
          NewOfferAPI.getResponse(request:)(v213, v207);
          swift_setDeallocating();

          v218(v177);
          sub_275B77C3C(v177, MEMORY[0x277D7F580]);
          v163 = MEMORY[0x277D7F628];
          v164 = v178;
          goto LABEL_49;
        }

        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      case 2:
        v129 = v84;
        v130 = v205;
        sub_275B77AB0(v80, v205, MEMORY[0x277D7F618]);
        v131 = type metadata accessor for RealBiomeManager();
        v132 = swift_allocObject();
        type metadata accessor for FeaturesAPI();
        v133 = swift_initStackObject();
        v133[2] = v132;
        v134 = v133 + 2;
        v133[5] = v131;
        v133[6] = &protocol witness table for RealBiomeManager;
        v135 = v204;
        v136 = v219;
        FeaturesAPI.getResponse(request:)(v130, v204);
        if (v136)
        {
          sub_275B77C3C(v130, MEMORY[0x277D7F618]);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v134);
        }

        else
        {
          swift_setDeallocating();
          v165 = __swift_destroy_boxed_opaque_existential_1(v134);
          MEMORY[0x28223BE20](v165, v166);
          v190[-2] = v135;
          sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
          v167 = v191;
          sub_275B7968C();
          sub_275B77C3C(v135, MEMORY[0x277D7F640]);
          v218(v167);
          sub_275B77C3C(v167, MEMORY[0x277D7F580]);
          sub_275B77C3C(v130, MEMORY[0x277D7F618]);
        }

        v84 = v129;
        return sub_275B29CD4(v84, &qword_280A33B98, &qword_275B7F188);
      case 3:
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        sub_275B7968C();
        v218(v70);
        sub_275B77C3C(v70, MEMORY[0x277D7F580]);
        v88 = MEMORY[0x277D7F520];
        v89 = v80;
        goto LABEL_3;
      case 4:
        v116 = v199;
        sub_275B77AB0(v80, v199, MEMORY[0x277D7F5B8]);
        v117 = v219;
        XpcSubscriptionClientProtocolServer.handleData(_:_:)(v116, 0, v59);
        if (!v117)
        {
          v218(v59);
          sub_275B77C3C(v59, MEMORY[0x277D7F580]);
        }

        v118 = MEMORY[0x277D7F5B8];
        goto LABEL_34;
      case 5:
        v145 = sub_275B79CFC();
        v147 = *v145;
        v146 = v145[1];
        type metadata accessor for DaemonStateManager();
        v148 = swift_allocObject();
        *(v148 + 16) = v147;
        *(v148 + 24) = v146;

        v149 = sub_275B35FEC();
        if (v150)
        {
          v149 = sub_275B7A98C();
          v152 = v151;
        }

        else
        {
          v152 = 0;
        }

        v179 = v218;
        type metadata accessor for NotificationPendingAPI();
        v180 = swift_initStackObject();
        v180[2] = v148;
        v180[3] = v149;
        v180[4] = v152;
        NotificationPendingAPI.getResponse()();

        v179(v66);
        sub_275B77C3C(v66, MEMORY[0x277D7F580]);
        sub_275B77C3C(v80, MEMORY[0x277D7F520]);
        return sub_275B29CD4(v84, &qword_280A33B98, &qword_275B7F188);
      case 6:
        v156 = v80;
        v157 = v210;
        v158 = sub_275B77AB0(v156, v210, MEMORY[0x277D7F6D8]);
        MEMORY[0x28223BE20](v158, v159);
        v190[-2] = v157;
        sub_275B77B8C(&qword_280A33BA0, MEMORY[0x277D7F638], MEMORY[0x277D7F630]);
        v160 = v214;
        v161 = v219;
        sub_275B7968C();
        v219 = v161;
        _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC12persistStateyy01iabC4Core0egI0VFZ_0(v160);
        v190[0] = v84;
        if (!off_28140EB68)
        {
          if (qword_280A32C78 != -1)
          {
            swift_once();
          }

          v181 = sub_275B7A96C();
          __swift_project_value_buffer(v181, qword_280A33338);
          v182 = sub_275B7A93C();
          _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(v182);
        }

        v183 = v218;
        sub_275B7A16C();
        v184 = sub_275B7AB2C();

        sub_275B66D40(v184, 0);

        MEMORY[0x28223BE20](v185, v186);
        v187 = v214;
        v190[-2] = v214;
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        v188 = v200;
        sub_275B7968C();
        sub_275B77C3C(v187, MEMORY[0x277D7F638]);
        v183(v188);
        sub_275B77C3C(v188, MEMORY[0x277D7F580]);
        v163 = MEMORY[0x277D7F6D8];
        v164 = v157;
        goto LABEL_49;
      case 7:
        v127 = v202;
        sub_275B77AB0(v80, v202, MEMORY[0x277D7F7A8]);
        XpcSubscriptionClientProtocolServer.handleDisplayDelayedOffer(_:)(v127, v91);
        v218(v91);
        sub_275B77C3C(v91, MEMORY[0x277D7F580]);
        v128 = MEMORY[0x277D7F7A8];
        goto LABEL_31;
      case 8:
        sub_275B77C3C(v80, MEMORY[0x277D7F520]);
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        v116 = v70;
        sub_275B7968C();
        v218(v70);
        v118 = MEMORY[0x277D7F580];
LABEL_34:
        v88 = v118;
        v89 = v116;
        goto LABEL_3;
      case 9:
        v127 = v206;
        sub_275B77AB0(v80, v206, MEMORY[0x277D7F6A8]);
        XpcSubscriptionClientProtocolServer.handleActivityClear(_:)();
        v218(v91);
        sub_275B77C3C(v91, MEMORY[0x277D7F580]);
        v128 = MEMORY[0x277D7F6A8];
        goto LABEL_31;
      case 10:
        v127 = v208;
        sub_275B77AB0(v80, v208, MEMORY[0x277D7F6C0]);
        XpcSubscriptionClientProtocolServer.handleGetBiomeStream(_:)();
        v218(v91);
        sub_275B77C3C(v91, MEMORY[0x277D7F580]);
        v128 = MEMORY[0x277D7F6C0];
LABEL_31:
        v88 = v128;
        v89 = v127;
        goto LABEL_3;
      case 11:
        v94 = v197;
        sub_275B77AB0(v80, v197, MEMORY[0x277D7F838]);
        v111 = sub_275B79CFC();
        v112 = v70;
        v114 = *v111;
        v113 = v111[1];
        type metadata accessor for DaemonStateManager();
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *(v115 + 24) = v113;
        type metadata accessor for NotificationStateWriteAPI();
        *(swift_initStackObject() + 16) = v115;

        NotificationStateWriteAPI.getResponse(request:)(v112);

        v218(v112);
        sub_275B77C3C(v112, MEMORY[0x277D7F580]);
        v100 = MEMORY[0x277D7F838];
        goto LABEL_9;
      case 12:
        sub_275B77C3C(v80, MEMORY[0x277D7F520]);
        v190[0] = v84;
        if (qword_28140D970)
        {

          v119 = v194;
          SystemActivityHistoryManager.readHistory()(v194);

          v121 = v192;
          v120 = v193;
          v122 = (*(v192 + 48))(v119, 1, v193);
          v123 = v195;
          if (v122 != 1)
          {
            v124 = sub_275B77AB0(v119, v195, MEMORY[0x277D7F7D0]);
            v126 = v218;
            goto LABEL_38;
          }
        }

        else
        {
          v121 = v192;
          v120 = v193;
          v119 = v194;
          (*(v192 + 56))(v194, 1, 1, v193);
          v123 = v195;
        }

        sub_275B7A6EC();
        v124 = (*(v121 + 48))(v119, 1, v120);
        v126 = v218;
        if (v124 != 1)
        {
          v124 = sub_275B29CD4(v119, &qword_280A33AB0, &qword_275B7EFA8);
        }

LABEL_38:
        MEMORY[0x28223BE20](v124, v125);
        v190[-2] = v123;
        sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        v162 = v198;
        sub_275B7968C();
        sub_275B77C3C(v123, MEMORY[0x277D7F7D0]);
        v126(v162);
        v163 = MEMORY[0x277D7F580];
        v164 = v162;
LABEL_49:
        sub_275B77C3C(v164, v163);
        v84 = v190[0];
        break;
      case 13:
        v153 = v209;
        v154 = sub_275B77AB0(v80, v209, MEMORY[0x277D7F7B0]);
        v155 = sub_275B6FDC8(v154);
        type metadata accessor for MobileAssetDownloadAPI();
        *(swift_initStackObject() + 16) = v155;
        MobileAssetDownloadAPI.getResponse(request:)();

        v218(v70);
        sub_275B77C3C(v70, MEMORY[0x277D7F580]);
        v88 = MEMORY[0x277D7F7B0];
        v89 = v153;
        goto LABEL_3;
      case 14:
        v101 = v212;
        sub_275B77AB0(v80, v212, MEMORY[0x277D7F750]);
        type metadata accessor for MobileAssetLocalManager();
        v102 = v70;
        v103 = swift_allocObject();
        v104 = swift_allocObject();
        v105 = [objc_opt_self() defaultManager];
        type metadata accessor for ShadowModeModelProvider();
        v106 = swift_allocObject();
        v106[4] = 0;
        v106[5] = 0xE000000000000000;
        v106[2] = v104;
        v106[3] = v105;
        type metadata accessor for ShadowEvaluationAPI();
        v107 = swift_initStackObject();
        v108 = MEMORY[0x277D84F90];
        v107[4] = MEMORY[0x277D84F90];
        v107[5] = v108;
        v109 = type metadata accessor for RealBiomeManager();
        v110 = swift_allocObject();
        v107[9] = v109;
        v107[10] = &protocol witness table for RealBiomeManager;
        v107[6] = v110;
        v107[2] = v103;
        v107[3] = v106;
        ShadowEvaluationAPI.getResponse(request:)(v101, v102);
        swift_setDeallocating();

        __swift_destroy_boxed_opaque_existential_1(v107 + 6);
        v218(v102);
        sub_275B77C3C(v102, MEMORY[0x277D7F580]);
        v88 = MEMORY[0x277D7F750];
        v89 = v101;
        goto LABEL_3;
      case 15:
        v137 = sub_275B6FDC8(EnumCaseMultiPayload);
        type metadata accessor for MobileAssetGetVersionAPI();
        *(swift_initStackObject() + 16) = v137;
        MobileAssetGetVersionAPI.getResponse()();

        v218(v70);
        sub_275B77C3C(v70, MEMORY[0x277D7F580]);
        v88 = MEMORY[0x277D7F520];
        v89 = v80;
        goto LABEL_3;
      case 16:
        v94 = v211;
        sub_275B77AB0(v80, v211, MEMORY[0x277D7F778]);
        v95 = sub_275B79CFC();
        v96 = v70;
        v98 = *v95;
        v97 = v95[1];
        type metadata accessor for DaemonStateManager();
        v99 = swift_allocObject();
        *(v99 + 16) = v98;
        *(v99 + 24) = v97;
        type metadata accessor for DeleteDaemonStateAPI();
        *(swift_initStackObject() + 16) = v99;

        DeleteDaemonStateAPI.getResponse(_:)(v94);
        swift_setDeallocating();

        v218(v96);
        sub_275B77C3C(v96, MEMORY[0x277D7F580]);
        v100 = MEMORY[0x277D7F778];
LABEL_9:
        v88 = v100;
        v89 = v94;
        goto LABEL_3;
      default:
        v93 = v196;
        sub_275B77AB0(v80, v196, MEMORY[0x277D7F5C8]);
        type metadata accessor for PingAPI();
        swift_initStackObject();
        PingAPI.getResponse(request:)(v93);
        v218(v70);
        sub_275B77C3C(v70, MEMORY[0x277D7F580]);
        v88 = MEMORY[0x277D7F5C8];
        v89 = v93;
        goto LABEL_3;
    }
  }

  return sub_275B29CD4(v84, &qword_280A33B98, &qword_275B7F188);
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityHistory(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AB0, &qword_275B7EFA8);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13[-v2];
  v4 = sub_275B7A6FC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140D970)
  {

    SystemActivityHistoryManager.readHistory()(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_275B77AB0(v3, v9, MEMORY[0x277D7F7D0]);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4, v7);
  }

  sub_275B7A6EC();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_275B29CD4(v3, &qword_280A33AB0, &qword_275B7EFA8);
  }

LABEL_7:
  v10 = sub_275B797EC();
  MEMORY[0x28223BE20](v10, v11);
  *&v13[-16] = v9;
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
  sub_275B7968C();
  return sub_275B77C3C(v9, MEMORY[0x277D7F7D0]);
}

uint64_t sub_275B72A74(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A23C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33B90, MEMORY[0x277D7F740], MEMORY[0x277D7F730]);
  sub_275B7968C();
  return sub_275B7975C();
}

void XpcSubscriptionClientProtocolServer.handleGetBiomeStream(_:)()
{
  v3 = *v2;
  sub_275B7A0FC();
  v4 = sub_275B7AB6C();
  sub_275B7A0EC();
  v5 = sub_275B7AB6C();
  v6 = sub_275B7A0DC();
  v8 = v7;
  sub_275B7AA9C();
  v29 = sub_275B7AA8C();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  v30 = swift_allocObject();
  *(v30 + 16) = MEMORY[0x277D84F90];
  if ((v8 & 1) != 0 && v6)
  {
    if (v6 == 1)
    {
      v11 = [BiomeLibrary() iCloud];
      swift_unknownObjectRelease();
      v12 = [v11 Subscription];
      swift_unknownObjectRelease();
      v13 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v4, v5, 0);
      v14 = [v12 publisherWithOptions_];

      v35 = sub_275B77D3C;
      v36 = v9;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_275B0C864;
      v34 = &block_descriptor_21_0;
      v15 = _Block_copy(&aBlock);

      v16 = swift_allocObject();
      *(v16 + 16) = v30;
      *(v16 + 24) = v3;
      v35 = sub_275B76C4C;
      v36 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_275B0A330;
      v34 = &block_descriptor_27_1;
    }

    else
    {
      v19 = [BiomeLibrary() Notification];
      swift_unknownObjectRelease();
      v20 = [v19 Usage];
      swift_unknownObjectRelease();
      v21 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v4, v5, 0);
      v22 = [v20 publisherWithOptions_];

      v35 = sub_275B73340;
      v36 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_275B0B1C0;
      v34 = &block_descriptor_12;
      v23 = _Block_copy(&aBlock);
      v14 = [v22 filterWithIsIncluded_];
      _Block_release(v23);

      v35 = sub_275B76C00;
      v36 = v9;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_275B0C864;
      v34 = &block_descriptor_12_1;
      v15 = _Block_copy(&aBlock);

      v24 = swift_allocObject();
      *(v24 + 16) = v30;
      *(v24 + 24) = v3;
      v35 = sub_275B76C1C;
      v36 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_275B0A330;
      v34 = &block_descriptor_18_0;
    }

    v17 = _Block_copy(&aBlock);

    v25 = [v14 sinkWithCompletion:v15 receiveInput:v17];
    _Block_release(v17);
    _Block_release(v15);
  }

  else
  {
    if (qword_280A32E50 != -1)
    {
      swift_once();
    }

    v18 = sub_275B7A96C();
    __swift_project_value_buffer(v18, qword_280A33B40);
    aBlock = 0;
    v32 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000036, 0x8000000275B86BD0);
    sub_275B7A10C();
    sub_275B7B0EC();
    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();
  }

  swift_beginAccess();
  if (*v10)
  {
    v26 = *v10;
    [v26 state];
    v27 = sub_275B797EC();
    MEMORY[0x28223BE20](v27, v28);
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    sub_275B7968C();
  }

  else
  {
    sub_275B797EC();
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    sub_275B7968C();
  }
}

uint64_t sub_275B73340(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 bundleID];

    if (v3)
    {
      v4 = sub_275B7AD0C();
      v6 = v5;

      if (v4 == 0xD000000000000019 && 0x8000000275B7F610 == v6)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = sub_275B7B1BC();
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

id sub_275B73410(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_275B73474(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  [a1 timestamp];
  v7 = sub_275B7AB8C();
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    v10 = a4(v7, v8);
    v12 = v11;
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_275B11064(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_275B11064((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v10;
    *(v17 + 5) = v12;
    *(a2 + 16) = v13;
    swift_endAccess();
  }
}

uint64_t sub_275B735A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B79C5C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B736BC(uint64_t a1, uint64_t a2)
{
  sub_275B7B09C();
  v3 = MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B86D40);
  (*(*a2 + 96))(v3);
  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B737A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_275B79C5C();
  MEMORY[0x28223BE20](v3, v4);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B7389C(uint64_t a1, void *a2)
{
  sub_275B7B09C();

  v7 = [a2 error];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
  v3 = sub_275B7AFBC();
  v5 = v4;

  MEMORY[0x277C89240](v3, v5);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B73994(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A21C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33B88, MEMORY[0x277D7F710], MEMORY[0x277D7F708]);
  sub_275B7968C();
  return sub_275B7973C();
}

uint64_t sub_275B73A9C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;

  *a1 = v4;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityClear(_:)()
{
  if (sub_275B7A09C())
  {
    if (!off_28140DC78)
    {
      if (qword_280A32CA8 != -1)
      {
        swift_once();
      }

      v0 = sub_275B7A96C();
      __swift_project_value_buffer(v0, qword_280A33420);
      sub_275B7A93C();
      v1 = sub_275B79CFC();
      v3 = *v1;
      v2 = v1[1];
      type metadata accessor for DaemonStateManager();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v2;
      type metadata accessor for DelayedNotificationActivity();
      swift_allocObject();

      off_28140DC78 = sub_275B25BF8(v5, sub_275B26124, 0);
    }

    sub_275B68E44();
  }

  if (sub_275B7A0BC())
  {
    if (!off_28140EB68)
    {
      if (qword_280A32C78 != -1)
      {
        swift_once();
      }

      v6 = sub_275B7A96C();
      __swift_project_value_buffer(v6, qword_280A33338);
      v7 = sub_275B7A93C();
      _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(v7);
    }

    sub_275B68E44();
  }

  if (sub_275B7A0AC())
  {
    if (!off_28140DAE0)
    {
      if (qword_28140DAC0 != -1)
      {
        swift_once();
      }

      v8 = sub_275B7A96C();
      __swift_project_value_buffer(v8, qword_28140DAC8);
      sub_275B7A93C();
      _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
    }

    sub_275B68E44();
  }

  sub_275B797EC();
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
  return sub_275B7968C();
}

uint64_t XpcSubscriptionClientProtocolServer.handleActivityStatus(_:)()
{
  sub_275B797EC();
  sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
  return sub_275B7968C();
}

uint64_t sub_275B73F08(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A20C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33B70, MEMORY[0x277D7F700], MEMORY[0x277D7F6F8]);
  sub_275B7968C();
  return sub_275B7972C();
}

uint64_t sub_275B74008(uint64_t *a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_275B7A1DC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v44 - v8;
  v10 = sub_275B7A1FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v46 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v44 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v44 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B78, &qword_275B7F178);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = *(v11 + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_275B7F130;
  if (off_28140EB68)
  {
    v24 = off_28140EB68;
  }

  else
  {
    if (qword_280A32C78 != -1)
    {
      swift_once();
    }

    v25 = sub_275B7A96C();
    __swift_project_value_buffer(v25, qword_280A33338);
    v26 = sub_275B7A93C();
    v24 = _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(v26);
  }

  v45 = v23;
  v51 = v23 + v22;
  v27 = sub_275B77B8C(&qword_280A33B60, MEMORY[0x277D7F6F0], MEMORY[0x277D7F6E0]);

  v49 = v27;
  sub_275B7968C();
  v44[1] = v2;
  sub_275B7AB2C();
  sub_275B7AA9C();
  v28 = sub_275B7AA8C();
  v24[49] = 1;
  sub_275B68C7C();
  if (v24[49] == 1)
  {
    do
    {
      (*(*v28 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((v24[49] & 1) != 0);
  }

  if (v24[48] != 2)
  {
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v9, v48, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v9, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v21, v51, MEMORY[0x277D7F6F0]);

  if (off_28140DC78)
  {
    v29 = off_28140DC78;
  }

  else
  {
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_275B7A96C();
    __swift_project_value_buffer(v30, qword_280A33420);
    sub_275B7A93C();
    v31 = sub_275B79CFC();
    v33 = *v31;
    v32 = v31[1];
    type metadata accessor for DaemonStateManager();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    type metadata accessor for DelayedNotificationActivity();
    swift_allocObject();

    v29 = sub_275B25BF8(v35, sub_275B26124, 0);
    off_28140DC78 = v29;
  }

  sub_275B7968C();
  v36 = sub_275B7AA8C();
  *(v29 + 49) = 1;
  sub_275B68C7C();
  if (*(v29 + 49) == 1)
  {
    do
    {
      (*(*v36 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((*(v29 + 49) & 1) != 0);
  }

  if (*(v29 + 48) != 2)
  {
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v9, v48, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v9, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v17, v51 + v50, MEMORY[0x277D7F6F0]);

  v37 = v46;
  if (off_28140DAE0)
  {
    v38 = off_28140DAE0;
  }

  else
  {
    if (qword_28140DAC0 != -1)
    {
      swift_once();
    }

    v39 = sub_275B7A96C();
    __swift_project_value_buffer(v39, qword_28140DAC8);
    sub_275B7A93C();
    v38 = _s33iCloudSubscriptionOptimizerDaemon27MobileAssetDownloadActivityC10initSharedACyFZ_0();
  }

  sub_275B7968C();
  v40 = sub_275B7AA8C();
  v38[49] = 1;
  sub_275B68C7C();
  if (v38[49] == 1)
  {
    do
    {
      (*(*v40 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((v38[49] & 1) != 0);
  }

  v41 = v45;
  if (v38[48] != 2)
  {
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v9, v48, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    sub_275B77C3C(v9, MEMORY[0x277D7F6E8]);
  }

  sub_275B77AB0(v37, v51 + 2 * v50, MEMORY[0x277D7F6F0]);

  v42 = v47;

  *v42 = v41;
  return result;
}

uint64_t XpcSubscriptionClientProtocolServer.getActivityStatus(_:)(uint64_t a1)
{
  v2 = sub_275B7A1DC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v12[-v8];
  sub_275B7A1FC();
  sub_275B77B8C(&qword_280A33B60, MEMORY[0x277D7F6F0], MEMORY[0x277D7F6E0]);
  sub_275B7968C();
  sub_275B7AB2C();
  sub_275B7AA9C();
  v10 = sub_275B7AA8C();
  *(a1 + 49) = 1;
  sub_275B68C7C();
  if (*(a1 + 49) == 1)
  {
    do
    {
      (*(*v10 + 96))();
      if (sub_275B7AACC())
      {
        break;
      }

      sub_275B7AB2C();
      sub_275B7AB0C();
    }

    while ((*(a1 + 49) & 1) != 0);
  }

  if (*(a1 + 48) != 2)
  {
    sub_275B7A19C();
    sub_275B7AB1C();
    sub_275B7A1CC();
    sub_275B7A1AC();
    sub_275B7AABC();
    sub_275B7A1BC();
    sub_275B77C9C(v9, v5, MEMORY[0x277D7F6E8]);
    sub_275B7A1EC();
    return sub_275B77C3C(v9, MEMORY[0x277D7F6E8]);
  }

  return result;
}

uint64_t sub_275B74B7C(uint64_t a1, uint64_t a2)
{

  sub_275B7A18C();
  return sub_275B7A19C();
}

void XpcSubscriptionClientProtocolServer.handleDisplayDelayedOffer(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = *v2;
  v4 = sub_275B7A88C();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B79F4C();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v58 - v14;
  if (qword_280A32E50 != -1)
  {
    swift_once();
  }

  v16 = sub_275B7A96C();
  __swift_project_value_buffer(v16, qword_280A33B40);
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B86C10);
  sub_275B7A58C();
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v63 = (v18 + 16);
  if (sub_275B7A55C())
  {
    v61 = sub_275B7A08C();
    v20 = v19;
  }

  else
  {
    sub_275B79F3C();
    v21 = sub_275B7A57C();
    if (v21)
    {
      v23 = sub_275B7A56C();
      v25 = v24;

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        MEMORY[0x28223BE20](v21, v22);
        *(&v58 - 2) = a1;
        sub_275B77B8C(&qword_280A33B68, MEMORY[0x277D7F670], MEMORY[0x277D7F668]);
        sub_275B7968C();
        v21 = sub_275B76D64(v11, v15);
      }
    }

    MEMORY[0x28223BE20](v21, v22);
    *(&v58 - 2) = v15;
    sub_275B77B8C(&qword_280A33440, MEMORY[0x277D7F868], MEMORY[0x277D7F860]);
    sub_275B7968C();
    v61 = sub_275B7A07C();
    v20 = v27;
    sub_275B77C3C(v7, MEMORY[0x277D7F868]);
    sub_275B77C3C(v15, MEMORY[0x277D7F670]);
  }

  v28 = type metadata accessor for ICloudNotificationXpcClient();
  v29 = swift_allocObject();
  v30 = sub_275B79CFC();
  v32 = *v30;
  v31 = v30[1];
  type metadata accessor for DaemonStateManager();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  v34 = qword_280A32C38;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = static BackingOffINDNotifier.kDefaultBackoffDuration;
  type metadata accessor for BackingOffINDNotifier();
  v36 = swift_allocObject();
  v36[2] = v29;
  v36[5] = v28;
  v36[6] = &off_2884AA078;
  v36[7] = v33;
  v36[8] = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = v18;
  *(v37 + 24) = v17;
  swift_retain_n();
  v38 = v17;
  BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()();
  if (v39)
  {
    v40 = v63;
    swift_beginAccess();
    v41 = *(v18 + 16);
    *(v18 + 16) = v39;
    v42 = v39;
    v43 = v39;

    dispatch_group_leave(v38);
  }

  else
  {
    v44 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v60 = v18;
    v45 = v36[5];
    v46 = v36[6];
    v58 = __swift_project_boxed_opaque_existential_1(v36 + 2, v45);
    v47 = swift_allocObject();
    v59 = v38;
    v48 = v20;
    v49 = v47;
    v47[2] = sub_275B76CD0;
    v47[3] = v37;
    v47[4] = v36;
    v47[5] = v44;
    v50 = *(v46 + 8);

    v50(v61, v48, sub_275B282C8, v49, v45, v46);

    v38 = v59;

    v40 = v63;
  }

  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  if (sub_275B7AF6C())
  {
    v51 = sub_275B797EC();
    MEMORY[0x28223BE20](v51, v52);
    *(&v58 - 2) = v62;
    sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
    sub_275B7968C();
  }

  else
  {
    swift_beginAccess();
    v53 = *v40;
    if (*v40)
    {
      v54 = sub_275B797EC();
      MEMORY[0x28223BE20](v54, v55);
      v56 = v62;
      *(&v58 - 2) = v53;
      *(&v58 - 1) = v56;
      v57 = v53;
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
      sub_275B7968C();
    }

    else
    {
      sub_275B797EC();
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
      sub_275B7968C();
    }
  }
}

uint64_t sub_275B75444(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A14C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33448, MEMORY[0x277D7F6D0], MEMORY[0x277D7F6C8]);
  sub_275B7968C();
  return sub_275B7A87C();
}

uint64_t sub_275B7554C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79F4C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B7A11C();
  sub_275B7A13C();
  sub_275B77C9C(a2, v6, MEMORY[0x277D7F670]);
  return sub_275B7A12C();
}

void sub_275B75604(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

uint64_t sub_275B75670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_275B79C5C();
  MEMORY[0x28223BE20](v4, v5);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B75778(uint64_t a1, uint64_t a2)
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B86C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](8285, 0xE200000000000000);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x656D697420646E61, 0xED00005B3D74756FLL);
  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);

  MEMORY[0x277C89240](0, 0xE000000000000000);

  return sub_275B79C3C();
}

uint64_t sub_275B75984(uint64_t a1, uint64_t (*a2)(void), void (*a3)(double), uint64_t (*a4)(char *))
{
  v6 = a2(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v12 - v9;
  a3(v8);
  return a4(v10);
}

uint64_t sub_275B75A28()
{
  v0 = sub_275B79C5C();
  MEMORY[0x28223BE20](v0, v1);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B75B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v8 = a3(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v13 - v10;
  sub_275B77C9C(a2, &v13 - v10, a4);
  return a5(v11);
}

uint64_t XpcSubscriptionClientProtocolServer.handleData(_:_:)@<X0>(char **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_275B797EC();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B79C0C();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_275B79ADC())
  {
    type metadata accessor for PetDataAPI();
    *(swift_initStackObject() + 16) = a2 & 1;
    result = PetDataAPI.getResponse(request:)(a1, v14);
    if (!v3)
    {
      MEMORY[0x28223BE20](result, v16);
      *(&v17 - 2) = v14;
      sub_275B77B8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
      sub_275B7968C();
      return sub_275B77C3C(v14, MEMORY[0x277D7F5D0]);
    }
  }

  else
  {
    type metadata accessor for PflDataAPI();
    swift_allocObject();
    result = PflDataAPI.init()();
    if (!v3)
    {
      PflDataAPI.getResponse(request:)(a1, v10);

      return sub_275B77AB0(v10, a3, MEMORY[0x277D7F580]);
    }
  }

  return result;
}

uint64_t sub_275B75E04()
{
  v0 = sub_275B79E7C();
  MEMORY[0x28223BE20](v0, v1);
  sub_275B77B8C(&qword_280A33BA8, MEMORY[0x277D7F650], MEMORY[0x277D7F648]);
  sub_275B7968C();
  return sub_275B797CC();
}

uint64_t sub_275B75EF4(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v27 = &v26 - v9;
  v10 = sub_275B79ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_275B79CFC();
  v16 = *v14;
  v15 = v14[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = v15;
  v18 = *(v11 + 56);
  v18(v6, 1, 1, v10);
  v19 = qword_28140F988;

  if (v19 != -1)
  {
    v20 = swift_once();
  }

  v22 = off_28140F990;
  v23 = MEMORY[0x28223BE20](v20, v21);
  *(&v26 - 2) = v6;
  *(&v26 - 1) = inited;
  (*(*v22 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v23);
  if (v2)
  {

    swift_setDeallocating();

    sub_275B29CD4(v6, &qword_280A330F8, &qword_275B7C9A0);
    v24 = v27;
    v18(v27, 1, 1, v10);
  }

  else
  {
    swift_setDeallocating();

    v24 = v27;
    sub_275B0952C(v6, v27);
    if ((*(v11 + 48))(v24, 1, v10) != 1)
    {
      sub_275B77AB0(v24, v26, MEMORY[0x277D7F5A8]);
      return sub_275B79E6C();
    }
  }

  sub_275B79AAC();
  if ((*(v11 + 48))(v24, 1, v10) != 1)
  {
    sub_275B29CD4(v24, &qword_280A330F8, &qword_275B7C9A0);
  }

  return sub_275B79E6C();
}

uint64_t sub_275B7625C()
{
  sub_275B7A15C();
  sub_275B79E0C();
  sub_275B7A16C();
  sub_275B79E1C();
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7A16C();
  sub_275B7AB2C();
  sub_275B7ABBC();
  sub_275B7AB5C();
  return sub_275B79DFC();
}

uint64_t sub_275B762FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A22C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33BB0, MEMORY[0x277D7F728], MEMORY[0x277D7F718]);
  sub_275B7968C();
  return sub_275B7974C();
}

uint64_t sub_275B76404(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B79C5C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B77B8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B7650C()
{
  sub_275B7B09C();

  sub_275B7970C();
  sub_275B77B8C(&qword_280A33BB8, MEMORY[0x277D7F530], MEMORY[0x277D7F528]);
  v0 = sub_275B7965C();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B76688(uint64_t a1)
{
  v2 = v1;
  v3 = sub_275B181A0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_275B2CA18();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_275B767C0(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_275B7671C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_275B182A0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_275B2CD08();
      v9 = v11;
    }

    sub_275B189EC(*(v9 + 48) + 40 * v7);
    sub_275B17B40((*(v9 + 56) + 32 * v7), a2);
    sub_275B76954(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_275B767C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275B7B02C() + 1) & ~v5;
    do
    {
      sub_275B7B26C();
      sub_275B7B28C();
      result = sub_275B7B2AC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 4 * v3);
        v12 = (v10 + 4 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_275B76954(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275B7B02C() + 1) & ~v5;
    do
    {
      sub_275B18990(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_275B7B03C();
      result = sub_275B189EC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_275B76AF8()
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000026, 0x8000000275B86CB0);
  if (qword_280A32E58 != -1)
  {
    swift_once();
  }

  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  return sub_275B79C3C();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B76D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79F4C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B76EAC(uint64_t a1, id a2)
{
  v3 = [a2 jsonDictionary];
  v4 = sub_275B7AC8C();

  *(&v23 + 1) = 0xEF73696C6C694D70;
  v5 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v6 = sub_275B7AB5C();
  v24 = MEMORY[0x277D84A28];
  *&v23 = v6;
  sub_275B17B40(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, isUniquelyReferenced_nonNull_native);
  sub_275B189EC(v25);
  *&v23 = 0x6D617473656D6974;
  *(&v23 + 1) = 0xEF79747465725070;
  sub_275B7B05C();
  v8 = sub_275B7AB7C();
  v24 = v5;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  sub_275B17B40(&v23, v22);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, v10);
  sub_275B189EC(v25);
  v11 = v4;
  *&v23 = 0xD000000000000021;
  *(&v23 + 1) = 0x8000000275B86CE0;
  sub_275B7B05C();
  [a2 iCloudSubscriptionEventType];
  v12 = BMiCloudSubscriptionEventTypeAsString();
  v13 = sub_275B7AD0C();
  v15 = v14;

  v24 = v5;
  *&v23 = v13;
  *(&v23 + 1) = v15;
  sub_275B17B40(&v23, v22);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v22, v25, v16);
  sub_275B189EC(v25);
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B80, &qword_275B7F180);
  v25[0] = v11;
  v17 = sub_275B7AA7C();
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (!v19)
  {
    v20 = [a2 debugDescription];
    v17 = sub_275B7AD0C();
  }

  return v17;
}

uint64_t sub_275B77148(uint64_t a1, void *a2)
{
  *(&v66 + 1) = 0xEF73696C6C694D70;
  v3 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v4 = sub_275B7AB5C();
  v67 = MEMORY[0x277D84A28];
  *&v66 = v4;
  sub_275B17B40(&v66, v65);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v5;
  sub_275B2C67C(v65, v68, isUniquelyReferenced_nonNull_native);
  sub_275B189EC(v68);
  v7 = v69;
  *&v66 = 0x6D617473656D6974;
  *(&v66 + 1) = 0xEF79747465725070;
  sub_275B7B05C();
  v8 = sub_275B7AB7C();
  v67 = v3;
  *&v66 = v8;
  *(&v66 + 1) = v9;
  sub_275B17B40(&v66, v65);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v65, v68, v10);
  sub_275B189EC(v68);
  v69 = v7;
  strcpy(&v66, "uniqueID");
  BYTE9(v66) = 0;
  WORD5(v66) = 0;
  HIDWORD(v66) = -402653184;
  sub_275B7B05C();
  v11 = [a2 uniqueID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_275B7AD0C();
    v15 = v14;

    v67 = v3;
    *&v66 = v13;
    *(&v66 + 1) = v15;
    sub_275B17B40(&v66, v65);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v65, v68, v16);
    sub_275B189EC(v68);
    v69 = v7;
  }

  else
  {
    sub_275B7671C(v68, &v66);
    sub_275B29CD4(&v66, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v68);
  }

  strcpy(&v66, "notificationId");
  HIBYTE(v66) = -18;
  v17 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v18 = [a2 notificationID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_275B7AD0C();
    v22 = v21;

    v67 = v17;
    *&v66 = v20;
    *(&v66 + 1) = v22;
    sub_275B17B40(&v66, v65);
    v23 = v69;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v65, v68, v24);
    sub_275B189EC(v68);
    v69 = v23;
  }

  else
  {
    sub_275B7671C(v68, &v66);
    sub_275B29CD4(&v66, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v68);
  }

  strcpy(&v66, "bundleID");
  BYTE9(v66) = 0;
  WORD5(v66) = 0;
  HIDWORD(v66) = -402653184;
  v25 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v26 = [a2 bundleID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_275B7AD0C();
    v30 = v29;

    v67 = v25;
    *&v66 = v28;
    *(&v66 + 1) = v30;
    sub_275B17B40(&v66, v65);
    v31 = v69;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v65, v68, v32);
    sub_275B189EC(v68);
    v69 = v31;
  }

  else
  {
    sub_275B7671C(v68, &v66);
    sub_275B29CD4(&v66, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v68);
  }

  strcpy(&v66, "threadId");
  BYTE9(v66) = 0;
  WORD5(v66) = 0;
  HIDWORD(v66) = -402653184;
  v33 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v34 = [a2 threadID];
  if (v34)
  {
    v35 = v34;
    v36 = sub_275B7AD0C();
    v38 = v37;

    v67 = v33;
    *&v66 = v36;
    *(&v66 + 1) = v38;
    sub_275B17B40(&v66, v65);
    v39 = v69;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v65, v68, v40);
    sub_275B189EC(v68);
    v69 = v39;
  }

  else
  {
    sub_275B7671C(v68, &v66);
    sub_275B29CD4(&v66, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v68);
  }

  *&v66 = 0x656C746974;
  *(&v66 + 1) = 0xE500000000000000;
  v41 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v42 = [a2 title];
  if (v42)
  {
    v43 = v42;
    v44 = sub_275B7AD0C();
    v46 = v45;

    v67 = v41;
    *&v66 = v44;
    *(&v66 + 1) = v46;
    sub_275B17B40(&v66, v65);
    v47 = v69;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C67C(v65, v68, v48);
    sub_275B189EC(v68);
  }

  else
  {
    sub_275B7671C(v68, &v66);
    sub_275B29CD4(&v66, &qword_280A334F0, &qword_275B7D048);
    sub_275B189EC(v68);
    v47 = v69;
  }

  strcpy(&v66, "usageType");
  WORD5(v66) = 0;
  HIDWORD(v66) = -385875968;
  v49 = MEMORY[0x277D837D0];
  sub_275B7B05C();
  v50 = [a2 usageType];
  v67 = MEMORY[0x277D849A8];
  LODWORD(v66) = v50;
  sub_275B17B40(&v66, v65);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v65, v68, v51);
  sub_275B189EC(v68);
  v52 = v47;
  *&v66 = 0x7079546567617375;
  *(&v66 + 1) = 0xEF79747465725065;
  sub_275B7B05C();
  if (qword_280A32C70 != -1)
  {
    swift_once();
  }

  v53 = static BiomeNotificationStream.kUsageTypeValueMap;
  v54 = [a2 usageType];
  if (*(v53 + 16) && (v55 = sub_275B181A0(v54), (v56 & 1) != 0))
  {
    v57 = *(*(v53 + 56) + 16 * v55);
    v67 = v49;

    if (v58)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v67 = v49;
  }

  v58 = 0xE600000000000000;
  v57 = 0x73726568744FLL;
LABEL_24:
  *&v66 = v57;
  *(&v66 + 1) = v58;
  sub_275B17B40(&v66, v65);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C67C(v65, v68, v59);
  sub_275B189EC(v68);
  v68[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33B80, &qword_275B7F180);
  v68[0] = v52;
  v60 = sub_275B7AA7C();
  v62 = v61;
  __swift_destroy_boxed_opaque_existential_1(v68);
  if (!v62)
  {
    v63 = [a2 debugDescription];
    v60 = sub_275B7AD0C();
  }

  return v60;
}

uint64_t sub_275B77AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B77B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275B77BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_275B77C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B77C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t XpcSubscriptionServer.__allocating_init()()
{
  v0 = swift_allocObject();
  XpcSubscriptionServer.init()();
  return v0;
}

uint64_t sub_275B77DAC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140FA58);
  __swift_project_value_buffer(v0, qword_28140FA58);
  type metadata accessor for XpcSubscriptionServer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33BC8, &qword_275B7F1D8);
  return sub_275B7A97C();
}

uint64_t sub_275B77E28()
{
  v0 = sub_275B79D2C();
  v2 = *v0;
  v1 = v0[1];
  static XpcSubscriptionServer.kServiceName = v2;
  *algn_28140FCE8 = v1;
}

uint64_t *XpcSubscriptionServer.kServiceName.unsafeMutableAddressor()
{
  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  return &static XpcSubscriptionServer.kServiceName;
}

uint64_t static XpcSubscriptionServer.kServiceName.getter()
{
  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  v0 = static XpcSubscriptionServer.kServiceName;

  return v0;
}

uint64_t XpcSubscriptionServer.init()()
{
  v1 = v0;
  if (qword_28140FA50 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140FA58);
  sub_275B7B09C();

  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  v3 = static XpcSubscriptionServer.kServiceName;
  v4 = *algn_28140FCE8;
  MEMORY[0x277C89240](static XpcSubscriptionServer.kServiceName, *algn_28140FCE8);
  MEMORY[0x277C89240](0x6E657473696C205DLL, 0xEB000000002E7265);
  sub_275B7A91C();

  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XpcSubscriptionServerDelegate()) init];
  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = sub_275B7ACDC();
  v7 = [v5 initWithMachServiceName_];

  *(v1 + 24) = v7;
  [v7 setDelegate_];
  sub_275B7B09C();

  MEMORY[0x277C89240](v3, v4);
  MEMORY[0x277C89240](0xD00000000000001BLL, 0x8000000275B86DF0);
  sub_275B7A91C();

  return v1;
}

Swift::Void __swiftcall XpcSubscriptionServer.runAsync()()
{
  [*(v0 + 24) resume];
  if (qword_28140FA50 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140FA58);
  sub_275B7B09C();

  if (qword_28140FA78 != -1)
  {
    swift_once();
  }

  MEMORY[0x277C89240](static XpcSubscriptionServer.kServiceName, *algn_28140FCE8);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B86E10);
  sub_275B7A91C();
}

uint64_t XpcSubscriptionServer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B78334()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140FA90);
  __swift_project_value_buffer(v0, qword_28140FA90);
  type metadata accessor for XpcSubscriptionServerDelegate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A33C30, &unk_275B7F200);
  return sub_275B7A97C();
}

id XpcSubscriptionServerDelegate.__deallocating_deinit()
{
  if (qword_28140FA80 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140FA90);
  sub_275B7A91C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for XpcSubscriptionServerDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_275B78638(void *a1)
{
  if (qword_28140FA80 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140FA90);
  sub_275B7B09C();

  v3 = [a1 description];
  v4 = sub_275B7AD0C();
  v6 = v5;

  MEMORY[0x277C89240](v4, v6);

  sub_275B7A91C();

  v7 = sub_275B79D1C();
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_275B2D0F4(a1, v8, v9);

  if (v10)
  {
    v11 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];

    type metadata accessor for XpcSubscriptionClientProtocolServer();
    v12 = swift_allocObject();
    type metadata accessor for EventLoggingXpcSubscriptionClient();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    [a1 setExportedObject_];
    [a1 resume];
    sub_275B7A91C();
  }

  else
  {
    sub_275B7B09C();

    v15 = *v7;
    v14 = v7[1];

    MEMORY[0x277C89240](v15, v14);

    MEMORY[0x277C89240](8285, 0xE200000000000000);
    sub_275B7B09C();

    v16 = [a1 description];
    v17 = sub_275B7AD0C();
    v19 = v18;

    MEMORY[0x277C89240](v17, v19);

    MEMORY[0x277C89240](11869, 0xE200000000000000);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B86FA0);

    sub_275B7A95C();
  }

  return v10 & 1;
}

uint64_t XpcSubscriptionServerError.hashValue.getter()
{
  sub_275B7B26C();
  MEMORY[0x277C89720](0);
  return sub_275B7B2AC();
}

unint64_t sub_275B78A14()
{
  result = qword_280A33C40;
  if (!qword_280A33C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33C40);
  }

  return result;
}

void sub_275B78A78(void *a1)
{
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v14 - v10;
  sub_275B78ED8();
  sub_275B496E8();
  (*(v4 + 16))(v7, v11, v3);
  v12 = sub_275B47DEC(v7, a1);
  if (v1)
  {
    (*(v4 + 8))(v11, v3);
  }

  else
  {
    v13 = v12;
    (*(v4 + 8))(v11, v3);

    type metadata accessor for BundledNotificationDelaySamePropensities();
    *(swift_allocObject() + 16) = v13;
  }
}

uint64_t sub_275B78E7C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_275B78ED8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_275B7ACDC();
  v2 = sub_275B7ACDC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_275B794BC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275B78FD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B7902C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33C48, &qword_275B7F3A8);
    v3 = sub_275B7B08C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_275B7AD0C();
      sub_275B7B26C();
      v27 = v7;
      sub_275B7AD7C();
      v8 = sub_275B7B2AC();

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
        v16 = sub_275B7AD0C();
        v18 = v17;
        if (v16 == sub_275B7AD0C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_275B7B1BC();

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

uint64_t sub_275B79220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
    v3 = sub_275B7B08C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_275B7B26C();

      sub_275B7AD7C();
      result = sub_275B7B2AC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_275B7B1BC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}