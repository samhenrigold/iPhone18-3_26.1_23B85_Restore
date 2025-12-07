void sub_1C567B25C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2 >> 62 && sub_1C584FB90() < 0)
  {
    __break(1u);
  }

  else
  {

    v9 = a1;
    sub_1C567C028(0, 0, v9);

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v11 = *(*v5 + 80);
    sub_1C5633060(a3, a4);
    v11(a2, sub_1C567C114, v10);
  }
}

void sub_1C567B388()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1C584FB90())
  {
    if (sub_1C584FB90())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1C694A320](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1C584FB90();
LABEL_13:
      if (v3)
      {
        sub_1C567CE58(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1C567B460(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedService];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5867970;
    *(v8 + 32) = a1;
    sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
    v9 = a1;
    v10 = sub_1C584F750();

    v11 = [v7 ticketForRefreshingEVChargersWithIdentifiers:v10 traits:0];

    if (v11)
    {
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = a2;
      v12[4] = a3;
      v15[4] = sub_1C567C1A8;
      v15[5] = v12;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1C567AB00;
      v15[3] = &block_descriptor_15_0;
      v13 = _Block_copy(v15);
      v14 = v9;
      swift_unknownObjectRetain();
      sub_1C5633060(a2, a3);

      [v11 submitRefreshRequestWithHandler:v13 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C567B644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedService];
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 defaultTraits];

  v12 = [objc_allocWithZone(MEMORY[0x1E69A2570]) init];
  v13 = v12;
  v21 = v12;
  if (v12)
  {
    [v12 setSearchImplicitType_];
    v13 = v21;
  }

  [v11 setSearchImplicitFilterInfo_];
  if (v11)
  {
    [v11 setSearchOriginationType_];
  }

  v14 = [v8 sharedService];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  v16 = sub_1C584F630();
  v17 = [v15 searchAroundPOITicketWithIdentifier:a1 categoryID:v16 maxResults:100 traits:v11];

  if (v17)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a4;
    v18[4] = a5;
    aBlock[4] = sub_1C567C810;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C567AB00;
    aBlock[3] = &block_descriptor_21;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v20 = a1;
    sub_1C5633060(a4, a5);

    [v17 submitWithHandler:v19 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v19);
  }

  else
  {
  }
}

void sub_1C567B8FC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  if (!a2 && a1 && sub_1C567A9F4(a1))
  {
    if (v4)
    {
      v4();
    }
  }

  else
  {
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C584F2C0();
    __swift_project_value_buffer(v5, qword_1EC18FAC8);
    v6 = a2;
    v7 = sub_1C584F2A0();
    v8 = sub_1C584F9B0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_1C5620000, v7, v8, "mapItem fetching error:%@", v9, 0xCu);
      sub_1C567CCE0(v10);
      MEMORY[0x1C694B7A0](v10, -1, -1);
      MEMORY[0x1C694B7A0](v9, -1, -1);
    }

    if (v4)
    {
      (v4)(0, a2);
    }
  }
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C567BADC()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FAC8);
  __swift_project_value_buffer(v0, qword_1EC18FAC8);
  type metadata accessor for MUMapItemFetcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E938, &unk_1C586A730);
  sub_1C584F680();
  return sub_1C584F2B0();
}

void sub_1C567BB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(v2 + 16);
  if (a2 || !a1 || (v5 = *(v2 + 32), (v6 = sub_1C567A9F4(a1)) == 0))
  {
    if (qword_1EC17CBC0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  v7 = v6;
  v30 = v4;
  v29 = v6 >> 62;
  if (v6 >> 62)
  {
    v3 = sub_1C584FB90();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_30:
    if (v29)
    {
      v26 = sub_1C584FB90();
    }

    else
    {
      v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v30;
    if (v26 == 1 && v3)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C694A320](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v27 = *(v7 + 32);
      }

      v31 = v27;

LABEL_39:
      v28 = v31;
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    else
    {

      v28 = 0;
      if (!v30)
      {
LABEL_43:

        return;
      }
    }

    v32 = v28;
    v16();
    v28 = v32;
    goto LABEL_43;
  }

  v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_6:
  v4 = (v7 & 0xC000000000000001);
  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    if (!v4)
    {
      break;
    }

    v10 = MEMORY[0x1C694A320](v8 - 4, v7);
    v11 = (v8 - 3);
    if (__OFADD__(v9, 1))
    {
      goto LABEL_26;
    }

LABEL_14:
    v31 = v10;
    v12 = [v10 identifier];
    if (v12)
    {
      v13 = v12;
      sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
      v14 = v5;
      v15 = sub_1C584FAC0();

      if (v15)
      {

        v16 = v30;
        goto LABEL_39;
      }
    }

    ++v8;
    if (v11 == v3)
    {
      goto LABEL_30;
    }
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v10 = *(v7 + 8 * v8);
  v11 = (v8 - 3);
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v17 = sub_1C584F2C0();
  __swift_project_value_buffer(v17, qword_1EC18FAC8);
  v18 = v3;
  v19 = sub_1C584F2A0();
  v20 = sub_1C584F9B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    if (v3)
    {
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v21 + 4) = v24;
    *v22 = v25;
    _os_log_impl(&dword_1C5620000, v19, v20, "mapItem fetching error:%@", v21, 0xCu);
    sub_1C567CCE0(v22);
    MEMORY[0x1C694B7A0](v22, -1, -1);
    MEMORY[0x1C694B7A0](v21, -1, -1);
  }

  if (v4)
  {
    (v4)(0, v3);
  }
}

char *sub_1C567BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C584FB90();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C584FB90();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1C567C028(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1C584FB90();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result, 1);

  return sub_1C567BEFC(v7, v6, 1, v4);
}

void sub_1C567C114(uint64_t a1, uint64_t a2)
{
  if (!a2 && a1)
  {
    v3 = *(v2 + 16);

    sub_1C567B388();
    v5 = v4;
    if (v3)
    {
      v3(v4, a1);
    }

    else
    {
    }
  }
}

void sub_1C567C1A8(uint64_t a1, id a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v6 = a2;
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C584F2C0();
    __swift_project_value_buffer(v7, qword_1EC18FAC8);
    v8 = a2;
    v9 = v3;
    v10 = sub_1C584F2A0();
    v11 = sub_1C584F9B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134218242;
      *(v12 + 4) = [v9 muid];

      *(v12 + 12) = 2112;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1C5620000, v10, v11, "Error downloading map item with identifier:%llu. Error: %@", v12, 0x16u);
      sub_1C567CCE0(v13);
      MEMORY[0x1C694B7A0](v13, -1, -1);
      MEMORY[0x1C694B7A0](v12, -1, -1);

      if (!v4)
      {
LABEL_22:
        v28 = a2;

LABEL_24:

        return;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_22;
      }
    }

    v27 = a2;
    v4(0, a2);

    goto LABEL_22;
  }

  if (a1)
  {
    v16 = sub_1C567A9F4(a1);
    if (v16)
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v34 = v16;
        v35 = sub_1C584FB90();
        v16 = v34;
        if (v35)
        {
          goto LABEL_11;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C694A320](0);
        }

        else
        {
          if (!*(v17 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v18 = *(v16 + 32);
        }

        v42 = v18;
        v19 = [v18 _geoMapItem];
        if (v19)
        {
          v20 = v19;

          v21 = [v20 _evCharger];
          swift_unknownObjectRelease();
          if (!v21)
          {
            if (qword_1EC17CBC0 != -1)
            {
              swift_once();
            }

            v29 = sub_1C584F2C0();
            __swift_project_value_buffer(v29, qword_1EC18FAC8);
            v30 = v3;
            v31 = sub_1C584F2A0();
            v32 = sub_1C584F9B0();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 134217984;
              *(v33 + 4) = [v30 muid];

              _os_log_impl(&dword_1C5620000, v31, v32, "downloaded mapItem doesn't have charger availability information. mapItem identifier:%llu ", v33, 0xCu);
              MEMORY[0x1C694B7A0](v33, -1, -1);
            }

            else
            {

              v31 = v30;
            }

            if (v4)
            {
              v4(0, 0);
            }

            goto LABEL_34;
          }

          if (qword_1EC17CBC0 == -1)
          {
LABEL_17:
            v22 = sub_1C584F2C0();
            __swift_project_value_buffer(v22, qword_1EC18FAC8);
            v23 = v3;
            v24 = sub_1C584F2A0();
            v25 = sub_1C584F990();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 134217984;
              *(v26 + 4) = [v23 muid];

              _os_log_impl(&dword_1C5620000, v24, v25, "downloaded new availability for muid: %llu", v26, 0xCu);
              MEMORY[0x1C694B7A0](v26, -1, -1);

              if (!v4)
              {
                goto LABEL_34;
              }
            }

            else
            {

              if (!v4)
              {
LABEL_34:
                v28 = v42;
LABEL_35:

                goto LABEL_24;
              }
            }

            v41 = v42;
            v4(v42, 0);

            v28 = v41;
            goto LABEL_35;
          }

LABEL_50:
          swift_once();
          goto LABEL_17;
        }

        __break(1u);
        return;
      }
    }
  }

  if (qword_1EC17CBC0 != -1)
  {
    swift_once();
  }

  v36 = sub_1C584F2C0();
  __swift_project_value_buffer(v36, qword_1EC18FAC8);
  v37 = v3;
  v38 = sub_1C584F2A0();
  v39 = sub_1C584F9B0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = [v37 muid];

    _os_log_impl(&dword_1C5620000, v38, v39, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v40, 0xCu);
    MEMORY[0x1C694B7A0](v40, -1, -1);

    if (!v4)
    {
      return;
    }
  }

  else
  {

    if (!v4)
    {
      return;
    }
  }

  v4(0, 0);
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C567C810(uint64_t a1, id a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v6 = a2;
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C584F2C0();
    __swift_project_value_buffer(v7, qword_1EC18FAC8);
    v8 = a2;
    v9 = v3;
    v10 = sub_1C584F2A0();
    v11 = sub_1C584F9B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134218242;
      *(v12 + 4) = [v9 muid];

      *(v12 + 12) = 2112;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1C5620000, v10, v11, "Error downloading map item with identifier:%llu. Error: %@", v12, 0x16u);
      sub_1C567CCE0(v13);
      MEMORY[0x1C694B7A0](v13, -1, -1);
      MEMORY[0x1C694B7A0](v12, -1, -1);

      if (!v4)
      {
LABEL_21:
        v24 = a2;

LABEL_23:

        return;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v25 = a2;
    v4(0, a2);

    goto LABEL_21;
  }

  if (a1)
  {
    v16 = sub_1C567A9F4(a1);
    if (v16)
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v26 = v16;
        v27 = sub_1C584FB90();
        v16 = v26;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C694A320](0);
LABEL_14:
          v34 = v18;

          if (qword_1EC17CBC0 != -1)
          {
            swift_once();
          }

          v19 = sub_1C584F2C0();
          __swift_project_value_buffer(v19, qword_1EC18FAC8);
          v20 = v3;
          v21 = sub_1C584F2A0();
          v22 = sub_1C584F990();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 134217984;
            *(v23 + 4) = [v20 muid];

            _os_log_impl(&dword_1C5620000, v21, v22, "Fetched mapItem for nearby places for muid: %llu", v23, 0xCu);
            MEMORY[0x1C694B7A0](v23, -1, -1);

            if (v4)
            {
LABEL_18:
              v33 = v34;
              v4(v34, 0);

              v24 = v33;
              goto LABEL_26;
            }
          }

          else
          {

            if (v4)
            {
              goto LABEL_18;
            }
          }

          v24 = v34;
LABEL_26:

          goto LABEL_23;
        }

        if (*(v17 + 16))
        {
          v18 = *(v16 + 32);
          goto LABEL_14;
        }

        __break(1u);
        return;
      }
    }
  }

  if (qword_1EC17CBC0 != -1)
  {
    swift_once();
  }

  v28 = sub_1C584F2C0();
  __swift_project_value_buffer(v28, qword_1EC18FAC8);
  v29 = v3;
  v30 = sub_1C584F2A0();
  v31 = sub_1C584F9B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = [v29 muid];

    _os_log_impl(&dword_1C5620000, v30, v31, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v32, 0xCu);
    MEMORY[0x1C694B7A0](v32, -1, -1);

    if (!v4)
    {
      return;
    }
  }

  else
  {

    if (!v4)
    {
      return;
    }
  }

  v4(0, 0);
}

uint64_t sub_1C567CCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E670, &qword_1C586A030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C567CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C584FB90();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C584FB90();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C567CE58(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C584FB90();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result, 1);

  return sub_1C567CD48(v5, v3, 0);
}

