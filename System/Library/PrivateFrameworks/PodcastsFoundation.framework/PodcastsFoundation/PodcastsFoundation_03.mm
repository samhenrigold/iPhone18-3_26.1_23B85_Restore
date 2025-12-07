uint64_t static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(uint64_t a1, double a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AbbreviatedTimeIntervalFormatter.style(from:configuration:)(a1, v20, a2);
  v8 = v20[0];
  v9 = v20[1];
  if (v21)
  {
    if (v21 == 1)
    {
      v10 = v20[0];
      sub_1D9176CBC();
      v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v5 + 8))(v7, v4);
      v12 = [v10 stringFromDate_];

      v13 = sub_1D917820C();
      sub_1D8D42B0C(v8, v9, 1);
      sub_1D8D42B0C(v8, v9, 1);
      return v13;
    }

    goto LABEL_12;
  }

  v15 = qword_1EDCD5F00;
  if (LOBYTE(v20[0]) == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
LABEL_16:
      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D9189080;
      v16 = *&v9 / 60.0;
      if (COERCE__INT64(fabs(*&v9 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 <= -9.22337204e18)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v15 = 0x43E0000000000000;
      if (v16 < 9.22337204e18)
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_20:
      if (v15 == -1)
      {
LABEL_21:
        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        result = swift_allocObject();
        *(result + 16) = xmmword_1D9189080;
        v16 = *&v9 / 86400.0;
        if (COERCE__INT64(fabs(*&v9 / 86400.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v16 > -9.22337204e18)
          {
            if (v16 < 9.22337204e18)
            {
              goto LABEL_24;
            }

LABEL_33:
            __break(1u);
            return result;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      swift_once();
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  if (LOBYTE(v20[0]) != 2)
  {
    goto LABEL_20;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D9189080;
  v16 = *&v9 / 3600.0;
  if (COERCE__INT64(fabs(*&v9 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 9.22337204e18)
  {
LABEL_24:
    v17 = MEMORY[0x1E69E65A8];
    *(result + 56) = MEMORY[0x1E69E6530];
    *(result + 64) = v17;
    *(result + 32) = v16;
    v18 = sub_1D91781DC();

    return v18;
  }

  __break(1u);
LABEL_12:
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t static AbbreviatedTimeIntervalFormatter.style(from:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7];
  v9 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8D429C4(a1, v8);
  v13 = *(v10 + 48);
  if (v13(v8, 1, v9) == 1)
  {
    sub_1D9176E2C();
    sub_1D9176E2C();
    v12[*(v9 + 24)] = 6;
    if (v13(v8, 1, v9) != 1)
    {
      sub_1D8D60B78(v8);
    }
  }

  else
  {
    sub_1D8D60340(v8, v12);
  }

  sub_1D9176CCC();
  v15 = v14 - a3;
  if (v14 - a3 <= 0.0)
  {
    goto LABEL_16;
  }

  sub_1D8D3B954(&v12[*(v9 + 20)], &v24, a3);
  v16 = v24;
  v17 = v12[*(v9 + 24)];
  if (v17 == 6 || v24 >= v17)
  {
    if (v24 <= 3u)
    {
      if (v24 - 1 < 3)
      {
        result = sub_1D8D3D168(v12);
        *a2 = v16;
        *(a2 + 8) = v15;
        *(a2 + 16) = 0;
        return result;
      }

      goto LABEL_14;
    }

    if (v24 != 4)
    {
      if (qword_1EDCD5FF0 != -1)
      {
        swift_once();
      }

      v21 = qword_1EDCD5FF8;
      goto LABEL_19;
    }

LABEL_16:
    if (qword_1ECAB1368 != -1)
    {
      swift_once();
    }

    v21 = qword_1ECAB1370;
LABEL_19:
    v22 = v21;
    result = sub_1D8D3D168(v12);
    *a2 = v22;
    *(a2 + 8) = 0;
    v20 = 1;
    goto LABEL_20;
  }

LABEL_14:
  result = sub_1D8D3D168(v12);
  *a2 = 0;
  *(a2 + 8) = 0;
  v20 = 2;
LABEL_20:
  *(a2 + 16) = v20;
  return result;
}

void sub_1D8D3B954(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176CCC();
  v11 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v12 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v13 = v11 - a3;
  if (v11 - a3 >= 60.0)
  {
    if (v13 >= 3600.0)
    {
      if (v13 >= 86400.0)
      {
        if (v13 >= 604800.0)
        {
          v15 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          v16 = [v12 inSameYearAs_];

          (*(v7 + 8))(v9, v6);
          if (v16)
          {
            v14 = 4;
          }

          else
          {
            v14 = 5;
          }
        }

        else
        {
          (*(v7 + 8))(v9, v6);

          v14 = 3;
        }
      }

      else
      {
        (*(v7 + 8))(v9, v6);

        v14 = 2;
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);

      v14 = 1;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6, v13);

    v14 = 0;
  }

  *a2 = v14;
}

uint64_t sub_1D8D3BB98(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34[-v8];
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34[-v16];
  v38 = *(a3 + 24);
  result = v38(a2, a3, v15);
  if (result)
  {
    v35 = sub_1D8D5D340(a1 & 1, a2, a3);
    v19 = *(a3 + 104);
    v36 = v3;
    v37 = a2;
    v19(a2, a3);
    v20 = *(v11 + 48);
    if (v20(v9, 1, v10) == 1)
    {
      sub_1D9176E2C();
      if (v20(v9, 1, v10) != 1)
      {
        sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
      }
    }

    else
    {
      (*(v11 + 32))(v17, v9, v10);
    }

    sub_1D9176E2C();
    sub_1D8D5D644(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v21 = sub_1D917818C();
    v22 = *(v11 + 8);
    v22(v13, v10);
    v22(v17, v10);
    if (v21)
    {
      if (v35)
      {
        v23 = (*(a3 + 16))(v37, a3);
        if (v24)
        {
          v25 = v23;
          v26 = v24;
          if (qword_1EDCD5F00 == -1)
          {
            goto LABEL_21;
          }

          goto LABEL_33;
        }
      }

      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_32;
    }

    v27 = v37;
    if (v38)(v37, a3) == 1 && ((*(a3 + 32))(v27, a3))
    {
      if ((v35 & 1) == 0 || (v28 = (*(a3 + 16))(v27, a3), !v29))
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_32;
      }

      v25 = v28;
      v26 = v29;
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v35 & 1) == 0 || (v30 = (*(a3 + 16))(v27, a3), !v31))
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

LABEL_32:
        swift_once();
        return sub_1D917693C();
      }

      v25 = v30;
      v26 = v31;
      if (qword_1EDCD5F00 == -1)
      {
LABEL_21:
        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1D9189080;
        *(v32 + 56) = MEMORY[0x1E69E6158];
        *(v32 + 64) = sub_1D8D34978();
        *(v32 + 32) = v25;
        *(v32 + 40) = v26;
        v33 = sub_1D91781DC();

        return v33;
      }
    }

LABEL_33:
    swift_once();
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1D8D3C1DC()
{
  v1 = v0;
  v49 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v49);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - v5;
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917739C();
  __swift_project_value_buffer(v14, qword_1EDCD5E98);
  sub_1D917737C();
  sub_1D917731C();
  v15 = sub_1D917737C();
  v16 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v17 = v13;
    v18 = v3;
    v19 = v8;
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v15, v16, v21, "buildCaption", "", v20, 2u);
    v22 = v20;
    v8 = v19;
    v3 = v18;
    v13 = v17;
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  v23 = v7;
  (*(v8 + 16))(v10, v13, v7);
  sub_1D91773FC();
  swift_allocObject();
  v24 = sub_1D91773EC();
  v25 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v6, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = v6[1];
        v28 = v6[2];
        LOBYTE(v50) = *v6;
        BYTE1(v50) = v27;
        BYTE2(v50) = v28;
        v29 = sub_1D9120AD4(v1 + 21, &v50);
        goto LABEL_26;
      }

      goto LABEL_13;
    }

LABEL_11:
    v30 = v8;
    v31 = v1[24];
    v32 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v31);
    (*(v32 + 40))(&v50, v31, v32);
    if ((v52 & 1) == 0)
    {
      v51 &= 1u;
      v29 = sub_1D8D553A8(&v50);
      v8 = v30;
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 7)
  {
    swift_beginAccess();
    v29 = v1[4];

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 4)
  {
    goto LABEL_11;
  }

LABEL_13:
  v30 = v8;
  sub_1D8D41C00(v6, type metadata accessor for EyebrowBuilder.ListContext);
LABEL_14:
  v33 = v1[24];
  v34 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v33);
  v35 = (*(v34 + 48))(v33, v34);
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = sub_1D8D3CA74();
    }

    else
    {
      v36 = sub_1D9120EE0();
    }
  }

  else
  {
    v36 = sub_1D9121090();
  }

  v38 = v36;
  v39 = v37;
  v8 = v30;
  sub_1D8D423B4(v1 + v25, v3, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D08A50(v3, &qword_1ECAB7AE0, &qword_1D91B7E20);
    swift_beginAccess();
    v40 = v1[17];
    if (v40)
    {
      v41 = v1[16];
      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        inited = swift_initStackObject();
        v49 = v8;
        v43 = inited;
        *(inited + 16) = xmmword_1D918A530;
        *(inited + 32) = v38;
        *(inited + 40) = v39;
        *(inited + 48) = v41;
        *(inited + 56) = v40;

        v38 = sub_1D8D42528(v43, v44, v45, v46);
        v39 = v47;
        v8 = v49;
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {

        v38 = v41;
        v39 = v40;
      }
    }
  }

  else
  {
    sub_1D8D41C00(v3, type metadata accessor for EyebrowBuilder.ListContext);
  }

  v29 = sub_1D8D3CF24(v38, v39);

LABEL_26:
  sub_1D8D42B20(v24, "buildCaption");

  (*(v8 + 8))(v13, v23);
  return v29;
}

uint64_t sub_1D8D3C774(char a1)
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v3);
  v5 = (*(v4 + 48))(v3, v4);
  v6 = sub_1D91209E8();
  if (!v5)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }
      }

      else if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    swift_once();
    return sub_1D917693C();
  }

  if (v5 == 1 || (a1 & 1) != 0)
  {
    swift_beginAccess();
    *(v1 + 162) = 1;
    swift_beginAccess();
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);

    v9 = sub_1D8D3CC74();
    v11 = sub_1D8D3CD88(v9, v10, v7, v8);
    v13 = v12;

    if (!v13)
    {
      return sub_1D8D3CC74();
    }
  }

  else
  {
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917693C();
    v17 = v16;
    v18 = sub_1D8D3CC74();
    v11 = sub_1D8D41CB8(v18, v19, v15, v17);
  }

  return v11;
}

uint64_t sub_1D8D3CA74()
{
  v1 = v0;
  v2 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v4, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return sub_1D8D3C774(0);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return sub_1D8D3C774(0);
    }

LABEL_17:
    v11 = v1[24];
    v12 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v11);
    if ((*(v12 + 72))(v11, v12))
    {
      goto LABEL_18;
    }

    return sub_1D8D3C774(0);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D8D41C00(v4, type metadata accessor for EyebrowBuilder.ListContext);
      return 0;
    }

    sub_1D8D08A50(v4, &qword_1ECAB7AE0, &qword_1D91B7E20);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    return sub_1D8D3C774(0);
  }

  v6 = *v4;
  v7 = v1[24];
  v8 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v7);
  if (((*(v8 + 72))(v7, v8) & 1) == 0)
  {
    return sub_1D8D3C774(0);
  }

  if (v6 != 2 && (v6 & 1) == 0)
  {
    result = sub_1D8D3A0AC(0, 0);
    if (v10)
    {
      return result;
    }

    return sub_1D8D3C774(0);
  }

LABEL_18:
  result = sub_1D8D55D60(0, 0);
  if (!v13)
  {
    result = sub_1D8D3A0AC(0, 0);
    if (!v14)
    {
      result = sub_1D8D3A558(0);
      if (!v15)
      {
        return sub_1D8D3C774(0);
      }
    }
  }

  return result;
}

uint64_t sub_1D8D3CC74()
{
  LOBYTE(result) = sub_1D91209E8();
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_8;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t sub_1D8D3CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a2)
    {
      sub_1D8D447DC();

      v7 = sub_1D91791FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D8D4241C(0, *(v7 + 16) + 1, 1, v7);
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_1D8D4241C((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 16) = v9 + 1;
      v10 = v7 + 16 * v9;
      *(v10 + 32) = a1;
      *(v10 + 40) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
      a3 = sub_1D917817C();
    }

    else
    {
    }
  }

  else
  {

    return a1;
  }

  return a3;
}

uint64_t sub_1D8D3CF24(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = a1;
    v15 = a1;
    v5 = a2;
    if ((*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0xE000000000000000;
    v15 = 0;
    if ((*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_14;
    }

    v4 = 0;
  }

  swift_beginAccess();
  v6 = v2[7];
  if (!v6)
  {
LABEL_14:

    goto LABEL_15;
  }

  v7 = v2[6];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);
  }

  MEMORY[0x1DA7298F0](v7, v6);

  v4 = v15;
LABEL_15:
  v9 = v2[24];
  v10 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v9);
  v11 = (*(v10 + 64))(v9, v10);
  swift_beginAccess();
  if (v11)
  {
    v12 = v3[19];
    if (v12)
    {
      v13 = v3[18];

      MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

      MEMORY[0x1DA7298F0](v13, v12);
    }
  }

  return v4;
}

