uint64_t sub_1D89B6D78()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E9940);
  __swift_project_value_buffer(v0, qword_1EE0E9940);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6E14()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1ECA669D8);
  __swift_project_value_buffer(v0, qword_1ECA669D8);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B6F44()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E9920);
  __swift_project_value_buffer(v0, qword_1EE0E9920);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B70FC()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E42D8);
  __swift_project_value_buffer(v0, qword_1EE0E42D8);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B735C()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E4470);
  __swift_project_value_buffer(v0, qword_1EE0E4470);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B76C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D8B151D0();
}

uint64_t sub_1D89B7760@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D8B151E0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t LoggingSignposter.autoInterval(_:shouldLog:enableTelemetry:)(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v11 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D89B96FC(v5, v13, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  v14 = swift_allocObject();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)(a1, a2, v8, v7, v6, (v14 + 16));
  sub_1D89B9764(v13, type metadata accessor for LoggingSignposter);
  return v14;
}

uint64_t LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v32 = a4;
  v33 = a1;
  v31 = a6;
  v34 = a3;
  v10 = sub_1D8B15130();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15150();
  sub_1D8B15100();
  v16 = sub_1D8B15150();
  v17 = sub_1D8B16370();
  result = sub_1D8B16460();
  if (a5)
  {
    if ((result & 1) == 0)
    {
LABEL_21:

      LODWORD(v29) = a5;
      v24 = *(v11 + 16);
      v24(v30, v15, v10);
      sub_1D8B151A0();
      swift_allocObject();
      v25 = sub_1D8B15190();
      v26 = type metadata accessor for LoggingSignposter.IntervalState(0);
      v27 = v31;
      v31[3] = v26;
      v27[4] = &off_1F5431C78;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v24(boxed_opaque_existential_1 + v26[5], v15, v10);
      sub_1D8B131C0();
      sub_1D89B96FC(v7, boxed_opaque_existential_1 + v26[8], type metadata accessor for LoggingSignposter);
      *boxed_opaque_existential_1 = v33;
      boxed_opaque_existential_1[1] = a2;
      *(boxed_opaque_existential_1 + 16) = v34;
      *(boxed_opaque_existential_1 + v26[6]) = v25;
      *(boxed_opaque_existential_1 + v26[9]) = v32 & 1;
      *(boxed_opaque_existential_1 + v26[10]) = v29 & 1;
      return (*(v11 + 8))(v15, v10);
    }

    if (v34)
    {
LABEL_10:
      if (!HIDWORD(v33))
      {
        if ((v33 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v33 >> 16 <= 0x10)
        {
          v19 = &v35;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = v33;
    if (v33)
    {
LABEL_14:
      v29 = v19;
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1D8B15110();
      v23 = "enableTelemetry=YES";
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v16, v17, v22, v29, v23, v21, 2u);
      MEMORY[0x1DA721330](v21, -1, -1);
      goto LABEL_21;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v34 & 1) == 0)
  {
    v20 = v33;
    if (!v33)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_19:
    v29 = v20;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D8B15110();
    v23 = "";
    goto LABEL_20;
  }

  if (HIDWORD(v33))
  {
    goto LABEL_23;
  }

  if ((v33 & 0xFFFFF800) != 0xD800)
  {
    if (v33 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v20 = &v36;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t LoggingSignposter.AutoInterval.deinit()
{
  sub_1D87C1470(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  return v0;
}

uint64_t LoggingSignposter.AutoInterval.__deallocating_deinit()
{
  sub_1D87C1470(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  return swift_deallocClassInstance();
}

uint64_t LoggingSignposter.init(logger:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D8B151E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(a2, a1, v4);
  v8(v7, a1, v4);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  return (*(v5 + 8))(a1, v4);
}

void LoggingSignposter.emitEvent(_:shouldLog:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3;
  v24[2] = a2;
  v8 = sub_1D8B15130();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15120();
  v25 = v4;
  v12 = sub_1D8B15150();
  v13 = sub_1D8B16380();
  if (sub_1D8B16460())
  {
    v24[1] = a1;
    if (v6)
    {
      if (!HIDWORD(a1))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_18:
          __break(1u);
          return;
        }

        if (a1 >> 16 <= 0x10)
        {
          v14 = &v26;
          goto LABEL_9;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (a1)
      {
        v14 = a1;
LABEL_9:
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = sub_1D8B15110();
        _os_signpost_emit_with_name_impl(&dword_1D8783000, v12, v13, v16, v14, "", v15, 2u);
        MEMORY[0x1DA721330](v15, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_10:

  (*(v9 + 8))(v11, v8);
  if (a4)
  {
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16200();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = sub_1D8B16730();
      v23 = sub_1D89AC714(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D8783000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA721330](v20, -1, -1);
      MEMORY[0x1DA721330](v19, -1, -1);
    }
  }
}

void LoggingSignposter.emitEvent(_:_:shouldLog:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v34 = a4;
  v9 = a3;
  v32 = a2;
  v11 = sub_1D8B15130();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v33 = v6;
  v15 = sub_1D8B15150();
  v16 = sub_1D8B16380();
  if (sub_1D8B16460())
  {
    v29 = a6;
    v31 = v9;
    v30 = a1;
    if (v9)
    {
      if (!HIDWORD(a1))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (a1 >> 16 <= 0x10)
        {

          v17 = &v35;
LABEL_11:
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v35 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_1D89AC714(v34, a5, &v35);
          v20 = sub_1D8B15110();
          _os_signpost_emit_with_name_impl(&dword_1D8783000, v15, v16, v20, v17, " %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1DA721330](v19, -1, -1);
          MEMORY[0x1DA721330](v18, -1, -1);

          (*(v12 + 8))(v14, v11);
          if ((v29 & 1) == 0)
          {
            return;
          }

          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {

      if (a1)
      {
        v17 = a1;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  (*(v12 + 8))(v14, v11);
  if ((a6 & 1) == 0)
  {
    return;
  }

LABEL_12:

  v21 = sub_1D8B151C0();
  v22 = sub_1D8B16200();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315394;
    v25 = sub_1D8B16730();
    v27 = sub_1D89AC714(v25, v26, &v35);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1D89AC714(v34, a5, &v35);
    _os_log_impl(&dword_1D8783000, v21, v22, "%s %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }
}

void sub_1D89B8538()
{
  v1 = v0;
  v2 = type metadata accessor for LoggingSignposter.IntervalState(0);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B131D0();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B15170();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = sub_1D8B15130();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = *(v0 + *(v2 + 40));
  type metadata accessor for LoggingSignposter(0);
  v18 = *v0;
  v19 = *(v0 + 16);
  v58 = v2;
  v20 = sub_1D8B15150();
  if (v17 != 1)
  {
    sub_1D8B15180();
    v23 = sub_1D8B16360();
    if ((sub_1D8B16460() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v19)
    {
      if (v18 >> 32)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v26 = v51;
      if ((v18 & 0xFFFFF800) == 0xD800)
      {
LABEL_40:
        __break(1u);
        return;
      }

      if (v18 >> 16 > 0x10)
      {
        goto LABEL_38;
      }

      v24 = &v62;
      v25 = v52;
    }

    else
    {
      if (!v18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v24 = v18;
      v26 = v51;
      v25 = v52;
    }

    sub_1D8B151B0();

    v30 = v53;
    if ((*(v25 + 88))(v26, v53) == *MEMORY[0x1E69E93E8])
    {
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v26, v30);
      v31 = "";
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v34 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v20, v23, v34, v24, v31, v32, 2u);
    goto LABEL_27;
  }

  sub_1D8B15180();
  v21 = sub_1D8B16360();
  if ((sub_1D8B16460() & 1) == 0)
  {
    v14 = v16;
    goto LABEL_28;
  }

  if (v19)
  {
    if (!(v18 >> 32))
    {
      if ((v18 & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v18 >> 16 <= 0x10)
      {
        v22 = &v61;
        goto LABEL_15;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  v22 = v18;
LABEL_15:
  v27 = v52;

  sub_1D8B151B0();

  v28 = v53;
  if ((*(v27 + 88))(v10, v53) == *MEMORY[0x1E69E93E8])
  {
    v29 = "[Error] Interval already ended";
  }

  else
  {
    (*(v27 + 8))(v10, v28);
    v29 = "enableTelemetry=YES";
  }

  v32 = swift_slowAlloc();
  *v32 = 0;
  v33 = sub_1D8B15110();
  _os_signpost_emit_with_name_impl(&dword_1D8783000, v20, v21, v33, v22, v29, v32, 2u);
  v14 = v16;
LABEL_27:
  MEMORY[0x1DA721330](v32, -1, -1);
LABEL_28:
  v35 = v58;

  (*(v59 + 8))(v14, v60);
  if (*(v1 + *(v35 + 36)) == 1)
  {
    v36 = v54;
    sub_1D8B131C0();
    sub_1D8B13090();
    v38 = v37;
    (*(v55 + 8))(v36, v56);
    v39 = v57;
    sub_1D89B96FC(v1, v57, type metadata accessor for LoggingSignposter.IntervalState);
    v40 = sub_1D8B151C0();
    v41 = sub_1D8B16200();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315394;
      v44 = sub_1D8B16730();
      v45 = v39;
      v46 = v44;
      v48 = v47;
      sub_1D89B9764(v45, type metadata accessor for LoggingSignposter.IntervalState);
      v49 = sub_1D89AC714(v46, v48, &v63);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2048;
      *(v42 + 14) = v38;
      _os_log_impl(&dword_1D8783000, v40, v41, "%s (took %f seconds)", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1DA721330](v43, -1, -1);
      MEMORY[0x1DA721330](v42, -1, -1);
    }

    else
    {

      sub_1D89B9764(v39, type metadata accessor for LoggingSignposter.IntervalState);
    }
  }
}

uint64_t sub_1D89B8C6C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D8B151E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = type metadata accessor for LoggingSignposter(0);
  __swift_allocate_value_buffer(v15, a2);
  v16 = __swift_project_value_buffer(v15, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, a4);
  v18 = *(v9 + 16);
  v18(v14, v17, v8);
  v18(v16, v14, v8);
  v18(v12, v14, v8);
  sub_1D8B15140();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1D89B91AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for LoggingSignposter(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_1D89B96FC(v7, a4, type metadata accessor for LoggingSignposter);
}

uint64_t sub_1D89B94F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D89B9550(uint64_t a1)
{
  result = sub_1D8B151E0();
  if (v2 <= 0x3F)
  {
    result = sub_1D8B15160();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D89B9628(uint64_t a1)
{
  result = sub_1D8B15130();
  if (v2 <= 0x3F)
  {
    result = sub_1D8B151A0();
    if (v3 <= 0x3F)
    {
      result = sub_1D8B131D0();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for LoggingSignposter(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D89B96FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89B9764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D89B9820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 8) muid];
  sub_1D8B16B50();
  v5 = objc_opt_self();
  v6 = sub_1D8B15940();

  [v5 captureUserAction:a2 target:a3 value:v6];
}

void static MapsAnalyticsReporter.dismissedDisambiguationList(results:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 112);
      v19[6] = *(v4 + 96);
      v19[7] = v5;
      v20 = *(v4 + 128);
      v6 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v6;
      v7 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v19[3] = v7;
      v8 = *(v4 + 80);
      v19[4] = *(v4 + 64);
      v19[5] = v8;
      v9 = *(&v19[0] + 1);
      sub_1D8883B74(v19, v18);
      v18[0] = [v9 muid];
      v10 = sub_1D8B16B50();
      v12 = v11;
      sub_1D8883BD0(v19);
      v21 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v4 += 136;
      --v1;
    }

    while (v1);
  }

  *&v19[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D88F0E40();
  sub_1D8B15810();

  v16 = objc_opt_self();
  v17 = sub_1D8B15940();

  [v16 captureUserAction:47 target:143 value:v17];
}

void sub_1D89B9AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = a1 + 64;
    v4 = v1;
    do
    {
      v5 = *(v3 - 32);

      v6 = v5;

      [v6 muid];
      v7 = sub_1D8B16B50();
      v9 = v8;

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3F54((v10 > 1), v11 + 1, 1);
      }

      v3 += 40;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  if (v1 == 1)
  {
    v13 = 21;
  }

  else
  {
    v13 = 487;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D88F0E40();
  sub_1D8B15810();

  v14 = objc_opt_self();
  v15 = sub_1D8B15940();

  [v14 captureUserAction:v13 target:144 value:v15];
}

void _s22VisualIntelligenceCore21MapsAnalyticsReporterV06tappedD11ResultsPill7resultsySayAA9GeoLookupC0kL6ResultVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = a1 + 64;
    v4 = v1;
    do
    {
      v5 = *(v3 - 32);

      v6 = v5;

      [v6 muid];
      v7 = sub_1D8B16B50();
      v9 = v8;

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3F54((v10 > 1), v11 + 1, 1);
      }

      v3 += 40;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  if (v1 == 1)
  {
    v13 = 488;
  }

  else
  {
    v13 = 490;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D88F0E40();
  sub_1D8B15810();

  v14 = objc_opt_self();
  v15 = sub_1D8B15940();

  [v14 captureUserAction:v13 target:144 value:v15];
}

void _s22VisualIntelligenceCore21MapsAnalyticsReporterV27displayedDisambiguationList7resultsySayAA23GeoLookupResultBusinessVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 112);
      v19[6] = *(v4 + 96);
      v19[7] = v5;
      v20 = *(v4 + 128);
      v6 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v6;
      v7 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v19[3] = v7;
      v8 = *(v4 + 80);
      v19[4] = *(v4 + 64);
      v19[5] = v8;
      v9 = *(&v19[0] + 1);
      sub_1D8883B74(v19, v18);
      v18[0] = [v9 muid];
      v10 = sub_1D8B16B50();
      v12 = v11;
      sub_1D8883BD0(v19);
      v21 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v4 += 136;
      --v1;
    }

    while (v1);
  }

  *&v19[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D88F0E40();
  sub_1D8B15810();

  v16 = objc_opt_self();
  v17 = sub_1D8B15940();

  [v16 captureUserAction:21 target:143 value:v17];
}

uint64_t dispatch thunk of OutputStreamProviding.makeOutputStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OutputStreamProviding.makeOutputStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8864FBC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D89BA344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290, &qword_1D8B2EB20);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128, &qword_1D8B231D0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BA448, v1, 0);
}

uint64_t sub_1D89BA448()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy, v4);
  sub_1D88447A0(v3);
  v7 = sub_1D89BAE20(&qword_1EE0E7928, type metadata accessor for ActionPredictor, &protocol conformance descriptor for ActionPredictor);
  sub_1D88ADC7C(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA64290, &qword_1D8B2EB20);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D89BA598(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290, &qword_1D8B2EB20);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BA638, v2, 0);
}

uint64_t sub_1D89BA638()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D88447A0(v1);
  v5 = sub_1D89BAE20(&qword_1EE0E7928, type metadata accessor for ActionPredictor, &protocol conformance descriptor for ActionPredictor);
  sub_1D88ADC7C(v3, v1, v2, v5, v4);
  sub_1D87A14E4(v1, &qword_1ECA64290, &qword_1D8B2EB20);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D89BA730(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D889E050, v1, 0);
}

uint64_t sub_1D89BA750(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BA774, v2, 0);
}

uint64_t sub_1D89BA774()
{
  sub_1D889559C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D89BA7D8()
{
  swift_beginAccess();
  sub_1D8B13240();
  sub_1D8B15F00();
  sub_1D89BAE20(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B15770();

  swift_getWitnessTable();
  sub_1D8B15C10();

  return v0;
}

uint64_t sub_1D89BA914()
{
  sub_1D89BA7D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D89BA960(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810, &qword_1D8B3BE70);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BAA64, v1, 0);
}

uint64_t sub_1D89BAA64()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v4);
  sub_1D8AA7C74(v3);
  v7 = sub_1D89BAE20(&qword_1EE0E7FA8, type metadata accessor for BundleSelector, &protocol conformance descriptor for BundleSelector);
  sub_1D88AE494(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA640E8, &qword_1D8B23190);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D89BABA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BAC48, v2, 0);
}

uint64_t sub_1D89BAC48(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D8AA7C74(v2);
  v6 = sub_1D89BAE20(&qword_1EE0E7FA8, type metadata accessor for BundleSelector, &protocol conformance descriptor for BundleSelector);
  sub_1D88AE494(v4, v2, v3, v6, v5);
  sub_1D87A14E4(v2, &qword_1ECA640E8, &qword_1D8B23190);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1D89BAD34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D889DFC4, v1, 0);
}

uint64_t sub_1D89BAD54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BAD78, v2, 0);
}

uint64_t sub_1D89BAD78()
{
  sub_1D8895C10(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BAE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OverlaySupportData.crDocument.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

__n128 OverlaySupportData.frameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t _s22VisualIntelligenceCore18OverlaySupportDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v4;
  v24 = *(a1 + 80);
  v5 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v5;
  v6 = *(a1 + 96);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v11;
  v12 = *(a2 + 48);
  v26 = v10;
  v27 = v12;
  v25 = v9;
  v13 = *(a2 + 96);
  if ((sub_1D88E3604(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    sub_1D89BB0DC();
    v14 = v8;
    v15 = v3;
    v16 = sub_1D8B16400();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  v18[2] = v27;
  v18[3] = v28;
  v18[4] = v29;
  v18[0] = v25;
  v18[1] = v26;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v19, v18))
  {
    return 0;
  }

  return sub_1D88E3618(v6, v13);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D89BB02C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D89BB074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D89BB0DC()
{
  result = qword_1EE0E36E8;
  if (!qword_1EE0E36E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36E8);
  }

  return result;
}

uint64_t sub_1D89BB128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001D8B46410 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001D8B46430 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001D8B46450 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001D8B46470 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0x7265706F2E6D6F63 && a2 == 0xEC00000078672E61 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001D8B46490 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000019 && 0x80000001D8B464B0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001D8B464D0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD00000000000001DLL && 0x80000001D8B464F0 == a2)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D89BB3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D89BB538;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D89BB538(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_1D89BB634(uint64_t a1)
{
  result = sub_1D8B151E0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D89BB6F8()
{
  swift_unknownObjectRelease();
  v1 = qword_1ECA66BD0;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D89BB778()
{
  sub_1D89BB6F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D89BB7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore24RateLimitingWrapperErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D89BB844(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D89BB8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D89BB8F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1D89BB928(uint64_t a1)
{
  sub_1D89BBC8C();
  if (v1 <= 0x3F)
  {
    sub_1D89BBCEC();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D89BB9E4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void sub_1D89BBB08(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 254;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

void sub_1D89BBC8C()
{
  if (!qword_1ECA66D70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA66D70);
    }
  }
}

uint64_t sub_1D89BBCEC()
{
  result = qword_1ECA66D78;
  if (!qword_1ECA66D78)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1ECA66D78);
  }

  return result;
}

uint64_t sub_1D89BBD1C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DB0, &qword_1D8B308D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89BDE04();
  sub_1D8B16DD0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D8913248(&qword_1ECA65470, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D8B16AE0();
  return (*(v5 + 8))(v7, v4);
}

void sub_1D89BBEB8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D8B46640 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D89BBF4C(uint64_t a1)
{
  v2 = sub_1D89BDE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89BBF88(uint64_t a1)
{
  v2 = sub_1D89BDE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D89BBFC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D89BD824(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D89BC00C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](v1, v2);
  return 0xD000000000000011;
}

uint64_t sub_1D89BC088(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BC0A8, 0, 0);
}

uint64_t sub_1D89BC0A8()
{
  v0[3].i64[1] = MEMORY[0x1E69E7CC0];
  v4 = v0[4];
  sub_1D8B13640();
  v1 = swift_task_alloc();
  v0[5].i64[0] = v1;
  v1[1] = vextq_s8(v4, v4, 8uLL);
  v1[2].i64[0] = &v0[3].i64[1];
  v2 = swift_task_alloc();
  v0[5].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1D89BC19C;

  return sub_1D89BCCAC(v0[1].i64, &unk_1D8B30770, v1);
}

uint64_t sub_1D89BC19C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D89BC420;
  }

  else
  {
    v2 = sub_1D89BC2CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89BC2CC()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v3 = v14;
    v4 = v1 + 40;
    do
    {
      v5 = sub_1D8B159F0();
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1D87F3F54((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[1];

  return v12(v3);
}

uint64_t sub_1D89BC420()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89BC48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D89BC4B0, 0, 0);
}

uint64_t sub_1D89BC4B0()
{
  v1 = sub_1D89BD9CC(v0[3], v0[4]);
  v3 = v2;
  sub_1D8B12B90();
  swift_allocObject();
  sub_1D8B12B80();
  sub_1D89BDD8C();
  sub_1D8B12B70();
  v5 = v0[5];
  sub_1D87A1598(v1, v3);

  *v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D89BC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D8B13000();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1D8B136D0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66D90, &qword_1D8B30790);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BC750, 0, 0);
}

uint64_t sub_1D89BC750()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1D8B136B0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = sub_1D8B13650();
  MEMORY[0x1DA71CBA0](v5);
  (*(v3 + 8))(v1, v2);
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1D89BC930;
  v7 = *(v0 + 64);

  return v9(v7);
}

uint64_t sub_1D89BC930()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D89BCB3C;
  }

  else
  {
    v5 = sub_1D89BCAA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D89BCAA0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BCB3C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89BCBFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D89BC48C(a1, v4, v5, v6);
}

uint64_t sub_1D89BCCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1D8B13660();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89BCD88, 0, 0);
}

uint64_t sub_1D89BCD88()
{
  v1 = v0[3];
  sub_1D8B136A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498, &unk_1D8B1EA80);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_1D8B1AB90;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v2 + 32) = sub_1D8B13670();
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D89BCE9C;

  return MEMORY[0x1EEE1EF98](v2);
}

uint64_t sub_1D89BCE9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1D89BD248;
  }

  else
  {

    v4 = sub_1D89BCFB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D89BCFB8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v7 = (*MEMORY[0x1E69B23E0] + MEMORY[0x1E69B23E0]);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1D89BD0A0;

  return v7(&unk_1D8B30788, v3);
}

uint64_t sub_1D89BD0A0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D89BD484;
  }

  else
  {

    v2 = sub_1D89BD1BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89BD1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89BD248()
{

  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v6 + 32))(v4, v3, v7);
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69B2140])
    {
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      (*(v10 + 96))(v9, *(v0 + 48));
      v11 = *v9;
      v12 = v9[1];
      sub_1D89BD724();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      swift_willThrow();
      (*(v10 + 8))(*(v0 + 72), *(v0 + 48));
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(*(v0 + 56) + 8);
      v16(*(v0 + 64), v15);
      sub_1D89BD6CC();
      swift_allocError();
      v8(v17, v14, v15);
      swift_willThrow();
      v16(*(v0 + 72), *(v0 + 48));
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D89BD484()
{

  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v6 + 32))(v4, v3, v7);
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69B2140])
    {
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      (*(v10 + 96))(v9, *(v0 + 48));
      v11 = *v9;
      v12 = v9[1];
      sub_1D89BD724();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      swift_willThrow();
      (*(v10 + 8))(*(v0 + 72), *(v0 + 48));
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(*(v0 + 56) + 8);
      v16(*(v0 + 64), v15);
      sub_1D89BD6CC();
      swift_allocError();
      v8(v17, v14, v15);
      swift_willThrow();
      v16(*(v0 + 72), *(v0 + 48));
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

unint64_t sub_1D89BD6CC()
{
  result = qword_1ECA66D80;
  if (!qword_1ECA66D80)
  {
    sub_1D8B13660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D80);
  }

  return result;
}