id BoxLayout.__allocating_init(container:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v8[1] = MEMORY[0x1E69E7CC0];
  v3 = *MEMORY[0x1E69DC5C0];
  v4 = *(MEMORY[0x1E69DC5C0] + 16);
  v9 = vdupq_n_s64(0xC0000000uLL);
  v10 = v3;
  v11 = v4;
  *&v2[OBJC_IVAR___MUBoxLayoutInternal_builder] = sub_1C562370C(v8);

  v6 = sub_1C562389C(v5, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v6;
}

id BoxLayout.init(container:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v7[1] = MEMORY[0x1E69E7CC0];
  v2 = *MEMORY[0x1E69DC5C0];
  v3 = *(MEMORY[0x1E69DC5C0] + 16);
  v8 = vdupq_n_s64(0xC0000000uLL);
  v9 = v2;
  v10 = v3;
  *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder) = sub_1C562370C(v7);

  v5 = sub_1C562389C(v4, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1C567D1F4()
{
  sub_1C5623A68(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C567D244(v2);
  return Strong;
}

uint64_t sub_1C567D30C(uint64_t a1)
{
  sub_1C5623A68(v4);
  swift_unknownObjectWeakAssign();
  sub_1C567D378(v4, v3);
  sub_1C5623B40(v3, v1);
  swift_unknownObjectRelease();
  return sub_1C567D244(v4);
}

uint64_t sub_1C567D3B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C567D40C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1C567D470(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C567D244(v4);
  *(v4 + 128) = Strong;
  return sub_1C567D50C;
}

void sub_1C567D50C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    v3 = swift_unknownObjectWeakAssign();
    sub_1C567D378(v3, v2 + 64);
    sub_1C5623B40(v2 + 64, v4);
    swift_unknownObjectRelease();
    sub_1C567D244(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5623A68(*a1);
    v5 = swift_unknownObjectWeakAssign();
    sub_1C567D378(v5, v2 + 64);
    sub_1C5623B40(v2 + 64, v6);
    swift_unknownObjectRelease();
    sub_1C567D244(v2);
  }

  free(v2);
}

uint64_t sub_1C567D5D4()
{
  sub_1C5623A68(v2);
  v0 = v2[1];

  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567D624(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_1C567D708(v3, v8);
      sub_1C56250A4(v8, v7);
      sub_1C567D740(v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(v7);
      if (Strong)
      {
        [Strong _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
        swift_unknownObjectRelease();
      }

      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_1C5623A68(v8);

  v9 = a1;
  sub_1C567D378(v8, v7);
  sub_1C5623B40(v7, v5);
  return sub_1C567D244(v8);
}

void (*sub_1C567D770(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  sub_1C5623A68(v3);
  v5 = *(v4 + 8);

  sub_1C567D244(v4);
  *(v4 + 64) = v5;
  return sub_1C567D80C;
}

void sub_1C567D80C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {

    sub_1C567D624(v4);
  }

  else
  {
    sub_1C567D624(v3);
  }

  free(v2);
}

uint64_t sub_1C567D870@<X0>(void *a1@<X8>)
{
  sub_1C5623A68(v4);
  v2 = v4[2];
  result = sub_1C567D244(v4);
  *a1 = v2;
  return result;
}

uint64_t sub_1C567D8BC(uint64_t *a1)
{
  v1 = *a1;
  sub_1C5623A68(v5);
  v6 = v1;
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

void (*sub_1C567D918(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 16);
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567D9AC;
}

void sub_1C567D9AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  v1[2] = v2;
  sub_1C567D378(v1, (v1 + 8));
  sub_1C5623B40((v1 + 8), v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567DA7C()
{
  sub_1C5623A68(v2);
  v0 = sub_1C57243F4();
  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567DB5C(uint64_t a1)
{
  sub_1C5623A68(v5);
  sub_1C572440C(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

uint64_t sub_1C567DBD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

void (*sub_1C567DC88(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57243F4();
  sub_1C567D244(v4);
  *(v4 + 128) = v5;
  return sub_1C567DD24;
}

void sub_1C567DD24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C572440C(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567DE04()
{
  sub_1C5623A68(v2);
  v0 = sub_1C5724830();
  sub_1C567D244(v2);
  return v0 & 1;
}

uint64_t sub_1C567DEE4(uint64_t a1)
{
  sub_1C5623A68(v5);
  sub_1C5724854(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

uint64_t sub_1C567DF5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C567E014(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724830();
  sub_1C567D244(v4);
  *(v4 + 136) = v5 & 1;
  return sub_1C567E0B4;
}

void sub_1C567E0B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C5724854(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

float sub_1C567E1A0()
{
  sub_1C5623A68(v2);
  v0 = sub_1C5724800();
  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567E290(float a1)
{
  sub_1C5623A68(v5);
  sub_1C57248B8(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

void (*sub_1C567E3C4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724800();
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567E468;
}

void sub_1C567E468(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C57248B8(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567E4EC@<X0>(void *a1@<X8>)
{
  sub_1C5623A68(v4);
  v2 = v4[3];
  result = sub_1C567D244(v4);
  *a1 = v2;
  return result;
}

uint64_t sub_1C567E538(uint64_t *a1)
{
  v1 = *a1;
  sub_1C5623A68(v5);
  v6 = v1;
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

void (*sub_1C567E594(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 24);
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567E628;
}

void sub_1C567E628(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  v1[3] = v2;
  sub_1C567D378(v1, (v1 + 8));
  sub_1C5623B40((v1 + 8), v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567E6F8()
{
  sub_1C5623A68(v2);
  v0 = sub_1C57243F4();
  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567E7D8(uint64_t a1)
{
  sub_1C5623A68(v5);
  sub_1C572440C(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

uint64_t sub_1C567E850@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void (*sub_1C567E914(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57243F4();
  sub_1C567D244(v4);
  *(v4 + 128) = v5;
  return sub_1C567E9B0;
}

void sub_1C567E9B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C572440C(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567EA90()
{
  sub_1C5623A68(v2);
  v0 = sub_1C5724830();
  sub_1C567D244(v2);
  return v0 & 1;
}

uint64_t sub_1C567EB70(uint64_t a1)
{
  sub_1C5623A68(v5);
  sub_1C5724854(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

uint64_t sub_1C567EBE8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C567ECB0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724830();
  sub_1C567D244(v4);
  *(v4 + 136) = v5 & 1;
  return sub_1C567ED50;
}

void sub_1C567ED50(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C5724854(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

float sub_1C567EE3C()
{
  sub_1C5623A68(v2);
  v0 = sub_1C5724800();
  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567EF2C(float a1)
{
  sub_1C5623A68(v5);
  sub_1C57248B8(a1);
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C567D244(v5);
}

void (*sub_1C567F070(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724800();
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567F114;
}

void sub_1C567F114(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C57248B8(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v3);
  sub_1C567D244(v1);

  free(v1);
}

double sub_1C567F20C()
{
  sub_1C5623A68(v2);
  v0 = *&v2[4];
  sub_1C567D244(v2);
  return v0;
}

uint64_t sub_1C567F30C(double a1, double a2, double a3, double a4)
{
  sub_1C5623A68(v11);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v8);
  return sub_1C567D244(v11);
}

void sub_1C567F388(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C567F454(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C567D244(v4);
  v4[8] = v6;
  v4[9] = v7;
  return sub_1C567F4F8;
}

void sub_1C567F4F8(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 144);
  v4 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  v1[2] = v4;
  v1[3] = v3;
  sub_1C567D378(v1, (v1 + 4));
  sub_1C5623B40((v1 + 4), v2);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567F56C(uint64_t a1)
{
  sub_1C5662408();
  sub_1C584F5F0();
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  type metadata accessor for UIOffset(0);
  sub_1C5682E20(&qword_1EC16E950, type metadata accessor for UIOffset, &protocol conformance descriptor for UIOffset);
  sub_1C584F5F0();
  sub_1C5682E68();
  sub_1C584F5F0();
  return sub_1C584F5F0();
}

uint64_t sub_1C567F6C4()
{
  sub_1C584FEA0();
  sub_1C567F56C(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C567F708(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C567F56C(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C567F748()
{
  v1 = v0;
  sub_1C56250A4(v0, v51);
  v52 = 0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v40[0] = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v3, 0);
    v4 = v40[0];
    v5 = v2 + 32;
    do
    {
      sub_1C567D708(v5, v42);
      sub_1C56250A4(v42, v53);
      LOBYTE(v54) = 0;
      v6 = v43;
      v7 = v44;
      v8 = v45;
      v9 = v46;
      v10 = v47;
      v11 = v48;
      v61 = v49;
      v12 = sub_1C5633434();
      sub_1C563E43C(v53, &v61, &type metadata for LayoutItemSpecification, v12, v60, v6, v7, v8, v9, v10, v11);
      sub_1C567D740(v42);
      v40[0] = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C5675B20((v13 > 1), v14 + 1, 1);
        v4 = v40[0];
      }

      *(v4 + 16) = v14 + 1;
      sub_1C5683AE4(v60, v4 + 80 * v14 + 32);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  v60[0] = v1[2];
  v15 = v1[4];
  v16 = v1[5];
  v17 = v1[6];
  v18 = v1[7];
  sub_1C5688A00(v51, 1, v4, v60, v42, v15, v16, v17, v18);
  sub_1C56250A4(v1, v40);
  v41 = 0;
  v19 = *(v1 + 1);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v38 = v16;
    v39 = v15;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v20, 0);
    v22 = v61;
    v23 = v19 + 32;
    do
    {
      sub_1C567D708(v23, v53);
      sub_1C56250A4(v53, v51);
      v52 = 0;
      v24 = *&v53[1];
      v25 = v54;
      v26 = v55;
      v27 = v56;
      v28 = v57;
      v29 = v58;
      v50 = v59;
      v30 = sub_1C5633434();
      sub_1C563E43C(v51, &v50, &type metadata for LayoutItemSpecification, v30, v60, v24, v25, v26, v27, v28, v29);
      sub_1C567D740(v53);
      v61 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C5675B20((v31 > 1), v32 + 1, 1);
        v22 = v61;
      }

      *(v22 + 16) = v32 + 1;
      sub_1C5683AE4(v60, v22 + 80 * v32 + 32);
      v23 += 72;
      --v20;
    }

    while (v20);
    v16 = v38;
    v15 = v39;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v53[0] = v1[3];
  v33 = sub_1C5688A00(v40, 0, v22, v53, v60, v15, v16, v17, v18);
  v53[0] = v21;
  v34 = sub_1C5687648(v33);
  v35 = sub_1C5650E8C(v34);
  v36 = sub_1C5687648(v35);
  sub_1C5650E8C(v36);
  sub_1C5675B40(v60);
  sub_1C5675B40(v42);
  return v53[0];
}

uint64_t sub_1C567FA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_1C567D708(v3, v13);
      sub_1C567D708(v4, v8);
      if ((sub_1C5623E2C(v13, v8) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v9), vceqq_f64(v15, v10)))) & 1) == 0)
      {
        break;
      }

      v5 = v16 == v11 && v17 == v12;
      if (!v5 || (sub_1C563DF98() & 1) == 0)
      {
        break;
      }

      v6 = sub_1C563DF98();
      sub_1C567D740(v8);
      sub_1C567D740(v13);
      if (v6)
      {
        v3 += 72;
        v4 += 72;
        if (--v2)
        {
          continue;
        }
      }

      return v6 & 1;
    }

    sub_1C567D740(v8);
    sub_1C567D740(v13);
    goto LABEL_18;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_1C567FBCC(uint64_t a1)
{
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C5682BC0(a1, *(v1 + 8));
  sub_1C56760A0();
  sub_1C584F5F0();
  sub_1C584F5F0();
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C567FCD4()
{
  sub_1C584FEA0();
  sub_1C567FBCC(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C567FD18(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C567FBCC(v2);
  return sub_1C584FEF0();
}

id BoxLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoxLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BoxLayout.arrangedLayoutItems.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v10 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C567D708(v3, v9);
      sub_1C56250A4(v9, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(v8);
      v6 = sub_1C567D740(v9);
      if (Strong)
      {
        MEMORY[0x1C6949DF0](v6);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v4 = v10;
      }

      v3 += 72;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t BoxLayout.arrangedLayoutItems.setter(unint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v5 = result;
  if (a1 >> 62)
  {
LABEL_22:
    result = sub_1C584FB90();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_23:

    v9 = MEMORY[0x1E69E7CC0];
    return (*((*v3 & *v1) + 0x90))(v9);
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v3 = 0;
    v14 = v1;
    v16 = *MEMORY[0x1E69DC5C0];
    v17 = *(MEMORY[0x1E69DC5C0] + 16);
    v7 = *MEMORY[0x1E69DE258];
    v8 = *(MEMORY[0x1E69DE258] + 8);
    v9 = MEMORY[0x1E69E7CC0];
    v15 = vdupq_n_s64(0xFFFFFFFEuLL);
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C694A320](v3, a1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_1C56236C4();
      v1 = *(v5 + 16);
      if (v1)
      {
        v10 = 0;
        v11 = v5 + 32;
        while ((sub_1C5623E2C(v11, v24) & 1) == 0)
        {
          v10 = (v10 + 1);
          v11 += 72;
          if (v1 == v10)
          {
            goto LABEL_12;
          }
        }

        if (v10 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1C567D708(v11, v18);
      }

      else
      {
LABEL_12:
        sub_1C56250A4(v24, v18);
        v19 = v16;
        v20 = v17;
        v21 = v7;
        v22 = v8;
        v23 = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C5682898(0, v9[2] + 1, 1, v9);
      }

      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        v9 = sub_1C5682898((v12 > 1), v13 + 1, 1, v9);
      }

      swift_unknownObjectRelease();
      v9[2] = v13 + 1;
      sub_1C5682F88(v18, &v9[9 * v13 + 4]);
      v3 = (v3 + 1);
      sub_1C56260B4(v24);
      if (v3 == v6)
      {

        v1 = v14;
        v3 = MEMORY[0x1E69E7D40];
        return (*((*v3 & *v1) + 0x90))(v9);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t BoxLayout.addArrangedLayoutItem(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1C56236C4();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v4);
  v7 = v6 + 32;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    if (++v9 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v10 = v7 + 72;
    sub_1C567D708(v7, v18);
    v3 = sub_1C5623E2C(v18, v23);
    sub_1C567D740(v18);
    v7 = v10;
    if (v3)
    {

      return sub_1C56260B4(v23);
    }
  }

  sub_1C56250A4(v23, v18);
  v11 = *(MEMORY[0x1E69DC5C0] + 16);
  v19 = *MEMORY[0x1E69DC5C0];
  v20 = v11;
  v21 = *MEMORY[0x1E69DE258];
  v22 = vdupq_n_s64(0xFFFFFFFEuLL);
  v6 = (*((*v5 & *v2) + 0x98))(v17);
  v3 = v12;
  v2 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_12:
  v2 = sub_1C5682898(0, v2[2] + 1, 1, v2);
  *v3 = v2;
LABEL_7:
  v15 = v2[2];
  v14 = v2[3];
  if (v15 >= v14 >> 1)
  {
    v2 = sub_1C5682898((v14 > 1), v15 + 1, 1, v2);
    *v3 = v2;
  }

  v2[2] = v15 + 1;
  sub_1C5682F88(v18, &v2[9 * v15 + 4]);
  (v6)(v17, 0);
  return sub_1C56260B4(v23);
}

uint64_t BoxLayout.removeArrangedLayoutItem(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v8);
  v5 = v4;
  result = sub_1C56829E0(sub_1C5676118);
  v7 = *(*v5 + 16);
  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C56830B0(result, v7);
    v3(v8, 0);
    return sub_1C56260B4(v9);
  }

  return result;
}

uint64_t (*sub_1C56806B4@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(_BYTE *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1C567D708(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_1C567D740(v9);
      }

      if (v8)
      {
        return sub_1C5682F88(v9, a3);
      }

      result = sub_1C567D740(v9);
      v7 += 72;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = xmmword_1C586A740;
  }

  return result;
}

uint64_t sub_1C568077C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      v11 = sub_1C5676CD0(v10);
      if (v11)
      {
        break;
      }

      ++v9;
      v10 += 72;
      if (v8 == v9)
      {
        v9 = 0;
        break;
      }
    }

    v12 = v11 ^ 1;
  }

  else
  {
    v9 = 0;
    v12 = 1;
  }

  v13 = v12 & 1;

  if (v13)
  {
    sub_1C5683170(a1);
    swift_unknownObjectRelease();
    return sub_1C56260B4(v28);
  }

  sub_1C56831D8(a1, v21);
  if ((v22 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C5683170(v21);
    sub_1C56250A4(v28, v23);
    v14 = *(MEMORY[0x1E69DC5C0] + 16);
    v24 = *MEMORY[0x1E69DC5C0];
    v25 = v14;
    v26 = *MEMORY[0x1E69DE258];
    v27 = vdupq_n_s64(0xFFFFFFFEuLL);
    v15 = (*((*v6 & *v3) + 0x98))(v21);
    v17 = v16;
    v18 = *v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if (result)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_1C5682BAC(v18);
      v18 = result;
      *v17 = result;
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if (v9 < v18[2])
        {
          sub_1C5683248(v23, &v18[9 * v9 + 4]);
          v15(v21, 0);
          swift_unknownObjectRelease();
          sub_1C5683170(a1);
          return sub_1C56260B4(v28);
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    result = sub_1C5682BAC(v18);
    v18 = result;
    *v17 = result;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_1C5682F88(v21, v23);
  v15 = (*((*v6 & *v3) + 0x98))(v21);
  v17 = v20;
  v18 = *v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v9 < v18[2])
  {
    sub_1C5683280(v23, &v18[9 * v9 + 4]);
    v15(v21, 0);
    swift_unknownObjectRelease();
    sub_1C5683170(a1);
    sub_1C567D740(v23);
    return sub_1C56260B4(v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

double BoxLayout.padding(forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v3 = sub_1C56236C4();
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v3);
  sub_1C56806B4(sub_1C5676CD0, v4, v8);

  sub_1C56260B4(v7);
  if ((v10 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    v5 = *MEMORY[0x1E69DC5C0];
  }

  else
  {
    v5 = v9;
  }

  sub_1C5683170(v8);
  return v5;
}

uint64_t BoxLayout.setPadding(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_unknownObjectRetain();
  v12 = sub_1C56236C4();
  v13 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x88))(v12);
  sub_1C56806B4(sub_1C5676CD0, v13, v16);

  sub_1C56260B4(v15);
  if ((v21 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v16, v15);
    swift_unknownObjectRetain();
    sub_1C568077C(v15, a1);
    return sub_1C5683170(v16);
  }

  else
  {
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = a6;
    swift_unknownObjectRetain();
    return sub_1C568077C(v16, a1);
  }
}

double BoxLayout.offset(forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v3 = sub_1C56236C4();
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v3);
  sub_1C56806B4(sub_1C5676CD0, v4, v8);

  sub_1C56260B4(v7);
  if ((v10 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    v5 = *MEMORY[0x1E69DE258];
  }

  else
  {
    v5 = v9;
  }

  sub_1C5683170(v8);
  return v5;
}

uint64_t BoxLayout.setOffset(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_unknownObjectRetain();
  v8 = sub_1C56236C4();
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))(v8);
  sub_1C56806B4(sub_1C5676CD0, v9, v12);

  sub_1C56260B4(v11);
  if ((v15 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v12, v11);
    swift_unknownObjectRetain();
    sub_1C568077C(v11, a1);
    return sub_1C5683170(v12);
  }

  else
  {
    v13 = a3;
    v14 = a4;
    swift_unknownObjectRetain();
    return sub_1C568077C(v12, a1);
  }
}

uint64_t *sub_1C5681100@<X0>(uint64_t *a3@<X8>)
{
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v5);
  sub_1C56806B4(sub_1C5676CD0, v7, v12);

  sub_1C56260B4(&v11);
  v8 = v13;
  v9 = v13 & 0xFFFFFFFE;
  result = sub_1C5683170(v12);
  if (v9 == 2147483646)
  {
    *a3 = 4294967294;
  }

  else
  {
    v12[0] = v8;
    (*((*v6 & *v3) + 0xA0))(&v11, result);
    return sub_1C5724040(&v11, a3);
  }

  return result;
}

void sub_1C5681278(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C568130C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3)
{
  swift_unknownObjectRetain();
  v7 = sub_1C56236C4();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v7);
  sub_1C56806B4(a2, v8, v11);

  sub_1C56260B4(v10);
  if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v11, v10);
    swift_unknownObjectRetain();
    sub_1C568077C(v10, a1);
    return sub_1C5683170(v11);
  }

  else
  {
    v12 = a3;
    swift_unknownObjectRetain();
    return sub_1C568077C(v11, a1);
  }
}

uint64_t BoxLayout.verticalAlignmentKind(forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5681100(&v6);
  v4 = v6;
  if ((~v6 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(&v7, v3);
    v4 = v7;
  }

  v7 = v4;
  return sub_1C57243F4();
}

uint64_t BoxLayout.setVerticalAlignmentKind(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5681100(v12);
  v6 = MEMORY[0x1E69E7D40];
  if ((~LODWORD(v12[0]) & 0xFFFFFFFE) != 0)
  {
    v14 = v12[0];
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(&v14, v5);
  }

  sub_1C572440C(a1);
  swift_unknownObjectRetain();
  v7 = sub_1C56236C4();
  v8 = (*((*v6 & *v2) + 0x88))(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1C56806B4(sub_1C5676CD0, v8, v12);

  sub_1C56260B4(v11);
  if ((v13 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v12, v11);
    swift_unknownObjectRetain();
    sub_1C568077C(v11, a2);
    return sub_1C5683170(v12);
  }

  else
  {
    v13 = v14;
    swift_unknownObjectRetain();
    return sub_1C568077C(v12, a2);
  }
}

uint64_t *BoxLayout.setVerticalAlignmentBoundsContent(_:forArrangedLayoutItem:)(char a1, uint64_t a2)
{
  result = sub_1C5681100(v10);
  if ((~LODWORD(v10[0]) & 0xFFFFFFFE) != 0)
  {
    v12 = v10[0];
    sub_1C5724854(a1 & 1);
    swift_unknownObjectRetain();
    v6 = sub_1C56236C4();
    v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v6);
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1C56806B4(sub_1C5676CD0, v7, v10);

    sub_1C56260B4(v9);
    if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v10, v9);
      swift_unknownObjectRetain();
      sub_1C568077C(v9, a2);
      return sub_1C5683170(v10);
    }

    else
    {
      v11 = v12;
      swift_unknownObjectRetain();
      return sub_1C568077C(v10, a2);
    }
  }

  return result;
}

uint64_t *BoxLayout.setVerticalFittingSizePriority(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2, float a3)
{
  result = sub_1C5681100(v11);
  if ((~LODWORD(v11[0]) & 0xFFFFFFFE) != 0)
  {
    v13 = v11[0];
    sub_1C57248B8(a3);
    swift_unknownObjectRetain();
    v7 = sub_1C56236C4();
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v7);
    MEMORY[0x1EEE9AC00](v8, v9);
    sub_1C56806B4(sub_1C5676CD0, v8, v11);

    sub_1C56260B4(v10);
    if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v11, v10);
      swift_unknownObjectRetain();
      sub_1C568077C(v10, a1);
      return sub_1C5683170(v11);
    }

    else
    {
      v12 = v13;
      swift_unknownObjectRetain();
      return sub_1C568077C(v11, a1);
    }
  }

  return result;
}

uint64_t *sub_1C5681B10@<X0>(uint64_t *a3@<X8>)
{
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v5);
  sub_1C56806B4(sub_1C5676CD0, v7, v12);

  sub_1C56260B4(&v11);
  if ((v13 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    result = sub_1C5683170(v12);
    *a3 = 4294967294;
  }

  else
  {
    v9 = v14;
    v10 = sub_1C5683170(v12);
    v12[0] = v9;
    (*((*v6 & *v3) + 0x100))(&v11, v10);
    return sub_1C5724040(&v11, a3);
  }

  return result;
}

BOOL sub_1C5681C70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v9, a3);
  swift_unknownObjectRelease();

  return (~v9 & 0xFFFFFFFE) != 0;
}

uint64_t sub_1C5681D38(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3)
{
  swift_unknownObjectRetain();
  v7 = sub_1C56236C4();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v7);
  sub_1C56806B4(a2, v8, v11);

  sub_1C56260B4(v10);
  if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v11, v10);
    swift_unknownObjectRetain();
    sub_1C568077C(v10, a1);
    return sub_1C5683170(v11);
  }

  else
  {
    v13 = a3;
    swift_unknownObjectRetain();
    return sub_1C568077C(v11, a1);
  }
}

uint64_t BoxLayout.horizontalAlignmentKind(forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5681B10(&v6);
  v4 = v6;
  if ((~v6 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(&v7, v3);
    v4 = v7;
  }

  v7 = v4;
  return sub_1C57243F4();
}

uint64_t BoxLayout.setHorizontalAlignmentKind(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5681B10(v12);
  v6 = MEMORY[0x1E69E7D40];
  if ((~LODWORD(v12[0]) & 0xFFFFFFFE) != 0)
  {
    v15 = v12[0];
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(&v15, v5);
  }

  sub_1C572440C(a1);
  swift_unknownObjectRetain();
  v7 = sub_1C56236C4();
  v8 = (*((*v6 & *v2) + 0x88))(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1C56806B4(sub_1C5676CD0, v8, v12);

  sub_1C56260B4(v11);
  if ((v13 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v12, v11);
    swift_unknownObjectRetain();
    sub_1C568077C(v11, a2);
    return sub_1C5683170(v12);
  }

  else
  {
    v14 = v15;
    swift_unknownObjectRetain();
    return sub_1C568077C(v12, a2);
  }
}

void sub_1C568218C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5682224(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&v4, a1);
  if ((~v4 & 0xFFFFFFFE) != 0)
  {
    v2 = sub_1C5724830();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1C5682294(void *a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v10, a3);
  if ((~v10 & 0xFFFFFFFE) != 0)
  {
    v8 = sub_1C5724830();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t *BoxLayout.setHorizontalAlignmentBoundsContent(_:forArrangedLayoutItem:)(char a1, uint64_t a2)
{
  result = sub_1C5681B10(v10);
  if ((~LODWORD(v10[0]) & 0xFFFFFFFE) != 0)
  {
    v13 = v10[0];
    sub_1C5724854(a1 & 1);
    swift_unknownObjectRetain();
    v6 = sub_1C56236C4();
    v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v6);
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1C56806B4(sub_1C5676CD0, v7, v10);

    sub_1C56260B4(v9);
    if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v10, v9);
      swift_unknownObjectRetain();
      sub_1C568077C(v9, a2);
      return sub_1C5683170(v10);
    }

    else
    {
      v12 = v13;
      swift_unknownObjectRetain();
      return sub_1C568077C(v10, a2);
    }
  }

  return result;
}

void sub_1C56824CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

float sub_1C5682564(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&v3, a1);
  result = 0.0;
  if ((~v3 & 0xFFFFFFFE) != 0)
  {
    return sub_1C5724800();
  }

  return result;
}

void sub_1C56825CC(void *a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v8, a3);
  if ((~v8 & 0xFFFFFFFE) != 0)
  {
    sub_1C5724800();
  }

  swift_unknownObjectRelease();
}

uint64_t *BoxLayout.setHorizontalFittingSizePriority(_:forArrangedLayoutItem:)(uint64_t a1, uint64_t a2, float a3)
{
  result = sub_1C5681B10(v11);
  if ((~LODWORD(v11[0]) & 0xFFFFFFFE) != 0)
  {
    v14 = v11[0];
    sub_1C57248B8(a3);
    swift_unknownObjectRetain();
    v7 = sub_1C56236C4();
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v7);
    MEMORY[0x1EEE9AC00](v8, v9);
    sub_1C56806B4(sub_1C5676CD0, v8, v11);

    sub_1C56260B4(v10);
    if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v11, v10);
      swift_unknownObjectRetain();
      sub_1C568077C(v10, a1);
      return sub_1C5683170(v11);
    }

    else
    {
      v13 = v14;
      swift_unknownObjectRetain();
      return sub_1C568077C(v11, a1);
    }
  }

  return result;
}

void sub_1C5682810(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, float), float a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  a4(a3, a5);
  swift_unknownObjectRelease();
}

void *sub_1C5682898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E978, &qword_1C586A8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C56829E0(uint64_t (*a1)(uint64_t))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 13; ; i += 9)
    {
      result = a1(&v4[i - 9]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_1C567D708(&v4[i], v15);
          v12 = a1(v15);
          result = sub_1C567D740(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_1C567D708(&v4[9 * v1 + 4], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_1C567D708(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_1C5682BAC(v4);
              }

              result = sub_1C5683248(v14, &v4[9 * v1 + 4]);
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              result = sub_1C5683248(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 9;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_1C5682BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C694A560](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_1C567D708(v5, v6);
      sub_1C5662408();
      sub_1C584F5F0();
      type metadata accessor for NSDirectionalEdgeInsets(0);
      sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
      sub_1C584F5F0();
      type metadata accessor for UIOffset(0);
      sub_1C5682E20(&qword_1EC16E950, type metadata accessor for UIOffset, &protocol conformance descriptor for UIOffset);
      sub_1C584F5F0();
      sub_1C5682E68();
      sub_1C584F5F0();
      sub_1C584F5F0();
      result = sub_1C567D740(v6);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C5682D6C(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (*(a1 + 40) == *(a2 + 40) ? (v4 = *(a1 + 48) == *(a2 + 48)) : (v4 = 0), v4 && (sub_1C563DF98()))
  {
    v5 = sub_1C563DF98();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C5682E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5682E68()
{
  result = qword_1EC16E958;
  if (!qword_1EC16E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E958);
  }

  return result;
}

uint64_t sub_1C5682EBC(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2) & 1) != 0 && (sub_1C567FA88(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (static StackLayout.Alignment.== infix(_:_:)() & 1) != 0 && (static StackLayout.Alignment.== infix(_:_:)())
  {
    v4 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1C5682FC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 72 * a3;
  v12 = v7 + 32 + 72 * a2;
  if (result < v12 || result >= v12 + 72 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C56830B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C5682898(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C5682FC0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C5683170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E968, qword_1C586A758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C56831D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E968, qword_1C586A758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C56832BC()
{
  result = qword_1EC16E970;
  if (!qword_1EC16E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E970);
  }

  return result;
}

unint64_t sub_1C5683310(uint64_t a1)
{
  result = sub_1C5683338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5683338()
{
  result = qword_1ED77E858;
  if (!qword_1ED77E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E858);
  }

  return result;
}

unint64_t sub_1C5683390()
{
  result = qword_1ED77E850;
  if (!qword_1ED77E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E850);
  }

  return result;
}

uint64_t sub_1C5683950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 72))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 56);
  v4 = 2147483645 - ((2 * v3) & 0x7FFFFFFC | (v3 >> 30));
  if (v4 < 0)
  {
    v4 = -1;
  }

  if (((2 * v3) & 0x7FFFFFFC) == 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C56839B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
    }
  }

  return result;
}

uint64_t sub_1C5683A3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C5683A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5683AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig(uint64_t a1)
{
  result = qword_1EC17CCE0;
  if (!qword_1EC17CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5683BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C56534F4(a1, a3, &qword_1EC16E260, &unk_1C586A900);
  v5 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig(0);
  return sub_1C56534F4(a2, a3 + *(v5 + 20), &qword_1EC16E258, &unk_1C5869AF0);
}

id sub_1C5683C04()
{
  v0 = sub_1C584ED50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  sub_1C584ED10();
  v6 = sub_1C584ED00();
  (*(v1 + 8))(v4, v0);
  [v5 setCalendar_];

  [v5 setAllowedUnits_];
  [v5 setMaximumUnitCount_];
  result = [v5 setUnitsStyle_];
  qword_1EC17CCD8 = v5;
  return result;
}

uint64_t static PlaceFactoidMeasurementFormatter.format(factoidUnitType:value:formatStyleConfig:locale:)(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v193 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E980, &qword_1C586A910);
  v184 = *(v164 - 8);
  v8 = MEMORY[0x1EEE9AC00](v164, v7);
  v183 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v182 = &v160 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v181 = &v160 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v180 = &v160 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E988, &qword_1C586A918);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v176 = &v160 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E990, &qword_1C586A920);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v172 = &v160 - v23;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E998, &qword_1C586A928);
  v175 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v24);
  v174 = &v160 - v25;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9A0, &unk_1C586A930);
  v173 = *(v185 - 8);
  v27 = MEMORY[0x1EEE9AC00](v185, v26);
  v179 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v160 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v162 = &v160 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v165 = &v160 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v189 = &v160 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9A8, &qword_1C586A940);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v171 = &v160 - v43;
  v44 = sub_1C584ECE0();
  v186 = *(v44 - 8);
  v187 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v188 = &v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9B0, &qword_1C586A948);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v166 = &v160 - v49;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9B8, &qword_1C586A950);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v50);
  v167 = &v160 - v51;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9C0, &qword_1C586A958);
  v168 = *(v178 - 8);
  v53 = MEMORY[0x1EEE9AC00](v178, v52);
  v55 = &v160 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v53, v56);
  v163 = &v160 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v62 = &v160 - v61;
  MEMORY[0x1EEE9AC00](v60, v63);
  v161 = &v160 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v190 = *(v65 - 8);
  v191 = v65;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v160 - v67;
  v69 = sub_1C584EBE0();
  v70 = *(v69 - 8);
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v74 = &v160 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v75);
  v77 = &v160 - v76;
  v194 = a3;
  sub_1C584EBF0();
  sub_1C584EBC0();
  v192 = MEMORY[0x1C6949250](v77, v74);
  v78 = *(v70 + 8);
  v78(v74, v69);
  v78(v77, v69);
  if (a1 > 4)
  {
    v81 = v179;
    v82 = v180;
    v83 = v32;
    v85 = v181;
    v84 = v182;
    v87 = v183;
    v86 = v184;
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v94 = objc_opt_self();
        v95 = [v94 squareKilometers];
        sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
        v96 = v85;
        sub_1C584E700();
        v97 = [v94 squareMiles];
        v98 = v192;
        if (v192)
        {
          v84 = v82;
          v99 = v97;
          v100 = v164;
          sub_1C584E770();

          (*(v86 + 8))(v96, v100);
        }

        else
        {

          v84 = v82;
          v100 = v164;
          (*(v86 + 32))(v82, v96, v164);
        }

        v138 = v194;
        v139 = v98 & 1;
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_39;
        }

        v115 = objc_opt_self();
        v116 = [v115 squareMeters];
        sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
        v117 = v87;
        sub_1C584E700();
        v118 = [v115 squareFeet];
        v119 = v192;
        if (v192)
        {
          v120 = v118;
          v100 = v164;
          sub_1C584E770();

          (*(v86 + 8))(v117, v100);
        }

        else
        {

          v100 = v164;
          (*(v86 + 32))(v84, v117, v164);
        }

        v138 = v194;
        v139 = v119 & 1;
      }

      v80 = sub_1C5684FF4(v84, v193, v138, v139);
      (*(v86 + 8))(v84, v100);
      return v80;
    }

    if (a1 != 5)
    {
      return sub_1C5686358(a4);
    }

    v88 = objc_opt_self();
    v89 = [v88 meters];
    sub_1C5626E40(0, &qword_1EC16E9D0, 0x1E696B058);
    sub_1C584E700();
    v90 = [v88 feet];
    v160 = v83;
    if (v192)
    {
      v91 = v90;
      v92 = v185;
      sub_1C584E770();

      v93 = v173;
      (*(v173 + 8))(v81, v92);
    }

    else
    {

      v93 = v173;
      (*(v173 + 32))(v83, v81, v185);
    }

    v129 = v194;
    v131 = v188;
    v130 = v189;
    v133 = v186;
    v132 = v187;
    v135 = v190;
    v134 = v191;
    sub_1C584E750();
    (*(v133 + 16))(v131, v129, v132);
    sub_1C584E9B0();
    sub_1C5685B48(v193, v129, v130);
    (*(v135 + 56))(v130, 0, 1, v134);
    v136 = v174;
    sub_1C584E730();
    v137 = &v191;
LABEL_37:
    v157 = *(v137 - 32);
    v158 = v177;
    v80 = sub_1C584E740();
    (*(v175 + 8))(v136, v158);
    (*(v93 + 8))(v157, v185);
    return v80;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v101 = objc_opt_self();
      v102 = [v101 cubicMeters];
      sub_1C5626E40(0, &qword_1EC16E9D8, 0x1E696B088);
      sub_1C584E700();
      v103 = [v101 cubicFeet];
      if (v192)
      {
        v104 = v103;
        v105 = v178;
        sub_1C584E770();

        v106 = v168;
        (*(v168 + 8))(v55, v105);
      }

      else
      {

        v106 = v168;
        (*(v168 + 32))(v163, v55, v178);
      }

      v143 = v194;
      v145 = v188;
      v144 = v189;
      v147 = v186;
      v146 = v187;
      v148 = v190;
      sub_1C584E750();
      (*(v147 + 16))(v145, v143, v146);
      sub_1C584E9B0();
      sub_1C5685B48(v193, v143, v144);
      (*(v148 + 56))(v144, 0, 1, v191);
      v149 = v167;
      sub_1C584E730();
      v150 = v163;
      v151 = v170;
      v80 = sub_1C584E740();
      (*(v169 + 8))(v149, v151);
      (*(v106 + 8))(v150, v178);
      return v80;
    }

    v121 = objc_opt_self();
    v122 = [v121 kilometers];
    sub_1C5626E40(0, &qword_1EC16E9D0, 0x1E696B058);
    v123 = v162;
    sub_1C584E700();
    v124 = [v121 miles];
    v125 = v189;
    v126 = v185;
    v93 = v173;
    v127 = v165;
    if (v192)
    {
      v128 = v124;
      sub_1C584E770();

      (*(v93 + 8))(v123, v126);
    }

    else
    {

      (*(v93 + 32))(v127, v123, v126);
    }

    v152 = v194;
    v154 = v186;
    v153 = v187;
    v156 = v190;
    v155 = v191;
    sub_1C584E750();
    (*(v154 + 16))(v188, v152, v153);
    sub_1C584E9B0();
    sub_1C5685B48(v193, v152, v125);
    (*(v156 + 56))(v125, 0, 1, v155);
    v136 = v174;
    sub_1C584E730();
    v137 = &v196;
    goto LABEL_37;
  }

  if (a1 < 2)
  {
    sub_1C5685B48(v193, v194, v68);
    v195 = a4;
    v79 = v191;
    v80 = sub_1C584E960();
    (*(v190 + 8))(v68, v79);
    return v80;
  }

  if (a1 == 2)
  {
    v107 = objc_opt_self();
    v108 = [v107 cubicKilometers];
    sub_1C5626E40(0, &qword_1EC16E9D8, 0x1E696B088);
    sub_1C584E700();
    v109 = [v107 cubicMiles];
    v110 = v189;
    v111 = v178;
    v112 = v168;
    v113 = v161;
    if (v192)
    {
      v114 = v109;
      sub_1C584E770();

      (*(v112 + 8))(v62, v111);
    }

    else
    {

      (*(v112 + 32))(v113, v62, v111);
    }

    v140 = v194;
    sub_1C584E750();
    (*(v186 + 16))(v188, v140, v187);
    sub_1C584E9B0();
    sub_1C5685B48(v193, v140, v110);
    (*(v190 + 56))(v110, 0, 1, v191);
    v141 = v167;
    sub_1C584E730();
    v142 = v170;
    v80 = sub_1C584E740();
    (*(v169 + 8))(v141, v142);
    (*(v112 + 8))(v113, v111);
    return v80;
  }