uint64_t EyebrowBuilder.caption.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D8D3D168(uint64_t a1)
{
  v2 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for KCUTranscriptProvider.GenericNetworkError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8D3D298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

os_log_t _MTLogCategoryDatabaseTelemetry()
{
  v0 = os_log_create("com.apple.podcasts", "DBTelemetry");

  return v0;
}

__n128 sub_1D8D3E3D0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8D3271C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8D3E424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

unsigned __int8 *sub_1D8D3E514(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = sub_1D8D2E820(a1, a2);
  if (!v5)
  {
    sub_1D8FB0024();
    swift_allocError();
    v6 = a1;
LABEL_88:
    *v18 = v6;
    v18[1] = v2;
    return swift_willThrow();
  }

  v6 = v4;
  v7 = v5;

  v9 = HIBYTE(v7) & 0xF;
  v10 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_87:
    sub_1D8FB0024();
    swift_allocError();
    v2 = v7;
    goto LABEL_88;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v40[0] = v6;
      v40[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            LODWORD(v13) = 0;
            v26 = v40 + 1;
            while (1)
            {
              v27 = *v26;
              v28 = v27 - 48;
              if ((v27 - 48) >= 0xA)
              {
                if ((v27 - 65) < 6)
                {
                  v28 = v27 - 55;
                }

                else
                {
                  if ((v27 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v28 = v27 - 87;
                }
              }

              if (v13 >> 28)
              {
                break;
              }

              LODWORD(v13) = 16 * v13 + v28;
              ++v26;
              if (!--v9)
              {
                goto LABEL_86;
              }
            }
          }

          goto LABEL_85;
        }

LABEL_104:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v9)
        {
          LODWORD(v13) = 0;
          v31 = v40;
          while (1)
          {
            v32 = *v31;
            v33 = v32 - 48;
            if ((v32 - 48) >= 0xA)
            {
              if ((v32 - 65) < 6)
              {
                v33 = v32 - 55;
              }

              else
              {
                if ((v32 - 97) > 5)
                {
                  goto LABEL_85;
                }

                v33 = v32 - 87;
              }
            }

            if (v13 >> 28)
            {
              break;
            }

            LODWORD(v13) = 16 * v13 + v33;
            ++v31;
            if (!--v9)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

      if (v9)
      {
        if (--v9)
        {
          LODWORD(v13) = 0;
          v19 = v40 + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_85;
                }

                v21 = v20 - 87;
              }
            }

            if (v13 >> 28)
            {
              break;
            }

            v22 = 16 * v13;
            LODWORD(v13) = 16 * v13 - v21;
            if (v22 < v21)
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1D917957C();
      }

      v12 = *result;
      if (v12 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            if (result)
            {
              LODWORD(v13) = 0;
              v23 = result + 1;
              while (1)
              {
                v24 = *v23;
                v25 = v24 - 48;
                if ((v24 - 48) >= 0xA)
                {
                  if ((v24 - 65) < 6)
                  {
                    v25 = v24 - 55;
                  }

                  else
                  {
                    if ((v24 - 97) > 5)
                    {
                      goto LABEL_85;
                    }

                    v25 = v24 - 87;
                  }
                }

                if (v13 >> 28)
                {
                  goto LABEL_85;
                }

                LODWORD(v13) = 16 * v13 + v25;
                ++v23;
                if (!--v9)
                {
                  goto LABEL_86;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_85;
        }

        goto LABEL_103;
      }

      if (v12 != 45)
      {
        if (v10)
        {
          if (result)
          {
            LODWORD(v13) = 0;
            while (1)
            {
              v29 = *result;
              v30 = v29 - 48;
              if ((v29 - 48) >= 0xA)
              {
                if ((v29 - 65) < 6)
                {
                  v30 = v29 - 55;
                }

                else
                {
                  if ((v29 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v30 = v29 - 87;
                }
              }

              if (v13 >> 28)
              {
                goto LABEL_85;
              }

              LODWORD(v13) = 16 * v13 + v30;
              ++result;
              if (!--v10)
              {
                LOBYTE(v9) = 0;
                goto LABEL_86;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_85:
        LODWORD(v13) = 0;
        LOBYTE(v9) = 1;
LABEL_86:
        v41 = v9;
        if (v9)
        {
          goto LABEL_87;
        }

        goto LABEL_90;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          if (result)
          {
            LODWORD(v13) = 0;
            v14 = result + 1;
            while (1)
            {
              v15 = *v14;
              v16 = v15 - 48;
              if ((v15 - 48) >= 0xA)
              {
                if ((v15 - 65) < 6)
                {
                  v16 = v15 - 55;
                }

                else
                {
                  if ((v15 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v16 = v15 - 87;
                }
              }

              if (v13 >> 28)
              {
                goto LABEL_85;
              }

              v17 = 16 * v13;
              LODWORD(v13) = 16 * v13 - v16;
              if (v17 < v16)
              {
                goto LABEL_85;
              }

              ++v14;
              if (!--v9)
              {
                goto LABEL_86;
              }
            }
          }

LABEL_74:
          LODWORD(v13) = 0;
          LOBYTE(v9) = 0;
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1D8FAF6F8(v6, v7, 16);
  v13 = v34;

  if ((v13 & 0x100000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_90:
  v35 = sub_1D91782EC();
  if (v35 > 5)
  {
    if (v35 == 6)
    {

      v37 = v13 >> 8;
      v36 = WORD1(v13);
      v39 = 255;
      LOBYTE(v38) = v13;
    }

    else
    {
      if (v35 != 8)
      {
        goto LABEL_87;
      }

      v36 = bswap32(v13);
      v37 = v36 >> 8;
      v38 = HIWORD(v36);
      v39 = HIBYTE(v36);
    }
  }

  else if (v35 == 3)
  {

    v36 = (v13 >> 8) & 0xF | (16 * ((v13 >> 8) & 0xF));
    LOBYTE(v37) = (v13 >> 4) | (16 * (v13 >> 4));
    v39 = 255;
    LOBYTE(v38) = v13 & 0xF | (16 * (v13 & 0xF));
  }

  else
  {
    if (v35 != 4)
    {
      goto LABEL_87;
    }

    LOWORD(v36) = (v13 >> 12) | (16 * (v13 >> 12));
    v37 = (v13 >> 8) & 0xF | (16 * ((v13 >> 8) & 0xF));
    LOBYTE(v38) = (v13 >> 4) | (16 * (v13 >> 4));
    v39 = v13 & 0xF | (16 * (v13 & 0xF));
  }

  return ((v38 << 16) | (v39 << 24) | (v37 << 8) | v36);
}

void sub_1D8D3EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [v6 BOOLForKey_];

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1D8D59400;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D591F0;
  v11[3] = &block_descriptor_107;
  v10 = _Block_copy(v11);

  [v8 valueWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_1D8D3EB54()
{

  return swift_deallocObject();
}

uint64_t Publisher.replayingBufferedMulticast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = sub_1D917768C();
  v22[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1D9177B9C();

  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for RepublishingValueSubject(0, v6, v13, AssociatedConformanceWitness);
  v22[1] = AssociatedTypeWitness;
  (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
  RepublishingValueSubject.__allocating_init(_:)(v8);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_1D9177D2C();

  (*(v22[0] + 8))(v11, v9);
  v26 = v17;
  v27 = v18;
  v23 = v9;
  v24 = v15;
  v25 = WitnessTable;
  sub_1D917776C();
  swift_getWitnessTable();
  v19 = sub_1D917796C();

  v23 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1D91775BC();
  swift_getWitnessTable();
  sub_1D9177B2C();
}

uint64_t *RepublishingValueSubject.init(_:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v1[2] = v4;
  *(v1 + 24) = 1;
  v5 = *(v3 + 120);
  v6 = sub_1D91777CC();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + *(*v1 + 128);
  v8 = *(v3 + 80);
  *v7 = sub_1D8D3F130();
  *(v7 + 8) = v9;
  *(v1 + *(*v1 + 144)) = MEMORY[0x1E69E7CC0];
  (*(*(v8 - 8) + 32))(v1 + *(*v1 + 136), a1, v8);
  return v1;
}

uint64_t RepublishingValueSubject.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RepublishingValueSubject.init(_:)(a1);
  return v2;
}

uint64_t sub_1D8D3F14C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t type metadata accessor for MediaSpaceCalculator(uint64_t a1)
{
  result = qword_1ECAB1DB8;
  if (!qword_1ECAB1DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D3F360(void *a1)
{
  sub_1D91777CC();
  result = sub_1D91791BC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t MediaSpaceCalculator.__allocating_init(mediaPath:calculationQueue:managedObjectContext:notificationCenter:fileManager:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v63 = a5;
  v78 = a4;
  v52 = a2;
  v68 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v51 - v9;
  v10 = sub_1D9178DFC();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178FBC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E0, &qword_1D91942F8);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v20 = &v51 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E8, &qword_1D9194300);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v51 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F0, &qword_1D9194308);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v51 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F8, &qword_1D9194310);
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = &v51 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A00, &qword_1D9194318);
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v62 = &v51 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A08, &unk_1D9194320);
  v26 = *(v25 - 8);
  v74 = v25;
  v75 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v51 - v27;
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = 0;
  v29 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v67 = sub_1D9176C2C();
  v69 = *(v67 - 8);
  (*(v69 + 16))(v28 + v29, a1, v67);
  swift_beginAccess();
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_1D9177A9C();
  swift_endAccess();
  *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_managedObjectContext) = a3;
  sub_1D8CFD9D8(a5, v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager);
  v30 = v52;
  *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_workQueue) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  swift_allocObject();
  v59 = a3;
  v31 = v30;
  *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject) = sub_1D91778DC();
  sub_1D9178FCC();
  sub_1D9178FCC();
  sub_1D8D11A14(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D9177BFC();
  v32 = *(v13 + 8);
  v32(v15, v12);
  v32(v18, v12);
  sub_1D8CF48EC(&qword_1ECAB0518, &qword_1ECAB69E0, &qword_1D91942F8, MEMORY[0x1E695BE80]);
  v33 = v51;
  v34 = v54;
  sub_1D9177B9C();
  (*(v55 + 8))(v20, v34);
  *&v79 = *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);
  sub_1D8CF48EC(&qword_1ECAB0760, &qword_1ECAB69E8, &qword_1D9194300, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF88]);
  v35 = v53;
  v36 = v56;
  sub_1D9177BEC();
  (*(v58 + 8))(v33, v36);
  v37 = v65;
  sub_1D9178DCC();
  *&v79 = v31;
  v38 = v31;
  v39 = sub_1D9178DBC();
  v40 = v72;
  (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB06C8, &qword_1ECAB69F0, &qword_1D9194308, MEMORY[0x1E695BDC0]);
  sub_1D8D02DF0();
  v41 = v57;
  v42 = v60;
  sub_1D9177CFC();
  sub_1D8D08A50(v40, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v76 + 8))(v37, v77);
  (*(v61 + 8))(v35, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1D8F0F18C;
  *(v43 + 24) = v28;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A10, &qword_1D9194330);
  sub_1D8CF48EC(&qword_1ECAB0538, &qword_1ECAB69F8, &qword_1D9194310, MEMORY[0x1E695BE50]);
  sub_1D8CF48EC(&qword_1ECAB06D0, &qword_1ECAB6A10, &qword_1D9194330, MEMORY[0x1E695BDA0]);
  v44 = v62;
  v45 = v66;
  sub_1D9177DDC();

  (*(v70 + 8))(v41, v45);
  sub_1D8CF48EC(&qword_1ECAB0558, &qword_1ECAB6A00, &qword_1D9194318, MEMORY[0x1E695BE40]);
  v46 = v64;
  v47 = v71;
  sub_1D9177B2C();
  (*(v73 + 8))(v44, v47);
  swift_getKeyPath();
  *&v79 = v28;
  sub_1D8CF48EC(&qword_1ECAB0B88, &qword_1ECAB6A08, &unk_1D9194320, MEMORY[0x1E695BC80]);
  v48 = v74;
  v49 = sub_1D9177DAC();

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  (*(v69 + 8))(v68, v67);
  (*(v75 + 8))(v46, v48);
  *(v28 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = v49;

  return v28;
}

uint64_t sub_1D8D4008C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D400D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF80]);
  return sub_1D9177A6C();
}

uint64_t sub_1D8D401A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8D419F0;
  *(v5 + 24) = v4;

  InterestObserverProvider.determineIfUserIsColdStartUser(completion:)(sub_1D8D851F4, v5);
}

uint64_t sub_1D8D40258()
{

  return swift_deallocObject();
}

void InterestObserverProvider.determineIfUserIsColdStartUser(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &type metadata for Podcasts;
  v25 = sub_1D8CF0F2C();
  LOBYTE(aBlock) = 16;
  v12 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v12)
  {
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v19 = sub_1D9178E1C();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v25 = sub_1D8F71AF4;
    v26 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1D8CF5F60;
    v24 = &block_descriptor_6_0;
    v14 = _Block_copy(&aBlock);

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBD18(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    v15 = v19;
    MEMORY[0x1DA72A400](0, v11, v8, v14);
    _Block_release(v14);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v20);
  }

  else
  {
    v16 = *(v2 + 16);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v25 = sub_1D8F71AE8;
    v26 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1D8CF5F60;
    v24 = &block_descriptor_48;
    v18 = _Block_copy(&aBlock);

    [v16 performBlock_];
    _Block_release(v18);
  }
}

uint64_t sub_1D8D40680()
{

  return swift_deallocObject();
}

void sub_1D8D40880(uint64_t a1)
{
  sub_1D917744C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OSLogType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1D8D40948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6108, &qword_1D9192110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

os_log_t _MTLogCategoryMetrics()
{
  v0 = os_log_create("com.apple.podcasts", "Metrics");

  return v0;
}

uint64_t sub_1D8D40B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
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
          result = sub_1D9179ACC();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void *sub_1D8D40CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8D1B9C8(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D8D40CF8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t InterestObserverProvider.userIsColdStartUserPublisher<A>()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77B8, &unk_1D9198EE0);
  swift_allocObject();

  result = sub_1D9177A5C();
  *a1 = result;
  return result;
}

void NSManagedObjectContext.observeChanges<A>(to:entities:)(void *a2@<X8>)
{
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 name];

  if (v4)
  {
    v5 = sub_1D917820C();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = v5;
    v9 = inited + 32;
    *(inited + 40) = v7;
    v10 = sub_1D8D40B5C(inited);
    swift_setDeallocating();
    sub_1D8D3F2D0(v9);
    v11 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
    swift_allocObject();
    v12 = v11;
    v4 = sub_1D91778DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C0, &unk_1D91965F8);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;

    *(v14 + 16) = 0;
    *a2 = 0;
    a2[1] = v10;
    a2[2] = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v4;
  a2[4] = v13;
  a2[5] = v14;
}

uint64_t sub_1D8D41030(uint64_t a1)
{
  result = sub_1D917739C();
  if (v2 <= 0x3F)
  {
    result = sub_1D917734C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D8D410BC(uint64_t a1, unint64_t a2, double a3)
{
  if ((~*&a3 & 0x7FF0000000000000) == 0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD5E28);

    oslog = sub_1D917741C();
    v7 = sub_1D9178D0C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 5136718;
      }

      else
      {
        v10 = 0x7974696E69666E69;
      }

      if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v12 = sub_1D8CFA924(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D8CFA924(a1, a2, &v14);
      _os_log_impl(&dword_1D8CEC000, oslog, v7, "ArtworkRequest received %s for %s. While simulated, this crash should be investigated since it effectively opts the caller into the default size of artwork.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D8D412B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D41320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B18, &qword_1D918B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D41408()
{
  v1 = *(sub_1D9176EAC() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1D8D4149C(v3, v0 + v2, v5, v6);
}

uint64_t sub_1D8D4149C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1D9176EAC();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v11);
  v14 = swift_allocObject();
  v15 = *((v9 & v8) + 0x50);
  v14[2] = v15;
  v16 = *((v9 & v8) + 0x58);
  v14[3] = v16;
  v14[4] = *((v9 & v8) + 0x60);
  v17 = *((v9 & v8) + 0x68);
  v14[5] = v17;
  v14[6] = a3;
  v14[7] = a4;
  v30 = sub_1D8D4C278;
  v31 = v14;
  swift_beginAccess();
  type metadata accessor for FRPSectionInfo(255, v15, v16, v17);
  v18 = sub_1D91786FC();
  type metadata accessor for FRPOutput(255, v18, v19, v20);
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D91780DC();

  sub_1D917810C();
  swift_endAccess();
  v21 = a1 + qword_1ECAB8648;
  v22 = *(a1 + qword_1ECAB8648);
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);

  if (v22)
  {
    v27 = v22;
    v28 = v23 & 1;
    v29 = v24;
    a3(&v27);
  }

  return result;
}

uint64_t sub_1D8D41740()
{

  return swift_deallocObject();
}

void OSAllocatedUnfairLock.current.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_1D8D42244(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

void sub_1D8D41864(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + qword_1ECAB8630);
  v4 = sub_1D917703C();
  v5 = [v3 objectAtIndexPath_];

  *a2 = v5;
}

unint64_t sub_1D8D41908(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1D8D4195C(uint64_t a1, void (*a2)(id, void))
{
  v3 = [objc_opt_self() sessionWithConfiguration_];
  v4 = v3;
  a2(v3, 0);
}

uint64_t sub_1D8D419F0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1D8D41A30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[3] = a10;
  v25[4] = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a1, a10);
  v20 = *a3;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 159) = 0;
  *(a9 + 16) = 0u;
  *(a9 + 144) = 0u;
  sub_1D8CFD9D8(v25, a9 + 168);
  sub_1D8D423B4(a2, a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = v20;
  swift_beginAccess();
  *(a9 + 144) = a4;
  *(a9 + 152) = a5;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = a6;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = a7;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = a8;
  sub_1D8D2EF54();
  v21 = sub_1D8D3C1DC();
  v23 = v22;
  sub_1D8D41C00(a2, type metadata accessor for EyebrowBuilder.ListContext);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  swift_beginAccess();
  *(a9 + 16) = v21;
  *(a9 + 24) = v23;

  return a9;
}

char *sub_1D8D41BE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8D6E1C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D41C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EyebrowBuilder.__deallocating_deinit()
{
  EyebrowBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8D41CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1D8D447DC();

    v7 = sub_1D91791FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D8D4241C(0, *(v7 + 16) + 1, 1, v7);
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1D8D4241C((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    a3 = sub_1D917817C();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1D8D41E3C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D917820C();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  LOBYTE(a1) = sub_1D8D42E68(v5, v7);

  return a1 & 1;
}

uint64_t SignpostTrace.init(domain:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917739C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3, a1, v13);
  v22 = a2;
  sub_1D8D25D6C(a2, v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_1D917737C();
    sub_1D917731C();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1D8D25DDC(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v16 = type metadata accessor for SignpostTrace(0);
  (*(v10 + 16))(a3 + *(v16 + 20), v12, v9);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1D917964C();
  v17 = v23;
  v18 = v24;
  sub_1D8D25DDC(v22);
  (*(v14 + 8))(a1, v13);
  result = (*(v10 + 8))(v12, v9);
  v20 = (a3 + *(v16 + 24));
  *v20 = v17;
  v20[1] = v18;
  return result;
}

char *sub_1D8D42150(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D15568(a1, a2, a3, *v3, &qword_1ECAB8680, &qword_1D9191FB0);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D42180()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = qword_1ECAB8638;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v4 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v4;
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging(0, v6);
  Synchronized.wrappedValue.getter(v3);

  return *&v6[0];
}

uint64_t sub_1D8D4229C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v7 = 1;
    goto LABEL_10;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_7:
    v7 = 0;
LABEL_10:
    sub_1D8FBD718();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a2 + 32 + 8 * v3);
    if (v4 < 0)
    {
      v7 = 2;
      goto LABEL_10;
    }

    v5 = __OFSUB__(a1, v4);
    v6 = a1 - v4;
    if (v6 < 0 != v5)
    {
      break;
    }

    ++v3;
    a1 = v6;
    if (v2 == v3)
    {
      goto LABEL_7;
    }
  }

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D918A530;
  *(v11 + 32) = v3;
  *(v11 + 40) = v10;
  return MEMORY[0x1DA7285F0]();
}

uint64_t sub_1D8D423B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1D8D4241C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D8D42528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 40;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      v17 = v8[2];
      if (v17 <= 1)
      {
        if (!v17)
        {

          return 0;
        }

        v18 = v8[4];
      }

      else
      {
        v44 = v8;
        if (v6)
        {
          v18 = *(v4 + 32);
          v19 = *(v4 + 40);
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        v20 = 0;
        v21 = v17 - 3;
        v22 = v44 + 7;
        v23 = -2;
        v24 = 1;
        v45 = v17;
        while (v19)
        {
          v25 = *(v22 - 1);
          v26 = *v22;
          v46 = v21;
          sub_1D8D447DC();
          swift_bridgeObjectRetain_n();
          v27 = sub_1D91791FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1D8D4241C(0, *(v27 + 16) + 1, 1, v27);
          }

          v29 = *(v27 + 16);
          v28 = *(v27 + 24);
          if (v29 >= v28 >> 1)
          {
            v27 = sub_1D8D4241C((v28 > 1), v29 + 1, 1, v27);
          }

          *(v27 + 16) = v29 + 1;
          v30 = v27 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
          sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
          v18 = sub_1D917817C();
          v32 = v31;

          v17 = v45;
          v21 = v46 - 1;
          --v23;
          --v20;
          v22 += 2;
          ++v24;
          v19 = v32;
          if (v45 + v20 == 1)
          {
            goto LABEL_51;
          }
        }

        if (v17 + v20 != 2)
        {
          v33 = v17 + v20 - 3;
          v34 = 1 - v20;
          if (v17 <= v24)
          {
            v35 = v24;
          }

          else
          {
            v35 = v17;
          }

          v36 = v35 + v20 - 2;
          if (v33 < v36)
          {
            v36 = v17 + v20 - 3;
          }

          if (v36 + 1 >= 3)
          {
            if (v17 <= v24)
            {
              v38 = v24;
            }

            else
            {
              v38 = v17;
            }

            v39 = v38 + v23;
            if (v21 < v38 + v23)
            {
              v39 = v21;
            }

            v37 = (v39 & 0xFFFFFFFFFFFFFFFELL) - v20 + 2;
            v40 = v38 + v20 - 2;
            if (v33 >= v40)
            {
              v33 = v40;
            }

            v41 = v33 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v41 -= 2;
            }

            while (v41);
          }

          else
          {
            v37 = 2 - v20;
          }

          v42 = v17 - v37;
          if (v17 > v34)
          {
            v34 = v17;
          }

          v43 = v34 - v37;
          while (v43)
          {
            --v43;
            if (!--v42)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_55;
        }
      }

LABEL_51:

      return v18;
    }

    if (v5 >= v6)
    {
      break;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_54;
    }

    v12 = *(v9 - 1);
    v11 = *v9;
    v13 = HIBYTE(*v9) & 0xF;
    if ((*v9 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    ++v5;
    v9 += 2;
    if (v13)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8D41BE0(0, v8[2] + 1, 1);
      }

      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1D8D41BE0((v14 > 1), v15 + 1, 1);
      }

      v8[2] = v15 + 1;
      v16 = &v8[2 * v15];
      v16[4] = v12;
      v16[5] = v11;
      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1D8D4290C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176E3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1D8D429C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D42A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D8D42B0C(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

uint64_t sub_1D8D42B20(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917739C();
  __swift_project_value_buffer(v10, qword_1EDCD5E98);
  v11 = sub_1D917737C();
  sub_1D91773DC();
  v12 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void *EyebrowBuilder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  sub_1D8D41C00(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  return v0;
}

uint64_t sub_1D8D42E68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  v32 = OBJC_IVAR___MTSearchTrie_rootNode;
  *(inited + 32) = *(v2 + OBJC_IVAR___MTSearchTrie_rootNode);

  result = sub_1D917833C();
  if (!v6)
  {
LABEL_37:

    return 0;
  }

  v7 = result;
  v8 = v6;
  v31 = v2;
  while (1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    if (inited >> 62)
    {
      break;
    }

    v10 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_29:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v24 = *(v3 + v32);
    swift_beginAccess();
    v25 = *(v24 + 24);
    if (!*(v25 + 16))
    {
      goto LABEL_3;
    }

    v26 = sub_1D8D4A13C(v7, v8);
    v28 = v27;

    if ((v28 & 1) == 0)
    {

LABEL_3:

      goto LABEL_4;
    }

    v29 = *(*(v25 + 56) + 8 * v26);

    if (*(v29 + 16))
    {

LABEL_41:

      return 1;
    }

    MEMORY[0x1DA729B90](v30);
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();

    v12 = v33;
LABEL_4:
    result = sub_1D917833C();
    v7 = result;
    v8 = v9;
    inited = v12;
    if (!v9)
    {
      goto LABEL_37;
    }
  }

  result = sub_1D917935C();
  v10 = result;
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((inited & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = MEMORY[0x1DA72AA90](v11, inited);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = result;
      swift_beginAccess();
      v15 = *(v14 + 24);
      if (*(v15 + 16) && (v16 = sub_1D8D4A13C(v7, v8), (v17 & 1) != 0))
      {
        if (*(*(*(v15 + 56) + 8 * v16) + 16))
        {

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        v18 = swift_retain_n();
        MEMORY[0x1DA729B90](v18);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();

        swift_unknownObjectRelease();
        v12 = v33;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v11;
      if (v13 == v10)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v19 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(inited + 8 * v19 + 32);
      result = swift_beginAccess();
      v21 = *(v20 + 24);
      if (*(v21 + 16))
      {
        result = sub_1D8D4A13C(v7, v8);
        if (v22)
        {
          if (*(*(*(v21 + 56) + 8 * result) + 16) == 1)
          {

LABEL_40:

            goto LABEL_41;
          }

          swift_retain_n();

          MEMORY[0x1DA729B90](v23);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          sub_1D917869C();

          v12 = v33;
        }
      }

      if (v10 == ++v19)
      {
LABEL_27:

        v3 = v31;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

id FairPlayKeyLoading.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayKeyLoading();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D8D43430()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (!v1)
  {
    return 0;
  }

  if ([v1 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v3 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  if ([v1 ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v3 == 1)
    {
LABEL_16:

      return 0;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  if ([v1 ams:*MEMORY[0x1E698C4A8] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v3)
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  return 1;
}

uint64_t Publisher.bufferedMulticast()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v4);
  v22 = v20 - v5;
  v6 = sub_1D917768C();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1D917793C();
  WitnessTable = swift_getWitnessTable();
  v20[1] = WitnessTable;
  v20[0] = swift_getWitnessTable();
  v25 = v6;
  v26 = v9;
  v27 = WitnessTable;
  v28 = v20[0];
  sub_1D917776C();
  v20[2] = swift_getWitnessTable();
  v20[4] = sub_1D91775BC();
  v20[3] = swift_getWitnessTable();
  v11 = sub_1D91775AC();
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D9177B9C();

  (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1, 1);
  sub_1D917794C();
  v15 = sub_1D9177D2C();

  (*(v23 + 8))(v8, v6);
  v25 = v15;
  v16 = sub_1D917796C();

  v25 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1D9177B2C();

  swift_getWitnessTable();
  v18 = sub_1D9177B1C();
  (*(v21 + 8))(v13, v11);
  return v18;
}

uint64_t sub_1D8D43BA4()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAAFDA0 = result;
  return result;
}

uint64_t sub_1D8D43DF4()
{
  (*(v0[15] + 16))(v0[16], v0[6], v0[4]);
  sub_1D91789FC();
  v0[20] = swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1D8D4CB14;
  v2 = v0[14];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t NSUserDefaults.observeChanges(for:performing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB360, &qword_1D91BC170);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D44084, 0, 0);
}

uint64_t sub_1D8D44084()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v32 = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 40);
    sub_1D8D4D01C(0, v2, 0);
    v3 = v32;
    v28 = *MEMORY[0x1E69E8650];
    v29 = v4;
    v27 = (v5 + 104);
    v7 = (v1 + 40);
    do
    {
      v30 = v3;
      v8 = *(v0 + 64);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      v12 = *(v7 - 1);
      v11 = *v7;
      v13 = swift_task_alloc();
      v13[2] = v12;
      v13[3] = v11;
      v13[4] = v9;
      (*v27)(v8, v28, v10);

      sub_1D91788FC();
      v3 = v30;

      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D8D4D01C((v14 > 1), v15 + 1, 1);
        v3 = v30;
      }

      v16 = *(v0 + 88);
      v17 = *(v0 + 72);
      *(v3 + 16) = v15 + 1;
      (*(v29 + 32))(v3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v15, v16, v17);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  *(v0 + 96) = v3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  v20 = swift_allocObject();
  *(v0 + 104) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;

  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  v21[2] = v3;
  v21[3] = &unk_1D91BC190;
  v21[4] = v20;
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_1D9146B94;
  v23 = MEMORY[0x1E69E7CA8] + 8;
  v24 = MEMORY[0x1E69E7CA8] + 8;
  v25 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v22, v23, v24, 0, 0, &unk_1D91BC198, v21, v25);
}

uint64_t sub_1D8D44348()
{

  return swift_deallocObject();
}

void sub_1D8D44384(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v30 - v12;
  (*(v9 + 16))(v30 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v18 = type metadata accessor for _UserDefaultsObserver();
  v19 = objc_allocWithZone(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  *&v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v20;
  v21 = &v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v22 = sub_1D8D80A80;
  v22[1] = v16;
  *&v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a4;
  v31.receiver = v19;
  v31.super_class = v18;
  swift_bridgeObjectRetain_n();
  v23 = a4;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  sub_1D917888C();
  v26 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state];
  os_unfair_lock_lock((v26 + 20));
  LOBYTE(a1) = *(v26 + 16);
  os_unfair_lock_unlock((v26 + 20));
  if ((a1 & 1) == 0)
  {
    v27 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8];
    v30[2] = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
    v30[3] = v27;
    v30[0] = 46;
    v30[1] = 0xE100000000000000;
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v28 = [objc_opt_self() defaultCenter];
      [v28 addObserver:v25 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:*&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults]];
    }

    else
    {
      v29 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults];
      v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v29 addObserver:v25 forKeyPath:v28 options:0 context:&unk_1ECABB408];
    }

    os_unfair_lock_lock((v26 + 20));
    *(v26 + 16) = 1;
    os_unfair_lock_unlock((v26 + 20));
  }
}

uint64_t sub_1D8D446DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8D44788()
{

  return swift_deallocObject();
}

unint64_t sub_1D8D447DC()
{
  result = qword_1EDCD7720;
  if (!qword_1EDCD7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7720);
  }

  return result;
}

uint64_t sub_1D8D44830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8D44878(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v12 = *v2;

      sub_1D8D546A0(v3, 1);
      type metadata accessor for ConduitBase(255, a2[2], a2[3], a2[4]);
      swift_getWitnessTable();
      sub_1D9178B4C();
      v5 = v2;
      sub_1D9178B1C();

      v6 = *v2;
      *v5 = v12;
      v7 = *(v5 + 8);
      *(v5 + 8) = 1;

      sub_1D8D54860(v6, v7);
    }

    else
    {
      *v2 = result;
      *(v2 + 8) = 0;
    }
  }

  else if (v3 != result)
  {
    v8 = result;
    v9 = type metadata accessor for ConduitBase(0, a2[2], a2[3], a2[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    swift_allocObject();
    v10 = sub_1D917861C();
    *v11 = v3;
    v11[1] = v8;
    sub_1D8D4D228(v10, v9);
    sub_1D91786FC();

    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1D9178B5C();
    *v2 = result;
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D8D44A94()
{
  result = MEMORY[0x1DA7298F0](0x7373696D7369645FLL, 0xEA00000000006465);
  qword_1ECAB00E8 = 0xD000000000000011;
  unk_1ECAB00F0 = 0x80000001D91D7FA0;
  return result;
}

uint64_t NSManagedObjectContext.performAndPublish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D9177A2C();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;

  return sub_1D9177A3C();
}

uint64_t sub_1D8D44BB8()
{

  return swift_deallocObject();
}

void sub_1D8D44C04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a3;
  v15[4] = sub_1D8FC3254;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_30_1;
  v13 = _Block_copy(v15);

  v14 = a3;

  [v14 performBlock_];
  _Block_release(v13);
}

uint64_t sub_1D8D44D14()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D44D68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D5FF18;

  return sub_1D8D44E2C(a1, a2, v6, v7, v8);
}