unint64_t sub_1D89BD724()
{
  result = qword_1ECA66D88;
  if (!qword_1ECA66D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D88);
  }

  return result;
}

uint64_t sub_1D89BD778()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D886553C;

  return sub_1D89BC5C8(v2, v3, v5, v4);
}

void *sub_1D89BD824(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DA0, &unk_1D8B308C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89BDE04();
  sub_1D8B16DB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    sub_1D8913248(&qword_1ECA65490, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1D89BD9CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B12F10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D8B13000();
  v29 = *(v27 - 8);
  v7 = MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  strcpy(v28, "locale/");
  v28[1] = 0xE700000000000000;
  v11 = sub_1D8B15970();
  MEMORY[0x1DA71EFA0](v11);

  MEMORY[0x1DA71EFA0](47, 0xE100000000000000);
  MEMORY[0x1DA71EFA0](0x617461646174656DLL, 0xED00006E6F736A2ELL);
  v12 = *(v4 + 104);
  v23 = *MEMORY[0x1E6968F70];
  v22 = v12;
  v12(v6);
  sub_1D87C12C0();
  v25 = a1;
  sub_1D8B12FE0();
  v13 = *(v4 + 8);
  v13(v6, v3);

  v14 = v26;
  v15 = sub_1D8B13680();
  if (v14)
  {
    v16 = *(v29 + 8);
    v17 = v10;
    v18 = v27;
    v29 += 8;
    v26 = v16;
    v16(v17, v27);
    strcpy(v28, "metadata.json");
    HIWORD(v28[1]) = -4864;
    v22(v6, v23, v3);
    v19 = v24;
    sub_1D8B12FE0();
    v13(v6, v3);
    v20 = sub_1D8B13680();
    v26(v19, v18);
  }

  else
  {
    v20 = v15;
    (*(v29 + 8))(v10, v27);
  }

  return v20;
}

unint64_t sub_1D89BDD8C()
{
  result = qword_1ECA66D98;
  if (!qword_1ECA66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D98);
  }

  return result;
}