LABEL_39:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5684FF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v102 = a3;
  v96 = a2;
  v98 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v5);
  v82 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9E0, &qword_1C586A968);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v83 = &v80 - v9;
  v10 = sub_1C584E8B0();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v101 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v93 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9E8, &qword_1C586A970);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v92 = &v80 - v18;
  v90 = sub_1C584ECE0();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v19);
  v91 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9F0, &qword_1C586A978);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v89 = &v80 - v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9F8, &qword_1C586A980);
  v95 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v24);
  v94 = &v80 - v25;
  v26 = sub_1C584EB90();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v80 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA00, &qword_1C586A988);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v80 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA08, &unk_1C586A990);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v81 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v80 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v80 - v43;
  v45 = sub_1C584ECA0();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v80 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C584ECB0();
  sub_1C584EC90();
  (*(v46 + 8))(v49, v45);
  sub_1C584EB80();
  (*(v27 + 56))(v41, 0, 1, v26);
  v50 = *(v30 + 48);
  sub_1C56466CC(v44, v33, &qword_1EC16EA08, &unk_1C586A990);
  sub_1C56466CC(v41, &v33[v50], &qword_1EC16EA08, &unk_1C586A990);
  v51 = *(v27 + 48);
  if (v51(v33, 1, v26) != 1)
  {
    v52 = v81;
    sub_1C56466CC(v33, v81, &qword_1EC16EA08, &unk_1C586A990);
    if (v51(&v33[v50], 1, v26) != 1)
    {
      v77 = v80;
      (*(v27 + 32))(v80, &v33[v50], v26);
      sub_1C5687600(&qword_1EC16EA18, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v78 = sub_1C584F620();
      v79 = *(v27 + 8);
      v79(v77, v26);
      sub_1C5625230(v41, &qword_1EC16EA08, &unk_1C586A990);
      sub_1C5625230(v44, &qword_1EC16EA08, &unk_1C586A990);
      v79(v52, v26);
      sub_1C5625230(v33, &qword_1EC16EA08, &unk_1C586A990);
      if (v78)
      {
        goto LABEL_17;
      }

LABEL_8:
      sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
      sub_1C584E750();
      v53 = 0;
      goto LABEL_9;
    }

    sub_1C5625230(v41, &qword_1EC16EA08, &unk_1C586A990);
    sub_1C5625230(v44, &qword_1EC16EA08, &unk_1C586A990);
    (*(v27 + 8))(v52, v26);
LABEL_7:
    sub_1C5625230(v33, &qword_1EC16EA00, &qword_1C586A988);
    goto LABEL_8;
  }

  sub_1C5625230(v41, &qword_1EC16EA08, &unk_1C586A990);
  sub_1C5625230(v44, &qword_1EC16EA08, &unk_1C586A990);
  if (v51(&v33[v50], 1, v26) != 1)
  {
    goto LABEL_7;
  }

  sub_1C5625230(v33, &qword_1EC16EA08, &unk_1C586A990);
LABEL_17:
  sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
  sub_1C584E760();
  v53 = 1;
LABEL_9:
  v54 = v102;
  (*(v88 + 16))(v91, v102, v90);
  sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
  sub_1C584E9B0();
  v55 = v93;
  v56 = v96;
  sub_1C5685B48(v96, v54, v93);
  v57 = v97;
  v58 = v99;
  (*(v97 + 56))(v55, 0, 1, v99);
  v59 = v94;
  sub_1C584E730();
  v61 = v100;
  v60 = v101;
  if (v53)
  {
    v62 = v83;
    sub_1C584E720();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E980, &qword_1C586A910);
    sub_1C563D368(&qword_1EC16EA10, &qword_1EC16E9E0, &qword_1C586A968, MEMORY[0x1E6968068]);
    v93 = v63;
    v64 = v85;
    sub_1C584E780();
    (*(v84 + 8))(v62, v64);
    v65 = sub_1C56865C0(v60);
    if (v66)
    {
      v67 = v65;
      v68 = v66;
      v69 = v82;
      sub_1C5685B48(v56, v102, v82);
      sub_1C584E710();
      v103 = v70;
      v71 = sub_1C584E960();
      v73 = v72;
      v74 = v69;
      v61 = v100;
      (*(v57 + 8))(v74, v58);
      v103 = v71;
      v104 = v73;

      MEMORY[0x1C6949D90](32, 0xE100000000000000);

      MEMORY[0x1C6949D90](v67, v68);

      v75 = v103;
    }

    else
    {
      v75 = sub_1C584E740();
    }

    (*(v86 + 8))(v101, v87);
  }

  else
  {
    v75 = sub_1C584E740();
  }

  (*(v95 + 8))(v59, v61);
  return v75;
}