uint64_t sub_1D8D44E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D44F48, 0, 0);
}

uint64_t sub_1D8D44F48()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v31 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v29 = *(v3 + 72);
    v28 = (v3 + 16);
    v30 = v4;
    v26 = (v3 + 32);
    v27 = (*(v0 + 120) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1D917886C();
    v7 = *(v6 - 8);
    v25 = *(v7 + 56);
    v24 = (v7 + 48);
    v23 = (v7 + 8);
    do
    {
      v33 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v32 = *(v0 + 88);
      v25(v10, 1, 1, v6);
      (*v28)(v12, v5, v13);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      (*v26)(v15 + v30, v12, v13);
      v16 = (v15 + v27);
      *v16 = v32;
      v16[1] = v14;
      sub_1D8CF5C74(v10, v11);
      LODWORD(v11) = (*v24)(v11, 1, v6);

      v17 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_1D8CF5CE4(*(v0 + 136));
      }

      else
      {
        sub_1D917885C();
        (*v23)(v17, v6);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1D917874C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_1D8CF5CE4(v9);
      v5 += v29;
      v2 = v33 - 1;
    }

    while (v33 != 1);
  }

  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_1D8F40E58;

  return sub_1D8CF5A38(0, 0);
}

uint64_t sub_1D8D452CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t DatabasePropertyPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v34 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C8, &unk_1D9196608);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v28 - v4;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v15 = v3[2];
  v42 = v3[1];
  v43 = v15;
  v41 = *v3;
  v16 = v15;
  sub_1D9176E9C();
  v38 = v11;
  os_unfair_lock_lock(v16 + 6);
  sub_1D8D45820(&v16[4]);
  v30 = 0;
  os_unfair_lock_unlock(v16 + 6);
  v17 = *(v6 + 32);
  v18 = v14;
  v17(v14, v11, v5);
  v28[1] = *(&v42 + 1);
  v40 = *(&v42 + 1);
  v29 = v6;
  v28[0] = *(v6 + 16);
  (v28[0])(v8, v14, v5);
  v19 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = v42;
  *(v20 + 1) = v41;
  *(v20 + 2) = v21;
  *(v20 + 3) = v43;
  v17(&v20[v19], v8, v5);
  (v28[0])(v8, v18, v5);
  v22 = swift_allocObject();
  v23 = v42;
  *(v22 + 1) = v41;
  *(v22 + 2) = v23;
  *(v22 + 3) = v43;
  v17(&v22[v19], v8, v5);
  sub_1D8D461A0(&v41, v39);
  sub_1D8D461A0(&v41, v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
  sub_1D8D461D8();
  v24 = v31;
  sub_1D9177B3C();

  v25 = v32;
  sub_1D91775EC();
  (*(v33 + 8))(v24, v25);
  v26 = *(&v43 + 1);
  v37 = &v41;
  os_unfair_lock_lock((*(&v43 + 1) + 24));
  sub_1D8D46374((v26 + 16));
  os_unfair_lock_unlock((v26 + 24));
  return (*(v29 + 8))(v18, v5);
}