unint64_t sub_1D89BDE04()
{
  result = qword_1ECA66DA8;
  if (!qword_1ECA66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DA8);
  }

  return result;
}

unint64_t sub_1D89BDE6C()
{
  result = qword_1ECA66DB8;
  if (!qword_1ECA66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DB8);
  }

  return result;
}

unint64_t sub_1D89BDEC4()
{
  result = qword_1ECA66DC0;
  if (!qword_1ECA66DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DC0);
  }

  return result;
}

unint64_t sub_1D89BDF1C()
{
  result = qword_1ECA66DC8;
  if (!qword_1ECA66DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DC8);
  }

  return result;
}

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(*(a1 + 16) + 16);
  v5 = type metadata accessor for SendableTransfer(0, v9, a2, a3);
  return sub_1D89BE1E4(sub_1D89BE1C4, &v8, MEMORY[0x1E69E73E0], v5, v6, a4);
}

uint64_t sub_1D89BE0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_1D89BE1E4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t SendableTransfer<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D89BE520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D8B16D20();
  SendableTransfer<A>.hash(into:)(v6, a2, v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D89BE5BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D89BE62C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

char *sub_1D89BE76C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SiriStreamingVoicePlayer.Metadata.title.getter()
{
  v1 = *v0;

  return v1;
}

void SiriStreamingVoicePlayer.Metadata.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SiriStreamingVoicePlayer.Metadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SiriStreamingVoicePlayer.Metadata.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriStreamingVoicePlayer.Metadata.localeIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void SiriStreamingVoicePlayer.Metadata.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t SiriStreamingVoicePlayer.Metadata.init(title:text:localeIdentifier:image:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D89BEB74()
{
  type metadata accessor for SiriStreamingVoicePlayer(0);
  v0 = swift_allocObject();
  result = sub_1D89C27A8();
  qword_1ECA66DD0 = v0;
  return result;
}

double static SiriStreamingVoicePlayer.shared.getter()
{
  if (qword_1ECA62240 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D89BEC10@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  result = swift_beginAccess();
  *a3 = *(v4 + 16);
  return result;
}

uint64_t sub_1D89BECF4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  return *(v2 + 16);
}

uint64_t type metadata accessor for SiriStreamingVoicePlayer(uint64_t a1)
{
  result = qword_1ECA66E30;
  if (!qword_1ECA66E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D89BEDF4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }
}

uint64_t (*sub_1D89BEF30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D8B13540();

  v4[7] = sub_1D898CA88(v4);
  return sub_1D89BF068;
}

void sub_1D89BF068(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D8B13530();

  free(v1);
}

uint64_t sub_1D89BF0FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return *(v2 + 17);
}

void sub_1D89BF19C(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *a3 = *(v4 + 17);
}

void sub_1D89BF244(char a1, uint64_t a2)
{
  if (*(v2 + 17) == (a1 & 1))
  {
    *(v2 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }
}

uint64_t sub_1D89BF354(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D8B13520();

    v3 = *(v2 + 17) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1D89BF464(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D89BF508@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *a3 = *(v4 + 32);
  return swift_unknownObjectRetain();
}

double sub_1D89BF5B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13510();

  return result;
}

id sub_1D89BF680(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v3 = *(v2 + 40);

  return v3;
}

id sub_1D89BF730@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v5 = *(v4 + 40);
  *a3 = v5;

  return v5;
}

void sub_1D89BF7E8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_1D881F764(0, &unk_1ECA66E48, 0x1E69B0A88);
  v5 = v4;
  v6 = sub_1D8B16400();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }
}

void sub_1D89BF954(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v4 = v2[7];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  v8 = v2[11];
  v9 = v2[12];
  v10 = v2[13];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_1D89C2F2C(v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D89BFA18(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v5 = v4[7];
  v6 = v4[8];
  v7 = v4[9];
  v8 = v4[10];
  v9 = v4[11];
  v10 = v4[12];
  v11 = v4[13];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v10;
  a3[6] = v11;
  sub_1D89C2F2C(v5, v6, v7, v8, v9, v10, v11);
}

double sub_1D89BFADC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13510();

  return result;
}

void sub_1D89BFBC0(void *a1, uint64_t a2)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = *(a2 + 16);
  *(a1 + 7) = *a2;
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  *(a1 + 9) = v4;
  *(a1 + 11) = *(a2 + 32);
  a1[13] = *(a2 + 48);
  sub_1D89C3088(a2, v10);
  sub_1D89C2A28(v2, v3, v5, v6, v7, v8, v9);
}

uint64_t sub_1D89BFC60(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v3 = *(v2 + 112);

  return v3;
}

double sub_1D89BFD10@<D0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v5 = *(v4 + 120);
  *a3 = *(v4 + 112);
  a3[1] = v5;

  return result;
}

double sub_1D89BFDBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112) == a1 && *(v2 + 120) == a2;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {
    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }

  return result;
}

void sub_1D89BFF1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v9 = v2;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  if (*(v2 + 16))
  {
    swift_getKeyPath();
    sub_1D8B13520();

    [*(v2 + 40) sendCommand:1 options:0 completion:{0, v2, v2}];
  }

  else
  {
    v4 = *(v2 + 24);
    swift_getKeyPath();
    sub_1D8B13520();

    v5 = sub_1D8B15940();

    v6 = [v4 getPlaybackStatusForIdentifier_];

    if (v6 == 3)
    {
      sub_1D89C10DC(v7, v8);
    }

    else
    {
      sub_1D89C0DB8();
    }
  }
}

void sub_1D89C00BC(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v45 = *a1;
  v46 = v7;
  v47 = a1[2];
  v48 = *(a1 + 6);
  v9 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 40);
  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 1;
  }

  else
  {
    v40 = *(a1 + 40);
    v38 = v12;
    v39 = v10;
    KeyPath = swift_getKeyPath();
    v37[1] = v37;
    MEMORY[0x1EEE9AC00](KeyPath);
    v37[-2] = v2;
    LOBYTE(v37[-1]) = 1;
    v49[0] = v2;
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13510();

    v12 = v38;
    v10 = v39;
    v13 = v40;
  }

  v49[0] = v9;
  v49[1] = v8;
  v49[2] = v11;
  v49[3] = v10;
  v49[4] = v12;
  v50 = v13;
  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  v37[-2] = v2;
  v37[-1] = v49;
  v43[0] = v2;
  sub_1D89C2880(&v45, v44);
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13510();
  sub_1D89C28B8(&v45);

  sub_1D8B13230();
  v16 = sub_1D8B131E0();
  v18 = v17;
  (*(v41 + 8))(v6, v42);
  sub_1D89BFDBC(v16, v18);
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8B151E0();
  __swift_project_value_buffer(v19, qword_1ECA66AC8);
  sub_1D89C2880(&v45, v44);
  v20 = sub_1D8B151C0();
  v21 = sub_1D8B16200();
  sub_1D89C28B8(&v45);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44[0] = v23;
    *v22 = 136315394;
    v24 = v46;

    v25 = sub_1D89AC714(v24, *(&v24 + 1), v44);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = v47;

    v27 = sub_1D89AC714(v26, *(&v26 + 1), v44);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1D8783000, v20, v21, "Starting to play Siri audio for Read Aloud: %s with locale identifier: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v23, -1, -1);
    MEMORY[0x1DA721330](v22, -1, -1);
  }

  swift_getKeyPath();
  v44[0] = v2;
  sub_1D8B13520();

  v28 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DE8, &qword_1D8B30B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  v44[0] = *MEMORY[0x1E69B1168];
  v30 = v44[0];
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DF0, qword_1D8B30BA0);
  sub_1D89C28E8();
  sub_1D8B166A0();
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = 0;
  sub_1D893CDD0(inited);
  swift_setDeallocating();
  sub_1D89C299C(inited + 32);
  v32 = sub_1D8B15710();

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 24) = v45;
  *(v34 + 16) = v33;
  *(v34 + 40) = v35;
  *(v34 + 56) = v47;
  *(v34 + 72) = v48;
  v43[4] = sub_1D89C2A04;
  v43[5] = v34;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  v43[2] = sub_1D89C0D50;
  v43[3] = &block_descriptor_7;
  v36 = _Block_copy(v43);
  sub_1D89C2880(&v45, v44);

  [v31 sendCommand:3 options:v32 completion:v36];
  _Block_release(v36);
}

uint64_t sub_1D89C074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8B155B0();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8B155E0();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881F764(0, &qword_1EE0E3730, 0x1E69E9610);
  v11 = sub_1D8B162C0();
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 24) = *a3;
  *(v12 + 16) = a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(a3 + 32);
  *(v12 + 72) = *(a3 + 48);
  aBlock[4] = sub_1D89C2FE8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_77;
  v14 = _Block_copy(aBlock);

  sub_1D89C2880(a3, v19);

  sub_1D8B155D0();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1D89C2E54(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

double sub_1D89C0A5C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 24);
    v7 = sub_1D8B15940();
    v8 = sub_1D8B15940();
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13520();

    v9 = sub_1D8B15940();

    v10 = sub_1D8B15940();
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    [v6 readText:v7 textBody:v8 textIdentifier:v9 textLocale:v10 textLeadingImage:v11 activationSource:3];

    swift_beginAccess();
    if (*(v5 + 16) == 1)
    {
      *(v5 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D8B13510();
    }

    sub_1D89C18A8();
    if (*(v5 + 17))
    {
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      sub_1D8B13510();
    }

    else
    {
      *(v5 + 17) = 0;
    }
  }

  return result;
}

void sub_1D89C0D50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D89C0DB8()
{
  v1 = v0;
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1ECA66AC8);
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8783000, v3, v4, "Trying to start media playback from the beginning", v5, 2u);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v6 = v1[8];
  if (v6)
  {
    v8 = v1[12];
    v7 = v1[13];
    v10 = v1[10];
    v9 = v1[11];
    v11 = v1[9];
    *&v17 = v1[7];
    v12 = v17;
    *(&v17 + 1) = v6;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v7;

    v13 = v7;
    sub_1D89C00BC(&v17);
    sub_1D89C2A28(v12, v6, v11, v10, v9, v8, v7);
  }

  else
  {
    v14 = sub_1D8B151C0();
    v15 = sub_1D8B16200();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8783000, v14, v15, "There's no metadata to resume.", v16, 2u);
      MEMORY[0x1DA721330](v16, -1, -1);
    }
  }
}

void sub_1D89C1018(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  [*(v2 + 40) sendCommand:a1 options:0 completion:0];
  sub_1D89C18A8();
}

void sub_1D89C10DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (!*(v2 + 64))
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D8B151E0();
    __swift_project_value_buffer(v7, qword_1ECA66AC8);
    v8 = sub_1D8B151C0();
    v9 = sub_1D8B16200();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "No metadata available to resume.";
    goto LABEL_12;
  }

  v4 = *(v2 + 24);
  swift_getKeyPath();
  sub_1D8B13520();

  v5 = sub_1D8B15940();

  v6 = [v4 getPlaybackStatusForIdentifier_];

  if (v6 == 3)
  {
    swift_getKeyPath();
    sub_1D8B13520();

    [*(v3 + 40) sendCommand:0 options:0 completion:0];
    sub_1D89C18A8();
    return;
  }

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D8B151E0();
  __swift_project_value_buffer(v12, qword_1ECA66AC8);
  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Playback status is not paused. Restarting from beginning.";
LABEL_12:
    _os_log_impl(&dword_1D8783000, v8, v9, v11, v10, 2u);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

LABEL_13:

  sub_1D89C0DB8();
}

id sub_1D89C13AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return [*(v2 + 40) sendCommand:1 options:0 completion:0];
}

void sub_1D89C1464(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v3 = *(v2 + 120);
  v4 = *(v2 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    sub_1D89C15D8();
  }

  else
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D8B151E0();
    __swift_project_value_buffer(v5, qword_1ECA66AC8);
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16200();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D8783000, v6, v7, "stopIfNeeded was called but we haven't played anything before, no-op'ing", v8, 2u);
      MEMORY[0x1DA721330](v8, -1, -1);
    }
  }
}

void sub_1D89C15D8()
{
  v1 = v0;
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1ECA66AC8);

  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    sub_1D8B13520();

    v7 = *(v0 + 112);
    v8 = *(v1 + 120);

    v9 = sub_1D89AC714(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D8783000, v3, v4, "Stopping Siri audio for Read Aloud for identifier: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  v10 = *(v1 + 24);
  swift_getKeyPath();
  v14 = v1;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v11 = sub_1D8B15940();

  [v10 endMediaSessionForIdentifier_];

  swift_getKeyPath();
  v14 = v1;
  sub_1D8B13520();

  v12 = [*(v1 + 40) sendCommand:3 options:0 completion:0];
  sub_1D89C22C4(v12, v13);
}