uint64_t sub_1C5685B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v57 = &v48 - v8;
  v9 = sub_1C584FDA0();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E250, &qword_1C5869AE8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v48 - v21;
  v23 = sub_1C584E9E0();
  v51 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C584ECE0();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v48 - v31;
  sub_1C584EC20();
  sub_1C563D314();
  sub_1C584E970();
  v58 = a3;
  MEMORY[0x1C6949030](a2, v28);
  v61 = v29;
  v59 = *(v29 + 8);
  v59(v32, v28);
  v54 = a1;
  sub_1C56466CC(a1, v18, &qword_1EC16E250, &qword_1C5869AE8);
  v33 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig(0);
  v50 = *(*(v33 - 8) + 48);
  v34 = v50(v18, 1, v33);
  v53 = v23;
  if (v34 == 1)
  {
    sub_1C5625230(v18, &qword_1EC16E250, &qword_1C5869AE8);
    v35 = v51;
    (*(v51 + 56))(v22, 1, 1, v23);
    v36 = v23;
  }

  else
  {
    sub_1C56466CC(v18, v22, &qword_1EC16E260, &unk_1C586A900);
    sub_1C5687448(v18);
    v35 = v51;
    v36 = v23;
    if ((*(v51 + 48))(v22, 1, v23) != 1)
    {
      v38 = v35;
      v37 = v60;
      (*(v35 + 32))(v60, v22, v36);
      v40 = v58;
      v41 = v55;
      goto LABEL_7;
    }
  }

  v37 = v60;
  sub_1C584E9C0();
  v38 = v35;
  v39 = (*(v35 + 48))(v22, 1, v36);
  v40 = v58;
  v41 = v55;
  if (v39 != 1)
  {
    sub_1C5625230(v22, &qword_1EC16E260, &unk_1C586A900);
  }

LABEL_7:
  MEMORY[0x1C6949050](v37, v28);
  v59(v40, v28);
  v42 = *(v61 + 32);
  v61 += 32;
  v58 = v42;
  (v42)(v40, v32, v28);
  v43 = v52;
  sub_1C56466CC(v54, v52, &qword_1EC16E250, &qword_1C5869AE8);
  if (v50(v43, 1, v33) == 1)
  {
    (*(v38 + 8))(v37, v53);
    sub_1C5625230(v43, &qword_1EC16E250, &qword_1C5869AE8);
    v44 = v57;
    (*(v41 + 56))(v57, 1, 1, v56);
    return sub_1C5625230(v44, &qword_1EC16E258, &unk_1C5869AF0);
  }

  v44 = v57;
  sub_1C56466CC(v43 + *(v33 + 20), v57, &qword_1EC16E258, &unk_1C5869AF0);
  sub_1C5687448(v43);
  v45 = v56;
  if ((*(v41 + 48))(v44, 1, v56) == 1)
  {
    (*(v38 + 8))(v60, v53);
    return sub_1C5625230(v44, &qword_1EC16E258, &unk_1C5869AF0);
  }

  v47 = v49;
  (*(v41 + 32))(v49, v44, v45);
  MEMORY[0x1C6949040](v47, 0, 1, v28);
  (*(v41 + 8))(v47, v45);
  (*(v38 + 8))(v60, v53);
  v59(v40, v28);
  return (v58)(v40, v32, v28);
}

id PlaceFactoidMeasurementFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceFactoidMeasurementFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlaceFactoidMeasurementFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5686358(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA90, &unk_1C586AA20);
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v23 - v8;
  v10 = objc_opt_self();
  v11 = [v10 milliseconds];
  sub_1C5626E40(0, &qword_1EC16EA98, 0x1E696B008);
  sub_1C584E700();
  v12 = [v10 seconds];
  sub_1C584E770();

  sub_1C584E710();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v6, v1);
  if (qword_1EC17CCD0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EC17CCD8 stringFromTimeInterval_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C584F660();
    v20 = v19;

    v23[0] = v18;
    v23[1] = v20;
    sub_1C566339C();
    v21 = sub_1C584FB10();
    v15(v9, v1);
  }

  else
  {
    v15(v9, v1);
    return 0;
  }

  return v21;
}