uint64_t sub_1D8D4583C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  (*(v4 + 16))(v6, a2, v3, v8);
  sub_1D8D45964(v10, v6);
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1D8D45964(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D8D11168(&qword_1EDCD5920, MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D917813C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D8D11168(&qword_1ECAB2C78, MEMORY[0x1E69695C8]);
      v21 = sub_1D91781BC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D8D45C1C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D8D45C1C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
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
    sub_1D8EFCD38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D8F00430();
      goto LABEL_12;
    }

    sub_1D8D45E98(v11 + 1);
  }

  v13 = *v3;
  sub_1D8D11168(&qword_1EDCD5920, MEMORY[0x1E69695B8]);
  v14 = sub_1D917813C();
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
      sub_1D8D11168(&qword_1ECAB2C78, MEMORY[0x1E69695C8]);
      v22 = sub_1D91781BC();
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
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
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
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D45E98(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D9176EAC();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB67A8, &qword_1D9193748);
  v7 = sub_1D917940C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D8D11168(&qword_1EDCD5920, MEMORY[0x1E69695B8]);
      result = sub_1D917813C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1D8D461D8()
{
  result = qword_1ECAB0320;
  if (!qword_1ECAB0320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB71B8, &qword_1D91965F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0320);
  }

  return result;
}

uint64_t sub_1D8D4623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D8, &qword_1D9196A58);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D48324, 0, 0);
}

void sub_1D8D46390(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D9178FBC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*a1)
  {
    v8 = *(a2 + 32);
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);

    os_unfair_lock_unlock((v8 + 24));
    v10 = *(v9 + 16);

    if (v10)
    {
      sub_1D9178FCC();
      v11 = swift_allocObject();
      v12 = *(a2 + 16);
      v11[1] = *a2;
      v11[2] = v12;
      v11[3] = *(a2 + 32);
      sub_1D8D461A0(a2, v14);
      sub_1D8D01764();
      v13 = sub_1D9177D9C();

      (*(v5 + 8))(v7, v4);
      *a1 = v13;
    }
  }
}

uint64_t sub_1D8D46530()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D46590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v19 - v12;
  sub_1D8CF5C74(a1, &v19 - v12);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(v5 + *MEMORY[0x1E695C030]);
  sub_1D8D46700(v13, v15 + v14);
  v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  v17 = sub_1D9177A4C();
  sub_1D8CF5CE4(a1);
  return v17;
}

uint64_t Future<>.init(priority:unwrapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D8D46590(a1, a2, a3, &unk_1F546ECD8, sub_1D8D46840);
}

{
  return sub_1D8D46590(a1, a2, a3, &unk_1F546ECB0, sub_1D8D6EEFC);
}

uint64_t sub_1D8D46700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D46770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = (v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D8D46864(a1, a2, v4 + v11, *v12, v12[1], v9, a3, a4);
}

uint64_t sub_1D8D46864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v20 - v16;
  sub_1D8CF5C74(a3, &v20 - v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a4;
  v18[8] = a5;

  sub_1D8E91268(0, 0, v17, a8, v18);
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);

  if (!(*(v7 + 48))(v1 + v4, 1, v6))
  {
    (*(v7 + 8))(v1 + v4, v6);
  }

  v9 = (v1 + v4 + *(v2 + 36));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  (*(v7 + 8))(v1 + ((((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 40) & ~v8), v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = sub_1D9176EAC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v7 = sub_1D9176C2C();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v4 = sub_1D9176EAC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for KCUTranscriptProvider(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v1 + v3, 1, v5))
  {
    (*(v6 + 8))(v1 + v3, v5);
  }

  v7 = (v1 + v3 + *(v2 + 36));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = sub_1D917886C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DA8564(*(v0 + 32), *(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));

  v4 = v3 + v1[9];
  v5 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_1D8CFEACC(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
    v6 = &v4[*(v5 + 20)];
    v7 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
    {

      v33 = v7[12];
      v8 = sub_1D9176C2C();
      v9 = (*(v8 - 8) + 48);
      v30 = *(v8 - 8);
      v31 = *v9;
      if (!(*v9)(&v6[v33], 1, v8))
      {
        (*(v30 + 8))(&v6[v33], v8);
      }

      v10 = v7[18];
      if (!v31(&v6[v10], 1, v8))
      {
        (*(v30 + 8))(&v6[v10], v8);
      }

      v11 = v7[22];
      v12 = sub_1D9176E3C();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(&v6[v11], 1, v12))
      {
        (*(v13 + 8))(&v6[v11], v12);
      }

      v14 = v7[38];
      if (!v31(&v6[v14], 1, v8))
      {
        (*(v30 + 8))(&v6[v14], v8);
      }
    }

    v15 = &v4[*(v5 + 24)];
    v16 = v15[40];
    if (v16 != 255)
    {
      sub_1D8CFEACC(*(v15 + 1), *(v15 + 2), *(v15 + 3), *(v15 + 4), v16);
    }

    if (v15[128] != 2)
    {
      sub_1D90AB0F8(*(v15 + 6), *(v15 + 7), *(v15 + 8), *(v15 + 9), *(v15 + 10), *(v15 + 11), *(v15 + 12), *(v15 + 13), v15[112]);
    }
  }

  v17 = v3 + v1[11];
  v18 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {

    v19 = v18[12];
    v20 = sub_1D9176C2C();
    v32 = *(v20 - 8);
    v21 = *(v32 + 48);
    if (!v21(&v17[v19], 1, v20))
    {
      (*(v32 + 8))(&v17[v19], v20);
    }

    v22 = v18[18];
    if (!v21(&v17[v22], 1, v20))
    {
      (*(v32 + 8))(&v17[v22], v20);
    }

    v23 = v18[22];
    v24 = sub_1D9176E3C();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(&v17[v23], 1, v24))
    {
      (*(v25 + 8))(&v17[v23], v24);
    }

    v26 = v18[38];
    if (!v21(&v17[v26], 1, v20))
    {
      (*(v32 + 8))(&v17[v26], v20);
    }
  }

  v27 = v3 + v1[17];
  v28 = v27[32];
  if (v28 != 255)
  {
    sub_1D8CFEACC(*v27, *(v27 + 1), *(v27 + 2), *(v27 + 3), v28);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8D48074(uint64_t a1)
{
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
  v11[1] = sub_1D8D5FF18;

  return sub_1D8D48150(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_1D8D48150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v10 = sub_1D9179EAC();
  v8[4] = v10;
  v8[5] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[6] = v11;
  v14 = (a6 + *a6);
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_1D8D6EBC0;

  return v14(v11);
}

uint64_t sub_1D8D48324()
{
  (*(v0[10] + 16))(v0[11], v0[6], v0[9]);
  sub_1D8CF48EC(&qword_1ECAAFE88, &qword_1ECAB4550, &qword_1D91BC180, MEMORY[0x1E69E86A0]);
  sub_1D91789FC();
  sub_1D8CF48EC(&qword_1ECAAFE98, &qword_1ECAB72D8, &qword_1D9196A58, MEMORY[0x1E69E8690]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1D8D60E3C;

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t InterestRepository.__allocating_init(interestStore:syncKeysRepository:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D8D484CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8D4623C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t InterestStore.__allocating_init(ctx:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id static DeviceCapacityMonitor.shared.getter()
{
  if (qword_1EDCD3800 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD3810;

  return v1;
}

uint64_t DeviceCapacityMonitor.addCapacityChangeObserver(options:callback:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    a1 = sub_1D8D487BC(a2, a3);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 6);
    sub_1D8D48BA8(&v6[4]);
    os_unfair_lock_unlock(v6 + 6);
  }

  return 0;
}

uint64_t sub_1D8D487BC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v13 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v14 = *(v2 + v13);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));

    return a1(v15);
  }

  else
  {
    v21[1] = *(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v22 = v10;
    v17 = swift_allocObject();
    v21[0] = v6;
    v18 = v17;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    aBlock[4] = sub_1D9160118;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_56_3;
    v20 = _Block_copy(aBlock);

    sub_1D9177E4C();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v12, v8, v20);
    _Block_release(v20);
    (*(v21[0] + 8))(v8, v5);
    (*(v22 + 8))(v12, v9);
  }
}

uint64_t sub_1D8D48B34()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D48C00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_1D8D48CC4(sub_1D9160068, v7);

  *a2 = v8;
  return result;
}