void sub_1D89C18A8()
{
  v1 = v0;
  v2 = sub_1D8B155B0();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D8B155E0();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D8B155A0();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B15600();
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B16310();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  aBlock[0] = v0;
  v14 = sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (!*(v0 + 32))
  {
    v36 = v12;
    v37 = v9;
    v38 = v7;
    v15 = v41;
    v39 = v14;
    v40 = v13;
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D8B151E0();
    __swift_project_value_buffer(v16, qword_1ECA66AC8);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16200();
    v19 = v1;
    v20 = v15;
    v21 = v6;
    v22 = v10;
    if (os_log_type_enabled(v17, v18))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D8783000, v17, v18, "Starting to observe Siri audio for Read Aloud", v23, 2u);
      MEMORY[0x1DA721330](v23, -1, -1);
    }

    v35 = sub_1D881F764(0, &unk_1ECA66E00, 0x1E69E9630);
    sub_1D881F764(0, &qword_1EE0E3730, 0x1E69E9610);
    v24 = sub_1D8B162C0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D89C2E54(&qword_1ECA66E10, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E18, &qword_1D8B30BE0);
    sub_1D89C2E9C(&unk_1ECA66E20, &qword_1ECA66E18, &qword_1D8B30BE0);
    v25 = v36;
    sub_1D8B16570();
    v26 = sub_1D8B16320();

    (*(v42 + 8))(v25, v22);
    ObjectType = swift_getObjectType();
    v28 = v37;
    sub_1D8B155F0();
    *v21 = 0;
    v29 = v44;
    (*(v44 + 104))(v21, *MEMORY[0x1E69E7F28], v20);
    MEMORY[0x1DA71F8A0](v28, v21, ObjectType, 0.35);
    (*(v29 + 8))(v21, v20);
    (*(v43 + 8))(v28, v38);
    v30 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D89C2A8C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D89B1AA0;
    aBlock[3] = &block_descriptor_29;
    v31 = _Block_copy(aBlock);

    v32 = v45;
    sub_1D8B155D0();
    v33 = v47;
    sub_1D89C21EC();
    sub_1D8B16330();
    _Block_release(v31);
    (*(v49 + 8))(v33, v50);
    (*(v46 + 8))(v32, v48);

    sub_1D8B16350();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v35 - 2) = v19;
    *(&v35 - 1) = v26;
    aBlock[0] = v19;
    sub_1D8B13510();

    swift_unknownObjectRelease();
  }
}

double sub_1D89C1FF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 24);
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
    v5 = v4;
    sub_1D8B13520();

    v6 = sub_1D8B15940();

    v7 = [v5 getPlaybackStatusForIdentifier_];

    swift_beginAccess();
    if (((v7 == 2) ^ *(v3 + 16)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D8B13510();
    }

    else
    {
      *(v3 + 16) = v7 == 2;
    }
  }

  return result;
}

uint64_t sub_1D89C21EC()
{
  sub_1D8B155B0();
  sub_1D89C2E54(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  return sub_1D8B16570();
}

void sub_1D89C22C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer, &protocol conformance descriptor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (*(v2 + 32))
  {
    v4 = qword_1ECA621C8;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_1D8B151E0();
    __swift_project_value_buffer(v5, qword_1ECA66AC8);
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16200();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D8783000, v6, v7, "Stopping progress updates", v8, 2u);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    swift_getObjectType();
    sub_1D8B16340();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8B13510();

    swift_beginAccess();
    if (*(v3 + 16))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v10);
      sub_1D8B13510();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      *(v3 + 16) = 0;
    }
  }

  else
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8B151E0();
    __swift_project_value_buffer(v11, qword_1ECA66AC8);
    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16200();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8783000, v12, v13, "Update timer is already empty", v14, 2u);
      MEMORY[0x1DA721330](v14, -1, -1);
    }
  }
}

uint64_t SiriStreamingVoicePlayer.deinit()
{
  swift_unknownObjectRelease();

  sub_1D89C2A28(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriStreamingVoicePlayer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_1D89C2A28(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D89C27A8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E69D27D0]) init];
  *(v0 + 32) = 0;
  *(v0 + 40) = [objc_opt_self() localRouteController];
  *(v0 + 48) = [objc_opt_self() localDestination];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0xE000000000000000;
  sub_1D8B13550();
  return v0;
}

unint64_t sub_1D89C28E8()
{
  result = qword_1ECA66DF8;
  if (!qword_1ECA66DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66DF0, qword_1D8B30BA0);
    sub_1D89C2E54(&qword_1EE0E37C0, type metadata accessor for CFString, &unk_1D8B19E74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DF8);
  }

  return result;
}

uint64_t sub_1D89C299C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BC0, &qword_1D8B2BF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D89C2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1D89C2AB4(uint64_t a1, __n128 a2)
{
  result = sub_1D8B13560();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D89C2E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_1D89C2E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D89C2E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D89C2EF0()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1D89C2F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {

    v7 = a7;
  }
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D89C2FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void sub_1D89C3048()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 112) = v0[3];
  *(v1 + 120) = v2;
}

uint64_t sub_1D89C3088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E58, &qword_1D8B30D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D89C3168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D893EC3C(&unk_1F5427AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E60, &unk_1D8B30D68);
  v7 = a1;
  swift_arrayDestroy();
  if (sub_1D89A4644(a2, a3, a1))
  {
LABEL_48:

    return;
  }

  v70 = a3;
  v8 = a1 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v68 = 0;
  v69 = v7;
  while (v11)
  {
    v14 = v11;
LABEL_12:
    v11 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v17 = (*(v7 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_1D87EF838(v18, v19);
      v22 = v21;

      if (v22)
      {
        v24 = *(*(v6 + 56) + 8 * v20);
        v72 = a2;
        v73 = v70;
        MEMORY[0x1EEE9AC00](v23);
        v63[2] = &v72;

        v25 = v68;
        v26 = sub_1D8AD0444(sub_1D89475B0, v63, v24);
        v68 = v25;
        v7 = v69;

        if (v26)
        {

          return;
        }
      }
    }
  }

  v15 = a2;
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v16 >= v12)
    {
      break;
    }

    v14 = *(v8 + 8 * v16);
    ++v13;
    if (v14)
    {
      v13 = v16;
      goto LABEL_12;
    }
  }

  v27 = sub_1D87C2E84(v6);
  v28 = v70;
  v72 = a2;
  v73 = v70;
  v66 = sub_1D87C12C0();
  v29 = sub_1D8B16500();
  v30 = v29[2];
  v67 = v27;
  if (v30)
  {
    v31 = v29[4];
    v32 = v29[5];
    v33 = v29[6];
    v34 = v29[7];
    swift_bridgeObjectRetain_n();

    v15 = MEMORY[0x1DA71EF10](v31, v32, v33, v34);
    v28 = v35;
    v27 = v67;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v36 = 1 << *(v7 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v7 + 56);
  v39 = (v36 + 63) >> 6;
  v71 = v27 + 56;

  v40 = 0;
  v64 = v15;
  v65 = v39;
  v70 = v28;
  while (v38)
  {
LABEL_27:
    v42 = (*(v69 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v38)))));
    v44 = *v42;
    v43 = v42[1];
    v72 = *v42;
    v73 = v43;

    v45 = sub_1D8B16500();
    if (v45[2])
    {
      v46 = v45[4];
      v47 = v45[5];
      v49 = v45[6];
      v48 = v45[7];
      swift_bridgeObjectRetain_n();

      v50 = v49;
      v15 = v64;
      v51 = MEMORY[0x1DA71EF10](v46, v47, v50, v48);
      v53 = v52;
      v28 = v70;
      swift_bridgeObjectRelease_n();
    }

    else
    {

      v51 = v44;
      v53 = v43;
    }

    if (v51 == v15 && v53 == v28)
    {
    }

    else
    {
      v55 = sub_1D8B16BA0();

      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v56 = v67;
    if (!*(v67 + 16) || (sub_1D8B16D20(), sub_1D8B15A60(), v57 = sub_1D8B16D80(), v58 = -1 << *(v56 + 32), v59 = v57 & ~v58, ((*(v71 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0))
    {
LABEL_47:

      goto LABEL_48;
    }

    v60 = ~v58;
    while (1)
    {
      v61 = (*(v56 + 48) + 16 * v59);
      v62 = *v61 == v44 && v61[1] == v43;
      if (v62 || (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v59 = (v59 + 1) & v60;
      if (((*(v71 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

LABEL_35:
    v39 = v65;
    v38 &= v38 - 1;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      return;
    }

    v38 = *(v8 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_27;
    }
  }

LABEL_51:
  __break(1u);
}

void *sub_1D89C36A0()
{
  type metadata accessor for SiriVoiceAvailabilityUtility();
  swift_allocObject();
  result = sub_1D89C3738();
  off_1ECA66E68 = result;
  return result;
}

double static SiriVoiceAvailabilityUtility.shared.getter()
{
  if (qword_1ECA62248 != -1)
  {
    swift_once();
  }

  return result;
}

void *sub_1D89C3738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = v15 - v3;
  v16 = sub_1D8B162B0();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v0[2] = 0;
  v0[3] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v0[4] = 0xE000000000000000;
  v0[5] = v9;
  v10 = sub_1D87C1314();
  v15[1] = "eLanguageCodes";
  v15[2] = v10;
  sub_1D8B155D0();
  v18 = v9;
  sub_1D89C581C(&unk_1EE0E3740, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80, &qword_1D8B30E30);
  sub_1D89C2E9C(&qword_1EE0E3920, &qword_1ECA66E80, &qword_1D8B30E30);
  sub_1D8B16570();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v16);
  v0[6] = sub_1D8B162F0();
  v11 = sub_1D8B15EA0();
  v12 = v17;
  (*(*(v11 - 8) + 56))(v17, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  sub_1D8891CA0(0, 0, v12, &unk_1D8B30E40, v13);

  return v1;
}

uint64_t sub_1D89C3A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D89C3B14;

  return sub_1D89C3EB4();
}

uint64_t sub_1D89C3B14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;

  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1D89C3C60;

  return sub_1D89C43F0();
}

uint64_t sub_1D89C3C60(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

double sub_1D89C3DC0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_1D89C3DE0@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t sub_1D89C3E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D8B162D0();
  return v1;
}

double sub_1D89C3E74@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 40);

  return result;
}

double sub_1D89C3E94@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

uint64_t sub_1D89C3EB4()
{
  v1[9] = v0;
  v2 = sub_1D8B155B0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_1D8B155E0();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89C3FD0, 0, 0);
}

uint64_t sub_1D89C3FD0()
{
  v29 = v0;
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 outputVoice];

  if (v2 && (v3 = [v2 languageCode], v2, v3))
  {
    v4 = sub_1D8B15970();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B151E0();
  __swift_project_value_buffer(v7, qword_1ECA66AC8);

  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v12 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      v13 = v4;
      v14 = v6;
    }

    else
    {
      v14 = 0x80000001D8B467A0;
      v13 = 0xD000000000000014;
    }

    v15 = sub_1D89AC714(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8783000, v8, v9, "The preferred Siri language is %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA721330](v11, -1, -1);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  v16 = v0[15];
  v17 = v0[12];
  v26 = v0[14];
  v27 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
  v25 = v0[11];
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v4;
  v20[4] = v6;
  v0[6] = sub_1D89C53D4;
  v0[7] = v20;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D89B1AA0;
  v0[5] = &block_descriptor_8;
  v24 = v6;
  v21 = _Block_copy(v0 + 2);

  sub_1D8B155D0();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v16, v17, v21);
  _Block_release(v21);
  (*(v25 + 8))(v17, v18);
  (*(v26 + 8))(v16, v27);

  v22 = v0[1];

  return v22(v4, v24);
}

uint64_t sub_1D89C4410()
{
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D8B151E0();
  __swift_project_value_buffer(v1, qword_1ECA66AC8);
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B16200();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8783000, v2, v3, "Checking for available Siri voice languages…", v4, 2u);
    MEMORY[0x1DA721330](v4, -1, -1);
  }

  v5 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E70, &qword_1D8B30D90);
  sub_1D8B162D0();
  v6 = v0[2];
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  *v8 = v0;
  v8[1] = sub_1D89C461C;

  return MEMORY[0x1EEE6DDE0](v0 + 3, 0, 0, 0xD000000000000016, 0x80000001D8B467C0, sub_1D89C544C, v7, v9);
}

uint64_t sub_1D89C461C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89C4734, 0, 0);
}

uint64_t sub_1D89C4734()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1D89C4798@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = [objc_allocWithZone(sub_1D8B13DA0()) init];
    v6 = *(a1 + 16);
    *(a1 + 16) = v5;

    v3 = *(a1 + 16);
  }

  *a2 = v3;
  return v3;
}

double sub_1D89C4804(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = sub_1D8B155B0();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B155E0();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v22 = *(a2 + 48);
  (*(v12 + 16))(&v22 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1D89C56F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  sub_1D8B155D0();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  v20 = v23;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v26 + 8))(v7, v20);
  (*(v24 + 8))(v10, v25);

  return result;
}