uint64_t sub_1C56865C0(uint64_t a1)
{
  v96 = sub_1C584E830();
  MEMORY[0x1EEE9AC00](v96, v2);
  v95 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C584E930();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v4);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA30, &qword_1C586A9F8);
  MEMORY[0x1EEE9AC00](v90, v6);
  v89 = &v87 - v7;
  v129 = sub_1C584E810();
  v105 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v8);
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA38, &qword_1C586AA00);
  MEMORY[0x1EEE9AC00](v120, v10);
  v116 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA40, &qword_1C586AA08);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v106 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v128 = &v87 - v21;
  v119 = sub_1C584E900();
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v22);
  v118 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C584E880();
  v25 = *(v24 - 8);
  v125 = v24;
  v126 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v124 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA48, &qword_1C586AA10);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - v31;
  v33 = sub_1C584E890();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v123 = (&v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v87 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA50, &qword_1C586AA18);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v100 = &v87 - v43;
  v44 = sub_1C584E870();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v127 = &v87 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v117 = &v87 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v88 = &v87 - v53;
  v94 = a1;
  sub_1C584E8A0();
  v99 = v34;
  v54 = *(v34 + 16);
  v97 = v40;
  v54(v123, v40, v33);
  v55 = MEMORY[0x1E69687C8];
  sub_1C5687600(&qword_1EC16EA58, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
  sub_1C584F720();
  v56 = *(v29 + 44);
  v57 = sub_1C5687600(&qword_1EC16EA60, v55, MEMORY[0x1E69687E0]);
  v123 = (v126 + 1);
  v126 = (v45 + 32);
  v114 = v122 + 1;
  v115 = (v45 + 16);
  v113 = *MEMORY[0x1E69683F0];
  v112 = (v105 + 13);
  v111 = (v105 + 7);
  v110 = (v105 + 6);
  v101 = (v105 + 4);
  ++v105;
  v98 = v45;
  v121 = v44;
  v122 = (v45 + 8);
  v109 = v33;
  v108 = v56;
  v107 = v57;
  while (1)
  {
    v59 = v124;
    sub_1C584F960();
    sub_1C5687600(&qword_1EC16EA68, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v60 = v125;
    v61 = sub_1C584F620();
    (*v123)(v59, v60);
    if (v61)
    {
      sub_1C5625230(v32, &qword_1EC16EA48, &qword_1C586AA10);
      (*(v99 + 8))(v97, v33);
      v79 = 1;
      v80 = v100;
      goto LABEL_14;
    }

    v62 = sub_1C584F980();
    v63 = v117;
    (*v115)(v117);
    v62(v130, 0);
    sub_1C584F970();
    v64 = *v126;
    (*v126)(v127, v63, v44);
    v65 = v118;
    sub_1C584E850();
    sub_1C584E820();
    sub_1C5687600(&qword_1EC16EA70, MEMORY[0x1E6968438], MEMORY[0x1E6968420]);
    v66 = v128;
    sub_1C584E910();
    (*v114)(v65, v119);
    v67 = v129;
    (*v112)(v19, v113, v129);
    (*v111)(v19, 0, 1, v67);
    v68 = *(v120 + 48);
    v69 = v116;
    sub_1C56466CC(v66, v116, &qword_1EC16EA40, &qword_1C586AA08);
    sub_1C56466CC(v19, v69 + v68, &qword_1EC16EA40, &qword_1C586AA08);
    v70 = *v110;
    if ((*v110)(v69, 1, v67) == 1)
    {
      break;
    }

    v104 = v64;
    v71 = v19;
    v72 = v106;
    sub_1C56466CC(v69, v106, &qword_1EC16EA40, &qword_1C586AA08);
    if (v70(v69 + v68, 1, v129) == 1)
    {
      sub_1C5625230(v71, &qword_1EC16EA40, &qword_1C586AA08);
      sub_1C5625230(v128, &qword_1EC16EA40, &qword_1C586AA08);
      v73 = v72;
      v19 = v71;
      (*v105)(v73, v129);
      v44 = v121;
      goto LABEL_3;
    }

    v74 = v69 + v68;
    v75 = v129;
    v76 = v102;
    (*v101)(v102, v74, v129);
    sub_1C5687600(&qword_1EC16EA88, MEMORY[0x1E6968400], MEMORY[0x1E6968410]);
    v103 = sub_1C584F620();
    v77 = *v105;
    (*v105)(v76, v75);
    sub_1C5625230(v71, &qword_1EC16EA40, &qword_1C586AA08);
    sub_1C5625230(v128, &qword_1EC16EA40, &qword_1C586AA08);
    v78 = v72;
    v19 = v71;
    v77(v78, v75);
    sub_1C5625230(v69, &qword_1EC16EA40, &qword_1C586AA08);
    v44 = v121;
    v33 = v109;
    if (v103)
    {
      goto LABEL_13;
    }

LABEL_4:
    (*v122)(v127, v44);
  }

  sub_1C5625230(v19, &qword_1EC16EA40, &qword_1C586AA08);
  sub_1C5625230(v128, &qword_1EC16EA40, &qword_1C586AA08);
  v58 = v70(v69 + v68, 1, v129);
  v44 = v121;
  if (v58 != 1)
  {
LABEL_3:
    sub_1C5625230(v69, &qword_1EC16EA38, &qword_1C586AA00);
    v33 = v109;
    goto LABEL_4;
  }

  v104 = v64;
  sub_1C5625230(v69, &qword_1EC16EA40, &qword_1C586AA08);
  v33 = v109;
LABEL_13:
  sub_1C5625230(v32, &qword_1EC16EA48, &qword_1C586AA10);
  (*(v99 + 8))(v97, v33);
  v80 = v100;
  v104(v100, v127, v44);
  v79 = 0;
LABEL_14:
  v81 = v98;
  (*(v98 + 56))(v80, v79, 1, v44);
  if ((*(v81 + 48))(v80, 1, v44) == 1)
  {
    sub_1C5625230(v80, &qword_1EC16EA50, &qword_1C586AA18);
    return 0;
  }

  else
  {
    v83 = v88;
    (*v126)(v88, v80, v44);
    v84 = v89;
    sub_1C584E860();
    sub_1C563D368(&qword_1EC16EA78, &qword_1EC16EA30, &qword_1C586A9F8, MEMORY[0x1E69E66D8]);
    v85 = v91;
    sub_1C584E8E0();
    sub_1C5625230(v84, &qword_1EC16EA30, &qword_1C586A9F8);
    sub_1C584E920();
    (*(v92 + 8))(v85, v93);
    sub_1C5687600(&qword_1EC16EA80, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v86 = sub_1C584F710();
    (*v122)(v83, v44);
    return v86;
  }
}

uint64_t sub_1C5687448(uint64_t a1)
{
  v2 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C56874F0(uint64_t a1)
{
  sub_1C56875AC(319, &qword_1EC16EA20, MEMORY[0x1E6968F20]);
  if (v1 <= 0x3F)
  {
    sub_1C56875AC(319, &qword_1EC16EA28, MEMORY[0x1E69E7050]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56875AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C584FAF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5687600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C5687648(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 + 32;
    v8 = 0x80000001C5893E80;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v6 == v4)
        {
          memset(v164, 0, sizeof(v164));
          v6 = v4;
          v165 = 2147483646;
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v8 = *(v3 + 16);
          if (v6 >= v8)
          {
            goto LABEL_74;
          }

          v166 = v6;
          sub_1C5688760(v7 + 80 * v6, v167);
          sub_1C56534F4(&v166, v164, &qword_1EC16DEF8, &qword_1C5868C28);
          ++v6;
        }

        sub_1C56534F4(v164, &v168, &qword_1EC16EAA0, &qword_1C586AA30);
        if ((v169[18] & 0xFFFFFFFE) == 0x7FFFFFFELL)
        {
          return v9;
        }

        v10 = v168;
        sub_1C56534F4(v169, &v166, &unk_1EC16E860, &qword_1C5868750);
        v163[0] = v167[8];
        v162[0] = *(v2 + 40);
        v1 = v163;
        sub_1C5724040(v162, v164);
        if ((~LODWORD(v164[0]) & 0xFFFFFFFE) != 0)
        {
          break;
        }

        sub_1C56887D0(&v166);
      }

      v160 = v7;
      v161 = v3;
      sub_1C5724768(v163);
      v11 = v163[0];
      *&v164[0] = v163[0];
      v12 = sub_1C5724830();
      *&v164[0] = v11;
      v13 = sub_1C5724800();
      *v164 = v13;
      LODWORD(v163[0]) = 0;
      type metadata accessor for UILayoutPriority(0);
      sub_1C5688838(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
      v159 = sub_1C584F610();
      *v164 = v13;
      LODWORD(v163[0]) = 1148846080;
      sub_1C5688838(&qword_1ED77E830, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
      v14 = sub_1C584F2D0() & v12;
      v15 = v11 >> 30;
      if (v11 >> 30 > 1)
      {
        if (v15 != 2)
        {
          sub_1C5625EE8(&v166, v163);
          v123 = *(v2 + 24);
          v124 = sub_1C570FA50(v123);
          sub_1C5625EE8(v2, v162);
          v125 = sub_1C570FA50(v123);
          sub_1C570FC58(v123);
          v127 = v126;
          sub_1C570FC58(v123);
          v129 = v127 + v128;
          sub_1C570FD20(v123);
          v131 = v129 + v130;
          v132 = sub_1C5625100();
          sub_1C5625108(v163, v124, 0, v162, v125, 0, 0, v164, v132, v131, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
          }

          v134 = v9[2];
          v133 = v9[3];
          if (v134 >= v133 >> 1)
          {
            v9 = sub_1C5625864((v133 > 1), v134 + 1, 1, v9);
          }

          v9[2] = v134 + 1;
          sub_1C5625808(v164, &v9[14 * v134 + 4]);
          sub_1C5625EE8(&v166, v163);
          v135 = sub_1C570FB20(v123);
          sub_1C5625EE8(v2, v162);
          v136 = sub_1C570FB20(v123);
          sub_1C570FCBC(v123);
          v138 = v137;
          sub_1C570FCBC(v123);
          v140 = v138 + v139;
          sub_1C570FD20(v123);
          v142 = v141 - v140;
          v74 = sub_1C5625100();
          v122 = 1000.0;
          v75 = v135;
          v76 = v136;
          v121 = v142;
          goto LABEL_59;
        }

        v158 = v13;
        if (v14)
        {
          sub_1C5625EE8(&v166, v163);
          v46 = *(v2 + 24);
          v47 = sub_1C570FA50(v46);
          sub_1C5625EE8(v2, v162);
          v48 = sub_1C570FA50(v46);
          sub_1C570FC58(v46);
          v50 = v49;
          sub_1C570FC58(v46);
          v52 = v50 + v51;
          sub_1C570FD20(v46);
          v54 = v52 + v53;
          v55 = sub_1C5625100();
          sub_1C5625108(v163, v47, 1, v162, v48, 0, 0, v164, v55, v54, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
          }

          v57 = v9[2];
          v56 = v9[3];
          if (v57 >= v56 >> 1)
          {
            v9 = sub_1C5625864((v56 > 1), v57 + 1, 1, v9);
          }

          v9[2] = v57 + 1;
          sub_1C5625808(v164, &v9[14 * v57 + 4]);
        }

        sub_1C5625EE8(&v166, v163);
        v1 = *(v2 + 24);
        v58 = sub_1C570FB20(v1);
        sub_1C5625EE8(v2, v162);
        v59 = sub_1C570FB20(v1);
        sub_1C570FCBC(v1);
        v61 = v60;
        sub_1C570FCBC(v1);
        v63 = v61 + v62;
        sub_1C570FD20(v1);
        v65 = v64 - v63;
        v66 = sub_1C5625100();
        sub_1C5625108(v163, v58, 0, v162, v59, 0, 0, v164, v66, v65, 1000.0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
        }

        v68 = v9[2];
        v67 = v9[3];
        if (v68 >= v67 >> 1)
        {
          v9 = sub_1C5625864((v67 > 1), v68 + 1, 1, v9);
        }

        v9[2] = v68 + 1;
        sub_1C5625808(v164, &v9[14 * v68 + 4]);
        v8 = v159;
        if (v159)
        {
          sub_1C5625EE8(&v166, v163);
          v38 = sub_1C570FA50(v1);
          sub_1C5625EE8(v2, v162);
          v39 = sub_1C570FA50(v1);
          sub_1C570FC58(v1);
          v70 = v69;
          sub_1C570FC58(v1);
          v72 = v70 + v71;
          sub_1C570FD20(v1);
          v45 = v72 + v73;
LABEL_36:
          v74 = sub_1C5625100();
          v75 = v38;
          v76 = v39;
LABEL_53:
          v121 = v45;
          v122 = v158;
LABEL_59:
          sub_1C5625108(v163, v75, 0, v162, v76, 0, 0, v164, v74, v121, v122);
          v144 = v9[2];
          v143 = v9[3];
          v1 = v144 + 1;
          if (v144 >= v143 >> 1)
          {
            v9 = sub_1C5625864((v143 > 1), v144 + 1, 1, v9);
          }

          v9[2] = v1;
          sub_1C5625808(v164, &v9[14 * v144 + 4]);
        }
      }

      else
      {
        v158 = v13;
        v157 = v14;
        if (v15)
        {
          if (v14)
          {
            sub_1C5625EE8(&v166, v163);
            v77 = *(v2 + 24);
            v78 = sub_1C570FA50(v77);
            sub_1C5625EE8(v2, v162);
            v79 = sub_1C570FA50(v77);
            sub_1C570FC58(v77);
            v81 = v80;
            sub_1C570FC58(v77);
            v83 = v81 + v82;
            sub_1C570FD20(v77);
            v85 = v83 + v84;
            v86 = sub_1C5625100();
            sub_1C5625108(v163, v78, 1, v162, v79, 0, 0, v164, v86, v85, 1000.0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
            }

            v88 = v9[2];
            v87 = v9[3];
            if (v88 >= v87 >> 1)
            {
              v9 = sub_1C5625864((v87 > 1), v88 + 1, 1, v9);
            }

            v9[2] = v88 + 1;
            sub_1C5625808(v164, &v9[14 * v88 + 4]);
          }

          sub_1C5625EE8(&v166, v163);
          v1 = *(v2 + 24);
          v89 = sub_1C570FAB8(v1);
          sub_1C5625EE8(v2, v162);
          v90 = sub_1C570FAB8(v1);
          sub_1C570FC58(v1);
          v92 = v91;
          sub_1C570FCBC(v1);
          v94 = (v92 - v93) * 0.5;
          sub_1C570FD20(v1);
          v96 = v94 + v95;
          v97 = sub_1C5625100();
          v98 = sub_1C57056F8();
          sub_1C5625108(v163, v89, 0, v162, v90, 0, 0, v164, v97, v96, v98);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
          }

          v100 = v9[2];
          v99 = v9[3];
          if (v100 >= v99 >> 1)
          {
            v9 = sub_1C5625864((v99 > 1), v100 + 1, 1, v9);
          }

          v9[2] = v100 + 1;
          sub_1C5625808(v164, &v9[14 * v100 + 4]);
          if (v157)
          {
            sub_1C5625EE8(&v166, v163);
            v101 = sub_1C570FB20(v1);
            sub_1C5625EE8(v2, v162);
            v102 = sub_1C570FB20(v1);
            sub_1C570FCBC(v1);
            v104 = v103;
            sub_1C570FCBC(v1);
            v106 = v104 + v105;
            sub_1C570FD20(v1);
            v108 = v107 - v106;
            v109 = sub_1C5625100();
            sub_1C5625108(v163, v101, -1, v162, v102, 0, 0, v164, v109, v108, 1000.0);
            v111 = v9[2];
            v110 = v9[3];
            if (v111 >= v110 >> 1)
            {
              v9 = sub_1C5625864((v110 > 1), v111 + 1, 1, v9);
            }

            v9[2] = v111 + 1;
            sub_1C5625808(v164, &v9[14 * v111 + 4]);
          }

          v8 = v159;
          if (v159)
          {
            sub_1C5625EE8(&v166, v163);
            v112 = sub_1C570FB88(v1);
            sub_1C5625EE8(v2, v162);
            v113 = sub_1C570FB88(v1);
            sub_1C570FC58(v1);
            v115 = v114;
            sub_1C570FCBC(v1);
            v117 = v115 + v116;
            sub_1C570FC58(v1);
            v119 = v117 + v118;
            sub_1C570FCBC(v1);
            v45 = -(v119 + v120);
            v74 = sub_1C5625100();
            v75 = v112;
            v76 = v113;
            goto LABEL_53;
          }
        }

        else
        {
          sub_1C5625EE8(&v166, v163);
          v1 = *(v2 + 24);
          v16 = sub_1C570FA50(v1);
          sub_1C5625EE8(v2, v162);
          v17 = sub_1C570FA50(v1);
          sub_1C570FC58(v1);
          v19 = v18;
          sub_1C570FC58(v1);
          v21 = v19 + v20;
          sub_1C570FD20(v1);
          v23 = v21 + v22;
          v24 = sub_1C5625100();
          sub_1C5625108(v163, v16, 0, v162, v17, 0, 0, v164, v24, v23, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1C5625864(0, v9[2] + 1, 1, v9);
          }

          v26 = v9[2];
          v25 = v9[3];
          if (v26 >= v25 >> 1)
          {
            v9 = sub_1C5625864((v25 > 1), v26 + 1, 1, v9);
          }

          v9[2] = v26 + 1;
          sub_1C5625808(v164, &v9[14 * v26 + 4]);
          if (v157)
          {
            sub_1C5625EE8(&v166, v163);
            v27 = sub_1C570FB20(v1);
            sub_1C5625EE8(v2, v162);
            v28 = sub_1C570FB20(v1);
            sub_1C570FCBC(v1);
            v30 = v29;
            sub_1C570FCBC(v1);
            v32 = v30 + v31;
            sub_1C570FD20(v1);
            v34 = v33 - v32;
            v35 = sub_1C5625100();
            sub_1C5625108(v163, v27, -1, v162, v28, 0, 0, v164, v35, v34, 1000.0);
            v37 = v9[2];
            v36 = v9[3];
            if (v37 >= v36 >> 1)
            {
              v9 = sub_1C5625864((v36 > 1), v37 + 1, 1, v9);
            }

            v9[2] = v37 + 1;
            sub_1C5625808(v164, &v9[14 * v37 + 4]);
          }

          v8 = v159;
          if (v159)
          {
            sub_1C5625EE8(&v166, v163);
            v38 = sub_1C570FB20(v1);
            sub_1C5625EE8(v2, v162);
            v39 = sub_1C570FB20(v1);
            sub_1C570FCBC(v1);
            v41 = v40;
            sub_1C570FCBC(v1);
            v43 = v41 + v42;
            sub_1C570FD20(v1);
            v45 = v44 - v43;
            goto LABEL_36;
          }
        }
      }

      v145 = v9[2];
      if (v145 < v5)
      {
        goto LABEL_76;
      }

      if (v5 != v145)
      {
        v146 = &v9[14 * v5 + 17];
        while (1)
        {
          *&v164[0] = 0;
          *(&v164[0] + 1) = 0xE000000000000000;
          sub_1C584FC50();

          *&v164[0] = 0xD000000000000017;
          *(&v164[0] + 1) = 0x80000001C5893E80;
          v163[0] = v10;
          v147 = sub_1C584FD90();
          MEMORY[0x1C6949D90](v147);

          v1 = v164;
          MEMORY[0x1C6949D90](93, 0xE100000000000000);
          v8 = v9[2];
          if (v5 >= v8)
          {
            break;
          }

          v148 = *(&v164[0] + 1);
          ++v5;
          *(v146 - 1) = *&v164[0];
          *v146 = v148;

          v146 += 14;
          if (v145 == v5)
          {
            goto LABEL_67;
          }
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v9 = sub_1C5625864((v8 > 1), v2, 1, v9);
LABEL_70:
        v9[2] = v2;
        sub_1C5625808(v164, &v9[14 * v1 + 4]);
        return v9;
      }

LABEL_67:
      sub_1C56887D0(&v166);
      v5 = v9[2];
      v7 = v160;
      v3 = v161;
    }
  }

  *&v164[0] = *(v1 + 40);
  LODWORD(v168) = sub_1C5724800();
  LODWORD(v166) = 0;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5688838(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
  if (sub_1C584F610())
  {
    sub_1C5625EE8(v1, &v168);
    v149 = *(v1 + 24);
    v150 = sub_1C570FB88(*(v2 + 24));
    sub_1C570FC58(v149);
    v152 = v151;
    sub_1C570FCBC(v149);
    v154 = v152 + v153;
    v166 = *(v2 + 40);
    v155 = sub_1C5724800();
    sub_1C5705704(&v168, v150, 0, 0x7A69537974706D65, 0xE900000000000065, v164, v154, v155);
    v9 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v1 = v9[2];
    v8 = v9[3];
    v2 = v1 + 1;
    if (v1 >= v8 >> 1)
    {
      goto LABEL_77;
    }

    goto LABEL_70;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C5688760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C56887D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5688838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5688880(uint64_t a1)
{
  sub_1C5633434();
  sub_1C584F5F0();
  MEMORY[0x1C694A560](*(v1 + 24));
  v2 = *(v1 + 32);
  MEMORY[0x1C694A560](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1C5688760(v4, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8, &unk_1C5867FA8);
      sub_1C584F5F0();
      sub_1C56887D0(v7);
      v4 += 80;
      --v3;
    }

    while (v3);
  }

  *&v7[0] = *(v1 + 40);
  sub_1C56760A0();
  sub_1C584F5F0();
  v5 = *(v1 + 64);
  v7[0] = *(v1 + 48);
  v7[1] = v5;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5688838(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C5688A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = *a4;
  result = sub_1C56251C8(a1, a5);
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = v16;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a8;
  *(a5 + 72) = a9;
  return result;
}

uint64_t sub_1C5688A70()
{
  sub_1C584FEA0();
  sub_1C5688880(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5688AB4(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C5688880(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5688AF4(uint64_t a1, uint64_t a2)
{
  if (sub_1C57057BC(a1, a2) & 1) != 0 && *(a1 + 24) == *(a2 + 24) && (sub_1C5652690(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (static StackLayout.Alignment.== infix(_:_:)())
  {
    v4 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1C5688B90(uint64_t a1)
{
  result = sub_1C5688BB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5688BB8()
{
  result = qword_1EC16EAA8;
  if (!qword_1EC16EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAA8);
  }

  return result;
}

unint64_t sub_1C5688C10()
{
  result = qword_1EC16EAB0;
  if (!qword_1EC16EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAB0);
  }

  return result;
}

uint64_t sub_1C5688C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5688CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5688D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for ItemPreloader.LoadingState(0, *(v3 + 80), v5, v6);
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_1C5688DBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for ItemPreloader.LoadingState(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1C5688E70(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ItemPreloader.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ItemPreloader.init(provider:)(a1, a2);
  return v4;
}

uint64_t *ItemPreloader.init(provider:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = qword_1EC17AE50;
  if (qword_1EC17B0A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C584F2C0();
  v8 = __swift_project_value_buffer(v7, qword_1EC17B0A8);
  (*(*(v7 - 8) + 16))(v2 + v6, v8, v7);
  type metadata accessor for ItemPreloader.LoadingState(0, *(v5 + 80), v9, v10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  sub_1C584F860();
  *(v2 + *(*v2 + 120)) = sub_1C584F7B0();
  v11 = (v2 + qword_1EC17AE48);
  *v11 = a1;
  v11[1] = a2;
  return v2;
}

uint64_t sub_1C56890A4()
{
  v1[2] = v0;
  v2 = *(*v0 + 80);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ItemPreloader.LoadingState(0, v2, v3, v4);
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C56891D4, v0, 0);
}

uint64_t sub_1C56891D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1C5688D10(v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v1, v3);
  v0[9] = qword_1EC17AE50;
  v5 = sub_1C584F2A0();
  v6 = sub_1C584F9C0();
  v7 = os_log_type_enabled(v5, v6);
  if (EnumCaseMultiPayload == 2)
  {
    if (v7)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, v5, v6, "Starting preload", v8, 2u);
      MEMORY[0x1C694B7A0](v8, -1, -1);
    }

    v9 = v0[2];

    v15 = (*(*v9 + 192) + **(*v9 + 192));
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1C5689460;
    v11 = v0[5];

    return v15(v11);
  }

  else
  {
    if (v7)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5620000, v5, v6, "Trying to preload but not doing it because we've already started and/or loaded the item", v13, 2u);
      MEMORY[0x1C694B7A0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1C5689460()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1C56896A0;
  }

  else
  {
    v4 = sub_1C568958C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C568958C(uint64_t a1)
{
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Successfuly ended preload", v8, 2u);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1C56896A0()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_1C584F2A0();
  v4 = sub_1C584F9B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C5620000, v3, v4, "Failed to preload with error %@", v7, 0xCu);
    sub_1C567CCE0(v8);
    MEMORY[0x1C694B7A0](v8, -1, -1);
    MEMORY[0x1C694B7A0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C568980C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for ItemPreloader.LoadingState(0, v3, v4, v5);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5689930, v1, 0);
}

uint64_t sub_1C5689930(uint64_t a1)
{
  v1[11] = qword_1EC17AE50;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Performing fetch", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[10];

  sub_1C5688D10(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = sub_1C584F2A0();
      v16 = sub_1C584F9C0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C5620000, v15, v16, "Moving from notStarted to loading", v17, 2u);
        MEMORY[0x1C694B7A0](v17, -1, -1);
      }

      v18 = v1[9];
      v19 = v1[3];

      swift_storeEnumTagMultiPayload();
      sub_1C5688DBC(v18);
      v38 = (*(v19 + qword_1EC17AE48) + **(v19 + qword_1EC17AE48));
      v20 = swift_task_alloc();
      v1[12] = v20;
      *v20 = v1;
      v20[1] = sub_1C5689EAC;
      v21 = v1[7];

      return v38(v21);
    }

    else
    {
      v26 = sub_1C584F2A0();
      v27 = sub_1C584F9C0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C5620000, v26, v27, "We're currently loading so adding to waiters to be called back later", v28, 2u);
        MEMORY[0x1C694B7A0](v28, -1, -1);
      }

      v30 = v1[3];
      v29 = v1[4];

      type metadata accessor for ItemPreloader(255, v29, v31, v32);
      WitnessTable = swift_getWitnessTable();
      v34 = swift_task_alloc();
      v1[15] = v34;
      *v34 = v1;
      v34[1] = sub_1C568A2DC;
      v35 = v1[3];
      v36 = v1[4];
      v37 = v1[2];

      return MEMORY[0x1EEE6DE38](v37, v30, WitnessTable, 0x29286863746566, 0xE700000000000000, sub_1C568B4C8, v35, v36);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v23 = sub_1C584F2A0();
      v24 = sub_1C584F9C0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1C5620000, v23, v24, "Item is loaded with an error", v25, 2u);
        MEMORY[0x1C694B7A0](v25, -1, -1);
      }

      swift_willThrow();

      v14 = v1[1];
    }

    else
    {
      v7 = *(v1[5] + 32);
      v7(v1[6], v1[10], v1[4]);
      v8 = sub_1C584F2A0();
      v9 = sub_1C584F9C0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C5620000, v8, v9, "Item is loaded and valid", v10, 2u);
        MEMORY[0x1C694B7A0](v10, -1, -1);
      }

      v11 = v1[6];
      v12 = v1[4];
      v13 = v1[2];

      v7(v13, v11, v12);

      v14 = v1[1];
    }

    return v14();
  }
}

uint64_t sub_1C5689EAC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1C568A490;
  }

  else
  {
    v4 = sub_1C5689FD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C5689FD8()
{
  v1 = v0[9];
  (*(v0[5] + 16))(v1, v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  sub_1C5688DBC(v1);
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Successfully fetched item", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1C568A128;
  v6 = v0[7];

  return sub_1C568AB04(v6);
}

uint64_t sub_1C568A128()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1C568A238, v1, 0);
}

uint64_t sub_1C568A238()
{
  (*(v0[5] + 32))(v0[2], v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C568A2DC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1C568A788;
  }

  else
  {
    v4 = sub_1C568A408;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C568A408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C568A490(uint64_t a1)
{
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Error in fetching item", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[13];
  v6 = v1[9];

  *v6 = v5;
  swift_storeEnumTagMultiPayload();
  v7 = v5;
  sub_1C5688DBC(v6);
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_1C568A5E0;
  v9 = v1[13];

  return sub_1C568AF14(v9);
}

uint64_t sub_1C568A5E0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1C568A6F0, v1, 0);
}

uint64_t sub_1C568A6F0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C568A788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C568A810(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v3 = sub_1C584F860();
  MEMORY[0x1EEE9AC00](v3, v4);
  (*(v6 + 16))(&v8 - v5, a1, v3);
  swift_beginAccess();
  sub_1C584F810();
  sub_1C584F7F0();
  return swift_endAccess();
}

uint64_t sub_1C568A958@<X0>(uint64_t a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v5 = *(*v3 + 80);
  v6 = type metadata accessor for ItemPreloader.LoadingState(0, v5, a2, a3);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - v9;
  sub_1C5688D10(&v15 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v7 + 8))(v10, v6);
LABEL_5:
    v12 = *(v5 - 8);
    v13 = 1;
    return (*(v12 + 56))(a1, v13, 1, v5);
  }

  v12 = *(v5 - 8);
  (*(v12 + 32))(a1, v10, v5);
  v13 = 0;
  return (*(v12 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1C568AB04(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*v1 + 80);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v4 = sub_1C584F860();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v2[13] = *(v5 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568AC5C, v1, 0);
}

uint64_t sub_1C568AC5C(uint64_t a1)
{
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Invoking waiters with loaded result", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[7];

  v6 = *(*v5 + 120);
  swift_beginAccess();
  v7 = *(v5 + v6);

  if (sub_1C584F800())
  {
    v8 = 0;
    v9 = v1[12];
    v20 = v1[13];
    v10 = (v1[9] + 16);
    do
    {
      v11 = sub_1C584F7D0();
      sub_1C584F790();
      if (v11)
      {
        (*(v9 + 16))(v1[14], v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, v1[11]);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1C584FC60();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v16 = v1[14];
        v17 = v1[11];
        v1[5] = result;
        (*(v9 + 16))(v16, v1 + 5, v17);
        swift_unknownObjectRelease();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v13 = v1[14];
      v14 = v1[11];
      (*v10)(v1[10], v1[6], v1[8]);
      sub_1C584F850();
      (*(v9 + 8))(v13, v14);
      ++v8;
    }

    while (v12 != sub_1C584F800());
  }

  v18 = sub_1C584F7B0();
  sub_1C5688E70(v18);

  v19 = v1[1];

  return v19();
}

uint64_t sub_1C568AF14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v3 = sub_1C584F860();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568B014, v1, 0);
}

uint64_t sub_1C568B014(uint64_t a1)
{
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Invoking waiters with error", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[8];

  v6 = *(*v5 + 120);
  swift_beginAccess();
  v7 = *(v5 + v6);

  if (sub_1C584F800())
  {
    v8 = 0;
    v10 = v1[10];
    v9 = v1[11];
    do
    {
      v11 = sub_1C584F7D0();
      sub_1C584F790();
      if (v11)
      {
        (*(v10 + 16))(v1[12], v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v1[9]);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1C584FC60();
        if (v9 != 8)
        {
          __break(1u);
          return result;
        }

        v18 = v1[12];
        v19 = v1[9];
        v1[5] = result;
        (*(v10 + 16))(v18, v1 + 5, v19);
        swift_unknownObjectRelease();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v13 = v1[12];
      v14 = v1[9];
      v15 = v1[7];
      v1[6] = v15;
      v16 = v15;
      sub_1C584F840();
      (*(v10 + 8))(v13, v14);
      ++v8;
    }

    while (v12 != sub_1C584F800());
  }

  v20 = sub_1C584F7B0();
  sub_1C5688E70(v20);

  v21 = v1[1];

  return v21();
}

uint64_t *ItemPreloader.deinit()
{
  v1 = *v0;
  v2 = qword_1EC17AE50;
  v3 = sub_1C584F2C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 112);
  v7 = type metadata accessor for ItemPreloader.LoadingState(0, *(v1 + 80), v5, v6);
  (*(*(v7 - 8) + 8))(v0 + v4, v7);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ItemPreloader.__deallocating_deinit()
{
  ItemPreloader.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C568B3EC()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B0A8);
  __swift_project_value_buffer(v0, qword_1EC17B0A8);
  sub_1C5715FD8();
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C568B4D0(uint64_t a1)
{
  result = sub_1C584F2C0();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ItemPreloader.LoadingState(319, *(a1 + 80), v3, v4);
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ItemPreloader.preload()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C565C598;

  return v4();
}

uint64_t dispatch thunk of ItemPreloader.fetch()(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C565C598;

  return v6(a1);
}

uint64_t sub_1C568B850(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C568BBDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C568B8C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C568BA08(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

unint64_t sub_1C568BBDC()
{
  result = qword_1EC16CF60;
  if (!qword_1EC16CF60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC16CF60);
  }

  return result;
}

double URLShorteningSessionConfiguration.timeout.getter()
{
  v1 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t URLShorteningSessionConfiguration.timeout.setter(double a1)
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t URLShorteningSessionConfiguration.doNotUseCache.getter()
{
  v1 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t URLShorteningSessionConfiguration.doNotUseCache.setter(char a1)
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id URLShorteningSessionConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  GEOConfigGetDouble();
  *&v0[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = v2;
  v0[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id URLShorteningSessionConfiguration.__allocating_init(timeout:doNotUseCache:)(char a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = a2;
  v5[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id URLShorteningSessionConfiguration.init(timeout:doNotUseCache:)(char a1, double a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = a2;
  v2[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1C568C178()
{
  sub_1C584FEA0();
  MEMORY[0x1C694A560](0);
  return sub_1C584FEF0();
}

uint64_t sub_1C568C1E4(uint64_t a1)
{
  sub_1C584FEA0();
  MEMORY[0x1C694A560](0);
  return sub_1C584FEF0();
}

id URLShorteningSession.__allocating_init(originalURLProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v25 = a3;
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v12 = objc_allocWithZone(v4);
  if (qword_1EC17B060 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_1EC17B068);
  v14 = *(v8 + 16);
  v14(&v12[OBJC_IVAR___MUURLShorteningSession_logger], v13, v7);
  v15 = &v12[OBJC_IVAR___MUURLShorteningSession_originalURLProvider];
  *v15 = a1;
  *(v15 + 1) = a2;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAD8, &qword_1C586AC20);
  v14(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = a1;
  v19[1] = a2;
  v20 = v25;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  swift_retain_n();
  v21 = v20;
  *&v12[OBJC_IVAR___MUURLShorteningSession_internalShorteningSession] = ItemPreloader.__allocating_init(provider:)(&unk_1C586AC30, v18);
  v27.receiver = v12;
  v27.super_class = v26;
  v22 = objc_msgSendSuper2(&v27, sel_init);

  return v22;
}

id URLShorteningSession.init(originalURLProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B060 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EC17B068);
  v13 = *(v8 + 16);
  v13(&v4[OBJC_IVAR___MUURLShorteningSession_logger], v12, v7);
  v14 = &v4[OBJC_IVAR___MUURLShorteningSession_originalURLProvider];
  *v14 = a1;
  *(v14 + 1) = a2;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAD8, &qword_1C586AC20);
  v13(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v11, v7);
  v18 = (v17 + v16);
  *v18 = a1;
  v18[1] = a2;
  v19 = v24;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();
  v20 = v19;
  *&v4[OBJC_IVAR___MUURLShorteningSession_internalShorteningSession] = ItemPreloader.__allocating_init(provider:)(&unk_1C586AC38, v17);
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);

  return v21;
}

uint64_t sub_1C568C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_1C584F580();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v5[29] = swift_task_alloc();
  v7 = sub_1C584EA90();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568C850, 0, 0);
}

uint64_t sub_1C568C850(uint64_t a1)
{
  v48 = v1;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Fetching original URL", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[30];
  v6 = v1[31];
  v7 = v1[29];
  v8 = v1[23];

  v8();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1C5625230(v1[29], &unk_1EC16E660, &unk_1C58685F0);
    v9 = sub_1C584F2A0();
    v10 = sub_1C584F9B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5620000, v9, v10, "No original URL", v11, 2u);
      MEMORY[0x1C694B7A0](v11, -1, -1);
    }

    sub_1C568FB68();
    swift_allocError();
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = v1[34];
    v15 = v1[35];
    v16 = v1[30];
    v17 = v1[31];
    v18 = v1[29];
    v19 = *(v17 + 32);
    v1[36] = v19;
    v1[37] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v15, v18, v16);
    v20 = *(v17 + 16);
    v1[38] = v20;
    v1[39] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v14, v15, v16);
    v21 = sub_1C584F2A0();
    v22 = sub_1C584F9C0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[34];
    v26 = v1[30];
    v25 = v1[31];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v27 = 136315138;
      sub_1C568FB10();
      v28 = sub_1C584FD90();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_1C5649518(v28, v30, &v47);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1C5620000, v21, v22, "Trying to shorten original url %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1C694B7A0](v45, -1, -1);
      MEMORY[0x1C694B7A0](v27, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v1[40] = v31;
    v46 = v1[33];
    v34 = v1[27];
    v33 = v1[28];
    v35 = v1[25];
    v36 = v1[26];
    v37 = [objc_allocWithZone(MEMORY[0x1E696F420]) init];
    v1[41] = v37;
    v38 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
    swift_beginAccess();
    if (*(v35 + v38))
    {
      v39 = 2;
    }

    else
    {
      v39 = 0;
    }

    [v37 setOptions_];
    v40 = sub_1C584EA20();
    v1[42] = v40;
    GEOConfigGetDouble();
    v42 = v41;
    sub_1C568FBBC();
    (*(v34 + 104))(v33, *MEMORY[0x1E69E7F98], v36);
    v43 = sub_1C584FA20();
    v1[43] = v43;
    (*(v34 + 8))(v33, v36);
    v1[2] = v1;
    v1[7] = v46;
    v1[3] = sub_1C568CDD4;
    v44 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAF8, &qword_1C586ADC8);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1C568D22C;
    v1[13] = &block_descriptor_83;
    v1[14] = v44;
    [v37 shortenURL:v40 timeout:v43 queue:v1 + 10 completion:v42];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }
}

uint64_t sub_1C568CDD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1C568D13C;
  }

  else
  {
    v2 = sub_1C568CEE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C568CEE4()
{
  v26 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 304);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 168);
  (*(v0 + 288))(v6, *(v0 + 264), v5);

  v3(v4, v6, v5);
  v7 = sub_1C584F2A0();
  v8 = sub_1C584F9C0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 320);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 240);
  if (v9)
  {
    v23 = *(v0 + 328);
    v24 = *(v0 + 320);
    v14 = swift_slowAlloc();
    v22 = v11;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    sub_1C568FB10();
    v16 = sub_1C584FD90();
    v18 = v17;
    v24(v12, v13);
    v19 = sub_1C5649518(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1C5620000, v7, v8, "Successfuly shortened url %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C694B7A0](v15, -1, -1);
    MEMORY[0x1C694B7A0](v14, -1, -1);

    v24(v22, v13);
  }

  else
  {

    v10(v12, v13);
    v10(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1C568D13C(uint64_t a1)
{
  v2 = v1[43];
  v4 = v1[41];
  v3 = v1[42];
  v5 = v1[40];
  v6 = v1[35];
  v7 = v1[30];
  swift_willThrow();

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1C568D22C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C584EA90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAB8, &unk_1C586ADD0);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return MEMORY[0x1EEE6DEE8](v10, v11);
  }

  else
  {
    sub_1C584EA50();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1C568D62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 16))();
  if (v3)
  {
    v4 = v3;
    sub_1C584EA50();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C584EA90();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id URLShorteningSession.__allocating_init(originalURLProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C568D8A4;
  v10[3] = &block_descriptor_8;
  v6 = _Block_copy(v10);

  v7 = [objc_allocWithZone(type metadata accessor for URLShorteningSessionConfiguration()) init];
  v8 = [v5 initWithOriginalURLProvider:v6 configuration:v7];

  _Block_release(v6);
  return v8;
}

id URLShorteningSession.init(originalURLProvider:)(uint64_t a1, uint64_t a2)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C568D8A4;
  v7[3] = &block_descriptor_9;
  v3 = _Block_copy(v7);

  v4 = [objc_allocWithZone(type metadata accessor for URLShorteningSessionConfiguration()) init];
  v5 = [v2 initWithOriginalURLProvider:v3 configuration:v4];

  _Block_release(v3);
  return v5;
}

id sub_1C568D8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = *(a1 + 32);

  v6(v7);

  v8 = sub_1C584EA90();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C584EA20();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

Swift::Void __swiftcall URLShorteningSession.preload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1C584F8A0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1C5659C04(0, 0, v4, &unk_1C586AC50, v6);
}