uint64_t sub_1D8D48C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D48CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1D8DB8004(*(v4 + 16), 0);
    v7 = sub_1D8DB8018(&v17, (v6 + 32), v5, v4);
    v8 = v17;
    swift_bridgeObjectRetain_n();
    sub_1D8D1B144(v8);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v17 = v6;
  sub_1D8D48E60(&v17);

  v9 = *(v17 + 2);
  if (v9)
  {
    v10 = *&v17[8 * v9 + 24];

    v11 = v10 + 1;
  }

  else
  {

    v11 = 1;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1D8D48FBC(a1, a2, v11, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v16;
  swift_endAccess();
  return v11;
}

uint64_t sub_1D8D48E60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D48FA8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
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
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D8F9FDDC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1D8D48FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D490F4(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F86A24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8D49134(v16, a4 & 1);
    v11 = sub_1D8D490F4(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1D8D493A8(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_1D8D49134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B38, &unk_1D91A6CA0);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1D9179DAC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1D8D493A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1D8D49440()
{
  result = qword_1ECAAFDF8;
  if (!qword_1ECAAFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFDF8);
  }

  return result;
}

void *Cache.init(invalidateOnAppBackground:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9178FBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[10];
  v10 = v4[11];
  v11 = v4[12];
  v12 = sub_1D9177FEC();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v12;
  if (a1)
  {
    v13 = [objc_opt_self() defaultCenter];
    v14 = @"MTApplicationDidEnterBackgroundNotification";
    sub_1D9178FAC();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v11;
    v16[5] = v15;
    sub_1D8D01764();
    v17 = sub_1D9177D9C();

    (*(v6 + 8))(v8, v5);
    v2[3] = v17;
  }

  v18 = [objc_opt_self() defaultCenter];
  v19 = @"MTApplicationDidReceiveMemoryWarningNotification";
  sub_1D9178FAC();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v20;
  sub_1D8D01764();
  v22 = sub_1D9177D9C();

  (*(v6 + 8))(v8, v5);
  v2[4] = v22;

  return v2;
}

uint64_t sub_1D8D497E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D49820()
{

  return swift_deallocObject();
}

uint64_t Cache.subscript.getter(uint64_t a1)
{
  swift_beginAccess();
  sub_1D91780FC();
  return swift_endAccess();
}

uint64_t sub_1D8D498FC(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = *v2;
  v5 = sub_1D91791BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *(v4 + 80);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v15 - v12, a2, v9, v11);
  (*(v6 + 16))(v8, v15, v5);
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

Swift::String __swiftcall PFLocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t type metadata accessor for CategoryModel(uint64_t a1)
{
  result = qword_1ECAB28A8;
  if (!qword_1ECAB28A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D49C54(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_1D8D49E98(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return result;
  }

  v4 = *(v2 + OBJC_IVAR___MTSearchTrie_rootNode);

  v5 = sub_1D917833C();
  if (!v6)
  {
    v16 = v4;
LABEL_23:

    *(v16 + 16) = 1;
  }

  v7 = v5;
  v8 = v6;
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    swift_beginAccess();
    v12 = *(v4 + 24);
    if (*(v12 + 16))
    {
      v13 = sub_1D8D4A13C(v7, v8);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v12 + 56) + 8 * v15);

        goto LABEL_8;
      }
    }

    type metadata accessor for SearchTrie.Node();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = v9;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    v19 = sub_1D8D4A13C(v7, v8);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_1D8D4A168(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D8D4A13C(v7, v8);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v30 = v19;
    sub_1D8F86CF0();
    v19 = v30;
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v18[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v18[6] + 16 * v19);
      *v27 = v7;
      v27[1] = v8;
      *(v18[7] + 8 * v19) = v16;
      v28 = v18[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v18[2] = v29;
      goto LABEL_7;
    }

LABEL_6:
    v10 = v19;

    *(v18[7] + 8 * v10) = v16;

LABEL_7:
    *(v4 + 24) = v18;
    swift_endAccess();
LABEL_8:

    v7 = sub_1D917833C();
    v8 = v11;
    v4 = v16;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D4A168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AD8, &unk_1D91A6BB0);
  v34 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t Cache.get(_:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a2;
  v7 = *(*v4 + 88);
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  Cache.subscript.getter(a1);
  v15 = *(v7 - 8);
  if ((*(v15 + 48))(v14, 1, v7) != 1)
  {
    return (*(v15 + 32))(a4, v14, v7);
  }

  v20 = a1;
  v16 = *(v9 + 8);
  v17 = v16(v14, v8);
  v22(v17);
  (*(v15 + 16))(v11, a4, v7);
  (*(v15 + 56))(v11, 0, 1, v7);
  sub_1D8D498FC(v11, v20);
  return v16(v11, v8);
}

uint64_t sub_1D8D4A624(void *a1)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4400, &qword_1D9189150);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v58 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4408, &qword_1D9189158);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4410, &unk_1D9189160);
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - v6;
  *(v1 + 16) = a1;
  v59 = 0x80000001D91C9790;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189060;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D8D34978();
  *(v7 + 32) = 0x7473657265746E69;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = 0x7473657265746E69;
  *(v7 + 80) = 0xE800000000000000;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  strcpy((v7 + 112), "interestValue");
  *(v7 + 126) = -4864;
  v10 = a1;
  v11 = sub_1D9178C8C();
  v72 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v12 = v10;
  v13 = sub_1D9178E1C();
  v14 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v16 = [v14 initWithEntityName_];

  [v16 setPredicate_];
  v60 = sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v17 = sub_1D91785DC();
  [v16 setSortDescriptors_];

  [v16 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4418, &unk_1D9189170);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;

  v18[14] = v19;
  v20 = v59;
  v18[2] = 0xD000000000000034;
  v18[3] = v20;
  v18[4] = v16;
  v18[5] = v12;
  v18[6] = v13;
  v18[7] = sub_1D8E29A1C;
  v18[8] = 0;
  v18[9] = sub_1D8E29CA0;
  v18[10] = 0;
  v18[11] = sub_1D8E29C9C;
  v18[12] = 0;
  v21 = sub_1D8D4B310(v18);

  v22 = v71;
  *(v71 + 24) = v21;
  v59 = 0x80000001D91C97F0;
  v23 = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D9189070;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v27 = [v25 initWithKey:v26 ascending:1];

  *(v24 + 32) = v27;
  v28 = v12;
  v29 = sub_1D9178E1C();
  v30 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v32 = [v30 initWithEntityName_];

  [v32 setPredicate_];
  v33 = sub_1D91785DC();

  [v32 setSortDescriptors_];

  [v32 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4420, &qword_1D9189188);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;

  v34[14] = v35;
  v36 = v59;
  v34[2] = 0xD000000000000041;
  v34[3] = v36;
  v34[4] = v32;
  v34[5] = v28;
  v34[6] = v29;
  v34[7] = sub_1D8E29ACC;
  v34[8] = 0;
  v34[9] = sub_1D8E29CA0;
  v34[10] = 0;
  v34[11] = sub_1D8E29C9C;
  v34[12] = 0;
  v73 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4428, &qword_1D9189190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4430, &qword_1D9189198);
  sub_1D8CF48EC(&qword_1ECAB1888, &qword_1ECAB4428, &qword_1D9189190, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v37 = v62;
  sub_1D9177B9C();

  v38 = sub_1D8D4B734();
  (*(v63 + 8))(v37, v64);
  *(v22 + 32) = v38;
  v39 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v40 = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  v41 = v28;
  v42 = sub_1D9178E1C();
  v43 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v44 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v45 = [v43 initWithEntityName_];

  [v45 setPredicate_];
  v46 = sub_1D91785DC();
  [v45 setSortDescriptors_];

  [v45 setFetchBatchSize_];
  [v45 setIncludesSubentities_];
  [v45 setIncludesPropertyValues_];
  [v45 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;

  v47[14] = v48;
  v47[2] = 0xD00000000000001DLL;
  v47[3] = 0x80000001D91C9840;
  v47[4] = v45;
  v47[5] = v41;
  v47[6] = v42;
  v47[7] = sub_1D8D23164;
  v47[8] = 0;
  v47[9] = sub_1D8E3B050;
  v47[10] = 0;
  v47[11] = sub_1D8D38B78;
  v47[12] = 0;
  v73 = v47;
  *(swift_allocObject() + 16) = v39;
  sub_1D8D20F2C();
  v49 = v39;
  v50 = v65;
  sub_1D9177B3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D9189080;
  v52 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v53 = [v49 integerForKey_];

  *(v51 + 32) = v53;
  sub_1D8CF48EC(&qword_1ECAB0968, &qword_1ECAB4400, &qword_1D9189150, MEMORY[0x1E695BCC0]);
  v54 = v66;
  v55 = v68;
  sub_1D9177CCC();

  (*(v70 + 8))(v50, v55);
  v56 = sub_1D8D4BB3C();

  (*(v67 + 8))(v54, v69);
  result = v71;
  *(v71 + 40) = v56;
  return result;
}

uint64_t sub_1D8D4B0E4()
{

  return swift_deallocObject();
}

void sub_1D8D4B11C(uint64_t a1)
{
  sub_1D8CEFE18(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD7710, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D8CEFE18(319, &qword_1ECAB2748, type metadata accessor for InterestModel);
      if (v3 <= 0x3F)
      {
        sub_1D8CEFDCC(319, &qword_1EDCD76F8, MEMORY[0x1E69E63B0]);
        if (v4 <= 0x3F)
        {
          sub_1D8CEFDCC(319, &qword_1EDCD5F10, &type metadata for AdamID);
          if (v5 <= 0x3F)
          {
            sub_1D8D4B290(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D8D4B290(uint64_t a1)
{
  if (!qword_1ECAAFE60)
  {
    sub_1D8D4D2D8();
    v1 = sub_1D9178B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAAFE60);
    }
  }
}

uint64_t sub_1D8D4B310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7178, &qword_1D91965A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7180, &qword_1D91965B0);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - v7;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7188, &qword_1D91965B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7190, &qword_1D91965C0);
  sub_1D8CF48EC(&qword_1ECAB1880, &qword_1ECAB7188, &qword_1D91965B8, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  sub_1D9177B9C();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7198, &qword_1D91965C8);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07F8, &qword_1ECAB7178, &qword_1D91965A8, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB0318, &qword_1ECAB7198, &qword_1D91965C8, MEMORY[0x1E695BFA8]);
  v9 = sub_1D9177D2C();

  (*(v3 + 8))(v5, v2);
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71A0, &qword_1D91965D0);
  sub_1D8CF48EC(&qword_1ECAB0510, &qword_1ECAB71A0, &qword_1D91965D0, MEMORY[0x1E695BE88]);
  v10 = sub_1D917796C();

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71A8, &qword_1D91965D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B0, &unk_1D91965E0);
  sub_1D8CF48EC(&qword_1ECAB0B00, &qword_1ECAB71A8, &qword_1D91965D8, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B68, &qword_1ECAB7180, &qword_1D91965B0, MEMORY[0x1E695BC80]);
  v11 = v15;
  v12 = sub_1D9177B1C();
  (*(v6 + 8))(v8, v11);
  return v12;
}

uint64_t sub_1D8D4B734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7148, &qword_1D9196578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7150, &qword_1D9196580);
  v5 = *(v4 - 8);
  v15 = v4;
  v16 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4410, &unk_1D9189160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7158, &qword_1D9196588);
  v8 = MEMORY[0x1E695BD60];
  sub_1D8CF48EC(qword_1ECAB0800, &qword_1ECAB4410, &unk_1D9189160, MEMORY[0x1E695BD60]);
  sub_1D9177B9C();
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7160, &qword_1D9196590);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB0710, &qword_1ECAB7148, &qword_1D9196578, v8);
  sub_1D8CF48EC(&qword_1ECAB02F8, &qword_1ECAB7160, &qword_1D9196590, MEMORY[0x1E695BFA8]);
  v9 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7168, &qword_1D9196598);
  sub_1D8CF48EC(&qword_1ECAB04C0, &qword_1ECAB7168, &qword_1D9196598, MEMORY[0x1E695BE88]);
  v10 = sub_1D917796C();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7170, &qword_1D91965A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4430, &qword_1D9189198);
  sub_1D8CF48EC(&qword_1ECAB0AB0, &qword_1ECAB7170, &qword_1D91965A0, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B30, &qword_1ECAB7150, &qword_1D9196580, MEMORY[0x1E695BC80]);
  v11 = v15;
  v12 = sub_1D9177B1C();
  (*(v16 + 8))(v7, v11);
  return v12;
}

uint64_t sub_1D8D4BB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7128, &qword_1D9196558);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7130, &qword_1D9196560);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4408, &qword_1D9189158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F8, &qword_1D918A528);
  sub_1D8CF48EC(&qword_1ECAB0A98, &qword_1ECAB4408, &qword_1D9189158, MEMORY[0x1E695BCA8]);
  sub_1D9177B9C();
  v14 = 0;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E0, &qword_1D9196518);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07A0, &qword_1ECAB7128, &qword_1D9196558, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B28, &qword_1ECAB70E0, &qword_1D9196518, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7138, &qword_1D9196568);
  sub_1D8CF48EC(&qword_1ECAB04E8, &qword_1ECAB7138, &qword_1D9196568, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7140, &qword_1D9196570);
  sub_1D8CF48EC(&qword_1ECAB0AD8, &qword_1ECAB7140, &qword_1D9196570, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B48, &qword_1ECAB7130, &qword_1D9196560, MEMORY[0x1E695BC80]);
  v9 = v13;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t sub_1D8D4BF5C()
{
  v1 = v0;
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + qword_1ECAB8610);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v1 + qword_1ECAB8648;
  v12 = *(v1 + qword_1ECAB8648);
  if (v12)
  {
    v13 = *(v11 + 2);
    v14 = v11[8];
    swift_beginAccess();
    sub_1D9176EAC();
    type metadata accessor for FRPSectionInfo(255, v2[10], v2[11], v2[13]);
    v15 = sub_1D91786FC();
    type metadata accessor for FRPOutput(255, v15, v16, v17);
    swift_getFunctionTypeMetadata1();
    sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    nullsub_1();
    v19 = v18;
    v20 = v18 + 64;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v14 & 1;

    for (i = 0; v23; result = )
    {
      v27 = i;
LABEL_11:
      v28 = *(*(v19 + 56) + ((v27 << 10) | (16 * __clz(__rbit64(v23)))));
      v29 = v12;
      v23 &= v23 - 1;
      v30 = v25;
      v31 = v13;

      v28(&v29);
    }

    while (1)
    {
      v27 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
      }

      v23 = *(v20 + 8 * v27);
      ++i;
      if (v23)
      {
        i = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D8D4C2AC@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  type metadata accessor for FRPSectionInfo(255, a2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550]);
  v7 = sub_1D91786FC();
  v10 = type metadata accessor for FRPOutput(0, v7, v8, v9);
  v11 = sub_1D91786FC();
  return FRPOutput.map<A>(_:)(sub_1D8D4DE0C, v10, v11, x8_0);
}

id FairPlayKeyLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8D4C4B8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1D8D4C558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8D4C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v31 = sub_1D917734C();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24[-v12];
  v25 = sub_1D9178F6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D918A530;
  v32 = AssociatedTypeWitness;
  swift_getMetatypeMetadata();
  v15 = sub_1D917826C();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D8D34978();
  *(v14 + 64) = v19;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  (*(v11 + 16))(v13, v26, AssociatedTypeWitness);
  v20 = sub_1D917826C();
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  sub_1D917733C();
  v23 = 2;
  sub_1D91772EC(v25, &dword_1D8CEC000, v27, v28, v29, v30, v9, "Publisher Type: %{public}s Output: %{public}s", 45, v23, v14);

  return (*(v7 + 8))(v9, v31);
}

uint64_t sub_1D8D4C82C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D8D4C8D8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A40, &qword_1D9194348);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  swift_endAccess();
  v9 = sub_1D8CF48EC(&qword_1ECAB01F8, &qword_1ECAB6A48, &qword_1D9194350, MEMORY[0x1E695C068]);
  MEMORY[0x1DA729380](v5, v9);
  (*(v6 + 8))(v8, v5);
  sub_1D917787C();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D8D4CAF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8D4CB14()
{

  if (v0)
  {
    v1 = sub_1D8F48C80;
  }

  else
  {
    v1 = sub_1D8D4CC24;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D8D4CC24()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4(1);
  }

  (*(v3 + 32))(v0[9], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_4;
  }

  v8 = (v0[2] + *v0[2]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D8F48A84;
  v7 = v0[9];

  return v8(v7);
}

void *sub_1D8D4CE34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1D8D4D01C(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D4CE34(a1, a2, a3, *v3, &qword_1ECAB4548, &qword_1D9189FD8, &qword_1ECAB4550, &qword_1D91BC180);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D4D05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *sub_1D8D4D0E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1D8D4D27C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

unint64_t sub_1D8D4D2D8()
{
  result = qword_1ECAB1148;
  if (!qword_1ECAB1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1148);
  }

  return result;
}

id _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  v3 = sub_1D9178C8C();
  v4 = _s18PodcastsFoundation10MTCategoryC46predicateForPrimaryCategoriesFromFollowedShowsSo11NSPredicateCyFZ_0();
  v5 = [v3 AND_];

  return v5;
}

unint64_t sub_1D8D4D430()
{
  result = qword_1EDCD5B90;
  if (!qword_1EDCD5B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD5B90);
  }

  return result;
}

uint64_t _s18PodcastsFoundation10MTCategoryC46predicateForPrimaryCategoriesFromFollowedShowsSo11NSPredicateCyFZ_0()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x7374736163646F70;
  *(v0 + 40) = 0xE800000000000000;
  v3 = sub_1D917820C();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v5 = sub_1D917820C();
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  return sub_1D9178C8C();
}

void sub_1D8D4D564(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v23 = a2;
    type metadata accessor for FRPSectionInfo(255, a5, a6, a8);
    v16 = sub_1D91786FC();
    (*(*(v16 - 8) + 32))(&v24, &v23, v16);
    v19 = type metadata accessor for FRPOutput(0, v16, v17, v18);
    *(&v24 + *(v19 + 28)) = a3 & 1;
    *(&v24 + *(v19 + 32)) = a4;
    v20 = v25;
    v21 = v26;
    v22 = &v15[qword_1ECAB8648];
    *v22 = v24;
    *(v22 + 1) = v20;
    *(v22 + 2) = v21;

    sub_1D8D4BF5C();
  }
}

void sub_1D8D4D69C(uint64_t a1)
{
  v68 = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ProducerInner.State(0, v2, v3, v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v66 = v4;
  v67 = v2;
  active = type metadata accessor for ProducerInner.ActiveState(0, v2, v3, v4);
  v14 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v63 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = *(v1 + 2);
  os_unfair_lock_lock(v19 + 4);
  v20 = *(*v1 + 112);
  swift_beginAccess();
  v21 = *(v6 + 16);
  v71 = v20;
  v65 = v21;
  v21(v12, &v1[v20], v5);
  v64 = *(v14 + 48);
  if (v64(v12, 1, active) == 1)
  {
    (*(v6 + 8))(v12, v5);
    os_unfair_lock_unlock(v19 + 4);
    return;
  }

  v61 = v5;
  v62 = v19;
  v58 = *(v14 + 32);
  v58(v18, v12, active);
  v22 = *(active + 60);
  v23 = *&v18[v22];
  sub_1D91777EC();
  if (sub_1D91777DC())
  {
    os_unfair_lock_unlock(v62 + 4);
    (*(v14 + 8))(v18, active);
    return;
  }

  v59 = v14;
  v60 = v18;
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      v24 = sub_1D91777FC();
    }

    else
    {
      if (v23 < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!v23)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v24 = v23 - 1;
    }

    *&v60[v22] = v24;
  }

  v57 = v14 + 32;
  v25 = v59;
  v26 = *(v59 + 16);
  v27 = v70;
  v56 = v59 + 16;
  v54 = v26;
  v26(v70, v60, active);
  v28 = *(v25 + 56);
  v55 = v25 + 56;
  v53 = v28;
  v28(v27, 0, 1, active);
  v29 = v71;
  swift_beginAccess();
  v30 = v1;
  v52 = *(v6 + 40);
  v52(&v1[v29], v27, v61);
  swift_endAccess();
  v31 = v62;
  os_unfair_lock_unlock(v62 + 4);
  v32 = sub_1D91777AC();
  sub_1D91777FC();
  v33 = sub_1D91777DC();
  v34 = v69;
  if (v33)
  {
    goto LABEL_15;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_17:
    (*(v59 + 8))(v60, active);
    return;
  }

LABEL_15:
  os_unfair_lock_lock(v31 + 4);
  v35 = v30;
  v36 = &v30[v71];
  v37 = v31;
  v38 = v61;
  v65(v34, v36, v61);
  if (v64(v34, 1, active) == 1)
  {
    (*(v6 + 8))(v34, v38);
    os_unfair_lock_unlock(v37 + 4);
    goto LABEL_17;
  }

  v39 = v63;
  v58(v63, v34, active);
  v40 = *(active + 60);
  v41 = *&v39[v40];
  sub_1D91777FC();
  v42 = sub_1D91777DC();
  v44 = v59;
  v43 = v60;
  if ((v42 & 1) == 0)
  {
    sub_1D91777FC();
    v45 = sub_1D91777DC();
    v46 = sub_1D91777FC();
    if (v45)
    {
      v39 = v63;
LABEL_28:
      *&v39[v40] = v46;
      goto LABEL_29;
    }

    v47 = sub_1D91777DC();
    v39 = v63;
    if (v47)
    {
      goto LABEL_26;
    }

    if (((v41 | v32) & 0x8000000000000000) == 0)
    {
      v46 = v41 + v32;
      if (!__OFADD__(v41, v32))
      {
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_35:
        __break(1u);
        return;
      }

LABEL_26:
      v46 = sub_1D91777FC();
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  v48 = v70;
  v54(v70, v39, active);
  v53(v48, 0, 1, active);
  v49 = v71;
  swift_beginAccess();
  v52(&v35[v49], v48, v38);
  swift_endAccess();
  os_unfair_lock_unlock(v62 + 4);
  v50 = *(v44 + 8);
  v50(v39, active);
  v50(v43, active);
}

uint64_t FRPOutput.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v4, v10);
  v14 = *(v4 + *(a2 + 28));
  v15 = *(v5 + *(a2 + 32));
  (*(v9 + 32))(a4, v12, a3);
  result = type metadata accessor for FRPOutput(0, a3, v16, v17);
  *(a4 + *(result + 28)) = v14;
  *(a4 + *(result + 32)) = v15;
  return result;
}

uint64_t sub_1D8D4DE18()
{
  v1[11] = v0;
  v2 = sub_1D9177E0C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_1D9177E9C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D2C890, 0, 0);
}

uint64_t CategoryObserverProvider.__allocating_init(ctx:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D4A624(a1);

  return v2;
}

uint64_t sub_1D8D4DFB8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for FRPSectionInfo(255, a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550]);
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D9178BDC();
  result = v4;
  if (!v4)
  {
    result = sub_1D917866C();
  }

  *a2 = result;
  return result;
}

_DWORD *sub_1D8D4E060(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D8D4E214(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

BOOL static RestrictionsController.isExplicitContentAllowed.getter()
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 24));
  return v1 == 0;
}

uint64_t RepublishingValueSubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v8[11];
  v37 = v8[12];
  v10 = sub_1D91777CC();
  v41 = sub_1D91791BC();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = v10;
  v36 = &v34 - v11;
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v34 - v13;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4[2];
  os_unfair_lock_lock(v18 + 4);
  v19 = v8[10];
  v45[0] = v19;
  v45[1] = v9;
  v40 = v9;
  v45[2] = a2;
  v46 = a3;
  v44 = a3;
  v20 = type metadata accessor for RepublishingValueSubject.Conduit(0, v45);
  v21 = *(v14 + 16);
  v42 = a1;
  v43 = a2;
  v21(v17, a1, a2);
  swift_allocObject();

  v23 = sub_1D8D5DA18(v22, v17);
  if (*(v4 + 24) == 1)
  {
    swift_beginAccess();
    v24 = type metadata accessor for ConduitList(0, v19, v40, v37);
    sub_1D8D44878(v23, v24);
    swift_endAccess();
    os_unfair_lock_unlock(v18 + 4);
LABEL_5:
    v46 = v20;
    WitnessTable = swift_getWitnessTable();
    v45[0] = v23;
    sub_1D917779C();
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v25 = *(*v4 + 120);
  swift_beginAccess();
  v26 = v39;
  v27 = v4 + v25;
  v28 = v36;
  v29 = v41;
  (*(v39 + 16))(v36, v27, v41);
  v30 = v38;
  v31 = v35;
  if ((*(v38 + 48))(v28, 1, v35) != 1)
  {
    v32 = v34;
    (*(v30 + 32))(v34, v28, v31);
    os_unfair_lock_unlock(v18 + 4);
    sub_1D8DB2FC4(v32);
    (*(v30 + 8))(v32, v31);
    goto LABEL_5;
  }

  result = (*(v26 + 8))(v28, v29);
  __break(1u);
  return result;
}

uint64_t RepublishingValueSubject.send(subscription:)(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  sub_1D8CFD9D8(a1, v10);
  v4 = *(*v1 + 144);
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D8D4EF6C(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1D8D4EF6C((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1D8D6BCE0(v10, &v5[5 * v8 + 4]);
  *(v1 + v4) = v5;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D91777FC();
  return sub_1D917782C();
}

char *sub_1D8D4EF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FC8, &unk_1D9191F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8D4F0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FC0, &qword_1D9191F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OS_dispatch_queue.enqueue(_:)(uint64_t a1)
{
  v2 = sub_1D9177E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D91787CC();
  v10 = sub_1D8D0EF30(&qword_1ECAAFD70, sub_1D8CFD888, &protocol conformance descriptor for OS_dispatch_queue);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v1;
  v11[4] = v10;
  aBlock[4] = sub_1D8D4F1E4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_34;
  v12 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_1D8D4F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 80);
    v9 = *(Strong + 88);
    *(Strong + 80) = a1;
    *(Strong + 88) = a2;

    sub_1D8D4F5BC(v8, v9);
  }

  return a4(a1, a2, 0);
}

uint64_t sub_1D8D4F5BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8D4F5FC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, double), uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v21 - v14;
  if (a3)
  {
    return a4(a1, v13);
  }

  v17 = sub_1D917886C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1D8D35688(a6, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = v21[3];
  *(v18 + 64) = v21[2];
  *(v18 + 80) = v19;
  *(v18 + 96) = v21[4];
  v20 = v21[1];
  *(v18 + 32) = v21[0];
  *(v18 + 48) = v20;
  *(v18 + 112) = a1;
  *(v18 + 120) = a2;
  *(v18 + 128) = a4;
  *(v18 + 136) = a5;

  sub_1D8E91268(0, 0, v15, &unk_1D91B77D8, v18);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1D917886C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D4F940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8D4FA18(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1D8D4FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[12] = a4;
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_1D8DA8700;

  return DonationService.donate(podcasts:stations:)(a5, a6);
}

uint64_t DonationService.donate(podcasts:stations:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8D4FAF4, 0, 0);
}

uint64_t sub_1D8D4FAF4()
{
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD1098);
  sub_1D8D4FDEC(v1, (v0 + 2));

  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[16];
  v6 = v0[17];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    *(v8 + 22) = 1024;
    v0[9] = 0;
    v0[10] = 0;
    v0[14] = &type metadata for Persona.CurrentUserExecutionStrategy;
    v0[15] = &off_1F5482BB8;
    v9 = v0[3];

    if (v9)
    {
      v10 = 0;
    }

    else
    {

      v10 = 1;
    }

    sub_1D8D4FE24((v0 + 9));
    sub_1D8D4FE78((v0 + 2));
    *(v8 + 24) = v10;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "DonationService: Donating %ld podcast and %ld station entities to Cascade, isCurrentPersona: %{BOOL}d.", v8, 0x1Cu);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {
    sub_1D8D4FE78((v0 + 2));
  }

  v11 = v0[18];
  v12 = swift_task_alloc();
  v0[19] = v12;
  v13 = *(v0 + 8);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
  v17 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1D8DA8588;

  return v17();
}

uint64_t sub_1D8D4FEA8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D8D5FF18;

  return sub_1D8D4FF60(a1, a2);
}

uint64_t sub_1D8D4FF60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8D5FF18;

  return v6(a1);
}

uint64_t sub_1D8D50058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D58924;

  return sub_1D8D5010C(a1, v4, v5, v6);
}

uint64_t sub_1D8D5010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8D50350, 0, 0);
}