void sub_1D89C4BB0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  if (a1)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(v8, a2, v5);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    (*(v6 + 32))(v11 + v10, v8, v5);
    v12 = a1;

    sub_1D8B13D90();
  }

  else
  {
    v13[1] = MEMORY[0x1E69E7CC0];
    sub_1D8B15E20();
  }
}

void sub_1D89C4D6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8B155B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B155E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20);
    sub_1D8B15E20();
    return;
  }

  v40 = v12;
  v41 = v10;
  v42 = v8;
  v45 = Strong;
  if (a1 >> 62)
  {
    v14 = sub_1D8B16610();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v9;
  v15 = MEMORY[0x1E69E7CC0];
  v46 = a3;
  v44 = v6;
  if (v14)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v39 = v5;
    v16 = 0;
    v17 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1DA71FC20](v16, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_1D8B13DB0();
      v22 = v21;

      aBlock[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D87F3F54((v23 > 1), v24 + 1, 1);
        v17 = aBlock[0];
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v14 != v16);
    v5 = v39;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v26 = v45;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v17;
  aBlock[4] = sub_1D89C5814;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_32;
  v28 = _Block_copy(aBlock);

  v29 = v40;
  sub_1D8B155D0();
  v47 = v15;
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  v30 = v42;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v29, v30, v28);
  _Block_release(v28);
  (*(v44 + 8))(v30, v5);
  (*(v41 + 8))(v29, v43);

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D8B151E0();
  __swift_project_value_buffer(v31, qword_1ECA66AC8);

  v32 = sub_1D8B151C0();
  v33 = sub_1D8B16200();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x1DA71F1E0](v17, MEMORY[0x1E69E6158]);
    v38 = sub_1D89AC714(v36, v37, aBlock);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D8783000, v32, v33, "Siri has voices for the following languages: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1DA721330](v35, -1, -1);
    MEMORY[0x1DA721330](v34, -1, -1);
  }

  aBlock[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20);
  sub_1D8B15E20();
}

void sub_1D89C52FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t SiriVoiceAvailabilityUtility.deinit()
{

  return v0;
}

uint64_t SiriVoiceAvailabilityUtility.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D89C53D4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;

  return result;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t dispatch thunk of SiriVoiceAvailabilityUtility.updatePreferredSiriLanguageCode()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D888F054;

  return v4();
}

uint64_t dispatch thunk of SiriVoiceAvailabilityUtility.updateVoiceLanguages()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D89424A4;

  return v4();
}

void sub_1D89C56F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D89C4BB0(v3, v0 + v2, v4);
}

void sub_1D89C5794(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78, &unk_1D8B30E20) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1D89C4D6C(a1, v4, v5);
}

uint64_t sub_1D89C581C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1D89C58BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D89C3A80(a1, v4, v5, v6);
}

unint64_t sub_1D89C599C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D89C7AB8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1D8B16710();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1D8B167B0();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_1D89C5B04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D8B16580();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1D89C7E24(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1D89C5BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D8B16580();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D89C7D64(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

Swift::String_optional __swiftcall String.detectedLanguage()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v1 = sub_1D8B15940();
  [v0 processString_];

  v2 = [v0 dominantLanguage];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D8B15970();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void sub_1D89C5D50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0, &qword_1D8B2C100);
    v2 = sub_1D8B16910();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1D8943B68(&v22, v24);
        sub_1D8943B68(v24, v25);
        sub_1D8943B68(v25, &v23);
        v16 = sub_1D87EF838(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_1D8943B68(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1D8943B68(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1D89C5F98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C20, &unk_1D8B2C040);
    v1 = sub_1D8B16910();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_1D89C8E58();
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1D8943B68((v26 + 8), v24);
    sub_1D8943B68(v24, v26);
    sub_1D8B15970();
    sub_1D8B16D20();
    sub_1D8B15A60();
    v15 = sub_1D8B16D80();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_1D8943B68(v26, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *String.camelCaseToWords.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8B12C60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = a1;
  v57 = a2;
  v58 = 0;
  v59 = v8;

  v9 = sub_1D8B15AE0();
  if (v10)
  {
    v11 = v10;
    v52 = v4;
    v12 = (v5 + 8);
    v50 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E6158];
    v51 = v7;
    while (1)
    {
      while (1)
      {
        v53 = v9;
        v54 = v9;
        v55 = v11;
        sub_1D8B12C20();
        sub_1D87C12C0();
        sub_1D8B164A0();
        v16 = v15;
        v17 = *v12;
        v18 = v52;
        (*v12)(v7, v52);
        if ((v16 & 1) == 0)
        {
          v29 = v13;
          v30 = v60;
          v31 = v61;
          v32 = HIBYTE(v61) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v32 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v7 = v51;
            if (isUniquelyReferenced_nonNull_native)
            {
              v34 = v50;
            }

            else
            {
              v34 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
            }

            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            if (v36 >= v35 >> 1)
            {
              v34 = sub_1D87C8284((v35 > 1), v36 + 1, 1, v34);
            }

            *(v34 + 2) = v36 + 1;
            v50 = v34;
            v37 = &v34[16 * v36];
            *(v37 + 4) = v30;
            *(v37 + 5) = v31;
            v60 = 0;
            v61 = 0xE000000000000000;
          }

          else
          {
            v7 = v51;
          }

          v38 = sub_1D8B159F0();
          v40 = v39;

          MEMORY[0x1DA71EFA0](v38, v40);

          v13 = v29;
          goto LABEL_27;
        }

        v54 = v53;
        v55 = v11;
        sub_1D8B12C10();
        sub_1D8B164A0();
        v20 = v19;
        v17(v7, v18);
        if (v20)
        {
          break;
        }

        MEMORY[0x1DA71EFA0](v53, v11);

LABEL_6:
        v9 = sub_1D8B15AE0();
        v11 = v14;
        v7 = v51;
        if (!v14)
        {
          goto LABEL_32;
        }
      }

      v21 = v60;
      v22 = v61;
      v23 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v23 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        goto LABEL_6;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v7 = v51;
      if (v24)
      {
        v25 = v50;
      }

      else
      {
        v25 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1D87C8284((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v50 = v25;
      v28 = &v25[16 * v27];
      *(v28 + 4) = v21;
      *(v28 + 5) = v22;
      v60 = 0;
      v61 = 0xE000000000000000;
LABEL_27:
      v9 = sub_1D8B15AE0();
      v11 = v41;
      if (!v41)
      {
        goto LABEL_32;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v42 = v60;
  v43 = v61;
  v44 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v44 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v45 = v50;
    }

    else
    {
      v45 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1D87C8284((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[16 * v47];
    *(v48 + 4) = v42;
    *(v48 + 5) = v43;
  }

  else
  {

    return v50;
  }

  return v45;
}

Swift::Bool __swiftcall String.isUserPreferredLanguage()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v1 = sub_1D8B15940();
  [v0 processString_];

  v2 = [v0 dominantLanguage];
  if (!v2)
  {

LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = v2;
  sub_1D8B15970();

  if (!*(sub_1D8B13280() + 16))
  {

    goto LABEL_6;
  }

  sub_1D89C78B4();
  sub_1D89C7908();
  v4 = sub_1D8B157F0();

  return v4 & 1;
}

uint64_t sub_1D89C67EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v4 = sub_1D8B15940();
  [v3 setString_];

  v6 = MEMORY[0x1E69E7CC0];
  sub_1D8B161B0();

  return v6;
}

uint64_t sub_1D89C68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char **a6)
{
  v9 = sub_1D8B15BB0();
  v10 = MEMORY[0x1DA71EF10](v9);
  v12 = v11;

  v13 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1D87C8284(0, *(v13 + 2) + 1, 1, v13);
    *a6 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1D87C8284((v15 > 1), v16 + 1, 1, v13);
    *a6 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[16 * v16];
  *(v17 + 4) = v10;
  *(v17 + 5) = v12;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v18 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v19 = sub_1D8B15AA0();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    v22 = v19 >> 14;
    if (v19 >> 14 < 4 * v18)
    {
      sub_1D8B15B80();
      v23 = sub_1D8B157B0();

      if (v23)
      {
        sub_1D8B15B80();
        v24 = sub_1D8B157B0();

        v25 = v22;
        if (v24)
        {
          do
          {
            v25 = sub_1D8B15A80() >> 14;
            if (v25 >= 4 * v18)
            {
              break;
            }

            sub_1D8B15B80();
            v26 = sub_1D8B157B0();
          }

          while ((v26 & 1) != 0);
        }

        if (v25 < v22)
        {
          __break(1u);
        }

        else
        {
          v27 = sub_1D8B15BB0();
          a5 = MEMORY[0x1DA71EF10](v27);
          a4 = v28;

          v21 = *a6;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *a6 = v21;
          if (v29)
          {
LABEL_16:
            v31 = *(v21 + 2);
            v30 = *(v21 + 3);
            if (v31 >= v30 >> 1)
            {
              v21 = sub_1D87C8284((v30 > 1), v31 + 1, 1, v21);
              *a6 = v21;
            }

            *(v21 + 2) = v31 + 1;
            v32 = &v21[16 * v31];
            *(v32 + 4) = a5;
            *(v32 + 5) = a4;
            return 1;
          }
        }

        v21 = sub_1D87C8284(0, *(v21 + 2) + 1, 1, v21);
        *a6 = v21;
        goto LABEL_16;
      }
    }
  }

  return 1;
}

uint64_t sub_1D89C6B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = sub_1D8B15BB0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D87C94F0(0, *(v14 + 2) + 1, 1, v14);
    *a6 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D87C94F0((v16 > 1), v17 + 1, 1, v14);
    *a6 = v14;
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[32 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = v9;
  *(v18 + 6) = v11;
  *(v18 + 7) = v13;
  return 1;
}

Swift::Bool __swiftcall String.isSentenceEndingCharacter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1D8B12C60();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D89C599C(countAndFlagsBits, object) & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    sub_1D8B12C30();
    v7 = sub_1D8B12C50();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

Swift::String __swiftcall String.cleanUpJSONResponseString()()
{
  v2 = v1;
  v3 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v4 = sub_1D8B159C0();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B12C60();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643B0, &qword_1D8B23FE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  *&v53[0] = v3;
  *(&v53[0] + 1) = v2;
  v51 = 123;
  v52 = 0xE100000000000000;
  v11 = sub_1D8B13350();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  sub_1D87C12C0();
  v50 = sub_1D8B164E0();
  v14 = v13;
  v15 = v2;
  sub_1D87A14E4(v10, &qword_1ECA643B0, &qword_1D8B23FE8);
  if (v14)
  {
    goto LABEL_10;
  }

  *&v53[0] = v3;
  *(&v53[0] + 1) = v2;
  v51 = 125;
  v52 = 0xE100000000000000;
  v12(v10, 1, 1, v11);
  sub_1D8B164E0();
  v17 = v16;
  v19 = v18;
  sub_1D87A14E4(v10, &qword_1ECA643B0, &qword_1D8B23FE8);
  if (v19)
  {
    goto LABEL_10;
  }

  v20 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v20 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v50 >> 14 >= 4 * v20 || 4 * v20 < v17 >> 14 || v17 >> 14 < v50 >> 14)
  {
LABEL_10:
  }

  else
  {
    v21 = v3;
    v22 = v15;
    v23 = sub_1D8B15BB0();
    v24 = MEMORY[0x1DA71EF10](v23);
    v26 = v25;

    *&v53[0] = v24;
    *(&v53[0] + 1) = v26;
    v27 = v44;
    sub_1D8B12C40();
    v28 = sub_1D8B164B0();
    v30 = v29;
    (*(v45 + 8))(v27, v46);

    v31 = v47;
    sub_1D8B159B0();
    v32 = sub_1D8B15980();
    v34 = v33;
    (*(v48 + 8))(v31, v49);
    if (v34 >> 60 == 15)
    {

LABEL_15:
      v15 = v22;

      v3 = v21;
      goto LABEL_11;
    }

    v37 = objc_opt_self();
    v38 = sub_1D8B13030();
    v51 = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:&v51];

    v40 = v51;
    if (!v39)
    {
      v41 = v40;

      v42 = sub_1D8B12EB0();

      swift_willThrow();
      sub_1D87C12A4(v32, v34);

      memset(v53, 0, sizeof(v53));
      sub_1D87A14E4(v53, &qword_1ECA650C0, &unk_1D8B2D030);
      goto LABEL_15;
    }

    sub_1D8B16540();
    sub_1D87C12A4(v32, v34);
    swift_unknownObjectRelease();
    sub_1D87A14E4(v53, &qword_1ECA650C0, &unk_1D8B2D030);
    v3 = v28;
    v15 = v30;
  }

LABEL_11:
  v35 = v3;
  v36 = v15;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

CGSize __swiftcall String.anticipatedSize(usingUIFont:)(UIFont usingUIFont)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E98, &qword_1D8B30E48);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D8B1AB90;
  v4 = *v3;
  *(inited + 32) = v4;
  *(inited + 40) = usingUIFont;
  v5 = v4;
  v6 = usingUIFont.super.isa;
  v7 = sub_1D893F0E0(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, &qword_1ECA66EA0, &qword_1D8B30E50);
  v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v9 = sub_1D8B15940();
  v10 = [v8 initWithString_];

  sub_1D89C5F98(v7);

  type metadata accessor for Key(0);
  sub_1D89C8DAC(&qword_1ECA62478, type metadata accessor for Key, &unk_1D8B19DEC);
  v11 = sub_1D8B15710();

  [v10 boundingRectWithSize:3 options:v11 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

double String.anticipatedSize(usingFont:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B154F0();
  v3 = sub_1D8B15510();

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD58];
LABEL_19:
    v14 = *v5;
    goto LABEL_20;
  }

  sub_1D8B15530();
  v6 = sub_1D8B15510();

  if (v6)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDDB8];
    goto LABEL_19;
  }

  sub_1D8B15540();
  v7 = sub_1D8B15510();

  if (v7)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDDC0];
    goto LABEL_19;
  }

  sub_1D8B15590();
  v8 = sub_1D8B15510();

  if (v8)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD40];
    goto LABEL_19;
  }

  sub_1D8B15500();
  v9 = sub_1D8B15510();

  if (v9)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD80];
    goto LABEL_19;
  }

  sub_1D8B15560();
  v10 = sub_1D8B15510();

  if (v10)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD08];
    goto LABEL_19;
  }

  sub_1D8B15570();
  v11 = sub_1D8B15510();

  if (v11)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD10];
    goto LABEL_19;
  }

  sub_1D8B15580();
  v12 = sub_1D8B15510();

  if (v12)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDD28];
    goto LABEL_19;
  }

  sub_1D8B15520();
  v13 = sub_1D8B15510();

  if (v13)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1E69DDCF8];
    goto LABEL_19;
  }

  sub_1D8B15550();
  v33 = sub_1D8B15510();

  v4 = objc_opt_self();
  if (v33)
  {
    v34 = MEMORY[0x1E69DDD00];
  }

  else
  {
    v34 = MEMORY[0x1E69DDCF8];
  }

  v14 = *v34;