uint64_t sub_1C568DC18(uint64_t a1)
{
  v1[3] = OBJC_IVAR___MUURLShorteningSession_logger;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Preloading URL for shortening", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[2];

  v8 = (*(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 184) + **(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 184));
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v6[1] = sub_1C568DDC0;

  return v8();
}

uint64_t sub_1C568DDC0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C568DEBC, 0, 0);
}

uint64_t sub_1C568DEBC(uint64_t a1)
{
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Finished preload", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1C568E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6[5] = swift_task_alloc();
  v7 = sub_1C584EA90();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568E1C0, 0, 0);
}

uint64_t sub_1C568E1C0(uint64_t a1)
{
  v1[10] = OBJC_IVAR___MUURLShorteningSession_logger;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Fetching short URL", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v1[2];

  v9 = (*(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 192) + **(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 192));
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_1C568E370;
  v7 = v1[9];

  return v9(v7);
}

uint64_t sub_1C568E370()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1C568E6F8;
  }

  else
  {
    v2 = sub_1C568E484;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C568E484()
{
  v24 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[8], v0[9], v0[6]);
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v8 = 136315138;
    sub_1C568FB10();
    v19 = sub_1C584FD90();
    v21 = v1;
    v10 = v9;
    v22 = *(v6 + 8);
    v22(v5, v7);
    v11 = sub_1C5649518(v19, v10, &v23);
    v1 = v21;

    *(v8 + 4) = v11;
    _os_log_impl(&dword_1C5620000, v2, v3, "Fetched short URL %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1C694B7A0](v20, -1, -1);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  else
  {

    v22 = *(v6 + 8);
    v22(v5, v7);
  }

  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];
  v16 = v0[3];
  v1(v15, v12, v13);
  (*(v14 + 56))(v15, 0, 1, v13);
  v16(v15, 0);
  sub_1C5625230(v15, &unk_1EC16E660, &unk_1C58685F0);
  v22(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C568E6F8()
{
  v1 = v0[12];
  v2 = v1;
  v3 = sub_1C584F2A0();
  v4 = sub_1C584F9B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C5620000, v3, v4, "Short URL ended with error %@", v6, 0xCu);
    sub_1C5625230(v7, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v7, -1, -1);
    MEMORY[0x1C694B7A0](v6, -1, -1);
  }

  v10 = v0[12];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[3];

  (*(v12 + 56))(v13, 1, 1, v11);
  v15 = v10;
  v14(v13, v10);

  sub_1C5625230(v13, &unk_1EC16E660, &unk_1C58685F0);

  v16 = v0[1];

  return v16();
}