uint64_t sub_1D8D50154(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D8D502F8(0, v1, 0);
    v2 = v20;
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 24);
      v9 = *(v4 + 40);
      v14 = *(v4 + 32);
      v15 = *(v4 + 16);
      sub_1D8D5055C(v5, *v4, v7);
      v20 = v2;
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
      v16 = v10 + 1;

      if (v10 >= v11 >> 1)
      {
        sub_1D8D502F8((v11 > 1), v16, 1);
        v2 = v20;
      }

      v4 += 56;
      v18 = &type metadata for PodcastDonationModel;
      v19 = &protocol witness table for PodcastDonationModel;
      v12 = swift_allocObject();
      *&v17 = v12;
      *(v12 + 16) = v5;
      *(v12 + 24) = v6;
      *(v12 + 32) = v7;
      *(v12 + 40) = v15;
      *(v12 + 48) = v8;
      *(v12 + 56) = v14;
      *(v12 + 64) = v9;
      *(v2 + 16) = v16;
      sub_1D8D6BCE0(&v17, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8D502AC()
{
  sub_1D8DA8564(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void *sub_1D8D502F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8D50414(a1, a2, a3, *v3, &qword_1ECAB45E0, &unk_1D9192030, &qword_1ECAB45D8, &qword_1D918A048);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D50350()
{
  v1 = v0[4];
  v2 = sub_1D8D50154(v0[3]);
  v3 = sub_1D8D50580(v1);
  sub_1D8D506E8(v3);
  v0[5] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D8DA8428;

  return sub_1D8D50814(v2);
}

void *sub_1D8D50414(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id sub_1D8D5055C(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8D50580(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D8D502F8(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1D8D502F8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for StationDonationModel;
      v15 = &protocol witness table for StationDonationModel;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      *(v2 + 16) = v9 + 1;
      sub_1D8D6BCE0(&v13, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8D506A8()
{

  return swift_deallocObject();
}

void *sub_1D8D506E8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D8D507F0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45D8, &qword_1D918A048);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8D50814(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D8D508A4, 0, 0);
}

uint64_t sub_1D8D508A4()
{
  if (DonationService.supportsSiriIndexing.getter())
  {
    v1 = objc_opt_self();
    sub_1D90F69E0();
    v2 = sub_1D91785DC();
    v0[21] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D8D776C8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA770, &unk_1D91B75F0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D8D77280;
    v0[13] = &block_descriptor_84;
    v0[14] = v3;
    [v1 fullSetDonationWithItemType:42184 descriptors:v2 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t static PageContextTracker.shared.getter()
{
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D50ADC()
{
  type metadata accessor for PageContextTracker();
  v0 = swift_allocObject();
  *(v0 + 24) = 64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  qword_1ECAB2000 = v0;
  return result;
}

uint64_t sub_1D8D50B70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D8D50BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D8D50C90(uint64_t *a1)
{
  v2 = v1;
  v210 = a1;
  v202 = sub_1D9177E0C();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v199 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1D9177E9C();
  v198 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v197 = &v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v197 - v6;
  v218 = sub_1D917705C();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v214 = &v197 - v10;
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v197 - v16;
  *&v211 = 0;
  v18 = sub_1D917739C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0F68 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_1ECAB0F70);
  v207 = v19;
  (*(v19 + 16))(v21, v22, v18);
  sub_1D917737C();
  sub_1D917731C();
  v23 = v2;
  v206 = v21;
  v24 = sub_1D917737C();
  v25 = sub_1D9178F5C();

  v26 = sub_1D917918C();
  v212 = v7;
  v208 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v226[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1D8CFA924(*&v23[qword_1ECAB85F8], *&v23[qword_1ECAB85F8 + 8], v226);
    v29 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v24, v25, v29, "FRP.RegenerateResults", "Identifier: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    v30 = v27;
    v7 = v212;
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  (*(v12 + 16))(v14, v17, v11);
  sub_1D91773FC();
  swift_allocObject();
  v31 = sub_1D91773EC();
  (*(v12 + 8))(v17, v11);
  v209 = v23;
  v215 = *&v23[qword_1ECAB8630];
  v32 = [v215 sections];
  v33 = MEMORY[0x1E69E7CC0];
  v205 = v31;
  if (!v32)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v44 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v44)
    {
      goto LABEL_22;
    }

LABEL_18:
    v45 = 0;
    goto LABEL_25;
  }

  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8678, &qword_1D91A2230);
  v35 = sub_1D91785FC();

  if (v35 >> 62)
  {
    v36 = sub_1D917935C();
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_20:

    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_20;
  }

LABEL_8:
  *&v226[0] = v33;
  v33 = v226;
  result = sub_1D8D4214C(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
    return result;
  }

  v38 = 0;
  v39 = *&v226[0];
  v14 = &selRef_setParent_;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1DA72AA90](v38, v35);
    }

    else
    {
      v40 = *(v35 + 8 * v38 + 32);
      swift_unknownObjectRetain();
    }

    v41 = [v40 numberOfObjects];
    swift_unknownObjectRelease();
    *&v226[0] = v39;
    v43 = *(v39 + 16);
    v42 = *(v39 + 24);
    if (v43 >= v42 >> 1)
    {
      v33 = v226;
      sub_1D8D4214C(v42 > 1, v43 + 1, 1);
      v39 = *&v226[0];
    }

    ++v38;
    *(v39 + 16) = v43 + 1;
    *(v39 + 8 * v43 + 32) = v41;
  }

  while (v36 != v38);

LABEL_21:
  v7 = v212;
  v44 = *(v39 + 16);
  if (!v44)
  {
    goto LABEL_18;
  }

LABEL_22:
  v45 = 0;
  v46 = (v39 + 32);
  do
  {
    v47 = *v46++;
    v48 = __OFADD__(v45, v47);
    v45 += v47;
    if (v48)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    --v44;
  }

  while (v44);
LABEL_25:
  v49 = qword_1ECAB8638;
  v50 = v209;
  swift_beginAccess();
  v51 = *&v50[v49];

  os_unfair_lock_lock((v51 + 40));
  v33 = *(v51 + 24);
  os_unfair_lock_unlock((v51 + 40));

  if (v45 >= v33)
  {
    v53 = v33;
  }

  else
  {
    v53 = v45;
  }

  v213 = v53;
  v204 = v45;
  v203 = v49;
  if (v53 <= 10000)
  {
    if (v53 < 0)
    {
      goto LABEL_146;
    }

    v14 = v211;
    if (!v53)
    {

      v64 = MEMORY[0x1E69E7CC0];
      v76 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v76)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v54 = sub_1D917744C();
    __swift_project_value_buffer(v54, qword_1EDCD0F88);
    v55 = v209;
    v56 = sub_1D917741C();
    v57 = sub_1D9178CFC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v226[0] = v59;
      *v58 = 136315394;
      *(v58 + 4) = sub_1D8CFA924(*&v55[qword_1ECAB85F8], *&v55[qword_1ECAB85F8 + 8], v226);
      *(v58 + 12) = 2048;
      *(v58 + 14) = v213;
      _os_log_impl(&dword_1D8CEC000, v56, v57, "FRC %s has requested %ld items. Loading this many items may cause performance issues for the entire app.", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1DA72CB90](v59, -1, -1);
      v60 = v58;
      v53 = v213;
      MEMORY[0x1DA72CB90](v60, -1, -1);
    }

    v14 = v211;
    v7 = v212;
  }

  v61 = 0;
  v62 = (v217 + 56);
  v63 = (v217 + 32);
  v64 = MEMORY[0x1E69E7CC0];
  *&v52 = 138412290;
  v211 = v52;
  do
  {
    sub_1D8D4229C(v61, v39);
    if (v14)
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v65 = sub_1D917744C();
      __swift_project_value_buffer(v65, qword_1EDCD0F88);
      v66 = v14;
      v33 = sub_1D917741C();
      v67 = sub_1D9178D0C();

      if (os_log_type_enabled(v33, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = v211;
        v70 = v14;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v71;
        *v69 = v71;
        _os_log_impl(&dword_1D8CEC000, v33, v67, "FRC failed to create IndexPath with error: %@", v68, 0xCu);
        sub_1D8D08A50(v69, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v69, -1, -1);
        v72 = v68;
        v53 = v213;
        MEMORY[0x1DA72CB90](v72, -1, -1);
      }

      else
      {
      }

      v7 = v212;
      (*v62)(v212, 1, 1, v218);
      sub_1D8D08A50(v7, &qword_1ECAB8668, &qword_1D91A2218);
      v14 = 0;
    }

    else
    {
      v73 = v218;
      (*v62)(v7, 0, 1, v218);
      v33 = *v63;
      (*v63)(v214, v7, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1D8D4181C(0, v64[2] + 1, 1, v64);
      }

      v75 = v64[2];
      v74 = v64[3];
      if (v75 >= v74 >> 1)
      {
        v64 = sub_1D8D4181C((v74 > 1), v75 + 1, 1, v64);
      }

      v64[2] = v75 + 1;
      (v33)(v64 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v75, v214, v218);
      v53 = v213;
    }

    ++v61;
  }

  while (v53 != v61);

  v76 = v64[2];
  if (v76)
  {
LABEL_51:
    *&v211 = v14;
    *&v226[0] = MEMORY[0x1E69E7CC0];
    v33 = v226;
    sub_1D91795CC();
    v77 = 0;
    v214 = v64 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    do
    {
      if (v77 >= v64[2])
      {
        goto LABEL_142;
      }

      v78 = v77 + 1;
      v79 = v217;
      v80 = v216;
      v14 = v218;
      (*(v217 + 16))(v216, &v214[*(v217 + 72) * v77], v218);
      v81 = v64;
      v82 = v76;
      v83 = sub_1D917703C();
      v84 = [v215 objectAtIndexPath_];

      (*(v79 + 8))(v80, v14);
      v33 = v226;
      sub_1D917959C();
      sub_1D91795DC();
      v76 = v82;
      v64 = v81;
      sub_1D91795EC();
      sub_1D91795AC();
      v77 = v78;
    }

    while (v76 != v78);

    v85 = *&v226[0];
    v14 = v211;
    goto LABEL_57;
  }

LABEL_56:

  v85 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v86 = v209;
  v87 = sub_1D8D527C4(v85, v86, v210);
  v212 = v14;

  v88 = v87[2];
  v214 = v86;
  v217 = v88;
  if (v88)
  {
    v90 = (v87 + 6);
    v89 = v87[6];
    v218 = v87[5];
    v216 = v89;
    v91 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v91 >= v87[2])
      {
        goto LABEL_143;
      }

      v92 = v87;
      v93 = *(v90 - 16);
      v94 = *(v90 - 1);
      v95 = *v90;
      if (v94 != v218)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1D8D6A390(0, v33[2].isa + 1, 1, v33);
        }

        isa = v33[2].isa;
        v96 = v33[3].isa;
        if (isa >= v96 >> 1)
        {
          v33 = sub_1D8D6A390((v96 > 1), isa + 1, 1, v33);
        }

        v33[2].isa = (isa + 1);
        v98 = &v33[2 * isa];
        v98[4].isa = v218;
        v98[5].isa = v14;
        v218 = v94;
        v14 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D8D6A248(0, *(v14 + 16) + 1, 1, v14);
      }

      v100 = *(v14 + 16);
      v99 = *(v14 + 24);
      if (v100 >= v99 >> 1)
      {
        v14 = sub_1D8D6A248((v99 > 1), v100 + 1, 1, v14);
      }

      ++v91;

      *(v14 + 16) = v100 + 1;
      v101 = (v14 + 24 * v100);
      *(v101 + 32) = v93;
      v101[5] = v94;
      v101[6] = v95;
      v90 += 3;
      v87 = v92;
    }

    while (v217 != v91);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    while (1)
    {
      v102 = MEMORY[0x1E69E7CC0];
      v103 = v216;
      v105 = v33[2].isa;
      v104 = v33[3].isa;
      if (v105 >= v104 >> 1)
      {
        v33 = sub_1D8D6A390((v104 > 1), v105 + 1, 1, v33);
      }

      v33[2].isa = (v105 + 1);
      v106 = &v33[2 * v105];
      v106[4].isa = v218;
      v106[5].isa = v14;
      v107 = sub_1D8D6A4DC(v33);

      v108 = *(v107 + 16);
      if (!v108)
      {
        break;
      }

LABEL_75:
      *&v226[0] = v102;
      v33 = v226;
      v216 = v107;
      v217 = v108;
      sub_1D8D6AA78(0, v108, 0);
      v109 = v217;
      v110 = v216;
      v111 = 0;
      v112 = *&v226[0];
      v218 = (v216 + 32);
      while (v111 < *(v110 + 2))
      {
        v113 = (v218 + 16 * v111);
        v114 = *v113;
        v115 = v113[1];
        v116 = *(v115 + 16);
        if (v116)
        {
          aBlock[0] = v102;

          sub_1D91795CC();
          v117 = 48;
          do
          {
            v118 = *(v115 + v117);
            v33 = aBlock;
            sub_1D917959C();
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
            v117 += 24;
            --v116;
          }

          while (v116);

          v119 = aBlock[0];
          v110 = v216;
          v109 = v217;
        }

        else
        {
          v119 = v102;
        }

        *&v226[0] = v112;
        v121 = *(v112 + 16);
        v120 = *(v112 + 24);
        v14 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          v33 = v226;
          sub_1D8D6AA78((v120 > 1), v121 + 1, 1);
          v109 = v217;
          v110 = v216;
          v112 = *&v226[0];
        }

        ++v111;
        *(v112 + 16) = v14;
        v122 = v112 + 16 * v121;
        *(v122 + 32) = v114;
        *(v122 + 40) = v119;
        if (v111 == v109)
        {
          v213 = v112;
          *&v226[0] = v102;
          v33 = v226;
          sub_1D8D6AAFC(0, v217, 0);
          v123 = v217;
          v124 = v216;
          v125 = 0;
          v126 = *&v226[0];
          while (v125 < *(v124 + 2))
          {
            v127 = (v218 + 16 * v125);
            v128 = *v127;
            v129 = v127[1];
            v130 = *(v129 + 16);
            if (v130)
            {
              v215 = v126;
              aBlock[0] = v102;

              v33 = aBlock;
              sub_1D8D6AC44(0, v130, 0);
              v131 = aBlock[0];
              v132 = *(aBlock[0] + 16);
              v133 = 32;
              do
              {
                v134 = *(v129 + v133);
                aBlock[0] = v131;
                v135 = *(v131 + 24);
                if (v132 >= v135 >> 1)
                {
                  v33 = aBlock;
                  sub_1D8D6AC44((v135 > 1), v132 + 1, 1);
                  v131 = aBlock[0];
                }

                *(v131 + 16) = v132 + 1;
                *(v131 + v132 + 32) = v134;
                v133 += 24;
                ++v132;
                --v130;
              }

              while (v130);

              v102 = MEMORY[0x1E69E7CC0];
              v126 = v215;
              v124 = v216;
              v123 = v217;
            }

            else
            {
              v131 = v102;
            }

            *&v226[0] = v126;
            v137 = v126[2];
            v136 = v126[3];
            v14 = v137 + 1;
            if (v137 >= v136 >> 1)
            {
              v33 = v226;
              sub_1D8D6AAFC((v136 > 1), v137 + 1, 1);
              v123 = v217;
              v124 = v216;
              v126 = *&v226[0];
            }

            ++v125;
            v126[2] = v14;
            v138 = &v126[2 * v137];
            v138[4] = v128;
            v138[5] = v131;
            if (v125 == v123)
            {
              v215 = v126;

              goto LABEL_100;
            }
          }

          goto LABEL_145;
        }
      }

LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v33 = sub_1D8D6A390(0, v33[2].isa + 1, 1, v33);
    }
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
    v102 = MEMORY[0x1E69E7CC0];
    v108 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v108)
    {
      goto LABEL_75;
    }
  }

  v215 = MEMORY[0x1E69E7CC0];
  v213 = MEMORY[0x1E69E7CC0];