LABEL_20:
  v15 = [v4 preferredFontForTextStyle_];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultMetrics];
  v19 = [v18 scaledFontForFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E98, &qword_1D8B30E48);
  inited = swift_initStackObject();
  v21 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D8B1AB90;
  v22 = *v21;
  *(inited + 32) = v22;
  *(inited + 40) = v19;
  v23 = v22;
  v24 = v19;
  v25 = sub_1D893F0E0(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, &qword_1ECA66EA0, &qword_1D8B30E50);
  v26 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v27 = sub_1D8B15940();
  v28 = [v26 initWithString_];

  sub_1D89C5F98(v25);

  type metadata accessor for Key(0);
  sub_1D89C8DAC(&qword_1ECA62478, type metadata accessor for Key, &unk_1D8B19DEC);
  v29 = sub_1D8B15710();

  [v28 boundingRectWithSize:3 options:v29 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v31 = v30;

  return v31;
}

unint64_t sub_1D89C78B4()
{
  result = qword_1ECA66E88;
  if (!qword_1ECA66E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66E88);
  }

  return result;
}

unint64_t sub_1D89C7908()
{
  result = qword_1ECA66E90;
  if (!qword_1ECA66E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66E90);
  }

  return result;
}

unint64_t sub_1D89C7968(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D89C7AB8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1D8B16710();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1D8B167B0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1D89C7AB8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1D89C7B50(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1D89C7BC4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1D89C7B50(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1D89C7CE8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D89C7BC4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1D8B167B0();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1D89C7CE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8B15B40();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA71EFE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D89C7D64@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
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

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for DetectionRequest(0) - 8) + 72) * result;

  return sub_1D89C8DF4(v6, a4);
}

uint64_t sub_1D89C7E24@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
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

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_1D89C7EE8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_1D8B165F0() != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1D8B16600();
      type metadata accessor for CVTrackedDetection(0);
      swift_dynamicCast();
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D89C8DAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v7 = sub_1D8B16D80();
      v8 = -1 << *(a4 + 32);
      v5 = v7 & ~v8;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v9 = ~v8;
        do
        {

          v10 = sub_1D8B13200();

          if (v10)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v9;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:

          return;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x1DA71FB10](a1, a2, v6);
  type metadata accessor for CVTrackedDetection(0);
  swift_dynamicCast();
}

uint64_t _sSS22VisualIntelligenceCoreE15normalizeDashesyS2SFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D87C12C0();
  sub_1D8B164D0();
  sub_1D8B164D0();

  sub_1D8B164D0();

  sub_1D8B164D0();

  v2 = sub_1D8B164D0();

  return v2;
}

uint64_t _sSS22VisualIntelligenceCoreE19endsWithDashOrTildeySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B12C60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_1D8B12C40();
  sub_1D87C12C0();
  sub_1D8B164B0();
  (*(v5 + 8))(v7, v4);
  if (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60())
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B15B60();
  }

  return v8 & 1;
}