void sub_1C568E918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_1C56466CC(a1, &v14 - v8, &unk_1EC16E660, &unk_1C58685F0);
  v10 = sub_1C584EA90();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1C584EA20();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_1C584E940();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

double sub_1C568EA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = sub_1C584F8A0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;

  sub_1C5659C04(0, 0, v11, a4, v13);

  return result;
}

uint64_t sub_1C568EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568EC48, 0, 0);
}

uint64_t sub_1C568EC48()
{
  v1 = *(v0[2] + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession);
  v0[6] = v1;
  v2 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0x2ED2000000000000;
  v0[7] = *(*v1 + 200);
  v0[8] = v2;
  return MEMORY[0x1EEE6DFA0](sub_1C568EC90, v1, 0);
}

uint64_t sub_1C568EC90()
{
  (*(v0 + 56))();

  return MEMORY[0x1EEE6DFA0](sub_1C568ECFC, 0, 0);
}

uint64_t sub_1C568ECFC()
{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  sub_1C5625230(v1, &unk_1EC16E660, &unk_1C58685F0);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1C568EDC4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_1C584F8A0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = v16;
  v19 = a1;
  sub_1C5659C04(0, 0, v14, a7, v18);

  return result;
}

void sub_1C568EF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1C56466CC(a1, &v11 - v6, &unk_1EC16E660, &unk_1C58685F0);
  v8 = sub_1C584EA90();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_1C584EA20();
    (*(v9 + 8))(v7, v8);
  }

  (*(a2 + 16))(a2, v10);
}

id URLShorteningSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C568F164()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B068);
  __swift_project_value_buffer(v0, qword_1EC17B068);
  sub_1C5715FD8();
  swift_beginAccess();

  return sub_1C584F2B0();
}