LABEL_100:
  v139 = qword_1EDCD1628;
  swift_beginAccess();
  v218 = v139;

  sub_1D8D54D38(v140);
  v141 = v210;
  v217 = v210[1];
  v143 = sub_1D8D529E4(v217, v142);
  v144 = v143;
  if ((v143 & 0xC000000000000001) != 0)
  {
    v141[5] = sub_1D917935C();
    v33 = sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    sub_1D8D05854(&qword_1EDCD09C8, MEMORY[0x1E69E81B8]);
    sub_1D9178B3C();
    v144 = v221;
    v145 = v222;
    v146 = v223;
    v147 = v224;
    v148 = v225;
  }

  else
  {
    v147 = 0;
    v141[5] = *(v143 + 16);
    v149 = -1 << *(v143 + 32);
    v145 = v143 + 56;
    v146 = ~v149;
    v150 = -v149;
    if (v150 < 64)
    {
      v151 = ~(-1 << v150);
    }

    else
    {
      v151 = -1;
    }

    v148 = v151 & *(v143 + 56);
  }

  v216 = v146;
  v152 = (v146 + 64) >> 6;
  while ((v144 & 0x8000000000000000) == 0)
  {
    v153 = v147;
    v154 = v148;
    v14 = v147;
    if (!v148)
    {
      while (1)
      {
        v14 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          break;
        }

        if (v14 >= v152)
        {
          goto LABEL_125;
        }

        v154 = *(v145 + 8 * v14);
        v153 = (v153 + 1);
        if (v154)
        {
          goto LABEL_114;
        }
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_114:
    v155 = (v154 - 1) & v154;
    v156 = *(*(v144 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v154)))));
    if (!v156)
    {
      goto LABEL_125;
    }

LABEL_118:
    v148 = v155;
    v158 = v214;
    v159 = v218;
    swift_beginAccess();
    v160 = sub_1D8D698BC(v156);
    if (v161)
    {
      v162 = v160;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = *&v158[v159];
      aBlock[0] = v164;
      *&v158[v159] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83760();
        v164 = aBlock[0];
      }

      sub_1D8F80AD4(v162, v164);
      *&v158[v159] = v164;
    }

    swift_endAccess();
    v165 = qword_1EDCD1600;
    swift_beginAccess();
    v33 = *&v158[v165];
    v166 = sub_1D8D698BC(v156);
    if (v167)
    {
      v168 = v166;
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *&v158[v165];
      aBlock[0] = v33;
      *&v158[v165] = 0x8000000000000000;
      if (!v169)
      {
        sub_1D8F835F0();
        v33 = aBlock[0];
      }

      sub_1D8F8093C(v168, v33);
      *&v158[v165] = v33;
    }

    swift_endAccess();

    v147 = v14;
  }

  v157 = sub_1D917938C();
  if (v157)
  {
    aBlock[0] = v157;
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    swift_dynamicCast();
    v156 = *&v226[0];
    v14 = v147;
    v155 = v148;
    if (*&v226[0])
    {
      goto LABEL_118;
    }
  }

LABEL_125:
  sub_1D8D1B144(v144);
  v170 = v210;
  if ((v210[7] & 1) == 0)
  {
    v171 = *&v214[qword_1EDCD1620];
    if (!v171 || (v172 = v213, , , sub_1D8E84898(v172, v171), v174 = v173, , , v170 = v210, (v174 & 1) == 0))
    {
      *(v170 + 56) = 1;
    }
  }

  v175 = v204;
  if ((v217 & 0xC000000000000001) != 0)
  {
    v176 = sub_1D917935C();
    v170 = v210;
  }

  else
  {
    v176 = *(v217 + 16);
  }

  v177 = v209;
  v178 = qword_1EDCD1638;
  if (v176 < v175 != v214[qword_1EDCD1638])
  {
    *(v170 + 56) = 1;
  }

  v218 = v176;
  v170[6] = v175;
  v179 = qword_1EDCD1610;
  v180 = v175;
  if (v175 != *&v214[qword_1EDCD1610])
  {
    *(v170 + 56) = 1;
  }

  v181 = *(v170 + 1);
  v226[0] = *v170;
  v226[1] = v181;
  *v227 = *(v170 + 2);
  *&v227[9] = *(v170 + 41);
  v182 = v214;
  sub_1D8D52CF8(*&v214[qword_1ECAB85F8], *&v214[qword_1ECAB85F8 + 8]);
  v183 = *&v177[v203];
  MEMORY[0x1EEE9AC00](v184);
  *(&v197 - 2) = v170;
  *(&v197 - 1) = v175;
  MEMORY[0x1EEE9AC00](v185);
  *(&v197 - 2) = sub_1D8D54EC4;
  *(&v197 - 1) = v186;

  os_unfair_lock_lock(v183 + 10);
  sub_1D8D48BA8(&v183[4]);
  os_unfair_lock_unlock(v183 + 10);

  if (*(v170 + 56) == 1)
  {
    v187 = v218 < v175;
    *&v182[qword_1EDCD1620] = v213;

    v182[v178] = v187;
    *&v182[v179] = v180;
    v188 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v189 = swift_allocObject();
    v190 = v215;
    *(v189 + 16) = v188;
    *(v189 + 24) = v190;
    *(v189 + 32) = v187;
    *(v189 + 40) = v180;
    aBlock[4] = sub_1D8D83E2C;
    aBlock[5] = v189;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_95;
    v191 = _Block_copy(aBlock);

    v192 = v197;
    sub_1D9177E4C();
    v219 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v193 = v199;
    v194 = v202;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v192, v193, v191);
    _Block_release(v191);
    (*(v201 + 8))(v193, v194);
    (*(v198 + 8))(v192, v200);
  }

  else
  {
  }

  v195 = v207;
  v196 = v206;
  sub_1D8D335AC(v206, v205);

  return (*(v195 + 8))(v196, v208);
}

uint64_t sub_1D8D5276C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

void *sub_1D8D527C4(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!(a1 >> 62))
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = sub_1D917935C();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v6 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](i, a1);
      }

      else
      {
        if (i >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = [v8 objectID];
      sub_1D8D418D4(&v21, v10);

      v11 = sub_1D8D69334(&v21, a2, v10, a3, v9);
      if (v11 != 2 && v22 != 1)
      {
        break;
      }

      if (v6 == v5)
      {
        return v19;
      }
    }

    v12 = v11;
    v18 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1D8D6A248(0, v19[2] + 1, 1, v19);
    }

    v15 = v19[2];
    v14 = v19[3];
    if (v15 >= v14 >> 1)
    {
      v19 = sub_1D8D6A248((v14 > 1), v15 + 1, 1, v19);
    }

    v19[2] = v15 + 1;
    v16 = &v19[3 * v15];
    *(v16 + 32) = v12 & 1;
    v16[5] = v18;
    v16[6] = v10;
  }

  while (v6 != v5);
  return v19;
}

uint64_t sub_1D8D529E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D917935C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1D8D52AD8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1D917935C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1D917935C();
  v2 = sub_1D8EFC150(v5, v6);
LABEL_10:

  return sub_1D8D6AC64(a1, v2);
}

void sub_1D8D52AD8(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1D917935C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    sub_1D9110A64();
    sub_1D9178B3C();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1D8D1B144(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1D910EC20(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1D917938C())
      {
        sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1D8D52CF8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F88);
  sub_1D8D088B4(v2, v13, &unk_1ECAB8698, &qword_1D91A2240);

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136316674;
    *(v9 + 4) = sub_1D8CFA924(a1, a2, v13);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(v3 + 56) & 1;
    v11 = *(v3 + 8);
    *(v9 + 20) = *(v3 + 16);
    *(v9 + 30) = *(v3 + 24);
    *(v9 + 40) = *(v3 + 40);
    *(v9 + 18) = 2048;
    *(v9 + 28) = 2048;
    *(v9 + 38) = 2048;
    *(v9 + 48) = 2048;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_1D917935C();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    *(v9 + 50) = v12;
    *(v9 + 58) = 2048;
    *(v9 + 60) = *(v3 + 48);
    sub_1D8D08A50(v3, &unk_1ECAB8698, &qword_1D91A2240);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "FetchedResultsPublisher (%s):\nUpdate Stats\n    Update pushed: %{BOOL}d\n    Added to cache: %ld\n    Items updated: %ld\n    Items removed: %ld\n    Total paged items: %ld\n    Total items in DB: %ld", v9, 0x44u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
    sub_1D8D08A50(v3, &unk_1ECAB8698, &qword_1D91A2240);
  }
}

BOOL sub_1D8D52F10()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForSubscribedChannel];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has channels with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

BOOL sub_1D8D53120()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has shows with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

BOOL sub_1D8D53330()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has episodes with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, v2, v4);
  v8 = *(v2 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1D9178BAC();
    v3 = v9;
    v2 = v8;
  }

  (*(v3 + 8))(v6, v2);
  return v10 & 1;
}

uint64_t NSUserDefaults.queryPublisher<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v58 = a1;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1D9178FBC();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v56 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v43 - v11;
  v52 = sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340, MEMORY[0x1E695BE98]);
  v13 = sub_1D917768C();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v43 - v14;
  v15 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  v60 = v15;
  v61 = MEMORY[0x1E69E73E0];
  v62 = WitnessTable;
  v63 = MEMORY[0x1E69E7410];
  v17 = sub_1D917774C();
  v18 = swift_getWitnessTable();
  v50 = v13;
  v49 = swift_getWitnessTable();
  v60 = v17;
  v61 = v13;
  v62 = v18;
  v63 = v49;
  v19 = sub_1D91775CC();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - v20;
  v45 = swift_getWitnessTable();
  v21 = sub_1D917765C();
  v22 = *(v21 - 8);
  v47 = v21;
  v48 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v43 - v23;
  v24 = [objc_opt_self() defaultCenter];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v25 = sub_1D9178E1C();
  v60 = v25;
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177CEC();
  sub_1D8D2210C(v7);

  (*(v54 + 8))(v10, v8);
  v27 = swift_allocObject();
  v28 = v55;
  v27[2] = a3;
  v27[3] = v28;
  v29 = v58;
  v30 = v59;
  v27[4] = v58;
  v27[5] = v30;

  v31 = v46;
  v32 = v51;
  sub_1D9177B9C();

  (*(v56 + 8))(v12, v32);
  sub_1D8D53E90(a3, a3);
  swift_allocObject();
  v33 = sub_1D917861C();
  v29();
  sub_1D8D4D228(v33, a3);
  v34 = v44;
  v35 = v50;
  sub_1D9177CCC();

  (*(v57 + 8))(v31, v35);
  v36 = v43;
  sub_1D9177D6C();
  (*(v53 + 8))(v34, v19);
  v37 = v47;
  v38 = swift_getWitnessTable();
  v39 = v36;
  v40 = Publisher.bufferedMulticast()(v37, v38);
  (*(v48 + 8))(v39, v37);
  v60 = v40;
  sub_1D917781C();
  swift_getWitnessTable();
  v41 = sub_1D9177B1C();

  return v41;
}

uint64_t sub_1D8D53E58()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D53E90(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1D8D54200@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a4, a1, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a4, 0, 1, AssociatedTypeWitness);
}

void *sub_1D8D542D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D8D54350(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (qword_1ECAB0078 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB0080;
  v9 = qword_1ECAB0088[0];

  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1D8D5440C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1DA7298F0](a2, 0xE700000000000000);
  *a3 = 0xD00000000000001ALL;
  *a4 = 0x80000001D91D8020;
  return result;
}

void RepublishingValueSubject.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4 + 4);
  if (*(v1 + 24) == 1)
  {
    v5 = v1 + *(*v1 + 128);
    swift_beginAccess();
    v6 = *v5;
    v7 = *(*v1 + 136);
    LOBYTE(v5) = *(v5 + 8);
    swift_beginAccess();
    sub_1D8D546A0(v6, v5);
    (*(*(*(v3 + 80) - 8) + 24))(v1 + v7, a1, *(v3 + 80));
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
    MEMORY[0x1EEE9AC00](v8);
    v9[2] = a1;
    sub_1D8D546BC(sub_1D8D5480C, v9, v6, v5);
    sub_1D8D54860(v6, v5);
  }

  else
  {

    os_unfair_lock_unlock(v4 + 4);
  }
}

uint64_t sub_1D8D546A0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t (*sub_1D8D546BC(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t)
{
  if (!a4)
  {
    return result(a3);
  }

  if (a4 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ConduitBase(255, v4, v5, v6);
    swift_getWitnessTable();
    sub_1D9178B4C();
    swift_getWitnessTable();
    return sub_1D91784BC();
  }

  return result;
}

uint64_t sub_1D8D54860(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1D8D5487C(uint64_t a1)
{
  sub_1D9179DBC();
  sub_1D8D561C0();
  return sub_1D9179E1C();
}