unint64_t _sSS22VisualIntelligenceCoreE27concatenateTextForReadAloud4fromSSSaySSG_tFZ_0(uint64_t a1)
{
  v2 = sub_1D8B16E00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_1D8B12C60();
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = 0;
  v90 = 0xE000000000000000;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v73 = v5;
  v74 = v2;
  v77 = (v6 + 8);
  v72 = (v3 + 8);
  sub_1D87C12C0();
  v9 = (a1 + 56);
  v75 = v8;
  v76 = -v8;
  v10 = 1;
  while (1)
  {
    v81 = v10;
    v82 = v9;
    v11 = *(v9 - 2);
    v87 = *(v9 - 3);
    v88 = v11;
    v85 = 11565;
    v86 = 0xE200000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;

    v87 = sub_1D8B164D0();
    v88 = v12;
    v80 = 9732322;
    v85 = 9732322;
    v86 = 0xA300000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v13 = sub_1D8B164D0();
    v15 = v14;

    v87 = v13;
    v88 = v15;
    v85 = 9666786;
    v86 = 0xA300000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v16 = sub_1D8B164D0();
    v18 = v17;

    v87 = v16;
    v88 = v18;
    v85 = 45;
    v86 = 0xE100000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v19 = sub_1D8B164D0();
    v21 = v20;

    v87 = v19;
    v88 = v21;
    v85 = 126;
    v86 = 0xE100000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v22 = sub_1D8B164D0();
    v24 = v23;

    v87 = v22;
    v88 = v24;
    v25 = v78;
    sub_1D8B12C40();
    v26 = sub_1D8B164B0();
    v28 = v27;
    v29 = *v77;
    v30 = v79;
    (*v77)(v25, v79);
    v31 = v26;

    v87 = v26;
    v88 = v28;
    sub_1D8B12C40();
    sub_1D8B164B0();
    v32 = v29;
    v29(v25, v30);
    if ((sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0)
    {
      break;
    }

    v33 = v82;
LABEL_8:
    v87 = v26;
    v88 = v28;

    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);

    MEMORY[0x1DA71EFA0](v87, v88);
    v34 = v81;
LABEL_9:

    v10 = v34 + 1;
    v9 = v33 + 2;
    if (v76 + v10 == 1)
    {
      return v89;
    }
  }

  v35 = sub_1D8B15B60();

  v33 = v82;
  if (v35)
  {
    goto LABEL_8;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v36 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v81;
  if (v36)
  {
    sub_1D8B15A90();
    v37 = sub_1D8B15B80();
    if ((sub_1D89C599C(v37, v38) & 0x100000000) != 0)
    {
    }

    else
    {
      v39 = v78;
      sub_1D8B12C30();
      v40 = sub_1D8B12C50();

      v32(v39, v79);
      if (v40)
      {
        v87 = v26;
        v88 = v28;

        v41 = 10;
        goto LABEL_49;
      }
    }
  }

  if (v34 >= v75)
  {
    v56 = v26;
    goto LABEL_51;
  }

  v80 = v36;
  v42 = *v33;
  v87 = *(v33 - 1);
  v88 = v42;

  v43 = v78;
  sub_1D8B12C40();
  v44 = sub_1D8B164B0();
  v46 = v45;
  v47 = v44;
  v32(v43, v79);

  v48 = HIBYTE(v46) & 0xF;
  v71 = v47;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    v58 = 0xE100000000000000;
    v59 = 32;
    goto LABEL_40;
  }

  v49 = sub_1D8B15B80();
  v51 = v50;
  if ((sub_1D8B157E0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v52 = v49;
  result = sub_1D89C7968(v49, v51);
  if ((result & 0x100000000) == 0)
  {
    v53 = v73;
    sub_1D8B16E10();
    v70 = sub_1D8B16DE0();
    (*v72)(v53, v74);
    v49 = v52;
    if ((v70 & 1) == 0)
    {
LABEL_27:
      if ((sub_1D8B157D0() & 1) == 0)
      {

        goto LABEL_39;
      }

      if ((sub_1D8B157E0() & 1) == 0)
      {
        goto LABEL_31;
      }

      result = sub_1D89C7968(v49, v51);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_55;
      }

      v54 = v73;
      sub_1D8B16E10();
      v70 = sub_1D8B16DF0();
      (*v72)(v54, v74);
      if ((v70 & 1) == 0)
      {
LABEL_31:
        if (sub_1D8B157D0())
        {
          v55 = sub_1D8B157C0();

          if ((v55 & 1) == 0)
          {
LABEL_36:

            v57 = v80;
LABEL_42:
            if (v57 && (sub_1D8B15A90(), sub_1D8B15B80(), v65 = sub_1D8B157B0(), , (v65 & 1) != 0))
            {
              v66 = 0;
              v67 = 0xE000000000000000;
            }

            else
            {
              v67 = 0xE200000000000000;
              v66 = 8238;
            }

            v87 = v31;
            v88 = v28;

            MEMORY[0x1DA71EFA0](v66, v67);

            goto LABEL_50;
          }

LABEL_39:
          v60 = sub_1D8B15B80();
          v58 = v61;

          v59 = v60;
LABEL_40:
          v62 = sub_1D89C599C(v59, v58);
          v57 = v80;
          if ((v62 & 0x100000000) != 0)
          {
          }

          else
          {
            v63 = v78;
            sub_1D8B12C30();
            v64 = sub_1D8B12C50();

            v32(v63, v79);
            if (v64)
            {
              goto LABEL_42;
            }
          }

          v87 = v31;
          v88 = v28;

          v41 = 32;
LABEL_49:
          MEMORY[0x1DA71EFA0](v41, 0xE100000000000000);
LABEL_50:

          v56 = v87;
          v28 = v88;
LABEL_51:
          MEMORY[0x1DA71EFA0](v56, v28);
          goto LABEL_9;
        }
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1D89C8DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D89C8DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D89C8E58()
{
  result = qword_1ECA66EA8;
  if (!qword_1ECA66EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA66EA8);
  }

  return result;
}

void sub_1D89C8EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  if (a5 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a5)
  {
    if (a5 <= 3)
    {
      v11 = 0;
LABEL_8:
      v16 = a5 - v11;
      v17 = v11 + 1;
      do
      {
        a1[v17] = v17;
        ++v17;
        --v16;
      }

      while (v16);
      goto LABEL_10;
    }

    v12 = 0;
    v11 = a5 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vdupq_n_s64(v12);
      v14 = vorrq_s8(v13, xmmword_1D8B1AB90);
      v15 = &a1[v14.i64[0]];
      *v15 = v14;
      v15[1] = vaddq_s64(v13, xmmword_1D8B30E60);
      v12 += 4;
    }

    while (v11 != v12);
    if (v11 != a5)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  if (a6 < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *a1 = 0;
  if (!a6)
  {
    goto LABEL_65;
  }

  for (i = 0; i != a6; a1[a3 * i] = i)
  {
    ++i;
    if ((a3 * i) >> 64 != (a3 * i) >> 63)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
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
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if (!a5)
  {
    goto LABEL_65;
  }

  v19 = a7 + 32;
  v20 = *(a7 + 16);
  v51 = *(a8 + 16);
  v21 = (a8 + 40);
  v22 = 1;
  v47 = a7 + 32;
  v45 = (a8 + 40);
  v46 = v20;
  while (2)
  {
    v23 = v22 - 1;
    if (v22 - 1 >= v20)
    {
      goto LABEL_60;
    }

    v24 = (v19 + 16 * v23);
    v53 = *v24;
    v52 = v24[1];
    v25 = 1;
    while (1)
    {
      v26 = v25 - 1;
      if (v25 - 1 >= v51)
      {
        goto LABEL_49;
      }

      v28 = *(v21 - 1);
      v27 = *v21;

      v29 = sub_1D8A98664(v28, v27, v53, v52);

      v30 = a3 * v25;
      if ((a3 * v25) >> 64 != (a3 * v25) >> 63)
      {
        goto LABEL_50;
      }

      if (__OFADD__(v30, v23))
      {
        goto LABEL_51;
      }

      v31 = a1[v30 + v23];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_52;
      }

      v34 = a3 * v26;
      if ((a3 * v26) >> 64 != (a3 * v26) >> 63)
      {
        goto LABEL_53;
      }

      if (__OFADD__(v34, v22))
      {
        goto LABEL_54;
      }

      v35 = a1[v34 + v22];
      v32 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v32)
      {
        goto LABEL_55;
      }

      v32 = __OFADD__(v34, v23);
      v37 = v34 + v23;
      if (v32)
      {
        goto LABEL_56;
      }

      v38 = (v29 & 1) == 0;
      v39 = a1[v37];
      v32 = __OFADD__(v39, v38);
      v40 = v39 + v38;
      if (v32)
      {
        goto LABEL_57;
      }

      v32 = __OFADD__(v30, v22);
      v41 = v30 + v22;
      if (v32)
      {
        goto LABEL_58;
      }

      if (v36 < v33)
      {
        v33 = v36;
      }

      if (v40 < v33)
      {
        v33 = v40;
      }

      a1[v41] = v33;
      if (v33 > a9)
      {
        goto LABEL_42;
      }

      if (a6 == v25)
      {
        break;
      }

      v21 += 2;
      v32 = __OFADD__(v25++, 1);
      if (v32)
      {
        goto LABEL_59;
      }
    }

    if (v22 != a5)
    {
      v32 = __OFADD__(v22++, 1);
      v20 = v46;
      v19 = v47;
      v21 = v45;
      if (!v32)
      {
        continue;
      }

      __break(1u);
LABEL_42:
      v42 = a5;
      if (a6 > a5)
      {
        v42 = a6;
      }

LABEL_44:
      *a10 = v42;

      return;
    }

    break;
  }

  v43 = a3 * a6;
  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
    goto LABEL_63;
  }

  v32 = __OFADD__(v43, a5);
  v44 = v43 + a5;
  if (!v32)
  {
    v42 = a1[v44];
    goto LABEL_44;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

unint64_t sub_1D89C91D8()
{
  result = qword_1ECA66EB0;
  if (!qword_1ECA66EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EB0);
  }

  return result;
}

uint64_t sub_1D89C922C()
{
  result = os_variant_has_internal_content();
  byte_1EE0E55D8 = result;
  return result;
}

uint64_t static SystemVariantSupport.isInternalBuild.getter()
{
  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  return byte_1EE0E55D8;
}

BOOL static TextDetectionReadabilityUtility.isSmallOrIsolated(result:imageResolution:minConfidence:minBoundingBoxPercentage:)(uint64_t a1, __n128 a2, __n128 a3, float a4, double a5)
{
  if (sub_1D89CC210(a1, a2.n128_f64[0], a3.n128_f64[0], a5))
  {
    return 1;
  }

  v8 = *(a1 + *(type metadata accessor for TextDetectorResult(0) + 44));
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    result = --v10 == 0;
    if (!v10)
    {
      break;
    }

    v11 = *v9;
    v9 += 10;
  }

  while (v11 < a4);
  return result;
}

CGFloat static TextDetectionReadabilityUtility.getBoundingBoxPercentage(result:imageResolution:)(double a1, double a2)
{
  v4 = a1 * a2;
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  v5 = CGRectGetWidth(v7) * a1;
  Corners.bounds.getter();
  return v5 * (CGRectGetHeight(v8) * a2) / v4 * 100.0;
}

void sub_1D89C93D4(void *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D885D36C(v7);
  }

  v8 = v7[2];
  v9[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9[1] = v8;
  sub_1D89C9500(v9, a2, a3);
  *a1 = v7;
}

void sub_1D89C9494(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D394(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1D89C963C(v4);
  *a1 = v2;
}

void sub_1D89C9500(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = sub_1D8B16B30();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TextDetectorResult(0);
        v10 = sub_1D8B15D60();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for TextDetectorResult(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_1D89C963C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0, &qword_1D8B23030);
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D89CADB0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D89C9B68(0, v2, 1, a1);
  }
}

uint64_t sub_1D89C9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TextDetectorResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v39 = v18 + 8;
    v38 = v14 + 8;
    v21 = v19 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v24 = v19;
    v32 = v20;
    v25 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v25;
    v35 = v23;
    v26 = v23;
    while (1)
    {
      sub_1D88CC83C(v25, v18);
      sub_1D88CC83C(v21, v14);
      v27 = *(v8 + 24);
      v28 = *&v39[v27];
      v29 = *&v38[v27];
      sub_1D89A2300(v14);
      result = sub_1D89A2300(v18);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v23 = v35 - 1;
        v25 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      sub_1D89CDBB8(v25, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D89CDBB8(v11, v21);
      v21 += v22;
      v25 += v22;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89C9960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TextDetectorResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = a3;
    v33 = v24;
    v34 = v23;
    v25 = v23;
    v35 = v21;
    while (1)
    {
      sub_1D88CC83C(v24, v18);
      sub_1D88CC83C(v21, v14);
      v26 = *(v8 + 24);
      v27 = *&v18[v26];
      v28 = *&v14[v26];
      sub_1D89A2300(v14);
      result = sub_1D89A2300(v18);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_1D89CDBB8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D89CDBB8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89C9B68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *v11;
      if (*(v9 + 16))
      {
        v13 = type metadata accessor for TextDetectorResult(0);
        v14 = *(v13 - 8);
        result = v13 - 8;
        v15 = *(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(result + 32));
        if (!*(v12 + 16))
        {
          if (v15 >= 0.0)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      else
      {
        v15 = 0.0;
        if (!*(v12 + 16))
        {
          goto LABEL_4;
        }
      }

      v16 = type metadata accessor for TextDetectorResult(0);
      v17 = *(v16 - 8);
      result = v16 - 8;
      if (v15 >= *(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(result + 32)))
      {
        goto LABEL_4;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      *v11 = v9;
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_1D89C9CD4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = type metadata accessor for TextDetectorResult(0);
  v126 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v116 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v128 = &v115 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v122 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_135;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v122;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_129:
      v20 = sub_1D885CC68(v20);
    }

    v134 = v20;
    v110 = *(v20 + 2);
    if (v110 >= 2)
    {
      v111 = v126;
      while (*v37)
      {
        v112 = *&v20[16 * v110];
        v113 = *&v20[16 * v110 + 24];
        sub_1D89CB574(*v37 + *(v111 + 72) * v112, *v37 + *(v111 + 72) * *&v20[16 * v110 + 16], *v37 + *(v111 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v113 < v112)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D885CC68(v20);
        }

        if (v110 - 2 >= *(v20 + 2))
        {
          goto LABEL_123;
        }

        v114 = &v20[16 * v110];
        *v114 = v112;
        *(v114 + 1) = v113;
        v134 = v20;
        sub_1D885CBDC(v110 - 1);
        v20 = v134;
        v110 = *(v134 + 2);
        if (v110 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v132 = &v115 - v16;
  v133 = v15;
  v117 = a4;
  v19 = 0;
  v129 = v17;
  v130 = v17 + 8;
  v131 = &v115 - v16 + 8;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19;
    v127 = v20;
    if (v19 + 1 >= v18)
    {
      v36 = v19 + 1;
      v37 = v122;
    }

    else
    {
      v22 = *v122;
      v23 = *(v126 + 72);
      v5 = *v122 + v23 * (v19 + 1);
      v24 = v132;
      sub_1D88CC83C(v5, v132);
      v25 = v129;
      sub_1D88CC83C(v22 + v23 * v19, v129);
      v26 = *(v133 + 24);
      v27 = *&v131[v26];
      v28 = *(v130 + v26);
      sub_1D89A2300(v25);
      sub_1D89A2300(v24);
      v118 = v19;
      v29 = v19 + 2;
      v30 = v22 + v23 * (v19 + 2);
      while (v18 != v29)
      {
        v31 = v132;
        sub_1D88CC83C(v30, v132);
        v32 = v129;
        sub_1D88CC83C(v5, v129);
        v33 = *(v133 + 24);
        v34 = *&v131[v33];
        v35 = *(v130 + v33);
        sub_1D89A2300(v32);
        sub_1D89A2300(v31);
        v20 = v127;
        ++v29;
        v30 += v23;
        v5 += v23;
        if (v27 < v28 == v34 >= v35)
        {
          v36 = v29 - 1;
          goto LABEL_11;
        }
      }

      v36 = v18;
LABEL_11:
      v21 = v118;
      v37 = v122;
      if (v27 < v28)
      {
        if (v36 < v118)
        {
          goto LABEL_126;
        }

        if (v118 < v36)
        {
          v115 = v6;
          v38 = v23 * (v36 - 1);
          v39 = v36;
          v40 = v36 * v23;
          v125 = v36;
          v41 = v118;
          v42 = v118 * v23;
          v43 = v116;
          do
          {
            if (v41 != --v39)
            {
              v44 = *v122;
              if (!*v122)
              {
                goto LABEL_132;
              }

              v5 = v44 + v42;
              sub_1D89CDBB8(v44 + v42, v43);
              if (v42 < v38 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D89CDBB8(v43, v44 + v38);
              v20 = v127;
            }

            ++v41;
            v38 -= v23;
            v40 -= v23;
            v42 += v23;
          }

          while (v41 < v39);
          v6 = v115;
          v37 = v122;
          v21 = v118;
          v36 = v125;
        }
      }
    }

    v45 = v37[1];
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v21))
      {
        goto LABEL_125;
      }

      if (v36 - v21 < v117)
      {
        if (__OFADD__(v21, v117))
        {
          goto LABEL_127;
        }

        if (v21 + v117 >= v45)
        {
          v46 = v37[1];
        }

        else
        {
          v46 = v21 + v117;
        }

        if (v46 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v19 = v36;
    if (v36 < v21)
    {
      goto LABEL_124;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D87C7C5C(0, *(v20 + 2) + 1, 1, v20);
    }

    v48 = *(v20 + 2);
    v47 = *(v20 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v20 = sub_1D87C7C5C((v47 > 1), v48 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v49 = &v20[16 * v48];
    *(v49 + 4) = v21;
    *(v49 + 5) = v19;
    if (!*v119)
    {
      goto LABEL_134;
    }

    if (v48)
    {
      v50 = *v119;
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v20 + 4);
          v53 = *(v20 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_55:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v20[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v20[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v78 = &v20[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_69:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v20[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_76:
        v89 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v37)
        {
          goto LABEL_131;
        }

        v90 = *&v20[16 * v89 + 32];
        v5 = *&v20[16 * v51 + 40];
        sub_1D89CB574(*v37 + *(v126 + 72) * v90, *v37 + *(v126 + 72) * *&v20[16 * v51 + 32], *v37 + *(v126 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D885CC68(v20);
        }

        if (v89 >= *(v20 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v20[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v134 = v20;
        sub_1D885CBDC(v51);
        v20 = v134;
        v5 = *(v134 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v20[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v20[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v20[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = v37[1];
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v115 = v6;
  v92 = *v37;
  v93 = *(v126 + 72);
  v94 = *v37 + v93 * (v36 - 1);
  v95 = v21;
  v96 = -v93;
  v118 = v95;
  v97 = v95 - v36;
  v120 = v93;
  v121 = v46;
  v98 = v92 + v36 * v93;
  v99 = v129;
LABEL_87:
  v124 = v94;
  v125 = v36;
  v5 = v98;
  v123 = v97;
  v100 = v97;
  v101 = v133;
  while (1)
  {
    v102 = v132;
    sub_1D88CC83C(v5, v132);
    sub_1D88CC83C(v94, v99);
    v103 = *(v101 + 24);
    v104 = *&v131[v103];
    v105 = *(v130 + v103);
    sub_1D89A2300(v99);
    sub_1D89A2300(v102);
    if (v104 >= v105)
    {
LABEL_86:
      v36 = v125 + 1;
      v19 = v121;
      v94 = v124 + v120;
      v97 = v123 - 1;
      v98 += v120;
      if (v125 + 1 != v121)
      {
        goto LABEL_87;
      }

      v6 = v115;
      v37 = v122;
      v20 = v127;
      v21 = v118;
      if (v121 < v118)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v92)
    {
      break;
    }

    v106 = v128;
    sub_1D89CDBB8(v5, v128);
    v101 = v133;
    swift_arrayInitWithTakeFrontToBack();
    v107 = v106;
    v99 = v129;
    sub_1D89CDBB8(v107, v94);
    v94 += v96;
    v5 += v96;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_1D89CA560(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for TextDetectorResult(0);
  v117 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v120 = &v105 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v105 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v105 - v18;
  v119 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v22 = sub_1D885CC68(v22);
    }

    v122 = v22;
    v101 = *(v22 + 2);
    if (v101 >= 2)
    {
      while (*v119)
      {
        v102 = *&v22[16 * v101];
        v103 = *&v22[16 * v101 + 24];
        sub_1D89CBA18(*v119 + *(v117 + 72) * v102, *v119 + *(v117 + 72) * *&v22[16 * v101 + 16], *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v103 < v102)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D885CC68(v22);
        }

        if (v101 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v104 = &v22[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v122 = v22;
        sub_1D885CBDC(v101 - 1);
        v22 = v122;
        v101 = *(v122 + 2);
        if (v101 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v121 = v17;
  v108 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v119;
      v26 = *(v117 + 72);
      v5 = *v119 + v26 * v24;
      sub_1D88CC83C(v5, v19);
      sub_1D88CC83C(v25 + v26 * v23, v16);
      v27 = *(v121 + 24);
      v28 = *&v19[v27];
      v29 = *&v16[v27];
      sub_1D89A2300(v16);
      sub_1D89A2300(v19);
      v109 = v23;
      v30 = v23 + 2;
      v118 = v26;
      v31 = v25 + v26 * v30;
      while (v20 != v30)
      {
        sub_1D88CC83C(v31, v19);
        sub_1D88CC83C(v5, v16);
        v32 = *(v121 + 24);
        v33 = *&v19[v32];
        v34 = *&v16[v32];
        sub_1D89A2300(v16);
        sub_1D89A2300(v19);
        ++v30;
        v31 += v118;
        v5 += v118;
        if (v28 < v29 == v33 >= v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v109;
      if (v28 < v29)
      {
        if (v20 < v109)
        {
          goto LABEL_123;
        }

        if (v109 < v20)
        {
          v106 = v22;
          v107 = v6;
          v35 = v118 * (v20 - 1);
          v36 = v20 * v118;
          v116 = v20;
          v37 = v20;
          v38 = v109;
          v39 = v109 * v118;
          do
          {
            if (v38 != --v37)
            {
              v5 = *v119;
              if (!*v119)
              {
                goto LABEL_129;
              }

              sub_1D89CDBB8(v5 + v39, v112);
              if (v39 < v35 || v5 + v39 >= v5 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D89CDBB8(v112, v5 + v35);
            }

            ++v38;
            v35 -= v118;
            v36 -= v118;
            v39 += v118;
          }

          while (v38 < v37);
          v22 = v106;
          v6 = v107;
          v23 = v109;
          v20 = v116;
        }
      }
    }

    v40 = v119[1];
    if (v20 < v40)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_122;
      }

      if (v20 - v23 < v108)
      {
        if (__OFADD__(v23, v108))
        {
          goto LABEL_124;
        }

        if (v23 + v108 >= v40)
        {
          v41 = v119[1];
        }

        else
        {
          v41 = v23 + v108;
        }

        if (v41 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v20 != v41)
        {
          break;
        }
      }
    }

    v42 = v20;
    if (v20 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1D87C7C5C(0, *(v22 + 2) + 1, 1, v22);
    }

    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v22 = sub_1D87C7C5C((v43 > 1), v44 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * v44];
    *(v45 + 4) = v23;
    *(v45 + 5) = v42;
    v46 = *v110;
    if (!*v110)
    {
      goto LABEL_131;
    }

    v113 = v42;
    if (v44)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v22 + 4);
          v49 = *(v22 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v22[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v22[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v22[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v22[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v85 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v119)
        {
          goto LABEL_128;
        }

        v86 = *&v22[16 * v85 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_1D89CBA18(*v119 + *(v117 + 72) * v86, *v119 + *(v117 + 72) * *&v22[16 * v47 + 32], *v119 + *(v117 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D885CC68(v22);
        }

        if (v85 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v22[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v22;
        sub_1D885CBDC(v47);
        v22 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v22[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v22[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v22[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v119[1];
    v21 = v113;
    if (v113 >= v20)
    {
      goto LABEL_94;
    }
  }

  v106 = v22;
  v107 = v6;
  v88 = *v119;
  v89 = *(v117 + 72);
  v90 = *v119 + v89 * (v20 - 1);
  v91 = v23;
  v92 = -v89;
  v109 = v91;
  v93 = v91 - v20;
  v111 = v89;
  v5 = v88 + v20 * v89;
  v113 = v41;
LABEL_85:
  v115 = v93;
  v116 = v20;
  v114 = v5;
  v118 = v90;
  v94 = v90;
  v95 = v121;
  while (1)
  {
    sub_1D88CC83C(v5, v19);
    sub_1D88CC83C(v94, v16);
    v96 = *(v95 + 24);
    v97 = *&v19[v96];
    v98 = *&v16[v96];
    sub_1D89A2300(v16);
    sub_1D89A2300(v19);
    if (v97 >= v98)
    {
LABEL_84:
      v20 = v116 + 1;
      v90 = v118 + v111;
      v93 = v115 - 1;
      v42 = v113;
      v5 = v114 + v111;
      if (v116 + 1 != v113)
      {
        goto LABEL_85;
      }

      v22 = v106;
      v6 = v107;
      v23 = v109;
      if (v113 < v109)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    v99 = v120;
    sub_1D89CDBB8(v5, v120);
    v95 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D89CDBB8(v99, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1D89CADB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v85 = v6;
      v86 = *(v9 + 2);
      if (v86 >= 2)
      {
        while (*a3)
        {
          v6 = (v86 - 1);
          v87 = *&v9[16 * v86];
          v88 = *&v9[16 * v86 + 24];
          sub_1D89CBE8C((*a3 + 8 * v87), (*a3 + 8 * *&v9[16 * v86 + 16]), (*a3 + 8 * v88), v5);
          if (v85)
          {
            goto LABEL_113;
          }

          if (v88 < v87)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D885CC68(v9);
          }

          if (v86 - 2 >= *(v9 + 2))
          {
            goto LABEL_130;
          }

          v89 = &v9[16 * v86];
          *v89 = v87;
          *(v89 + 1) = v88;
          sub_1D885CBDC(v86 - 1);
          v86 = *(v9 + 2);
          if (v86 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_140;
      }

LABEL_113:

      return;
    }

LABEL_136:
    v9 = sub_1D885CC68(v9);
    goto LABEL_105;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_29;
    }

    v5 = v6;
    v11 = *a3;
    v12 = *(*a3 + 8 * v8);
    v13 = *(*a3 + 8 * v10);
    v14 = 0.0;
    v15 = 0.0;
    if (*(v12 + 16))
    {
      v16 = type metadata accessor for TextDetectorResult(0);
      v15 = *(v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(v16 + 24));
    }

    if (*(v13 + 16))
    {
      v17 = type metadata accessor for TextDetectorResult(0);
      v14 = *(v13 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(v17 + 24));
    }

    v8 = v10 + 2;
    if (v10 + 2 < v7)
    {
      while (1)
      {
        v18 = *(v11 + 8 * v8);
        if (*(v18 + 16))
        {
          v19 = type metadata accessor for TextDetectorResult(0);
          v20 = *(v18 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(v19 + 24));
          if (*(v12 + 16))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v20 = 0.0;
          if (*(v12 + 16))
          {
LABEL_17:
            v21 = type metadata accessor for TextDetectorResult(0);
            if (v15 < v14 == v20 >= *(v12 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(v21 + 24)))
            {
              break;
            }

            goto LABEL_12;
          }
        }

        if (v15 < v14 == v20 >= 0.0)
        {
          break;
        }

LABEL_12:
        ++v8;
        v12 = v18;
        if (v7 == v8)
        {
          v8 = v7;
          break;
        }
      }
    }

    v6 = v5;
    if (v15 < v14)
    {
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if (v10 < v8)
      {
        v22 = 8 * v8 - 8;
        v23 = 8 * v10;
        v24 = v8;
        v25 = v10;
        do
        {
          if (v25 != --v24)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v27 = *(v26 + v23);
            *(v26 + v23) = *(v26 + v22);
            *(v26 + v22) = v27;
          }

          ++v25;
          v22 -= 8;
          v23 += 8;
        }

        while (v25 < v24);
        v7 = a3[1];
      }
    }

LABEL_29:
    if (v8 >= v7)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_132;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_52;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_134;
    }

    if (v10 + a4 >= v7)
    {
      v28 = v7;
    }

    else
    {
      v28 = v10 + a4;
    }

    if (v28 < v10)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v8 == v28)
    {
      goto LABEL_52;
    }

    v90 = v10;
    v91 = v6;
    v29 = *a3;
    v30 = *a3 + 8 * v8 - 8;
    v31 = (v10 - v8);
    v94 = v28;
LABEL_40:
    v32 = *(v29 + 8 * v8);
    v5 = v31;
    v33 = v30;
LABEL_41:
    v34 = *v33;
    if (*(v32 + 16))
    {
      v35 = type metadata accessor for TextDetectorResult(0);
      v36 = *(v32 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(v35 + 24));
      if (!*(v34 + 16))
      {
        if (v36 >= 0.0)
        {
          goto LABEL_39;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v36 = 0.0;
      if (!*(v34 + 16))
      {
        goto LABEL_39;
      }
    }

    v37 = type metadata accessor for TextDetectorResult(0);
    if (v36 >= *(v34 + ((*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80)) + *(v37 + 24)))
    {
      goto LABEL_39;
    }

LABEL_47:
    if (!v29)
    {
      break;
    }

    *v33 = v32;
    v33[1] = v34;
    --v33;
    if (!__CFADD__(v5++, 1))
    {
      goto LABEL_41;
    }

LABEL_39:
    ++v8;
    v30 += 8;
    --v31;
    if (v8 != v94)
    {
      goto LABEL_40;
    }

    v8 = v94;
    v10 = v90;
    v6 = v91;
LABEL_52:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D87C7C5C(0, *(v9 + 2) + 1, 1, v9);
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v9 = sub_1D87C7C5C((v39 > 1), v40 + 1, 1, v9);
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_72:
          if (v48)
          {
            goto LABEL_120;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_123;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_127;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_86:
        if (v66)
        {
          goto LABEL_122;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_125;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_93:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v83 = *&v9[16 * v82 + 32];
        v5 = *&v9[16 * v44 + 40];
        sub_1D89CBE8C((*a3 + 8 * v83), (*a3 + 8 * *&v9[16 * v44 + 32]), (*a3 + 8 * v5), v43);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v5 < v83)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v84 = &v9[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        sub_1D885CBDC(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_118;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_119;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_121;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_124;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_128;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

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
}

uint64_t sub_1D89CB574(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v42 = v48 + 8;
      v43 = v12 + 8;
      v27 = -v14;
      v28 = a4 + v18;
      v45 = a4;
      v46 = a1;
      v44 = v27;
      do
      {
        v41 = v26;
        v29 = a2 + v27;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v52 = a2;
            v50 = v41;
            goto LABEL_58;
          }

          v31 = a3;
          v32 = v26;
          a3 += v27;
          v33 = v28 + v27;
          sub_1D88CC83C(v33, v12);
          a2 = v29;
          v34 = v12;
          v35 = v48;
          sub_1D88CC83C(v29, v48);
          v36 = *(v49 + 24);
          v37 = *&v43[v36];
          v38 = *(v42 + v36);
          v39 = v35;
          v12 = v34;
          sub_1D89A2300(v39);
          sub_1D89A2300(v34);
          if (v37 < v38)
          {
            break;
          }

          v26 = v33;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v46;
          }

          else
          {
            a1 = v46;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          v30 = v33 > v45;
          v27 = v44;
          a2 = v47;
          if (!v30)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v47 || a3 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v32;
          v27 = v44;
          v40 = v45;
        }

        else
        {
          v26 = v32;
          v27 = v44;
          v40 = v45;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v40);
    }

LABEL_56:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = (v12 + 8);
      v21 = v48 + 8;
      do
      {
        sub_1D88CC83C(a2, v12);
        v22 = v48;
        sub_1D88CC83C(a4, v48);
        v23 = *(v49 + 24);
        v24 = *(v47 + v23);
        v25 = *(v21 + v23);
        sub_1D89A2300(v22);
        sub_1D89A2300(v12);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

LABEL_58:
  sub_1D885CE84(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1D89CBA18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v25 = v42;
            goto LABEL_57;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          sub_1D88CC83C(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_1D88CC83C(v33, v46);
          v36 = *(v47 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v12 = v34;
          sub_1D89A2300(v39);
          sub_1D89A2300(v34);
          if (v37 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v31;
            }
          }

          v27 = v25;
          v29 = v31 > v45;
          v26 = v44;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        if (v30 < a2 || a3 >= a2)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v40 = v30 == a2;
          a2 = v32;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_55:
    v50 = a2;
LABEL_57:
    v48 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D88CC83C(a2, v12);
        v21 = v46;
        sub_1D88CC83C(a4, v46);
        v22 = *(v47 + 24);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_1D89A2300(v21);
        sub_1D89A2300(v12);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_1D885CE84(&v50, &v49, &v48);
  return 1;
}