uint64_t sub_1C568F208(uint64_t a1)
{
  v4 = *(sub_1C584F2C0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C565C934;

  return sub_1C568C6D0(a1, v1 + v5, v9, v10, v11);
}

uint64_t sub_1C568F334(uint64_t a1)
{
  v4 = *(sub_1C584F2C0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C565C598;

  return sub_1C568C6D0(a1, v1 + v5, v9, v10, v11);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C568F49C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C565C934;

  return sub_1C568DBF8(v3, v4, v5, v2);
}

uint64_t sub_1C568F530()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C934;

  return sub_1C568E0B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1C568F5D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C934;

  return sub_1C568EBA8(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1C568F684()
{
  result = qword_1EC16EAE8;
  if (!qword_1EC16EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAE8);
  }

  return result;
}

uint64_t type metadata accessor for URLShorteningSession(uint64_t a1)
{
  result = qword_1EC178050;
  if (!qword_1EC178050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C568F758(uint64_t a1)
{
  result = sub_1C584F2C0();
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

uint64_t getEnumTagSinglePayload for URLShorteningSession.InternalError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for URLShorteningSession.InternalError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C568F920()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C598;

  return sub_1C568EBA8(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1C584F2C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t sub_1C568FB10()
{
  result = qword_1EC16D8C0;
  if (!qword_1EC16D8C0)
  {
    sub_1C584EA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D8C0);
  }

  return result;
}

unint64_t sub_1C568FB68()
{
  result = qword_1EC16EAF0;
  if (!qword_1EC16EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAF0);
  }

  return result;
}

unint64_t sub_1C568FBBC()
{
  result = qword_1EC16D010;
  if (!qword_1EC16D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D010);
  }

  return result;
}

id sub_1C568FC7C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _MUSwiftBundleIdentifier();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id static NSBundle.mapsUIBundle.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _MUSwiftBundleIdentifier();
  v2 = [swift_getObjCClassFromMetadata() classForCoder];
  v3 = [objc_opt_self() bundleForClass_];

  return v3;
}

uint64_t sub_1C568FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C57041CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C568FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56F4368();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C568FDEC@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56EBE80(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1C568FE24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBE80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C568FE50()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge(0) + 24));
  if (v1 == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C568FE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704178();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C568FEC8@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56EBEB0(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1C568FF00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C568FF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C568FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C57040D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569001C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C570407C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690068@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56EBEC0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C56900B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C569011C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704028();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690168@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C56EBEE0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C56901B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56901F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56F2204();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690244@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A110(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5690288@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A110(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56902C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703FD4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703F80();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569036C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C5690388()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_1C56903AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1C56903CC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1C56903E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703F2C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703ED8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C569048C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1C56904C0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C56904E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703E84();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5690534@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C56EC0C8(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1C569056C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EC0C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5690598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703E30();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C56905F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB00, &qword_1C586AF68);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB00, &qword_1C586AF68);
  v9 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUIconArgument);
  }

  sub_1C584EFC0();
  v11 = v9[5];
  v12 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v9[6]) = 2;
  *(a1 + v9[7]) = 2;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB00, &qword_1C586AF68);
  }

  return result;
}

uint64_t sub_1C56907E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB08, &qword_1C586AF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB08, &qword_1C586AF70);
  v9 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB08, &qword_1C586AF70);
  }

  return result;
}

uint64_t sub_1C5690970@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB10, &qword_1C586AF78);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB10, &qword_1C586AF78);
  v9 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB10, &qword_1C586AF78);
  }

  return result;
}

void sub_1C5690AF4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB18, &qword_1C586AF80);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) == 1)
  {
    sub_1C584EFC0();
    v11 = *(v9 + 20);
    if (qword_1EC178E90 != -1)
    {
      swift_once();
    }

    *(a1 + v11) = qword_1EC178E98;
    v12 = v10(v6, 1, v9);

    if (v12 != 1)
    {
      sub_1C5625230(v6, &qword_1EC16EB18, &qword_1C586AF80);
    }
  }

  else
  {
    sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  }
}

uint64_t sub_1C5690CC0@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB20, &qword_1C586AF88);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB20, &qword_1C586AF88);
  v9 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = &a1[*(v9 + 24)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = *(v9 + 28);
  v13 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB20, &qword_1C586AF88);
  }

  return result;
}

uint64_t sub_1C5690E98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB28, &qword_1C586AF90);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB28, &qword_1C586AF90);
  v9 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
  }

  sub_1C584EFC0();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB28, &qword_1C586AF90);
  }

  return result;
}

uint64_t sub_1C5691024@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB30, &qword_1C586AF98);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB30, &qword_1C586AF98);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v10 = *(*(refreshed - 8) + 48);
  if (v10(v6, 1, refreshed) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = (a1 + *(refreshed + 24));
  *v11 = 0;
  v11[1] = 0;
  *(a1 + *(refreshed + 28)) = 3;
  result = (v10)(v6, 1, refreshed);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB30, &qword_1C586AF98);
  }

  return result;
}

uint64_t sub_1C56911C4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB38, &qword_1C586AFA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB38, &qword_1C586AFA0);
  v9 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB38, &qword_1C586AFA0);
  }

  return result;
}

uint64_t sub_1C569134C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB40, &qword_1C586AFA8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB40, &qword_1C586AFA8);
  v9 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB40, &qword_1C586AFA8);
  }

  return result;
}

uint64_t sub_1C56914DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB48, &qword_1C586AFB0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB48, &qword_1C586AFB0);
  v9 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB48, &qword_1C586AFB0);
  }

  return result;
}

uint64_t sub_1C5691660@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56916A0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB50, &qword_1C586AFB8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB50, &qword_1C586AFB8);
  v9 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  *(a1 + *(v9 + 28)) = 5;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB50, &qword_1C586AFB8);
  }

  return result;
}

uint64_t sub_1C5691840@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB58, &qword_1C586AFC0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB58, &qword_1C586AFC0);
  v9 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB58, &qword_1C586AFC0);
  }

  return result;
}

uint64_t sub_1C5691A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB60, &qword_1C586AFC8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB60, &qword_1C586AFC8);
  v9 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
  }

  sub_1C584EFC0();
  *(a1 + *(v9 + 20)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB60, &qword_1C586AFC8);
  }

  return result;
}

uint64_t sub_1C5691B90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB68, &qword_1C586AFD0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB68, &qword_1C586AFD0);
  v9 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  }

  sub_1C584EFC0();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB68, &qword_1C586AFD0);
  }

  return result;
}

uint64_t sub_1C5691D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB70, &qword_1C586AFD8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB70, &qword_1C586AFD8);
  v9 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
  }

  sub_1C584EFC0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[7];
  v14 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB70, &qword_1C586AFD8);
  }

  return result;
}

double sub_1C5691F00@<D0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  sub_1C584EFC0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;

  return result;
}

uint64_t sub_1C5691FA0()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) + 28));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5691FFC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5692058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C56920BC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5692118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C569217C()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0) + 28));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C56921A8()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 54)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1C56921FC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB80, &qword_1C586AFE8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__exploreGuidesArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB80, &qword_1C586AFE8);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB80, &qword_1C586AFE8);
  }

  return result;
}

uint64_t sub_1C5692380@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB88, &qword_1C586AFF0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userGuideArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB88, &qword_1C586AFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB88, &qword_1C586AFF0);
  }

  return result;
}

uint64_t sub_1C5692504@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB90, &qword_1C586AFF8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatingArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB90, &qword_1C586AFF8);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB90, &qword_1C586AFF8);
  }

  return result;
}

uint64_t sub_1C569269C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB98, &qword_1C586B000);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__inlineRapArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EB98, &qword_1C586B000);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
  }

  sub_1C584EFC0();
  *(a1 + *(v9 + 20)) = 6;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EB98, &qword_1C586B000);
  }

  return result;
}

uint64_t sub_1C5692820@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C5692868@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA0, &qword_1C586B008);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__photoArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBA0, &qword_1C586B008);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
  }

  sub_1C584EFC0();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBA0, &qword_1C586B008);
  }

  return result;
}

uint64_t sub_1C5692A10@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBA8, &qword_1C586B010);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewPlaceListArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBA8, &qword_1C586B010);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v9 + 28));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBA8, &qword_1C586B010);
  }

  return result;
}

uint64_t sub_1C5692BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB0, &qword_1C586B018);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openGuideArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBB0, &qword_1C586B018);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBB0, &qword_1C586B018);
  }

  return result;
}

uint64_t sub_1C5692D34@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBB8, &qword_1C586B020);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPlaceArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBB8, &qword_1C586B020);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBB8, &qword_1C586B020);
  }

  return result;
}

uint64_t sub_1C5692EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC0, &qword_1C586B028);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__urlArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBC0, &qword_1C586B028);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBC0, &qword_1C586B028);
  }

  return result;
}

uint64_t sub_1C5693048@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBC8, &qword_1C586B030);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionURLArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBC8, &qword_1C586B030);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBC8, &qword_1C586B030);
  }

  return result;
}

uint64_t sub_1C56931DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD0, &qword_1C586B038);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedLibraryArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBD0, &qword_1C586B038);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
  }

  sub_1C584EFC0();
  *(a1 + *(v9 + 20)) = 3;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBD0, &qword_1C586B038);
  }

  return result;
}

uint64_t sub_1C569336C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBD8, &qword_1C586B040);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__browseCategoryArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBD8, &qword_1C586B040);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBD8, &qword_1C586B040);
  }

  return result;
}

uint64_t sub_1C56934F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE0, &qword_1C586B048);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitDepartureArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBE0, &qword_1C586B048);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  }

  sub_1C584EFC0();
  *(a1 + v9[5]) = 2;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[10]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v9[11];
  v17 = type metadata accessor for MULocation(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBE0, &qword_1C586B048);
  }

  return result;
}

uint64_t sub_1C56936F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBE8, &qword_1C586B050);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openAppClipArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBE8, &qword_1C586B050);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
  }

  sub_1C584EFC0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBE8, &qword_1C586B050);
  }

  return result;
}

uint64_t sub_1C5693890@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF0, &unk_1C586B058);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openExtensionArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBF0, &unk_1C586B058);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  *(a1 + *(v9 + 24)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBF0, &unk_1C586B058);
  }

  return result;
}

uint64_t sub_1C5693A40()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v2 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__reportAnIssueTypeArgument;
  swift_beginAccess();
  if (*(v1 + v2) == 6)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t sub_1C5693A9C(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a4(v15);
    *(v9 + v11) = v14;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v13 + v16) = a1;
  return result;
}

uint64_t sub_1C5693B78(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 3)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

uint64_t sub_1C5693BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsContactArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16DD98, &unk_1C5868560);
  v9 = type metadata accessor for MUContactLabeledValue(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for MUContactLabeledValue);
  }

  sub_1C584EFC0();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16DD98, &unk_1C5868560);
  }

  return result;
}

int *sub_1C5693D78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + result[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C5693DD0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EBF8, &qword_1C586B068);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__viewGuideListArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EBF8, &qword_1C586B068);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v11;
  a1[2] = v11;
  sub_1C584EFC0();
  v12 = (a1 + *(v9 + 32));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EBF8, &qword_1C586B068);
  }

  return result;
}

uint64_t sub_1C5693F68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC00, &qword_1C586B070);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC00, &qword_1C586B070);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
  }

  sub_1C584EFC0();
  *(a1 + *(v9 + 20)) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC00, &qword_1C586B070);
  }

  return result;
}

BOOL sub_1C56940EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC00, &qword_1C586B070);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v6 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addToGuidesArgument;
  swift_beginAccess();
  sub_1C56466CC(v5 + v6, v4, &qword_1EC16EC00, &qword_1C586B070);
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C5625230(v4, &qword_1EC16EC00, &qword_1C586B070);
  return v8;
}

uint64_t sub_1C569420C@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC08, &qword_1C586B078);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__tappedTransitIncidentArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC08, &qword_1C586B078);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC08, &qword_1C586B078);
  }

  return result;
}

uint64_t sub_1C5694394@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1C584EFC0();
}

uint64_t sub_1C56943DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC10, &qword_1C586B080);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__publisherGuideActionArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC10, &qword_1C586B080);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  }

  sub_1C584EFC0();
  *(a1 + v9[5]) = 4;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC10, &qword_1C586B080);
  }

  return result;
}

uint64_t sub_1C5694578@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC18, &qword_1C586B088);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__openPhotoViewerArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC18, &qword_1C586B088);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
  }

  sub_1C584EFC0();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC18, &qword_1C586B088);
  }

  return result;
}

uint64_t sub_1C5694704@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__addPhotosArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16FEF0, &qword_1C586B090);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
  }

  sub_1C584EFC0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16FEF0, &qword_1C586B090);
  }

  return result;
}

uint64_t sub_1C56948C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC20, &qword_1C586B098);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__copyArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC20, &qword_1C586B098);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
  }

  sub_1C584EFC0();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC20, &qword_1C586B098);
  }

  return result;
}

uint64_t sub_1C5694A44@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC28, &qword_1C586B0A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0) + 20));
  v8 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge23MUUserInteractionActionP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDeviceArgument;
  swift_beginAccess();
  sub_1C56466CC(v7 + v8, v6, &qword_1EC16EC28, &qword_1C586B0A0);
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC28, &qword_1C586B0A0);
  }

  return result;
}

uint64_t sub_1C5694C44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = a1(0);
  sub_1C56466CC(v2 + *(v9 + 28), v8, &qword_1EC16EC30, &qword_1C586B0A8);
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C56EC178(v8, a2, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  }

  sub_1C584EFC0();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v10[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + v10[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v10[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  return result;
}

void sub_1C5694E98(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  sub_1C56466CC(v1 + *(v7 + 36), v6, &qword_1EC16EB18, &qword_1C586AF80);
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1C584EFC0();
    v10 = *(v8 + 20);
    if (qword_1EC178E90 != -1)
    {
      swift_once();
    }

    *(a1 + v10) = qword_1EC178E98;
    v11 = v9(v6, 1, v8);

    if (v11 != 1)
    {
      sub_1C5625230(v6, &qword_1EC16EB18, &qword_1C586AF80);
    }
  }

  else
  {
    sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  }
}

uint64_t sub_1C569505C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703DDC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C56950B4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_1C56950E8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C5695114@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC38, &qword_1C586B0B0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  sub_1C56466CC(v1 + *(v7 + 24), v6, &qword_1EC16EC38, &qword_1C586B0B0);
  v8 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v10 = (a1 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[8]) = 2;
  v12 = v8[9];
  v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = (a1 + v8[10]);
  *v14 = 0;
  v14[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC38, &qword_1C586B0B0);
  }

  return result;
}

uint64_t sub_1C5695304(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5695360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C5695424(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5695480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void sub_1C56954CC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(v1 + *(v7 + 48), v6, &qword_1EC16EB18, &qword_1C586AF80);
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1C584EFC0();
    v10 = *(v8 + 20);
    if (qword_1EC178E90 != -1)
    {
      swift_once();
    }

    *(a1 + v10) = qword_1EC178E98;
    v11 = v9(v6, 1, v8);

    if (v11 != 1)
    {
      sub_1C5625230(v6, &qword_1EC16EB18, &qword_1C586AF80);
    }
  }

  else
  {
    sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  }
}

BOOL sub_1C5695674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(v0 + *(v5 + 48), v4, &qword_1EC16EB18, &qword_1C586AF80);
  v6 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C5625230(v4, &qword_1EC16EB18, &qword_1C586AF80);
  return v7;
}

uint64_t sub_1C5695790@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(v1 + *(v7 + 56), v6, &qword_1EC16EC40, &qword_1C586B0B8);
  v8 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  }

  sub_1C584EFC0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[7]) = 3;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC40, &qword_1C586B0B8);
  }

  return result;
}

uint64_t sub_1C5695908()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) + 60));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C569594C()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0) + 28));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5695978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703D88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

float sub_1C5695AAC(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C5695AEC()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5695B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703D34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5695BCC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  sub_1C56466CC(v1 + *(v7 + 20), v6, &qword_1EC16EC48, &qword_1C586B0C0);
  v8 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C56EC178(v6, a1, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C5625230(v6, &qword_1EC16EC48, &qword_1C586B0C0);
  }

  return result;
}